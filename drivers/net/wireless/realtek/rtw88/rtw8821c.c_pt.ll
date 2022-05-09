; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/rtw8821c.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/rtw8821c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw8821c_hw_spec\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw8821c_hw_spec\09\09\09\09"
module asm "\09.long\09__crc_rtw8821c_hw_spec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw8821c_hw_spec:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw8821c_hw_spec\22\09\09\09\09\09"
module asm "__kstrtabns_rtw8821c_hw_spec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_rqpn = type { i32, i32, i32, i32, i32, i32 }
%struct.rtw_prioq_addrs = type { [4 x %struct.rtw_prioq_addr], i8 }
%struct.rtw_prioq_addr = type { i32, i32 }
%struct.rtw_page_table = type { i16, i16, i16, i16, i16 }
%struct.rtw_intf_phy_para_table = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.rtw_hw_reg = type { i32, i32 }
%struct.rtw_ltecoex_addr = type { i32, i32, i32 }
%struct.rtw_table = type { ptr, i32, ptr, ptr, i32 }
%struct.rtw_rfe_def = type { ptr, ptr, ptr }
%struct.rtw_pwr_track_tbl = type { [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.coex_table_para = type { i32, i32 }
%struct.coex_tdma_para = type { [5 x i8] }
%struct.coex_rf_para = type { i8, i8, i8, i8 }
%struct.coex_5g_afh_map = type { i32, i8, i8 }
%struct.rtw_reg_domain = type { i32, i32, i8 }
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtw_pwr_seq_cmd = type { i16, i8, i8, i8, i8, i8 }
%struct.rtw_intf_phy_para = type { i16, i16, i16, i16, i16 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.134, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.132, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.132 = type { i8, i8, i8, i8, i8 }
%struct.rtw_txpwr_idx = type { %struct.rtw_2g_txpwr_idx, %struct.rtw_5g_txpwr_idx }
%struct.rtw_2g_txpwr_idx = type { [6 x i8], [5 x i8], %struct.rtw_2g_1s_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff }
%struct.rtw_2g_1s_pwr_idx_diff = type { i8 }
%struct.rtw_2g_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_txpwr_idx = type { [14 x i8], %struct.rtw_5g_ht_1s_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ofdm_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff }
%struct.rtw_5g_ht_1s_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ofdm_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_vht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_sec_desc = type { i8, i32, [32 x %struct.rtw_cam_entry], [1 x i32] }
%struct.rtw_cam_entry = type { i8, i8, [6 x i8], i8, ptr }
%struct.rtw_traffic_stats = type { i64, i64, i64, i64, i32, i32, %struct.ewma_tp, %struct.ewma_tp }
%struct.ewma_tp = type { i32 }
%struct.rtw_regd = type { i32, ptr, i32 }
%struct.rtw_bf_info = type { i8, i8, [1 x i32], i8 }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [4 x i16], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], i8, i8, i8, [4 x %struct.ewma_thermal], i8, i8, [4 x i32], [4 x [2 x [15 x i16]]], [4 x [2 x [2 x i8]]], %struct.rtw_dpk_info, %struct.rtw_cfo_track, [2 x [4 x i8]], i32, i8, [4 x i8], [4 x i8], [4 x i16], [4 x i8], i8, %struct.rtw_pkt_count, %struct.rtw_pkt_count, [4 x %struct.ewma_evm], [12 x %struct.ewma_snr], i32, %struct.rtw_iqk_info, %struct.rtw_gapk_info, i8, i8, i32, i8 }
%struct.ewma_thermal = type { i32 }
%struct.rtw_dpk_info = type { i8, i8, [1 x i32], [2 x i8], [2 x %struct.ewma_thermal], i32, i32, [4 x i8], [4 x i8], [4 x [20 x i32]], [4 x i16], [4 x i8], [4 x i8], i8, i8, i8 }
%struct.rtw_cfo_track = type { i8, i8, [4 x i32], [4 x i32], i32, i32 }
%struct.rtw_pkt_count = type { i16, [84 x i16] }
%struct.ewma_evm = type { i32 }
%struct.ewma_snr = type { i32 }
%struct.rtw_iqk_info = type { i8, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32 }
%struct.rtw_gapk_info = type { [5 x [11 x [4 x i32]]], [4 x [11 x i32]], i8, [11 x [4 x i8]], [11 x [4 x i8]], i8, i8 }
%struct.rtw_coex = type { %struct.mutex, %struct.sk_buff_head, %struct.wait_queue_head, i8, i8, i8, i8, i8, i8, %struct.rtw_coex_stat, %struct.rtw_coex_dm, %struct.rtw_coex_rfe, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtw_tx_report = type { %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, %struct.timer_list }
%struct.anon.134 = type { i8, %struct.spinlock, i32 }
%struct.rtw_lps_conf = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.rtw_path_div = type { i32, i32, i32, i16, i16 }
%struct.rtw_fw_state = type { ptr, ptr, %struct.completion, %struct.rtw_fwcd_desc, i16, i8, i8, i16, i32 }
%struct.rtw_fwcd_desc = type { i32, ptr, ptr }
%struct.rtw_wow_param = type { ptr, [1 x i32], i8, i8, [12 x %struct.rtw_wow_pattern], i8, %struct.rtw_pno_request }
%struct.rtw_wow_pattern = type { i16, i8, i8, [16 x i8] }
%struct.rtw_pno_request = type { i8, i32, ptr, i8, ptr, %struct.cfg80211_sched_scan_plan }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw8821c_efuse = type { i16, [14 x i8], [4 x %struct.rtw_txpwr_idx], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [3 x i8], %union.anon.135 }
%union.anon.135 = type { %struct.rtw8821ce_efuse }
%struct.rtw8821ce_efuse = type { [6 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, [2 x i8], [4 x i8], [2 x i8], [8 x i8], i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8 }
%struct.rtw_rx_pkt_stat = type { i8, i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], [4 x i8], i16, i8, ptr, ptr, ptr }
%struct.rtw_swing_table = type { [4 x ptr], [4 x ptr] }
%struct.rtw_iqk_para = type { i8, i8 }

@rtw8821c_ops = internal global { %struct.rtw_chip_ops, [56 x i8] } { %struct.rtw_chip_ops { ptr @rtw8821c_mac_init, ptr null, ptr null, ptr @rtw8821c_read_efuse, ptr @rtw8821c_phy_set_param, ptr @rtw8821c_set_channel, ptr @rtw8821c_query_rx_desc, ptr @rtw_phy_read_rf, ptr @rtw_phy_write_rf_reg_sipi, ptr @rtw8821c_set_tx_power_index, ptr null, ptr null, ptr @rtw8821c_cfg_ldo25, ptr null, ptr @rtw8821c_false_alarm_statistics, ptr @rtw8821c_phy_calibration, ptr null, ptr @rtw8821c_phy_cck_pd_set, ptr @rtw8821c_pwr_track, ptr @rtw8821c_bf_config_bfee, ptr @rtw_bf_set_gid_table, ptr @rtw_bf_cfg_csi_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw8821c_coex_cfg_init, ptr @rtw8821c_coex_cfg_ant_switch, ptr @rtw8821c_coex_cfg_gnt_fix, ptr @rtw8821c_coex_cfg_gnt_debug, ptr @rtw8821c_coex_cfg_rfe_type, ptr @rtw8821c_coex_cfg_wl_tx_power, ptr @rtw8821c_coex_cfg_wl_rx_gain }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw88/rtw8821c_fw.bin\00", [42 x i8] zeroinitializer }, align 32
@card_enable_flow_8821c = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @trans_carddis_to_cardemu_8821c, ptr @trans_cardemu_to_act_8821c, ptr null], [20 x i8] zeroinitializer }, align 32
@card_disable_flow_8821c = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @trans_act_to_cardemu_8821c, ptr @trans_cardemu_to_carddis_8821c, ptr null], [20 x i8] zeroinitializer }, align 32
@rqpn_table_8821c = internal global { [5 x %struct.rtw_rqpn], [40 x i8] } { [5 x %struct.rtw_rqpn] [%struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 2, i32 3, i32 3, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 3, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }], [40 x i8] zeroinitializer }, align 32
@prioq_addrs_8821c = internal global { %struct.rtw_prioq_addrs, [60 x i8] } { %struct.rtw_prioq_addrs { [4 x %struct.rtw_prioq_addr] [%struct.rtw_prioq_addr { i32 572, i32 574 }, %struct.rtw_prioq_addr { i32 564, i32 566 }, %struct.rtw_prioq_addr { i32 568, i32 570 }, %struct.rtw_prioq_addr { i32 560, i32 562 }], i8 1 }, [60 x i8] zeroinitializer }, align 32
@page_table_8821c = internal global { [5 x %struct.rtw_page_table], [46 x i8] } { [5 x %struct.rtw_page_table] [%struct.rtw_page_table { i16 16, i16 16, i16 16, i16 14, i16 1 }, %struct.rtw_page_table { i16 16, i16 16, i16 16, i16 14, i16 1 }, %struct.rtw_page_table { i16 16, i16 16, i16 0, i16 0, i16 1 }, %struct.rtw_page_table { i16 16, i16 16, i16 16, i16 0, i16 1 }, %struct.rtw_page_table { i16 16, i16 16, i16 16, i16 14, i16 1 }], [46 x i8] zeroinitializer }, align 32
@phy_para_table_8821c = internal constant { %struct.rtw_intf_phy_para_table, [44 x i8] } { %struct.rtw_intf_phy_para_table { ptr @usb2_param_8821c, ptr @usb3_param_8821c, ptr @pcie_gen1_param_8821c, ptr @pcie_gen2_param_8821c, i8 1, i8 1, i8 2, i8 1 }, [44 x i8] zeroinitializer }, align 32
@rtw8821c_dig = internal global { [1 x %struct.rtw_hw_reg], [24 x i8] } { [1 x %struct.rtw_hw_reg] [%struct.rtw_hw_reg { i32 3152, i32 127 }], [24 x i8] zeroinitializer }, align 32
@rtw8821c_ltecoex_addr = internal constant { %struct.rtw_ltecoex_addr, [20 x i8] } { %struct.rtw_ltecoex_addr { i32 5888, i32 5892, i32 5896 }, [20 x i8] zeroinitializer }, align 32
@rtw8821c_mac_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_agc_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_bb_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_rf_a_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_rfe_defs = internal constant { [5 x %struct.rtw_rfe_def], [36 x i8] } { [5 x %struct.rtw_rfe_def] [%struct.rtw_rfe_def { ptr @rtw8821c_bb_pg_type0_tbl, ptr @rtw8821c_txpwr_lmt_type0_tbl, ptr null }, %struct.rtw_rfe_def zeroinitializer, %struct.rtw_rfe_def { ptr @rtw8821c_bb_pg_type0_tbl, ptr @rtw8821c_txpwr_lmt_type0_tbl, ptr @rtw8821c_agc_btg_type2_tbl }, %struct.rtw_rfe_def zeroinitializer, %struct.rtw_rfe_def { ptr @rtw8821c_bb_pg_type0_tbl, ptr @rtw8821c_txpwr_lmt_type0_tbl, ptr @rtw8821c_agc_btg_type2_tbl }], [36 x i8] zeroinitializer }, align 32
@rtw8821c_rtw_pwr_track_tbl = internal constant { %struct.rtw_pwr_track_tbl, [40 x i8] } { %struct.rtw_pwr_track_tbl { [3 x ptr] [ptr @rtw8821c_pwrtrk_5gb_n, ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5gb_n, i64 30), ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5gb_n, i64 60)], [3 x ptr] [ptr @rtw8821c_pwrtrk_5gb_p, ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5gb_p, i64 30), ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5gb_p, i64 60)], [3 x ptr] [ptr @rtw8821c_pwrtrk_5ga_n, ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5ga_n, i64 30), ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5ga_n, i64 60)], [3 x ptr] [ptr @rtw8821c_pwrtrk_5ga_p, ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5ga_p, i64 30), ptr getelementptr (i8, ptr @rtw8821c_pwrtrk_5ga_p, i64 60)], ptr @rtw8821c_pwrtrk_2gb_n, ptr @rtw8821c_pwrtrk_2gb_p, ptr @rtw8821c_pwrtrk_2ga_n, ptr @rtw8821c_pwrtrk_2ga_p, ptr @rtw8821c_pwrtrk_2g_cck_b_n, ptr @rtw8821c_pwrtrk_2g_cck_b_p, ptr @rtw8821c_pwrtrk_2g_cck_a_n, ptr @rtw8821c_pwrtrk_2g_cck_a_p, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt_rssi_step_8821c = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eeee", [28 x i8] zeroinitializer }, align 32
@wl_rssi_step_8821c = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"e-e(", [28 x i8] zeroinitializer }, align 32
@table_nsant_8821c = internal constant { [24 x %struct.coex_table_para], [32 x i8] } { [24 x %struct.coex_table_para] [%struct.coex_table_para { i32 -1, i32 -1 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 1716868437 }, %struct.coex_table_para { i32 -1431655766, i32 -1431655766 }, %struct.coex_table_para { i32 1515870810, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 -1 }, %struct.coex_table_para { i32 1526356730, i32 1526356730 }, %struct.coex_table_para { i32 1431655765, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 1515870810 }, %struct.coex_table_para { i32 1716868437, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 1526356730 }, %struct.coex_table_para { i32 -43521, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -43521 }, %struct.coex_table_para { i32 -1426063446, i32 1526356730 }, %struct.coex_table_para { i32 -1426063446, i32 -1431655766 }, %struct.coex_table_para { i32 -1, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -1, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 1526356730 }, %struct.coex_table_para { i32 -43521, i32 1526356730 }, %struct.coex_table_para { i32 1442797055, i32 1442797055 }], [32 x i8] zeroinitializer }, align 32
@table_sant_8821c = internal constant { [33 x %struct.coex_table_para], [88 x i8] } { [33 x %struct.coex_table_para] [%struct.coex_table_para { i32 1431655765, i32 1431655765 }, %struct.coex_table_para { i32 1431655765, i32 1431655765 }, %struct.coex_table_para { i32 1716868437, i32 1716868437 }, %struct.coex_table_para { i32 -1431655766, i32 -1431655766 }, %struct.coex_table_para { i32 1515870810, i32 1515870810 }, %struct.coex_table_para { i32 -84215046, i32 -84215046 }, %struct.coex_table_para { i32 1784304981, i32 -1431655766 }, %struct.coex_table_para { i32 1784305322, i32 1784305322 }, %struct.coex_table_para { i32 1784306266, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 1515870810 }, %struct.coex_table_para { i32 1716868437, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 1716868437, i32 1784306346 }, %struct.coex_table_para { i32 1716868437, i32 1789553322 }, %struct.coex_table_para { i32 1716868437, i32 1784306346 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 1794792186 }, %struct.coex_table_para { i32 -1426063446, i32 -84215046 }, %struct.coex_table_para { i32 -1437248086, i32 1515870810 }, %struct.coex_table_para { i32 -1437248086, i32 1784306266 }, %struct.coex_table_para { i32 -1437248086, i32 -1431655766 }, %struct.coex_table_para { i32 -1, i32 1431655765 }, %struct.coex_table_para { i32 -1, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 1515870890 }, %struct.coex_table_para { i32 1431655765, i32 1515870810 }, %struct.coex_table_para { i32 1431655765, i32 -1431655766 }, %struct.coex_table_para { i32 1716868437, i32 1784310362 }, %struct.coex_table_para { i32 1716872789, i32 1716872789 }, %struct.coex_table_para { i32 1716873898, i32 1784310442 }, %struct.coex_table_para { i32 -1, i32 1521113770 }, %struct.coex_table_para { i32 1448432981, i32 1515870890 }], [88 x i8] zeroinitializer }, align 32
@tdma_sant_8821c = internal constant { [28 x %struct.coex_tdma_para], [52 x i8] } { [28 x %struct.coex_tdma_para] [%struct.coex_tdma_para zeroinitializer, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a5\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a5\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\15" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\10\14" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10U" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\07\10T" }, %struct.coex_tdma_para { [5 x i8] c"QE\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q:\03\11P" }, %struct.coex_tdma_para { [5 x i8] c"Q0\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q!\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"QJ\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\030T" }, %struct.coex_tdma_para { [5 x i8] c"U\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"e\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10Q" }, %struct.coex_tdma_para { [5 x i8] c"Q!\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\11" }], [52 x i8] zeroinitializer }, align 32
@tdma_nsant_8821c = internal constant { [22 x %struct.coex_tdma_para], [50 x i8] } { [22 x %struct.coex_tdma_para] [%struct.coex_tdma_para { [5 x i8] c"\00\00\00@\00" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a%\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a5\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\10\14" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10U" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\07\10T" }, %struct.coex_tdma_para { [5 x i8] c"QE\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q:\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q0\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q!\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q!\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10P" }], [50 x i8] zeroinitializer }, align 32
@rf_para_tx_8821c = internal constant { [6 x %struct.coex_rf_para], [40 x i8] } { [6 x %struct.coex_rf_para] [%struct.coex_rf_para { i8 0, i8 0, i8 0, i8 7 }, %struct.coex_rf_para { i8 0, i8 20, i8 0, i8 7 }, %struct.coex_rf_para { i8 8, i8 17, i8 1, i8 4 }, %struct.coex_rf_para { i8 7, i8 18, i8 1, i8 4 }, %struct.coex_rf_para { i8 6, i8 19, i8 1, i8 4 }, %struct.coex_rf_para { i8 5, i8 20, i8 1, i8 4 }], [40 x i8] zeroinitializer }, align 32
@rf_para_rx_8821c = internal constant { [6 x %struct.coex_rf_para], [40 x i8] } { [6 x %struct.coex_rf_para] [%struct.coex_rf_para { i8 0, i8 0, i8 0, i8 7 }, %struct.coex_rf_para { i8 0, i8 20, i8 0, i8 7 }, %struct.coex_rf_para { i8 3, i8 24, i8 1, i8 5 }, %struct.coex_rf_para { i8 2, i8 26, i8 1, i8 5 }, %struct.coex_rf_para { i8 1, i8 27, i8 1, i8 5 }, %struct.coex_rf_para { i8 0, i8 28, i8 1, i8 5 }], [40 x i8] zeroinitializer }, align 32
@afh_5g_8821c = internal constant { [1 x %struct.coex_5g_afh_map], [24 x i8] } zeroinitializer, align 32
@coex_info_hw_regs_8821c = internal constant { [22 x %struct.rtw_reg_domain], [88 x i8] } { [22 x %struct.rtw_reg_domain] [%struct.rtw_reg_domain { i32 3248, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 3252, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 3258, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 1072, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1076, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1066, i32 65535, i8 1 }, %struct.rtw_reg_domain { i32 1062, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 1118, i32 8, i8 2 }, %struct.rtw_reg_domain { i32 1108, i32 65535, i8 1 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 76, i32 25165824, i8 0 }, %struct.rtw_reg_domain { i32 100, i32 1, i8 2 }, %struct.rtw_reg_domain { i32 1222, i32 16, i8 2 }, %struct.rtw_reg_domain { i32 64, i32 32, i8 2 }, %struct.rtw_reg_domain { i32 1, i32 1048575, i8 3 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 1360, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1314, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 2387, i32 2, i8 2 }, %struct.rtw_reg_domain { i32 3152, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 1546, i32 255, i8 2 }], [88 x i8] zeroinitializer }, align 32
@rtw8821c_hw_spec = dso_local global { %struct.rtw_chip_info, [84 x i8] } { %struct.rtw_chip_info { ptr @rtw8821c_ops, i8 3, ptr @.str, i32 0, i8 48, i8 16, i8 24, i8 8, i32 512, i32 512, i32 96, i32 65536, i32 16384, i32 0, i8 3, i8 -128, i8 0, i8 0, i8 28, i8 1, i8 1, i8 0, i8 0, i8 63, [6 x i16] zeroinitializer, ptr null, i8 0, i8 0, i8 1, i8 1, i8 2, i8 -40, ptr @card_enable_flow_8821c, ptr @card_disable_flow_8821c, ptr @rqpn_table_8821c, ptr @prioq_addrs_8821c, ptr @page_table_8821c, ptr @phy_para_table_8821c, ptr @rtw8821c_dig, ptr null, [2 x i32] [i32 10240, i32 11264], [2 x i32] [i32 3216, i32 3728], ptr null, i8 0, ptr @rtw8821c_ltecoex_addr, ptr @rtw8821c_mac_tbl, ptr @rtw8821c_agc_tbl, ptr @rtw8821c_bb_tbl, [4 x ptr] [ptr @rtw8821c_rf_a_tbl, ptr null, ptr null, ptr null], ptr null, ptr @rtw8821c_rfe_defs, i32 5, i8 0, i16 0, i8 8, i8 0, ptr @rtw8821c_rtw_pwr_track_tbl, i8 2, i8 1, ptr null, i8 0, i8 0, ptr null, ptr null, i8 0, [3 x i32] zeroinitializer, i32 420030278, i8 70, i8 1, i8 0, i8 0, i8 0, i8 0, i8 15, i8 2, i8 33, i8 24, i8 28, i8 22, i8 36, i8 54, i8 1, i8 6, i8 22, ptr @bt_rssi_step_8821c, ptr @wl_rssi_step_8821c, ptr @table_nsant_8821c, ptr @table_sant_8821c, ptr @tdma_sant_8821c, ptr @tdma_nsant_8821c, ptr @rf_para_tx_8821c, ptr @rf_para_rx_8821c, ptr @afh_5g_8821c, ptr null, ptr @coex_info_hw_regs_8821c, i32 0 }, [84 x i8] zeroinitializer }, align 32
@__kstrtab_rtw8821c_hw_spec = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw8821c_hw_spec = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw8821c_hw_spec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw8821c_hw_spec to i32), ptr @__kstrtab_rtw8821c_hw_spec, ptr @__kstrtabns_rtw8821c_hw_spec }, section "___ksymtab+rtw8821c_hw_spec", align 4
@__UNIQUE_ID_firmware495 = internal constant [43 x i8] c"rtw88_8821c.firmware=rtw88/rtw8821c_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_author496 = internal constant [39 x i8] c"rtw88_8821c.author=Realtek Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description497 = internal constant [63 x i8] c"rtw88_8821c.description=Realtek 802.11ac wireless 8821c driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file498 = internal constant [64 x i8] c"rtw88_8821c.file=drivers/net/wireless/realtek/rtw88/rtw88_8821c\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [33 x i8] c"rtw88_8821c.license=Dual BSD/GPL\00", section ".modinfo", align 1
@rtw8821c_txscale_tbl = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 129, i32 136, i32 144, i32 153, i32 162, i32 172, i32 182, i32 192, i32 204, i32 216, i32 229, i32 242, i32 257, i32 272, i32 288, i32 305, i32 323, i32 342, i32 362, i32 384, i32 407, i32 431, i32 456, i32 483, i32 512, i32 542, i32 574, i32 609, i32 645, i32 683, i32 723, i32 766, i32 811, i32 860, i32 910, i32 964, i32 1022], [44 x i8] zeroinitializer }, align 32
@__const.rtw8821c_get_bb_swing.swing2setting = private unnamed_addr constant [4 x i32] [i32 512, i32 362, i32 257, i32 182], align 4
@query_phy_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 572, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unused phy status page (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"query_phy_status\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/realtek/rtw88/rtw8821c.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@query_phy_status._entry_ptr = internal global ptr @query_phy_status._entry, section ".printk_index", align 4
@lna_gain_table_0 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\16\08\FA\EA\E1\D8\D2\CC", [24 x i8] zeroinitializer }, align 32
@lna_gain_table_1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A\06\02\FE\FA\F6\F2\EF\EC\E8\E4\E1\DE\DB\D8\D4", [16 x i8] zeroinitializer }, align 32
@get_cck_rx_pwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 502, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"incorrect lna index (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_cck_rx_pwr\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@get_cck_rx_pwr._entry_ptr = internal global ptr @get_cck_rx_pwr._entry, section ".printk_index", align 4
@rtw8821c_set_tx_power_index_by_rate.offset_txagc = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7424, i32 7552], [24 x i8] zeroinitializer }, align 32
@rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_rate_size = external dso_local local_unnamed_addr global [0 x i8], align 1
@rtw_rate_section = external dso_local local_unnamed_addr global [0 x ptr], align 4
@rtw8821c_do_iqk.do_iqk_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iqk counter=%d reload=%d do_iqk_cnt=%d n_iqk_fail(mask)=0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.rtw8821c_phy_cck_pd_set.pd = private unnamed_addr constant [5 x i8] c"\03\07\0D\0D\0D", align 1
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lv: (%d) -> (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"is_linked=%d, lv=%d, n_rx=%d, cs_ratio=0x%x, pd_th=0x%x, cck_fa_avg=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@rtw8821c_txagc_swing_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 983, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"swing index overflow\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw8821c_txagc_swing_offset\00", [36 x i8] zeroinitializer }, align 32
@rtw8821c_txagc_swing_offset._entry_ptr = internal global ptr @rtw8821c_txagc_swing_offset._entry, section ".printk_index", align 4
@rtw8821c_bf_config_bfee._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 1114, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wrong bfee role\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw8821c_bf_config_bfee\00", [40 x i8] zeroinitializer }, align 32
@rtw8821c_bf_config_bfee._entry_ptr = internal global ptr @rtw8821c_bf_config_bfee._entry, section ".printk_index", align 4
@trans_carddis_to_cardemu_8821c = internal global { [7 x %struct.rtw_pwr_seq_cmd], [40 x i8] } { [7 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 49, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 50, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 74, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 -104, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 768, i8 -1, i8 4, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 769, i8 -1, i8 4, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@trans_cardemu_to_act_8821c = internal global { [20 x %struct.rtw_pwr_seq_cmd], [32 x i8] } { [20 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 3, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 1, i8 -1, i8 3, i8 3, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 0, i8 -1, i8 3, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 28, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 117, i8 -1, i8 4, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 2, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 117, i8 -1, i8 4, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 -128, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 24, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 4291, i8 -1, i8 2, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 15, i8 1, i8 8, i8 8 }, %struct.rtw_pwr_seq_cmd { i16 116, i8 -1, i8 4, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 34, i8 -1, i8 4, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 98, i8 -1, i8 4, i8 1, i8 -32, i8 -32 }, %struct.rtw_pwr_seq_cmd { i16 97, i8 -1, i8 4, i8 1, i8 -32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 124, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@trans_act_to_cardemu_8821c = internal global { [11 x %struct.rtw_pwr_seq_cmd], [40 x i8] } { [11 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 147, i8 -1, i8 15, i8 1, i8 8, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 31, i8 -1, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 73, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 2, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 4291, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 15, i8 1, i8 8, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 0, i8 -1, i8 3, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@trans_cardemu_to_carddis_8821c = internal global { [22 x %struct.rtw_pwr_seq_cmd], [48 x i8] } { [22 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 7, i8 -1, i8 3, i8 1, i8 -1, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 15, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 4, i8 1, i8 4, i8 4 }, %struct.rtw_pwr_seq_cmd { i16 74, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 16, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 79, i8 -1, i8 1, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 70, i8 -1, i8 1, i8 1, i8 64, i8 64 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 4, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 70, i8 -1, i8 1, i8 1, i8 -128, i8 -128 }, %struct.rtw_pwr_seq_cmd { i16 98, i8 -1, i8 1, i8 1, i8 16, i8 16 }, %struct.rtw_pwr_seq_cmd { i16 129, i8 -1, i8 15, i8 1, i8 -64, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 3, i8 1, i8 24, i8 8 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 49, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 50, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 144, i8 -1, i8 6, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 68, i8 -1, i8 1, i8 49, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 64, i8 -1, i8 1, i8 49, i8 -1, i8 -112 }, %struct.rtw_pwr_seq_cmd { i16 65, i8 -1, i8 1, i8 49, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 66, i8 -1, i8 1, i8 49, i8 -1, i8 4 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@usb2_param_8821c = internal constant { [1 x %struct.rtw_intf_phy_para], [22 x i8] } { [1 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [22 x i8] zeroinitializer }, align 32
@usb3_param_8821c = internal constant { [1 x %struct.rtw_intf_phy_para], [22 x i8] } { [1 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [22 x i8] zeroinitializer }, align 32
@pcie_gen1_param_8821c = internal constant { [2 x %struct.rtw_intf_phy_para], [44 x i8] } { [2 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 9, i16 25472, i16 0, i16 -1, i16 0 }, %struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [44 x i8] zeroinitializer }, align 32
@pcie_gen2_param_8821c = internal constant { [1 x %struct.rtw_intf_phy_para], [22 x i8] } { [1 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [22 x i8] zeroinitializer }, align 32
@rtw8821c_bb_pg_type0_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_txpwr_lmt_type0_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_agc_btg_type2_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8821c_pwrtrk_5gb_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\03\03\03\04\04\05\05\06\06\06\07\08\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\01\01\02\03\03\04\04\05\05\05\06\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\02\02\03\04\04\04\04\05\05\06\06\07\07\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C"], [38 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_5gb_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\01\02\02\03\03\04\04\05\05\05\06\07\07\08\08\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\01\01\02\03\03\03\04\04\04\05\06\06\07\07\08\08\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C"], [38 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_5ga_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\03\03\03\04\04\05\05\06\06\06\07\08\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\01\01\02\03\03\04\04\05\05\05\06\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\02\02\03\04\04\04\04\05\05\06\06\07\07\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C"], [38 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_5ga_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\01\02\02\03\03\04\04\05\05\05\06\07\07\08\08\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C", [30 x i8] c"\00\01\01\01\02\03\03\03\04\04\04\05\06\06\07\07\08\08\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C\0C"], [38 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2gb_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\01\01\01\02\02\02\03\03\03\03\03\04\04\04\04\05\05\05\05\06\06\06\07\07\08\08\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2gb_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\01\02\02\02\03\03\03\03\04\04\05\05\05\05\06\06\06\07\07\07\08\08\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2ga_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\01\01\01\02\02\02\03\03\03\03\03\04\04\04\04\05\05\05\05\06\06\06\07\07\08\08\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2ga_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\01\02\02\02\03\03\03\03\04\04\05\05\05\05\06\06\06\07\07\07\08\08\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2g_cck_b_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\05\05\05\05\06\06\07\07\08\08\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2g_cck_b_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\01\02\02\02\03\03\03\04\04\04\05\05\05\06\06\07\07\07\08\08\09\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2g_cck_a_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\05\05\05\05\06\06\07\07\08\08\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtw8821c_pwrtrk_2g_cck_a_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\01\02\02\02\03\03\03\04\04\04\05\05\05\06\06\07\07\07\08\08\09\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"rtw8821c_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1573, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1878, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"card_enable_flow_8821c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1458, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"card_disable_flow_8821c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1464, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"rqpn_table_8821c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1538, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"prioq_addrs_8821c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1557, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"page_table_8821c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1529, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"phy_para_table_8821c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1502, i32 45 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"rtw8821c_dig\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1519, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"rtw8821c_ltecoex_addr\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1523, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"rtw8821c_rfe_defs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1513, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"rtw8821c_rtw_pwr_track_tbl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1827, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"bt_rssi_step_8821c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1603, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"wl_rssi_step_8821c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1602, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"table_nsant_8821c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1643, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"table_sant_8821c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1606, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"tdma_sant_8821c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1671, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"tdma_nsant_8821c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1703, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"rf_para_tx_8821c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1731, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"rf_para_rx_8821c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1740, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"afh_5g_8821c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1728, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"coex_info_hw_regs_8821c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1850, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"rtw8821c_hw_spec\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1875, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"rtw8821c_txscale_tbl\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 79, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 572, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"lna_gain_table_0\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 19, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"lna_gain_table_1\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 20, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 502, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"offset_txagc\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 622, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"phy_pwr_idx\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 623, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant [11 x i8] c"do_iqk_cnt\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 710, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 731, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1123, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1131, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 983, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1114, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"trans_carddis_to_cardemu_8821c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1145, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"trans_cardemu_to_act_8821c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1183, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"trans_act_to_cardemu_8821c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1287, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"trans_cardemu_to_carddis_8821c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1345, i32 31 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"usb2_param_8821c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1470, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"usb3_param_8821c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1477, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant [22 x i8] c"pcie_gen1_param_8821c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1484, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant [22 x i8] c"pcie_gen2_param_8821c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1495, i32 39 }
@___asan_gen_.196 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_5gb_n\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1751, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_5gb_p\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1760, i32 17 }
@___asan_gen_.202 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_5ga_n\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1769, i32 17 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_5ga_p\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1778, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_2gb_n\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1787, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_2gb_p\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1792, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_2ga_n\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1797, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"rtw8821c_pwrtrk_2ga_p\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1802, i32 17 }
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"rtw8821c_pwrtrk_2g_cck_b_n\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1807, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"rtw8821c_pwrtrk_2g_cck_b_p\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1812, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant [27 x i8] c"rtw8821c_pwrtrk_2g_cck_a_n\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1817, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant [27 x i8] c"rtw8821c_pwrtrk_2g_cck_a_p\00", align 1
@___asan_gen_.230 = private constant [49 x i8] c"../drivers/net/wireless/realtek/rtw88/rtw8821c.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1822, i32 17 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_description497, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_firmware495, ptr @__UNIQUE_ID_license499, ptr @__ksymtab_rtw8821c_hw_spec, ptr @get_cck_rx_pwr._entry, ptr @get_cck_rx_pwr._entry_ptr, ptr @query_phy_status._entry, ptr @query_phy_status._entry_ptr, ptr @rtw8821c_bf_config_bfee._entry, ptr @rtw8821c_bf_config_bfee._entry_ptr, ptr @rtw8821c_txagc_swing_offset._entry, ptr @rtw8821c_txagc_swing_offset._entry_ptr, ptr @rtw8821c_ops, ptr @.str, ptr @card_enable_flow_8821c, ptr @card_disable_flow_8821c, ptr @rqpn_table_8821c, ptr @prioq_addrs_8821c, ptr @page_table_8821c, ptr @phy_para_table_8821c, ptr @rtw8821c_dig, ptr @rtw8821c_ltecoex_addr, ptr @rtw8821c_rfe_defs, ptr @rtw8821c_rtw_pwr_track_tbl, ptr @bt_rssi_step_8821c, ptr @wl_rssi_step_8821c, ptr @table_nsant_8821c, ptr @table_sant_8821c, ptr @tdma_sant_8821c, ptr @tdma_nsant_8821c, ptr @rf_para_tx_8821c, ptr @rf_para_rx_8821c, ptr @afh_5g_8821c, ptr @coex_info_hw_regs_8821c, ptr @rtw8821c_hw_spec, ptr @rtw8821c_txscale_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @lna_gain_table_0, ptr @lna_gain_table_1, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rtw8821c_set_tx_power_index_by_rate.offset_txagc, ptr @rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx, ptr @rtw8821c_do_iqk.do_iqk_cnt, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @trans_carddis_to_cardemu_8821c, ptr @trans_cardemu_to_act_8821c, ptr @trans_act_to_cardemu_8821c, ptr @trans_cardemu_to_carddis_8821c, ptr @usb2_param_8821c, ptr @usb3_param_8821c, ptr @pcie_gen1_param_8821c, ptr @pcie_gen2_param_8821c, ptr @rtw8821c_pwrtrk_5gb_n, ptr @rtw8821c_pwrtrk_5gb_p, ptr @rtw8821c_pwrtrk_5ga_n, ptr @rtw8821c_pwrtrk_5ga_p, ptr @rtw8821c_pwrtrk_2gb_n, ptr @rtw8821c_pwrtrk_2gb_p, ptr @rtw8821c_pwrtrk_2ga_n, ptr @rtw8821c_pwrtrk_2ga_p, ptr @rtw8821c_pwrtrk_2g_cck_b_n, ptr @rtw8821c_pwrtrk_2g_cck_b_p, ptr @rtw8821c_pwrtrk_2g_cck_a_n, ptr @rtw8821c_pwrtrk_2g_cck_a_p], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_ops to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_enable_flow_8821c to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_disable_flow_8821c to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rqpn_table_8821c to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prioq_addrs_8821c to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_table_8821c to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_para_table_8821c to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_dig to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_ltecoex_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_rfe_defs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_rtw_pwr_track_tbl to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_rssi_step_8821c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl_rssi_step_8821c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_nsant_8821c to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_sant_8821c to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdma_sant_8821c to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdma_nsant_8821c to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_para_tx_8821c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_para_rx_8821c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afh_5g_8821c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coex_info_hw_regs_8821c to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_hw_spec to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_txscale_tbl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @query_phy_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lna_gain_table_0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lna_gain_table_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cck_rx_pwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_set_tx_power_index_by_rate.offset_txagc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_do_iqk.do_iqk_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_txagc_swing_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_bf_config_bfee._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_carddis_to_cardemu_8821c to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_cardemu_to_act_8821c to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_act_to_cardemu_8821c to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_cardemu_to_carddis_8821c to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_param_8821c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_param_8821c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_gen1_param_8821c to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_gen2_param_8821c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_5gb_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_5gb_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_5ga_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_5ga_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2gb_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2gb_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2ga_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2ga_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2g_cck_b_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2g_cck_b_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2g_cck_a_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8821c_pwrtrk_2g_cck_a_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8821c_mac_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 1109, i8 noundef zeroext 112) #8
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %7(ptr noundef %rtwdev, i32 noundef 1118) #8
  %or5.i = or i8 %call.i.i, 4
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8.i.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 1118, i8 noundef zeroext %or5.i) #8
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %write8.i41 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %write8.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i41, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1253, i8 noundef zeroext -28) #8
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write8.i43 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %write8.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8.i43, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 1254, i8 noundef zeroext 9) #8
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 1224, i32 noundef 538970367) #8
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write16.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 1230, i16 noundef zeroext 2049) #8
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %write8.i47 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %write8.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8.i47, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 5192, i8 noundef zeroext 6) #8
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %write8.i49 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i49, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 5194, i8 noundef zeroext 6) #8
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %write8.i51 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %write8.i51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8.i51, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 5196, i8 noundef zeroext 6) #8
  %40 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i, align 8
  %write8.i53 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %write8.i53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8.i53, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 5198, i8 noundef zeroext 6) #8
  %44 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i, align 8
  %read8.i.i55 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %read8.i.i55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8.i.i55, align 4
  %call.i.i56 = tail call zeroext i8 %47(ptr noundef %rtwdev, i32 noundef 1152) #8
  %or5.i57 = or i8 %call.i.i56, 32
  %48 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i, align 8
  %write8.i.i58 = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %write8.i.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write8.i.i58, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 1152, i8 noundef zeroext %or5.i57) #8
  %52 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i, align 8
  %read8.i.i60 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %read8.i.i60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8.i.i60, align 4
  %call.i.i61 = tail call zeroext i8 %55(ptr noundef %rtwdev, i32 noundef 1460) #8
  %and.i = and i8 %call.i.i61, -113
  %56 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i, align 8
  %write8.i.i62 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %write8.i.i62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8.i.i62, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 1460, i8 noundef zeroext %and.i) #8
  %60 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i, align 8
  %write16.i64 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %write16.i64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write16.i64, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 1314, i16 noundef zeroext 0) #8
  %64 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i, align 8
  %write8.i66 = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %write8.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8.i66, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 1307, i8 noundef zeroext 9) #8
  %68 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i, align 8
  %write8.i68 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %write8.i68 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8.i68, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef 1298, i8 noundef zeroext 25) #8
  %72 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i, align 8
  %write32.i70 = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %write32.i70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i70, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 1300, i32 noundef 269487626) #8
  %76 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i, align 8
  %write16.i72 = getelementptr inbounds %struct.rtw_hci_ops, ptr %77, i32 0, i32 15
  %78 = ptrtoint ptr %write16.i72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write16.i72, align 4
  tail call void %79(ptr noundef %rtwdev, i32 noundef 1282, i16 noundef zeroext 390) #8
  %80 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i, align 8
  %write16.i74 = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 15
  %82 = ptrtoint ptr %write16.i74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write16.i74, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 1286, i16 noundef zeroext 956) #8
  %84 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i, align 8
  %write32.i76 = getelementptr inbounds %struct.rtw_hci_ops, ptr %85, i32 0, i32 16
  %86 = ptrtoint ptr %write32.i76 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write32.i76, align 4
  tail call void %87(ptr noundef %rtwdev, i32 noundef 1348, i32 noundef 1769477) #8
  %88 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i, align 8
  %write16.i78 = getelementptr inbounds %struct.rtw_hci_ops, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %write16.i78 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write16.i78, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 1374, i16 noundef zeroext 12336) #8
  %92 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i, align 8
  %read8.i.i80 = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %read8.i.i80 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read8.i.i80, align 4
  %call.i.i81 = tail call zeroext i8 %95(ptr noundef %rtwdev, i32 noundef 1360) #8
  %or5.i82 = or i8 %call.i.i81, 8
  %96 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i, align 8
  %write8.i.i83 = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %write8.i.i83 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8.i.i83, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %or5.i82) #8
  %100 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i, align 8
  %write32.i85 = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %write32.i85 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i85, align 4
  tail call void %103(ptr noundef %rtwdev, i32 noundef 1344, i32 noundef 25604) #8
  %104 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i, align 8
  %write8.i87 = getelementptr inbounds %struct.rtw_hci_ops, ptr %105, i32 0, i32 14
  %106 = ptrtoint ptr %write8.i87 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8.i87, align 4
  tail call void %107(ptr noundef %rtwdev, i32 noundef 1368, i8 noundef zeroext 4) #8
  %108 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i, align 8
  %write8.i89 = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %write8.i89 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write8.i89, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef 1369, i8 noundef zeroext 2) #8
  %112 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i, align 8
  %read8.i.i91 = getelementptr inbounds %struct.rtw_hci_ops, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %read8.i.i91 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read8.i.i91, align 4
  %call.i.i92 = tail call zeroext i8 %115(ptr noundef %rtwdev, i32 noundef 1313) #8
  %and.i93 = and i8 %call.i.i92, -17
  %116 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i, align 8
  %write8.i.i94 = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 14
  %118 = ptrtoint ptr %write8.i.i94 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write8.i.i94, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef 1313, i8 noundef zeroext %and.i93) #8
  %120 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hci.i, align 8
  %write32.i96 = getelementptr inbounds %struct.rtw_hci_ops, ptr %121, i32 0, i32 16
  %122 = ptrtoint ptr %write32.i96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i96, align 4
  tail call void %123(ptr noundef %rtwdev, i32 noundef 1696, i32 noundef 268435455) #8
  %124 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hci.i, align 8
  %write16.i98 = getelementptr inbounds %struct.rtw_hci_ops, ptr %125, i32 0, i32 15
  %126 = ptrtoint ptr %write16.i98 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write16.i98, align 4
  tail call void %127(ptr noundef %rtwdev, i32 noundef 1700, i16 noundef zeroext -1) #8
  %128 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hci.i, align 8
  %write32.i100 = getelementptr inbounds %struct.rtw_hci_ops, ptr %129, i32 0, i32 16
  %130 = ptrtoint ptr %write32.i100 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write32.i100, align 4
  tail call void %131(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef -469753330) #8
  %132 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i, align 8
  %write8.i102 = getelementptr inbounds %struct.rtw_hci_ops, ptr %133, i32 0, i32 14
  %134 = ptrtoint ptr %write8.i102 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write8.i102, align 4
  tail call void %135(ptr noundef %rtwdev, i32 noundef 1548, i8 noundef zeroext 24) #8
  %136 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i, align 8
  %write8.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %137, i32 0, i32 14
  %138 = ptrtoint ptr %write8.i104 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write8.i104, align 4
  tail call void %139(ptr noundef %rtwdev, i32 noundef 1542, i8 noundef zeroext 48) #8
  %140 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i, align 8
  %write8.i106 = getelementptr inbounds %struct.rtw_hci_ops, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %write8.i106 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write8.i106, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 1541, i8 noundef zeroext 48) #8
  %144 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i, align 8
  %write8.i108 = getelementptr inbounds %struct.rtw_hci_ops, ptr %145, i32 0, i32 14
  %146 = ptrtoint ptr %write8.i108 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write8.i108, align 4
  tail call void %147(ptr noundef %rtwdev, i32 noundef 1593, i8 noundef zeroext 64) #8
  %148 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i, align 8
  %read8.i.i110 = getelementptr inbounds %struct.rtw_hci_ops, ptr %149, i32 0, i32 11
  %150 = ptrtoint ptr %read8.i.i110 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read8.i.i110, align 4
  %call.i.i111 = tail call zeroext i8 %151(ptr noundef %rtwdev, i32 noundef 1644) #8
  %or5.i112 = or i8 %call.i.i111, 2
  %152 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i, align 8
  %write8.i.i113 = getelementptr inbounds %struct.rtw_hci_ops, ptr %153, i32 0, i32 14
  %154 = ptrtoint ptr %write8.i.i113 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write8.i.i113, align 4
  tail call void %155(ptr noundef %rtwdev, i32 noundef 1644, i8 noundef zeroext %or5.i112) #8
  %156 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hci.i, align 8
  %read8.i.i115 = getelementptr inbounds %struct.rtw_hci_ops, ptr %157, i32 0, i32 11
  %158 = ptrtoint ptr %read8.i.i115 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read8.i.i115, align 4
  %call.i.i116 = tail call zeroext i8 %159(ptr noundef %rtwdev, i32 noundef 1816) #8
  %or5.i117 = or i8 %call.i.i116, 64
  %160 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hci.i, align 8
  %write8.i.i118 = getelementptr inbounds %struct.rtw_hci_ops, ptr %161, i32 0, i32 14
  %162 = ptrtoint ptr %write8.i.i118 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write8.i.i118, align 4
  tail call void %163(ptr noundef %rtwdev, i32 noundef 1816, i8 noundef zeroext %or5.i117) #8
  %164 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hci.i, align 8
  %write32.i120 = getelementptr inbounds %struct.rtw_hci_ops, ptr %165, i32 0, i32 16
  %166 = ptrtoint ptr %write32.i120 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32.i120, align 4
  tail call void %167(ptr noundef %rtwdev, i32 noundef 2008, i32 noundef -1333723071) #8
  %168 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hci.i, align 8
  %write8.i122 = getelementptr inbounds %struct.rtw_hci_ops, ptr %169, i32 0, i32 14
  %170 = ptrtoint ptr %write8.i122 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write8.i122, align 4
  tail call void %171(ptr noundef %rtwdev, i32 noundef 2004, i8 noundef zeroext -104) #8
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8821c_read_efuse(ptr nocapture noundef %rtwdev, ptr nocapture noundef readonly %log_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe_option = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 19
  %0 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rfe_option, align 2
  %rfe_option2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %2 = ptrtoint ptr %rfe_option2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rfe_option2, align 2
  %rf_board_option = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 10
  %3 = ptrtoint ptr %rf_board_option to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rf_board_option, align 1
  %rf_board_option3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %rf_board_option3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %rf_board_option3, align 1
  %xtal_k = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 4
  %6 = ptrtoint ptr %xtal_k to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xtal_k, align 1
  %crystal_cap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %crystal_cap, align 1
  %pa_type = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 7
  %9 = ptrtoint ptr %pa_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pa_type, align 2
  %pa_type_2g = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 23
  %11 = ptrtoint ptr %pa_type_2g to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %pa_type_2g, align 4
  %12 = load i8, ptr %pa_type, align 2
  %pa_type_5g = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 24
  %13 = ptrtoint ptr %pa_type_5g to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %pa_type_5g, align 1
  %lna_type_2g = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 8
  %14 = ptrtoint ptr %lna_type_2g to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lna_type_2g, align 1
  %lna_type_2g5 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 17
  %16 = ptrtoint ptr %lna_type_2g5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %lna_type_2g5, align 2
  %lna_type_5g = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 9
  %17 = ptrtoint ptr %lna_type_5g to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lna_type_5g, align 1
  %lna_type_5g7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 18
  %19 = ptrtoint ptr %lna_type_5g7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %lna_type_5g7, align 1
  %channel_plan = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 3
  %20 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %channel_plan, align 2
  %channel_plan8 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %channel_plan8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %channel_plan8, align 2
  %country_code = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 20
  %23 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %country_code, align 1
  %country_code10 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %country_code10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %country_code10, align 1
  %arrayidx13 = getelementptr %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 20, i32 1
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6, i32 1
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx15, align 1
  %rf_bt_setting = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 12
  %29 = ptrtoint ptr %rf_bt_setting to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rf_bt_setting, align 1
  %bt_setting = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 33
  %31 = ptrtoint ptr %bt_setting to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bt_setting, align 2
  %32 = load i8, ptr %rf_board_option, align 1
  %33 = and i8 %32, 7
  %regd = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 15
  %34 = ptrtoint ptr %regd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %regd, align 4
  %thermal_meter = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 5
  %35 = ptrtoint ptr %thermal_meter to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %thermal_meter, align 2
  %thermal_meter18 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 10
  %37 = ptrtoint ptr %thermal_meter18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %thermal_meter18, align 4
  %38 = load i8, ptr %thermal_meter, align 2
  %thermal_meter_k = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 11
  %39 = ptrtoint ptr %thermal_meter_k to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %thermal_meter_k, align 4
  %tx_bb_swing_setting_2g = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 15
  %40 = ptrtoint ptr %tx_bb_swing_setting_2g to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_bb_swing_setting_2g, align 2
  %tx_bb_swing_setting_2g21 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 29
  %42 = ptrtoint ptr %tx_bb_swing_setting_2g21 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tx_bb_swing_setting_2g21, align 2
  %tx_bb_swing_setting_5g = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 16
  %43 = ptrtoint ptr %tx_bb_swing_setting_5g to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_bb_swing_setting_5g, align 1
  %tx_bb_swing_setting_5g22 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 30
  %45 = ptrtoint ptr %tx_bb_swing_setting_5g22 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %tx_bb_swing_setting_5g22, align 1
  %arrayidx24 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 0
  %arrayidx26 = getelementptr %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 2, i32 0
  %46 = call ptr @memcpy(ptr %arrayidx24, ptr %arrayidx26, i32 42)
  %arrayidx24.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 1
  %arrayidx26.1 = getelementptr %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 2, i32 1
  %47 = call ptr @memcpy(ptr %arrayidx24.1, ptr %arrayidx26.1, i32 42)
  %arrayidx24.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 2
  %arrayidx26.2 = getelementptr %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 2, i32 2
  %48 = call ptr @memcpy(ptr %arrayidx24.2, ptr %arrayidx26.2, i32 42)
  %arrayidx24.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 3
  %arrayidx26.3 = getelementptr %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 2, i32 3
  %49 = call ptr @memcpy(ptr %arrayidx24.3, ptr %arrayidx26.3, i32 42)
  %50 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 4, label %entry.if.then_crit_edge88
  ]

entry.if.then_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge88
  %51 = call ptr @memcpy(ptr %arrayidx24, ptr %arrayidx26.1, i32 18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cond = icmp eq i32 %53, 0
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 4
  %54 = getelementptr inbounds %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 22
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtw8821c_efuse, ptr %log_map, i32 0, i32 22, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 4, i32 4
  %60 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr1.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_phy_set_param(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 2) #8
  %4 = or i8 %call.i, 64
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %4) #8
  %9 = or i8 %call.i, 67
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %write8.i63 = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %write8.i63 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8.i63, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %9) #8
  %14 = and i8 %9, -4
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %write8.i65 = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %write8.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8.i65, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %14) #8
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %write8.i67 = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %write8.i67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8.i67, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %9) #8
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %write8.i69 = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %write8.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8.i69, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 31, i8 noundef zeroext 7) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %write8.i71 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %write8.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8.i71, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 239, i8 noundef zeroext 7) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %31 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %34(ptr noundef %rtwdev, i32 noundef 2056) #8
  %and.i = and i32 %call.i.i, -805306369
  %35 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i.i, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %and.i) #8
  tail call void @rtw_phy_load_tables(ptr noundef %rtwdev) #8
  %crystal_cap10 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %39 = ptrtoint ptr %crystal_cap10 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %crystal_cap10, align 1
  %41 = and i8 %40, 63
  %conv14 = zext i8 %41 to i32
  %42 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i, align 8
  %read32.i.i73 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %read32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i73, align 4
  %call.i.i74 = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 36) #8
  %and21.i = and i32 %call.i.i74, -2113929217
  %shl.i = shl nuw nsw i32 %conv14, 25
  %or.i = or i32 %and21.i, %shl.i
  %46 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i, align 8
  %write32.i.i75 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %write32.i.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i75, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 36, i32 noundef %or.i) #8
  %50 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i, align 8
  %read32.i.i77 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %read32.i.i77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i.i77, align 4
  %call.i.i78 = tail call i32 %53(ptr noundef %rtwdev, i32 noundef 40) #8
  %and21.i79 = and i32 %call.i.i78, -127
  %shl.i80 = shl nuw nsw i32 %conv14, 1
  %or.i82 = or i32 %and21.i79, %shl.i80
  %54 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i, align 8
  %write32.i.i83 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %write32.i.i83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i83, align 4
  tail call void %57(ptr noundef %rtwdev, i32 noundef 40, i32 noundef %or.i82) #8
  %58 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i, align 8
  %read32.i.i85 = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %read32.i.i85 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i85, align 4
  %call.i.i86 = tail call i32 %61(ptr noundef %rtwdev, i32 noundef 2604) #8
  %and21.i87 = and i32 %call.i.i86, -4456449
  %62 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i, align 8
  %write32.i.i88 = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %write32.i.i88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i88, align 4
  tail call void %65(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and21.i87) #8
  %66 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i, align 8
  %read32.i.i90 = getelementptr inbounds %struct.rtw_hci_ops, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %read32.i.i90 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32.i.i90, align 4
  %call.i.i91 = tail call i32 %69(ptr noundef %rtwdev, i32 noundef 2056) #8
  %or.i92 = or i32 %call.i.i91, 805306368
  %70 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i, align 8
  %write32.i.i93 = getelementptr inbounds %struct.rtw_hci_ops, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %write32.i.i93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i93, align 4
  tail call void %73(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i92) #8
  %74 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i, align 8
  %read32.i.i95 = getelementptr inbounds %struct.rtw_hci_ops, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %read32.i.i95 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32.i.i95, align 4
  %call.i.i96 = tail call i32 %77(ptr noundef %rtwdev, i32 noundef 2596) #8
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %78 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip, align 4
  %ch_param = getelementptr inbounds %struct.rtw_chip_info, ptr %79, i32 0, i32 65
  %80 = ptrtoint ptr %ch_param to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call.i.i96, ptr %ch_param, align 4
  %81 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i, align 8
  %read32.i.i98 = getelementptr inbounds %struct.rtw_hci_ops, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %read32.i.i98 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.i98, align 4
  %call.i.i99 = tail call i32 %84(ptr noundef %rtwdev, i32 noundef 2600) #8
  %85 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip, align 4
  %arrayidx20 = getelementptr %struct.rtw_chip_info, ptr %86, i32 0, i32 65, i32 1
  %87 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call.i.i99, ptr %arrayidx20, align 4
  %88 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i, align 8
  %read32.i.i101 = getelementptr inbounds %struct.rtw_hci_ops, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %read32.i.i101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i101, align 4
  %call.i.i102 = tail call i32 %91(ptr noundef %rtwdev, i32 noundef 2732) #8
  %92 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chip, align 4
  %arrayidx24 = getelementptr %struct.rtw_chip_info, ptr %93, i32 0, i32 65, i32 2
  %94 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call.i.i102, ptr %arrayidx24, align 4
  tail call void @rtw_phy_init(ptr noundef %rtwdev) #8
  %95 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i, align 8
  %read8.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %read8.i104 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read8.i104, align 4
  %call.i105 = tail call zeroext i8 %98(ptr noundef %rtwdev, i32 noundef 2730) #8
  %99 = and i8 %call.i105, 31
  %cck_pd_default = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 46
  %100 = ptrtoint ptr %cck_pd_default to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %cck_pd_default, align 8
  %101 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %102, i32 0, i32 13
  %103 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %104(ptr noundef %rtwdev, i32 noundef 3100) #8
  %shr.i.i.i = lshr i32 %call.i.i.i.i, 21
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %indvars.iv.i.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [37 x i32], ptr @rtw8821c_txscale_tbl, i32 0, i32 %indvars.iv.i.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %106)
  %cmp2.i.i = icmp eq i32 %shr.i.i.i, %106
  br i1 %cmp2.i.i, label %rtw8821c_get_swing_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 37
  br i1 %exitcond.not.i.i, label %for.inc.i.i.rtw8821c_pwrtrack_init.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.rtw8821c_pwrtrack_init.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw8821c_pwrtrack_init.exit

rtw8821c_get_swing_index.exit.i:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = trunc i32 %indvars.iv.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %107)
  %cmp.i = icmp ugt i8 %107, 36
  %spec.select.i = select i1 %cmp.i, i8 24, i8 %107
  br label %rtw8821c_pwrtrack_init.exit

rtw8821c_pwrtrack_init.exit:                      ; preds = %rtw8821c_get_swing_index.exit.i, %for.inc.i.i.rtw8821c_pwrtrack_init.exit_crit_edge
  %.sink.i = phi i8 [ %spec.select.i, %rtw8821c_get_swing_index.exit.i ], [ 24, %for.inc.i.i.rtw8821c_pwrtrack_init.exit_crit_edge ]
  %default_ofdm_index3.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 33
  %108 = ptrtoint ptr %default_ofdm_index3.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink.i, ptr %default_ofdm_index3.i, align 2
  %avg_thermal.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 36
  %109 = ptrtoint ptr %avg_thermal.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %avg_thermal.i, align 4
  %delta_power_index.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31
  %110 = ptrtoint ptr %delta_power_index.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %delta_power_index.i, align 2
  %delta_power_index_last.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 32
  %111 = ptrtoint ptr %delta_power_index_last.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %delta_power_index_last.i, align 2
  %pwr_trk_triggered.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 34
  %112 = ptrtoint ptr %pwr_trk_triggered.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %pwr_trk_triggered.i, align 1
  %pwr_trk_init_trigger.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %113 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %pwr_trk_init_trigger.i, align 4
  %thermal_meter_k.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 11
  %114 = ptrtoint ptr %thermal_meter_k.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %thermal_meter_k.i, align 4
  %thermal_meter_k6.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 29
  %116 = ptrtoint ptr %thermal_meter_k6.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %thermal_meter_k6.i, align 4
  tail call void @rtw_bf_phy_init(ptr noundef %rtwdev) #8
  %117 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i, align 8
  %write32.i.i107 = getelementptr inbounds %struct.rtw_hci_ops, ptr %118, i32 0, i32 16
  %119 = ptrtoint ptr %write32.i.i107 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i107, align 4
  tail call void %120(ptr noundef %rtwdev, i32 noundef 7316, i32 noundef -1342197761) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_set_channel(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_chan_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp.i = icmp ult i8 %channel, 15
  br i1 %cmp.i, label %if.then.i, label %if.else12.i

if.then.i:                                        ; preds = %entry
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 2056) #8
  %or.i.i = or i32 %call.i.i.i, 268435456
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i.i) #8
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i194.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i194.i, align 4
  %call.i.i195.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 1108) #8
  %and21.i196.i = and i32 %call.i.i195.i, -129
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i197.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i197.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1108, i32 noundef %and21.i196.i) #8
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i199.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i199.i, align 4
  %call.i.i200.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 2688) #8
  %and21.i201.i = and i32 %call.i.i200.i, -262145
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i202.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i202.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 2688, i32 noundef %and21.i201.i) #8
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i204.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i204.i, align 4
  %call.i.i205.i = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 2068) #8
  %and21.i206.i = and i32 %call.i.i205.i, -64513
  %or.i207.i = or i32 %and21.i206.i, 15360
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i208.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i208.i, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 2068, i32 noundef %or.i207.i) #8
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i210.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i210.i, align 4
  %call.i.i211.i = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 3100) #8
  %and21.i212.i = and i32 %call.i.i211.i, -3841
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i213.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i213.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 3100, i32 noundef %and21.i212.i) #8
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i215.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %read32.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i215.i, align 4
  %call.i.i216.i = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 2144) #8
  %and21.i217.i = and i32 %call.i.i216.i, -536739841
  %or.i218.i = or i32 %and21.i217.i, 315883520
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i219.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %write32.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i219.i, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i218.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp3.i = icmp eq i8 %channel, 14
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i221.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %read32.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i221.i, align 4
  %call.i.i222.i = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 2596) #8
  %52 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i223.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %write32.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i223.i, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 2596, i32 noundef 47132) #8
  %56 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i225.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %read32.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i225.i, align 4
  %call.i.i226.i = tail call i32 %59(ptr noundef %rtwdev, i32 noundef 2600) #8
  %and21.i227.i = and i32 %call.i.i226.i, -65536
  %60 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i228.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %write32.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.i228.i, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 2600, i32 noundef %and21.i227.i) #8
  %64 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i230.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %read32.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read32.i.i230.i, align 4
  %call.i.i231.i = tail call i32 %67(ptr noundef %rtwdev, i32 noundef 2732) #8
  %68 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i232.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %write32.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i232.i, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef 2732, i32 noundef 13927) #8
  br label %if.end81.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %72 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip.i, align 4
  %ch_param.i = getelementptr inbounds %struct.rtw_chip_info, ptr %73, i32 0, i32 65
  %74 = ptrtoint ptr %ch_param.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ch_param.i, align 4
  %76 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i234.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %read32.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i234.i, align 4
  %call.i.i235.i = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 2596) #8
  %80 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i236.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %write32.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i236.i, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 2596, i32 noundef %75) #8
  %84 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chip.i, align 4
  %arrayidx8.i = getelementptr %struct.rtw_chip_info, ptr %85, i32 0, i32 65, i32 1
  %86 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx8.i, align 4
  %and.i = and i32 %87, 65535
  %88 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i238.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %read32.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i238.i, align 4
  %call.i.i239.i = tail call i32 %91(ptr noundef %rtwdev, i32 noundef 2600) #8
  %and21.i240.i = and i32 %call.i.i239.i, -65536
  %or.i241.i = or i32 %and21.i240.i, %and.i
  %92 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i242.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %write32.i.i242.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i.i242.i, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 2600, i32 noundef %or.i241.i) #8
  %96 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chip.i, align 4
  %arrayidx11.i = getelementptr %struct.rtw_chip_info, ptr %97, i32 0, i32 65, i32 2
  %98 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx11.i, align 4
  %100 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i244.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %read32.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i.i244.i, align 4
  %call.i.i245.i = tail call i32 %103(ptr noundef %rtwdev, i32 noundef 2732) #8
  %104 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i246.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %105, i32 0, i32 16
  %106 = ptrtoint ptr %write32.i.i246.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i.i246.i, align 4
  tail call void %107(ptr noundef %rtwdev, i32 noundef 2732, i32 noundef %99) #8
  br label %if.end81.i

if.else12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %channel)
  %cmp14.i = icmp ugt i8 %channel, 35
  br i1 %cmp14.i, label %if.then16.i, label %if.else12.i.if.end81.i_crit_edge

if.else12.i.if.end81.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then16.i:                                      ; preds = %if.else12.i
  %hci.i.i247.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %108 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i248.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 13
  %110 = ptrtoint ptr %read32.i.i248.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32.i.i248.i, align 4
  %call.i.i249.i = tail call i32 %111(ptr noundef %rtwdev, i32 noundef 2688) #8
  %or.i251.i = or i32 %call.i.i249.i, 262144
  %112 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i252.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %113, i32 0, i32 16
  %114 = ptrtoint ptr %write32.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i.i252.i, align 4
  tail call void %115(ptr noundef %rtwdev, i32 noundef 2688, i32 noundef %or.i251.i) #8
  %116 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i254.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 13
  %118 = ptrtoint ptr %read32.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read32.i.i254.i, align 4
  %call.i.i255.i = tail call i32 %119(ptr noundef %rtwdev, i32 noundef 1108) #8
  %or.i257.i = or i32 %call.i.i255.i, 128
  %120 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i258.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %121, i32 0, i32 16
  %122 = ptrtoint ptr %write32.i.i258.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i.i258.i, align 4
  tail call void %123(ptr noundef %rtwdev, i32 noundef 1108, i32 noundef %or.i257.i) #8
  %124 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i260.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %read32.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read32.i.i260.i, align 4
  %call.i.i261.i = tail call i32 %127(ptr noundef %rtwdev, i32 noundef 2056) #8
  %and21.i262.i = and i32 %call.i.i261.i, -268435457
  %128 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i263.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %129, i32 0, i32 16
  %130 = ptrtoint ptr %write32.i.i263.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write32.i.i263.i, align 4
  tail call void %131(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %and21.i262.i) #8
  %132 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i265.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %133, i32 0, i32 13
  %134 = ptrtoint ptr %read32.i.i265.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32.i.i265.i, align 4
  %call.i.i266.i = tail call i32 %135(ptr noundef %rtwdev, i32 noundef 2068) #8
  %and21.i267.i = and i32 %call.i.i266.i, -64513
  %or.i268.i = or i32 %and21.i267.i, 15360
  %136 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i269.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %137, i32 0, i32 16
  %138 = ptrtoint ptr %write32.i.i269.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i.i269.i, align 4
  tail call void %139(ptr noundef %rtwdev, i32 noundef 2068, i32 noundef %or.i268.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %channel)
  %cmp21.i = icmp ult i8 %channel, 65
  br i1 %cmp21.i, label %land.lhs.true44.i, label %if.else24.i

if.else24.i:                                      ; preds = %if.then16.i
  %140 = add i8 %channel, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %140)
  %141 = icmp ult i8 %140, 45
  br i1 %141, label %if.then32.i, label %if.else33.i

if.then32.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i277.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %143, i32 0, i32 13
  %144 = ptrtoint ptr %read32.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read32.i.i277.i, align 4
  %call.i.i278.i = tail call i32 %145(ptr noundef %rtwdev, i32 noundef 3100) #8
  %and21.i279.i = and i32 %call.i.i278.i, -3841
  %or.i280.i = or i32 %and21.i279.i, 512
  %146 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i281.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %write32.i.i281.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write32.i.i281.i, align 4
  tail call void %149(ptr noundef %rtwdev, i32 noundef 3100, i32 noundef %or.i280.i) #8
  br label %if.else58.i

if.else33.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %channel)
  %cmp35.i = icmp ugt i8 %channel, -108
  br i1 %cmp35.i, label %if.else58.thread402.i, label %if.else33.i.if.else58.i_crit_edge

if.else33.i.if.else58.i_crit_edge:                ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else58.i

if.else58.thread402.i:                            ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i283.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %151, i32 0, i32 13
  %152 = ptrtoint ptr %read32.i.i283.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read32.i.i283.i, align 4
  %call.i.i284.i = tail call i32 %153(ptr noundef %rtwdev, i32 noundef 3100) #8
  %and21.i285.i = and i32 %call.i.i284.i, -3841
  %or.i286.i = or i32 %and21.i285.i, 768
  %154 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i287.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %155, i32 0, i32 16
  %156 = ptrtoint ptr %write32.i.i287.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write32.i.i287.i, align 4
  tail call void %157(ptr noundef %rtwdev, i32 noundef 3100, i32 noundef %or.i286.i) #8
  br label %if.else67.i

land.lhs.true44.i:                                ; preds = %if.then16.i
  %158 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i271.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %159, i32 0, i32 13
  %160 = ptrtoint ptr %read32.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read32.i.i271.i, align 4
  %call.i.i272.i = tail call i32 %161(ptr noundef %rtwdev, i32 noundef 3100) #8
  %and21.i273.i = and i32 %call.i.i272.i, -3841
  %or.i274.i = or i32 %and21.i273.i, 256
  %162 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i275.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %163, i32 0, i32 16
  %164 = ptrtoint ptr %write32.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write32.i.i275.i, align 4
  tail call void %165(ptr noundef %rtwdev, i32 noundef 3100, i32 noundef %or.i274.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %channel)
  %cmp46.i = icmp ult i8 %channel, 49
  br i1 %cmp46.i, label %if.then48.i, label %if.else49.i

if.then48.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i289.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %167, i32 0, i32 13
  %168 = ptrtoint ptr %read32.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read32.i.i289.i, align 4
  %call.i.i290.i = tail call i32 %169(ptr noundef %rtwdev, i32 noundef 2144) #8
  %and21.i291.i = and i32 %call.i.i290.i, -536739841
  %or.i292.i = or i32 %and21.i291.i, 153616384
  %170 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i293.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %171, i32 0, i32 16
  %172 = ptrtoint ptr %write32.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write32.i.i293.i, align 4
  tail call void %173(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i292.i) #8
  br label %if.end81.i

if.else49.i:                                      ; preds = %land.lhs.true44.i
  %174 = add nsw i8 %channel, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %174)
  %175 = icmp ult i8 %174, 13
  br i1 %175, label %if.then57.i, label %if.else49.i.if.end81.i_crit_edge

if.else49.i.if.end81.i_crit_edge:                 ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then57.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i295.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %177, i32 0, i32 13
  %178 = ptrtoint ptr %read32.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32.i.i295.i, align 4
  %call.i.i296.i = tail call i32 %179(ptr noundef %rtwdev, i32 noundef 2144) #8
  %and21.i297.i = and i32 %call.i.i296.i, -536739841
  %or.i298.i = or i32 %and21.i297.i, 145096704
  %180 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i299.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %181, i32 0, i32 16
  %182 = ptrtoint ptr %write32.i.i299.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i.i299.i, align 4
  tail call void %183(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i298.i) #8
  br label %if.end81.i

if.else58.i:                                      ; preds = %if.else33.i.if.else58.i_crit_edge, %if.then32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %140)
  %184 = icmp ult i8 %140, 17
  br i1 %184, label %if.then66.i, label %if.else58.i.if.else67.i_crit_edge

if.else58.i.if.else67.i_crit_edge:                ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67.i

if.then66.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i301.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %186, i32 0, i32 13
  %187 = ptrtoint ptr %read32.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read32.i.i301.i, align 4
  %call.i.i302.i = tail call i32 %188(ptr noundef %rtwdev, i32 noundef 2144) #8
  %and21.i303.i = and i32 %call.i.i302.i, -536739841
  %or.i304.i = or i32 %and21.i303.i, 144965632
  %189 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i305.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %190, i32 0, i32 16
  %191 = ptrtoint ptr %write32.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write32.i.i305.i, align 4
  tail call void %192(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i304.i) #8
  br label %if.end81.i

if.else67.i:                                      ; preds = %if.else58.i.if.else67.i_crit_edge, %if.else58.thread402.i
  %193 = add i8 %channel, -118
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %193)
  %194 = icmp ult i8 %193, 60
  br i1 %194, label %if.then75.i, label %if.else67.i.if.end81.i_crit_edge

if.else67.i.if.end81.i_crit_edge:                 ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then75.i:                                      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci.i.i247.i, align 8
  %read32.i.i307.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %196, i32 0, i32 13
  %197 = ptrtoint ptr %read32.i.i307.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read32.i.i307.i, align 4
  %call.i.i308.i = tail call i32 %198(ptr noundef %rtwdev, i32 noundef 2144) #8
  %and21.i309.i = and i32 %call.i.i308.i, -536739841
  %or.i310.i = or i32 %and21.i309.i, 136577024
  %199 = ptrtoint ptr %hci.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hci.i.i247.i, align 8
  %write32.i.i311.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %200, i32 0, i32 16
  %201 = ptrtoint ptr %write32.i.i311.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write32.i.i311.i, align 4
  tail call void %202(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i310.i) #8
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then75.i, %if.else67.i.if.end81.i_crit_edge, %if.then66.i, %if.then57.i, %if.else49.i.if.end81.i_crit_edge, %if.then48.i, %if.else12.i.if.end81.i_crit_edge, %if.else.i, %if.then5.i
  %203 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %bw, label %sw.default.i [
    i8 6, label %sw.bb111.i
    i8 1, label %sw.bb84.i
    i8 2, label %sw.bb98.i
    i8 5, label %sw.bb107.i
  ]

sw.default.i:                                     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i312.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %204 = ptrtoint ptr %hci.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hci.i.i312.i, align 8
  %read32.i.i313.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %205, i32 0, i32 13
  %206 = ptrtoint ptr %read32.i.i313.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32.i.i313.i, align 4
  %call.i.i314.i = tail call i32 %207(ptr noundef %rtwdev, i32 noundef 2220) #8
  %and83.i = and i32 %call.i.i314.i, -271647744
  %or.i = or i32 %and83.i, 268500992
  %208 = ptrtoint ptr %hci.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hci.i.i312.i, align 8
  %read32.i.i316.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %209, i32 0, i32 13
  %210 = ptrtoint ptr %read32.i.i316.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read32.i.i316.i, align 4
  %call.i.i317.i = tail call i32 %211(ptr noundef %rtwdev, i32 noundef 2220) #8
  %212 = ptrtoint ptr %hci.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hci.i.i312.i, align 8
  %write32.i.i318.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %213, i32 0, i32 16
  %214 = ptrtoint ptr %write32.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write32.i.i318.i, align 4
  tail call void %215(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or.i) #8
  br label %rtw8821c_set_channel_bb.exit

sw.bb84.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %primary_chan_idx)
  %cmp86.i = icmp eq i8 %primary_chan_idx, 1
  %hci.i.i325.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %216 = ptrtoint ptr %hci.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %hci.i.i325.i, align 8
  %read32.i.i326.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %217, i32 0, i32 13
  %218 = ptrtoint ptr %read32.i.i326.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read32.i.i326.i, align 4
  %call.i.i327.i = tail call i32 %219(ptr noundef %rtwdev, i32 noundef 2560) #8
  %and.i.i = and i32 %call.i.i327.i, -17
  %masksel.i = select i1 %cmp86.i, i32 16, i32 0
  %and.i.sink.i = or i32 %and.i.i, %masksel.i
  %220 = ptrtoint ptr %hci.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hci.i.i325.i, align 8
  %write32.i.i333.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %221, i32 0, i32 16
  %222 = ptrtoint ptr %write32.i.i333.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write32.i.i333.i, align 4
  tail call void %223(ptr noundef %rtwdev, i32 noundef 2560, i32 noundef %and.i.sink.i) #8
  %224 = ptrtoint ptr %hci.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hci.i.i325.i, align 8
  %read32.i.i335.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %225, i32 0, i32 13
  %226 = ptrtoint ptr %read32.i.i335.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read32.i.i335.i, align 4
  %call.i.i336.i = tail call i32 %227(ptr noundef %rtwdev, i32 noundef 2220) #8
  %and92.i = and i32 %call.i.i336.i, -549588224
  %228 = shl i8 %primary_chan_idx, 2
  %229 = and i8 %228, 60
  %shl.i = zext i8 %229 to i32
  %or96.i = or i32 %and92.i, %shl.i
  %or97.i = or i32 %or96.i, 537001985
  %230 = ptrtoint ptr %hci.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hci.i.i325.i, align 8
  %read32.i.i338.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %231, i32 0, i32 13
  %232 = ptrtoint ptr %read32.i.i338.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read32.i.i338.i, align 4
  %call.i.i339.i = tail call i32 %233(ptr noundef %rtwdev, i32 noundef 2220) #8
  %234 = ptrtoint ptr %hci.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hci.i.i325.i, align 8
  %write32.i.i340.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %235, i32 0, i32 16
  %236 = ptrtoint ptr %write32.i.i340.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write32.i.i340.i, align 4
  tail call void %237(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or97.i) #8
  br label %rtw8821c_set_channel_bb.exit

sw.bb98.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i347.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %238 = ptrtoint ptr %hci.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hci.i.i347.i, align 8
  %read32.i.i348.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %239, i32 0, i32 13
  %240 = ptrtoint ptr %read32.i.i348.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read32.i.i348.i, align 4
  %call.i.i349.i = tail call i32 %241(ptr noundef %rtwdev, i32 noundef 2220) #8
  %and100.i = and i32 %call.i.i349.i, -1124348160
  %242 = shl i8 %primary_chan_idx, 2
  %243 = and i8 %242, 60
  %shl103.i = zext i8 %243 to i32
  %or105.i = or i32 %and100.i, %shl103.i
  %or106.i = or i32 %or105.i, 1074003970
  %244 = ptrtoint ptr %hci.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hci.i.i347.i, align 8
  %read32.i.i351.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %245, i32 0, i32 13
  %246 = ptrtoint ptr %read32.i.i351.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %read32.i.i351.i, align 4
  %call.i.i352.i = tail call i32 %247(ptr noundef %rtwdev, i32 noundef 2220) #8
  %248 = ptrtoint ptr %hci.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hci.i.i347.i, align 8
  %write32.i.i353.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %249, i32 0, i32 16
  %250 = ptrtoint ptr %write32.i.i353.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %write32.i.i353.i, align 4
  tail call void %251(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or106.i) #8
  br label %rtw8821c_set_channel_bb.exit

sw.bb107.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i360.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %252 = ptrtoint ptr %hci.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hci.i.i360.i, align 8
  %read32.i.i361.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %253, i32 0, i32 13
  %254 = ptrtoint ptr %read32.i.i361.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read32.i.i361.i, align 4
  %call.i.i362.i = tail call i32 %255(ptr noundef %rtwdev, i32 noundef 2220) #8
  %and109.i = and i32 %call.i.i362.i, -271647744
  %or110.i = or i32 %and109.i, 2097728
  %256 = ptrtoint ptr %hci.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %hci.i.i360.i, align 8
  %read32.i.i364.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %257, i32 0, i32 13
  %258 = ptrtoint ptr %read32.i.i364.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read32.i.i364.i, align 4
  %call.i.i365.i = tail call i32 %259(ptr noundef %rtwdev, i32 noundef 2220) #8
  %260 = ptrtoint ptr %hci.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %hci.i.i360.i, align 8
  %write32.i.i366.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %261, i32 0, i32 16
  %262 = ptrtoint ptr %write32.i.i366.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write32.i.i366.i, align 4
  tail call void %263(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or110.i) #8
  %264 = ptrtoint ptr %hci.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %hci.i.i360.i, align 8
  %read32.i.i368.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %265, i32 0, i32 13
  %266 = ptrtoint ptr %read32.i.i368.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %read32.i.i368.i, align 4
  %call.i.i369.i = tail call i32 %267(ptr noundef %rtwdev, i32 noundef 2244) #8
  %and21.i370.i = and i32 %call.i.i369.i, -1073741825
  %268 = ptrtoint ptr %hci.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hci.i.i360.i, align 8
  %write32.i.i371.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %269, i32 0, i32 16
  %270 = ptrtoint ptr %write32.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %write32.i.i371.i, align 4
  tail call void %271(ptr noundef %rtwdev, i32 noundef 2244, i32 noundef %and21.i370.i) #8
  br label %rtw8821c_set_channel_bb.exit

sw.bb111.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i378.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %272 = ptrtoint ptr %hci.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %hci.i.i378.i, align 8
  %read32.i.i379.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %273, i32 0, i32 13
  %274 = ptrtoint ptr %read32.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %read32.i.i379.i, align 4
  %call.i.i380.i = tail call i32 %275(ptr noundef %rtwdev, i32 noundef 2220) #8
  %and113.i = and i32 %call.i.i380.i, -271647744
  %or114.i = or i32 %and113.i, 3146624
  %276 = ptrtoint ptr %hci.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %hci.i.i378.i, align 8
  %read32.i.i382.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %277, i32 0, i32 13
  %278 = ptrtoint ptr %read32.i.i382.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %read32.i.i382.i, align 4
  %call.i.i383.i = tail call i32 %279(ptr noundef %rtwdev, i32 noundef 2220) #8
  %280 = ptrtoint ptr %hci.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %hci.i.i378.i, align 8
  %write32.i.i384.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %281, i32 0, i32 16
  %282 = ptrtoint ptr %write32.i.i384.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %write32.i.i384.i, align 4
  tail call void %283(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or114.i) #8
  %284 = ptrtoint ptr %hci.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %hci.i.i378.i, align 8
  %read32.i.i386.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %285, i32 0, i32 13
  %286 = ptrtoint ptr %read32.i.i386.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %read32.i.i386.i, align 4
  %call.i.i387.i = tail call i32 %287(ptr noundef %rtwdev, i32 noundef 2244) #8
  %and21.i388.i = and i32 %call.i.i387.i, -1073741825
  %288 = ptrtoint ptr %hci.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hci.i.i378.i, align 8
  %write32.i.i389.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %289, i32 0, i32 16
  %290 = ptrtoint ptr %write32.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write32.i.i389.i, align 4
  tail call void %291(ptr noundef %rtwdev, i32 noundef 2244, i32 noundef %and21.i388.i) #8
  br label %rtw8821c_set_channel_bb.exit

rtw8821c_set_channel_bb.exit:                     ; preds = %sw.bb111.i, %sw.bb107.i, %sw.bb98.i, %sw.bb84.i, %sw.default.i
  %hci.i.i378.sink415.i = phi ptr [ %hci.i.i378.i, %sw.bb111.i ], [ %hci.i.i360.i, %sw.bb107.i ], [ %hci.i.i347.i, %sw.bb98.i ], [ %hci.i.i325.i, %sw.bb84.i ], [ %hci.i.i312.i, %sw.default.i ]
  %.sink412.i = phi i32 [ 2248, %sw.bb111.i ], [ 2248, %sw.bb107.i ], [ 2244, %sw.bb98.i ], [ 2244, %sw.bb84.i ], [ 2244, %sw.default.i ]
  %.sink411.i = phi i32 [ -2147483648, %sw.bb111.i ], [ -2147483648, %sw.bb107.i ], [ 1073741824, %sw.bb98.i ], [ 1073741824, %sw.bb84.i ], [ 1073741824, %sw.default.i ]
  %292 = ptrtoint ptr %hci.i.i378.sink415.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %hci.i.i378.sink415.i, align 8
  %read32.i.i391.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %293, i32 0, i32 13
  %294 = ptrtoint ptr %read32.i.i391.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read32.i.i391.i, align 4
  %call.i.i392.i = tail call i32 %295(ptr noundef %rtwdev, i32 noundef %.sink412.i) #8
  %or.i394.i = or i32 %call.i.i392.i, %.sink411.i
  %296 = ptrtoint ptr %hci.i.i378.sink415.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %hci.i.i378.sink415.i, align 8
  %write32.i.i395.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %297, i32 0, i32 16
  %298 = ptrtoint ptr %write32.i.i395.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %write32.i.i395.i, align 4
  tail call void %299(ptr noundef %rtwdev, i32 noundef %.sink412.i, i32 noundef %or.i394.i) #8
  %efuse.sroa.4.0.efuse1.sroa_idx.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 29
  %efuse.sroa.5.0.efuse1.sroa_idx.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 30
  %cond.in.in.i.i = select i1 %cmp.i, ptr %efuse.sroa.4.0.efuse1.sroa_idx.i.i, ptr %efuse.sroa.5.0.efuse1.sroa_idx.i.i
  %300 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %cond.in11.i.i = load i8, ptr %cond.in.in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %cond.in11.i.i)
  %cmp7.i.i = icmp ugt i8 %cond.in11.i.i, 9
  %cond.in11.op.i.i = udiv i8 %cond.in11.i.i, 3
  %301 = select i1 %cmp7.i.i, i8 0, i8 %cond.in11.op.i.i
  %div.i.i = zext i8 %301 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__const.rtw8821c_get_bb_swing.swing2setting, i32 0, i32 %div.i.i
  %302 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx.i.i, align 4
  %hci.i.i.i14 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %304 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i.i15 = getelementptr inbounds %struct.rtw_hci_ops, ptr %305, i32 0, i32 13
  %306 = ptrtoint ptr %read32.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %read32.i.i.i15, align 4
  %call.i.i.i16 = tail call i32 %307(ptr noundef %rtwdev, i32 noundef 3100) #8
  %and21.i.i = and i32 %call.i.i.i16, 2097151
  %shl.i.i = shl i32 %303, 21
  %or.i.i17 = or i32 %and21.i.i, %shl.i.i
  %308 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i.i18 = getelementptr inbounds %struct.rtw_hci_ops, ptr %309, i32 0, i32 16
  %310 = ptrtoint ptr %write32.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %write32.i.i.i18, align 4
  tail call void %311(ptr noundef %rtwdev, i32 noundef 3100, i32 noundef %or.i.i17) #8
  %312 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %313, i32 0, i32 13
  %314 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %315(ptr noundef %rtwdev, i32 noundef 3100) #8
  %shr.i.i.i.i = lshr i32 %call.i.i.i.i.i, 21
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %rtw8821c_set_channel_bb.exit
  %indvars.iv.i.i.i = phi i32 [ 0, %rtw8821c_set_channel_bb.exit ], [ %indvars.iv.next.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [37 x i32], ptr @rtw8821c_txscale_tbl, i32 0, i32 %indvars.iv.i.i.i
  %316 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i, i32 %317)
  %cmp2.i.i.i = icmp eq i32 %shr.i.i.i.i, %317
  br i1 %cmp2.i.i.i, label %rtw8821c_get_swing_index.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 37
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rtw8821c_set_channel_bb_swing.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.rtw8821c_set_channel_bb_swing.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw8821c_set_channel_bb_swing.exit

rtw8821c_get_swing_index.exit.i.i:                ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %318 = trunc i32 %indvars.iv.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %318)
  %cmp.i1.i = icmp ugt i8 %318, 36
  %spec.select.i.i = select i1 %cmp.i1.i, i8 24, i8 %318
  br label %rtw8821c_set_channel_bb_swing.exit

rtw8821c_set_channel_bb_swing.exit:               ; preds = %rtw8821c_get_swing_index.exit.i.i, %for.inc.i.i.i.rtw8821c_set_channel_bb_swing.exit_crit_edge
  %.sink.i.i = phi i8 [ %spec.select.i.i, %rtw8821c_get_swing_index.exit.i.i ], [ 24, %for.inc.i.i.i.rtw8821c_set_channel_bb_swing.exit_crit_edge ]
  %default_ofdm_index3.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 33
  %319 = ptrtoint ptr %default_ofdm_index3.i.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %.sink.i.i, ptr %default_ofdm_index3.i.i, align 2
  %avg_thermal.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 36
  %320 = ptrtoint ptr %avg_thermal.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %avg_thermal.i.i, align 4
  %delta_power_index.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31
  %321 = ptrtoint ptr %delta_power_index.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %delta_power_index.i.i, align 2
  %delta_power_index_last.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 32
  %322 = ptrtoint ptr %delta_power_index_last.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 0, ptr %delta_power_index_last.i.i, align 2
  %pwr_trk_triggered.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 34
  %323 = ptrtoint ptr %pwr_trk_triggered.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 0, ptr %pwr_trk_triggered.i.i, align 1
  %pwr_trk_init_trigger.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %324 = ptrtoint ptr %pwr_trk_init_trigger.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 1, ptr %pwr_trk_init_trigger.i.i, align 4
  %thermal_meter_k.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 11
  %325 = ptrtoint ptr %thermal_meter_k.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %thermal_meter_k.i.i, align 4
  %thermal_meter_k6.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 29
  %327 = ptrtoint ptr %thermal_meter_k6.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %thermal_meter_k6.i.i, align 4
  tail call void @rtw_set_channel_mac(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_chan_idx) #8
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %328 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %chip.i.i, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %read_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %331, i32 0, i32 7
  %332 = ptrtoint ptr %read_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read_rf.i.i, align 4
  %call5.i.i = tail call i32 %333(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #8
  br i1 %cmp.i, label %if.then27.i, label %if.else46.i

if.then27.i:                                      ; preds = %rtw8821c_set_channel_bb_swing.exit
  %rfe_option.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %334 = ptrtoint ptr %rfe_option.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %rfe_option.i, align 2
  %336 = zext i8 %335 to i64
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %335, label %if.then27.i.if.end45.i_crit_edge [
    i8 0, label %if.then27.i.if.end45.sink.split.i_crit_edge
    i8 2, label %if.then27.i.if.then43.i_crit_edge
    i8 4, label %if.then27.i.if.then43.i_crit_edge38
  ]

if.then27.i.if.then43.i_crit_edge38:              ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then27.i.if.then43.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then27.i.if.end45.sink.split.i_crit_edge:      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.sink.split.i

if.then27.i.if.end45.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.then27.i.if.then43.i_crit_edge, %if.then27.i.if.then43.i_crit_edge38
  br label %if.end45.sink.split.i

if.end45.sink.split.i:                            ; preds = %if.then43.i, %if.then27.i.if.end45.sink.split.i_crit_edge
  %.sink142.i = phi i32 [ 65536, %if.then43.i ], [ 7340032, %if.then27.i.if.end45.sink.split.i_crit_edge ]
  %.sink138.i = phi i32 [ 917504, %if.then43.i ], [ 1179648, %if.then27.i.if.end45.sink.split.i_crit_edge ]
  %.sink131.i = phi i32 [ 64644, %if.then43.i ], [ 30002, %if.then27.i.if.end45.sink.split.i_crit_edge ]
  %337 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i.i74.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %338, i32 0, i32 13
  %339 = ptrtoint ptr %read32.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %read32.i.i.i74.i, align 4
  %call.i.i.i75.i = tail call i32 %340(ptr noundef %rtwdev, i32 noundef 4224) #8
  %or.i.i76.i = or i32 %call.i.i.i75.i, 65536
  %341 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i.i77.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %342, i32 0, i32 16
  %343 = ptrtoint ptr %write32.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %write32.i.i.i77.i, align 4
  tail call void %344(ptr noundef %rtwdev, i32 noundef 4224, i32 noundef %or.i.i76.i) #8
  %345 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i22.i78.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %346, i32 0, i32 13
  %347 = ptrtoint ptr %read32.i.i22.i78.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %read32.i.i22.i78.i, align 4
  %call.i.i23.i79.i = tail call i32 %348(ptr noundef %rtwdev, i32 noundef 0) #8
  %or.i24.i80.i = or i32 %call.i.i23.i79.i, 67108864
  %349 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i25.i81.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %350, i32 0, i32 16
  %351 = ptrtoint ptr %write32.i.i25.i81.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %write32.i.i25.i81.i, align 4
  tail call void %352(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %or.i24.i80.i) #8
  %353 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i82.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %354, i32 0, i32 13
  %355 = ptrtoint ptr %read32.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %read32.i.i82.i, align 4
  %call.i.i83.i = tail call i32 %356(ptr noundef %rtwdev, i32 noundef 3256) #8
  %or.i.i20 = and i32 %call.i.i83.i, -16056321
  %and.i.i21 = or i32 %or.i.i20, %.sink142.i
  %357 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i27.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %358, i32 0, i32 13
  %359 = ptrtoint ptr %read32.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %read32.i.i27.i.i, align 4
  %call.i.i28.i.i = tail call i32 %360(ptr noundef %rtwdev, i32 noundef 2692) #8
  %and21.i.i.i = and i32 %call.i.i28.i.i, -16711681
  %or.i29.i.i = or i32 %and21.i.i.i, %.sink138.i
  %361 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i30.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %362, i32 0, i32 16
  %363 = ptrtoint ptr %write32.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %write32.i.i30.i.i, align 4
  tail call void %364(ptr noundef %rtwdev, i32 noundef 2692, i32 noundef %or.i29.i.i) #8
  %365 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %366, i32 0, i32 13
  %367 = ptrtoint ptr %read32.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read32.i.i32.i.i, align 4
  %call.i.i33.i.i = tail call i32 %368(ptr noundef %rtwdev, i32 noundef 2688) #8
  %and21.i34.i.i = and i32 %call.i.i33.i.i, -65536
  %or.i35.i.i = or i32 %and21.i34.i.i, %.sink131.i
  %369 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i36.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %370, i32 0, i32 16
  %371 = ptrtoint ptr %write32.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write32.i.i36.i.i, align 4
  tail call void %372(ptr noundef %rtwdev, i32 noundef 2688, i32 noundef %or.i35.i.i) #8
  %373 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i84.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %374, i32 0, i32 16
  %375 = ptrtoint ptr %write32.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %write32.i.i84.i, align 4
  tail call void %376(ptr noundef %rtwdev, i32 noundef 3256, i32 noundef %and.i.i21) #8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45.sink.split.i, %if.then27.i.if.end45.i_crit_edge
  %call2.i86.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %377 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %chip.i.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 4
  %write_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %380, i32 0, i32 8
  %381 = ptrtoint ptr %write_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write_rf.i.i, align 4
  %call5.i88.i = tail call zeroext i1 %382(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 223, i32 noundef 64, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i86.i) #8
  %call2.i90.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %383 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %chip.i.i, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %384, align 4
  %write_rf.i92.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %386, i32 0, i32 8
  %387 = ptrtoint ptr %write_rf.i92.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %write_rf.i92.i, align 4
  %call5.i93.i = tail call zeroext i1 %388(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 100, i32 noundef 15, i32 noundef 15) #8
  br label %rtw8821c_set_channel_rf.exit

if.else46.i:                                      ; preds = %rtw8821c_set_channel_bb_swing.exit
  call void @__sanitizer_cov_trace_pc() #10
  %389 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i.i95.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %390, i32 0, i32 13
  %391 = ptrtoint ptr %read32.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %read32.i.i.i95.i, align 4
  %call.i.i.i96.i = tail call i32 %392(ptr noundef %rtwdev, i32 noundef 4224) #8
  %or.i.i97.i = or i32 %call.i.i.i96.i, 65536
  %393 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i.i98.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %394, i32 0, i32 16
  %395 = ptrtoint ptr %write32.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %write32.i.i.i98.i, align 4
  tail call void %396(ptr noundef %rtwdev, i32 noundef 4224, i32 noundef %or.i.i97.i) #8
  %397 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i22.i99.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %398, i32 0, i32 13
  %399 = ptrtoint ptr %read32.i.i22.i99.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %read32.i.i22.i99.i, align 4
  %call.i.i23.i100.i = tail call i32 %400(ptr noundef %rtwdev, i32 noundef 0) #8
  %or.i24.i101.i = or i32 %call.i.i23.i100.i, 67108864
  %401 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i25.i102.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %402, i32 0, i32 16
  %403 = ptrtoint ptr %write32.i.i25.i102.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %write32.i.i25.i102.i, align 4
  tail call void %404(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %or.i24.i101.i) #8
  %405 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i103.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %406, i32 0, i32 13
  %407 = ptrtoint ptr %read32.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %read32.i.i103.i, align 4
  %call.i.i104.i = tail call i32 %408(ptr noundef %rtwdev, i32 noundef 3256) #8
  %or5.i.i = and i32 %call.i.i104.i, -16056321
  %and6.i.i = or i32 %or5.i.i, 13631488
  %409 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i105.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %410, i32 0, i32 16
  %411 = ptrtoint ptr %write32.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %write32.i.i105.i, align 4
  tail call void %412(ptr noundef %rtwdev, i32 noundef 3256, i32 noundef %and6.i.i) #8
  %call2.i107.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %413 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %chip.i.i, align 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %414, align 4
  %write_rf.i109.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %416, i32 0, i32 8
  %417 = ptrtoint ptr %write_rf.i109.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %write_rf.i109.i, align 4
  %call5.i110.i = tail call zeroext i1 %418(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 223, i32 noundef 64, i32 noundef 0) #8
  br label %rtw8821c_set_channel_rf.exit

rtw8821c_set_channel_rf.exit:                     ; preds = %if.else46.i, %if.end45.i
  %cond.i = phi i32 [ 65792, %if.else46.i ], [ 0, %if.end45.i ]
  %call2.i107.sink.i = phi i32 [ %call2.i107.i, %if.else46.i ], [ %call2.i90.i, %if.end45.i ]
  %419 = add i8 %channel, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %419)
  %420 = icmp ult i8 %419, 41
  %conv.i = zext i8 %channel to i32
  %and.i23 = and i32 %call5.i.i, -462848
  %or.i22 = or i32 %and.i23, %conv.i
  %or4.i = or i32 %or.i22, %cond.i
  %or11.i = or i32 %or4.i, 131072
  call void @__sanitizer_cov_trace_const_cmp1(i8 -116, i8 %channel)
  %cmp13.i = icmp ugt i8 %channel, -116
  %or16.i = or i32 %or4.i, 262144
  %spec.select.i = select i1 %cmp13.i, i32 %or16.i, i32 %or4.i
  %rf_reg18.0.i = select i1 %420, i32 %or11.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bw)
  %switch.selectcmp158.i = icmp eq i8 %bw, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bw)
  %switch.selectcmp.i = icmp eq i8 %bw, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2048, i32 3072
  %switch.select159.i = select i1 %switch.selectcmp158.i, i32 1024, i32 %switch.select.i
  %or23.i = or i32 %rf_reg18.0.i, %switch.select159.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i107.sink.i) #8
  %call2.i112.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %421 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %chip.i.i, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %422, align 4
  %write_rf.i114.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %424, i32 0, i32 8
  %425 = ptrtoint ptr %write_rf.i114.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %write_rf.i114.i, align 4
  %call5.i115.i = tail call zeroext i1 %426(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or23.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i112.i) #8
  %call2.i117.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %427 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %chip.i.i, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %428, align 4
  %write_rf.i119.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %430, i32 0, i32 8
  %431 = ptrtoint ptr %write_rf.i119.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %write_rf.i119.i, align 4
  %call5.i120.i = tail call zeroext i1 %432(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 184, i32 noundef 524288, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i117.i) #8
  %call2.i122.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %433 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %chip.i.i, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %434, align 4
  %write_rf.i124.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %436, i32 0, i32 8
  %437 = ptrtoint ptr %write_rf.i124.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %write_rf.i124.i, align 4
  %call5.i125.i = tail call zeroext i1 %438(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 184, i32 noundef 524288, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i122.i) #8
  %439 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %439, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %bw, label %if.else6.i [
    i8 1, label %if.then.i30
    i8 2, label %if.then5.i31
  ]

if.then.i30:                                      ; preds = %rtw8821c_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %440 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %441, i32 0, i32 13
  %442 = ptrtoint ptr %read32.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %read32.i.i.i25, align 4
  %call.i.i.i26 = tail call i32 %443(ptr noundef %rtwdev, i32 noundef 2376) #8
  %and21.i.i27 = and i32 %call.i.i.i26, -805306369
  %or.i.i28 = or i32 %and21.i.i27, 536870912
  %444 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i.i29 = getelementptr inbounds %struct.rtw_hci_ops, ptr %445, i32 0, i32 16
  %446 = ptrtoint ptr %write32.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write32.i.i.i29, align 4
  tail call void %447(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %or.i.i28) #8
  %448 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i21.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %449, i32 0, i32 13
  %450 = ptrtoint ptr %read32.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %read32.i.i21.i, align 4
  %call.i.i22.i = tail call i32 %451(ptr noundef %rtwdev, i32 noundef 2380) #8
  %and21.i23.i = and i32 %call.i.i22.i, -805306369
  %or.i24.i = or i32 %and21.i23.i, 536870912
  %452 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i25.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %453, i32 0, i32 16
  %454 = ptrtoint ptr %write32.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %write32.i.i25.i, align 4
  tail call void %455(ptr noundef %rtwdev, i32 noundef 2380, i32 noundef %or.i24.i) #8
  %456 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i27.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %457, i32 0, i32 13
  %458 = ptrtoint ptr %read32.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %read32.i.i27.i, align 4
  %call.i.i28.i = tail call i32 %459(ptr noundef %rtwdev, i32 noundef 3104) #8
  %and21.i29.i = and i32 %call.i.i28.i, 2147483647
  %460 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i30.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %461, i32 0, i32 16
  %462 = ptrtoint ptr %write32.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %write32.i.i30.i, align 4
  tail call void %463(ptr noundef %rtwdev, i32 noundef 3104, i32 noundef %and21.i29.i) #8
  %464 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %465, i32 0, i32 13
  %466 = ptrtoint ptr %read32.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %read32.i.i32.i, align 4
  %call.i.i33.i = tail call i32 %467(ptr noundef %rtwdev, i32 noundef 2288) #8
  %and21.i34.i = and i32 %call.i.i33.i, 2147483647
  br label %rtw8821c_set_channel_rxdfir.exit

if.then5.i31:                                     ; preds = %rtw8821c_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %468 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i37.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %469, i32 0, i32 13
  %470 = ptrtoint ptr %read32.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %read32.i.i37.i, align 4
  %call.i.i38.i = tail call i32 %471(ptr noundef %rtwdev, i32 noundef 2376) #8
  %and21.i39.i = and i32 %call.i.i38.i, -805306369
  %or.i40.i = or i32 %and21.i39.i, 536870912
  %472 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i41.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %473, i32 0, i32 16
  %474 = ptrtoint ptr %write32.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %write32.i.i41.i, align 4
  tail call void %475(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %or.i40.i) #8
  %476 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i43.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %477, i32 0, i32 13
  %478 = ptrtoint ptr %read32.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %read32.i.i43.i, align 4
  %call.i.i44.i = tail call i32 %479(ptr noundef %rtwdev, i32 noundef 2380) #8
  %and21.i45.i = and i32 %call.i.i44.i, -805306369
  %or.i46.i = or i32 %and21.i45.i, 268435456
  %480 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i47.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %481, i32 0, i32 16
  %482 = ptrtoint ptr %write32.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %write32.i.i47.i, align 4
  tail call void %483(ptr noundef %rtwdev, i32 noundef 2380, i32 noundef %or.i46.i) #8
  %484 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i49.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %485, i32 0, i32 13
  %486 = ptrtoint ptr %read32.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %read32.i.i49.i, align 4
  %call.i.i50.i = tail call i32 %487(ptr noundef %rtwdev, i32 noundef 3104) #8
  %and21.i51.i = and i32 %call.i.i50.i, 2147483647
  %488 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i52.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %489, i32 0, i32 16
  %490 = ptrtoint ptr %write32.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %write32.i.i52.i, align 4
  tail call void %491(ptr noundef %rtwdev, i32 noundef 3104, i32 noundef %and21.i51.i) #8
  %492 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i54.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %493, i32 0, i32 13
  %494 = ptrtoint ptr %read32.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %read32.i.i54.i, align 4
  %call.i.i55.i = tail call i32 %495(ptr noundef %rtwdev, i32 noundef 2288) #8
  %or.i57.i = or i32 %call.i.i55.i, -2147483648
  br label %rtw8821c_set_channel_rxdfir.exit

if.else6.i:                                       ; preds = %rtw8821c_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %496 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i60.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %497, i32 0, i32 13
  %498 = ptrtoint ptr %read32.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %read32.i.i60.i, align 4
  %call.i.i61.i = tail call i32 %499(ptr noundef %rtwdev, i32 noundef 2376) #8
  %and21.i62.i = and i32 %call.i.i61.i, -805306369
  %or.i63.i = or i32 %and21.i62.i, 536870912
  %500 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i64.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %501, i32 0, i32 16
  %502 = ptrtoint ptr %write32.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %write32.i.i64.i, align 4
  tail call void %503(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %or.i63.i) #8
  %504 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i66.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %505, i32 0, i32 13
  %506 = ptrtoint ptr %read32.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %read32.i.i66.i, align 4
  %call.i.i67.i = tail call i32 %507(ptr noundef %rtwdev, i32 noundef 2380) #8
  %and21.i68.i = and i32 %call.i.i67.i, -805306369
  %or.i69.i = or i32 %and21.i68.i, 536870912
  %508 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i70.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %509, i32 0, i32 16
  %510 = ptrtoint ptr %write32.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %write32.i.i70.i, align 4
  tail call void %511(ptr noundef %rtwdev, i32 noundef 2380, i32 noundef %or.i69.i) #8
  %512 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i72.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %513, i32 0, i32 13
  %514 = ptrtoint ptr %read32.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %read32.i.i72.i, align 4
  %call.i.i73.i = tail call i32 %515(ptr noundef %rtwdev, i32 noundef 3104) #8
  %or.i75.i = or i32 %call.i.i73.i, -2147483648
  %516 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i76.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %517, i32 0, i32 16
  %518 = ptrtoint ptr %write32.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %write32.i.i76.i, align 4
  tail call void %519(ptr noundef %rtwdev, i32 noundef 3104, i32 noundef %or.i75.i) #8
  %520 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %hci.i.i.i14, align 8
  %read32.i.i78.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %521, i32 0, i32 13
  %522 = ptrtoint ptr %read32.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %read32.i.i78.i, align 4
  %call.i.i79.i = tail call i32 %523(ptr noundef %rtwdev, i32 noundef 2288) #8
  %and21.i80.i = and i32 %call.i.i79.i, 2147483647
  br label %rtw8821c_set_channel_rxdfir.exit

rtw8821c_set_channel_rxdfir.exit:                 ; preds = %if.else6.i, %if.then5.i31, %if.then.i30
  %or.i57.sink.i = phi i32 [ %or.i57.i, %if.then5.i31 ], [ %and21.i80.i, %if.else6.i ], [ %and21.i34.i, %if.then.i30 ]
  %524 = ptrtoint ptr %hci.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %hci.i.i.i14, align 8
  %write32.i.i58.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %525, i32 0, i32 16
  %526 = ptrtoint ptr %write32.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %write32.i.i58.i, align 4
  tail call void %527(ptr noundef %rtwdev, i32 noundef 2288, i32 noundef %or.i57.sink.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_query_rx_desc(ptr noundef %rtwdev, ptr noundef %rx_desc, ptr noundef %pkt_stat, ptr noundef %rx_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %rx_pkt_desc_sz = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rx_pkt_desc_sz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_pkt_desc_sz, align 2
  %4 = call ptr @memset(ptr %pkt_stat, i32 0, i32 64)
  %5 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_desc, align 4
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %pkt_stat to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pkt_stat, align 4
  %11 = load i32, ptr %rx_desc, align 4
  %icv_err = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 1
  %12 = lshr i32 %11, 23
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %icv_err to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %icv_err, align 1
  %16 = load i32, ptr %rx_desc, align 4
  %crc_err = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 2
  %17 = lshr i32 %16, 22
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %crc_err to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %crc_err, align 2
  %21 = load i32, ptr %rx_desc, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %23 = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  %24 = and i32 %22, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp ne i32 %24, 0
  %25 = and i1 %tobool12.not, %cmp
  %decrypted = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 3
  %frombool16 = zext i1 %25 to i8
  %26 = ptrtoint ptr %decrypted to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool16, ptr %decrypted, align 1
  %add.ptr17 = getelementptr i32, ptr %rx_desc, i32 2
  %27 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr17, align 4
  %is_c2h = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 4
  %29 = trunc i32 %28 to i8
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 1
  %32 = ptrtoint ptr %is_c2h to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %is_c2h, align 4
  %33 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_desc, align 4
  %35 = and i32 %34, -12648448
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %conv23 = trunc i32 %36 to i16
  %pkt_len = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 6
  %37 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv23, ptr %pkt_len, align 4
  %38 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_desc, align 4
  %40 = lshr i32 %39, 8
  %41 = trunc i32 %40 to i8
  %conv26 = and i8 %41, 15
  %drv_info_sz = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 8
  %42 = ptrtoint ptr %drv_info_sz to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv26, ptr %drv_info_sz, align 1
  %43 = load i32, ptr %rx_desc, align 4
  %44 = trunc i32 %43 to i8
  %conv29 = and i8 %44, 3
  %shift = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 9
  %45 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv29, ptr %shift, align 4
  %add.ptr30 = getelementptr i32, ptr %rx_desc, i32 3
  %46 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr30, align 4
  %48 = lshr i32 %47, 24
  %49 = trunc i32 %48 to i8
  %conv32 = and i8 %49, 127
  %rate = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 10
  %50 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv32, ptr %rate, align 1
  %add.ptr33 = getelementptr i32, ptr %rx_desc, i32 1
  %51 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr33, align 4
  %53 = lshr i32 %52, 24
  %54 = trunc i32 %53 to i8
  %conv35 = and i8 %54, 127
  %cam_id = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 12
  %55 = ptrtoint ptr %cam_id to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv35, ptr %cam_id, align 1
  %56 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr17, align 4
  %58 = trunc i32 %57 to i8
  %59 = lshr i8 %58, 5
  %conv38 = and i8 %59, 3
  %ppdu_cnt = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 13
  %60 = ptrtoint ptr %ppdu_cnt to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv38, ptr %ppdu_cnt, align 4
  %add.ptr39 = getelementptr i32, ptr %rx_desc, i32 5
  %61 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr39, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %tsf_low = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 14
  %64 = ptrtoint ptr %tsf_low to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tsf_low, align 4
  %mul = shl nuw nsw i8 %conv26, 3
  %65 = ptrtoint ptr %drv_info_sz to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %mul, ptr %drv_info_sz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool45.not = icmp eq i8 %31, 0
  br i1 %tobool45.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %add.ptr46 = getelementptr i8, ptr %rx_desc, i32 %conv
  %conv48 = zext i8 %conv29 to i32
  %add.ptr49 = getelementptr i8, ptr %add.ptr46, i32 %conv48
  %conv51 = zext i8 %mul to i32
  %add.ptr52 = getelementptr i8, ptr %add.ptr49, i32 %conv51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool54.not = icmp eq i8 %9, 0
  br i1 %tobool54.not, label %if.end.if.end60_crit_edge, label %if.then55

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then55:                                        ; preds = %if.end
  %66 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr49, align 1
  %68 = and i8 %67, 15
  %conv2.i = zext i8 %68 to i32
  %69 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %conv2.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then55
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr49, i32 3
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  %73 = lshr i32 %72, 20
  %shl.i.i = and i32 %73, 8
  %div4.i515357.i.i = lshr i32 %72, 13
  %div4.i51.zext.i.i = and i32 %div4.i515357.i.i, 7
  %or.i.i = or i32 %shl.i.i, %div4.i51.zext.i.i
  %rfe_option.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %74 = ptrtoint ptr %rfe_option.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rfe_option.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp.i.i.i = icmp eq i8 %75, 0
  %..i.i.i = select i1 %cmp.i.i.i, i32 8, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %..i.i.i, i32 %or.i.i)
  %cmp4.not.i.i.i = icmp ugt i32 %..i.i.i, %or.i.i
  br i1 %cmp4.not.i.i.i, label %if.end8.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %76 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.8, i32 noundef %or.i.i) #11
  br label %query_phy_status_page0.exit.i

if.end8.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %div4.i.lhs.trunc55.i.i = lshr i32 %72, 8
  %78 = trunc i32 %div4.i.lhs.trunc55.i.i to i8
  %conv.i.i = and i8 %78, 31
  %lna_gain_table_0.lna_gain_table_1.i.i.i = select i1 %cmp.i.i.i, ptr @lna_gain_table_0, ptr @lna_gain_table_1
  %arrayidx.i.i.i = getelementptr i8, ptr %lna_gain_table_0.lna_gain_table_1.i.i.i, i32 %or.i.i
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i.i, align 1
  %mul.neg.i.i.i = mul nsw i8 %conv.i.i, -2
  %sub.i.i.i = add i8 %80, %mul.neg.i.i.i
  br label %query_phy_status_page0.exit.i

query_phy_status_page0.exit.i:                    ; preds = %if.end8.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i8 [ -120, %do.end.i.i.i ], [ %sub.i.i.i, %if.end8.i.i.i ]
  %rx_power37.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15
  %81 = ptrtoint ptr %rx_power37.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %retval.0.i.i.i, ptr %rx_power37.i.i, align 4
  %call39.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %rx_power37.i.i, i8 noundef zeroext 1) #8
  %rssi.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 16
  %82 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %call39.i.i, ptr %rssi.i.i, align 4
  %bw.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %83 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %bw.i.i, align 2
  %conv40.i.i = sext i8 %retval.0.i.i.i to i32
  %signal_power.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %84 = ptrtoint ptr %signal_power.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv40.i.i, ptr %signal_power.i.i, align 4
  br label %if.end60

sw.bb3.i:                                         ; preds = %if.then55
  %85 = add nsw i8 %conv32, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %85)
  %86 = icmp ult i8 %85, 8
  %add.ptr.i11.i = getelementptr i32, ptr %add.ptr49, i32 1
  %87 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i11.i, align 4
  %..i.i = select i1 %86, i32 16, i32 20
  %sum.shift.i.i = lshr i32 %88, %..i.i
  %rxsc.0.in.i.i = and i32 %sum.shift.i.i, 15
  %89 = add nsw i32 %rxsc.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %89)
  %90 = icmp ult i32 %89, 8
  br i1 %90, label %sw.bb3.i.query_phy_status_page1.exit.i_crit_edge, label %if.else18.i.i

sw.bb3.i.query_phy_status_page1.exit.i_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %query_phy_status_page1.exit.i

if.else18.i.i:                                    ; preds = %sw.bb3.i
  %91 = add nsw i32 %rxsc.0.in.i.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %92 = icmp ult i32 %91, 4
  br i1 %92, label %if.else18.i.i.query_phy_status_page1.exit.i_crit_edge, label %if.else27.i.i

if.else18.i.i.query_phy_status_page1.exit.i_crit_edge: ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %query_phy_status_page1.exit.i

if.else27.i.i:                                    ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %rxsc.0.in.i.i)
  %cmp29.i.i = icmp ugt i32 %rxsc.0.in.i.i, 12
  br i1 %cmp29.i.i, label %if.else27.i.i.query_phy_status_page1.exit.i_crit_edge, label %if.else32.i.i

if.else27.i.i.query_phy_status_page1.exit.i_crit_edge: ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %query_phy_status_page1.exit.i

if.else32.i.i:                                    ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr33.i.i = getelementptr i32, ptr %add.ptr49, i32 3
  %93 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr33.i.i, align 4
  %95 = trunc i32 %94 to i8
  %96 = lshr i8 %95, 4
  %conv35.i.i = and i8 %96, 3
  br label %query_phy_status_page1.exit.i

query_phy_status_page1.exit.i:                    ; preds = %if.else32.i.i, %if.else27.i.i.query_phy_status_page1.exit.i_crit_edge, %if.else18.i.i.query_phy_status_page1.exit.i_crit_edge, %sw.bb3.i.query_phy_status_page1.exit.i_crit_edge
  %bw.0.i.i = phi i8 [ %conv35.i.i, %if.else32.i.i ], [ 0, %sw.bb3.i.query_phy_status_page1.exit.i_crit_edge ], [ 1, %if.else18.i.i.query_phy_status_page1.exit.i_crit_edge ], [ 2, %if.else27.i.i.query_phy_status_page1.exit.i_crit_edge ]
  %97 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr49, align 4
  %sum.shift16.i.i = lshr i32 %98, 16
  %div4.i8101517.i.i = trunc i32 %sum.shift16.i.i to i8
  %conv41.i.i = add i8 %div4.i8101517.i.i, -110
  %rx_power.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15
  %99 = ptrtoint ptr %rx_power.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv41.i.i, ptr %rx_power.i.i, align 4
  %call43.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %rx_power.i.i, i8 noundef zeroext 1) #8
  %rssi.i12.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 16
  %100 = ptrtoint ptr %rssi.i12.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %call43.i.i, ptr %rssi.i12.i, align 4
  %bw44.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %101 = ptrtoint ptr %bw44.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %bw.0.i.i, ptr %bw44.i.i, align 2
  %102 = ptrtoint ptr %rx_power.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rx_power.i.i, align 4
  %104 = tail call i8 @llvm.smax.i8(i8 %103, i8 -120) #8
  %cond.i.i = sext i8 %104 to i32
  %signal_power.i13.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %105 = ptrtoint ptr %signal_power.i13.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cond.i.i, ptr %signal_power.i13.i, align 4
  br label %if.end60

do.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.3, i32 noundef %conv2.i) #11
  br label %if.end60

if.end60:                                         ; preds = %do.end.i, %query_phy_status_page1.exit.i, %query_phy_status_page0.exit.i, %if.end.if.end60_crit_edge
  %phy_status.0 = phi ptr [ null, %if.end.if.end60_crit_edge ], [ %add.ptr49, %query_phy_status_page0.exit.i ], [ %add.ptr49, %query_phy_status_page1.exit.i ], [ %add.ptr49, %do.end.i ]
  tail call void @rtw_rx_fill_rx_status(ptr noundef %rtwdev, ptr noundef %pkt_stat, ptr noundef %add.ptr52, ptr noundef %rx_status, ptr noundef %phy_status.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_phy_read_rf(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_write_rf_reg_sipi(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_set_tx_power_index(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_path_num = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %0 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_path_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp26.not = icmp eq i8 %1, 0
  br i1 %cmp26.not, label %entry.for.end15_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc13.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %path.027 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc14, %for.inc13.for.cond3.preheader_crit_edge ]
  %arrayidx24.i = getelementptr [2 x i32], ptr @rtw8821c_set_tx_power_index_by_rate.offset_txagc, i32 0, i32 %path.027
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.cond3.preheader
  %rs.023 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.inc.for.body6_crit_edge ]
  %2 = zext i32 %rs.023 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %rs.023, label %if.end [
    i32 3, label %for.body6.for.inc_crit_edge
    i32 5, label %for.body6.for.inc_crit_edge28
  ]

for.body6.for.inc_crit_edge28:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %arrayidx.i = getelementptr [0 x i8], ptr @rtw_rate_size, i32 0, i32 %rs.023
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp36.not.i = icmp eq i8 %4, 0
  br i1 %cmp36.not.i, label %if.end.for.inc_crit_edge, label %for.body.lr.ph.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end
  %arrayidx4.i = getelementptr [0 x ptr], ptr @rtw_rate_section, i32 0, i32 %rs.023
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %6, i32 %j.037.i
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5.i, align 1
  %idxprom8.i = zext i8 %8 to i32
  %arrayidx9.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 26, i32 %path.027, i32 %idxprom8.i
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i, align 1
  %and.i = and i8 %8, 3
  %conv12.i = zext i8 %10 to i32
  %11 = shl nuw nsw i8 %and.i, 3
  %mul.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 %conv12.i, %mul.i
  %12 = load i32, ptr @rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  %or.i = or i32 %shl.i, %12
  store i32 %or.i, ptr @rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and.i)
  %cmp15.i = icmp eq i8 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %8)
  %cmp18.i = icmp eq i8 %8, 53
  %or.cond.i = or i1 %cmp18.i, %cmp15.i
  br i1 %or.cond.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %and21.i = and i8 %8, -4
  %13 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx24.i, align 4
  %conv25.i = zext i8 %and21.i to i32
  %add.i = add i32 %14, %conv25.i
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef %add.i, i32 noundef %or.i) #8
  store i32 0, ptr @rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.037.i, 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc_crit_edge

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body6.for.inc_crit_edge, %for.body6.for.inc_crit_edge28
  %inc = add nuw nsw i32 %rs.023, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc13, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc13:                                        ; preds = %for.inc
  %inc14 = add nuw nsw i32 %path.027, 1
  %21 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rf_path_num, align 2
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc14, %conv
  br i1 %cmp, label %for.inc13.for.cond3.preheader_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.inc13.for.cond3.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %entry.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_cfg_ldo25(ptr noundef %rtwdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 55) #8
  %4 = and i8 %call.i, 127
  %masksel = select i1 %enable, i8 -128, i8 0
  %cond = or i8 %4, %masksel
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 55, i8 noundef zeroext %cond) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_false_alarm_statistics(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_info1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 2056) #8
  %and = and i32 %call.i, 268435456
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i, align 4
  %call.i240 = tail call zeroext i16 %7(ptr noundef %rtwdev, i32 noundef 2652) #8
  %conv = zext i16 %call.i240 to i32
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read16.i242 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %read16.i242 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i242, align 4
  %call.i243 = tail call zeroext i16 %11(ptr noundef %rtwdev, i32 noundef 3912) #8
  %conv4 = zext i16 %call.i243 to i32
  %12 = ptrtoint ptr %dm_info1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %dm_info1, align 4
  %ofdm_fa_cnt6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %ofdm_fa_cnt6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4, ptr %ofdm_fa_cnt6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %total_fa_cnt7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %total_fa_cnt7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %total_fa_cnt7, align 4
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read32.i245 = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read32.i245 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i245, align 4
  %call.i246 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 3844) #8
  %and21 = and i32 %call.i246, 65535
  %cck_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 6
  %19 = ptrtoint ptr %cck_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and21, ptr %cck_ok_cnt, align 4
  %shr39 = lshr i32 %call.i246, 16
  %cck_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 7
  %20 = ptrtoint ptr %cck_err_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr39, ptr %cck_err_cnt, align 4
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %read32.i248 = getelementptr inbounds %struct.rtw_hci_ops, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %read32.i248 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i248, align 4
  %call.i249 = tail call i32 %24(ptr noundef %rtwdev, i32 noundef 3860) #8
  %and57 = and i32 %call.i249, 65535
  %ofdm_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 8
  %25 = ptrtoint ptr %ofdm_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and57, ptr %ofdm_ok_cnt, align 4
  %shr76 = lshr i32 %call.i249, 16
  %ofdm_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %ofdm_err_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr76, ptr %ofdm_err_cnt, align 4
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %read32.i251 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i251 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i251, align 4
  %call.i252 = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 3856) #8
  %and94 = and i32 %call.i252, 65535
  %ht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 10
  %31 = ptrtoint ptr %ht_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and94, ptr %ht_ok_cnt, align 4
  %shr113 = lshr i32 %call.i252, 16
  %ht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 11
  %32 = ptrtoint ptr %ht_err_cnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr113, ptr %ht_err_cnt, align 4
  %33 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i, align 8
  %read32.i254 = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %read32.i254 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i254, align 4
  %call.i255 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 3852) #8
  %and131 = and i32 %call.i255, 65535
  %vht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 12
  %37 = ptrtoint ptr %vht_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and131, ptr %vht_ok_cnt, align 4
  %shr150 = lshr i32 %call.i255, 16
  %vht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 13
  %38 = ptrtoint ptr %vht_err_cnt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr150, ptr %vht_err_cnt, align 4
  %39 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i, align 8
  %read32.i257 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %read32.i257 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i257, align 4
  %call.i258 = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 3848) #8
  %shr169 = lshr i32 %call.i258, 16
  %ofdm_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 4
  %43 = ptrtoint ptr %ofdm_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr169, ptr %ofdm_cca_cnt, align 4
  %total_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 5
  %44 = ptrtoint ptr %total_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr169, ptr %total_cca_cnt, align 4
  br i1 %tobool.not, label %entry.if.end195_crit_edge, label %if.then172

entry.if.end195_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then172:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i, align 8
  %read32.i260 = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %read32.i260 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i260, align 4
  %call.i261 = tail call i32 %48(ptr noundef %rtwdev, i32 noundef 4044) #8
  %and190 = and i32 %call.i261, 65535
  %cck_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 3
  %49 = ptrtoint ptr %cck_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and190, ptr %cck_cca_cnt, align 4
  %50 = ptrtoint ptr %total_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_cca_cnt, align 4
  %add194 = add i32 %51, %and190
  store i32 %add194, ptr %total_cca_cnt, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then172, %entry.if.end195_crit_edge
  %52 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 2468) #8
  %or.i = or i32 %call.i.i, 131072
  %56 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef %or.i) #8
  %60 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i, align 8
  %read32.i.i263 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %read32.i.i263 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i263, align 4
  %call.i.i264 = tail call i32 %63(ptr noundef %rtwdev, i32 noundef 2468) #8
  %and.i = and i32 %call.i.i264, -131073
  %64 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i, align 8
  %write32.i.i265 = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %write32.i.i265 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i265, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef %and.i) #8
  %68 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i, align 8
  %read32.i.i267 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %read32.i.i267 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i267, align 4
  %call.i.i268 = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 2604) #8
  %and.i269 = and i32 %call.i.i268, -32769
  %72 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i, align 8
  %write32.i.i270 = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %write32.i.i270 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i.i270, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and.i269) #8
  %76 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i, align 8
  %read32.i.i272 = getelementptr inbounds %struct.rtw_hci_ops, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %read32.i.i272 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i272, align 4
  %call.i.i273 = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 2604) #8
  %or.i274 = or i32 %call.i.i273, 32768
  %80 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i, align 8
  %write32.i.i275 = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %write32.i.i275 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i275, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %or.i274) #8
  %84 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i, align 8
  %read32.i.i277 = getelementptr inbounds %struct.rtw_hci_ops, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %read32.i.i277 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32.i.i277, align 4
  %call.i.i278 = tail call i32 %87(ptr noundef %rtwdev, i32 noundef 2904) #8
  %or.i279 = or i32 %call.i.i278, 1
  %88 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i, align 8
  %write32.i.i280 = getelementptr inbounds %struct.rtw_hci_ops, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %write32.i.i280 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i280, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 2904, i32 noundef %or.i279) #8
  %92 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i, align 8
  %read32.i.i282 = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %read32.i.i282 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i282, align 4
  %call.i.i283 = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 2904) #8
  %and.i284 = and i32 %call.i.i283, -2
  %96 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i, align 8
  %write32.i.i285 = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 16
  %98 = ptrtoint ptr %write32.i.i285 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i285, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 2904, i32 noundef %and.i284) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_phy_calibration(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtw8821c_do_iqk(ptr noundef %rtwdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_phy_cck_pd_set(ptr noundef %rtwdev, i8 noundef zeroext %new_lvl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cck_pd_lv = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 44
  %0 = ptrtoint ptr %cck_pd_lv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cck_pd_lv, align 4
  %conv = zext i8 %1 to i32
  %conv3 = zext i8 %new_lvl to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv3) #8
  %2 = ptrtoint ptr %cck_pd_lv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cck_pd_lv, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %new_lvl)
  %cmp = icmp eq i8 %3, %new_lvl
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %7(ptr noundef %rtwdev, i32 noundef 2604) #8
  %sta_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 35
  %8 = ptrtoint ptr %sta_cnt.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sta_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i = icmp ne i8 %9, 0
  %conv16 = zext i1 %tobool.i to i32
  %cck_pd_default = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 46
  %10 = ptrtoint ptr %cck_pd_default to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cck_pd_default, align 4
  %conv19 = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv3, 1
  %add = add nuw nsw i32 %mul, %conv19
  %arrayidx21 = getelementptr [5 x i8], ptr @__const.rtw8821c_phy_cck_pd_set.pd, i32 0, i32 %conv3
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %cck_fa_avg = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 45
  %14 = ptrtoint ptr %cck_fa_avg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cck_fa_avg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %conv16, i32 noundef %conv3, i32 noundef 1, i32 noundef %add, i32 noundef %conv22, i32 noundef %15) #8
  %16 = ptrtoint ptr %cck_fa_avg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %cck_fa_avg, align 4
  %17 = ptrtoint ptr %cck_pd_lv to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %new_lvl, ptr %cck_pd_lv, align 4
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i, align 4
  %call.i.i66 = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 2568) #8
  %and21.i = and i32 %call.i.i66, -4128769
  %shl.i = shl nuw nsw i32 %conv22, 16
  %and22.i = and i32 %shl.i, 4128768
  %or.i = or i32 %and21.i, %and22.i
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 2568, i32 noundef %or.i) #8
  %26 = ptrtoint ptr %cck_pd_default to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cck_pd_default, align 4
  %conv31 = zext i8 %27 to i32
  %add34 = add nuw nsw i32 %mul, %conv31
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i68 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %read32.i.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i68, align 4
  %call.i.i69 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 2728) #8
  %and21.i70 = and i32 %call.i.i69, -2031617
  %shl.i71 = shl nuw nsw i32 %add34, 16
  %and22.i72 = and i32 %shl.i71, 2031616
  %or.i73 = or i32 %and21.i70, %and22.i72
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i74 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %write32.i.i74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i74, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 2728, i32 noundef %or.i73) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_pwr_track(ptr noundef %rtwdev) #0 align 64 {
entry:
  %swing_table.i = alloca %struct.rtw_swing_table, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %power_track_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %power_track_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_track_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwr_trk_triggered = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 34
  %2 = ptrtoint ptr %pwr_trk_triggered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr_trk_triggered, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #8
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_rf.i, align 4
  %call5.i = tail call zeroext i1 %9(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #8
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %swing_table.i) #8
  %10 = call ptr @memset(ptr %swing_table.i, i32 255, i32 32)
  call void @rtw_phy_config_swing_table(ptr noundef %rtwdev, ptr noundef nonnull %swing_table.i) #8
  %thermal_meter.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 10
  %11 = ptrtoint ptr %thermal_meter.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %thermal_meter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp eq i8 %12, -1
  br i1 %cmp.i, label %if.end6.rtw8821c_phy_pwrtrack.exit_crit_edge, label %if.end.i

if.end6.rtw8821c_phy_pwrtrack.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw8821c_phy_pwrtrack.exit

if.end.i:                                         ; preds = %if.end6
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #8
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %13 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %read_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %read_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_rf.i.i, align 4
  %call5.i.i = call i32 %18(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #8
  %conv3.i = trunc i32 %call5.i.i to i8
  call void @rtw_phy_pwrtrack_avg(ptr noundef %rtwdev, i8 noundef zeroext %conv3.i, i8 noundef zeroext 0) #8
  %pwr_trk_init_trigger.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %19 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pwr_trk_init_trigger.i, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pwr_trk_init_trigger.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  %call6.i = call zeroext i1 @rtw_phy_pwrtrack_thermal_changed(ptr noundef %rtwdev, i8 noundef zeroext %conv3.i, i8 noundef zeroext 0) #8
  br i1 %call6.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.iqk.i_crit_edge

if.else.i.iqk.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iqk.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %if.then4.i
  %call10.i = call zeroext i8 @rtw_phy_pwrtrack_get_delta(ptr noundef %rtwdev, i8 noundef zeroext 0) #8
  %22 = call i8 @llvm.umin.i8(i8 %call10.i, i8 29) #8
  %call18.i = call signext i8 @rtw_phy_pwrtrack_get_pwridx(ptr noundef %rtwdev, ptr noundef nonnull %swing_table.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %22) #8
  %delta_power_index.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31
  %23 = ptrtoint ptr %delta_power_index.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call18.i, ptr %delta_power_index.i, align 2
  %delta_power_index_last.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 32
  %24 = ptrtoint ptr %delta_power_index_last.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %delta_power_index_last.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %call18.i, i8 %25)
  %cmp25.i = icmp eq i8 %call18.i, %25
  br i1 %cmp25.i, label %if.end9.i.iqk.i_crit_edge, label %if.else28.i

if.end9.i.iqk.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iqk.i

if.else28.i:                                      ; preds = %if.end9.i
  %26 = ptrtoint ptr %delta_power_index_last.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call18.i, ptr %delta_power_index_last.i, align 2
  %current_channel.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %current_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %current_channel.i.i, align 1
  %current_band_width.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 9
  %29 = ptrtoint ptr %current_band_width.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %current_band_width.i.i, align 1
  %call.i.i = call zeroext i8 @rtw_regd_get(ptr noundef %rtwdev) #8
  %tx_rate3.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 25
  %31 = ptrtoint ptr %tx_rate3.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_rate3.i.i, align 1
  %33 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip.i.i, align 4
  %max_power_index.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %max_power_index.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %max_power_index.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %call4.i.i = call zeroext i8 @rtw_phy_get_tx_power_index(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext %32, i32 noundef %conv.i.i, i8 noundef zeroext %28, i8 noundef zeroext %call.i.i) #8
  %37 = call i8 @llvm.umin.i8(i8 %call4.i.i, i8 %36) #8
  %sub.i.i = sub i8 %36, %37
  %sub15.i.i = sub i8 0, %37
  %38 = ptrtoint ptr %delta_power_index.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %delta_power_index.i, align 2
  %default_ofdm_index.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 33
  %40 = ptrtoint ptr %default_ofdm_index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %default_ofdm_index.i.i.i.i, align 2
  %add.i.i.i.i = add i8 %41, 10
  %42 = call i8 @llvm.umin.i8(i8 %sub.i.i, i8 15) #8
  %43 = call i8 @llvm.smax.i8(i8 %sub15.i.i, i8 -15) #8
  %conv22.i.i.i.i = sext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp23.i.i.i.i = icmp sgt i8 %39, -1
  br i1 %cmp23.i.i.i.i, label %if.then.i.i.i.i, label %if.then59.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %42)
  %cmp27.not.i.i.i.i = icmp ugt i8 %39, %42
  br i1 %cmp27.not.i.i.i.i, label %if.then35.i.i.i.i, label %if.then.i.i.i.i.if.end92.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end92.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i.i.i.i

if.then35.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add39.i.i.i.i = add i8 %41, %39
  %sub.i.i.i.i = sub i8 %add39.i.i.i.i, %42
  %44 = call i8 @llvm.umin.i8(i8 %sub.i.i.i.i, i8 %add.i.i.i.i) #8
  br label %if.end92.i.i.i.i

if.then59.i.i.i.i:                                ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %39)
  %cmp62.not.i.i.i.i = icmp sgt i8 %43, %39
  br i1 %cmp62.not.i.i.i.i, label %if.then71.i.i.i.i, label %if.then59.i.i.i.i.if.end92.i.i.i.i_crit_edge

if.then59.i.i.i.i.if.end92.i.i.i.i_crit_edge:     ; preds = %if.then59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i.i.i.i

if.then71.i.i.i.i:                                ; preds = %if.then59.i.i.i.i
  %conv61.i.i.i.i = sext i8 %43 to i32
  %conv73.i.i.i.i = zext i8 %41 to i32
  %sub76.i.i.i.i = sub nsw i32 %conv61.i.i.i.i, %conv22.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub76.i.i.i.i, i32 %conv73.i.i.i.i)
  %cmp77.i.i.i.i = icmp slt i32 %sub76.i.i.i.i, %conv73.i.i.i.i
  %add83.i.i.i.i = add i8 %41, %39
  %sub85.i.i.i.i = sub i8 %add83.i.i.i.i, %43
  br i1 %cmp77.i.i.i.i, label %if.then71.i.i.i.i.if.end92.i.i.i.i_crit_edge, label %if.then71.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge

if.then71.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge: ; preds = %if.then71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw8821c_pwrtrack_set.exit.i

if.then71.i.i.i.i.if.end92.i.i.i.i_crit_edge:     ; preds = %if.then71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i.i.i.i

if.end92.i.i.i.i:                                 ; preds = %if.then71.i.i.i.i.if.end92.i.i.i.i_crit_edge, %if.then59.i.i.i.i.if.end92.i.i.i.i_crit_edge, %if.then35.i.i.i.i, %if.then.i.i.i.i.if.end92.i.i.i.i_crit_edge
  %agc_index.0.i.i.i.i = phi i8 [ %42, %if.then35.i.i.i.i ], [ %39, %if.then.i.i.i.i.if.end92.i.i.i.i_crit_edge ], [ %39, %if.then59.i.i.i.i.if.end92.i.i.i.i_crit_edge ], [ %43, %if.then71.i.i.i.i.if.end92.i.i.i.i_crit_edge ]
  %swing_index.1.i.i.i.i = phi i8 [ %44, %if.then35.i.i.i.i ], [ %41, %if.then.i.i.i.i.if.end92.i.i.i.i_crit_edge ], [ %41, %if.then59.i.i.i.i.if.end92.i.i.i.i_crit_edge ], [ %sub85.i.i.i.i, %if.then71.i.i.i.i.if.end92.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %swing_index.1.i.i.i.i)
  %cmp94.i.i.i.i = icmp ugt i8 %swing_index.1.i.i.i.i, 36
  br i1 %cmp94.i.i.i.i, label %do.end.i.i.i.i, label %if.end92.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge

if.end92.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge: ; preds = %if.end92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw8821c_pwrtrack_set.exit.i

do.end.i.i.i.i:                                   ; preds = %if.end92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.14) #11
  br label %rtw8821c_pwrtrack_set.exit.i

rtw8821c_pwrtrack_set.exit.i:                     ; preds = %do.end.i.i.i.i, %if.end92.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge, %if.then71.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge
  %agc_index.0136.i.i.i.i = phi i8 [ %agc_index.0.i.i.i.i, %do.end.i.i.i.i ], [ %agc_index.0.i.i.i.i, %if.end92.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge ], [ %43, %if.then71.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge ]
  %swing_index.2.i.i.i.i = phi i8 [ 36, %do.end.i.i.i.i ], [ %swing_index.1.i.i.i.i, %if.end92.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge ], [ 0, %if.then71.i.i.i.i.rtw8821c_pwrtrack_set.exit.i_crit_edge ]
  %conv.i.i.i = sext i8 %agc_index.0136.i.i.i.i to i32
  %hci.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %47 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %50(ptr noundef %rtwdev, i32 noundef 3220) #8
  %and21.i.i.i.i = and i32 %call.i.i.i.i.i, -127
  %shl.i.i.i.i = shl nsw i32 %conv.i.i.i, 1
  %and22.i.i.i.i = and i32 %shl.i.i.i.i, 126
  %or.i.i.i.i = or i32 %and21.i.i.i.i, %and22.i.i.i.i
  %51 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i.i.i.i.i, align 4
  call void %54(ptr noundef %rtwdev, i32 noundef 3220, i32 noundef %or.i.i.i.i) #8
  %idxprom.i.i.i = zext i8 %swing_index.2.i.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [37 x i32], ptr @rtw8821c_txscale_tbl, i32 0, i32 %idxprom.i.i.i
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i, align 4
  %57 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i4.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %read32.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.i4.i.i.i, align 4
  %call.i.i5.i.i.i = call i32 %60(ptr noundef %rtwdev, i32 noundef 3100) #8
  %and21.i6.i.i.i = and i32 %call.i.i5.i.i.i, 2097151
  %shl.i7.i.i.i = shl i32 %56, 21
  %or.i8.i.i.i = or i32 %and21.i6.i.i.i, %shl.i7.i.i.i
  %61 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i9.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %write32.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i.i9.i.i.i, align 4
  call void %64(ptr noundef %rtwdev, i32 noundef 3100, i32 noundef %or.i8.i.i.i) #8
  br label %iqk.i

iqk.i:                                            ; preds = %rtw8821c_pwrtrack_set.exit.i, %if.end9.i.iqk.i_crit_edge, %if.else.i.iqk.i_crit_edge
  %call34.i = call zeroext i1 @rtw_phy_pwrtrack_need_iqk(ptr noundef %rtwdev) #8
  br i1 %call34.i, label %if.then35.i, label %iqk.i.rtw8821c_phy_pwrtrack.exit_crit_edge

iqk.i.rtw8821c_phy_pwrtrack.exit_crit_edge:       ; preds = %iqk.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw8821c_phy_pwrtrack.exit

if.then35.i:                                      ; preds = %iqk.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rtw8821c_do_iqk(ptr noundef %rtwdev) #8
  br label %rtw8821c_phy_pwrtrack.exit

rtw8821c_phy_pwrtrack.exit:                       ; preds = %if.then35.i, %iqk.i.rtw8821c_phy_pwrtrack.exit_crit_edge, %if.end6.rtw8821c_phy_pwrtrack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %swing_table.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rtw8821c_phy_pwrtrack.exit, %if.then4
  %.sink = phi i8 [ 0, %rtw8821c_phy_pwrtrack.exit ], [ 1, %if.then4 ]
  %65 = ptrtoint ptr %pwr_trk_triggered to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink, ptr %pwr_trk_triggered, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_bf_config_bfee(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %bfee, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfee, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %do.end [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

if.then:                                          ; preds = %entry
  br i1 %enable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_bf_enable_bfee_su(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %bfee) #8
  br label %if.end6

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_bf_remove_bfee_su(ptr noundef %rtwdev, ptr noundef %bfee) #8
  br label %if.end6

if.then3:                                         ; preds = %entry
  br i1 %enable, label %if.then.i14, label %if.else.i15

if.then.i14:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_bf_enable_bfee_mu(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %bfee) #8
  br label %if.end6

if.else.i15:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_bf_remove_bfee_mu(ptr noundef %rtwdev, ptr noundef %bfee) #8
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.16) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.else.i15, %if.then.i14, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_set_gid_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_cfg_csi_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_coex_cfg_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 1360) #8
  %or5.i = or i8 %call.i.i, 8
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %or5.i) #8
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i10 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i10, align 4
  %call.i.i11 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 1936) #8
  %12 = and i8 %call.i.i11, -64
  %13 = or i8 %12, 5
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i12 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %write8.i.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8.i.i12, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 1936, i8 noundef zeroext %13) #8
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 1912, i8 noundef zeroext 1) #8
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i14 = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 64) #8
  %or.i15 = or i32 %call.i.i14, 32
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i15) #8
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i17 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %read32.i.i17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i17, align 4
  %call.i.i18 = tail call i32 %33(ptr noundef %rtwdev, i32 noundef 64) #8
  %or.i19 = or i32 %call.i.i18, 512
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i20 = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %write32.i.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i20, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i19) #8
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i22 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %read8.i.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8.i.i22, align 4
  %call.i.i23 = tail call zeroext i8 %41(ptr noundef %rtwdev, i32 noundef 1222) #8
  %or5.i24 = or i8 %call.i.i23, 16
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %write8.i.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8.i.i25, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 1222, i8 noundef zeroext %or5.i24) #8
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i27 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %read8.i.i27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8.i.i27, align 4
  %call.i.i28 = tail call zeroext i8 %49(ptr noundef %rtwdev, i32 noundef 1222) #8
  %and.i = and i8 %call.i.i28, -33
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i29 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %write8.i.i29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8.i.i29, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 1222, i8 noundef zeroext %and.i) #8
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i.i, align 4
  %call.i.i31 = tail call zeroext i16 %57(ptr noundef %rtwdev, i32 noundef 1890) #8
  %58 = or i16 %call.i.i31, 4096
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i.i, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 1890, i16 noundef zeroext %58) #8
  %63 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i33 = getelementptr inbounds %struct.rtw_hci_ops, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %read8.i.i33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read8.i.i33, align 4
  %call.i.i34 = tail call zeroext i8 %66(ptr noundef %rtwdev, i32 noundef 1743) #8
  %67 = or i8 %call.i.i34, 8
  %68 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i39 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %write8.i.i39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8.i.i39, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef 1743, i8 noundef zeroext %67) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_coex_cfg_ant_switch(ptr noundef %rtwdev, i8 noundef zeroext %ctrl_type, i8 noundef zeroext %pos_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv14 = zext i8 %ctrl_type to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %conv16 = zext i8 %pos_type to i32
  %or = or i32 %shl, %conv16
  %cur_switch_status = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 15
  %0 = ptrtoint ptr %cur_switch_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_switch_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %1)
  %cmp = icmp eq i32 %or, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %entry
  %wlg_at_btg = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 5
  %2 = ptrtoint ptr %wlg_at_btg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wlg_at_btg, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool20.not = icmp eq i8 %3, 0
  br i1 %tobool20.not, label %if.end25, label %if.end25.thread

if.end25.thread:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %ant_switch_polarity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 4
  %4 = ptrtoint ptr %ant_switch_polarity to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ant_switch_polarity, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  %. = select i1 %tobool22.not, i8 4, i8 2
  %6 = ptrtoint ptr %cur_switch_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %cur_switch_status, align 4
  %ant_switch_diversity249 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 1
  %7 = ptrtoint ptr %ant_switch_diversity249 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ant_switch_diversity249, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool27.not250 = icmp eq i8 %8, 0
  br label %12

if.end25:                                         ; preds = %if.end19
  %9 = ptrtoint ptr %cur_switch_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %cur_switch_status, align 4
  %ant_switch_diversity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 1
  %10 = ptrtoint ptr %ant_switch_diversity to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ant_switch_diversity, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ctrl_type)
  %cmp30 = icmp eq i8 %ctrl_type, 0
  br i1 %cmp30, label %if.end25._crit_edge, label %if.end25._crit_edge261

if.end25._crit_edge261:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %13

if.end25._crit_edge:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

12:                                               ; preds = %if.end25._crit_edge, %if.end25.thread
  %tobool27.not257 = phi i1 [ %tobool27.not250, %if.end25.thread ], [ %tobool27.not, %if.end25._crit_edge ]
  %pos_type.addr.0253 = phi i8 [ %., %if.end25.thread ], [ %pos_type, %if.end25._crit_edge ]
  br label %13

13:                                               ; preds = %12, %if.end25._crit_edge261
  %tobool27.not256 = phi i1 [ %tobool27.not257, %12 ], [ %tobool27.not, %if.end25._crit_edge261 ]
  %ctrl_type.addr.0254 = phi i8 [ 0, %12 ], [ %ctrl_type, %if.end25._crit_edge261 ]
  %pos_type.addr.0252 = phi i8 [ %pos_type.addr.0253, %12 ], [ %pos_type, %if.end25._crit_edge261 ]
  %14 = phi i8 [ 2, %12 ], [ %ctrl_type, %if.end25._crit_edge261 ]
  %ctrl_type.addr.1 = select i1 %tobool27.not256, i8 %ctrl_type.addr.0254, i8 %14
  %ant_switch_polarity34 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 4
  %15 = ptrtoint ptr %ant_switch_polarity34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ant_switch_polarity34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp36 = icmp eq i8 %16, 1
  %17 = zext i8 %ctrl_type.addr.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %ctrl_type.addr.1, label %sw.bb [
    i8 4, label %sw.epilog.thread259
    i8 1, label %sw.bb73
    i8 2, label %sw.bb79
    i8 3, label %sw.bb80
    i8 5, label %sw.bb85
  ]

sw.bb:                                            ; preds = %13
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 76) #8
  %and.i = and i32 %call.i.i, -8388609
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and.i) #8
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i141 = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %read32.i.i141 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i141, align 4
  %call.i.i142 = tail call i32 %29(ptr noundef %rtwdev, i32 noundef 76) #8
  %or.i = or i32 %call.i.i142, 16777216
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i143 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %write32.i.i143 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i143, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %or.i) #8
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8.i.i, align 4
  %call.i.i145 = tail call zeroext i8 %37(ptr noundef %rtwdev, i32 noundef 3252) #8
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8.i.i, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 3252, i8 noundef zeroext 119) #8
  %42 = zext i8 %pos_type.addr.0252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %pos_type.addr.0252, label %if.else65 [
    i8 4, label %if.then42
    i8 1, label %if.then60
  ]

if.then42:                                        ; preds = %sw.bb
  %rfe_module_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 3
  %43 = ptrtoint ptr %rfe_module_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rfe_module_type, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %44, label %if.then42.sw.epilog_crit_edge [
    i8 4, label %if.then42.if.else52_crit_edge
    i8 2, label %if.then42.if.else52_crit_edge262
  ]

if.then42.if.else52_crit_edge262:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

if.then42.if.else52_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

if.then42.sw.epilog_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else52:                                        ; preds = %if.then42.if.else52_crit_edge, %if.then42.if.else52_crit_edge262
  %cond = select i1 %cmp36, i32 268435456, i32 536870912
  br label %sw.epilog

if.then60:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %cond63 = select i1 %cmp36, i32 268435456, i32 536870912
  br label %sw.epilog

if.else65:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv69 = select i1 %cmp36, i32 536870912, i32 268435456
  br label %sw.epilog

sw.bb73:                                          ; preds = %13
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i152 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %46 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i152, align 8
  %read32.i.i153 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %read32.i.i153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i153, align 4
  %call.i.i154 = tail call i32 %49(ptr noundef %rtwdev, i32 noundef 76) #8
  %and.i155 = and i32 %call.i.i154, -8388609
  %50 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i152, align 8
  %write32.i.i156 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %write32.i.i156 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i156, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and.i155) #8
  %54 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i152, align 8
  %read32.i.i158 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %read32.i.i158 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i158, align 4
  %call.i.i159 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 76) #8
  %or.i160 = or i32 %call.i.i159, 16777216
  %58 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i152, align 8
  %write32.i.i161 = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %write32.i.i161 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i161, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %or.i160) #8
  %62 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i152, align 8
  %read8.i.i163 = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %read8.i.i163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8.i.i163, align 4
  %call.i.i164 = tail call zeroext i8 %65(ptr noundef %rtwdev, i32 noundef 3252) #8
  %66 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i152, align 8
  %write8.i.i169 = getelementptr inbounds %struct.rtw_hci_ops, ptr %67, i32 0, i32 14
  %68 = ptrtoint ptr %write8.i.i169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write8.i.i169, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 3252, i8 noundef zeroext 102) #8
  %conv77 = select i1 %cmp36, i32 268435456, i32 536870912
  %70 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i152, align 8
  %read32.i.i171 = getelementptr inbounds %struct.rtw_hci_ops, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %read32.i.i171 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i.i171, align 4
  %call.i.i172 = tail call i32 %73(ptr noundef %rtwdev, i32 noundef 3252) #8
  %and21.i173 = and i32 %call.i.i172, 268435455
  %or.i175 = or i32 %and21.i173, %conv77
  %74 = ptrtoint ptr %hci.i.i152 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i152, align 8
  %write32.i.i176 = getelementptr inbounds %struct.rtw_hci_ops, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %write32.i.i176 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32.i.i176, align 4
  tail call void %77(ptr noundef %rtwdev, i32 noundef 3252, i32 noundef %or.i175) #8
  br label %if.else91

sw.bb79:                                          ; preds = %13
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i177 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %78 = ptrtoint ptr %hci.i.i177 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i177, align 8
  %read32.i.i178 = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %read32.i.i178 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i178, align 4
  %call.i.i179 = tail call i32 %81(ptr noundef %rtwdev, i32 noundef 76) #8
  %and.i180 = and i32 %call.i.i179, -8388609
  %82 = ptrtoint ptr %hci.i.i177 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i177, align 8
  %write32.i.i181 = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %write32.i.i181 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i181, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and.i180) #8
  %86 = ptrtoint ptr %hci.i.i177 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i177, align 8
  %read32.i.i183 = getelementptr inbounds %struct.rtw_hci_ops, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %read32.i.i183 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i183, align 4
  %call.i.i184 = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 76) #8
  %or.i185 = or i32 %call.i.i184, 16777216
  %90 = ptrtoint ptr %hci.i.i177 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i177, align 8
  %write32.i.i186 = getelementptr inbounds %struct.rtw_hci_ops, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %write32.i.i186 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i186, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %or.i185) #8
  %94 = ptrtoint ptr %hci.i.i177 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i177, align 8
  %read8.i.i188 = getelementptr inbounds %struct.rtw_hci_ops, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %read8.i.i188 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read8.i.i188, align 4
  %call.i.i189 = tail call zeroext i8 %97(ptr noundef %rtwdev, i32 noundef 3252) #8
  %98 = ptrtoint ptr %hci.i.i177 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hci.i.i177, align 8
  %write8.i.i194 = getelementptr inbounds %struct.rtw_hci_ops, ptr %99, i32 0, i32 14
  %100 = ptrtoint ptr %write8.i.i194 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write8.i.i194, align 4
  tail call void %101(ptr noundef %rtwdev, i32 noundef 3252, i8 noundef zeroext -120) #8
  br label %if.else91

sw.bb80:                                          ; preds = %13
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i195 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %102 = ptrtoint ptr %hci.i.i195 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i195, align 8
  %read32.i.i196 = getelementptr inbounds %struct.rtw_hci_ops, ptr %103, i32 0, i32 13
  %104 = ptrtoint ptr %read32.i.i196 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32.i.i196, align 4
  %call.i.i197 = tail call i32 %105(ptr noundef %rtwdev, i32 noundef 76) #8
  %or.i198 = or i32 %call.i.i197, 8388608
  %106 = ptrtoint ptr %hci.i.i195 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i195, align 8
  %write32.i.i199 = getelementptr inbounds %struct.rtw_hci_ops, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %write32.i.i199 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write32.i.i199, align 4
  tail call void %109(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %or.i198) #8
  %110 = ptrtoint ptr %hci.i.i195 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i195, align 8
  %read8.i.i201 = getelementptr inbounds %struct.rtw_hci_ops, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %read8.i.i201 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8.i.i201, align 4
  %call.i.i202 = tail call zeroext i8 %113(ptr noundef %rtwdev, i32 noundef 100) #8
  %114 = and i8 %call.i.i202, -2
  %conv3.i = zext i1 %cmp36 to i8
  %or.i205 = or i8 %114, %conv3.i
  %115 = ptrtoint ptr %hci.i.i195 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i195, align 8
  %write8.i.i207 = getelementptr inbounds %struct.rtw_hci_ops, ptr %116, i32 0, i32 14
  %117 = ptrtoint ptr %write8.i.i207 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write8.i.i207, align 4
  tail call void %118(ptr noundef %rtwdev, i32 noundef 100, i8 noundef zeroext %or.i205) #8
  br label %if.else91

sw.bb85:                                          ; preds = %13
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i208 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %119 = ptrtoint ptr %hci.i.i208 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i.i208, align 8
  %read32.i.i209 = getelementptr inbounds %struct.rtw_hci_ops, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %read32.i.i209 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read32.i.i209, align 4
  %call.i.i210 = tail call i32 %122(ptr noundef %rtwdev, i32 noundef 76) #8
  %and.i211 = and i32 %call.i.i210, -8388609
  %123 = ptrtoint ptr %hci.i.i208 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i.i208, align 8
  %write32.i.i212 = getelementptr inbounds %struct.rtw_hci_ops, ptr %124, i32 0, i32 16
  %125 = ptrtoint ptr %write32.i.i212 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i.i212, align 4
  tail call void %126(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and.i211) #8
  %127 = ptrtoint ptr %hci.i.i208 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i208, align 8
  %read32.i.i214 = getelementptr inbounds %struct.rtw_hci_ops, ptr %128, i32 0, i32 13
  %129 = ptrtoint ptr %read32.i.i214 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read32.i.i214, align 4
  %call.i.i215 = tail call i32 %130(ptr noundef %rtwdev, i32 noundef 76) #8
  %or.i216 = or i32 %call.i.i215, 16777216
  %131 = ptrtoint ptr %hci.i.i208 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i208, align 8
  %write32.i.i217 = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 16
  %133 = ptrtoint ptr %write32.i.i217 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write32.i.i217, align 4
  tail call void %134(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %or.i216) #8
  br label %if.else91

sw.epilog.thread259:                              ; preds = %13
  call void @__sanitizer_cov_trace_pc() #10
  %hci.i.i218 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %135 = ptrtoint ptr %hci.i.i218 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i218, align 8
  %read32.i.i219 = getelementptr inbounds %struct.rtw_hci_ops, ptr %136, i32 0, i32 13
  %137 = ptrtoint ptr %read32.i.i219 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read32.i.i219, align 4
  %call.i.i220 = tail call i32 %138(ptr noundef %rtwdev, i32 noundef 76) #8
  %and.i221 = and i32 %call.i.i220, -8388609
  %139 = ptrtoint ptr %hci.i.i218 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i218, align 8
  %write32.i.i222 = getelementptr inbounds %struct.rtw_hci_ops, ptr %140, i32 0, i32 16
  %141 = ptrtoint ptr %write32.i.i222 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i.i222, align 4
  tail call void %142(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and.i221) #8
  %143 = ptrtoint ptr %hci.i.i218 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hci.i.i218, align 8
  %read32.i.i224 = getelementptr inbounds %struct.rtw_hci_ops, ptr %144, i32 0, i32 13
  %145 = ptrtoint ptr %read32.i.i224 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read32.i.i224, align 4
  %call.i.i225 = tail call i32 %146(ptr noundef %rtwdev, i32 noundef 76) #8
  %and.i226 = and i32 %call.i.i225, -16777217
  %147 = ptrtoint ptr %hci.i.i218 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i.i218, align 8
  %write32.i.i227 = getelementptr inbounds %struct.rtw_hci_ops, ptr %148, i32 0, i32 16
  %149 = ptrtoint ptr %write32.i.i227 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write32.i.i227, align 4
  tail call void %150(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and.i226) #8
  br label %if.then90

sw.epilog:                                        ; preds = %if.else65, %if.then60, %if.else52, %if.then42.sw.epilog_crit_edge
  %regval.0 = phi i32 [ %cond, %if.else52 ], [ %cond63, %if.then60 ], [ %conv69, %if.else65 ], [ 805306368, %if.then42.sw.epilog_crit_edge ]
  %151 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i148 = getelementptr inbounds %struct.rtw_hci_ops, ptr %152, i32 0, i32 13
  %153 = ptrtoint ptr %read32.i.i148 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read32.i.i148, align 4
  %call.i.i149 = tail call i32 %154(ptr noundef %rtwdev, i32 noundef 3252) #8
  %and21.i = and i32 %call.i.i149, 268435455
  %or.i150 = or i32 %and21.i, %regval.0
  %155 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i151 = getelementptr inbounds %struct.rtw_hci_ops, ptr %156, i32 0, i32 16
  %157 = ptrtoint ptr %write32.i.i151 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write32.i.i151, align 4
  tail call void %158(ptr noundef %rtwdev, i32 noundef 3252, i32 noundef %or.i150) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %ctrl_type.addr.1)
  %cmp88 = icmp eq i8 %ctrl_type.addr.1, 4
  br i1 %cmp88, label %sw.epilog.if.then90_crit_edge, label %sw.epilog.if.else91_crit_edge

sw.epilog.if.else91_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else91

sw.epilog.if.then90_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90

if.then90:                                        ; preds = %sw.epilog.if.then90_crit_edge, %sw.epilog.thread259
  %hci.i.i228 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %159 = ptrtoint ptr %hci.i.i228 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hci.i.i228, align 8
  %read8.i.i229 = getelementptr inbounds %struct.rtw_hci_ops, ptr %160, i32 0, i32 11
  %161 = ptrtoint ptr %read8.i.i229 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read8.i.i229, align 4
  %call.i.i230 = tail call zeroext i8 %162(ptr noundef %rtwdev, i32 noundef 103) #8
  %and.i231 = and i8 %call.i.i230, -33
  %163 = ptrtoint ptr %hci.i.i228 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hci.i.i228, align 8
  %write8.i.i232 = getelementptr inbounds %struct.rtw_hci_ops, ptr %164, i32 0, i32 14
  %165 = ptrtoint ptr %write8.i.i232 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8.i.i232, align 4
  tail call void %166(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %and.i231) #8
  %167 = ptrtoint ptr %hci.i.i228 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i.i228, align 8
  %read8.i.i234 = getelementptr inbounds %struct.rtw_hci_ops, ptr %168, i32 0, i32 11
  %169 = ptrtoint ptr %read8.i.i234 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read8.i.i234, align 4
  %call.i.i235 = tail call zeroext i8 %170(ptr noundef %rtwdev, i32 noundef 103) #8
  %and.i236 = and i8 %call.i.i235, -17
  br label %cleanup.sink.split

if.else91:                                        ; preds = %sw.epilog.if.else91_crit_edge, %sw.bb85, %sw.bb80, %sw.bb79, %sw.bb73
  %hci.i.i238 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %171 = ptrtoint ptr %hci.i.i238 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hci.i.i238, align 8
  %read8.i.i239 = getelementptr inbounds %struct.rtw_hci_ops, ptr %172, i32 0, i32 11
  %173 = ptrtoint ptr %read8.i.i239 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read8.i.i239, align 4
  %call.i.i240 = tail call zeroext i8 %174(ptr noundef %rtwdev, i32 noundef 103) #8
  %or5.i = or i8 %call.i.i240, 32
  %175 = ptrtoint ptr %hci.i.i238 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hci.i.i238, align 8
  %write8.i.i241 = getelementptr inbounds %struct.rtw_hci_ops, ptr %176, i32 0, i32 14
  %177 = ptrtoint ptr %write8.i.i241 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write8.i.i241, align 4
  tail call void %178(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %or5.i) #8
  %179 = ptrtoint ptr %hci.i.i238 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hci.i.i238, align 8
  %read8.i.i243 = getelementptr inbounds %struct.rtw_hci_ops, ptr %180, i32 0, i32 11
  %181 = ptrtoint ptr %read8.i.i243 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read8.i.i243, align 4
  %call.i.i244 = tail call zeroext i8 %182(ptr noundef %rtwdev, i32 noundef 103) #8
  %or5.i245 = or i8 %call.i.i244, 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else91, %if.then90
  %hci.i.i228.sink = phi ptr [ %hci.i.i228, %if.then90 ], [ %hci.i.i238, %if.else91 ]
  %and.i236.sink = phi i8 [ %and.i236, %if.then90 ], [ %or5.i245, %if.else91 ]
  %183 = ptrtoint ptr %hci.i.i228.sink to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hci.i.i228.sink, align 8
  %write8.i.i237 = getelementptr inbounds %struct.rtw_hci_ops, ptr %184, i32 0, i32 14
  %185 = ptrtoint ptr %write8.i.i237 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write8.i.i237, align 4
  tail call void %186(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %and.i236.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8821c_coex_cfg_gnt_fix(ptr nocapture noundef %rtwdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8821c_coex_cfg_gnt_debug(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 100) #8
  %and.i = and i32 %call.i.i, -1048577
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 100, i32 noundef %and.i) #8
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i7 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i7, align 4
  %call.i.i8 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 100) #8
  %and.i9 = and i32 %call.i.i8, -16777217
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i10 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i10, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 100, i32 noundef %and.i9) #8
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i12 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i12, align 4
  %call.i.i13 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 64) #8
  %and.i14 = and i32 %call.i.i13, -524289
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i15 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i15, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %and.i14) #8
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i17 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i17, align 4
  %call.i.i18 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 100) #8
  %and.i19 = and i32 %call.i.i18, -32769
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i20 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i20, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 100, i32 noundef %and.i19) #8
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i22 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i22, align 4
  %call.i.i23 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 112) #8
  %and.i24 = and i32 %call.i.i23, -262145
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i.i25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i25, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %and.i24) #8
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i27 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %read32.i.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i27, align 4
  %call.i.i28 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 112) #8
  %and.i29 = and i32 %call.i.i28, -134217729
  %44 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i30 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %write32.i.i30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i30, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %and.i29) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8821c_coex_cfg_rfe_type(ptr nocapture noundef %rtwdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rfe_option, align 2
  %rfe_module_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 3
  %2 = ptrtoint ptr %rfe_module_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rfe_module_type, align 1
  %ant_switch_polarity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 4
  %3 = ptrtoint ptr %ant_switch_polarity to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ant_switch_polarity, align 1
  %4 = ptrtoint ptr %rfe to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %rfe, align 1
  %wlg_at_btg = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 5
  %5 = ptrtoint ptr %wlg_at_btg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wlg_at_btg, align 1
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 14, label %entry.sw.bb11_crit_edge
    i8 6, label %entry.sw.bb11_crit_edge23
    i8 13, label %entry.sw.bb11_crit_edge24
    i8 5, label %entry.sw.bb11_crit_edge25
    i8 2, label %entry.sw.bb4_crit_edge
    i8 10, label %entry.sw.bb4_crit_edge26
    i8 7, label %entry.sw.bb4_crit_edge27
    i8 15, label %entry.sw.bb4_crit_edge28
    i8 3, label %entry.sw.bb6_crit_edge
    i8 11, label %entry.sw.bb6_crit_edge29
    i8 4, label %entry.sw.bb8_crit_edge
    i8 12, label %entry.sw.bb8_crit_edge30
  ]

entry.sw.bb8_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb6_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb11_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge26, %entry.sw.bb4_crit_edge27, %entry.sw.bb4_crit_edge28
  %7 = ptrtoint ptr %wlg_at_btg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %wlg_at_btg, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge29
  %8 = ptrtoint ptr %ant_switch_polarity to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ant_switch_polarity, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge30
  %9 = ptrtoint ptr %wlg_at_btg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %wlg_at_btg, align 1
  %10 = ptrtoint ptr %ant_switch_polarity to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ant_switch_polarity, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge23, %entry.sw.bb11_crit_edge24, %entry.sw.bb11_crit_edge25
  %11 = ptrtoint ptr %rfe to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rfe, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb4, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8821c_coex_cfg_wl_tx_power(ptr nocapture noundef %rtwdev, i8 noundef zeroext %wl_pwr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %share_ant3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %0 = ptrtoint ptr %share_ant3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %share_ant3, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_wl_pwr_lvl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 12
  %2 = ptrtoint ptr %cur_wl_pwr_lvl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_wl_pwr_lvl, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %wl_pwr)
  %cmp = icmp eq i8 %3, %wl_pwr
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %cur_wl_pwr_lvl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %wl_pwr, ptr %cur_wl_pwr_lvl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8821c_coex_cfg_wl_rx_gain(ptr nocapture noundef %rtwdev, i1 noundef zeroext %low_gain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_load_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_channel_mac(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_rx_fill_rx_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8821c_do_iqk(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %para = alloca %struct.rtw_iqk_para, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %para) #8
  %0 = ptrtoint ptr %para to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %para, align 2
  %sta_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 35
  %1 = ptrtoint ptr %sta_cnt.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sta_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %segment_iqk = getelementptr inbounds %struct.rtw_iqk_para, ptr %para, i32 0, i32 1
  %3 = ptrtoint ptr %segment_iqk to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %segment_iqk, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @rtw_fw_do_iqk(ptr noundef %rtwdev, ptr noundef nonnull %para) #8
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %if.end
  %counter.026 = phi i32 [ 0, %if.end ], [ %inc, %if.end4.for.body_crit_edge ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #8
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_rf.i, align 4
  %call5.i = call i32 %9(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 8, i32 noundef 1048575) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 703710, i32 %call5.i)
  %cmp2 = icmp eq i32 %call5.i, 703710
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %if.end4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end4:                                          ; preds = %for.body
  call void @msleep(i32 noundef 20) #8
  %inc = add nuw nsw i32 %counter.026, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %for.body.for.end_crit_edge
  %counter.0.lcssa = phi i32 [ %counter.026, %for.body.for.end_crit_edge ], [ 300, %if.end4.for.end_crit_edge ]
  %call2.i19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #8
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_rf.i, align 4
  %call5.i21 = call zeroext i1 %15(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 8, i32 noundef 1048575, i32 noundef 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i19) #8
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef %rtwdev, i32 noundef 7152) #8
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i23, align 4
  %call.i.i24 = call i32 %23(ptr noundef %rtwdev, i32 noundef 7152) #8
  %and.i25 = and i32 %call.i.i24, 255
  %24 = lshr i32 %call.i.i, 16
  %.lobit = and i32 %24, 1
  %25 = load i32, ptr @rtw8821c_do_iqk.do_iqk_cnt, align 4
  %inc9 = add i32 %25, 1
  store i32 %inc9, ptr @rtw8821c_do_iqk.do_iqk_cnt, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %counter.0.lcssa, i32 noundef %.lobit, i32 noundef %inc9, i32 noundef %and.i25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %para) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_do_iqk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_config_swing_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_pwrtrack_avg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_pwrtrack_thermal_changed(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_pwrtrack_get_delta(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @rtw_phy_pwrtrack_get_pwridx(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_pwrtrack_need_iqk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_regd_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_get_tx_power_index(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_enable_bfee_su(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_remove_bfee_su(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_enable_bfee_mu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_remove_bfee_mu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1878, i32 13}
!2 = !{ptr @rtw8821c_hw_spec, !3, !"rtw8821c_hw_spec", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1875, i32 22}
!4 = !{ptr @__ksymtab_rtw8821c_hw_spec, !5, !"__ksymtab_rtw8821c_hw_spec", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1952, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware495, !7, !"__UNIQUE_ID_firmware495", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1954, i32 1}
!8 = !{ptr @__UNIQUE_ID_author496, !9, !"__UNIQUE_ID_author496", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1956, i32 1}
!10 = !{ptr @__UNIQUE_ID_description497, !11, !"__UNIQUE_ID_description497", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1957, i32 1}
!12 = !{ptr @__UNIQUE_ID_file498, !13, !"__UNIQUE_ID_file498", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1958, i32 1}
!14 = !{ptr @__UNIQUE_ID_license499, !13, !"__UNIQUE_ID_license499", i1 false, i1 false}
!15 = !{ptr @rtw8821c_ops, !16, !"rtw8821c_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1573, i32 28}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw88/hci.h", i32 236, i32 2}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rtw8821c_txscale_tbl, !21, !"rtw8821c_txscale_tbl", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 79, i32 18}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 572, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @query_phy_status._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @query_phy_status._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 502, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @get_cck_rx_pwr._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @get_cck_rx_pwr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lna_gain_table_0, !37, !"lna_gain_table_0", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 19, i32 17}
!38 = !{ptr @lna_gain_table_1, !39, !"lna_gain_table_1", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 20, i32 17}
!40 = !{ptr @rtw8821c_set_tx_power_index_by_rate.offset_txagc, !41, !"offset_txagc", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 622, i32 19}
!42 = !{ptr @rtw8821c_set_tx_power_index_by_rate.phy_pwr_idx, !43, !"phy_pwr_idx", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 623, i32 13}
!44 = !{ptr @rtw8821c_do_iqk.do_iqk_cnt, !45, !"do_iqk_cnt", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 710, i32 13}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 731, i32 2}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1123, i32 2}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1131, i32 2}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 983, i32 3}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rtw8821c_txagc_swing_offset._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtw8821c_txagc_swing_offset._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1114, i32 3}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rtw8821c_bf_config_bfee._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rtw8821c_bf_config_bfee._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @card_enable_flow_8821c, !63, !"card_enable_flow_8821c", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1458, i32 38}
!64 = !{ptr @trans_carddis_to_cardemu_8821c, !65, !"trans_carddis_to_cardemu_8821c", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1145, i32 31}
!66 = !{ptr @trans_cardemu_to_act_8821c, !67, !"trans_cardemu_to_act_8821c", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1183, i32 31}
!68 = !{ptr @card_disable_flow_8821c, !69, !"card_disable_flow_8821c", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1464, i32 38}
!70 = !{ptr @trans_act_to_cardemu_8821c, !71, !"trans_act_to_cardemu_8821c", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1287, i32 31}
!72 = !{ptr @trans_cardemu_to_carddis_8821c, !73, !"trans_cardemu_to_carddis_8821c", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1345, i32 31}
!74 = !{ptr @rqpn_table_8821c, !75, !"rqpn_table_8821c", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1538, i32 24}
!76 = !{ptr @prioq_addrs_8821c, !77, !"prioq_addrs_8821c", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1557, i32 31}
!78 = !{ptr @page_table_8821c, !79, !"page_table_8821c", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1529, i32 30}
!80 = !{ptr @phy_para_table_8821c, !81, !"phy_para_table_8821c", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1502, i32 45}
!82 = !{ptr @usb2_param_8821c, !83, !"usb2_param_8821c", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1470, i32 39}
!84 = !{ptr @usb3_param_8821c, !85, !"usb3_param_8821c", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1477, i32 39}
!86 = !{ptr @pcie_gen1_param_8821c, !87, !"pcie_gen1_param_8821c", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1484, i32 39}
!88 = !{ptr @pcie_gen2_param_8821c, !89, !"pcie_gen2_param_8821c", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1495, i32 39}
!90 = !{ptr @rtw8821c_dig, !91, !"rtw8821c_dig", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1519, i32 26}
!92 = !{ptr @rtw8821c_ltecoex_addr, !93, !"rtw8821c_ltecoex_addr", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1523, i32 38}
!94 = !{ptr @rtw8821c_rfe_defs, !95, !"rtw8821c_rfe_defs", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1513, i32 33}
!96 = !{ptr @rtw8821c_rtw_pwr_track_tbl, !97, !"rtw8821c_rtw_pwr_track_tbl", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1827, i32 39}
!98 = !{ptr @rtw8821c_pwrtrk_5gb_n, !99, !"rtw8821c_pwrtrk_5gb_n", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1751, i32 17}
!100 = !{ptr @rtw8821c_pwrtrk_5gb_p, !101, !"rtw8821c_pwrtrk_5gb_p", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1760, i32 17}
!102 = !{ptr @rtw8821c_pwrtrk_5ga_n, !103, !"rtw8821c_pwrtrk_5ga_n", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1769, i32 17}
!104 = !{ptr @rtw8821c_pwrtrk_5ga_p, !105, !"rtw8821c_pwrtrk_5ga_p", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1778, i32 17}
!106 = !{ptr @rtw8821c_pwrtrk_2gb_n, !107, !"rtw8821c_pwrtrk_2gb_n", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1787, i32 17}
!108 = !{ptr @rtw8821c_pwrtrk_2gb_p, !109, !"rtw8821c_pwrtrk_2gb_p", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1792, i32 17}
!110 = !{ptr @rtw8821c_pwrtrk_2ga_n, !111, !"rtw8821c_pwrtrk_2ga_n", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1797, i32 17}
!112 = !{ptr @rtw8821c_pwrtrk_2ga_p, !113, !"rtw8821c_pwrtrk_2ga_p", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1802, i32 17}
!114 = !{ptr @rtw8821c_pwrtrk_2g_cck_b_n, !115, !"rtw8821c_pwrtrk_2g_cck_b_n", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1807, i32 17}
!116 = !{ptr @rtw8821c_pwrtrk_2g_cck_b_p, !117, !"rtw8821c_pwrtrk_2g_cck_b_p", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1812, i32 17}
!118 = !{ptr @rtw8821c_pwrtrk_2g_cck_a_n, !119, !"rtw8821c_pwrtrk_2g_cck_a_n", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1817, i32 17}
!120 = !{ptr @rtw8821c_pwrtrk_2g_cck_a_p, !121, !"rtw8821c_pwrtrk_2g_cck_a_p", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1822, i32 17}
!122 = !{ptr @bt_rssi_step_8821c, !123, !"bt_rssi_step_8821c", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1603, i32 17}
!124 = !{ptr @wl_rssi_step_8821c, !125, !"wl_rssi_step_8821c", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1602, i32 17}
!126 = !{ptr @table_nsant_8821c, !127, !"table_nsant_8821c", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1643, i32 37}
!128 = !{ptr @table_sant_8821c, !129, !"table_sant_8821c", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1606, i32 37}
!130 = !{ptr @tdma_sant_8821c, !131, !"tdma_sant_8821c", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1671, i32 36}
!132 = !{ptr @tdma_nsant_8821c, !133, !"tdma_nsant_8821c", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1703, i32 36}
!134 = !{ptr @rf_para_tx_8821c, !135, !"rf_para_tx_8821c", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1731, i32 34}
!136 = !{ptr @rf_para_rx_8821c, !137, !"rf_para_rx_8821c", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1740, i32 34}
!138 = !{ptr @afh_5g_8821c, !139, !"afh_5g_8821c", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1728, i32 37}
!140 = !{ptr @coex_info_hw_regs_8821c, !141, !"coex_info_hw_regs_8821c", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8821c.c", i32 1850, i32 36}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i8 0, i8 2}
