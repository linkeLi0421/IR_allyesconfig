; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bna_enet.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bna_enet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bna_reg_offset = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfa_ioc_cbfn = type { ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon] }
%struct.anon = type { ptr, ptr }
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
%struct.bfa_msgq_rspq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i32, [34 x %struct.anon.2], ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.bfa_wc = type { ptr, ptr, i32 }
%struct.bna_ethport = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.3, ptr }
%union.anon.3 = type { %struct.bfi_enet_enable_req }
%struct.bfi_enet_enable_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8] }
%struct.bna_enet = type { ptr, i32, i32, %struct.bna_pause_config, i32, ptr, ptr, ptr, %struct.bfa_wc, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_set_pause_req, ptr }
%struct.bna_pause_config = type { i32, i32 }
%struct.bfi_enet_set_pause_req = type { %struct.bfi_msgq_mhdr, [2 x i8], i8, i8 }
%struct.bna_stats_mod = type { i8, i8, i8, %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req }
%struct.bfi_enet_stats_req = type { %struct.bfi_msgq_mhdr, i16, [2 x i8], i32, i32, %union.bfi_addr_u }
%union.bfi_addr_u = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32 }
%struct.bna_tx_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.bfa_wc, i32, i8, i32, i32, i32, i32, i32, ptr }
%struct.bna_rx_mod = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, i32, i32, ptr, %struct.bfa_wc, [8 x [2 x i32]], i32 }
%struct.bna_ucam_mod = type { ptr, %struct.list_head, %struct.list_head, ptr }
%struct.bna_mcam_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.bna_res_info = type { i32, %union.bna_res_u }
%union.bna_res_u = type { %struct.bna_mem_info }
%struct.bna_mem_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.bna_mem_descr = type { i32, ptr, %struct.bna_dma_addr }
%struct.bna_mac = type { %struct.list_head, [6 x i8], ptr }
%struct.bna_mcam_handle = type { %struct.list_head, i32, i32 }
%struct.bna_rx = type { %struct.list_head, i32, i32, ptr, i32, i32, %struct.list_head, %struct.bna_hds_config, %struct.bna_rxf, i32, %struct.bfa_msgq_cmd_entry, %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bna_hds_config = type { i32, i32 }
%struct.bna_rxf = type { ptr, %struct.bfa_msgq_cmd_entry, %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.bna_mac, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i8, i32, [128 x i32], i8, i32, i32, i32, %struct.bna_rss_config, ptr, i32, ptr }
%union.anon.9 = type { %struct.bfi_enet_rx_vlan_req }
%struct.bfi_enet_rx_vlan_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [16 x i32] }
%struct.bna_rss_config = type { i32, i8, [10 x i32] }
%union.anon.10 = type { %struct.bfi_enet_rx_cfg_req }
%struct.bfi_enet_rx_cfg_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [16 x %struct.anon.11], %struct.bfi_enet_ib_cfg, %struct.bfi_enet_rx_cfg }
%struct.anon.11 = type { %struct.bfi_enet_rxq, %struct.bfi_enet_rxq, %struct.bfi_enet_cq, %struct.bfi_enet_ib }
%struct.bfi_enet_rxq = type { %struct.bfi_enet_q, i16, i16 }
%struct.bfi_enet_q = type { %union.bfi_addr_u, %union.bfi_addr_u, i16, i16 }
%struct.bfi_enet_cq = type { %struct.bfi_enet_q }
%struct.bfi_enet_ib = type { %union.bfi_addr_u, %union.anon.7, i16 }
%union.anon.7 = type { i16 }
%struct.bfi_enet_ib_cfg = type { i8, i8, i8, i8, i8, [3 x i8], i32, i32, i8, [3 x i8] }
%struct.bfi_enet_rx_cfg = type { i8, [1 x i8], i16, %struct.anon.12, i8, i8, i8, i8 }
%struct.anon.12 = type { i8, i8, i8, i8 }
%struct.bna_tx = type { %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.list_head, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.5, ptr, ptr }
%union.anon.5 = type { %struct.bfi_enet_tx_cfg_req }
%struct.bfi_enet_tx_cfg_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [8 x %struct.anon.6], %struct.bfi_enet_ib_cfg, %struct.bfi_enet_tx_cfg }
%struct.anon.6 = type { %struct.bfi_enet_txq, %struct.bfi_enet_ib }
%struct.bfi_enet_txq = type { %struct.bfi_enet_q, i8, [3 x i8] }
%struct.bfi_enet_tx_cfg = type { i8, i8, i16, i8, i8, i8, [1 x i8] }
%struct.bfi_enet_rsp = type { %struct.bfi_msgq_mhdr, i8, i8, i16 }
%struct.bfi_enet_attr_rsp = type { %struct.bfi_msgq_mhdr, i8, i8, i16, i32, i32, i32 }

@__const.bna_init.reg_offset = private unnamed_addr constant [4 x %struct.bna_reg_offset] [%struct.bna_reg_offset { i32 81920, i32 81924 }, %struct.bna_reg_offset { i32 82176, i32 82180 }, %struct.bna_reg_offset { i32 82688, i32 82692 }, %struct.bna_reg_offset { i32 82944, i32 82948 }], align 4
@bna_enet_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SM Assertion failure: %s: %d: event = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_enet_sm_stopped\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/brocade/bna/bna_enet.c\00", [52 x i8] zeroinitializer }, align 32
@bna_enet_sm_stopped._entry_ptr = internal global ptr @bna_enet_sm_stopped._entry, section ".printk_index", align 4
@bna_enet_sm_pause_init_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bna_enet_sm_pause_init_wait\00", [36 x i8] zeroinitializer }, align 32
@bna_enet_sm_pause_init_wait._entry_ptr = internal global ptr @bna_enet_sm_pause_init_wait._entry, section ".printk_index", align 4
@bna_enet_sm_last_resp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bna_enet_sm_last_resp_wait\00", [37 x i8] zeroinitializer }, align 32
@bna_enet_sm_last_resp_wait._entry_ptr = internal global ptr @bna_enet_sm_last_resp_wait._entry, section ".printk_index", align 4
@bna_enet_sm_started._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_enet_sm_started\00", [44 x i8] zeroinitializer }, align 32
@bna_enet_sm_started._entry_ptr = internal global ptr @bna_enet_sm_started._entry, section ".printk_index", align 4
@bna_enet_sm_chld_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bna_enet_sm_chld_stop_wait\00", [37 x i8] zeroinitializer }, align 32
@bna_enet_sm_chld_stop_wait._entry_ptr = internal global ptr @bna_enet_sm_chld_stop_wait._entry, section ".printk_index", align 4
@bna_enet_sm_cfg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bna_enet_sm_cfg_wait\00", [43 x i8] zeroinitializer }, align 32
@bna_enet_sm_cfg_wait._entry_ptr = internal global ptr @bna_enet_sm_cfg_wait._entry, section ".printk_index", align 4
@bna_enet_sm_cfg_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bna_enet_sm_cfg_stop_wait\00", [38 x i8] zeroinitializer }, align 32
@bna_enet_sm_cfg_stop_wait._entry_ptr = internal global ptr @bna_enet_sm_cfg_stop_wait._entry, section ".printk_index", align 4
@bna_ioceth_sm_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_ioceth_sm_ready\00", [44 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_ready._entry_ptr = internal global ptr @bna_ioceth_sm_ready._entry, section ".printk_index", align 4
@bna_ioceth_sm_enet_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bna_ioceth_sm_enet_stop_wait\00", [35 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_enet_stop_wait._entry_ptr = internal global ptr @bna_ioceth_sm_enet_stop_wait._entry, section ".printk_index", align 4
@bna_ioceth_sm_ioc_disable_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bna_ioceth_sm_ioc_disable_wait\00", [33 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_ioc_disable_wait._entry_ptr = internal global ptr @bna_ioceth_sm_ioc_disable_wait._entry, section ".printk_index", align 4
@bna_ioceth_sm_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 1615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bna_ioceth_sm_failed\00", [43 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_failed._entry_ptr = internal global ptr @bna_ioceth_sm_failed._entry, section ".printk_index", align 4
@bna_ioceth_sm_ioc_ready_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bna_ioceth_sm_ioc_ready_wait\00", [35 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_ioc_ready_wait._entry_ptr = internal global ptr @bna_ioceth_sm_ioc_ready_wait._entry, section ".printk_index", align 4
@bna_ioceth_sm_enet_attr_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bna_ioceth_sm_enet_attr_wait\00", [35 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_enet_attr_wait._entry_ptr = internal global ptr @bna_ioceth_sm_enet_attr_wait._entry, section ".printk_index", align 4
@bna_ioceth_sm_last_resp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bna_ioceth_sm_last_resp_wait\00", [35 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_last_resp_wait._entry_ptr = internal global ptr @bna_ioceth_sm_last_resp_wait._entry, section ".printk_index", align 4
@bna_ioceth_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bna_ioceth_sm_stopped\00", [42 x i8] zeroinitializer }, align 32
@bna_ioceth_sm_stopped._entry_ptr = internal global ptr @bna_ioceth_sm_stopped._entry, section ".printk_index", align 4
@bna_ioceth_cbfn = internal global { %struct.bfa_ioc_cbfn, [16 x i8] } { %struct.bfa_ioc_cbfn { ptr @bna_cb_ioceth_enable, ptr @bna_cb_ioceth_disable, ptr @bna_cb_ioceth_hbfail, ptr @bna_cb_ioceth_reset }, [16 x i8] zeroinitializer }, align 32
@bna_ethport_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bna_ethport_sm_stopped\00", [41 x i8] zeroinitializer }, align 32
@bna_ethport_sm_stopped._entry_ptr = internal global ptr @bna_ethport_sm_stopped._entry, section ".printk_index", align 4
@bna_ethport_sm_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_ethport_sm_down\00", [44 x i8] zeroinitializer }, align 32
@bna_ethport_sm_down._entry_ptr = internal global ptr @bna_ethport_sm_down._entry, section ".printk_index", align 4
@bna_ethport_sm_up_resp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bna_ethport_sm_up_resp_wait\00", [36 x i8] zeroinitializer }, align 32
@bna_ethport_sm_up_resp_wait._entry_ptr = internal global ptr @bna_ethport_sm_up_resp_wait._entry, section ".printk_index", align 4
@bna_ethport_sm_last_resp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bna_ethport_sm_last_resp_wait\00", [34 x i8] zeroinitializer }, align 32
@bna_ethport_sm_last_resp_wait._entry_ptr = internal global ptr @bna_ethport_sm_last_resp_wait._entry, section ".printk_index", align 4
@bna_ethport_sm_down_resp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bna_ethport_sm_down_resp_wait\00", [34 x i8] zeroinitializer }, align 32
@bna_ethport_sm_down_resp_wait._entry_ptr = internal global ptr @bna_ethport_sm_down_resp_wait._entry, section ".printk_index", align 4
@bna_ethport_sm_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.22, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bna_ethport_sm_up\00", [46 x i8] zeroinitializer }, align 32
@bna_ethport_sm_up._entry_ptr = internal global ptr @bna_ethport_sm_up._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.38 = internal global [30 x i64] [i64 28, i64 8, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 155, i64 156, i64 157, i64 158, i64 159]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 946, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 990, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1011, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1050, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1153, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1101, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1128, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1505, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1561, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1586, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1615, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1448, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1477, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1531, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1411, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"bna_ioceth_cbfn\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1670, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 536, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 564, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 608, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 716, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 650, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [47 x i8] c"../drivers/net/ethernet/brocade/bna/bna_enet.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 679, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @bna_enet_sm_cfg_stop_wait._entry, ptr @bna_enet_sm_cfg_stop_wait._entry_ptr, ptr @bna_enet_sm_cfg_wait._entry, ptr @bna_enet_sm_cfg_wait._entry_ptr, ptr @bna_enet_sm_chld_stop_wait._entry, ptr @bna_enet_sm_chld_stop_wait._entry_ptr, ptr @bna_enet_sm_last_resp_wait._entry, ptr @bna_enet_sm_last_resp_wait._entry_ptr, ptr @bna_enet_sm_pause_init_wait._entry, ptr @bna_enet_sm_pause_init_wait._entry_ptr, ptr @bna_enet_sm_started._entry, ptr @bna_enet_sm_started._entry_ptr, ptr @bna_enet_sm_stopped._entry, ptr @bna_enet_sm_stopped._entry_ptr, ptr @bna_ethport_sm_down._entry, ptr @bna_ethport_sm_down._entry_ptr, ptr @bna_ethport_sm_down_resp_wait._entry, ptr @bna_ethport_sm_down_resp_wait._entry_ptr, ptr @bna_ethport_sm_last_resp_wait._entry, ptr @bna_ethport_sm_last_resp_wait._entry_ptr, ptr @bna_ethport_sm_stopped._entry, ptr @bna_ethport_sm_stopped._entry_ptr, ptr @bna_ethport_sm_up._entry, ptr @bna_ethport_sm_up._entry_ptr, ptr @bna_ethport_sm_up_resp_wait._entry, ptr @bna_ethport_sm_up_resp_wait._entry_ptr, ptr @bna_ioceth_sm_enet_attr_wait._entry, ptr @bna_ioceth_sm_enet_attr_wait._entry_ptr, ptr @bna_ioceth_sm_enet_stop_wait._entry, ptr @bna_ioceth_sm_enet_stop_wait._entry_ptr, ptr @bna_ioceth_sm_failed._entry, ptr @bna_ioceth_sm_failed._entry_ptr, ptr @bna_ioceth_sm_ioc_disable_wait._entry, ptr @bna_ioceth_sm_ioc_disable_wait._entry_ptr, ptr @bna_ioceth_sm_ioc_ready_wait._entry, ptr @bna_ioceth_sm_ioc_ready_wait._entry_ptr, ptr @bna_ioceth_sm_last_resp_wait._entry, ptr @bna_ioceth_sm_last_resp_wait._entry_ptr, ptr @bna_ioceth_sm_ready._entry, ptr @bna_ioceth_sm_ready._entry_ptr, ptr @bna_ioceth_sm_stopped._entry, ptr @bna_ioceth_sm_stopped._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @bna_ioceth_cbfn, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_pause_init_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_last_resp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_started._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_chld_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_cfg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_enet_sm_cfg_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_enet_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_ioc_disable_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_ioc_ready_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_enet_attr_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_last_resp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ioceth_cbfn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ethport_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ethport_sm_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ethport_sm_up_resp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ethport_sm_last_resp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ethport_sm_down_resp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_ethport_sm_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_mbox_handler(ptr noundef %bna, i32 noundef %intr_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error_status_bits = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %error_status_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_status_bits, align 4
  %and = and i32 %1, %intr_status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %halt_status_bits.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %halt_status_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %halt_status_bits.i, align 4
  %and.i = and i32 %3, %intr_status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.bna_err_handler.exit_crit_edge, label %do.body.i

if.then.bna_err_handler.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_err_handler.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ll_halt.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 1, i32 13, i32 17
  %4 = ptrtoint ptr %ll_halt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_halt.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %ll_halt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll_halt.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !100
  %10 = ptrtoint ptr %ll_halt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ll_halt.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  br label %bna_err_handler.exit

bna_err_handler.exit:                             ; preds = %do.body.i, %if.then.bna_err_handler.exit_crit_edge
  %ioc20.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 1
  tail call void @bfa_nw_ioc_error_isr(ptr noundef %ioc20.i) #6
  br label %if.end5

if.end:                                           ; preds = %entry
  %bits = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3
  %13 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits, align 4
  %and2 = and i32 %14, %intr_status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ioc = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 1
  tail call void @bfa_nw_ioc_mbox_isr(ptr noundef %ioc) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge, %bna_err_handler.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_mbox_isr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_ethport_cb_rx_started(ptr noundef %ethport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_started_count = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 3
  %0 = ptrtoint ptr %rx_started_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_started_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_started_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %flags, align 4
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %4 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bna.i, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %8 = and i32 %or, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %.not27.i = icmp ne i32 %8, 5
  %9 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp ne i32 %9, 0
  %tobool.not9 = xor i1 %10, %cmp.i
  %tobool.not = select i1 %.not27.i, i1 true, i1 %tobool.not9
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ethport, align 4
  tail call void %12(ptr noundef %ethport, i32 noundef 4) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_ethport_cb_rx_stopped(ptr noundef %ethport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %0 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna.i, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %flags.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %rx_started_count = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 3
  %6 = ptrtoint ptr %rx_started_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_started_count, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %rx_started_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %8 = and i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %.not27.i = icmp ne i32 %8, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %and = and i32 %5, -5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %flags.i, align 4
  %10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp ne i32 %10, 0
  %tobool.not9 = xor i1 %cmp.i, %11
  %tobool.not = select i1 %.not27.i, i1 true, i1 %tobool.not9
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ethport, align 4
  tail call void %13(ptr noundef %ethport, i32 noundef 5) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_cb_tx_stopped(ptr nocapture noundef %enet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wc_count.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bfa_wc_down.exit_crit_edge

entry.bfa_wc_down.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bfa_wc_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chld_stop_wc = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %2 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chld_stop_wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #6
  br label %bfa_wc_down.exit

bfa_wc_down.exit:                                 ; preds = %if.then.i, %entry.bfa_wc_down.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_cb_rx_stopped(ptr nocapture noundef %enet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wc_count.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bfa_wc_down.exit_crit_edge

entry.bfa_wc_down.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bfa_wc_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chld_stop_wc = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %2 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chld_stop_wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #6
  br label %bfa_wc_down.exit

bfa_wc_down.exit:                                 ; preds = %if.then.i, %entry.bfa_wc_down.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bna_enet_mtu_get(ptr nocapture noundef readonly %enet) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 4
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_enable(ptr noundef %enet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enet, align 4
  %cmp.not = icmp eq ptr %1, @bna_enet_sm_stopped
  br i1 %cmp.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bna_enet_sm_pause_init_wait, ptr %enet, align 4
  %pause_req1.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10
  %5 = ptrtoint ptr %pause_req1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %pause_req1.i.i.i, align 1
  %msg_id.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %msg_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %msg_id.i.i.i, align 1
  %msg_token.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 2
  %7 = ptrtoint ptr %msg_token.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %msg_token.i.i.i, align 1
  %enet_id.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %enet_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enet_id.i.i.i, align 1
  %num_entries.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 3
  %9 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 1, ptr %num_entries.i.i.i, align 1
  %pause_config.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3
  %10 = ptrtoint ptr %pause_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pause_config.i.i.i, align 4
  %conv.i.i.i = trunc i32 %11 to i8
  %tx_pause6.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %tx_pause6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i.i, ptr %tx_pause6.i.i.i, align 1
  %rx_pause.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %rx_pause.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pause.i.i.i, align 4
  %conv8.i.i.i = trunc i32 %14 to i8
  %rx_pause9.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %rx_pause9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8.i.i.i, ptr %rx_pause9.i.i.i, align 1
  %msgq_cmd.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9
  %cbfn.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %cbfn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cbfn.i.i.i, align 4
  %cbarg.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %cbarg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cbarg.i.i.i, align 4
  %msg_size.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %msg_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %msg_size.i.i.i, align 4
  %msg_hdr.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 4
  %19 = ptrtoint ptr %msg_hdr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pause_req1.i.i.i, ptr %msg_hdr.i.i.i, align 4
  %bna.i.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %20 = ptrtoint ptr %bna.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bna.i.i.i, align 4
  %msgq.i.i.i = getelementptr inbounds %struct.bna, ptr %21, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i.i.i, ptr noundef %msgq_cmd.i.i.i) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_stopped(ptr noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.end18 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge32
    i32 5, label %do.body8
    i32 7, label %entry.sw.epilog_crit_edge33
  ]

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_enet_sm_pause_init_wait, ptr %enet, align 4
  %pause_req1.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10
  %2 = ptrtoint ptr %pause_req1.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %pause_req1.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 1
  %3 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 20, ptr %msg_id.i.i, align 1
  %msg_token.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 2
  %4 = ptrtoint ptr %msg_token.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %msg_token.i.i, align 1
  %enet_id.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 4
  %5 = ptrtoint ptr %enet_id.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enet_id.i.i, align 1
  %num_entries.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 1, ptr %num_entries.i.i, align 1
  %pause_config.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3
  %7 = ptrtoint ptr %pause_config.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pause_config.i.i, align 4
  %conv.i.i = trunc i32 %8 to i8
  %tx_pause6.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %tx_pause6.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i.i, ptr %tx_pause6.i.i, align 1
  %rx_pause.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_pause.i.i, align 4
  %conv8.i.i = trunc i32 %11 to i8
  %rx_pause9.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %rx_pause9.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8.i.i, ptr %rx_pause9.i.i, align 1
  %msgq_cmd.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9
  %cbfn.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cbfn.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cbarg.i.i, align 4
  %msg_size.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %msg_size.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %msg_size.i.i, align 4
  %msg_hdr.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %msg_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pause_req1.i.i, ptr %msg_hdr.i.i, align 4
  %bna.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %17 = ptrtoint ptr %bna.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna.i.i, align 4
  %msgq.i.i = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i.i, ptr noundef %msgq_cmd.i.i) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %stop_cbfn = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %19 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %do.body2.sw.epilog_crit_edge, label %if.then

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %21 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop_cbarg, align 4
  %23 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %stop_cbfn, align 4
  store ptr null, ptr %stop_cbarg, align 4
  tail call void %20(ptr noundef %22) #6
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  %mtu_cbfn = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %24 = ptrtoint ptr %mtu_cbfn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mtu_cbfn, align 4
  %tobool9.not = icmp eq ptr %25, null
  br i1 %tobool9.not, label %do.body8.sw.epilog_crit_edge, label %if.then10

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then10:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %mtu_cbfn to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %mtu_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %27 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bnad, align 4
  tail call void %25(ptr noundef %30) #6
  br label %sw.epilog

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 946, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18, %if.then10, %do.body8.sw.epilog_crit_edge, %if.then, %do.body2.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_disable(ptr noundef %enet, i32 noundef %type, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad, align 4
  tail call void %cbfn(ptr noundef %3) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbfn = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cbfn, ptr %stop_cbfn, align 4
  %bna1 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %5 = ptrtoint ptr %bna1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna1, align 4
  %bnad2 = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad2, align 4
  %stop_cbarg = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %9 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %stop_cbarg, align 4
  %flags = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -3
  store i32 %and, ptr %flags, align 4
  %12 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enet, align 4
  tail call void %13(ptr noundef %enet, i32 noundef 2) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_pause_config(ptr noundef %enet, ptr nocapture noundef readonly %pause_config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pause_config1 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3
  %0 = ptrtoint ptr %pause_config to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %pause_config, align 4
  %2 = ptrtoint ptr %pause_config1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %pause_config1, align 4
  %3 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enet, align 4
  tail call void %4(ptr noundef %enet, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_mtu_set(ptr noundef %enet, i32 noundef %mtu, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 4
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mtu, ptr %mtu1, align 4
  %mtu_cbfn = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %1 = ptrtoint ptr %mtu_cbfn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cbfn, ptr %mtu_cbfn, align 4
  %2 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enet, align 4
  tail call void %3(ptr noundef %enet, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_enet_perm_mac_get(ptr nocapture noundef readonly %enet, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %ioc = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 5, i32 1
  tail call void @bfa_nw_ioc_get_mac(ptr noundef %ioc, ptr noundef %mac) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_get_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_ioceth_enable(ptr noundef %ioceth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ioceth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioceth, align 8
  %cmp = icmp eq ptr %1, @bna_ioceth_sm_ready
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_ioceth_ready(ptr noundef %5) #6
  br label %if.end5

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %1, @bna_ioceth_sm_stopped
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bna_ioceth_sm_ioc_ready_wait, ptr %ioceth, align 8
  %ioc.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_enable(ptr noundef %ioc.i) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_ready(ptr nocapture noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %event, label %do.end43 [
    i32 2, label %do.body
    i32 4, label %do.body3
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_enet_stop_wait, ptr %ioceth, align 8
  %bna.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna.i, align 8
  %stats_mod.i = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %stats_mod.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %stats_mod.i, align 4
  %5 = load ptr, ptr %bna.i, align 8
  %enet.i = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 10
  %stop_cbfn.i.i = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %stop_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bna_ioceth_cb_enet_stopped, ptr %stop_cbfn.i.i, align 4
  %bna.i.i = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 10, i32 11
  %7 = ptrtoint ptr %bna.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna.i.i, align 4
  %ioceth.i.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 5
  %stop_cbarg.i.i = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 10, i32 6
  %9 = ptrtoint ptr %stop_cbarg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ioceth.i.i, ptr %stop_cbarg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, -2
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %12 = ptrtoint ptr %enet.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enet.i, align 4
  tail call void %13(ptr noundef %enet.i, i32 noundef 2) #6
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %14 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fn_int_mask, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !97
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %21, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox_mask_bits, align 4
  %or = or i32 %23, %19
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %21, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error_mask_bits, align 4
  %or10 = or i32 %or, %25
  %26 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %fn_int_mask13 = getelementptr inbounds %struct.bna, ptr %21, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %fn_int_mask13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fn_int_mask13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !100
  %29 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bna, align 8
  %fn_int_mask18 = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %fn_int_mask18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fn_int_mask18, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %34 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %37) #6
  %38 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bna, align 8
  %enet = getelementptr inbounds %struct.bna, ptr %39, i32 0, i32 10
  %flags.i = getelementptr inbounds %struct.bna, ptr %39, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, -2
  store i32 %and.i, ptr %flags.i, align 4
  %42 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enet, align 4
  tail call void %43(ptr noundef %enet, i32 noundef 3) #6
  %44 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bna, align 8
  %stats_mod = getelementptr inbounds %struct.bna, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %stats_mod to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %stats_mod, align 4
  %47 = load ptr, ptr %bna, align 8
  %stats_get_busy = getelementptr inbounds %struct.bna, ptr %47, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %stats_get_busy to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %stats_get_busy, align 1
  %49 = load ptr, ptr %bna, align 8
  %stats_clr_busy = getelementptr inbounds %struct.bna, ptr %49, i32 0, i32 11, i32 2
  %50 = ptrtoint ptr %stats_clr_busy to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %stats_clr_busy, align 2
  %51 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bna_ioceth_sm_failed, ptr %ioceth, align 8
  %52 = load ptr, ptr %bna, align 8
  %bnad.i = getelementptr inbounds %struct.bna, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bnad.i, align 4
  tail call void @bnad_cb_ioceth_failed(ptr noundef %54) #6
  br label %sw.epilog

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1505, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %do.body3, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_ioceth_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_stopped(ptr noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %event, label %do.end94 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %do.body6
    i32 4, label %do.body49
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_ioc_ready_wait, ptr %ioceth, align 8
  %ioc = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_enable(ptr noundef %ioc) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %2 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_ioceth_sm_stopped, ptr %ioceth, align 8
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 5
  %3 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stop_cbfn.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body2.sw.epilog_crit_edge, label %if.then.i

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 6
  %5 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop_cbarg.i, align 4
  %7 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %stop_cbfn.i, align 8
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %4(ptr noundef %6) #6
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 8
  %regs = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %do.body6.if.end_crit_edge, label %do.body8

do.body6.if.end_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bna, align 8
  %bits = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits, align 4
  %neg = xor i32 %17, -1
  %and = and i32 %13, %neg
  %18 = tail call i32 @llvm.bswap.i32(i32 %and)
  %regs12 = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %do.body8, %do.body6.if.end_crit_edge
  %21 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_enable(ptr noundef %24) #6
  %25 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fn_int_mask, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !97
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %32, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mbox_mask_bits, align 4
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %32, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error_mask_bits, align 4
  %or = or i32 %36, %34
  %neg30 = xor i32 %or, -1
  %and31 = and i32 %30, %neg30
  %37 = tail call i32 @llvm.bswap.i32(i32 %and31)
  %fn_int_mask34 = getelementptr inbounds %struct.bna, ptr %32, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %fn_int_mask34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fn_int_mask34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !100
  %40 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bna, align 8
  %fn_int_mask39 = getelementptr inbounds %struct.bna, ptr %41, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %fn_int_mask39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fn_int_mask39, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  br label %sw.epilog

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna53 = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %45 = ptrtoint ptr %bna53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bna53, align 8
  %fn_int_mask55 = getelementptr inbounds %struct.bna, ptr %46, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %fn_int_mask55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fn_int_mask55, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !97
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %bna53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bna53, align 8
  %mbox_mask_bits64 = getelementptr inbounds %struct.bna, ptr %52, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %mbox_mask_bits64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mbox_mask_bits64, align 4
  %or65 = or i32 %54, %50
  %error_mask_bits68 = getelementptr inbounds %struct.bna, ptr %52, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %error_mask_bits68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error_mask_bits68, align 4
  %or69 = or i32 %or65, %56
  %57 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %fn_int_mask72 = getelementptr inbounds %struct.bna, ptr %52, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %fn_int_mask72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fn_int_mask72, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #6, !srcloc !100
  %60 = ptrtoint ptr %bna53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bna53, align 8
  %fn_int_mask77 = getelementptr inbounds %struct.bna, ptr %61, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %fn_int_mask77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fn_int_mask77, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %65 = ptrtoint ptr %bna53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bna53, align 8
  %bnad84 = getelementptr inbounds %struct.bna, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %bnad84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bnad84, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %68) #6
  %69 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @bna_ioceth_sm_failed, ptr %ioceth, align 8
  %70 = ptrtoint ptr %bna53 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bna53, align 8
  %bnad.i = getelementptr inbounds %struct.bna, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bnad.i, align 4
  tail call void @bnad_cb_ioceth_failed(ptr noundef %73) #6
  br label %sw.epilog

do.end94:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1411, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end94, %do.body49, %if.end, %if.then.i, %do.body2.sw.epilog_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_ioceth_disable(ptr noundef %ioceth, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_ioceth_disabled(ptr noundef %3) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbfn = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 5
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bnad_cb_ioceth_disabled, ptr %stop_cbfn, align 8
  %bna1 = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %5 = ptrtoint ptr %bna1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna1, align 8
  %bnad2 = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad2, align 4
  %stop_cbarg = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 6
  %9 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %stop_cbarg, align 4
  %10 = ptrtoint ptr %ioceth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioceth, align 8
  tail call void %11(ptr noundef %ioceth, i32 noundef 2) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_ioceth_disabled(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_res_req(ptr nocapture noundef writeonly %res_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %res_info, align 4
  %res_u = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1
  %1 = ptrtoint ptr %res_u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %res_u, align 4
  %num = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num, align 4
  %call = tail call i32 @bfa_nw_cee_meminfo() #6
  %call4 = tail call i32 @bfa_nw_flash_meminfo() #6
  %call5 = tail call i32 @bfa_msgq_meminfo() #6
  %add = add i32 %call, 4095
  %add6 = add i32 %add, %call4
  %add7 = add i32 %add6, %call5
  %and = and i32 %add7, -4096
  %len = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %len, align 4
  %arrayidx10 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx10, align 4
  %res_u13 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1
  %5 = ptrtoint ptr %res_u13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %res_u13, align 4
  %num17 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %num17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num17, align 4
  %call18 = tail call i32 @bfa_nw_ioc_meminfo() #6
  %add19 = add i32 %call18, 4095
  %and20 = and i32 %add19, -4096
  %len23 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %len23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and20, ptr %len23, align 4
  %arrayidx24 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx24, align 4
  %res_u27 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1
  %9 = ptrtoint ptr %res_u27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %res_u27, align 4
  %num31 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %num31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num31, align 4
  %len34 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %len34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4128, ptr %len34, align 4
  %arrayidx35 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx35, align 4
  %res_u38 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1
  %13 = ptrtoint ptr %res_u38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %res_u38, align 4
  %num42 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %num42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num42, align 4
  %len45 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %len45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %len45, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_cee_meminfo() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_flash_meminfo() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_msgq_meminfo() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_ioc_meminfo() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bna_mod_res_req(ptr nocapture noundef readonly %bna, ptr noundef writeonly %res_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %res_info, align 4
  %res_u = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1
  %1 = ptrtoint ptr %res_u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %res_u, align 4
  %num = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num, align 4
  %num_txq = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 1
  %3 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_txq, align 4
  %mul = mul i32 %4, 432
  %len = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %len, align 4
  %arrayidx7 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx7, align 4
  %res_u10 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1
  %7 = ptrtoint ptr %res_u10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %res_u10, align 4
  %num14 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %num14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num14, align 4
  %9 = load i32, ptr %num_txq, align 4
  %mul16 = mul i32 %9, 104
  %len19 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul16, ptr %len19, align 4
  %arrayidx20 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %arrayidx20, align 4
  %res_u23 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1
  %12 = ptrtoint ptr %res_u23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %res_u23, align 4
  %num27 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %num27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num27, align 4
  %num_rxp = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 2
  %14 = ptrtoint ptr %num_rxp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rxp, align 4
  %mul28 = mul i32 %15, 2264
  %len31 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %len31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul28, ptr %len31, align 4
  %arrayidx32 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx32, align 4
  %res_u35 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1
  %18 = ptrtoint ptr %res_u35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %res_u35, align 4
  %num39 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %num39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num39, align 4
  %20 = load i32, ptr %num_rxp, align 4
  %mul41 = mul i32 %20, 100
  %len44 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %len44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul41, ptr %len44, align 4
  %arrayidx45 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx45, align 4
  %res_u48 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1
  %23 = ptrtoint ptr %res_u48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %res_u48, align 4
  %num52 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %num52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num52, align 4
  %25 = load i32, ptr %num_rxp, align 4
  %mul55 = mul i32 %25, 208
  %len58 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %len58 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul55, ptr %len58, align 4
  %arrayidx59 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx59, align 4
  %res_u62 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1
  %28 = ptrtoint ptr %res_u62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %res_u62, align 4
  %num66 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %num66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %num66, align 4
  %num_ucmac = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 3
  %30 = ptrtoint ptr %num_ucmac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_ucmac, align 4
  %mul68 = mul i32 %31, 40
  %len71 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %len71 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul68, ptr %len71, align 4
  %arrayidx72 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx72, align 4
  %res_u75 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1
  %34 = ptrtoint ptr %res_u75 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %res_u75, align 4
  %num79 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %num79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num79, align 4
  %num_mcmac = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 4
  %36 = ptrtoint ptr %num_mcmac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_mcmac, align 4
  %mul81 = mul i32 %37, 40
  %len84 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %len84 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul81, ptr %len84, align 4
  %arrayidx85 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7
  %39 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %arrayidx85, align 4
  %res_u88 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1
  %40 = ptrtoint ptr %res_u88 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %res_u88, align 4
  %num92 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %num92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num92, align 4
  %42 = load i32, ptr %num_mcmac, align 4
  %mul94 = shl i32 %42, 4
  %len97 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %len97 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul94, ptr %len97, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_init(ptr noundef %bna, ptr noundef %bnad, ptr nocapture noundef readonly %pcidev, ptr nocapture noundef readonly %res_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bnad1 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 19
  %0 = ptrtoint ptr %bnad1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bnad, ptr %bnad1, align 4
  %pcidev2 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %pcidev2, ptr %pcidev, i32 16)
  %mdl = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %mdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdl, align 4
  %kva = getelementptr inbounds %struct.bna_mem_descr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kva, align 4
  %stats = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4
  %hw_stats_kva = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %hw_stats_kva to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %hw_stats_kva, align 4
  %7 = load ptr, ptr %mdl, align 4
  %dma = getelementptr inbounds %struct.bna_mem_descr, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %stats, align 4
  %11 = load ptr, ptr %mdl, align 4
  %lsb = getelementptr inbounds %struct.bna_mem_descr, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lsb, align 4
  %lsb17 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %lsb17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lsb17, align 4
  %device_id = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device_id, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %16, label %entry.sw.epilog_crit_edge [
    i16 20, label %sw.bb
    i16 34, label %sw.bb37
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_bar_kva = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_bar_kva, align 4
  %pci_func = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pci_func, align 4
  %idxprom = zext i8 %21 to i32
  %arrayidx21 = getelementptr [4 x %struct.bna_reg_offset], ptr @__const.bna_init.reg_offset, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %23
  %regs = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 2
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %regs, align 4
  %fn_int_mask = getelementptr [4 x %struct.bna_reg_offset], ptr @__const.bna_init.reg_offset, i32 0, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fn_int_mask, align 4
  %add.ptr29 = getelementptr i8, ptr %19, i32 %26
  br label %sw.epilog.sink.split

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_bar_kva39 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %pci_bar_kva39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_bar_kva39, align 4
  %add.ptr40 = getelementptr i8, ptr %28, i32 196864
  %regs41 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 2
  %29 = ptrtoint ptr %regs41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr40, ptr %regs41, align 4
  %add.ptr45 = getelementptr i8, ptr %28, i32 196868
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb37, %sw.bb
  %add.ptr45.sink = phi ptr [ %add.ptr45, %sw.bb37 ], [ %add.ptr29, %sw.bb ]
  %.sink105 = phi i32 [ 196608, %sw.bb37 ], [ 3145728, %sw.bb ]
  %.sink103 = phi i32 [ 33292288, %sw.bb37 ], [ 17760256, %sw.bb ]
  %.sink101 = phi i32 [ 2097152, %sw.bb37 ], [ 16777216, %sw.bb ]
  %fn_int_mask47 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %fn_int_mask47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr45.sink, ptr %fn_int_mask47, align 4
  %bits48 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3
  %31 = ptrtoint ptr %bits48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink105, ptr %bits48, align 4
  %mbox_mask_bits51 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %mbox_mask_bits51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink105, ptr %mbox_mask_bits51, align 4
  %error_status_bits53 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %error_status_bits53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink103, ptr %error_status_bits53, align 4
  %error_mask_bits55 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %error_mask_bits55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink103, ptr %error_mask_bits55, align 4
  %halt_status_bits57 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %halt_status_bits57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink101, ptr %halt_status_bits57, align 4
  %halt_mask_bits59 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %halt_mask_bits59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink101, ptr %halt_mask_bits59, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ioceth = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5
  %bna1.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 7
  %37 = ptrtoint ptr %bna1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %bna, ptr %bna1.i, align 8
  %ioc.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 1
  tail call void @bfa_nw_ioc_attach(ptr noundef %ioc.i, ptr noundef %ioceth, ptr noundef nonnull @bna_ioceth_cbfn) #6
  tail call void @bfa_nw_ioc_pci_init(ptr noundef %ioc.i, ptr noundef %pcidev2, i32 noundef 512) #6
  %mdl.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdl.i, align 4
  %dma4.i = getelementptr inbounds %struct.bna_mem_descr, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dma4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma4.i, align 4
  %conv.i = zext i32 %41 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %lsb.i = getelementptr inbounds %struct.bna_mem_descr, ptr %39, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lsb.i, align 4
  %conv10.i = zext i32 %43 to i64
  %or.i = or i64 %shl.i, %conv10.i
  %kva15.i = getelementptr inbounds %struct.bna_mem_descr, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %kva15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kva15.i, align 4
  tail call void @bfa_nw_ioc_mem_claim(ptr noundef %ioc.i, ptr noundef %45, i64 noundef %or.i) #6
  %mdl19.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %mdl19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdl19.i, align 4
  %kva21.i = getelementptr inbounds %struct.bna_mem_descr, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %kva21.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %kva21.i, align 4
  tail call void @bfa_nw_ioc_debug_memclaim(ptr noundef %ioc.i, ptr noundef %49) #6
  %mdl26.i = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 4
  %50 = ptrtoint ptr %mdl26.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdl26.i, align 4
  %dma28.i = getelementptr inbounds %struct.bna_mem_descr, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dma28.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma28.i, align 4
  %conv30.i = zext i32 %53 to i64
  %shl31.i = shl nuw i64 %conv30.i, 32
  %lsb37.i = getelementptr inbounds %struct.bna_mem_descr, ptr %51, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %lsb37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lsb37.i, align 4
  %conv39.i = zext i32 %55 to i64
  %or40.i = or i64 %shl31.i, %conv39.i
  %kva47.i = getelementptr inbounds %struct.bna_mem_descr, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %kva47.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kva47.i, align 4
  %cee.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 6
  tail call void @bfa_nw_cee_attach(ptr noundef %cee.i, ptr noundef %ioc.i, ptr noundef %bna) #6
  tail call void @bfa_nw_cee_mem_claim(ptr noundef %cee.i, ptr noundef %57, i64 noundef %or40.i) #6
  %call.i = tail call i32 @bfa_nw_cee_meminfo() #6
  %add.ptr.i = getelementptr i8, ptr %57, i32 %call.i
  %call50.i = tail call i32 @bfa_nw_cee_meminfo() #6
  %conv51.i = zext i32 %call50.i to i64
  %add.i = add i64 %or40.i, %conv51.i
  %flash.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 7
  tail call void @bfa_nw_flash_attach(ptr noundef %flash.i, ptr noundef %ioc.i, ptr noundef %bna) #6
  tail call void @bfa_nw_flash_memclaim(ptr noundef %flash.i, ptr noundef %add.ptr.i, i64 noundef %add.i) #6
  %call54.i = tail call i32 @bfa_nw_flash_meminfo() #6
  %add.ptr55.i = getelementptr i8, ptr %add.ptr.i, i32 %call54.i
  %call56.i = tail call i32 @bfa_nw_flash_meminfo() #6
  %conv57.i = zext i32 %call56.i to i64
  %add58.i = add i64 %add.i, %conv57.i
  %msgq.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 8
  tail call void @bfa_msgq_attach(ptr noundef %msgq.i, ptr noundef %ioc.i) #6
  tail call void @bfa_msgq_memclaim(ptr noundef %msgq.i, ptr noundef %add.ptr55.i, i64 noundef %add58.i) #6
  tail call void @bfa_msgq_regisr(ptr noundef %msgq.i, i32 noundef 24, ptr noundef nonnull @bna_msgq_rsp_handler, ptr noundef %bna) #6
  %call62.i = tail call i32 @bfa_msgq_meminfo() #6
  %call64.i = tail call i32 @bfa_msgq_meminfo() #6
  %stop_cbfn.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 5
  %58 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %stop_cbfn.i, align 8
  %stop_cbarg.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 6
  %59 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %stop_cbarg.i, align 4
  %attr.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2
  %num_txq.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 1
  %60 = ptrtoint ptr %num_txq.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %num_txq.i.i, align 4
  %num_rxp.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 2
  %61 = ptrtoint ptr %num_rxp.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %num_rxp.i.i, align 8
  %num_ucmac.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 3
  %62 = ptrtoint ptr %num_ucmac.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %num_ucmac.i.i, align 4
  %num_mcmac.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 4
  %63 = ptrtoint ptr %num_mcmac.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 256, ptr %num_mcmac.i.i, align 8
  %max_rit_size.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 5
  %64 = ptrtoint ptr %max_rit_size.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %max_rit_size.i.i, align 4
  %65 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %attr.i.i, align 8
  %66 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @bna_ioceth_sm_stopped, ptr %ioceth, align 8
  %enet = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10
  %bna1.i96 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10, i32 11
  %67 = ptrtoint ptr %bna1.i96 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %bna, ptr %bna1.i96, align 4
  %flags.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %flags.i, align 4
  %mtu.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10, i32 4
  %type.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10, i32 2
  %69 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %type.i, align 4
  %70 = call ptr @memset(ptr %mtu.i, i32 0, i32 16)
  %71 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9
  %flags.i97 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i97, align 4
  %or.i98 = or i32 %73, 3
  store i32 %or.i98, ptr %flags.i97, align 4
  %bna1.i99 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 9
  %74 = ptrtoint ptr %bna1.i99 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %bna, ptr %bna1.i99, align 4
  %link_status.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 2
  %75 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %link_status.i, align 4
  %link_cbfn.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 6
  %76 = ptrtoint ptr %link_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @bnad_cb_ethport_link_status, ptr %link_cbfn.i, align 4
  %rx_started_count.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 3
  %77 = ptrtoint ptr %rx_started_count.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %rx_started_count.i, align 4
  %stop_cbfn.i100 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 4
  %78 = ptrtoint ptr %stop_cbfn.i100 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %stop_cbfn.i100, align 4
  %adminup_cbfn.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 5
  %79 = ptrtoint ptr %adminup_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %adminup_cbfn.i, align 4
  %80 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_mod_init(ptr noundef %bna, ptr noundef %res_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12
  tail call void @bna_tx_mod_init(ptr noundef %tx_mod, ptr noundef %bna, ptr noundef %res_info) #6
  %rx_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13
  tail call void @bna_rx_mod_init(ptr noundef %rx_mod, ptr noundef %bna, ptr noundef %res_info) #6
  %ucam_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14
  %mdl.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdl.i, align 4
  %kva.i = getelementptr inbounds %struct.bna_mem_descr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kva.i, align 4
  %4 = ptrtoint ptr %ucam_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ucam_mod, align 4
  %free_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %free_q.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %free_q.i, ptr %free_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free_q.i, ptr %prev.i.i, align 4
  %num_ucmac.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 3
  %7 = ptrtoint ptr %num_ucmac.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ucmac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp40.i = icmp sgt i32 %8, 0
  br i1 %cmp40.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %ucam_mod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ucam_mod, align 4
  %arrayidx3.i = getelementptr %struct.bna_mac, ptr %10, i32 %i.041.i
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3.i, ptr noundef %12, ptr noundef %free_q.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3.i, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %free_q.i, ptr %arrayidx3.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx3.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx3.i, ptr %12, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %17 = ptrtoint ptr %num_ucmac.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ucmac.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.for.end.i_crit_edge

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %inc.i, %list_add_tail.exit.i.for.end.i_crit_edge ]
  %del_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14, i32 2
  %19 = ptrtoint ptr %del_q.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %del_q.i, ptr %del_q.i, align 4
  %prev.i34.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i34.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %del_q.i, ptr %prev.i34.i, align 4
  %21 = ptrtoint ptr %num_ucmac.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ucmac.i, align 4
  %mul43.i = shl i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %mul43.i)
  %cmp944.i = icmp slt i32 %i.0.lcssa.i, %mul43.i
  br i1 %cmp944.i, label %for.end.i.for.body10.i_crit_edge, label %for.end.i.bna_ucam_mod_init.exit_crit_edge

for.end.i.bna_ucam_mod_init.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ucam_mod_init.exit

for.end.i.for.body10.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %list_add_tail.exit39.i.for.body10.i_crit_edge, %for.end.i.for.body10.i_crit_edge
  %i.145.i = phi i32 [ %inc16.i, %list_add_tail.exit39.i.for.body10.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i.for.body10.i_crit_edge ]
  %23 = ptrtoint ptr %ucam_mod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ucam_mod, align 4
  %arrayidx12.i = getelementptr %struct.bna_mac, ptr %24, i32 %i.145.i
  %25 = ptrtoint ptr %prev.i34.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i34.i, align 4
  %call.i.i36.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx12.i, ptr noundef %26, ptr noundef %del_q.i) #6
  br i1 %call.i.i36.i, label %if.end.i.i38.i, label %for.body10.i.list_add_tail.exit39.i_crit_edge

for.body10.i.list_add_tail.exit39.i_crit_edge:    ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit39.i

if.end.i.i38.i:                                   ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx12.i, ptr %prev.i34.i, align 4
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %del_q.i, ptr %arrayidx12.i, align 4
  %prev3.i.i37.i = getelementptr inbounds %struct.list_head, ptr %arrayidx12.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i37.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx12.i, ptr %26, align 4
  br label %list_add_tail.exit39.i

list_add_tail.exit39.i:                           ; preds = %if.end.i.i38.i, %for.body10.i.list_add_tail.exit39.i_crit_edge
  %inc16.i = add nuw nsw i32 %i.145.i, 1
  %31 = ptrtoint ptr %num_ucmac.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ucmac.i, align 4
  %mul.i = shl i32 %32, 1
  %cmp9.i = icmp slt i32 %inc16.i, %mul.i
  br i1 %cmp9.i, label %list_add_tail.exit39.i.for.body10.i_crit_edge, label %list_add_tail.exit39.i.bna_ucam_mod_init.exit_crit_edge

list_add_tail.exit39.i.bna_ucam_mod_init.exit_crit_edge: ; preds = %list_add_tail.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ucam_mod_init.exit

list_add_tail.exit39.i.for.body10.i_crit_edge:    ; preds = %list_add_tail.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

bna_ucam_mod_init.exit:                           ; preds = %list_add_tail.exit39.i.bna_ucam_mod_init.exit_crit_edge, %for.end.i.bna_ucam_mod_init.exit_crit_edge
  %bna18.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14, i32 3
  %33 = ptrtoint ptr %bna18.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bna, ptr %bna18.i, align 4
  %mcam_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15
  %mdl.i14 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %mdl.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdl.i14, align 4
  %kva.i15 = getelementptr inbounds %struct.bna_mem_descr, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %kva.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kva.i15, align 4
  %38 = ptrtoint ptr %mcam_mod to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %mcam_mod, align 4
  %free_q.i16 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 2
  %39 = ptrtoint ptr %free_q.i16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %free_q.i16, ptr %free_q.i16, align 4
  %prev.i.i17 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i.i17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free_q.i16, ptr %prev.i.i17, align 4
  %num_mcmac.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 4
  %41 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_mcmac.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp73.i = icmp sgt i32 %42, 0
  br i1 %cmp73.i, label %bna_ucam_mod_init.exit.for.body.i20_crit_edge, label %bna_ucam_mod_init.exit.for.end.i26_crit_edge

bna_ucam_mod_init.exit.for.end.i26_crit_edge:     ; preds = %bna_ucam_mod_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i26

bna_ucam_mod_init.exit.for.body.i20_crit_edge:    ; preds = %bna_ucam_mod_init.exit
  br label %for.body.i20

for.body.i20:                                     ; preds = %list_add_tail.exit.i25.for.body.i20_crit_edge, %bna_ucam_mod_init.exit.for.body.i20_crit_edge
  %i.074.i = phi i32 [ %inc.i23, %list_add_tail.exit.i25.for.body.i20_crit_edge ], [ 0, %bna_ucam_mod_init.exit.for.body.i20_crit_edge ]
  %43 = ptrtoint ptr %mcam_mod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mcam_mod, align 4
  %arrayidx3.i18 = getelementptr %struct.bna_mac, ptr %44, i32 %i.074.i
  %45 = ptrtoint ptr %prev.i.i17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i17, align 4
  %call.i.i.i19 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3.i18, ptr noundef %46, ptr noundef %free_q.i16) #6
  br i1 %call.i.i.i19, label %if.end.i.i.i22, label %for.body.i20.list_add_tail.exit.i25_crit_edge

for.body.i20.list_add_tail.exit.i25_crit_edge:    ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i25

if.end.i.i.i22:                                   ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %prev.i.i17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx3.i18, ptr %prev.i.i17, align 4
  %48 = ptrtoint ptr %arrayidx3.i18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %free_q.i16, ptr %arrayidx3.i18, align 4
  %prev3.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %arrayidx3.i18, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i21, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx3.i18, ptr %46, align 4
  br label %list_add_tail.exit.i25

list_add_tail.exit.i25:                           ; preds = %if.end.i.i.i22, %for.body.i20.list_add_tail.exit.i25_crit_edge
  %inc.i23 = add nuw nsw i32 %i.074.i, 1
  %51 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_mcmac.i, align 8
  %cmp.i24 = icmp slt i32 %inc.i23, %52
  br i1 %cmp.i24, label %list_add_tail.exit.i25.for.body.i20_crit_edge, label %list_add_tail.exit.i25.for.end.i26_crit_edge

list_add_tail.exit.i25.for.end.i26_crit_edge:     ; preds = %list_add_tail.exit.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i26

list_add_tail.exit.i25.for.body.i20_crit_edge:    ; preds = %list_add_tail.exit.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i20

for.end.i26:                                      ; preds = %list_add_tail.exit.i25.for.end.i26_crit_edge, %bna_ucam_mod_init.exit.for.end.i26_crit_edge
  %mdl7.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 4
  %53 = ptrtoint ptr %mdl7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mdl7.i, align 4
  %kva9.i = getelementptr inbounds %struct.bna_mem_descr, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %kva9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %kva9.i, align 4
  %mchandle.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 1
  %57 = ptrtoint ptr %mchandle.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %mchandle.i, align 4
  %free_handle_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 4
  %58 = ptrtoint ptr %free_handle_q.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %free_handle_q.i, ptr %free_handle_q.i, align 4
  %prev.i61.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i61.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_handle_q.i, ptr %prev.i61.i, align 4
  %60 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_mcmac.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1475.i = icmp sgt i32 %61, 0
  br i1 %cmp1475.i, label %for.end.i26.for.body15.i_crit_edge, label %for.end.i26.for.end22.i_crit_edge

for.end.i26.for.end22.i_crit_edge:                ; preds = %for.end.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i

for.end.i26.for.body15.i_crit_edge:               ; preds = %for.end.i26
  br label %for.body15.i

for.body15.i:                                     ; preds = %list_add_tail.exit66.i.for.body15.i_crit_edge, %for.end.i26.for.body15.i_crit_edge
  %i.176.i = phi i32 [ %inc21.i, %list_add_tail.exit66.i.for.body15.i_crit_edge ], [ 0, %for.end.i26.for.body15.i_crit_edge ]
  %62 = ptrtoint ptr %mchandle.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mchandle.i, align 4
  %arrayidx17.i = getelementptr %struct.bna_mcam_handle, ptr %63, i32 %i.176.i
  %64 = ptrtoint ptr %prev.i61.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i61.i, align 4
  %call.i.i63.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx17.i, ptr noundef %65, ptr noundef %free_handle_q.i) #6
  br i1 %call.i.i63.i, label %if.end.i.i65.i, label %for.body15.i.list_add_tail.exit66.i_crit_edge

for.body15.i.list_add_tail.exit66.i_crit_edge:    ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit66.i

if.end.i.i65.i:                                   ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %prev.i61.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx17.i, ptr %prev.i61.i, align 4
  %67 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %free_handle_q.i, ptr %arrayidx17.i, align 4
  %prev3.i.i64.i = getelementptr inbounds %struct.list_head, ptr %arrayidx17.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i64.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %arrayidx17.i, ptr %65, align 4
  br label %list_add_tail.exit66.i

list_add_tail.exit66.i:                           ; preds = %if.end.i.i65.i, %for.body15.i.list_add_tail.exit66.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.176.i, 1
  %70 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_mcmac.i, align 8
  %cmp14.i = icmp slt i32 %inc21.i, %71
  br i1 %cmp14.i, label %list_add_tail.exit66.i.for.body15.i_crit_edge, label %list_add_tail.exit66.i.for.end22.i_crit_edge

list_add_tail.exit66.i.for.end22.i_crit_edge:     ; preds = %list_add_tail.exit66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i

list_add_tail.exit66.i.for.body15.i_crit_edge:    ; preds = %list_add_tail.exit66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15.i

for.end22.i:                                      ; preds = %list_add_tail.exit66.i.for.end22.i_crit_edge, %for.end.i26.for.end22.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 0, %for.end.i26.for.end22.i_crit_edge ], [ %inc21.i, %list_add_tail.exit66.i.for.end22.i_crit_edge ]
  %del_q.i27 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 3
  %72 = ptrtoint ptr %del_q.i27 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %del_q.i27, ptr %del_q.i27, align 4
  %prev.i67.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 3, i32 1
  %73 = ptrtoint ptr %prev.i67.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %del_q.i27, ptr %prev.i67.i, align 4
  %74 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_mcmac.i, align 8
  %mul78.i = shl i32 %75, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa.i, i32 %mul78.i)
  %cmp2779.i = icmp slt i32 %i.1.lcssa.i, %mul78.i
  br i1 %cmp2779.i, label %for.end22.i.for.body28.i_crit_edge, label %for.end22.i.bna_mcam_mod_init.exit_crit_edge

for.end22.i.bna_mcam_mod_init.exit_crit_edge:     ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_mcam_mod_init.exit

for.end22.i.for.body28.i_crit_edge:               ; preds = %for.end22.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %list_add_tail.exit72.i.for.body28.i_crit_edge, %for.end22.i.for.body28.i_crit_edge
  %i.280.i = phi i32 [ %inc34.i, %list_add_tail.exit72.i.for.body28.i_crit_edge ], [ %i.1.lcssa.i, %for.end22.i.for.body28.i_crit_edge ]
  %76 = ptrtoint ptr %mcam_mod to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mcam_mod, align 4
  %arrayidx30.i = getelementptr %struct.bna_mac, ptr %77, i32 %i.280.i
  %78 = ptrtoint ptr %prev.i67.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i67.i, align 4
  %call.i.i69.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx30.i, ptr noundef %79, ptr noundef %del_q.i27) #6
  br i1 %call.i.i69.i, label %if.end.i.i71.i, label %for.body28.i.list_add_tail.exit72.i_crit_edge

for.body28.i.list_add_tail.exit72.i_crit_edge:    ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit72.i

if.end.i.i71.i:                                   ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %prev.i67.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx30.i, ptr %prev.i67.i, align 4
  %81 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %del_q.i27, ptr %arrayidx30.i, align 4
  %prev3.i.i70.i = getelementptr inbounds %struct.list_head, ptr %arrayidx30.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i70.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %arrayidx30.i, ptr %79, align 4
  br label %list_add_tail.exit72.i

list_add_tail.exit72.i:                           ; preds = %if.end.i.i71.i, %for.body28.i.list_add_tail.exit72.i_crit_edge
  %inc34.i = add nuw nsw i32 %i.280.i, 1
  %84 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_mcmac.i, align 8
  %mul.i28 = shl i32 %85, 1
  %cmp27.i = icmp slt i32 %inc34.i, %mul.i28
  br i1 %cmp27.i, label %list_add_tail.exit72.i.for.body28.i_crit_edge, label %list_add_tail.exit72.i.bna_mcam_mod_init.exit_crit_edge

list_add_tail.exit72.i.bna_mcam_mod_init.exit_crit_edge: ; preds = %list_add_tail.exit72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_mcam_mod_init.exit

list_add_tail.exit72.i.for.body28.i_crit_edge:    ; preds = %list_add_tail.exit72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28.i

bna_mcam_mod_init.exit:                           ; preds = %list_add_tail.exit72.i.bna_mcam_mod_init.exit_crit_edge, %for.end22.i.bna_mcam_mod_init.exit_crit_edge
  %bna36.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 5
  %86 = ptrtoint ptr %bna36.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %bna, ptr %bna36.i, align 4
  %default_mode_rid = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 17
  %87 = ptrtoint ptr %default_mode_rid to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %default_mode_rid, align 4
  %promisc_rid = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 18
  %88 = ptrtoint ptr %promisc_rid to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %promisc_rid, align 8
  %mod_flags = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 16
  %89 = ptrtoint ptr %mod_flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mod_flags, align 8
  %or = or i32 %90, 1
  store i32 %or, ptr %mod_flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_mod_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_mod_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_uninit(ptr noundef %bna) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mod_flags = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 16
  %0 = ptrtoint ptr %mod_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 15, i32 5
  %2 = ptrtoint ptr %bna.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bna.i, align 4
  %bna.i12 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 14, i32 3
  %3 = ptrtoint ptr %bna.i12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bna.i12, align 4
  %rx_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13
  tail call void @bna_rx_mod_uninit(ptr noundef %rx_mod) #6
  %tx_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12
  tail call void @bna_tx_mod_uninit(ptr noundef %tx_mod) #6
  %4 = ptrtoint ptr %mod_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mod_flags, align 8
  %and2 = and i32 %5, -2
  store i32 %and2, ptr %mod_flags, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %flags.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %7, -4
  store i32 %and2.i, ptr %flags.i, align 4
  %bna.i13 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 9, i32 9
  %8 = ptrtoint ptr %bna.i13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bna.i13, align 4
  %flags.i14 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %flags.i14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags.i14, align 4
  %bna.i15 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 10, i32 11
  %10 = ptrtoint ptr %bna.i15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bna.i15, align 4
  %ioc.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 1
  tail call void @bfa_nw_ioc_detach(ptr noundef %ioc.i) #6
  %bna.i16 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 7
  %11 = ptrtoint ptr %bna.i16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bna.i16, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 19
  %12 = ptrtoint ptr %bnad to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bnad, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_mod_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_mod_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bna_num_txq_set(ptr nocapture noundef %bna, i32 noundef %num_txq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attr, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %num_txq3 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 1
  %2 = ptrtoint ptr %num_txq3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_txq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %num_txq)
  %cmp.not = icmp slt i32 %3, %num_txq
  br i1 %cmp.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %num_txq3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num_txq, ptr %num_txq3, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bna_num_rxp_set(ptr nocapture noundef %bna, i32 noundef %num_rxp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attr, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %num_rxp3 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 2
  %2 = ptrtoint ptr %num_rxp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rxp3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %num_rxp)
  %cmp.not = icmp slt i32 %3, %num_rxp
  br i1 %cmp.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %num_rxp3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num_rxp, ptr %num_rxp3, align 8
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true.return_crit_edge ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bna_cam_mod_mac_get(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.not = icmp eq ptr %1, %head
  %spec.select = select i1 %cmp.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.select, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bna_mcam_mod_handle_get(ptr noundef %mcam_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %free_handle_q = getelementptr inbounds %struct.bna_mcam_mod, ptr %mcam_mod, i32 0, i32 4
  %0 = ptrtoint ptr %free_handle_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_handle_q, align 4
  %cmp.not = icmp eq ptr %1, %free_handle_q
  %spec.select = select i1 %cmp.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.select, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_mcam_mod_handle_put(ptr noundef %mcam_mod, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %free_handle_q = getelementptr inbounds %struct.bna_mcam_mod, ptr %mcam_mod, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.bna_mcam_mod, ptr %mcam_mod, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %handle, ptr noundef %1, ptr noundef %free_handle_q) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handle, ptr %prev.i, align 4
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free_handle_q, ptr %handle, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %handle, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_hw_stats_get(ptr noundef %bna) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_mod = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11
  %0 = ptrtoint ptr %stats_mod to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stats_mod, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bnad = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 19
  %2 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad, align 4
  %stats = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4
  tail call void @bnad_cb_stats_get(ptr noundef %3, i32 noundef 1, ptr noundef %stats) #6
  br label %return

if.end:                                           ; preds = %entry
  %stats_get_busy = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %stats_get_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stats_get_busy, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bnad4 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 19
  %6 = ptrtoint ptr %bnad4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bnad4, align 4
  %stats5 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4
  tail call void @bnad_cb_stats_get(ptr noundef %7, i32 noundef 3, ptr noundef %stats5) #6
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %stats_get.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5
  %8 = ptrtoint ptr %stats_get_busy to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %stats_get_busy, align 1
  %9 = ptrtoint ptr %stats_get.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 24, ptr %stats_get.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 23, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 0, i32 2
  %11 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %enet_id.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 0, i32 4
  %12 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 0, i32 3
  %13 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %stats_mask.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 1
  %14 = ptrtoint ptr %stats_mask.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 31, ptr %stats_mask.i, align 1
  %rid_mask.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 13
  %15 = ptrtoint ptr %rid_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rid_mask.i, align 8
  %tx_enet_mask.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 4
  %17 = ptrtoint ptr %tx_enet_mask.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %tx_enet_mask.i, align 1
  %rid_mask6.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 15
  %18 = ptrtoint ptr %rid_mask6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rid_mask6.i, align 8
  %rx_enet_mask.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 3
  %20 = ptrtoint ptr %rx_enet_mask.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %rx_enet_mask.i, align 1
  %stats.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4
  %21 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats.i, align 4
  %host_buffer.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 5
  %addr_hi.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 5, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %addr_hi.i, align 1
  %lsb.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lsb.i, align 4
  %26 = ptrtoint ptr %host_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %host_buffer.i, align 1
  %stats_get_cmd.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 3
  %cbfn.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 3, i32 1
  %27 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 3, i32 2
  %28 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 3, i32 3
  %29 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 28, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 11, i32 3, i32 4
  %30 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %stats_get.i, ptr %msg_hdr.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %stats_get_cmd.i) #6
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_stats_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_error_isr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_pause_init_wait(ptr noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %event, label %do.end26 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb7
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -5
  %3 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_enet_sm_last_resp_wait, ptr %enet, align 4
  store i32 %and, ptr %flags, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 4
  %and3 = and i32 %5, -5
  store i32 %and3, ptr %flags2, align 4
  %6 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %7 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mtu_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb1.do.body3.i_crit_edge, label %if.then.i

sw.bb1.do.body3.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mtu_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %10 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bnad.i, align 4
  tail call void %8(ptr noundef %13) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %sw.bb1.do.body3.i_crit_edge
  %stop_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %14 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %do.body3.i.sw.epilog_crit_edge, label %if.then5.i

do.body3.i.sw.epilog_crit_edge:                   ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %16 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_cbarg.i, align 4
  %18 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %15(ptr noundef %17) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags8 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags8, align 4
  %or = or i32 %20, 4
  store i32 %or, ptr %flags8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %flags10 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %21 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags10, align 4
  %and11 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %do.body14, label %if.then

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %and13 = and i32 %22, -5
  %23 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and13, ptr %flags10, align 4
  %pause_req1.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10
  %24 = ptrtoint ptr %pause_req1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 24, ptr %pause_req1.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 20, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 2
  %26 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %enet_id.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 4
  %27 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %pause_config.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3
  %29 = ptrtoint ptr %pause_config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pause_config.i, align 4
  %conv.i = trunc i32 %30 to i8
  %tx_pause6.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %tx_pause6.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %tx_pause6.i, align 1
  %rx_pause.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_pause.i, align 4
  %conv8.i = trunc i32 %33 to i8
  %rx_pause9.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 3
  %34 = ptrtoint ptr %rx_pause9.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv8.i, ptr %rx_pause9.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9
  %cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 4
  %38 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pause_req1.i, ptr %msg_hdr.i, align 4
  %bna.i45 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %39 = ptrtoint ptr %bna.i45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna.i45, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #6
  br label %sw.epilog

do.body14:                                        ; preds = %sw.bb9
  %41 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bna_enet_sm_started, ptr %enet, align 4
  %mtu_cbfn.i46 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %42 = ptrtoint ptr %mtu_cbfn.i46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mtu_cbfn.i46, align 4
  %tobool.not.i47 = icmp eq ptr %43, null
  br i1 %tobool.not.i47, label %do.body14.bna_enet_sm_started_entry.exit_crit_edge, label %if.then.i50

do.body14.bna_enet_sm_started_entry.exit_crit_edge: ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_enet_sm_started_entry.exit

if.then.i50:                                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %mtu_cbfn.i46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %mtu_cbfn.i46, align 4
  %bna.i48 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %45 = ptrtoint ptr %bna.i48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bna.i48, align 4
  %bnad.i49 = getelementptr inbounds %struct.bna, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %bnad.i49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bnad.i49, align 4
  tail call void %43(ptr noundef %48) #6
  br label %bna_enet_sm_started_entry.exit

bna_enet_sm_started_entry.exit:                   ; preds = %if.then.i50, %do.body14.bna_enet_sm_started_entry.exit_crit_edge
  %type = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 2
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp = icmp ne i32 %50, 0
  %cond = zext i1 %cmp to i32
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %51 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bna, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ethport, align 4
  tail call void %54(ptr noundef %ethport, i32 noundef 1) #6
  %55 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bna, align 4
  %tx_mod = getelementptr inbounds %struct.bna, ptr %56, i32 0, i32 12
  tail call void @bna_tx_mod_start(ptr noundef %tx_mod, i32 noundef %cond) #6
  %57 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bna, align 4
  %rx_mod = getelementptr inbounds %struct.bna, ptr %58, i32 0, i32 13
  tail call void @bna_rx_mod_start(ptr noundef %rx_mod, i32 noundef %cond) #6
  br label %sw.epilog

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 990, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end26, %bna_enet_sm_started_entry.exit, %if.then, %sw.bb7, %if.then5.i, %do.body3.i.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_last_resp_wait(ptr nocapture noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %event, label %do.end3 [
    i32 3, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge7
  ]

entry.do.body_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge7
  %1 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %2 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.do.body3.i_crit_edge, label %if.then.i

do.body.do.body3.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mtu_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %5 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad.i, align 4
  tail call void %3(ptr noundef %8) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %do.body.do.body3.i_crit_edge
  %stop_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %9 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %do.body3.i.sw.epilog_crit_edge, label %if.then5.i

do.body3.i.sw.epilog_crit_edge:                   ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %11 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop_cbarg.i, align 4
  %13 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %10(ptr noundef %12) #6
  br label %sw.epilog

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1011, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end3, %if.then5.i, %do.body3.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_started(ptr noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %event, label %do.end25 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 4, label %do.body10
    i32 5, label %do.body14
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_enet_sm_chld_stop_wait, ptr %enet, align 4
  %type.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp ne i32 %3, 0
  %cond.i = zext i1 %cmp.i to i32
  %chld_stop_wc.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %4 = ptrtoint ptr %chld_stop_wc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bna_enet_cb_chld_stopped, ptr %chld_stop_wc.i, align 4
  %wc_cbarg2.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %enet, ptr %wc_cbarg2.i.i, align 4
  %wc_count.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %wc_count.i.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %7 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna.i, align 4
  %ethport.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 9
  %stop_cbfn.i.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 9, i32 4
  %9 = ptrtoint ptr %stop_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bna_enet_cb_ethport_stopped, ptr %stop_cbfn.i.i, align 4
  %10 = ptrtoint ptr %ethport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ethport.i, align 4
  tail call void %11(ptr noundef %ethport.i, i32 noundef 2) #6
  %12 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wc_count.i.i, align 4
  %inc.i22.i = add i32 %13, 1
  store i32 %inc.i22.i, ptr %wc_count.i.i, align 4
  %14 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bna.i, align 4
  %tx_mod.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 12
  tail call void @bna_tx_mod_stop(ptr noundef %tx_mod.i, i32 noundef %cond.i) #6
  %16 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wc_count.i.i, align 4
  %inc.i24.i = add i32 %17, 1
  store i32 %inc.i24.i, ptr %wc_count.i.i, align 4
  %18 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bna.i, align 4
  %rx_mod.i = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 13
  tail call void @bna_rx_mod_stop(ptr noundef %rx_mod.i, i32 noundef %cond.i) #6
  %20 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wc_count.i.i, align 4
  %dec.i.i.i = add i32 %21, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %chld_stop_wc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chld_stop_wc.i, align 4
  %24 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wc_cbarg2.i.i, align 4
  tail call void %23(ptr noundef %25) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %26 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %27 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mtu_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body2.do.body3.i_crit_edge, label %if.then.i

do.body2.do.body3.i_crit_edge:                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %mtu_cbfn.i, align 4
  %bna.i45 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %30 = ptrtoint ptr %bna.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bna.i45, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bnad.i, align 4
  tail call void %28(ptr noundef %33) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %do.body2.do.body3.i_crit_edge
  %stop_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %34 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool4.not.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i, label %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge, label %if.then5.i

do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_enet_sm_stopped_entry.exit

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %36 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stop_cbarg.i, align 4
  %38 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %35(ptr noundef %37) #6
  br label %bna_enet_sm_stopped_entry.exit

bna_enet_sm_stopped_entry.exit:                   ; preds = %if.then5.i, %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %39 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9
  %flags.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %42, 2
  store i32 %or.i, ptr %flags.i, align 4
  %link_status.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i, label %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge, label %if.then.i48

bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge: ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ethport_fail.exit

if.then.i48:                                      ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %link_status.i, align 4
  %link_cbfn.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9, i32 6
  %46 = ptrtoint ptr %link_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link_cbfn.i, align 4
  %bna.i46 = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9, i32 9
  %48 = ptrtoint ptr %bna.i46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bna.i46, align 4
  %bnad.i47 = getelementptr inbounds %struct.bna, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %bnad.i47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bnad.i47, align 4
  tail call void %47(ptr noundef %51, i32 noundef 0) #6
  br label %bna_ethport_fail.exit

bna_ethport_fail.exit:                            ; preds = %if.then.i48, %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge
  %52 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ethport, align 4
  tail call void %53(ptr noundef %ethport, i32 noundef 3) #6
  %54 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bna, align 4
  %tx_mod = getelementptr inbounds %struct.bna, ptr %55, i32 0, i32 12
  tail call void @bna_tx_mod_fail(ptr noundef %tx_mod) #6
  %56 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bna, align 4
  %rx_mod = getelementptr inbounds %struct.bna, ptr %57, i32 0, i32 13
  tail call void @bna_rx_mod_fail(ptr noundef %rx_mod) #6
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bna_enet_sm_cfg_wait, ptr %enet, align 4
  %pause_req1.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10
  %59 = ptrtoint ptr %pause_req1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 24, ptr %pause_req1.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 1
  %60 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 20, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 2
  %61 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %enet_id.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 4
  %62 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 3
  %63 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %pause_config.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3
  %64 = ptrtoint ptr %pause_config.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pause_config.i, align 4
  %conv.i = trunc i32 %65 to i8
  %tx_pause6.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 2
  %66 = ptrtoint ptr %tx_pause6.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i, ptr %tx_pause6.i, align 1
  %rx_pause.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_pause.i, align 4
  %conv8.i = trunc i32 %68 to i8
  %rx_pause9.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 3
  %69 = ptrtoint ptr %rx_pause9.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv8.i, ptr %rx_pause9.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9
  %cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 1
  %70 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 2
  %71 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 3
  %72 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 12, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 4
  %73 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %pause_req1.i, ptr %msg_hdr.i, align 4
  %bna.i49 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %74 = ptrtoint ptr %bna.i49 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bna.i49, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %75, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #6
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  %76 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @bna_enet_sm_cfg_wait, ptr %enet, align 4
  %type = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 2
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp = icmp ne i32 %78, 0
  %cond = zext i1 %cmp to i32
  %chld_stop_wc = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %79 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @bna_enet_cb_chld_stopped, ptr %chld_stop_wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %enet, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %81 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %wc_count.i, align 4
  %bna19 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %82 = ptrtoint ptr %bna19 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bna19, align 4
  %rx_mod20 = getelementptr inbounds %struct.bna, ptr %83, i32 0, i32 13
  tail call void @bna_rx_mod_stop(ptr noundef %rx_mod20, i32 noundef %cond) #6
  %84 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %85, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body14.sw.epilog_crit_edge

do.body14.sw.epilog_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i.i:                                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chld_stop_wc, align 4
  %88 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %87(ptr noundef %89) #6
  br label %sw.epilog

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1050, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end25, %if.then.i.i, %do.body14.sw.epilog_crit_edge, %do.body10, %bna_ethport_fail.exit, %if.then.i.i.i, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_mod_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_mod_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msgq_cmd_post(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_chld_stop_wait(ptr nocapture noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %event, label %do.end11 [
    i32 3, label %do.body
    i32 7, label %do.body6
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %2 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.do.body3.i_crit_edge, label %if.then.i

do.body.do.body3.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mtu_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %5 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad.i, align 4
  tail call void %3(ptr noundef %8) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %do.body.do.body3.i_crit_edge
  %stop_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %9 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge, label %if.then5.i

do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_enet_sm_stopped_entry.exit

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %11 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop_cbarg.i, align 4
  %13 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %10(ptr noundef %12) #6
  br label %bna_enet_sm_stopped_entry.exit

bna_enet_sm_stopped_entry.exit:                   ; preds = %if.then5.i, %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %14 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bna, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9
  %flags.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %17, 2
  store i32 %or.i, ptr %flags.i, align 4
  %link_status.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge, label %if.then.i22

bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge: ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ethport_fail.exit

if.then.i22:                                      ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %link_status.i, align 4
  %link_cbfn.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 6
  %21 = ptrtoint ptr %link_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link_cbfn.i, align 4
  %bna.i20 = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 9
  %23 = ptrtoint ptr %bna.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bna.i20, align 4
  %bnad.i21 = getelementptr inbounds %struct.bna, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %bnad.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bnad.i21, align 4
  tail call void %22(ptr noundef %26, i32 noundef 0) #6
  br label %bna_ethport_fail.exit

bna_ethport_fail.exit:                            ; preds = %if.then.i22, %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge
  %27 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ethport, align 4
  tail call void %28(ptr noundef %ethport, i32 noundef 3) #6
  %29 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bna, align 4
  %tx_mod = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 12
  tail call void @bna_tx_mod_fail(ptr noundef %tx_mod) #6
  %31 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bna, align 4
  %rx_mod = getelementptr inbounds %struct.bna, ptr %32, i32 0, i32 13
  tail call void @bna_rx_mod_fail(ptr noundef %rx_mod) #6
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %33 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i23 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %34 = ptrtoint ptr %mtu_cbfn.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mtu_cbfn.i23, align 4
  %tobool.not.i24 = icmp eq ptr %35, null
  br i1 %tobool.not.i24, label %do.body6.do.body3.i30_crit_edge, label %if.then.i27

do.body6.do.body3.i30_crit_edge:                  ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i30

if.then.i27:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %mtu_cbfn.i23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %mtu_cbfn.i23, align 4
  %bna.i25 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %37 = ptrtoint ptr %bna.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bna.i25, align 4
  %bnad.i26 = getelementptr inbounds %struct.bna, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %bnad.i26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bnad.i26, align 4
  tail call void %35(ptr noundef %40) #6
  br label %do.body3.i30

do.body3.i30:                                     ; preds = %if.then.i27, %do.body6.do.body3.i30_crit_edge
  %stop_cbfn.i28 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %41 = ptrtoint ptr %stop_cbfn.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stop_cbfn.i28, align 4
  %tobool4.not.i29 = icmp eq ptr %42, null
  br i1 %tobool4.not.i29, label %do.body3.i30.sw.epilog_crit_edge, label %if.then5.i32

do.body3.i30.sw.epilog_crit_edge:                 ; preds = %do.body3.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then5.i32:                                     ; preds = %do.body3.i30
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i31 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %43 = ptrtoint ptr %stop_cbarg.i31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stop_cbarg.i31, align 4
  %45 = ptrtoint ptr %stop_cbfn.i28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %stop_cbfn.i28, align 4
  store ptr null, ptr %stop_cbarg.i31, align 4
  tail call void %42(ptr noundef %44) #6
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1153, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %if.then5.i32, %do.body3.i30.sw.epilog_crit_edge, %bna_ethport_fail.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_mod_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_mod_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_cfg_wait(ptr noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %event, label %do.end53 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb15
    i32 5, label %sw.bb17
    i32 7, label %do.body21
    i32 6, label %entry.sw.bb25_crit_edge
  ]

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb25

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and2 = and i32 %2, -13
  %3 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_enet_sm_cfg_stop_wait, ptr %enet, align 4
  store i32 %and2, ptr %flags, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %flags4 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags4, align 4
  %and7 = and i32 %5, -13
  store i32 %and7, ptr %flags4, align 4
  %6 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %7 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mtu_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb3.do.body3.i_crit_edge, label %if.then.i

sw.bb3.do.body3.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mtu_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %10 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bnad.i, align 4
  tail call void %8(ptr noundef %13) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %sw.bb3.do.body3.i_crit_edge
  %stop_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %14 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge, label %if.then5.i

do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_enet_sm_stopped_entry.exit

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %16 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_cbarg.i, align 4
  %18 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %15(ptr noundef %17) #6
  br label %bna_enet_sm_stopped_entry.exit

bna_enet_sm_stopped_entry.exit:                   ; preds = %if.then5.i, %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %19 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bna, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 9
  %flags.i83 = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %flags.i83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i83, align 4
  %or.i = or i32 %22, 2
  store i32 %or.i, ptr %flags.i83, align 4
  %link_status.i = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge, label %if.then.i86

bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge: ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ethport_fail.exit

if.then.i86:                                      ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %link_status.i, align 4
  %link_cbfn.i = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 9, i32 6
  %26 = ptrtoint ptr %link_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link_cbfn.i, align 4
  %bna.i84 = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 9, i32 9
  %28 = ptrtoint ptr %bna.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bna.i84, align 4
  %bnad.i85 = getelementptr inbounds %struct.bna, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %bnad.i85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bnad.i85, align 4
  tail call void %27(ptr noundef %31, i32 noundef 0) #6
  br label %bna_ethport_fail.exit

bna_ethport_fail.exit:                            ; preds = %if.then.i86, %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge
  %32 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ethport, align 4
  tail call void %33(ptr noundef %ethport, i32 noundef 3) #6
  %34 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna, align 4
  %tx_mod = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 12
  tail call void @bna_tx_mod_fail(ptr noundef %tx_mod) #6
  %36 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bna, align 4
  %rx_mod = getelementptr inbounds %struct.bna, ptr %37, i32 0, i32 13
  tail call void @bna_rx_mod_fail(ptr noundef %rx_mod) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags16 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %38 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags16, align 4
  %or = or i32 %39, 4
  store i32 %or, ptr %flags16, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags18 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %40 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags18, align 4
  %or19 = or i32 %41, 8
  store i32 %or19, ptr %flags18, align 4
  br label %sw.epilog

do.body21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 2
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp ne i32 %43, 0
  %cond = zext i1 %cmp to i32
  %bna22 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %44 = ptrtoint ptr %bna22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bna22, align 4
  %rx_mod23 = getelementptr inbounds %struct.bna, ptr %45, i32 0, i32 13
  tail call void @bna_rx_mod_start(ptr noundef %rx_mod23, i32 noundef %cond) #6
  br label %sw.bb25

sw.bb25:                                          ; preds = %do.body21, %entry.sw.bb25_crit_edge
  %flags26 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 1
  %46 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags26, align 4
  %and27 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %and29 = and i32 %47, -5
  %48 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and29, ptr %flags26, align 4
  %pause_req1.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10
  %49 = ptrtoint ptr %pause_req1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 24, ptr %pause_req1.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 1
  %50 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 20, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 2
  %51 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %enet_id.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 4
  %52 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 0, i32 3
  %53 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %pause_config.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3
  %54 = ptrtoint ptr %pause_config.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pause_config.i, align 4
  %conv.i = trunc i32 %55 to i8
  %tx_pause6.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 2
  %56 = ptrtoint ptr %tx_pause6.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i, ptr %tx_pause6.i, align 1
  %rx_pause.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_pause.i, align 4
  %conv8.i = trunc i32 %58 to i8
  %rx_pause9.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 10, i32 3
  %59 = ptrtoint ptr %rx_pause9.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv8.i, ptr %rx_pause9.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9
  %cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 2
  %61 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 3
  %62 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 12, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 9, i32 4
  %63 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %pause_req1.i, ptr %msg_hdr.i, align 4
  %bna.i87 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %64 = ptrtoint ptr %bna.i87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bna.i87, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %65, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb25
  %and31 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body47, label %if.then33

if.then33:                                        ; preds = %if.else
  %and35 = and i32 %47, -9
  %66 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and35, ptr %flags26, align 4
  %type38 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 2
  %67 = ptrtoint ptr %type38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp39 = icmp ne i32 %68, 0
  %cond40 = zext i1 %cmp39 to i32
  %chld_stop_wc = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %69 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @bna_enet_cb_chld_stopped, ptr %chld_stop_wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %enet, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %71 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %wc_count.i, align 4
  %bna42 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %72 = ptrtoint ptr %bna42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bna42, align 4
  %rx_mod43 = getelementptr inbounds %struct.bna, ptr %73, i32 0, i32 13
  tail call void @bna_rx_mod_stop(ptr noundef %rx_mod43, i32 noundef %cond40) #6
  %74 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %75, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then33.sw.epilog_crit_edge

if.then33.sw.epilog_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chld_stop_wc, align 4
  %78 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %77(ptr noundef %79) #6
  br label %sw.epilog

do.body47:                                        ; preds = %if.else
  %80 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @bna_enet_sm_started, ptr %enet, align 4
  %mtu_cbfn.i89 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %81 = ptrtoint ptr %mtu_cbfn.i89 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mtu_cbfn.i89, align 4
  %tobool.not.i90 = icmp eq ptr %82, null
  br i1 %tobool.not.i90, label %do.body47.sw.epilog_crit_edge, label %if.then.i93

do.body47.sw.epilog_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i93:                                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %mtu_cbfn.i89 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %mtu_cbfn.i89, align 4
  %bna.i91 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %84 = ptrtoint ptr %bna.i91 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bna.i91, align 4
  %bnad.i92 = getelementptr inbounds %struct.bna, ptr %85, i32 0, i32 19
  %86 = ptrtoint ptr %bnad.i92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bnad.i92, align 4
  tail call void %82(ptr noundef %87) #6
  br label %sw.epilog

do.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1101, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end53, %if.then.i93, %do.body47.sw.epilog_crit_edge, %if.then.i.i, %if.then33.sw.epilog_crit_edge, %if.then, %sw.bb17, %sw.bb15, %bna_ethport_fail.exit, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_cb_chld_stopped(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  tail call void %1(ptr noundef %arg, i32 noundef 7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_mod_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_mod_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_cb_ethport_stopped(ptr nocapture noundef %enet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wc_count.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bfa_wc_down.exit_crit_edge

entry.bfa_wc_down.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bfa_wc_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chld_stop_wc = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %2 = ptrtoint ptr %chld_stop_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chld_stop_wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #6
  br label %bfa_wc_down.exit

bfa_wc_down.exit:                                 ; preds = %if.then.i, %entry.bfa_wc_down.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_enet_sm_cfg_stop_wait(ptr noundef %enet, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %event, label %do.end11 [
    i32 3, label %do.body
    i32 6, label %entry.do.body6_crit_edge
    i32 7, label %entry.do.body6_crit_edge24
  ]

entry.do.body6_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_enet_sm_stopped, ptr %enet, align 4
  %mtu_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 7
  %2 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.do.body3.i_crit_edge, label %if.then.i

do.body.do.body3.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %mtu_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mtu_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %5 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad.i, align 4
  tail call void %3(ptr noundef %8) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %do.body.do.body3.i_crit_edge
  %stop_cbfn.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 5
  %9 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge, label %if.then5.i

do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_enet_sm_stopped_entry.exit

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 6
  %11 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop_cbarg.i, align 4
  %13 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %10(ptr noundef %12) #6
  br label %bna_enet_sm_stopped_entry.exit

bna_enet_sm_stopped_entry.exit:                   ; preds = %if.then5.i, %do.body3.i.bna_enet_sm_stopped_entry.exit_crit_edge
  %bna = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %14 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bna, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9
  %flags.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %17, 2
  store i32 %or.i, ptr %flags.i, align 4
  %link_status.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %link_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge, label %if.then.i22

bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge: ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ethport_fail.exit

if.then.i22:                                      ; preds = %bna_enet_sm_stopped_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %link_status.i, align 4
  %link_cbfn.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 6
  %21 = ptrtoint ptr %link_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link_cbfn.i, align 4
  %bna.i20 = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 9, i32 9
  %23 = ptrtoint ptr %bna.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bna.i20, align 4
  %bnad.i21 = getelementptr inbounds %struct.bna, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %bnad.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bnad.i21, align 4
  tail call void %22(ptr noundef %26, i32 noundef 0) #6
  br label %bna_ethport_fail.exit

bna_ethport_fail.exit:                            ; preds = %if.then.i22, %bna_enet_sm_stopped_entry.exit.bna_ethport_fail.exit_crit_edge
  %27 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ethport, align 4
  tail call void %28(ptr noundef %ethport, i32 noundef 3) #6
  %29 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bna, align 4
  %tx_mod = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 12
  tail call void @bna_tx_mod_fail(ptr noundef %tx_mod) #6
  %31 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bna, align 4
  %rx_mod = getelementptr inbounds %struct.bna, ptr %32, i32 0, i32 13
  tail call void @bna_rx_mod_fail(ptr noundef %rx_mod) #6
  br label %sw.epilog

do.body6:                                         ; preds = %entry.do.body6_crit_edge, %entry.do.body6_crit_edge24
  %33 = ptrtoint ptr %enet to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bna_enet_sm_chld_stop_wait, ptr %enet, align 4
  %type.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 2
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp ne i32 %35, 0
  %cond.i = zext i1 %cmp.i to i32
  %chld_stop_wc.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8
  %36 = ptrtoint ptr %chld_stop_wc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bna_enet_cb_chld_stopped, ptr %chld_stop_wc.i, align 4
  %wc_cbarg2.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %enet, ptr %wc_cbarg2.i.i, align 4
  %wc_count.i.i = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %wc_count.i.i, align 4
  %bna.i23 = getelementptr inbounds %struct.bna_enet, ptr %enet, i32 0, i32 11
  %39 = ptrtoint ptr %bna.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna.i23, align 4
  %ethport.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9
  %stop_cbfn.i.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 9, i32 4
  %41 = ptrtoint ptr %stop_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bna_enet_cb_ethport_stopped, ptr %stop_cbfn.i.i, align 4
  %42 = ptrtoint ptr %ethport.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ethport.i, align 4
  tail call void %43(ptr noundef %ethport.i, i32 noundef 2) #6
  %44 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wc_count.i.i, align 4
  %inc.i22.i = add i32 %45, 1
  store i32 %inc.i22.i, ptr %wc_count.i.i, align 4
  %46 = ptrtoint ptr %bna.i23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bna.i23, align 4
  %tx_mod.i = getelementptr inbounds %struct.bna, ptr %47, i32 0, i32 12
  tail call void @bna_tx_mod_stop(ptr noundef %tx_mod.i, i32 noundef %cond.i) #6
  %48 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wc_count.i.i, align 4
  %inc.i24.i = add i32 %49, 1
  store i32 %inc.i24.i, ptr %wc_count.i.i, align 4
  %50 = ptrtoint ptr %bna.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bna.i23, align 4
  %rx_mod.i = getelementptr inbounds %struct.bna, ptr %51, i32 0, i32 13
  tail call void @bna_rx_mod_stop(ptr noundef %rx_mod.i, i32 noundef %cond.i) #6
  %52 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wc_count.i.i, align 4
  %dec.i.i.i = add i32 %53, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.body6.sw.epilog_crit_edge

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %chld_stop_wc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chld_stop_wc.i, align 4
  %56 = ptrtoint ptr %wc_cbarg2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wc_cbarg2.i.i, align 4
  tail call void %55(ptr noundef %57) #6
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1128, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %if.then.i.i.i, %do.body6.sw.epilog_crit_edge, %bna_ethport_fail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_enet_stop_wait(ptr noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %event, label %do.end44 [
    i32 4, label %do.body
    i32 7, label %do.body36
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_ioc_disable_wait, ptr %ioceth, align 8
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_int_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !97
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_mask_bits, align 4
  %or = or i32 %11, %7
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error_mask_bits, align 4
  %or9 = or i32 %or, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %fn_int_mask12 = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %fn_int_mask12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fn_int_mask12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !100
  %17 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna, align 8
  %fn_int_mask17 = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %fn_int_mask17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fn_int_mask17, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %22 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %25) #6
  %26 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bna, align 8
  %enet = getelementptr inbounds %struct.bna, ptr %27, i32 0, i32 10
  %flags.i = getelementptr inbounds %struct.bna, ptr %27, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %29, -2
  store i32 %and.i, ptr %flags.i, align 4
  %30 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enet, align 4
  tail call void %31(ptr noundef %enet, i32 noundef 3) #6
  %32 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bna, align 8
  %stats_mod = getelementptr inbounds %struct.bna, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %stats_mod to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %stats_mod, align 4
  %35 = load ptr, ptr %bna, align 8
  %stats_get_busy = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %stats_get_busy to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %stats_get_busy, align 1
  %37 = load ptr, ptr %bna, align 8
  %stats_clr_busy = getelementptr inbounds %struct.bna, ptr %37, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %stats_clr_busy to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %stats_clr_busy, align 2
  %ioc = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_disable(ptr noundef %ioc) #6
  br label %sw.epilog

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @bna_ioceth_sm_ioc_disable_wait, ptr %ioceth, align 8
  %ioc40 = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_disable(ptr noundef %ioc40) #6
  br label %sw.epilog

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1561, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %do.body36, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_mbox_intr_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_failed(ptr noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %event, label %do.end50 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 4, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_ioc_disable_wait, ptr %ioceth, align 8
  %ioc = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_disable(ptr noundef %ioc) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 8
  %regs = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body2.if.end_crit_edge, label %do.body4

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body4:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 8
  %bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %7, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %regs8 = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %do.body4, %do.body2.if.end_crit_edge
  %15 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_enable(ptr noundef %18) #6
  %19 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fn_int_mask, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !97
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox_mask_bits, align 4
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error_mask_bits, align 4
  %or = or i32 %30, %28
  %neg26 = xor i32 %or, -1
  %and27 = and i32 %24, %neg26
  %31 = tail call i32 @llvm.bswap.i32(i32 %and27)
  %fn_int_mask30 = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %fn_int_mask30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fn_int_mask30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !100
  %34 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna, align 8
  %fn_int_mask35 = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %fn_int_mask35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fn_int_mask35, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %39 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @bna_ioceth_sm_ioc_ready_wait, ptr %ioceth, align 8
  br label %sw.epilog

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1615, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end50, %if.end, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_ioc_disable_wait(ptr nocapture noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %do.end30 [
    i32 8, label %do.body1
    i32 7, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body1:                                         ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %1 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fn_int_mask, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !97
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox_mask_bits, align 4
  %or = or i32 %10, %6
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error_mask_bits, align 4
  %or7 = or i32 %or, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %fn_int_mask10 = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %fn_int_mask10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn_int_mask10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !100
  %16 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bna, align 8
  %fn_int_mask15 = getelementptr inbounds %struct.bna, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %fn_int_mask15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn_int_mask15, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %21 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %24) #6
  %25 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bna_ioceth_sm_stopped, ptr %ioceth, align 8
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 5
  %26 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop_cbfn.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body1.sw.epilog_crit_edge, label %if.then.i

do.body1.sw.epilog_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %stop_cbarg.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 6
  %28 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stop_cbarg.i, align 4
  %30 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %stop_cbfn.i, align 8
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %27(ptr noundef %29) #6
  br label %sw.epilog

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1586, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end30, %if.then.i, %do.body1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_cb_enet_stopped(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  tail call void %1(ptr noundef %arg, i32 noundef 7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_mbox_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_ioc_ready_wait(ptr noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %event, label %do.end95 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 4, label %do.body45
    i32 5, label %do.body88
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_ioc_disable_wait, ptr %ioceth, align 8
  %ioc = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_disable(ptr noundef %ioc) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 8
  %regs = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body2.if.end_crit_edge, label %do.body4

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body4:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 8
  %bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %7, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %regs8 = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %do.body4, %do.body2.if.end_crit_edge
  %15 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_enable(ptr noundef %18) #6
  %19 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fn_int_mask, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !97
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox_mask_bits, align 4
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error_mask_bits, align 4
  %or = or i32 %30, %28
  %neg26 = xor i32 %or, -1
  %and27 = and i32 %24, %neg26
  %31 = tail call i32 @llvm.bswap.i32(i32 %and27)
  %fn_int_mask30 = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %fn_int_mask30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fn_int_mask30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !100
  %34 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna, align 8
  %fn_int_mask35 = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %fn_int_mask35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fn_int_mask35, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  br label %sw.epilog

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna49 = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %39 = ptrtoint ptr %bna49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna49, align 8
  %fn_int_mask51 = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %fn_int_mask51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fn_int_mask51, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !97
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %bna49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bna49, align 8
  %mbox_mask_bits60 = getelementptr inbounds %struct.bna, ptr %46, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %mbox_mask_bits60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mbox_mask_bits60, align 4
  %or61 = or i32 %48, %44
  %error_mask_bits64 = getelementptr inbounds %struct.bna, ptr %46, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %error_mask_bits64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %error_mask_bits64, align 4
  %or65 = or i32 %or61, %50
  %51 = tail call i32 @llvm.bswap.i32(i32 %or65)
  %fn_int_mask68 = getelementptr inbounds %struct.bna, ptr %46, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %fn_int_mask68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fn_int_mask68, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !100
  %54 = ptrtoint ptr %bna49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bna49, align 8
  %fn_int_mask73 = getelementptr inbounds %struct.bna, ptr %55, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %fn_int_mask73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fn_int_mask73, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %59 = ptrtoint ptr %bna49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bna49, align 8
  %bnad80 = getelementptr inbounds %struct.bna, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %bnad80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bnad80, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %62) #6
  %63 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @bna_ioceth_sm_failed, ptr %ioceth, align 8
  %64 = ptrtoint ptr %bna49 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bna49, align 8
  %bnad.i = getelementptr inbounds %struct.bna, ptr %65, i32 0, i32 19
  %66 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bnad.i, align 4
  tail call void @bnad_cb_ioceth_failed(ptr noundef %67) #6
  br label %sw.epilog

do.body88:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @bna_ioceth_sm_enet_attr_wait, ptr %ioceth, align 8
  %attr_req1.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 4
  %69 = ptrtoint ptr %attr_req1.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 24, ptr %attr_req1.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 22, ptr %msg_id.i.i, align 1
  %msg_token.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %msg_token.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 0, ptr %msg_token.i.i, align 1
  %enet_id.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 4, i32 0, i32 4
  %72 = ptrtoint ptr %enet_id.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %enet_id.i.i, align 1
  %num_entries.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 4, i32 0, i32 3
  %73 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 1, ptr %num_entries.i.i, align 1
  %msgq_cmd.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 3
  %cbfn.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %cbfn.i.i, align 8
  %cbarg.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %cbarg.i.i, align 4
  %msg_size.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %msg_size.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8, ptr %msg_size.i.i, align 8
  %msg_hdr.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 3, i32 4
  %77 = ptrtoint ptr %msg_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %attr_req1.i.i, ptr %msg_hdr.i.i, align 4
  %bna.i.i = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %78 = ptrtoint ptr %bna.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bna.i.i, align 8
  %msgq.i.i = getelementptr inbounds %struct.bna, ptr %79, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i.i, ptr noundef %msgq_cmd.i.i) #6
  br label %sw.epilog

do.end95:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1448, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end95, %do.body88, %do.body45, %if.end, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_enet_attr_wait(ptr nocapture noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %event, label %do.end39 [
    i32 2, label %do.body
    i32 4, label %do.body3
    i32 6, label %do.body32
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_last_resp_wait, ptr %ioceth, align 8
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_int_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !97
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_mask_bits, align 4
  %or = or i32 %11, %7
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error_mask_bits, align 4
  %or10 = or i32 %or, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %fn_int_mask13 = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %fn_int_mask13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fn_int_mask13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !100
  %17 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna, align 8
  %fn_int_mask18 = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %fn_int_mask18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fn_int_mask18, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %22 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %25) #6
  %26 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bna_ioceth_sm_failed, ptr %ioceth, align 8
  %27 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bna, align 8
  %bnad.i = getelementptr inbounds %struct.bna, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bnad.i, align 4
  tail call void @bnad_cb_ioceth_failed(ptr noundef %30) #6
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  %31 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bna_ioceth_sm_ready, ptr %ioceth, align 8
  %bna.i56 = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %32 = ptrtoint ptr %bna.i56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bna.i56, align 8
  %flags.i.i = getelementptr inbounds %struct.bna, ptr %33, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %35, 1
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %and.i.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body32.bna_ioceth_sm_ready_entry.exit_crit_edge, label %if.then.i.i

do.body32.bna_ioceth_sm_ready_entry.exit_crit_edge: ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_ioceth_sm_ready_entry.exit

if.then.i.i:                                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %enet.i = getelementptr inbounds %struct.bna, ptr %33, i32 0, i32 10
  %36 = ptrtoint ptr %enet.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enet.i, align 4
  tail call void %37(ptr noundef %enet.i, i32 noundef 1) #6
  br label %bna_ioceth_sm_ready_entry.exit

bna_ioceth_sm_ready_entry.exit:                   ; preds = %if.then.i.i, %do.body32.bna_ioceth_sm_ready_entry.exit_crit_edge
  %38 = ptrtoint ptr %bna.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bna.i56, align 8
  %stats_mod.i = getelementptr inbounds %struct.bna, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %stats_mod.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %stats_mod.i, align 4
  %41 = load ptr, ptr %bna.i56, align 8
  %bnad.i57 = getelementptr inbounds %struct.bna, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %bnad.i57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bnad.i57, align 4
  tail call void @bnad_cb_ioceth_ready(ptr noundef %43) #6
  br label %sw.epilog

do.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1477, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end39, %bna_ioceth_sm_ready_entry.exit, %do.body3, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ioceth_sm_last_resp_wait(ptr noundef %ioceth, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %event, label %do.end35 [
    i32 4, label %do.body
    i32 6, label %do.body27
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ioceth_sm_ioc_disable_wait, ptr %ioceth, align 8
  %bna = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 7
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 8
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_int_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !97
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 8
  %mbox_mask_bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %mbox_mask_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_mask_bits, align 4
  %or = or i32 %11, %7
  %error_mask_bits = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %error_mask_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error_mask_bits, align 4
  %or9 = or i32 %or, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %fn_int_mask12 = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %fn_int_mask12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fn_int_mask12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !100
  %17 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna, align 8
  %fn_int_mask17 = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %fn_int_mask17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fn_int_mask17, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %22 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bna, align 8
  %bnad = getelementptr inbounds %struct.bna, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bnad, align 4
  tail call void @bnad_cb_mbox_intr_disable(ptr noundef %25) #6
  %ioc = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_disable(ptr noundef %ioc) #6
  br label %sw.epilog

do.body27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %ioceth to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bna_ioceth_sm_ioc_disable_wait, ptr %ioceth, align 8
  %ioc31 = getelementptr inbounds %struct.bna_ioceth, ptr %ioceth, i32 0, i32 1
  tail call void @bfa_nw_ioc_disable(ptr noundef %ioc31) #6
  br label %sw.epilog

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1531, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end35, %do.body27, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_ioceth_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_pci_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_mem_claim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_debug_memclaim(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_cee_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_cee_mem_claim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_flash_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_flash_memclaim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msgq_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msgq_memclaim(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msgq_regisr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_msgq_rsp_handler(ptr noundef %arg, ptr noundef %msghdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_id = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 1
  %0 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_id, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 -127, label %do.body
    i8 -126, label %do.body14
    i8 -125, label %entry.do.body50_crit_edge
    i8 -124, label %entry.do.body50_crit_edge436
    i8 -123, label %entry.do.body50_crit_edge437
    i8 -122, label %entry.do.body50_crit_edge438
    i8 -121, label %entry.do.body50_crit_edge439
    i8 -119, label %entry.do.body50_crit_edge440
    i8 -118, label %entry.do.body50_crit_edge441
    i8 -117, label %entry.do.body50_crit_edge442
    i8 -115, label %entry.do.body50_crit_edge443
    i8 -114, label %entry.do.body50_crit_edge444
    i8 -113, label %entry.do.body50_crit_edge445
    i8 -112, label %entry.do.body50_crit_edge446
    i8 -120, label %do.body86
    i8 -116, label %do.body123
    i8 -111, label %do.body160
    i8 -110, label %do.body192
    i8 -109, label %sw.bb227
    i8 -107, label %sw.bb228
    i8 -108, label %sw.bb230
    i8 -106, label %sw.bb231
    i8 -105, label %sw.bb232
    i8 -97, label %sw.bb241
    i8 -100, label %sw.bb233
    i8 -101, label %sw.bb235
    i8 -99, label %sw.bb237
    i8 -98, label %sw.bb239
  ]

entry.do.body50_crit_edge446:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge445:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge444:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge443:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge442:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge441:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge440:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge439:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge438:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge437:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge436:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.do.body50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %rx_active_q = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 13, i32 5
  %enet_id = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body
  %__rx.0.in = phi ptr [ %rx_active_q, %do.body ], [ %__rx.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %__rx.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %__rx.0 = load ptr, ptr %__rx.0.in, align 4
  %cmp.not = icmp eq ptr %__rx.0, %rx_active_q
  br i1 %cmp.not, label %for.cond.sw.epilog_crit_edge, label %for.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body:                                         ; preds = %for.cond
  %rid = getelementptr inbounds %struct.bna_rx, ptr %__rx.0, i32 0, i32 1
  %4 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rid, align 4
  %6 = ptrtoint ptr %enet_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enet_id, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %5, %conv3
  br i1 %cmp4, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %__rx.0, null
  br i1 %tobool.not, label %for.end.sw.epilog_crit_edge, label %if.then11

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bna_bfi_rx_enet_start_rsp(ptr noundef nonnull %__rx.0, ptr noundef %msghdr) #6
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  %rx_active_q19 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 13, i32 5
  %enet_id31 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.body29.for.cond23_crit_edge, %do.body14
  %__rx17.0.in = phi ptr [ %rx_active_q19, %do.body14 ], [ %__rx17.0, %for.body29.for.cond23_crit_edge ]
  %8 = ptrtoint ptr %__rx17.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %__rx17.0 = load ptr, ptr %__rx17.0.in, align 4
  %cmp26.not = icmp eq ptr %__rx17.0, %rx_active_q19
  br i1 %cmp26.not, label %for.cond23.sw.epilog_crit_edge, label %for.body29

for.cond23.sw.epilog_crit_edge:                   ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body29:                                       ; preds = %for.cond23
  %rid30 = getelementptr inbounds %struct.bna_rx, ptr %__rx17.0, i32 0, i32 1
  %9 = ptrtoint ptr %rid30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rid30, align 4
  %11 = ptrtoint ptr %enet_id31 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enet_id31, align 1
  %conv32 = zext i8 %12 to i32
  %cmp33 = icmp eq i32 %10, %conv32
  br i1 %cmp33, label %for.end43, label %for.body29.for.cond23_crit_edge

for.body29.for.cond23_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond23

for.end43:                                        ; preds = %for.body29
  %tobool46.not = icmp eq ptr %__rx17.0, null
  br i1 %tobool46.not, label %for.end43.sw.epilog_crit_edge, label %if.then47

for.end43.sw.epilog_crit_edge:                    ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then47:                                        ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bna_bfi_rx_enet_stop_rsp(ptr noundef nonnull %__rx17.0, ptr noundef %msghdr) #6
  br label %sw.epilog

do.body50:                                        ; preds = %entry.do.body50_crit_edge, %entry.do.body50_crit_edge436, %entry.do.body50_crit_edge437, %entry.do.body50_crit_edge438, %entry.do.body50_crit_edge439, %entry.do.body50_crit_edge440, %entry.do.body50_crit_edge441, %entry.do.body50_crit_edge442, %entry.do.body50_crit_edge443, %entry.do.body50_crit_edge444, %entry.do.body50_crit_edge445, %entry.do.body50_crit_edge446
  %rx_active_q55 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 13, i32 5
  %enet_id67 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.body65.for.cond59_crit_edge, %do.body50
  %__rx53.0.in = phi ptr [ %rx_active_q55, %do.body50 ], [ %__rx53.0, %for.body65.for.cond59_crit_edge ]
  %13 = ptrtoint ptr %__rx53.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %__rx53.0 = load ptr, ptr %__rx53.0.in, align 4
  %cmp62.not = icmp eq ptr %__rx53.0, %rx_active_q55
  br i1 %cmp62.not, label %for.cond59.sw.epilog_crit_edge, label %for.body65

for.cond59.sw.epilog_crit_edge:                   ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body65:                                       ; preds = %for.cond59
  %rid66 = getelementptr inbounds %struct.bna_rx, ptr %__rx53.0, i32 0, i32 1
  %14 = ptrtoint ptr %rid66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rid66, align 4
  %16 = ptrtoint ptr %enet_id67 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enet_id67, align 1
  %conv68 = zext i8 %17 to i32
  %cmp69 = icmp eq i32 %15, %conv68
  br i1 %cmp69, label %for.end79, label %for.body65.for.cond59_crit_edge

for.body65.for.cond59_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond59

for.end79:                                        ; preds = %for.body65
  %tobool82.not = icmp eq ptr %__rx53.0, null
  br i1 %tobool82.not, label %for.end79.sw.epilog_crit_edge, label %if.then83

for.end79.sw.epilog_crit_edge:                    ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then83:                                        ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #8
  %rxf = getelementptr inbounds %struct.bna_rx, ptr %__rx53.0, i32 0, i32 8
  tail call void @bna_bfi_rxf_cfg_rsp(ptr noundef %rxf, ptr noundef %msghdr) #6
  br label %sw.epilog

do.body86:                                        ; preds = %entry
  %rx_active_q91 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 13, i32 5
  %enet_id103 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.body101.for.cond95_crit_edge, %do.body86
  %__rx89.0.in = phi ptr [ %rx_active_q91, %do.body86 ], [ %__rx89.0, %for.body101.for.cond95_crit_edge ]
  %18 = ptrtoint ptr %__rx89.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %__rx89.0 = load ptr, ptr %__rx89.0.in, align 4
  %cmp98.not = icmp eq ptr %__rx89.0, %rx_active_q91
  br i1 %cmp98.not, label %for.cond95.sw.epilog_crit_edge, label %for.body101

for.cond95.sw.epilog_crit_edge:                   ; preds = %for.cond95
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body101:                                      ; preds = %for.cond95
  %rid102 = getelementptr inbounds %struct.bna_rx, ptr %__rx89.0, i32 0, i32 1
  %19 = ptrtoint ptr %rid102 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rid102, align 4
  %21 = ptrtoint ptr %enet_id103 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enet_id103, align 1
  %conv104 = zext i8 %22 to i32
  %cmp105 = icmp eq i32 %20, %conv104
  br i1 %cmp105, label %for.end115, label %for.body101.for.cond95_crit_edge

for.body101.for.cond95_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond95

for.end115:                                       ; preds = %for.body101
  %tobool118.not = icmp eq ptr %__rx89.0, null
  br i1 %tobool118.not, label %for.end115.sw.epilog_crit_edge, label %if.then119

for.end115.sw.epilog_crit_edge:                   ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then119:                                       ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #8
  %rxf120 = getelementptr inbounds %struct.bna_rx, ptr %__rx89.0, i32 0, i32 8
  tail call void @bna_bfi_rxf_ucast_set_rsp(ptr noundef %rxf120, ptr noundef %msghdr) #6
  br label %sw.epilog

do.body123:                                       ; preds = %entry
  %rx_active_q128 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 13, i32 5
  %enet_id140 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond132

for.cond132:                                      ; preds = %for.body138.for.cond132_crit_edge, %do.body123
  %__rx126.0.in = phi ptr [ %rx_active_q128, %do.body123 ], [ %__rx126.0, %for.body138.for.cond132_crit_edge ]
  %23 = ptrtoint ptr %__rx126.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %__rx126.0 = load ptr, ptr %__rx126.0.in, align 4
  %cmp135.not = icmp eq ptr %__rx126.0, %rx_active_q128
  br i1 %cmp135.not, label %for.cond132.sw.epilog_crit_edge, label %for.body138

for.cond132.sw.epilog_crit_edge:                  ; preds = %for.cond132
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body138:                                      ; preds = %for.cond132
  %rid139 = getelementptr inbounds %struct.bna_rx, ptr %__rx126.0, i32 0, i32 1
  %24 = ptrtoint ptr %rid139 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rid139, align 4
  %26 = ptrtoint ptr %enet_id140 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enet_id140, align 1
  %conv141 = zext i8 %27 to i32
  %cmp142 = icmp eq i32 %25, %conv141
  br i1 %cmp142, label %for.end152, label %for.body138.for.cond132_crit_edge

for.body138.for.cond132_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond132

for.end152:                                       ; preds = %for.body138
  %tobool155.not = icmp eq ptr %__rx126.0, null
  br i1 %tobool155.not, label %for.end152.sw.epilog_crit_edge, label %if.then156

for.end152.sw.epilog_crit_edge:                   ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then156:                                       ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #8
  %rxf157 = getelementptr inbounds %struct.bna_rx, ptr %__rx126.0, i32 0, i32 8
  tail call void @bna_bfi_rxf_mcast_add_rsp(ptr noundef %rxf157, ptr noundef %msghdr) #6
  br label %sw.epilog

do.body160:                                       ; preds = %entry
  %tx_active_q = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 12, i32 3
  %enet_id173 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond165

for.cond165:                                      ; preds = %for.body171.for.cond165_crit_edge, %do.body160
  %__tx.0.in = phi ptr [ %tx_active_q, %do.body160 ], [ %__tx.0, %for.body171.for.cond165_crit_edge ]
  %28 = ptrtoint ptr %__tx.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %__tx.0 = load ptr, ptr %__tx.0.in, align 4
  %cmp168.not = icmp eq ptr %__tx.0, %tx_active_q
  br i1 %cmp168.not, label %for.cond165.sw.epilog_crit_edge, label %for.body171

for.cond165.sw.epilog_crit_edge:                  ; preds = %for.cond165
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body171:                                      ; preds = %for.cond165
  %rid172 = getelementptr inbounds %struct.bna_tx, ptr %__tx.0, i32 0, i32 1
  %29 = ptrtoint ptr %rid172 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rid172, align 4
  %31 = ptrtoint ptr %enet_id173 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enet_id173, align 1
  %conv174 = zext i8 %32 to i32
  %cmp175 = icmp eq i32 %30, %conv174
  br i1 %cmp175, label %for.end185, label %for.body171.for.cond165_crit_edge

for.body171.for.cond165_crit_edge:                ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond165

for.end185:                                       ; preds = %for.body171
  %tobool188.not = icmp eq ptr %__tx.0, null
  br i1 %tobool188.not, label %for.end185.sw.epilog_crit_edge, label %if.then189

for.end185.sw.epilog_crit_edge:                   ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then189:                                       ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bna_bfi_tx_enet_start_rsp(ptr noundef nonnull %__tx.0, ptr noundef %msghdr) #6
  br label %sw.epilog

do.body192:                                       ; preds = %entry
  %tx_active_q197 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 12, i32 3
  %enet_id209 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %msghdr, i32 0, i32 4
  br label %for.cond201

for.cond201:                                      ; preds = %for.body207.for.cond201_crit_edge, %do.body192
  %__tx195.0.in = phi ptr [ %tx_active_q197, %do.body192 ], [ %__tx195.0, %for.body207.for.cond201_crit_edge ]
  %33 = ptrtoint ptr %__tx195.0.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %__tx195.0 = load ptr, ptr %__tx195.0.in, align 4
  %cmp204.not = icmp eq ptr %__tx195.0, %tx_active_q197
  br i1 %cmp204.not, label %for.cond201.sw.epilog_crit_edge, label %for.body207

for.cond201.sw.epilog_crit_edge:                  ; preds = %for.cond201
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body207:                                      ; preds = %for.cond201
  %rid208 = getelementptr inbounds %struct.bna_tx, ptr %__tx195.0, i32 0, i32 1
  %34 = ptrtoint ptr %rid208 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rid208, align 4
  %36 = ptrtoint ptr %enet_id209 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enet_id209, align 1
  %conv210 = zext i8 %37 to i32
  %cmp211 = icmp eq i32 %35, %conv210
  br i1 %cmp211, label %for.end221, label %for.body207.for.cond201_crit_edge

for.body207.for.cond201_crit_edge:                ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond201

for.end221:                                       ; preds = %for.body207
  %tobool224.not = icmp eq ptr %__tx195.0, null
  br i1 %tobool224.not, label %for.end221.sw.epilog_crit_edge, label %if.then225

for.end221.sw.epilog_crit_edge:                   ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then225:                                       ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bna_bfi_tx_enet_stop_rsp(ptr noundef nonnull %__tx195.0, ptr noundef %msghdr) #6
  br label %sw.epilog

sw.bb227:                                         ; preds = %entry
  %ethport = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9
  %enable.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 8, i32 0, i32 1
  %38 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %39, label %sw.bb227.sw.epilog_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb4.i
  ]

sw.bb227.sw.epilog_crit_edge:                     ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb227
  %error.i = getelementptr inbounds %struct.bfi_enet_rsp, ptr %msghdr, i32 0, i32 1
  %41 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %error.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.i = icmp eq i8 %42, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ethport, align 4
  tail call void %44(ptr noundef %ethport, i32 noundef 6) #6
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %46, -3
  store i32 %and.i, ptr %flags.i, align 4
  %47 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ethport, align 4
  tail call void %48(ptr noundef %ethport, i32 noundef 8) #6
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %ethport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ethport, align 4
  tail call void %50(ptr noundef %ethport, i32 noundef 7) #6
  %link_status.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 2
  %51 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %link_status.i, align 4
  %link_cbfn.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 6
  %52 = ptrtoint ptr %link_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %link_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 9
  %54 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bnad.i, align 4
  tail call void %53(ptr noundef %57, i32 noundef 0) #6
  br label %sw.epilog

sw.bb228:                                         ; preds = %entry
  %ethport229 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9
  %enable.i322 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 8, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %enable.i322 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %enable.i322, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %59, label %sw.bb228.sw.epilog_crit_edge [
    i8 1, label %sw.bb.i325
    i8 0, label %sw.bb228.sw.epilog.sink.split.i_crit_edge
  ]

sw.bb228.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb228.sw.epilog_crit_edge:                     ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i325:                                       ; preds = %sw.bb228
  %error.i323 = getelementptr inbounds %struct.bfi_enet_rsp, ptr %msghdr, i32 0, i32 1
  %61 = ptrtoint ptr %error.i323 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %error.i323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i324 = icmp eq i8 %62, 0
  br i1 %cmp.i324, label %sw.bb.i325.sw.epilog.sink.split.i_crit_edge, label %if.else.i328

sw.bb.i325.sw.epilog.sink.split.i_crit_edge:      ; preds = %sw.bb.i325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.else.i328:                                     ; preds = %sw.bb.i325
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i326 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %flags.i326 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i326, align 4
  %and.i327 = and i32 %64, -2
  store i32 %and.i327, ptr %flags.i326, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else.i328, %sw.bb.i325.sw.epilog.sink.split.i_crit_edge, %sw.bb228.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 8, %if.else.i328 ], [ 6, %sw.bb.i325.sw.epilog.sink.split.i_crit_edge ], [ 7, %sw.bb228.sw.epilog.sink.split.i_crit_edge ]
  %65 = ptrtoint ptr %ethport229 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ethport229, align 4
  tail call void %66(ptr noundef %ethport229, i32 noundef %.sink.i) #6
  br label %sw.epilog

sw.bb230:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enet = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 10
  %67 = ptrtoint ptr %enet to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %enet, align 4
  tail call void %68(ptr noundef %enet, i32 noundef 6) #6
  br label %sw.epilog

sw.bb231:                                         ; preds = %entry
  %ioceth = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5
  %attr.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5, i32 2
  %69 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %attr.i, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i, label %if.then.i329, label %sw.bb231.bna_bfi_attr_get_rsp.exit_crit_edge

sw.bb231.bna_bfi_attr_get_rsp.exit_crit_edge:     ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #8
  br label %bna_bfi_attr_get_rsp.exit

if.then.i329:                                     ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #8
  %max_cfg.i = getelementptr inbounds %struct.bfi_enet_attr_rsp, ptr %msghdr, i32 0, i32 4
  %71 = ptrtoint ptr %max_cfg.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %max_cfg.i, align 1
  %num_txq.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5, i32 2, i32 1
  %73 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_txq.i, align 4
  %74 = load i32, ptr %max_cfg.i, align 1
  %num_rxp.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5, i32 2, i32 2
  %75 = ptrtoint ptr %num_rxp.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %num_rxp.i, align 8
  %max_ucmac.i = getelementptr inbounds %struct.bfi_enet_attr_rsp, ptr %msghdr, i32 0, i32 5
  %76 = ptrtoint ptr %max_ucmac.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %max_ucmac.i, align 1
  %num_ucmac.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5, i32 2, i32 3
  %78 = ptrtoint ptr %num_ucmac.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %num_ucmac.i, align 4
  %num_mcmac.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5, i32 2, i32 4
  %79 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 256, ptr %num_mcmac.i, align 8
  %rit_size.i = getelementptr inbounds %struct.bfi_enet_attr_rsp, ptr %msghdr, i32 0, i32 6
  %80 = ptrtoint ptr %rit_size.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %rit_size.i, align 1
  %max_rit_size.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 5, i32 2, i32 5
  %82 = ptrtoint ptr %max_rit_size.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %max_rit_size.i, align 4
  %83 = ptrtoint ptr %attr.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %attr.i, align 8
  br label %bna_bfi_attr_get_rsp.exit

bna_bfi_attr_get_rsp.exit:                        ; preds = %if.then.i329, %sw.bb231.bna_bfi_attr_get_rsp.exit_crit_edge
  %84 = ptrtoint ptr %ioceth to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioceth, align 8
  tail call void %85(ptr noundef %ioceth, i32 noundef 6) #6
  br label %sw.epilog

sw.bb232:                                         ; preds = %entry
  %tx_enet_mask1.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 11, i32 5, i32 4
  %86 = ptrtoint ptr %tx_enet_mask1.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %tx_enet_mask1.i, align 1
  %rx_enet_mask2.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 11, i32 5, i32 3
  %88 = ptrtoint ptr %rx_enet_mask2.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %rx_enet_mask2.i, align 1
  %hw_stats_kva.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %hw_stats_kva.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_stats_kva.i, align 4
  %hw_stats.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb232
  %i.01.i = phi i32 [ 0, %sw.bb232 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %91, i32 %i.01.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx.i, align 8
  %arrayidx5.i = getelementptr i64, ptr %hw_stats.i, i32 %i.01.i
  %94 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %arrayidx5.i, align 8
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 45
  br i1 %exitcond.not.i, label %do.body6.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body6.i:                                       ; preds = %for.body.i
  %95 = ptrtoint ptr %hw_stats_kva.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_stats_kva.i, align 4
  %bpc_stats.i = getelementptr inbounds %struct.bfi_enet_stats, ptr %96, i32 0, i32 1
  %bpc_stats11.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 1
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %do.body6.i
  %i.12.i = phi i32 [ 0, %do.body6.i ], [ %inc18.i, %for.body14.i.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr i64, ptr %bpc_stats.i, i32 %i.12.i
  %97 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx15.i, align 8
  %arrayidx16.i = getelementptr i64, ptr %bpc_stats11.i, i32 %i.12.i
  %99 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %arrayidx16.i, align 8
  %inc18.i = add nuw nsw i32 %i.12.i, 1
  %exitcond15.not.i = icmp eq i32 %inc18.i, 48
  br i1 %exitcond15.not.i, label %do.body22.i, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14.i

do.body22.i:                                      ; preds = %for.body14.i
  %100 = ptrtoint ptr %hw_stats_kva.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw_stats_kva.i, align 4
  %rad_stats.i = getelementptr inbounds %struct.bfi_enet_stats, ptr %101, i32 0, i32 2
  %rad_stats27.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2
  %102 = ptrtoint ptr %rad_stats.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %rad_stats.i, align 8
  %104 = ptrtoint ptr %rad_stats27.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %rad_stats27.i, align 8
  %arrayidx31.1.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx31.1.i, align 8
  %arrayidx32.1.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 1
  %107 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %arrayidx32.1.i, align 8
  %arrayidx31.2.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 2
  %108 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx31.2.i, align 8
  %arrayidx32.2.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 2
  %110 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %arrayidx32.2.i, align 8
  %arrayidx31.3.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 3
  %111 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx31.3.i, align 8
  %arrayidx32.3.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 3
  %113 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %arrayidx32.3.i, align 8
  %arrayidx31.4.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 4
  %114 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx31.4.i, align 8
  %arrayidx32.4.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 4
  %116 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %arrayidx32.4.i, align 8
  %arrayidx31.5.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 5
  %117 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx31.5.i, align 8
  %arrayidx32.5.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 5
  %119 = ptrtoint ptr %arrayidx32.5.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %arrayidx32.5.i, align 8
  %arrayidx31.6.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 6
  %120 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx31.6.i, align 8
  %arrayidx32.6.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 6
  %122 = ptrtoint ptr %arrayidx32.6.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %arrayidx32.6.i, align 8
  %arrayidx31.7.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 7
  %123 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx31.7.i, align 8
  %arrayidx32.7.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 7
  %125 = ptrtoint ptr %arrayidx32.7.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %arrayidx32.7.i, align 8
  %arrayidx31.8.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 8
  %126 = ptrtoint ptr %arrayidx31.8.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx31.8.i, align 8
  %arrayidx32.8.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 8
  %128 = ptrtoint ptr %arrayidx32.8.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %arrayidx32.8.i, align 8
  %arrayidx31.9.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 9
  %129 = ptrtoint ptr %arrayidx31.9.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx31.9.i, align 8
  %arrayidx32.9.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 9
  %131 = ptrtoint ptr %arrayidx32.9.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %arrayidx32.9.i, align 8
  %arrayidx31.10.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 10
  %132 = ptrtoint ptr %arrayidx31.10.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx31.10.i, align 8
  %arrayidx32.10.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 10
  %134 = ptrtoint ptr %arrayidx32.10.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %arrayidx32.10.i, align 8
  %arrayidx31.11.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 11
  %135 = ptrtoint ptr %arrayidx31.11.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx31.11.i, align 8
  %arrayidx32.11.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 11
  %137 = ptrtoint ptr %arrayidx32.11.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %arrayidx32.11.i, align 8
  %arrayidx31.12.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 2, i32 12
  %138 = ptrtoint ptr %arrayidx31.12.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx31.12.i, align 8
  %arrayidx32.12.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 2, i32 12
  %140 = ptrtoint ptr %arrayidx32.12.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %arrayidx32.12.i, align 8
  %rlb_stats.i = getelementptr inbounds %struct.bfi_enet_stats, ptr %101, i32 0, i32 3
  %rlb_stats43.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3
  %141 = ptrtoint ptr %rlb_stats.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %rlb_stats.i, align 8
  %143 = ptrtoint ptr %rlb_stats43.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %142, ptr %rlb_stats43.i, align 8
  %arrayidx47.1.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 1
  %144 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx47.1.i, align 8
  %arrayidx48.1.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 1
  %146 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %145, ptr %arrayidx48.1.i, align 8
  %arrayidx47.2.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 2
  %147 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx47.2.i, align 8
  %arrayidx48.2.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 2
  %149 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %arrayidx48.2.i, align 8
  %arrayidx47.3.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 3
  %150 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx47.3.i, align 8
  %arrayidx48.3.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 3
  %152 = ptrtoint ptr %arrayidx48.3.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %arrayidx48.3.i, align 8
  %arrayidx47.4.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 4
  %153 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx47.4.i, align 8
  %arrayidx48.4.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 4
  %155 = ptrtoint ptr %arrayidx48.4.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %154, ptr %arrayidx48.4.i, align 8
  %arrayidx47.5.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 5
  %156 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx47.5.i, align 8
  %arrayidx48.5.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 5
  %158 = ptrtoint ptr %arrayidx48.5.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %arrayidx48.5.i, align 8
  %arrayidx47.6.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 6
  %159 = ptrtoint ptr %arrayidx47.6.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx47.6.i, align 8
  %arrayidx48.6.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 6
  %161 = ptrtoint ptr %arrayidx48.6.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %arrayidx48.6.i, align 8
  %arrayidx47.7.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 7
  %162 = ptrtoint ptr %arrayidx47.7.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx47.7.i, align 8
  %arrayidx48.7.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 7
  %164 = ptrtoint ptr %arrayidx48.7.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %163, ptr %arrayidx48.7.i, align 8
  %arrayidx47.8.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 8
  %165 = ptrtoint ptr %arrayidx47.8.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %arrayidx47.8.i, align 8
  %arrayidx48.8.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 8
  %167 = ptrtoint ptr %arrayidx48.8.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %arrayidx48.8.i, align 8
  %arrayidx47.9.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 9
  %168 = ptrtoint ptr %arrayidx47.9.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx47.9.i, align 8
  %arrayidx48.9.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 9
  %170 = ptrtoint ptr %arrayidx48.9.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %arrayidx48.9.i, align 8
  %arrayidx47.10.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 10
  %171 = ptrtoint ptr %arrayidx47.10.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %arrayidx47.10.i, align 8
  %arrayidx48.10.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 10
  %173 = ptrtoint ptr %arrayidx48.10.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %arrayidx48.10.i, align 8
  %arrayidx47.11.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 11
  %174 = ptrtoint ptr %arrayidx47.11.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %arrayidx47.11.i, align 8
  %arrayidx48.11.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 11
  %176 = ptrtoint ptr %arrayidx48.11.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %arrayidx48.11.i, align 8
  %arrayidx47.12.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 3, i32 12
  %177 = ptrtoint ptr %arrayidx47.12.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx47.12.i, align 8
  %arrayidx48.12.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 3, i32 12
  %179 = ptrtoint ptr %arrayidx48.12.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %178, ptr %arrayidx48.12.i, align 8
  %fc_rx_stats.i = getelementptr inbounds %struct.bfi_enet_stats, ptr %101, i32 0, i32 4
  %fc_rx_stats59.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4
  %180 = ptrtoint ptr %fc_rx_stats.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %fc_rx_stats.i, align 8
  %182 = ptrtoint ptr %fc_rx_stats59.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %181, ptr %fc_rx_stats59.i, align 8
  %arrayidx63.1.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 1
  %183 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %arrayidx63.1.i, align 8
  %arrayidx64.1.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 1
  %185 = ptrtoint ptr %arrayidx64.1.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %184, ptr %arrayidx64.1.i, align 8
  %arrayidx63.2.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 2
  %186 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %arrayidx63.2.i, align 8
  %arrayidx64.2.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 2
  %188 = ptrtoint ptr %arrayidx64.2.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %arrayidx64.2.i, align 8
  %arrayidx63.3.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 3
  %189 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %arrayidx63.3.i, align 8
  %arrayidx64.3.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 3
  %191 = ptrtoint ptr %arrayidx64.3.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %arrayidx64.3.i, align 8
  %arrayidx63.4.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 4
  %192 = ptrtoint ptr %arrayidx63.4.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %arrayidx63.4.i, align 8
  %arrayidx64.4.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 4
  %194 = ptrtoint ptr %arrayidx64.4.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %arrayidx64.4.i, align 8
  %arrayidx63.5.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 5
  %195 = ptrtoint ptr %arrayidx63.5.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %arrayidx63.5.i, align 8
  %arrayidx64.5.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 5
  %197 = ptrtoint ptr %arrayidx64.5.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %arrayidx64.5.i, align 8
  %arrayidx63.6.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 6
  %198 = ptrtoint ptr %arrayidx63.6.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx63.6.i, align 8
  %arrayidx64.6.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 6
  %200 = ptrtoint ptr %arrayidx64.6.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %arrayidx64.6.i, align 8
  %arrayidx63.7.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 7
  %201 = ptrtoint ptr %arrayidx63.7.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %arrayidx63.7.i, align 8
  %arrayidx64.7.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 7
  %203 = ptrtoint ptr %arrayidx64.7.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %arrayidx64.7.i, align 8
  %arrayidx63.8.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 4, i32 8
  %204 = ptrtoint ptr %arrayidx63.8.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %arrayidx63.8.i, align 8
  %arrayidx64.8.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 4, i32 8
  %206 = ptrtoint ptr %arrayidx64.8.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %205, ptr %arrayidx64.8.i, align 8
  %fc_tx_stats.i = getelementptr inbounds %struct.bfi_enet_stats, ptr %101, i32 0, i32 5
  %fc_tx_stats75.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5
  %207 = ptrtoint ptr %fc_tx_stats.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %fc_tx_stats.i, align 8
  %209 = ptrtoint ptr %fc_tx_stats75.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %fc_tx_stats75.i, align 8
  %arrayidx79.1.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 1
  %210 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %arrayidx79.1.i, align 8
  %arrayidx80.1.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 1
  %212 = ptrtoint ptr %arrayidx80.1.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %arrayidx80.1.i, align 8
  %arrayidx79.2.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 2
  %213 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %arrayidx79.2.i, align 8
  %arrayidx80.2.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 2
  %215 = ptrtoint ptr %arrayidx80.2.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %214, ptr %arrayidx80.2.i, align 8
  %arrayidx79.3.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 3
  %216 = ptrtoint ptr %arrayidx79.3.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %arrayidx79.3.i, align 8
  %arrayidx80.3.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 3
  %218 = ptrtoint ptr %arrayidx80.3.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %217, ptr %arrayidx80.3.i, align 8
  %arrayidx79.4.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 4
  %219 = ptrtoint ptr %arrayidx79.4.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx79.4.i, align 8
  %arrayidx80.4.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 4
  %221 = ptrtoint ptr %arrayidx80.4.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %arrayidx80.4.i, align 8
  %arrayidx79.5.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 5
  %222 = ptrtoint ptr %arrayidx79.5.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %arrayidx79.5.i, align 8
  %arrayidx80.5.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 5
  %224 = ptrtoint ptr %arrayidx80.5.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %223, ptr %arrayidx80.5.i, align 8
  %arrayidx79.6.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 6
  %225 = ptrtoint ptr %arrayidx79.6.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %arrayidx79.6.i, align 8
  %arrayidx80.6.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 6
  %227 = ptrtoint ptr %arrayidx80.6.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %226, ptr %arrayidx80.6.i, align 8
  %arrayidx79.7.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 7
  %228 = ptrtoint ptr %arrayidx79.7.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %arrayidx79.7.i, align 8
  %arrayidx80.7.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 7
  %230 = ptrtoint ptr %arrayidx80.7.i to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %arrayidx80.7.i, align 8
  %arrayidx79.8.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 8
  %231 = ptrtoint ptr %arrayidx79.8.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %arrayidx79.8.i, align 8
  %arrayidx80.8.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 8
  %233 = ptrtoint ptr %arrayidx80.8.i to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %232, ptr %arrayidx80.8.i, align 8
  %arrayidx79.9.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 9
  %234 = ptrtoint ptr %arrayidx79.9.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %arrayidx79.9.i, align 8
  %arrayidx80.9.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 9
  %236 = ptrtoint ptr %arrayidx80.9.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 %235, ptr %arrayidx80.9.i, align 8
  %arrayidx79.10.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 10
  %237 = ptrtoint ptr %arrayidx79.10.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %arrayidx79.10.i, align 8
  %arrayidx80.10.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 10
  %239 = ptrtoint ptr %arrayidx80.10.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %238, ptr %arrayidx80.10.i, align 8
  %arrayidx79.11.i = getelementptr %struct.bfi_enet_stats, ptr %101, i32 0, i32 5, i32 11
  %240 = ptrtoint ptr %arrayidx79.11.i to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %arrayidx79.11.i, align 8
  %arrayidx80.11.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 5, i32 11
  %242 = ptrtoint ptr %arrayidx80.11.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %arrayidx80.11.i, align 8
  %rxf_stats.i = getelementptr inbounds %struct.bfi_enet_stats, ptr %101, i32 0, i32 6
  br label %for.body91.i

for.body91.i:                                     ; preds = %for.inc103.i.for.body91.i_crit_edge, %do.body22.i
  %i.610.i = phi i32 [ 0, %do.body22.i ], [ %inc104.i, %for.inc103.i.for.body91.i_crit_edge ]
  %stats_src.09.i = phi ptr [ %rxf_stats.i, %do.body22.i ], [ %stats_src.2.i, %for.inc103.i.for.body91.i_crit_edge ]
  %arrayidx95.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 6, i32 %i.610.i
  %243 = call ptr @memset(ptr %arrayidx95.i, i32 0, i32 80)
  %shl.i = shl nuw i32 1, %i.610.i
  %and.i330 = and i32 %shl.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i330)
  %tobool.not.i331 = icmp eq i32 %and.i330, 0
  br i1 %tobool.not.i331, label %for.body91.i.for.inc103.i_crit_edge, label %for.body98.preheader.i

for.body91.i.for.inc103.i_crit_edge:              ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.i

for.body98.preheader.i:                           ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %stats_src.09.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %stats_src.09.i, align 8
  %246 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %arrayidx95.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %stats_src.09.i, i32 1
  %247 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %incdec.ptr.i, align 8
  %arrayidx99.1.i = getelementptr i64, ptr %arrayidx95.i, i32 1
  %249 = ptrtoint ptr %arrayidx99.1.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %248, ptr %arrayidx99.1.i, align 8
  %incdec.ptr.1.i = getelementptr i64, ptr %stats_src.09.i, i32 2
  %250 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %incdec.ptr.1.i, align 8
  %arrayidx99.2.i = getelementptr i64, ptr %arrayidx95.i, i32 2
  %252 = ptrtoint ptr %arrayidx99.2.i to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %arrayidx99.2.i, align 8
  %incdec.ptr.2.i = getelementptr i64, ptr %stats_src.09.i, i32 3
  %253 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %incdec.ptr.2.i, align 8
  %arrayidx99.3.i = getelementptr i64, ptr %arrayidx95.i, i32 3
  %255 = ptrtoint ptr %arrayidx99.3.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %254, ptr %arrayidx99.3.i, align 8
  %incdec.ptr.3.i = getelementptr i64, ptr %stats_src.09.i, i32 4
  %256 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %incdec.ptr.3.i, align 8
  %arrayidx99.4.i = getelementptr i64, ptr %arrayidx95.i, i32 4
  %258 = ptrtoint ptr %arrayidx99.4.i to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %arrayidx99.4.i, align 8
  %incdec.ptr.4.i = getelementptr i64, ptr %stats_src.09.i, i32 5
  %259 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %incdec.ptr.4.i, align 8
  %arrayidx99.5.i = getelementptr i64, ptr %arrayidx95.i, i32 5
  %261 = ptrtoint ptr %arrayidx99.5.i to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %260, ptr %arrayidx99.5.i, align 8
  %incdec.ptr.5.i = getelementptr i64, ptr %stats_src.09.i, i32 6
  %262 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %incdec.ptr.5.i, align 8
  %arrayidx99.6.i = getelementptr i64, ptr %arrayidx95.i, i32 6
  %264 = ptrtoint ptr %arrayidx99.6.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %arrayidx99.6.i, align 8
  %incdec.ptr.6.i = getelementptr i64, ptr %stats_src.09.i, i32 7
  %265 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %incdec.ptr.6.i, align 8
  %arrayidx99.7.i = getelementptr i64, ptr %arrayidx95.i, i32 7
  %267 = ptrtoint ptr %arrayidx99.7.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %266, ptr %arrayidx99.7.i, align 8
  %incdec.ptr.7.i = getelementptr i64, ptr %stats_src.09.i, i32 8
  %268 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %incdec.ptr.7.i, align 8
  %arrayidx99.8.i = getelementptr i64, ptr %arrayidx95.i, i32 8
  %270 = ptrtoint ptr %arrayidx99.8.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %269, ptr %arrayidx99.8.i, align 8
  %incdec.ptr.8.i = getelementptr i64, ptr %stats_src.09.i, i32 9
  %271 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %incdec.ptr.8.i, align 8
  %arrayidx99.9.i = getelementptr i64, ptr %arrayidx95.i, i32 9
  %273 = ptrtoint ptr %arrayidx99.9.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %272, ptr %arrayidx99.9.i, align 8
  %incdec.ptr.9.i = getelementptr i64, ptr %stats_src.09.i, i32 10
  br label %for.inc103.i

for.inc103.i:                                     ; preds = %for.body98.preheader.i, %for.body91.i.for.inc103.i_crit_edge
  %stats_src.2.i = phi ptr [ %stats_src.09.i, %for.body91.i.for.inc103.i_crit_edge ], [ %incdec.ptr.9.i, %for.body98.preheader.i ]
  %inc104.i = add nuw nsw i32 %i.610.i, 1
  %exitcond21.not.i = icmp eq i32 %inc104.i, 32
  br i1 %exitcond21.not.i, label %for.inc103.i.for.body108.i_crit_edge, label %for.inc103.i.for.body91.i_crit_edge

for.inc103.i.for.body91.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body91.i

for.inc103.i.for.body108.i_crit_edge:             ; preds = %for.inc103.i
  br label %for.body108.i

for.body108.i:                                    ; preds = %for.inc126.i.for.body108.i_crit_edge, %for.inc103.i.for.body108.i_crit_edge
  %i.714.i = phi i32 [ %inc127.i, %for.inc126.i.for.body108.i_crit_edge ], [ 0, %for.inc103.i.for.body108.i_crit_edge ]
  %stats_src.313.i = phi ptr [ %stats_src.5.i, %for.inc126.i.for.body108.i_crit_edge ], [ %stats_src.2.i, %for.inc103.i.for.body108.i_crit_edge ]
  %arrayidx111.i = getelementptr %struct.bna, ptr %arg, i32 0, i32 4, i32 2, i32 7, i32 %i.714.i
  %274 = call ptr @memset(ptr %arrayidx111.i, i32 0, i32 96)
  %shl112.i = shl nuw i32 1, %i.714.i
  %and113.i = and i32 %shl112.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %for.body108.i.for.inc126.i_crit_edge, label %for.body119.preheader.i

for.body108.i.for.inc126.i_crit_edge:             ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc126.i

for.body119.preheader.i:                          ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  %275 = ptrtoint ptr %stats_src.313.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %stats_src.313.i, align 8
  %277 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %276, ptr %arrayidx111.i, align 8
  %incdec.ptr121.i = getelementptr i64, ptr %stats_src.313.i, i32 1
  %278 = ptrtoint ptr %incdec.ptr121.i to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %incdec.ptr121.i, align 8
  %arrayidx120.1.i = getelementptr i64, ptr %arrayidx111.i, i32 1
  %280 = ptrtoint ptr %arrayidx120.1.i to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %279, ptr %arrayidx120.1.i, align 8
  %incdec.ptr121.1.i = getelementptr i64, ptr %stats_src.313.i, i32 2
  %281 = ptrtoint ptr %incdec.ptr121.1.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %incdec.ptr121.1.i, align 8
  %arrayidx120.2.i = getelementptr i64, ptr %arrayidx111.i, i32 2
  %283 = ptrtoint ptr %arrayidx120.2.i to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 %282, ptr %arrayidx120.2.i, align 8
  %incdec.ptr121.2.i = getelementptr i64, ptr %stats_src.313.i, i32 3
  %284 = ptrtoint ptr %incdec.ptr121.2.i to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %incdec.ptr121.2.i, align 8
  %arrayidx120.3.i = getelementptr i64, ptr %arrayidx111.i, i32 3
  %286 = ptrtoint ptr %arrayidx120.3.i to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %285, ptr %arrayidx120.3.i, align 8
  %incdec.ptr121.3.i = getelementptr i64, ptr %stats_src.313.i, i32 4
  %287 = ptrtoint ptr %incdec.ptr121.3.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %incdec.ptr121.3.i, align 8
  %arrayidx120.4.i = getelementptr i64, ptr %arrayidx111.i, i32 4
  %289 = ptrtoint ptr %arrayidx120.4.i to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %288, ptr %arrayidx120.4.i, align 8
  %incdec.ptr121.4.i = getelementptr i64, ptr %stats_src.313.i, i32 5
  %290 = ptrtoint ptr %incdec.ptr121.4.i to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %incdec.ptr121.4.i, align 8
  %arrayidx120.5.i = getelementptr i64, ptr %arrayidx111.i, i32 5
  %292 = ptrtoint ptr %arrayidx120.5.i to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %291, ptr %arrayidx120.5.i, align 8
  %incdec.ptr121.5.i = getelementptr i64, ptr %stats_src.313.i, i32 6
  %293 = ptrtoint ptr %incdec.ptr121.5.i to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %incdec.ptr121.5.i, align 8
  %arrayidx120.6.i = getelementptr i64, ptr %arrayidx111.i, i32 6
  %295 = ptrtoint ptr %arrayidx120.6.i to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 %294, ptr %arrayidx120.6.i, align 8
  %incdec.ptr121.6.i = getelementptr i64, ptr %stats_src.313.i, i32 7
  %296 = ptrtoint ptr %incdec.ptr121.6.i to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %incdec.ptr121.6.i, align 8
  %arrayidx120.7.i = getelementptr i64, ptr %arrayidx111.i, i32 7
  %298 = ptrtoint ptr %arrayidx120.7.i to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 %297, ptr %arrayidx120.7.i, align 8
  %incdec.ptr121.7.i = getelementptr i64, ptr %stats_src.313.i, i32 8
  %299 = ptrtoint ptr %incdec.ptr121.7.i to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %incdec.ptr121.7.i, align 8
  %arrayidx120.8.i = getelementptr i64, ptr %arrayidx111.i, i32 8
  %301 = ptrtoint ptr %arrayidx120.8.i to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 %300, ptr %arrayidx120.8.i, align 8
  %incdec.ptr121.8.i = getelementptr i64, ptr %stats_src.313.i, i32 9
  %302 = ptrtoint ptr %incdec.ptr121.8.i to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %incdec.ptr121.8.i, align 8
  %arrayidx120.9.i = getelementptr i64, ptr %arrayidx111.i, i32 9
  %304 = ptrtoint ptr %arrayidx120.9.i to i32
  call void @__asan_store8_noabort(i32 %304)
  store i64 %303, ptr %arrayidx120.9.i, align 8
  %incdec.ptr121.9.i = getelementptr i64, ptr %stats_src.313.i, i32 10
  %305 = ptrtoint ptr %incdec.ptr121.9.i to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %incdec.ptr121.9.i, align 8
  %arrayidx120.10.i = getelementptr i64, ptr %arrayidx111.i, i32 10
  %307 = ptrtoint ptr %arrayidx120.10.i to i32
  call void @__asan_store8_noabort(i32 %307)
  store i64 %306, ptr %arrayidx120.10.i, align 8
  %incdec.ptr121.10.i = getelementptr i64, ptr %stats_src.313.i, i32 11
  %308 = ptrtoint ptr %incdec.ptr121.10.i to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %incdec.ptr121.10.i, align 8
  %arrayidx120.11.i = getelementptr i64, ptr %arrayidx111.i, i32 11
  %310 = ptrtoint ptr %arrayidx120.11.i to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %309, ptr %arrayidx120.11.i, align 8
  %incdec.ptr121.11.i = getelementptr i64, ptr %stats_src.313.i, i32 12
  br label %for.inc126.i

for.inc126.i:                                     ; preds = %for.body119.preheader.i, %for.body108.i.for.inc126.i_crit_edge
  %stats_src.5.i = phi ptr [ %stats_src.313.i, %for.body108.i.for.inc126.i_crit_edge ], [ %incdec.ptr121.11.i, %for.body119.preheader.i ]
  %inc127.i = add nuw nsw i32 %i.714.i, 1
  %exitcond23.not.i = icmp eq i32 %inc127.i, 32
  br i1 %exitcond23.not.i, label %bna_bfi_stats_get_rsp.exit, label %for.inc126.i.for.body108.i_crit_edge

for.inc126.i.for.body108.i_crit_edge:             ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body108.i

bna_bfi_stats_get_rsp.exit:                       ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #8
  %stats.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 4
  %stats_get_busy.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 11, i32 1
  %311 = ptrtoint ptr %stats_get_busy.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %stats_get_busy.i, align 1
  %bnad.i332 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 19
  %312 = ptrtoint ptr %bnad.i332 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %bnad.i332, align 4
  tail call void @bnad_cb_stats_get(ptr noundef %313, i32 noundef 0, ptr noundef %stats.i) #6
  br label %sw.epilog

sw.bb233:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %link_status.i333 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 2
  %314 = ptrtoint ptr %link_status.i333 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 1, ptr %link_status.i333, align 4
  %link_cbfn.i334 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 6
  %315 = ptrtoint ptr %link_cbfn.i334 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %link_cbfn.i334, align 4
  %bna.i335 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 9
  %317 = ptrtoint ptr %bna.i335 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %bna.i335, align 4
  %bnad.i336 = getelementptr inbounds %struct.bna, ptr %318, i32 0, i32 19
  %319 = ptrtoint ptr %bnad.i336 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %bnad.i336, align 4
  tail call void %316(ptr noundef %320, i32 noundef 1) #6
  br label %sw.epilog

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %link_status.i337 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 2
  %321 = ptrtoint ptr %link_status.i337 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 0, ptr %link_status.i337, align 4
  %link_cbfn.i338 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 6
  %322 = ptrtoint ptr %link_cbfn.i338 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %link_cbfn.i338, align 4
  %bna.i339 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 9
  %324 = ptrtoint ptr %bna.i339 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %bna.i339, align 4
  %bnad.i340 = getelementptr inbounds %struct.bna, ptr %325, i32 0, i32 19
  %326 = ptrtoint ptr %bnad.i340 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %bnad.i340, align 4
  tail call void %323(ptr noundef %327, i32 noundef 0) #6
  br label %sw.epilog

sw.bb237:                                         ; preds = %entry
  %flags.i341 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 1
  %328 = ptrtoint ptr %flags.i341 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %flags.i341, align 4
  %or.i = or i32 %329, 2
  store i32 %or.i, ptr %flags.i341, align 4
  %bna.i.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 9
  %330 = ptrtoint ptr %bna.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %bna.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.bna, ptr %331, i32 0, i32 10, i32 2
  %332 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp.i.i = icmp ne i32 %333, 0
  %334 = and i32 %329, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %334)
  %.not27.i.i = icmp ne i32 %334, 5
  %narrow.i = select i1 %.not27.i.i, i1 true, i1 %cmp.i.i
  br i1 %narrow.i, label %sw.bb237.sw.epilog_crit_edge, label %if.then.i342

sw.bb237.sw.epilog_crit_edge:                     ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i342:                                     ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #8
  %ethport238 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9
  %335 = ptrtoint ptr %ethport238 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ethport238, align 4
  tail call void %336(ptr noundef %ethport238, i32 noundef 4) #6
  br label %sw.epilog

sw.bb239:                                         ; preds = %entry
  %bna.i.i343 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 9
  %337 = ptrtoint ptr %bna.i.i343 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %bna.i.i343, align 4
  %type.i.i344 = getelementptr inbounds %struct.bna, ptr %338, i32 0, i32 10, i32 2
  %339 = ptrtoint ptr %type.i.i344 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %type.i.i344, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp.i.i345 = icmp eq i32 %340, 0
  %flags.i.i = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9, i32 1
  %341 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %flags.i.i, align 4
  %343 = and i32 %342, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %343)
  %.not27.i.i346 = icmp ne i32 %343, 5
  %and.i347 = and i32 %342, -3
  %344 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %and.i347, ptr %flags.i.i, align 4
  %345 = and i32 %342, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %346 = icmp ne i32 %345, 0
  %tobool.not1.i = xor i1 %cmp.i.i345, %346
  %tobool.not.i348 = select i1 %.not27.i.i346, i1 true, i1 %tobool.not1.i
  br i1 %tobool.not.i348, label %sw.bb239.sw.epilog_crit_edge, label %if.then.i349

sw.bb239.sw.epilog_crit_edge:                     ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i349:                                     ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #8
  %ethport240 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 9
  %347 = ptrtoint ptr %ethport240 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ethport240, align 4
  tail call void %348(ptr noundef %ethport240, i32 noundef 5) #6
  br label %sw.epilog

sw.bb241:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_mod242 = getelementptr inbounds %struct.bna, ptr %arg, i32 0, i32 12
  tail call void @bna_bfi_bw_update_aen(ptr noundef %tx_mod242) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb241, %if.then.i349, %sw.bb239.sw.epilog_crit_edge, %if.then.i342, %sw.bb237.sw.epilog_crit_edge, %sw.bb235, %sw.bb233, %bna_bfi_stats_get_rsp.exit, %bna_bfi_attr_get_rsp.exit, %sw.bb230, %sw.epilog.sink.split.i, %sw.bb228.sw.epilog_crit_edge, %sw.bb4.i, %if.else.i, %if.then.i, %sw.bb227.sw.epilog_crit_edge, %if.then225, %for.end221.sw.epilog_crit_edge, %for.cond201.sw.epilog_crit_edge, %if.then189, %for.end185.sw.epilog_crit_edge, %for.cond165.sw.epilog_crit_edge, %if.then156, %for.end152.sw.epilog_crit_edge, %for.cond132.sw.epilog_crit_edge, %if.then119, %for.end115.sw.epilog_crit_edge, %for.cond95.sw.epilog_crit_edge, %if.then83, %for.end79.sw.epilog_crit_edge, %for.cond59.sw.epilog_crit_edge, %if.then47, %for.end43.sw.epilog_crit_edge, %for.cond23.sw.epilog_crit_edge, %if.then11, %for.end.sw.epilog_crit_edge, %for.cond.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_cb_ioceth_enable(ptr noundef %arg, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %. = select i1 %tobool.not, i32 5, i32 4
  tail call void %1(ptr noundef %arg, i32 noundef %.) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_cb_ioceth_disable(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  tail call void %1(ptr noundef %arg, i32 noundef 8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_cb_ioceth_hbfail(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  tail call void %1(ptr noundef %arg, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_cb_ioceth_reset(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  tail call void %1(ptr noundef %arg, i32 noundef 3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_rx_enet_start_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_rx_enet_stop_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_rxf_cfg_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_rxf_ucast_set_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_rxf_mcast_add_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_tx_enet_start_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_tx_enet_stop_rsp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_bfi_bw_update_aen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_ethport_link_status(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ethport_sm_stopped(ptr nocapture noundef %ethport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %event, label %do.end8 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge16
  ]

entry.sw.epilog_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ethport_sm_down, ptr %ethport, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %stop_cbfn = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %2 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body2.sw.epilog_crit_edge, label %if.then

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stop_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %5 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna, align 4
  %enet = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 10
  tail call void %3(ptr noundef %enet) #6
  br label %sw.epilog

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 536, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %if.then, %do.body2.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ethport_sm_down(ptr noundef %ethport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 4, label %do.body6
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.sw.epilog_crit_edge, label %if.then.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stop_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %5 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna.i, align 4
  %enet.i = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 10
  tail call void %3(ptr noundef %enet.i) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %7 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i20 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %8 = ptrtoint ptr %stop_cbfn.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop_cbfn.i20, align 4
  %tobool.not.i21 = icmp eq ptr %9, null
  br i1 %tobool.not.i21, label %do.body2.sw.epilog_crit_edge, label %if.then.i24

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i24:                                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %stop_cbfn.i20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %stop_cbfn.i20, align 4
  %bna.i22 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %11 = ptrtoint ptr %bna.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bna.i22, align 4
  %enet.i23 = getelementptr inbounds %struct.bna, ptr %12, i32 0, i32 10
  tail call void %9(ptr noundef %enet.i23) #6
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %13 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bna_ethport_sm_up_resp_wait, ptr %ethport, align 4
  %bna.i26 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %14 = ptrtoint ptr %bna.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bna.i26, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %bfi_enet_cmd.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8
  %18 = ptrtoint ptr %bfi_enet_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 24, ptr %bfi_enet_cmd.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i27, label %if.else.i

if.then.i27:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 19, ptr %msg_id.i.i, align 1
  %msg_token.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %msg_token.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 0, ptr %msg_token.i.i, align 1
  %enet_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %enet_id.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %enet_id.i.i, align 1
  %num_entries.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 1, ptr %num_entries.i.i, align 1
  %enable.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 1
  br label %bna_bfi_ethport_up.exit

if.else.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 21, ptr %msg_id.i.i, align 1
  %msg_token.i5.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %msg_token.i5.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 0, ptr %msg_token.i5.i, align 1
  %enet_id.i6.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %25 = ptrtoint ptr %enet_id.i6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %enet_id.i6.i, align 1
  %num_entries.i7.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %num_entries.i7.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 1, ptr %num_entries.i7.i, align 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.i = icmp ne i32 %28, 1
  %conv.i.i = zext i1 %cmp.i.i to i8
  %mode.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i, ptr %mode.i.i, align 1
  %enable.i9.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 2
  br label %bna_bfi_ethport_up.exit

bna_bfi_ethport_up.exit:                          ; preds = %if.else.i, %if.then.i27
  %enable.i9.sink.i = phi ptr [ %enable.i9.i, %if.else.i ], [ %enable.i.i, %if.then.i27 ]
  %30 = ptrtoint ptr %enable.i9.sink.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %enable.i9.sink.i, align 1
  %msgq_cmd.i10.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7
  %cbfn.i11.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %cbfn.i11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cbfn.i11.i, align 4
  %cbarg.i12.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %cbarg.i12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cbarg.i12.i, align 4
  %msg_size.i13.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %msg_size.i13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12, ptr %msg_size.i13.i, align 4
  %msg_hdr.i14.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 4
  %34 = ptrtoint ptr %msg_hdr.i14.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %bfi_enet_cmd.i.i, ptr %msg_hdr.i14.i, align 4
  %msgq.i15.i = getelementptr inbounds %struct.bna, ptr %15, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i15.i, ptr noundef %msgq_cmd.i10.i) #6
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 564, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %bna_bfi_ethport_up.exit, %if.then.i24, %do.body2.sw.epilog_crit_edge, %if.then.i, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ethport_sm_up_resp_wait(ptr noundef %ethport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %event, label %do.end57 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 5, label %do.body10
    i32 6, label %do.body25
    i32 8, label %do.body40
    i32 7, label %sw.bb54
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ethport_sm_last_resp_wait, ptr %ethport, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %adminup_cbfn = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 5
  %2 = ptrtoint ptr %adminup_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adminup_cbfn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body2.do.body6_crit_edge, label %if.then

do.body2.do.body6_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %adminup_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %adminup_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %5 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad, align 4
  tail call void %3(ptr noundef %8, i32 noundef 1) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %do.body2.do.body6_crit_edge
  %9 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %10 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body6.sw.epilog_crit_edge, label %if.then.i

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %stop_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %13 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bna.i, align 4
  %enet.i = getelementptr inbounds %struct.bna, ptr %14, i32 0, i32 10
  tail call void %11(ptr noundef %enet.i) #6
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  %adminup_cbfn11 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 5
  %15 = ptrtoint ptr %adminup_cbfn11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adminup_cbfn11, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %do.body10.do.body21_crit_edge, label %if.then13

do.body10.do.body21_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %adminup_cbfn11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %adminup_cbfn11, align 4
  %bna17 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %18 = ptrtoint ptr %bna17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bna17, align 4
  %bnad18 = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %bnad18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bnad18, align 4
  tail call void %16(ptr noundef %21, i32 noundef 2) #6
  br label %do.body21

do.body21:                                        ; preds = %if.then13, %do.body10.do.body21_crit_edge
  %22 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bna_ethport_sm_down_resp_wait, ptr %ethport, align 4
  br label %sw.epilog

do.body25:                                        ; preds = %entry
  %adminup_cbfn26 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 5
  %23 = ptrtoint ptr %adminup_cbfn26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adminup_cbfn26, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %do.body25.do.body36_crit_edge, label %if.then28

do.body25.do.body36_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %adminup_cbfn26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %adminup_cbfn26, align 4
  %bna32 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %26 = ptrtoint ptr %bna32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bna32, align 4
  %bnad33 = getelementptr inbounds %struct.bna, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %bnad33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bnad33, align 4
  tail call void %24(ptr noundef %29, i32 noundef 0) #6
  br label %do.body36

do.body36:                                        ; preds = %if.then28, %do.body25.do.body36_crit_edge
  %30 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bna_ethport_sm_up, ptr %ethport, align 4
  br label %sw.epilog

do.body40:                                        ; preds = %entry
  %adminup_cbfn41 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 5
  %31 = ptrtoint ptr %adminup_cbfn41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adminup_cbfn41, align 4
  %tobool42.not = icmp eq ptr %32, null
  br i1 %tobool42.not, label %do.body40.do.body51_crit_edge, label %if.then43

do.body40.do.body51_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %adminup_cbfn41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %adminup_cbfn41, align 4
  %bna47 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %34 = ptrtoint ptr %bna47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna47, align 4
  %bnad48 = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %bnad48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bnad48, align 4
  tail call void %32(ptr noundef %37, i32 noundef 1) #6
  br label %do.body51

do.body51:                                        ; preds = %if.then43, %do.body40.do.body51_crit_edge
  %38 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bna_ethport_sm_down, ptr %ethport, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %bna.i89 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %39 = ptrtoint ptr %bna.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna.i89, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 10, i32 2
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp eq i32 %42, 0
  %bfi_enet_cmd.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8
  %43 = ptrtoint ptr %bfi_enet_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 24, ptr %bfi_enet_cmd.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i90, label %if.else.i

if.then.i90:                                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 19, ptr %msg_id.i.i, align 1
  %msg_token.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %msg_token.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 0, ptr %msg_token.i.i, align 1
  %enet_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %46 = ptrtoint ptr %enet_id.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %enet_id.i.i, align 1
  %num_entries.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %47 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 1, ptr %num_entries.i.i, align 1
  %enable.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 1
  br label %bna_bfi_ethport_up.exit

if.else.i:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 21, ptr %msg_id.i.i, align 1
  %msg_token.i5.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %49 = ptrtoint ptr %msg_token.i5.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 0, ptr %msg_token.i5.i, align 1
  %enet_id.i6.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %50 = ptrtoint ptr %enet_id.i6.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %enet_id.i6.i, align 1
  %num_entries.i7.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %51 = ptrtoint ptr %num_entries.i7.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 1, ptr %num_entries.i7.i, align 1
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i.i = icmp ne i32 %53, 1
  %conv.i.i = zext i1 %cmp.i.i to i8
  %mode.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i.i, ptr %mode.i.i, align 1
  %enable.i9.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 2
  br label %bna_bfi_ethport_up.exit

bna_bfi_ethport_up.exit:                          ; preds = %if.else.i, %if.then.i90
  %enable.i9.sink.i = phi ptr [ %enable.i9.i, %if.else.i ], [ %enable.i.i, %if.then.i90 ]
  %55 = ptrtoint ptr %enable.i9.sink.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %enable.i9.sink.i, align 1
  %msgq_cmd.i10.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7
  %cbfn.i11.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %cbfn.i11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %cbfn.i11.i, align 4
  %cbarg.i12.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 2
  %57 = ptrtoint ptr %cbarg.i12.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %cbarg.i12.i, align 4
  %msg_size.i13.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 3
  %58 = ptrtoint ptr %msg_size.i13.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 12, ptr %msg_size.i13.i, align 4
  %msg_hdr.i14.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 4
  %59 = ptrtoint ptr %msg_hdr.i14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %bfi_enet_cmd.i.i, ptr %msg_hdr.i14.i, align 4
  %msgq.i15.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i15.i, ptr noundef %msgq_cmd.i10.i) #6
  br label %sw.epilog

do.end57:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 608, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end57, %bna_bfi_ethport_up.exit, %do.body51, %do.body36, %do.body21, %if.then.i, %do.body6.sw.epilog_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ethport_sm_last_resp_wait(ptr noundef %ethport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %event, label %do.end8 [
    i32 3, label %do.body
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %sw.bb1
    i32 8, label %entry.do.body3_crit_edge
    i32 7, label %entry.do.body3_crit_edge23
  ]

entry.do.body3_crit_edge23:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.sw.epilog_crit_edge, label %if.then.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stop_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %5 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna.i, align 4
  %enet.i = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 10
  tail call void %3(ptr noundef %enet.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %bna.i15 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %7 = ptrtoint ptr %bna.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna.i15, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %bfi_enet_cmd.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8
  %11 = ptrtoint ptr %bfi_enet_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 24, ptr %bfi_enet_cmd.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i16, label %if.else.i

if.then.i16:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 19, ptr %msg_id.i.i, align 1
  %enable.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 1
  br label %bna_bfi_ethport_down.exit

if.else.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 21, ptr %msg_id.i.i, align 1
  %enable.i8.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 2
  br label %bna_bfi_ethport_down.exit

bna_bfi_ethport_down.exit:                        ; preds = %if.else.i, %if.then.i16
  %enable.i8.sink.i = phi ptr [ %enable.i8.i, %if.else.i ], [ %enable.i.i, %if.then.i16 ]
  %14 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %14, align 1
  %16 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %16, align 1
  %18 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1, ptr %18, align 1
  %20 = ptrtoint ptr %enable.i8.sink.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enable.i8.sink.i, align 1
  %msgq_cmd.i9.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7
  %cbfn.i10.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %cbfn.i10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cbfn.i10.i, align 4
  %cbarg.i11.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %cbarg.i11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cbarg.i11.i, align 4
  %msg_size.i12.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %msg_size.i12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 12, ptr %msg_size.i12.i, align 4
  %msg_hdr.i13.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %msg_hdr.i13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bfi_enet_cmd.i.i, ptr %msg_hdr.i13.i, align 4
  %msgq.i15.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i15.i, ptr noundef %msgq_cmd.i9.i) #6
  br label %sw.epilog

do.body3:                                         ; preds = %entry.do.body3_crit_edge, %entry.do.body3_crit_edge23
  %25 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i17 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %26 = ptrtoint ptr %stop_cbfn.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop_cbfn.i17, align 4
  %tobool.not.i18 = icmp eq ptr %27, null
  br i1 %tobool.not.i18, label %do.body3.sw.epilog_crit_edge, label %if.then.i21

do.body3.sw.epilog_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i21:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %stop_cbfn.i17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %stop_cbfn.i17, align 4
  %bna.i19 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %29 = ptrtoint ptr %bna.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bna.i19, align 4
  %enet.i20 = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 10
  tail call void %27(ptr noundef %enet.i20) #6
  br label %sw.epilog

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 716, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %if.then.i21, %do.body3.sw.epilog_crit_edge, %bna_bfi_ethport_down.exit, %if.then.i, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ethport_sm_down_resp_wait(ptr noundef %ethport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %event, label %do.end16 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 4, label %do.body6
    i32 6, label %sw.bb9
    i32 8, label %entry.do.body11_crit_edge
    i32 7, label %entry.do.body11_crit_edge29
  ]

entry.do.body11_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ethport_sm_last_resp_wait, ptr %ethport, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %2 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %3 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body2.sw.epilog_crit_edge, label %if.then.i

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %stop_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %6 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bna.i, align 4
  %enet.i = getelementptr inbounds %struct.bna, ptr %7, i32 0, i32 10
  tail call void %4(ptr noundef %enet.i) #6
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bna_ethport_sm_up_resp_wait, ptr %ethport, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %bna.i27 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %9 = ptrtoint ptr %bna.i27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bna.i27, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %10, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %bfi_enet_cmd.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8
  %13 = ptrtoint ptr %bfi_enet_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 24, ptr %bfi_enet_cmd.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i28, label %if.else.i

if.then.i28:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 19, ptr %msg_id.i.i, align 1
  %enable.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 1
  br label %bna_bfi_ethport_down.exit

if.else.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 21, ptr %msg_id.i.i, align 1
  %enable.i8.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 2
  br label %bna_bfi_ethport_down.exit

bna_bfi_ethport_down.exit:                        ; preds = %if.else.i, %if.then.i28
  %enable.i8.sink.i = phi ptr [ %enable.i8.i, %if.else.i ], [ %enable.i.i, %if.then.i28 ]
  %16 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 0, ptr %16, align 1
  %18 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %20 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 1, ptr %20, align 1
  %22 = ptrtoint ptr %enable.i8.sink.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enable.i8.sink.i, align 1
  %msgq_cmd.i9.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7
  %cbfn.i10.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %cbfn.i10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cbfn.i10.i, align 4
  %cbarg.i11.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %cbarg.i11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cbarg.i11.i, align 4
  %msg_size.i12.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %msg_size.i12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %msg_size.i12.i, align 4
  %msg_hdr.i13.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %msg_hdr.i13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bfi_enet_cmd.i.i, ptr %msg_hdr.i13.i, align 4
  %msgq.i15.i = getelementptr inbounds %struct.bna, ptr %10, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i15.i, ptr noundef %msgq_cmd.i9.i) #6
  br label %sw.epilog

do.body11:                                        ; preds = %entry.do.body11_crit_edge, %entry.do.body11_crit_edge29
  %27 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bna_ethport_sm_down, ptr %ethport, align 4
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 650, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %do.body11, %bna_bfi_ethport_down.exit, %do.body6, %if.then.i, %do.body2.sw.epilog_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_ethport_sm_up(ptr noundef %ethport, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 5, label %do.body6
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_ethport_sm_last_resp_wait, ptr %ethport, align 4
  %bna.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %2 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna.i, align 4
  %type.i = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %bfi_enet_cmd.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8
  %6 = ptrtoint ptr %bfi_enet_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %bfi_enet_cmd.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 19, ptr %msg_id.i.i, align 1
  %enable.i.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 1
  br label %bna_bfi_ethport_down.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 21, ptr %msg_id.i.i, align 1
  %enable.i8.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 2
  br label %bna_bfi_ethport_down.exit

bna_bfi_ethport_down.exit:                        ; preds = %if.else.i, %if.then.i
  %enable.i8.sink.i = phi ptr [ %enable.i8.i, %if.else.i ], [ %enable.i.i, %if.then.i ]
  %9 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %9, align 1
  %11 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %11, align 1
  %13 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 1, ptr %13, align 1
  %15 = ptrtoint ptr %enable.i8.sink.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %enable.i8.sink.i, align 1
  %msgq_cmd.i9.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7
  %cbfn.i10.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %cbfn.i10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cbfn.i10.i, align 4
  %cbarg.i11.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %cbarg.i11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cbarg.i11.i, align 4
  %msg_size.i12.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %msg_size.i12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %msg_size.i12.i, align 4
  %msg_hdr.i13.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 4
  %19 = ptrtoint ptr %msg_hdr.i13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bfi_enet_cmd.i.i, ptr %msg_hdr.i13.i, align 4
  %msgq.i15.i = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i15.i, ptr noundef %msgq_cmd.i9.i) #6
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %20 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bna_ethport_sm_stopped, ptr %ethport, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 4
  %21 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.body2.sw.epilog_crit_edge, label %if.then.i22

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i22:                                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %stop_cbfn.i, align 4
  %bna.i21 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %24 = ptrtoint ptr %bna.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bna.i21, align 4
  %enet.i = getelementptr inbounds %struct.bna, ptr %25, i32 0, i32 10
  tail call void %22(ptr noundef %enet.i) #6
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %26 = ptrtoint ptr %ethport to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bna_ethport_sm_down_resp_wait, ptr %ethport, align 4
  %bna.i23 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 9
  %27 = ptrtoint ptr %bna.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bna.i23, align 4
  %type.i24 = getelementptr inbounds %struct.bna, ptr %28, i32 0, i32 10, i32 2
  %29 = ptrtoint ptr %type.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i25 = icmp eq i32 %30, 0
  %bfi_enet_cmd.i.i26 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8
  %31 = ptrtoint ptr %bfi_enet_cmd.i.i26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 24, ptr %bfi_enet_cmd.i.i26, align 1
  %msg_id.i.i27 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 1
  br i1 %cmp.i25, label %if.then.i32, label %if.else.i37

if.then.i32:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %msg_id.i.i27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 19, ptr %msg_id.i.i27, align 1
  %enable.i.i31 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 1
  br label %bna_bfi_ethport_down.exit45

if.else.i37:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %msg_id.i.i27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 21, ptr %msg_id.i.i27, align 1
  %enable.i8.i36 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 2, i32 2
  br label %bna_bfi_ethport_down.exit45

bna_bfi_ethport_down.exit45:                      ; preds = %if.else.i37, %if.then.i32
  %enable.i8.sink.i38 = phi ptr [ %enable.i8.i36, %if.else.i37 ], [ %enable.i.i31, %if.then.i32 ]
  %34 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %34, align 1
  %36 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %36, align 1
  %38 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 8, i32 0, i32 0, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 1, ptr %38, align 1
  %40 = ptrtoint ptr %enable.i8.sink.i38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %enable.i8.sink.i38, align 1
  %msgq_cmd.i9.i39 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7
  %cbfn.i10.i40 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %cbfn.i10.i40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %cbfn.i10.i40, align 4
  %cbarg.i11.i41 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 2
  %42 = ptrtoint ptr %cbarg.i11.i41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cbarg.i11.i41, align 4
  %msg_size.i12.i42 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %msg_size.i12.i42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 12, ptr %msg_size.i12.i42, align 4
  %msg_hdr.i13.i43 = getelementptr inbounds %struct.bna_ethport, ptr %ethport, i32 0, i32 7, i32 4
  %44 = ptrtoint ptr %msg_hdr.i13.i43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %bfi_enet_cmd.i.i26, ptr %msg_hdr.i13.i43, align 4
  %msgq.i15.i44 = getelementptr inbounds %struct.bna, ptr %28, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i15.i44, ptr noundef %msgq_cmd.i9.i39) #6
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 679, i32 noundef %event) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %bna_bfi_ethport_down.exit45, %if.then.i22, %do.body2.sw.epilog_crit_edge, %bna_bfi_ethport_down.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 946, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bna_enet_sm_stopped._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bna_enet_sm_stopped._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 990, i32 3}
!8 = !{ptr @bna_enet_sm_pause_init_wait._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bna_enet_sm_pause_init_wait._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1011, i32 3}
!12 = !{ptr @bna_enet_sm_last_resp_wait._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bna_enet_sm_last_resp_wait._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1050, i32 3}
!16 = !{ptr @bna_enet_sm_started._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bna_enet_sm_started._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1153, i32 3}
!20 = !{ptr @bna_enet_sm_chld_stop_wait._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @bna_enet_sm_chld_stop_wait._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1101, i32 3}
!24 = !{ptr @bna_enet_sm_cfg_wait._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bna_enet_sm_cfg_wait._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1128, i32 3}
!28 = !{ptr @bna_enet_sm_cfg_stop_wait._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bna_enet_sm_cfg_stop_wait._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1505, i32 3}
!32 = !{ptr @bna_ioceth_sm_ready._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bna_ioceth_sm_ready._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1561, i32 3}
!36 = !{ptr @bna_ioceth_sm_enet_stop_wait._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bna_ioceth_sm_enet_stop_wait._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1586, i32 3}
!40 = !{ptr @bna_ioceth_sm_ioc_disable_wait._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bna_ioceth_sm_ioc_disable_wait._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1615, i32 3}
!44 = !{ptr @bna_ioceth_sm_failed._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @bna_ioceth_sm_failed._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1448, i32 3}
!48 = !{ptr @bna_ioceth_sm_ioc_ready_wait._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bna_ioceth_sm_ioc_ready_wait._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1477, i32 3}
!52 = !{ptr @bna_ioceth_sm_enet_attr_wait._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bna_ioceth_sm_enet_attr_wait._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1531, i32 3}
!56 = !{ptr @bna_ioceth_sm_last_resp_wait._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bna_ioceth_sm_last_resp_wait._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1411, i32 3}
!60 = !{ptr @bna_ioceth_sm_stopped._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bna_ioceth_sm_stopped._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @bna_ioceth_cbfn, !63, !"bna_ioceth_cbfn", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 1670, i32 28}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 536, i32 3}
!66 = !{ptr @bna_ethport_sm_stopped._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bna_ethport_sm_stopped._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 564, i32 3}
!70 = !{ptr @bna_ethport_sm_down._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bna_ethport_sm_down._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 608, i32 3}
!74 = !{ptr @bna_ethport_sm_up_resp_wait._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bna_ethport_sm_up_resp_wait._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 716, i32 3}
!78 = !{ptr @bna_ethport_sm_last_resp_wait._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @bna_ethport_sm_last_resp_wait._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 650, i32 3}
!82 = !{ptr @bna_ethport_sm_down_resp_wait._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bna_ethport_sm_down_resp_wait._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/brocade/bna/bna_enet.c", i32 679, i32 3}
!86 = !{ptr @bna_ethport_sm_up._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bna_ethport_sm_up._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 5052239}
!98 = !{i64 2156582700}
!99 = !{i64 2156582950}
!100 = !{i64 5051821}
!101 = !{i64 2156583724}
!102 = !{i64 2156691551}
!103 = !{i64 2156691881}
!104 = !{i64 2156692930}
!105 = !{i64 2156664756}
!106 = !{i64 2156665052}
!107 = !{i64 2156666324}
!108 = !{i64 2156666657}
!109 = !{i64 2156667715}
!110 = !{i64 2156668749}
!111 = !{i64 2156669079}
!112 = !{i64 2156670128}
!113 = !{i8 0, i8 2}
!114 = !{i64 2156701397}
!115 = !{i64 2156701727}
!116 = !{i64 2156702776}
!117 = !{i64 2156710993}
!118 = !{i64 2156711289}
!119 = !{i64 2156712561}
!120 = !{i64 2156712894}
!121 = !{i64 2156713952}
!122 = !{i64 2156706195}
!123 = !{i64 2156706525}
!124 = !{i64 2156707574}
!125 = !{i64 2156677605}
!126 = !{i64 2156677901}
!127 = !{i64 2156679173}
!128 = !{i64 2156679506}
!129 = !{i64 2156680564}
!130 = !{i64 2156681598}
!131 = !{i64 2156681928}
!132 = !{i64 2156682977}
!133 = !{i64 2156686542}
!134 = !{i64 2156686872}
!135 = !{i64 2156687921}
!136 = !{i64 2156696527}
!137 = !{i64 2156696857}
!138 = !{i64 2156697906}
