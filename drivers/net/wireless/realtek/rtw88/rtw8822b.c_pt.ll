; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/rtw8822b.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/rtw8822b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw8822b_hw_spec\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw8822b_hw_spec\09\09\09\09"
module asm "\09.long\09__crc_rtw8822b_hw_spec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw8822b_hw_spec:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw8822b_hw_spec\22\09\09\09\09\09"
module asm "__kstrtabns_rtw8822b_hw_spec:\09\09\09\09\09"
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
%struct.rtw_hw_reg_offset = type { %struct.rtw_hw_reg, i8 }
%struct.coex_table_para = type { i32, i32 }
%struct.coex_tdma_para = type { [5 x i8] }
%struct.coex_rf_para = type { i8, i8, i8, i8 }
%struct.coex_5g_afh_map = type { i32, i8, i8 }
%struct.rtw_reg_domain = type { i32, i32, i8 }
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtw8822b_rfe_info = type { ptr, ptr, i32, i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cca_ccut = type { [4 x i32], [4 x i32], [4 x i32] }
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
%struct.rtw8822b_efuse = type { i16, [14 x i8], [4 x %struct.rtw_txpwr_idx], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [3 x i8], %union.anon.135 }
%union.anon.135 = type { %struct.rtw8822bu_efuse }
%struct.rtw8822bu_efuse = type { [4 x i8], i8, [30 x i8], [2 x i8], [11 x i8], i8, i8, i8, [4 x i8], [6 x i8], [2 x i8], [7 x i8], [2 x i8], [20 x i8], [207 x i8], i8, [4 x i8] }
%struct.rtw_rx_pkt_stat = type { i8, i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], [4 x i8], i16, i8, ptr, ptr, ptr }
%struct.rtw_swing_table = type { [4 x ptr], [4 x ptr] }
%struct.rtw_iqk_para = type { i8, i8 }

@rtw8822b_ops = internal global { %struct.rtw_chip_ops, [56 x i8] } { %struct.rtw_chip_ops { ptr @rtw8822b_mac_init, ptr null, ptr null, ptr @rtw8822b_read_efuse, ptr @rtw8822b_phy_set_param, ptr @rtw8822b_set_channel, ptr @rtw8822b_query_rx_desc, ptr @rtw_phy_read_rf, ptr @rtw_phy_write_rf_reg_sipi, ptr @rtw8822b_set_tx_power_index, ptr null, ptr @rtw8822b_set_antenna, ptr @rtw8822b_cfg_ldo25, ptr null, ptr @rtw8822b_false_alarm_statistics, ptr @rtw8822b_phy_calibration, ptr null, ptr null, ptr @rtw8822b_pwr_track, ptr @rtw8822b_bf_config_bfee, ptr @rtw_bf_set_gid_table, ptr @rtw_bf_cfg_csi_rate, ptr @rtw8822b_adaptivity_init, ptr @rtw8822b_adaptivity, ptr null, ptr null, ptr null, ptr @rtw8822b_coex_cfg_init, ptr @rtw8822b_coex_cfg_ant_switch, ptr @rtw8822b_coex_cfg_gnt_fix, ptr @rtw8822b_coex_cfg_gnt_debug, ptr @rtw8822b_coex_cfg_rfe_type, ptr @rtw8822b_coex_cfg_wl_tx_power, ptr @rtw8822b_coex_cfg_wl_rx_gain }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw88/rtw8822b_fw.bin\00", [42 x i8] zeroinitializer }, align 32
@card_enable_flow_8822b = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @trans_carddis_to_cardemu_8822b, ptr @trans_cardemu_to_act_8822b, ptr null], [20 x i8] zeroinitializer }, align 32
@card_disable_flow_8822b = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @trans_act_to_cardemu_8822b, ptr @trans_cardemu_to_carddis_8822b, ptr null], [20 x i8] zeroinitializer }, align 32
@rqpn_table_8822b = internal constant { [5 x %struct.rtw_rqpn], [40 x i8] } { [5 x %struct.rtw_rqpn] [%struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 2, i32 3, i32 3, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 3, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }], [40 x i8] zeroinitializer }, align 32
@prioq_addrs_8822b = internal global { %struct.rtw_prioq_addrs, [60 x i8] } { %struct.rtw_prioq_addrs { [4 x %struct.rtw_prioq_addr] [%struct.rtw_prioq_addr { i32 572, i32 574 }, %struct.rtw_prioq_addr { i32 564, i32 566 }, %struct.rtw_prioq_addr { i32 568, i32 570 }, %struct.rtw_prioq_addr { i32 560, i32 562 }], i8 1 }, [60 x i8] zeroinitializer }, align 32
@page_table_8822b = internal constant { [5 x %struct.rtw_page_table], [46 x i8] } { [5 x %struct.rtw_page_table] [%struct.rtw_page_table { i16 64, i16 64, i16 64, i16 64, i16 1 }, %struct.rtw_page_table { i16 64, i16 64, i16 64, i16 64, i16 1 }, %struct.rtw_page_table { i16 64, i16 64, i16 0, i16 0, i16 1 }, %struct.rtw_page_table { i16 64, i16 64, i16 64, i16 0, i16 1 }, %struct.rtw_page_table { i16 64, i16 64, i16 64, i16 64, i16 1 }], [46 x i8] zeroinitializer }, align 32
@phy_para_table_8822b = internal constant { %struct.rtw_intf_phy_para_table, [44 x i8] } { %struct.rtw_intf_phy_para_table { ptr @usb2_param_8822b, ptr @usb3_param_8822b, ptr @pcie_gen1_param_8822b, ptr @pcie_gen2_param_8822b, i8 1, i8 1, i8 11, i8 11 }, [44 x i8] zeroinitializer }, align 32
@rtw8822b_dig = internal constant { [2 x %struct.rtw_hw_reg], [16 x i8] } { [2 x %struct.rtw_hw_reg] [%struct.rtw_hw_reg { i32 3152, i32 127 }, %struct.rtw_hw_reg { i32 3664, i32 127 }], [16 x i8] zeroinitializer }, align 32
@rtw8822b_ltecoex_addr = internal constant { %struct.rtw_ltecoex_addr, [20 x i8] } { %struct.rtw_ltecoex_addr { i32 5888, i32 5892, i32 5896 }, [20 x i8] zeroinitializer }, align 32
@rtw8822b_mac_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_agc_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_bb_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_rf_a_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_rf_b_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_rfe_defs = internal constant { [6 x %struct.rtw_rfe_def], [56 x i8] } { [6 x %struct.rtw_rfe_def] [%struct.rtw_rfe_def zeroinitializer, %struct.rtw_rfe_def zeroinitializer, %struct.rtw_rfe_def { ptr @rtw8822b_bb_pg_type2_tbl, ptr @rtw8822b_txpwr_lmt_type2_tbl, ptr null }, %struct.rtw_rfe_def { ptr @rtw8822b_bb_pg_type3_tbl, ptr @rtw8822b_txpwr_lmt_type0_tbl, ptr null }, %struct.rtw_rfe_def zeroinitializer, %struct.rtw_rfe_def { ptr @rtw8822b_bb_pg_type5_tbl, ptr @rtw8822b_txpwr_lmt_type5_tbl, ptr null }], [56 x i8] zeroinitializer }, align 32
@rtw8822b_rtw_pwr_track_tbl = internal constant { %struct.rtw_pwr_track_tbl, [40 x i8] } { %struct.rtw_pwr_track_tbl { [3 x ptr] [ptr @rtw8822b_pwrtrk_5gb_n, ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5gb_n, i64 30), ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5gb_n, i64 60)], [3 x ptr] [ptr @rtw8822b_pwrtrk_5gb_p, ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5gb_p, i64 30), ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5gb_p, i64 60)], [3 x ptr] [ptr @rtw8822b_pwrtrk_5ga_n, ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5ga_n, i64 30), ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5ga_n, i64 60)], [3 x ptr] [ptr @rtw8822b_pwrtrk_5ga_p, ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5ga_p, i64 30), ptr getelementptr (i8, ptr @rtw8822b_pwrtrk_5ga_p, i64 60)], ptr @rtw8822b_pwrtrk_2gb_n, ptr @rtw8822b_pwrtrk_2gb_p, ptr @rtw8822b_pwrtrk_2ga_n, ptr @rtw8822b_pwrtrk_2ga_p, ptr @rtw8822b_pwrtrk_2g_cck_b_n, ptr @rtw8822b_pwrtrk_2g_cck_b_p, ptr @rtw8822b_pwrtrk_2g_cck_a_n, ptr @rtw8822b_pwrtrk_2g_cck_a_p, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtw8822b_edcca_th = internal global { [2 x %struct.rtw_hw_reg_offset], [40 x i8] } { [2 x %struct.rtw_hw_reg_offset] [%struct.rtw_hw_reg_offset { %struct.rtw_hw_reg { i32 2212, i32 255 }, i8 0 }, %struct.rtw_hw_reg_offset { %struct.rtw_hw_reg { i32 2212, i32 65280 }, i8 0 }], [40 x i8] zeroinitializer }, align 32
@bt_rssi_step_8822b = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\1E\1E\1E\1E", [28 x i8] zeroinitializer }, align 32
@wl_rssi_step_8822b = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<2,\1E", [28 x i8] zeroinitializer }, align 32
@table_nsant_8822b = internal constant { [24 x %struct.coex_table_para], [32 x i8] } { [24 x %struct.coex_table_para] [%struct.coex_table_para { i32 -1, i32 -1 }, %struct.coex_table_para { i32 1431655765, i32 1431655765 }, %struct.coex_table_para { i32 1716868437, i32 1716868437 }, %struct.coex_table_para { i32 -1431655766, i32 -1431655766 }, %struct.coex_table_para { i32 1515870810, i32 1515870810 }, %struct.coex_table_para { i32 -84215046, i32 -84215046 }, %struct.coex_table_para { i32 1526356730, i32 1526356730 }, %struct.coex_table_para { i32 1431655765, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 1515870810 }, %struct.coex_table_para { i32 1716868437, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 1526356730 }, %struct.coex_table_para { i32 -43521, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -43521 }, %struct.coex_table_para { i32 -1426063446, i32 1526356730 }, %struct.coex_table_para { i32 -1426063446, i32 -1431655766 }, %struct.coex_table_para { i32 -1, i32 -84215046 }, %struct.coex_table_para { i32 -1, i32 1526356730 }, %struct.coex_table_para { i32 -1, i32 -1431655766 }, %struct.coex_table_para { i32 1442797055, i32 1526356730 }, %struct.coex_table_para { i32 1442797055, i32 -1431655766 }, %struct.coex_table_para { i32 1442797055, i32 1442797055 }], [32 x i8] zeroinitializer }, align 32
@table_sant_8822b = internal constant { [33 x %struct.coex_table_para], [88 x i8] } { [33 x %struct.coex_table_para] [%struct.coex_table_para { i32 -1, i32 -1 }, %struct.coex_table_para { i32 1431655765, i32 1431655765 }, %struct.coex_table_para { i32 1716868437, i32 1716868437 }, %struct.coex_table_para { i32 -1431655766, i32 -1431655766 }, %struct.coex_table_para { i32 1515870810, i32 1515870810 }, %struct.coex_table_para { i32 -84215046, i32 -84215046 }, %struct.coex_table_para { i32 1784304981, i32 -1431655766 }, %struct.coex_table_para { i32 1784305322, i32 1784305322 }, %struct.coex_table_para { i32 1784306266, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 1515870810 }, %struct.coex_table_para { i32 1716868437, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 1515870890 }, %struct.coex_table_para { i32 1716868437, i32 1789549226 }, %struct.coex_table_para { i32 1716868437, i32 -1431676246 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 1794792186 }, %struct.coex_table_para { i32 -1426063446, i32 -84215046 }, %struct.coex_table_para { i32 -1437248086, i32 1515870810 }, %struct.coex_table_para { i32 -1437248086, i32 1784306266 }, %struct.coex_table_para { i32 -1437248086, i32 -1431655766 }, %struct.coex_table_para { i32 -1, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 1431655765 }, %struct.coex_table_para { i32 -1, i32 1784306346 }, %struct.coex_table_para { i32 1431655765, i32 1515870810 }, %struct.coex_table_para { i32 1431655765, i32 -1431655766 }, %struct.coex_table_para { i32 1431655765, i32 1784310362 }, %struct.coex_table_para { i32 1716872789, i32 1716872789 }, %struct.coex_table_para { i32 1716873898, i32 1784310442 }, %struct.coex_table_para { i32 -1, i32 1521113770 }, %struct.coex_table_para { i32 1448432981, i32 1515870890 }], [88 x i8] zeroinitializer }, align 32
@tdma_sant_8822b = internal constant { [28 x %struct.coex_tdma_para], [52 x i8] } { [28 x %struct.coex_tdma_para] [%struct.coex_tdma_para zeroinitializer, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\14" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\10\14" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10U" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\07\10T" }, %struct.coex_tdma_para { [5 x i8] c"QE\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q:\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q0\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q \03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"QJ\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\0C\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"U\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"e\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10Q" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\11" }], [52 x i8] zeroinitializer }, align 32
@tdma_nsant_8822b = internal constant { [22 x %struct.coex_tdma_para], [50 x i8] } { [22 x %struct.coex_tdma_para] [%struct.coex_tdma_para zeroinitializer, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\14" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\10\14" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10U" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\07\10T" }, %struct.coex_tdma_para { [5 x i8] c"QE\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q:\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q0\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q \03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10P" }], [50 x i8] zeroinitializer }, align 32
@rf_para_tx_8822b = internal constant { [6 x %struct.coex_rf_para], [40 x i8] } { [6 x %struct.coex_rf_para] [%struct.coex_rf_para { i8 0, i8 0, i8 0, i8 7 }, %struct.coex_rf_para { i8 0, i8 16, i8 0, i8 7 }, %struct.coex_rf_para { i8 4, i8 0, i8 1, i8 1 }, %struct.coex_rf_para { i8 3, i8 6, i8 1, i8 1 }, %struct.coex_rf_para { i8 2, i8 9, i8 1, i8 1 }, %struct.coex_rf_para { i8 1, i8 13, i8 1, i8 1 }], [40 x i8] zeroinitializer }, align 32
@rf_para_rx_8822b = internal constant { [6 x %struct.coex_rf_para], [40 x i8] } { [6 x %struct.coex_rf_para] [%struct.coex_rf_para { i8 0, i8 0, i8 0, i8 7 }, %struct.coex_rf_para { i8 0, i8 16, i8 0, i8 7 }, %struct.coex_rf_para { i8 4, i8 0, i8 1, i8 1 }, %struct.coex_rf_para { i8 3, i8 6, i8 1, i8 1 }, %struct.coex_rf_para { i8 2, i8 9, i8 1, i8 1 }, %struct.coex_rf_para { i8 1, i8 13, i8 1, i8 1 }], [40 x i8] zeroinitializer }, align 32
@afh_5g_8822b = internal constant { [19 x %struct.coex_5g_afh_map], [40 x i8] } { [19 x %struct.coex_5g_afh_map] [%struct.coex_5g_afh_map { i32 120, i8 2, i8 4 }, %struct.coex_5g_afh_map { i32 124, i8 8, i8 8 }, %struct.coex_5g_afh_map { i32 128, i8 17, i8 8 }, %struct.coex_5g_afh_map { i32 132, i8 26, i8 10 }, %struct.coex_5g_afh_map { i32 136, i8 34, i8 8 }, %struct.coex_5g_afh_map { i32 140, i8 42, i8 10 }, %struct.coex_5g_afh_map { i32 144, i8 51, i8 8 }, %struct.coex_5g_afh_map { i32 149, i8 62, i8 8 }, %struct.coex_5g_afh_map { i32 153, i8 71, i8 10 }, %struct.coex_5g_afh_map { i32 157, i8 77, i8 4 }, %struct.coex_5g_afh_map { i32 118, i8 2, i8 4 }, %struct.coex_5g_afh_map { i32 126, i8 12, i8 16 }, %struct.coex_5g_afh_map { i32 134, i8 29, i8 16 }, %struct.coex_5g_afh_map { i32 142, i8 46, i8 16 }, %struct.coex_5g_afh_map { i32 151, i8 66, i8 16 }, %struct.coex_5g_afh_map { i32 159, i8 76, i8 4 }, %struct.coex_5g_afh_map { i32 122, i8 10, i8 20 }, %struct.coex_5g_afh_map { i32 138, i8 37, i8 34 }, %struct.coex_5g_afh_map { i32 155, i8 68, i8 20 }], [40 x i8] zeroinitializer }, align 32
@coex_info_hw_regs_8822b = internal constant { [24 x %struct.rtw_reg_domain], [64 x i8] } { [24 x %struct.rtw_reg_domain] [%struct.rtw_reg_domain { i32 3248, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 3252, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 3258, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 3261, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 3160, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 3261, i32 1, i8 2 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 1072, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1076, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1066, i32 65535, i8 1 }, %struct.rtw_reg_domain { i32 1062, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 1118, i32 8, i8 2 }, %struct.rtw_reg_domain { i32 1108, i32 65535, i8 1 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 76, i32 25165824, i8 0 }, %struct.rtw_reg_domain { i32 100, i32 1, i8 2 }, %struct.rtw_reg_domain { i32 1222, i32 16, i8 2 }, %struct.rtw_reg_domain { i32 64, i32 32, i8 2 }, %struct.rtw_reg_domain { i32 1, i32 1048575, i8 4 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 1360, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1314, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 2387, i32 2, i8 2 }, %struct.rtw_reg_domain { i32 3152, i32 255, i8 2 }], [64 x i8] zeroinitializer }, align 32
@rtw8822b_hw_spec = dso_local global { %struct.rtw_chip_info, [84 x i8] } { %struct.rtw_chip_info { ptr @rtw8822b_ops, i8 0, ptr @.str, i32 0, i8 48, i8 16, i8 24, i8 8, i32 1024, i32 768, i32 96, i32 262144, i32 24576, i32 12288, i8 3, i8 -128, i8 0, i8 0, i8 28, i8 1, i8 1, i8 1, i8 0, i8 63, [6 x i16] [i16 1920, i16 1792, i16 1920, i16 1632, i16 1616, i16 1664], ptr null, i8 0, i8 0, i8 1, i8 1, i8 2, i8 -36, ptr @card_enable_flow_8822b, ptr @card_disable_flow_8822b, ptr @rqpn_table_8822b, ptr @prioq_addrs_8822b, ptr @page_table_8822b, ptr @phy_para_table_8822b, ptr @rtw8822b_dig, ptr null, [2 x i32] [i32 10240, i32 11264], [2 x i32] [i32 3216, i32 3728], ptr null, i8 0, ptr @rtw8822b_ltecoex_addr, ptr @rtw8822b_mac_tbl, ptr @rtw8822b_agc_tbl, ptr @rtw8822b_bb_tbl, [4 x ptr] [ptr @rtw8822b_rf_a_tbl, ptr @rtw8822b_rf_b_tbl, ptr null, ptr null], ptr null, ptr @rtw8822b_rfe_defs, i32 6, i8 0, i16 0, i8 8, i8 0, ptr @rtw8822b_rtw_pwr_track_tbl, i8 2, i8 1, ptr @rtw8822b_edcca_th, i8 60, i8 36, ptr null, ptr null, i8 0, [3 x i32] zeroinitializer, i32 537330182, i8 6, i8 1, i8 0, i8 0, i8 0, i8 0, i8 15, i8 2, i8 33, i8 24, i8 28, i8 22, i8 36, i8 54, i8 19, i8 6, i8 24, ptr @bt_rssi_step_8822b, ptr @wl_rssi_step_8822b, ptr @table_nsant_8822b, ptr @table_sant_8822b, ptr @tdma_sant_8822b, ptr @tdma_nsant_8822b, ptr @rf_para_tx_8822b, ptr @rf_para_rx_8822b, ptr @afh_5g_8822b, ptr null, ptr @coex_info_hw_regs_8822b, i32 0 }, [84 x i8] zeroinitializer }, align 32
@__kstrtab_rtw8822b_hw_spec = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw8822b_hw_spec = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw8822b_hw_spec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw8822b_hw_spec to i32), ptr @__kstrtab_rtw8822b_hw_spec, ptr @__kstrtabns_rtw8822b_hw_spec }, section "___ksymtab+rtw8822b_hw_spec", align 4
@__UNIQUE_ID_firmware458 = internal constant [43 x i8] c"rtw88_8822b.firmware=rtw88/rtw8822b_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_author459 = internal constant [39 x i8] c"rtw88_8822b.author=Realtek Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [63 x i8] c"rtw88_8822b.description=Realtek 802.11ac wireless 8822b driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file461 = internal constant [64 x i8] c"rtw88_8822b.file=drivers/net/wireless/realtek/rtw88/rtw88_8822b\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [33 x i8] c"rtw88_8822b.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/realtek/rtw88/rtw8822b.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rfe_option %d is out of boundary\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw8822b_rfe_info = internal constant { [6 x %struct.rtw8822b_rfe_info], [40 x i8] } { [6 x %struct.rtw8822b_rfe_info] [%struct.rtw8822b_rfe_info zeroinitializer, %struct.rtw8822b_rfe_info zeroinitializer, %struct.rtw8822b_rfe_info { ptr @cca_ifem_ccut, ptr @cca_efem_ccut, i32 2, i8 0, ptr @rtw8822b_set_channel_rfe_efem }, %struct.rtw8822b_rfe_info { ptr @cca_ifem_ccut_ext, ptr @cca_ifem_ccut_ext, i32 0, i8 1, ptr @rtw8822b_set_channel_rfe_ifem }, %struct.rtw8822b_rfe_info zeroinitializer, %struct.rtw8822b_rfe_info { ptr @cca_ifem_ccut_ext, ptr @cca_ifem_ccut_ext, i32 0, i8 1, ptr @rtw8822b_set_channel_rfe_ifem }], [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"write RF mode table fail\0A\00", [38 x i8] zeroinitializer }, align 32
@cca_ifem_ccut = internal constant { %struct.cca_ccut, [48 x i8] } { %struct.cca_ccut { [4 x i32] [i32 1976135696, i32 1976135696, i32 1976135696, i32 1976135696], [4 x i32] [i32 2040588970, i32 2040588972, i32 2040588970, i32 2040588970], [4 x i32] [i32 -2022288063, i32 -2022415551, i32 -2022288063, i32 -2022415551] }, [48 x i8] zeroinitializer }, align 32
@cca_efem_ccut = internal constant { %struct.cca_ccut, [48 x i8] } { %struct.cca_ccut { [4 x i32] [i32 1975017488, i32 1974951952, i32 1975017488, i32 1974951952], [4 x i32] [i32 2040588968, i32 2040588972, i32 2040588968, i32 2040588970], [4 x i32] [i32 -2022284207, i32 -2022284239, i32 -2022284207, i32 -2022284239] }, [48 x i8] zeroinitializer }, align 32
@cca_ifem_ccut_ext = internal constant { %struct.cca_ccut, [48 x i8] } { %struct.cca_ccut { [4 x i32] [i32 1977253904, i32 1977253904, i32 1977253904, i32 1977253904], [4 x i32] [i32 2040588970, i32 -1751061844, i32 2040588970, i32 2040588970], [4 x i32] [i32 -2022288063, i32 -2040110271, i32 -2022288031, i32 -2040110239] }, [48 x i8] zeroinitializer }, align 32
@rtw8822b_txscale_tbl = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 129, i32 136, i32 144, i32 153, i32 162, i32 172, i32 182, i32 192, i32 204, i32 216, i32 229, i32 242, i32 257, i32 272, i32 288, i32 305, i32 323, i32 342, i32 362, i32 384, i32 407, i32 431, i32 456, i32 483, i32 512, i32 542, i32 574, i32 609, i32 645, i32 683, i32 723, i32 766, i32 811, i32 860, i32 910, i32 964, i32 1022], [44 x i8] zeroinitializer }, align 32
@low_band = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\07\06\06\05\00\00\07\FF\06\05\00\00\07\06\06", [17 x i8] zeroinitializer }, align 32
@middle_band = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\06\05\00\00\07\06\06\FF\00\00\07\06\06\05\00\FF\07\06\06\05\00\00\07", [41 x i8] zeroinitializer }, align 32
@high_band = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\05\05\00\07\07\06\05\FF\00\07\07\06\05\05\00", [17 x i8] zeroinitializer }, align 32
@query_phy_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 913, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unused phy status page (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"query_phy_status\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@query_phy_status._entry_ptr = internal global ptr @query_phy_status._entry, section ".printk_index", align 4
@rtw8822b_set_tx_power_index_by_rate.offset_txagc = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7424, i32 7552], [24 x i8] zeroinitializer }, align 32
@rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_rate_size = external dso_local local_unnamed_addr global [0 x i8], align 1
@rtw_rate_section = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"config RF path, tx=0x%x rx=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw8822b_set_antenna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1015, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported tx path 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw8822b_set_antenna\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw8822b_set_antenna._entry_ptr = internal global ptr @rtw8822b_set_antenna._entry, section ".printk_index", align 4
@rtw8822b_set_antenna._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.3, i32 1020, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported rx path 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw8822b_set_antenna._entry_ptr.16 = internal global ptr @rtw8822b_set_antenna._entry.14, section ".printk_index", align 4
@rtw8822b_do_iqk.do_iqk_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iqk counter=%d reload=%d do_iqk_cnt=%d n_iqk_fail(mask)=0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw8822b_txagc_swing_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1405, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"swing index overflow\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw8822b_txagc_swing_offset\00", [36 x i8] zeroinitializer }, align 32
@rtw8822b_txagc_swing_offset._entry_ptr = internal global ptr @rtw8822b_txagc_swing_offset._entry, section ".printk_index", align 4
@rtw8822b_bf_config_bfee._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1555, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wrong bfee role\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw8822b_bf_config_bfee\00", [40 x i8] zeroinitializer }, align 32
@rtw8822b_bf_config_bfee._entry_ptr = internal global ptr @rtw8822b_bf_config_bfee._entry, section ".printk_index", align 4
@rtw8822b_coex_cfg_wl_tx_power.wl_tx_power = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\D8\D4\D0\CC\C8", [27 x i8] zeroinitializer }, align 32
@rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on = internal constant { [41 x i32], [60 x i8] } { [41 x i32] [i32 -16777213, i32 -1122893821, i32 -1106247677, i32 -1089994749, i32 -1090125821, i32 -1090191357, i32 -1139539965, i32 -1156186109, i32 -1172832253, i32 -1189478397, i32 -1206124541, i32 -1222770685, i32 -1272971261, i32 -1256062973, i32 -1272709117, i32 -1289355261, i32 -1306001405, i32 -1322647549, i32 -1339293693, i32 -1355939837, i32 -1372585981, i32 -1389232125, i32 -1405878269, i32 -1422524413, i32 -1925709821, i32 -1942355965, i32 -1959002109, i32 -1975648253, i32 1849688067, i32 1833041923, i32 1816395779, i32 1799749635, i32 1783103491, i32 1766457347, i32 1749811203, i32 1733165059, i32 1716518915, i32 1699872771, i32 1683226627, i32 1683357699, i32 8258563], [60 x i8] zeroinitializer }, align 32
@rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off = internal constant { [41 x i32], [60 x i8] } { [41 x i32] [i32 -16777213, i32 -200146941, i32 -183500797, i32 -166854653, i32 -150208509, i32 -133562365, i32 -216793085, i32 -233439229, i32 -250085373, i32 -266731517, i32 -283377661, i32 -300023805, i32 -316669949, i32 -333316093, i32 -349962237, i32 -366608381, i32 -383254525, i32 -399900669, i32 -416546813, i32 -433192957, i32 -449839101, i32 -936247293, i32 -952893437, i32 -969539581, i32 -986185725, i32 -1002831869, i32 -1019478013, i32 -1036124157, i32 -1052770301, i32 -1069416445, i32 -1522270205, i32 -1538916349, i32 -1555562493, i32 -1572208637, i32 -1588854781, i32 -2092040189, i32 -2108686333, i32 -2125332477, i32 -2141978621, i32 1700134915, i32 8258563], [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], Hi-Li Table On!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], Hi-Li Table Off!\0A\00", [36 x i8] zeroinitializer }, align 32
@trans_carddis_to_cardemu_8822b = internal constant { [7 x %struct.rtw_pwr_seq_cmd], [40 x i8] } { [7 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 49, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 50, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 74, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 -104, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 768, i8 -1, i8 4, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 769, i8 -1, i8 4, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@trans_cardemu_to_act_8822b = internal constant { [26 x %struct.rtw_pwr_seq_cmd], [48 x i8] } { [26 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 18, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 18, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 3, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 1, i8 -1, i8 3, i8 3, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 0, i8 -1, i8 3, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 28, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 117, i8 -1, i8 4, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 2, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 117, i8 -1, i8 4, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -230, i8 -1, i8 2, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 -128, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 24, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 4291, i8 -1, i8 2, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 15, i8 1, i8 8, i8 8 }, %struct.rtw_pwr_seq_cmd { i16 4264, i8 8, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 4265, i8 8, i8 15, i8 1, i8 -1, i8 -17 }, %struct.rtw_pwr_seq_cmd { i16 4266, i8 8, i8 15, i8 1, i8 -1, i8 12 }, %struct.rtw_pwr_seq_cmd { i16 104, i8 8, i8 1, i8 1, i8 16, i8 16 }, %struct.rtw_pwr_seq_cmd { i16 41, i8 -1, i8 15, i8 1, i8 -1, i8 -7 }, %struct.rtw_pwr_seq_cmd { i16 36, i8 -1, i8 15, i8 1, i8 4, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 116, i8 -1, i8 4, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 175, i8 -1, i8 15, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@trans_act_to_cardemu_8822b = internal constant { [14 x %struct.rtw_pwr_seq_cmd], [48 x i8] } { [14 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 3, i8 -1, i8 1, i8 1, i8 4, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 147, i8 -1, i8 15, i8 1, i8 8, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 31, i8 -1, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 239, i8 -1, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -230, i8 -1, i8 2, i8 1, i8 -1, i8 48 }, %struct.rtw_pwr_seq_cmd { i16 73, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 2, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 4291, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 15, i8 1, i8 8, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 0, i8 -1, i8 3, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@trans_cardemu_to_carddis_8822b = internal constant { [23 x %struct.rtw_pwr_seq_cmd], [40 x i8] } { [23 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 1, i8 1, i8 -128, i8 -128 }, %struct.rtw_pwr_seq_cmd { i16 7, i8 -1, i8 3, i8 1, i8 -1, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 15, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 4, i8 1, i8 4, i8 4 }, %struct.rtw_pwr_seq_cmd { i16 74, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 16, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 79, i8 -1, i8 1, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 70, i8 -1, i8 1, i8 1, i8 64, i8 64 }, %struct.rtw_pwr_seq_cmd { i16 103, i8 -1, i8 1, i8 1, i8 4, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 70, i8 -1, i8 1, i8 1, i8 -128, i8 -128 }, %struct.rtw_pwr_seq_cmd { i16 98, i8 -1, i8 1, i8 1, i8 16, i8 16 }, %struct.rtw_pwr_seq_cmd { i16 129, i8 -1, i8 15, i8 1, i8 -64, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 3, i8 1, i8 24, i8 8 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 49, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 50, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 144, i8 -1, i8 6, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 68, i8 -1, i8 1, i8 49, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 64, i8 -1, i8 1, i8 49, i8 -1, i8 -112 }, %struct.rtw_pwr_seq_cmd { i16 65, i8 -1, i8 1, i8 49, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 66, i8 -1, i8 1, i8 49, i8 -1, i8 4 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@usb2_param_8822b = internal constant { [1 x %struct.rtw_intf_phy_para], [22 x i8] } { [1 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [22 x i8] zeroinitializer }, align 32
@usb3_param_8822b = internal constant { [2 x %struct.rtw_intf_phy_para], [44 x i8] } { [2 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 1, i16 -22463, i16 0, i16 8, i16 0 }, %struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [44 x i8] zeroinitializer }, align 32
@pcie_gen1_param_8822b = internal constant { [11 x %struct.rtw_intf_phy_para], [50 x i8] } { [11 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 1, i16 -22463, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 2, i16 24774, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 8, i16 13718, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 9, i16 12828, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 10, i16 -27101, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 32, i16 -27393, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 33, i16 -49, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 38, i16 -16378, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 41, i16 -242, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 42, i16 6208, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [50 x i8] zeroinitializer }, align 32
@pcie_gen2_param_8822b = internal constant { [11 x %struct.rtw_intf_phy_para], [50 x i8] } { [11 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 1, i16 -22463, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 2, i16 24774, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 8, i16 13719, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 9, i16 12828, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 10, i16 -27101, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 32, i16 -27393, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 33, i16 -49, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 38, i16 -16378, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 41, i16 -242, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 42, i16 12352, i16 0, i16 4, i16 0 }, %struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [50 x i8] zeroinitializer }, align 32
@rtw8822b_bb_pg_type2_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_txpwr_lmt_type2_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_bb_pg_type3_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_txpwr_lmt_type0_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_bb_pg_type5_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_txpwr_lmt_type5_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8822b_pwrtrk_5gb_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\08\09\0A\0B\0B\0C\0D\0E\0E\0F\10\11\11\12\13\14\14\15\16", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\08\09\0A\0B\0B\0C\0D\0E\0E\0F\10\11\11\12\13\14\14\15\16", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\08\09\0A\0B\0B\0C\0D\0E\0E\0F\10\11\11\12\13\14\14\15\16"], [38 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_5gb_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\09\09\0A\0B\0C\0D\0E\0E\0F\10\11\12\13\13\14\15\16\16\17", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\09\09\0A\0B\0C\0D\0E\0E\0F\10\11\12\13\13\14\15\16\16\17", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\09\09\0A\0B\0C\0D\0E\0E\0F\10\11\12\13\13\14\15\16\16\17"], [38 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_5ga_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\08\09\0A\0B\0B\0C\0D\0E\0E\0F\10\11\11\12\13\14\14\15\16", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\08\09\0A\0B\0B\0C\0D\0E\0E\0F\10\11\11\12\13\14\14\15\16", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\08\09\0A\0B\0B\0C\0D\0E\0E\0F\10\11\11\12\13\14\14\15\16"], [38 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_5ga_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\09\09\0A\0B\0C\0D\0E\0E\0F\10\11\12\13\13\14\15\16\16\17", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\09\09\0A\0B\0C\0D\0E\0E\0F\10\11\12\13\13\14\15\16\16\17", [30 x i8] c"\00\01\02\02\03\04\05\05\06\07\08\09\09\0A\0B\0C\0D\0E\0E\0F\10\11\12\13\13\14\15\16\16\17"], [38 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2gb_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\03\03\03\04\04\05\05\05\06\06\07\07\07\08\08\09\09\09\0A\0A\0B\0B\0B\0C", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2gb_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0D\0D", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2ga_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\03\03\03\04\04\05\05\05\06\06\07\07\07\08\08\09\09\09\0A\0A\0B\0B\0B\0C", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2ga_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2g_cck_b_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\03\03\03\04\04\05\05\05\06\06\07\07\07\08\08\09\09\09\0A\0A\0B\0B\0B\0C", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2g_cck_b_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0D\0D", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2g_cck_a_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\03\03\03\04\04\05\05\05\06\06\07\07\07\08\08\09\09\09\0A\0A\0B\0B\0B\0C", [34 x i8] zeroinitializer }, align 32
@rtw8822b_pwrtrk_2g_cck_a_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F", [34 x i8] zeroinitializer }, align 32
@switch.table.rtw8822b_coex_cfg_rfe_type = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\01\00\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"rtw8822b_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2147, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2503, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"card_enable_flow_8822b\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1953, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"card_disable_flow_8822b\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1959, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"rqpn_table_8822b\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2113, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"prioq_addrs_8822b\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2131, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"page_table_8822b\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2105, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"phy_para_table_8822b\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2077, i32 45 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"rtw8822b_dig\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2094, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"rtw8822b_ltecoex_addr\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2099, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"rtw8822b_rfe_defs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2088, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"rtw8822b_rtw_pwr_track_tbl\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2445, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"rtw8822b_edcca_th\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2495, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"bt_rssi_step_8822b\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2301, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"wl_rssi_step_8822b\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2300, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"table_nsant_8822b\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2214, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"table_sant_8822b\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2177, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"tdma_sant_8822b\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2242, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"tdma_nsant_8822b\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2274, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"rf_para_tx_8822b\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2304, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"rf_para_rx_8822b\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2313, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"afh_5g_8822b\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2322, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"coex_info_hw_regs_8822b\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2468, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"rtw8822b_hw_spec\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2500, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 728, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"rtw8822b_rfe_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 396, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 805, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"cca_ifem_ccut\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 347, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"cca_efem_ccut\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 353, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"cca_ifem_ccut_ext\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 359, i32 30 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"rtw8822b_txscale_tbl\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 84, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"low_band\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 471, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"middle_band\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 473, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"high_band\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 476, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 913, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"offset_txagc\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 963, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"phy_pwr_idx\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 964, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1011, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1015, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1020, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [11 x i8] c"do_iqk_cnt\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1091, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1109, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1405, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1555, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"wl_tx_power\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1293, i32 18 }
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"wl_rx_low_gain_on\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1315, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant [19 x i8] c"wl_rx_low_gain_off\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1328, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1347, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1357, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"trans_carddis_to_cardemu_8822b\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1591, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant [27 x i8] c"trans_cardemu_to_act_8822b\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1629, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant [27 x i8] c"trans_act_to_cardemu_8822b\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1762, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant [31 x i8] c"trans_cardemu_to_carddis_8822b\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1835, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"usb2_param_8822b\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1965, i32 39 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"usb3_param_8822b\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1972, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"pcie_gen1_param_8822b\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1983, i32 39 }
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"pcie_gen2_param_8822b\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2030, i32 39 }
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_5gb_n\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2346, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_5gb_p\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2359, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_5ga_n\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2372, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_5ga_p\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2385, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_2gb_n\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2397, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_2gb_p\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2403, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_2ga_n\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2409, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"rtw8822b_pwrtrk_2ga_p\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2415, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"rtw8822b_pwrtrk_2g_cck_b_n\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2421, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"rtw8822b_pwrtrk_2g_cck_b_p\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2427, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant [27 x i8] c"rtw8822b_pwrtrk_2g_cck_a_n\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2433, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant [27 x i8] c"rtw8822b_pwrtrk_2g_cck_a_p\00", align 1
@___asan_gen_.276 = private constant [49 x i8] c"../drivers/net/wireless/realtek/rtw88/rtw8822b.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2439, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant [40 x i8] c"switch.table.rtw8822b_coex_cfg_rfe_type\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_firmware458, ptr @__UNIQUE_ID_license462, ptr @__ksymtab_rtw8822b_hw_spec, ptr @query_phy_status._entry, ptr @query_phy_status._entry_ptr, ptr @rtw8822b_bf_config_bfee._entry, ptr @rtw8822b_bf_config_bfee._entry_ptr, ptr @rtw8822b_set_antenna._entry, ptr @rtw8822b_set_antenna._entry.14, ptr @rtw8822b_set_antenna._entry_ptr, ptr @rtw8822b_set_antenna._entry_ptr.16, ptr @rtw8822b_txagc_swing_offset._entry, ptr @rtw8822b_txagc_swing_offset._entry_ptr, ptr @rtw8822b_ops, ptr @.str, ptr @card_enable_flow_8822b, ptr @card_disable_flow_8822b, ptr @rqpn_table_8822b, ptr @prioq_addrs_8822b, ptr @page_table_8822b, ptr @phy_para_table_8822b, ptr @rtw8822b_dig, ptr @rtw8822b_ltecoex_addr, ptr @rtw8822b_rfe_defs, ptr @rtw8822b_rtw_pwr_track_tbl, ptr @rtw8822b_edcca_th, ptr @bt_rssi_step_8822b, ptr @wl_rssi_step_8822b, ptr @table_nsant_8822b, ptr @table_sant_8822b, ptr @tdma_sant_8822b, ptr @tdma_nsant_8822b, ptr @rf_para_tx_8822b, ptr @rf_para_rx_8822b, ptr @afh_5g_8822b, ptr @coex_info_hw_regs_8822b, ptr @rtw8822b_hw_spec, ptr @.str.3, ptr @.str.4, ptr @rtw8822b_rfe_info, ptr @.str.5, ptr @cca_ifem_ccut, ptr @cca_efem_ccut, ptr @cca_ifem_ccut_ext, ptr @rtw8822b_txscale_tbl, ptr @low_band, ptr @middle_band, ptr @high_band, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rtw8822b_set_tx_power_index_by_rate.offset_txagc, ptr @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @rtw8822b_do_iqk.do_iqk_cnt, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power, ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, ptr @.str.22, ptr @.str.23, ptr @trans_carddis_to_cardemu_8822b, ptr @trans_cardemu_to_act_8822b, ptr @trans_act_to_cardemu_8822b, ptr @trans_cardemu_to_carddis_8822b, ptr @usb2_param_8822b, ptr @usb3_param_8822b, ptr @pcie_gen1_param_8822b, ptr @pcie_gen2_param_8822b, ptr @rtw8822b_pwrtrk_5gb_n, ptr @rtw8822b_pwrtrk_5gb_p, ptr @rtw8822b_pwrtrk_5ga_n, ptr @rtw8822b_pwrtrk_5ga_p, ptr @rtw8822b_pwrtrk_2gb_n, ptr @rtw8822b_pwrtrk_2gb_p, ptr @rtw8822b_pwrtrk_2ga_n, ptr @rtw8822b_pwrtrk_2ga_p, ptr @rtw8822b_pwrtrk_2g_cck_b_n, ptr @rtw8822b_pwrtrk_2g_cck_b_p, ptr @rtw8822b_pwrtrk_2g_cck_a_n, ptr @rtw8822b_pwrtrk_2g_cck_a_p, ptr @switch.table.rtw8822b_coex_cfg_rfe_type], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_ops to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_enable_flow_8822b to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_disable_flow_8822b to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rqpn_table_8822b to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prioq_addrs_8822b to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_table_8822b to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_para_table_8822b to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_dig to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_ltecoex_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_rfe_defs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_rtw_pwr_track_tbl to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_edcca_th to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_rssi_step_8822b to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl_rssi_step_8822b to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_nsant_8822b to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_sant_8822b to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdma_sant_8822b to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdma_nsant_8822b to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_para_tx_8822b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_para_rx_8822b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afh_5g_8822b to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coex_info_hw_regs_8822b to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_hw_spec to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_rfe_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cca_ifem_ccut to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cca_efem_ccut to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cca_ifem_ccut_ext to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_txscale_tbl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_band to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @middle_band to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @high_band to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @query_phy_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_set_tx_power_index_by_rate.offset_txagc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_set_antenna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_set_antenna._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_do_iqk.do_iqk_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_txagc_swing_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_bf_config_bfee._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_carddis_to_cardemu_8822b to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_cardemu_to_act_8822b to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_act_to_cardemu_8822b to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_cardemu_to_carddis_8822b to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_param_8822b to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_param_8822b to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_gen1_param_8822b to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_gen2_param_8822b to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_5gb_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_5gb_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_5ga_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_5ga_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2gb_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2gb_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2ga_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2ga_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2g_cck_b_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2g_cck_b_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2g_cck_a_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8822b_pwrtrk_2g_cck_a_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw8822b_coex_cfg_rfe_type to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8822b_mac_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 1212) #7
  %and.i = and i8 %call.i.i, -65
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1212, i8 noundef zeroext %and.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 1109, i8 noundef zeroext 112) #7
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i33 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %read8.i.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8.i.i33, align 4
  %call.i.i34 = tail call zeroext i8 %15(ptr noundef %rtwdev, i32 noundef 1118) #7
  %or5.i = or i8 %call.i.i34, 4
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i35 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %write8.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8.i.i35, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 1118, i8 noundef zeroext %or5.i) #7
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 1224, i32 noundef 538970367) #7
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write16.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 1230, i16 noundef zeroext 2049) #7
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %write8.i39 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %write8.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8.i39, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 5192, i8 noundef zeroext 6) #7
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write8.i41 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i41, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 5194, i8 noundef zeroext 6) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write8.i43 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %write8.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8.i43, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 5196, i8 noundef zeroext 6) #7
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write8.i45 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %write8.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8.i45, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 5198, i8 noundef zeroext 6) #7
  %44 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i47 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %read8.i.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8.i.i47, align 4
  %call.i.i48 = tail call zeroext i8 %47(ptr noundef %rtwdev, i32 noundef 1460) #7
  %and.i49 = and i8 %call.i.i48, -113
  %48 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i50 = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %write8.i.i50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write8.i.i50, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 1460, i8 noundef zeroext %and.i49) #7
  %52 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i, align 8
  %write16.i52 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %write16.i52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write16.i52, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 1314, i16 noundef zeroext 0) #7
  %56 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i, align 8
  %write8.i54 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %write8.i54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8.i54, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 1307, i8 noundef zeroext 9) #7
  %60 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i, align 8
  %write8.i56 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %write8.i56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8.i56, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 1298, i8 noundef zeroext 25) #7
  %64 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i, align 8
  %write32.i58 = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %write32.i58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i58, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 1300, i32 noundef 269487626) #7
  %68 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i, align 8
  %write16.i60 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 15
  %70 = ptrtoint ptr %write16.i60 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write16.i60, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef 1282, i16 noundef zeroext 390) #7
  %72 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i, align 8
  %write16.i62 = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %write16.i62 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write16.i62, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 1286, i16 noundef zeroext 956) #7
  %76 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i, align 8
  %write32.i64 = getelementptr inbounds %struct.rtw_hci_ops, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %write32.i64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i64, align 4
  tail call void %79(ptr noundef %rtwdev, i32 noundef 1348, i32 noundef 1769477) #7
  %80 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i, align 8
  %write16.i66 = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 15
  %82 = ptrtoint ptr %write16.i66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write16.i66, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 1374, i16 noundef zeroext 12336) #7
  %84 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i68 = getelementptr inbounds %struct.rtw_hci_ops, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %read8.i.i68 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read8.i.i68, align 4
  %call.i.i69 = tail call zeroext i8 %87(ptr noundef %rtwdev, i32 noundef 1360) #7
  %or5.i70 = or i8 %call.i.i69, 8
  %88 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i71 = getelementptr inbounds %struct.rtw_hci_ops, ptr %89, i32 0, i32 14
  %90 = ptrtoint ptr %write8.i.i71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write8.i.i71, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %or5.i70) #7
  %92 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i, align 8
  %write32.i73 = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %write32.i73 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i73, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 1344, i32 noundef 25604) #7
  %96 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i, align 8
  %write8.i75 = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %write8.i75 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8.i75, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 1368, i8 noundef zeroext 4) #7
  %100 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i, align 8
  %write8.i77 = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %write8.i77 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write8.i77, align 4
  tail call void %103(ptr noundef %rtwdev, i32 noundef 1369, i8 noundef zeroext 2) #7
  %104 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i79 = getelementptr inbounds %struct.rtw_hci_ops, ptr %105, i32 0, i32 11
  %106 = ptrtoint ptr %read8.i.i79 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read8.i.i79, align 4
  %call.i.i80 = tail call zeroext i8 %107(ptr noundef %rtwdev, i32 noundef 1313) #7
  %and.i81 = and i8 %call.i.i80, -17
  %108 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i82 = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %write8.i.i82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write8.i.i82, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef 1313, i8 noundef zeroext %and.i81) #7
  %112 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i, align 8
  %write32.i84 = getelementptr inbounds %struct.rtw_hci_ops, ptr %113, i32 0, i32 16
  %114 = ptrtoint ptr %write32.i84 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i84, align 4
  tail call void %115(ptr noundef %rtwdev, i32 noundef 1696, i32 noundef 268435455) #7
  %116 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i, align 8
  %write16.i86 = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 15
  %118 = ptrtoint ptr %write16.i86 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write16.i86, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef 1700, i16 noundef zeroext -1) #7
  %120 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hci.i.i, align 8
  %write32.i88 = getelementptr inbounds %struct.rtw_hci_ops, ptr %121, i32 0, i32 16
  %122 = ptrtoint ptr %write32.i88 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i88, align 4
  tail call void %123(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef -469753330) #7
  %124 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hci.i.i, align 8
  %write8.i90 = getelementptr inbounds %struct.rtw_hci_ops, ptr %125, i32 0, i32 14
  %126 = ptrtoint ptr %write8.i90 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write8.i90, align 4
  tail call void %127(ptr noundef %rtwdev, i32 noundef 1548, i8 noundef zeroext 24) #7
  %128 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hci.i.i, align 8
  %write8.i92 = getelementptr inbounds %struct.rtw_hci_ops, ptr %129, i32 0, i32 14
  %130 = ptrtoint ptr %write8.i92 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8.i92, align 4
  tail call void %131(ptr noundef %rtwdev, i32 noundef 1542, i8 noundef zeroext 48) #7
  %132 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i.i, align 8
  %write8.i94 = getelementptr inbounds %struct.rtw_hci_ops, ptr %133, i32 0, i32 14
  %134 = ptrtoint ptr %write8.i94 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write8.i94, align 4
  tail call void %135(ptr noundef %rtwdev, i32 noundef 1541, i8 noundef zeroext 48) #7
  %136 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i, align 8
  %write32.i96 = getelementptr inbounds %struct.rtw_hci_ops, ptr %137, i32 0, i32 16
  %138 = ptrtoint ptr %write32.i96 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i96, align 4
  tail call void %139(ptr noundef %rtwdev, i32 noundef 2008, i32 noundef -1333723071) #7
  %140 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i, align 8
  %write8.i98 = getelementptr inbounds %struct.rtw_hci_ops, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %write8.i98 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write8.i98, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 2004, i8 noundef zeroext -104) #7
  %144 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i100 = getelementptr inbounds %struct.rtw_hci_ops, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %read8.i.i100 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read8.i.i100, align 4
  %call.i.i101 = tail call zeroext i8 %147(ptr noundef %rtwdev, i32 noundef 1816) #7
  %or5.i102 = or i8 %call.i.i101, 64
  %148 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i103 = getelementptr inbounds %struct.rtw_hci_ops, ptr %149, i32 0, i32 14
  %150 = ptrtoint ptr %write8.i.i103 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write8.i.i103, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef 1816, i8 noundef zeroext %or5.i102) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8822b_read_efuse(ptr nocapture noundef %rtwdev, ptr nocapture noundef readonly %log_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe_option = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 19
  %0 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rfe_option, align 2
  %rfe_option2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %2 = ptrtoint ptr %rfe_option2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rfe_option2, align 2
  %rf_board_option = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 10
  %3 = ptrtoint ptr %rf_board_option to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rf_board_option, align 1
  %rf_board_option3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %rf_board_option3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %rf_board_option3, align 1
  %xtal_k = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 4
  %6 = ptrtoint ptr %xtal_k to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xtal_k, align 1
  %crystal_cap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %crystal_cap, align 1
  %pa_type = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 7
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
  %lna_type_2g = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 8
  %14 = ptrtoint ptr %lna_type_2g to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lna_type_2g, align 1
  %lna_type_2g5 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 17
  %16 = ptrtoint ptr %lna_type_2g5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %lna_type_2g5, align 2
  %lna_type_5g = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 9
  %17 = ptrtoint ptr %lna_type_5g to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lna_type_5g, align 1
  %lna_type_5g7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 18
  %19 = ptrtoint ptr %lna_type_5g7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %lna_type_5g7, align 1
  %channel_plan = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 3
  %20 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %channel_plan, align 2
  %channel_plan8 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %channel_plan8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %channel_plan8, align 2
  %country_code = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 20
  %23 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %country_code, align 1
  %country_code10 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %country_code10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %country_code10, align 1
  %arrayidx13 = getelementptr %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 20, i32 1
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6, i32 1
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx15, align 1
  %rf_bt_setting = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 12
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
  %thermal_meter = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 5
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
  %arrayidx22 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 0
  %arrayidx24 = getelementptr %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 2, i32 0
  %40 = call ptr @memcpy(ptr %arrayidx22, ptr %arrayidx24, i32 42)
  %arrayidx22.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 1
  %arrayidx24.1 = getelementptr %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 2, i32 1
  %41 = call ptr @memcpy(ptr %arrayidx22.1, ptr %arrayidx24.1, i32 42)
  %arrayidx22.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 2
  %arrayidx24.2 = getelementptr %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 2, i32 2
  %42 = call ptr @memcpy(ptr %arrayidx22.2, ptr %arrayidx24.2, i32 42)
  %arrayidx22.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 3
  %arrayidx24.3 = getelementptr %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 2, i32 3
  %43 = call ptr @memcpy(ptr %arrayidx22.3, ptr %arrayidx24.3, i32 42)
  %type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cond = icmp eq i32 %45, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 4
  %46 = getelementptr inbounds %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 22
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtw8822b_efuse, ptr %log_map, i32 0, i32 22, i32 0, i32 1
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 4, i32 4
  %52 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %add.ptr1.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_phy_set_param(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 2) #7
  %or5.i = or i8 %call.i.i, 3
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %or5.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i25, align 4
  %call.i.i26 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 31) #7
  %or5.i27 = or i8 %call.i.i26, 7
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i28 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %write8.i.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i.i28, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 31, i8 noundef zeroext %or5.i27) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i30 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 236) #7
  %or.i = or i32 %call.i.i30, 117440512
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 236, i32 noundef %or.i) #7
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i32 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i32, align 4
  %call.i.i33 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 2056) #7
  %and.i = and i32 %call.i.i33, -805306369
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i34 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i34, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %and.i) #7
  tail call void @rtw_phy_load_tables(ptr noundef %rtwdev) #7
  %crystal_cap2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %32 = ptrtoint ptr %crystal_cap2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %crystal_cap2, align 1
  %34 = and i8 %33, 63
  %conv4 = zext i8 %34 to i32
  %35 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i36 = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %read32.i.i36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.i36, align 4
  %call.i.i37 = tail call i32 %38(ptr noundef %rtwdev, i32 noundef 36) #7
  %and21.i = and i32 %call.i.i37, -2113929217
  %shl.i = shl nuw nsw i32 %conv4, 25
  %or.i38 = or i32 %and21.i, %shl.i
  %39 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i39 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %write32.i.i39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i39, align 4
  tail call void %42(ptr noundef %rtwdev, i32 noundef 36, i32 noundef %or.i38) #7
  %43 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i41 = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %read32.i.i41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i.i41, align 4
  %call.i.i42 = tail call i32 %46(ptr noundef %rtwdev, i32 noundef 40) #7
  %and21.i43 = and i32 %call.i.i42, -127
  %shl.i44 = shl nuw nsw i32 %conv4, 1
  %or.i46 = or i32 %and21.i43, %shl.i44
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i47 = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %write32.i.i47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i.i47, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef 40, i32 noundef %or.i46) #7
  %51 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i49 = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %read32.i.i49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i49, align 4
  %call.i.i50 = tail call i32 %54(ptr noundef %rtwdev, i32 noundef 2056) #7
  %or.i51 = or i32 %call.i.i50, 805306368
  %55 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i52 = getelementptr inbounds %struct.rtw_hci_ops, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %write32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i52, align 4
  tail call void %58(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i51) #7
  %antenna_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 16
  %59 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %antenna_tx, align 4
  %conv6 = trunc i32 %60 to i8
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %61 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %antenna_rx, align 4
  %conv7 = trunc i32 %62 to i8
  tail call fastcc void @rtw8822b_config_trx_mode(ptr noundef %rtwdev, i8 noundef zeroext %conv6, i8 noundef zeroext %conv7)
  tail call void @rtw_phy_init(ptr noundef %rtwdev) #7
  %63 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %64, i32 0, i32 13
  %65 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %66(ptr noundef %rtwdev, i32 noundef 100) #7
  %or.i.i = or i32 %call.i.i.i, 805306368
  %67 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef 100, i32 noundef %or.i.i) #7
  %71 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %read32.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.i8.i, align 4
  %call.i.i9.i = tail call i32 %74(ptr noundef %rtwdev, i32 noundef 76) #7
  %and21.i10.i = and i32 %call.i.i9.i, -100663297
  %75 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i11.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %write32.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i.i11.i, align 4
  tail call void %78(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and21.i10.i) #7
  %79 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i13.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %read32.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i.i13.i, align 4
  %call.i.i14.i = tail call i32 %82(ptr noundef %rtwdev, i32 noundef 64) #7
  %or.i16.i = or i32 %call.i.i14.i, 4
  %83 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i17.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %write32.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i.i17.i, align 4
  tail call void %86(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i16.i) #7
  %87 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i19.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %88, i32 0, i32 13
  %89 = ptrtoint ptr %read32.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32.i.i19.i, align 4
  %call.i.i20.i = tail call i32 %90(ptr noundef %rtwdev, i32 noundef 6544) #7
  %and21.i21.i = and i32 %call.i.i20.i, -64
  %or.i22.i = or i32 %and21.i21.i, 48
  %91 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i23.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %write32.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write32.i.i23.i, align 4
  tail call void %94(ptr noundef %rtwdev, i32 noundef 6544, i32 noundef %or.i22.i) #7
  %95 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i25.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %read32.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read32.i.i25.i, align 4
  %call.i.i26.i = tail call i32 %98(ptr noundef %rtwdev, i32 noundef 6544) #7
  %or.i28.i = or i32 %call.i.i26.i, 3072
  %99 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i29.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %100, i32 0, i32 16
  %101 = ptrtoint ptr %write32.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32.i.i29.i, align 4
  tail call void %102(ptr noundef %rtwdev, i32 noundef 6544, i32 noundef %or.i28.i) #7
  %103 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i31.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %read32.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read32.i.i31.i, align 4
  %call.i.i32.i = tail call i32 %106(ptr noundef %rtwdev, i32 noundef 2420) #7
  %or.i34.i = or i32 %call.i.i32.i, 63
  %107 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i35.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %108, i32 0, i32 16
  %109 = ptrtoint ptr %write32.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i.i35.i, align 4
  tail call void %110(ptr noundef %rtwdev, i32 noundef 2420, i32 noundef %or.i34.i) #7
  %111 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i37.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %112, i32 0, i32 13
  %113 = ptrtoint ptr %read32.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read32.i.i37.i, align 4
  %call.i.i38.i = tail call i32 %114(ptr noundef %rtwdev, i32 noundef 2420) #7
  %or.i40.i = or i32 %call.i.i38.i, 3072
  %115 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i41.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %write32.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write32.i.i41.i, align 4
  tail call void %118(ptr noundef %rtwdev, i32 noundef 2420, i32 noundef %or.i40.i) #7
  %119 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %122(ptr noundef %rtwdev, i32 noundef 3100) #7
  %shr.i.i.i = lshr i32 %call.i.i.i.i, 21
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %indvars.iv.i.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [37 x i32], ptr @rtw8822b_txscale_tbl, i32 0, i32 %indvars.iv.i.i
  %123 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %124)
  %cmp2.i.i = icmp eq i32 %shr.i.i.i, %124
  br i1 %cmp2.i.i, label %rtw8822b_get_swing_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 37
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

rtw8822b_get_swing_index.exit.i:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = trunc i32 %indvars.iv.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %125)
  %cmp.i = icmp ugt i8 %125, 36
  %spec.select.i = select i1 %cmp.i, i8 24, i8 %125
  br label %if.end.i

if.end.i:                                         ; preds = %rtw8822b_get_swing_index.exit.i, %for.inc.i.i.if.end.i_crit_edge
  %.sink.i = phi i8 [ %spec.select.i, %rtw8822b_get_swing_index.exit.i ], [ 24, %for.inc.i.i.if.end.i_crit_edge ]
  %default_ofdm_index3.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 33
  %126 = ptrtoint ptr %default_ofdm_index3.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %.sink.i, ptr %default_ofdm_index3.i, align 2
  %rf_path_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %127 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rf_path_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp627.not.i = icmp eq i8 %128, 0
  br i1 %cmp627.not.i, label %if.end.i.rtw8822b_pwrtrack_init.exit_crit_edge, label %for.body.preheader.i

if.end.i.rtw8822b_pwrtrack_init.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_pwrtrack_init.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %wide.trip.count.i = zext i8 %128 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 36, i32 %indvars.iv.i
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx9.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31, i32 %indvars.iv.i
  %130 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %arrayidx9.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.rtw8822b_pwrtrack_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.rtw8822b_pwrtrack_init.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_pwrtrack_init.exit

rtw8822b_pwrtrack_init.exit:                      ; preds = %for.body.i.rtw8822b_pwrtrack_init.exit_crit_edge, %if.end.i.rtw8822b_pwrtrack_init.exit_crit_edge
  %pwr_trk_triggered.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 34
  %131 = ptrtoint ptr %pwr_trk_triggered.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %pwr_trk_triggered.i, align 1
  %pwr_trk_init_trigger.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %132 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %pwr_trk_init_trigger.i, align 4
  %thermal_meter_k.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 11
  %133 = ptrtoint ptr %thermal_meter_k.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %thermal_meter_k.i, align 4
  %thermal_meter_k10.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 29
  %135 = ptrtoint ptr %thermal_meter_k10.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %thermal_meter_k10.i, align 4
  tail call void @rtw_bf_phy_init(ptr noundef %rtwdev) #7
  %136 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i54 = getelementptr inbounds %struct.rtw_hci_ops, ptr %137, i32 0, i32 16
  %138 = ptrtoint ptr %write32.i.i54 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i.i54, align 4
  tail call void %139(ptr noundef %rtwdev, i32 noundef 7316, i32 noundef -1342197761) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_set_channel(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_chan_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rfe_option, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  %conv = zext i8 %1 to i32
  br i1 %cmp, label %do.end, label %if.end25, !prof !181

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 705, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %conv) #7
  br label %cleanup

if.end25:                                         ; preds = %entry
  %arrayidx = getelementptr [6 x %struct.rtw8822b_rfe_info], ptr @rtw8822b_rfe_info, i32 0, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp.i = icmp ult i8 %channel, 15
  br i1 %cmp.i, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %if.end25
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 2056) #7
  %or.i.i = or i32 %call.i.i.i, 268435456
  %6 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i.i) #7
  %10 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i254.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %read32.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i254.i, align 4
  %call.i.i255.i = tail call i32 %13(ptr noundef %rtwdev, i32 noundef 1108) #7
  %and21.i256.i = and i32 %call.i.i255.i, -129
  %14 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i257.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %write32.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i257.i, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 1108, i32 noundef %and21.i256.i) #7
  %18 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i259.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %read32.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i259.i, align 4
  %call.i.i260.i = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 2688) #7
  %and21.i261.i = and i32 %call.i.i260.i, -262145
  %22 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i262.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %write32.i.i262.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i262.i, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 2688, i32 noundef %and21.i261.i) #7
  %26 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i264.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %read32.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i264.i, align 4
  %call.i.i265.i = tail call i32 %29(ptr noundef %rtwdev, i32 noundef 2068) #7
  %and21.i266.i = and i32 %call.i.i265.i, -64513
  %or.i267.i = or i32 %and21.i266.i, 15360
  %30 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i268.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %write32.i.i268.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i268.i, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 2068, i32 noundef %or.i267.i) #7
  %34 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i270.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %read32.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i.i270.i, align 4
  %call.i.i271.i = tail call i32 %37(ptr noundef %rtwdev, i32 noundef 2392) #7
  %and21.i272.i = and i32 %call.i.i271.i, -32
  %38 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i273.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %write32.i.i273.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i273.i, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 2392, i32 noundef %and21.i272.i) #7
  %42 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i275.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %read32.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i275.i, align 4
  %call.i.i276.i = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 2144) #7
  %and21.i277.i = and i32 %call.i.i276.i, -536739841
  %or.i278.i = or i32 %and21.i277.i, 315883520
  %46 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i279.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %write32.i.i279.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i279.i, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i278.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp5.i = icmp eq i8 %channel, 14
  %50 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i281.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %read32.i.i281.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i.i281.i, align 4
  %call.i.i282.i = tail call i32 %53(ptr noundef %rtwdev, i32 noundef 2596) #7
  %54 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i283.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %write32.i.i283.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i283.i, align 4
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %57(ptr noundef %rtwdev, i32 noundef 2596, i32 noundef 25975) #7
  %58 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i285.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %read32.i.i285.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i285.i, align 4
  %call.i.i286.i = tail call i32 %61(ptr noundef %rtwdev, i32 noundef 2600) #7
  %and21.i287.i = and i32 %call.i.i286.i, -65536
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %57(ptr noundef %rtwdev, i32 noundef 2596, i32 noundef 944727415) #7
  %62 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i294.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %read32.i.i294.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i294.i, align 4
  %call.i.i295.i = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 2600) #7
  %and21.i296.i = and i32 %call.i.i295.i, -65536
  %or.i297.i = or i32 %and21.i296.i, 5413
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then7.i
  %or.i297.sink.i = phi i32 [ %or.i297.i, %if.else.i ], [ %and21.i287.i, %if.then7.i ]
  %66 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i298.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %write32.i.i298.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i.i298.i, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 2600, i32 noundef %or.i297.sink.i) #7
  br label %if.end116.sink.split.i

if.else8.i:                                       ; preds = %if.end25
  %70 = add i8 %channel, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %70)
  %71 = icmp ult i8 %70, 13
  %72 = add i8 %channel, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %72)
  %73 = icmp ult i8 %72, 13
  %or.cond.i = or i1 %71, %73
  %74 = add i8 %channel, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %74)
  %75 = icmp ult i8 %74, 45
  %or.cond485.i = or i1 %75, %or.cond.i
  %76 = add i8 %channel, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %76)
  %77 = icmp ult i8 %76, 29
  %or.cond487.i = or i1 %77, %or.cond485.i
  br i1 %or.cond487.i, label %if.then38.i, label %if.else8.i.if.end116.i_crit_edge

if.else8.i.if.end116.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.i

if.then38.i:                                      ; preds = %if.else8.i
  %hci.i.i305.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %78 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i306.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %read32.i.i306.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i306.i, align 4
  %call.i.i307.i = tail call i32 %81(ptr noundef %rtwdev, i32 noundef 2688) #7
  %or.i309.i = or i32 %call.i.i307.i, 262144
  %82 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i310.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %write32.i.i310.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i310.i, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 2688, i32 noundef %or.i309.i) #7
  %86 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i312.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %read32.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i312.i, align 4
  %call.i.i313.i = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 1108) #7
  %or.i315.i = or i32 %call.i.i313.i, 128
  %90 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i316.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %write32.i.i316.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i316.i, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 1108, i32 noundef %or.i315.i) #7
  %94 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i318.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %read32.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i318.i, align 4
  %call.i.i319.i = tail call i32 %97(ptr noundef %rtwdev, i32 noundef 2056) #7
  %and21.i320.i = and i32 %call.i.i319.i, -268435457
  %98 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i321.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %99, i32 0, i32 16
  %100 = ptrtoint ptr %write32.i.i321.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write32.i.i321.i, align 4
  tail call void %101(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %and21.i320.i) #7
  %102 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i323.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %103, i32 0, i32 13
  %104 = ptrtoint ptr %read32.i.i323.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32.i.i323.i, align 4
  %call.i.i324.i = tail call i32 %105(ptr noundef %rtwdev, i32 noundef 2068) #7
  %and21.i325.i = and i32 %call.i.i324.i, -64513
  %or.i326.i = or i32 %and21.i325.i, 34816
  %106 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i327.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %write32.i.i327.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write32.i.i327.i, align 4
  tail call void %109(ptr noundef %rtwdev, i32 noundef 2068, i32 noundef %or.i326.i) #7
  %.mux.i = select i1 %71, i32 153616384, i32 145096704
  br i1 %or.cond.i, label %if.then38.i.if.end114.sink.split.sink.split.i_crit_edge, label %if.else55.i

if.then38.i.if.end114.sink.split.sink.split.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split.sink.split.i

if.else55.i:                                      ; preds = %if.then38.i
  br i1 %75, label %if.then63.i, label %if.else64.i

if.then63.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i335.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %111, i32 0, i32 13
  %112 = ptrtoint ptr %read32.i.i335.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read32.i.i335.i, align 4
  %call.i.i336.i = tail call i32 %113(ptr noundef %rtwdev, i32 noundef 2392) #7
  %and21.i337.i = and i32 %call.i.i336.i, -32
  %or.i338.i = or i32 %and21.i337.i, 2
  %114 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i339.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %115, i32 0, i32 16
  %116 = ptrtoint ptr %write32.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write32.i.i339.i, align 4
  tail call void %117(ptr noundef %rtwdev, i32 noundef 2392, i32 noundef %or.i338.i) #7
  br label %if.else93.i

if.else64.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %channel)
  %cmp66.i = icmp ugt i8 %channel, -108
  br i1 %cmp66.i, label %if.else64.i.if.end114.sink.split.sink.split.i_crit_edge, label %if.else64.i.if.else93.i_crit_edge

if.else64.i.if.else93.i_crit_edge:                ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else93.i

if.else64.i.if.end114.sink.split.sink.split.i_crit_edge: ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split.sink.split.i

if.else93.i:                                      ; preds = %if.else64.i.if.else93.i_crit_edge, %if.then63.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %74)
  %118 = icmp ult i8 %74, 17
  br i1 %118, label %if.else93.i.if.end114.sink.split.i_crit_edge, label %if.else102.i

if.else93.i.if.end114.sink.split.i_crit_edge:     ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split.i

if.else102.i:                                     ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %channel)
  %cmp104.i = icmp ugt i8 %channel, 117
  br i1 %cmp104.i, label %if.else102.i.if.end114.sink.split.i_crit_edge, label %if.else102.i.if.end116.sink.split.i_crit_edge

if.else102.i.if.end116.sink.split.i_crit_edge:    ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.sink.split.i

if.else102.i.if.end114.sink.split.i_crit_edge:    ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split.i

if.end114.sink.split.sink.split.i:                ; preds = %if.else64.i.if.end114.sink.split.sink.split.i_crit_edge, %if.then38.i.if.end114.sink.split.sink.split.i_crit_edge
  %.sink509.i = phi i32 [ 3, %if.else64.i.if.end114.sink.split.sink.split.i_crit_edge ], [ 1, %if.then38.i.if.end114.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 136577024, %if.else64.i.if.end114.sink.split.sink.split.i_crit_edge ], [ %.mux.i, %if.then38.i.if.end114.sink.split.sink.split.i_crit_edge ]
  %119 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i341.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %read32.i.i341.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read32.i.i341.i, align 4
  %call.i.i342.i = tail call i32 %122(ptr noundef %rtwdev, i32 noundef 2392) #7
  %and21.i343.i = and i32 %call.i.i342.i, -32
  %or.i344.i = or i32 %and21.i343.i, %.sink509.i
  %123 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i345.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %124, i32 0, i32 16
  %125 = ptrtoint ptr %write32.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i.i345.i, align 4
  tail call void %126(ptr noundef %rtwdev, i32 noundef 2392, i32 noundef %or.i344.i) #7
  br label %if.end114.sink.split.i

if.end114.sink.split.i:                           ; preds = %if.end114.sink.split.sink.split.i, %if.else102.i.if.end114.sink.split.i_crit_edge, %if.else93.i.if.end114.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 144965632, %if.else93.i.if.end114.sink.split.i_crit_edge ], [ 136577024, %if.else102.i.if.end114.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end114.sink.split.sink.split.i ]
  %127 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i305.i, align 8
  %read32.i.i353.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %128, i32 0, i32 13
  %129 = ptrtoint ptr %read32.i.i353.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read32.i.i353.i, align 4
  %call.i.i354.i = tail call i32 %130(ptr noundef %rtwdev, i32 noundef 2144) #7
  %and21.i355.i = and i32 %call.i.i354.i, -536739841
  %or.i356.i = or i32 %and21.i355.i, %.sink.i
  %131 = ptrtoint ptr %hci.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i305.i, align 8
  %write32.i.i357.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 16
  %133 = ptrtoint ptr %write32.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write32.i.i357.i, align 4
  tail call void %134(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %or.i356.i) #7
  br label %if.end116.sink.split.i

if.end116.sink.split.i:                           ; preds = %if.end114.sink.split.i, %if.else102.i.if.end116.sink.split.i_crit_edge, %if.end.i
  %hci.i.i305.sink496.i = phi ptr [ %hci.i.i.i, %if.end.i ], [ %hci.i.i305.i, %if.end114.sink.split.i ], [ %hci.i.i305.i, %if.else102.i.if.end116.sink.split.i_crit_edge ]
  %.sink493.i = phi i32 [ 512, %if.end.i ], [ 256, %if.end114.sink.split.i ], [ 256, %if.else102.i.if.end116.sink.split.i_crit_edge ]
  %135 = ptrtoint ptr %hci.i.i305.sink496.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i305.sink496.i, align 8
  %read32.i.i371.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %136, i32 0, i32 13
  %137 = ptrtoint ptr %read32.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read32.i.i371.i, align 4
  %call.i.i372.i = tail call i32 %138(ptr noundef %rtwdev, i32 noundef 3260) #7
  %and21.i373.i = and i32 %call.i.i372.i, -769
  %or.i374.i = or i32 %and21.i373.i, %.sink493.i
  %139 = ptrtoint ptr %hci.i.i305.sink496.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i305.sink496.i, align 8
  %write32.i.i375.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %140, i32 0, i32 16
  %141 = ptrtoint ptr %write32.i.i375.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i.i375.i, align 4
  tail call void %142(ptr noundef %rtwdev, i32 noundef 3260, i32 noundef %or.i374.i) #7
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.end116.sink.split.i, %if.else8.i.if.end116.i_crit_edge
  %143 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bw, label %sw.default.i [
    i8 6, label %sw.bb152.i
    i8 1, label %sw.bb118.i
    i8 2, label %sw.bb131.i
    i8 5, label %sw.bb148.i
  ]

sw.default.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i376.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %144 = ptrtoint ptr %hci.i.i376.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i376.i, align 8
  %read32.i.i377.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %145, i32 0, i32 13
  %146 = ptrtoint ptr %read32.i.i377.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i377.i, align 4
  %call.i.i378.i = tail call i32 %147(ptr noundef %rtwdev, i32 noundef 2220) #7
  %and.i = and i32 %call.i.i378.i, -3146752
  %148 = ptrtoint ptr %hci.i.i376.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i376.i, align 8
  %read32.i.i380.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %149, i32 0, i32 13
  %150 = ptrtoint ptr %read32.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read32.i.i380.i, align 4
  %call.i.i381.i = tail call i32 %151(ptr noundef %rtwdev, i32 noundef 2220) #7
  %152 = ptrtoint ptr %hci.i.i376.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i376.i, align 8
  %write32.i.i382.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %153, i32 0, i32 16
  %154 = ptrtoint ptr %write32.i.i382.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i.i382.i, align 4
  tail call void %155(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %and.i) #7
  br label %sw.epilog.sink.split.i

sw.bb118.i:                                       ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %primary_chan_idx)
  %cmp120.i = icmp eq i8 %primary_chan_idx, 1
  %hci.i.i389.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %156 = ptrtoint ptr %hci.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hci.i.i389.i, align 8
  %read32.i.i390.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %157, i32 0, i32 13
  %158 = ptrtoint ptr %read32.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read32.i.i390.i, align 4
  %call.i.i391.i = tail call i32 %159(ptr noundef %rtwdev, i32 noundef 2560) #7
  %and.i.i = and i32 %call.i.i391.i, -17
  %masksel.i = select i1 %cmp120.i, i32 16, i32 0
  %and.i.sink.i = or i32 %and.i.i, %masksel.i
  %160 = ptrtoint ptr %hci.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hci.i.i389.i, align 8
  %write32.i.i397.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %161, i32 0, i32 16
  %162 = ptrtoint ptr %write32.i.i397.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write32.i.i397.i, align 4
  tail call void %163(ptr noundef %rtwdev, i32 noundef 2560, i32 noundef %and.i.sink.i) #7
  %164 = ptrtoint ptr %hci.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hci.i.i389.i, align 8
  %read32.i.i399.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %165, i32 0, i32 13
  %166 = ptrtoint ptr %read32.i.i399.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %read32.i.i399.i, align 4
  %call.i.i400.i = tail call i32 %167(ptr noundef %rtwdev, i32 noundef 2220) #7
  %and126.i = and i32 %call.i.i400.i, -12586240
  %168 = shl i8 %primary_chan_idx, 2
  %169 = and i8 %168, 60
  %170 = or i8 %169, 1
  %or129.i = zext i8 %170 to i32
  %or130.i = or i32 %and126.i, %or129.i
  %171 = ptrtoint ptr %hci.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hci.i.i389.i, align 8
  %read32.i.i402.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %172, i32 0, i32 13
  %173 = ptrtoint ptr %read32.i.i402.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read32.i.i402.i, align 4
  %call.i.i403.i = tail call i32 %174(ptr noundef %rtwdev, i32 noundef 2220) #7
  %175 = ptrtoint ptr %hci.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hci.i.i389.i, align 8
  %write32.i.i404.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %176, i32 0, i32 16
  %177 = ptrtoint ptr %write32.i.i404.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write32.i.i404.i, align 4
  tail call void %178(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or130.i) #7
  br label %sw.epilog.sink.split.i

sw.bb131.i:                                       ; preds = %if.end116.i
  %hci.i.i411.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %179 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hci.i.i411.i, align 8
  %read32.i.i412.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %180, i32 0, i32 13
  %181 = ptrtoint ptr %read32.i.i412.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read32.i.i412.i, align 4
  %call.i.i413.i = tail call i32 %182(ptr noundef %rtwdev, i32 noundef 2220) #7
  %and133.i = and i32 %call.i.i413.i, -51392768
  %183 = shl i8 %primary_chan_idx, 2
  %184 = and i8 %183, 60
  %185 = or i8 %184, 2
  %or137.i = zext i8 %185 to i32
  %or138.i = or i32 %and133.i, %or137.i
  %186 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hci.i.i411.i, align 8
  %read32.i.i415.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %187, i32 0, i32 13
  %188 = ptrtoint ptr %read32.i.i415.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read32.i.i415.i, align 4
  %call.i.i416.i = tail call i32 %189(ptr noundef %rtwdev, i32 noundef 2220) #7
  %190 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hci.i.i411.i, align 8
  %write32.i.i417.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %191, i32 0, i32 16
  %192 = ptrtoint ptr %write32.i.i417.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write32.i.i417.i, align 4
  tail call void %193(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or138.i) #7
  %194 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hci.i.i411.i, align 8
  %read32.i.i419.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %195, i32 0, i32 13
  %196 = ptrtoint ptr %read32.i.i419.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %read32.i.i419.i, align 4
  %call.i.i420.i = tail call i32 %197(ptr noundef %rtwdev, i32 noundef 2244) #7
  %or.i422.i = or i32 %call.i.i420.i, 1073741824
  %198 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hci.i.i411.i, align 8
  %write32.i.i423.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %199, i32 0, i32 16
  %200 = ptrtoint ptr %write32.i.i423.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write32.i.i423.i, align 4
  tail call void %201(ptr noundef %rtwdev, i32 noundef 2244, i32 noundef %or.i422.i) #7
  %202 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %202)
  %switch.i = icmp eq i8 %202, 2
  br i1 %switch.i, label %if.then146.i, label %sw.bb131.i.rtw8822b_set_channel_bb.exit_crit_edge

sw.bb131.i.rtw8822b_set_channel_bb.exit_crit_edge: ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_set_channel_bb.exit

if.then146.i:                                     ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #9
  %203 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci.i.i411.i, align 8
  %read32.i.i425.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %204, i32 0, i32 13
  %205 = ptrtoint ptr %read32.i.i425.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read32.i.i425.i, align 4
  %call.i.i426.i = tail call i32 %206(ptr noundef %rtwdev, i32 noundef 2112) #7
  %and21.i427.i = and i32 %call.i.i426.i, -61441
  %or.i428.i = or i32 %and21.i427.i, 24576
  %207 = ptrtoint ptr %hci.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hci.i.i411.i, align 8
  %write32.i.i429.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %208, i32 0, i32 16
  %209 = ptrtoint ptr %write32.i.i429.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write32.i.i429.i, align 4
  tail call void %210(ptr noundef %rtwdev, i32 noundef 2112, i32 noundef %or.i428.i) #7
  br label %sw.epilog.sink.split.i

sw.bb148.i:                                       ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i436.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %211 = ptrtoint ptr %hci.i.i436.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hci.i.i436.i, align 8
  %read32.i.i437.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %212, i32 0, i32 13
  %213 = ptrtoint ptr %read32.i.i437.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %read32.i.i437.i, align 4
  %call.i.i438.i = tail call i32 %214(ptr noundef %rtwdev, i32 noundef 2220) #7
  %and150.i = and i32 %call.i.i438.i, -269550080
  %or151.i = or i32 %and150.i, 64
  %215 = ptrtoint ptr %hci.i.i436.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hci.i.i436.i, align 8
  %read32.i.i440.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %216, i32 0, i32 13
  %217 = ptrtoint ptr %read32.i.i440.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %read32.i.i440.i, align 4
  %call.i.i441.i = tail call i32 %218(ptr noundef %rtwdev, i32 noundef 2220) #7
  %219 = ptrtoint ptr %hci.i.i436.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %hci.i.i436.i, align 8
  %write32.i.i442.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %220, i32 0, i32 16
  %221 = ptrtoint ptr %write32.i.i442.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write32.i.i442.i, align 4
  tail call void %222(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or151.i) #7
  %223 = ptrtoint ptr %hci.i.i436.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hci.i.i436.i, align 8
  %read32.i.i444.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %224, i32 0, i32 13
  %225 = ptrtoint ptr %read32.i.i444.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %read32.i.i444.i, align 4
  %call.i.i445.i = tail call i32 %226(ptr noundef %rtwdev, i32 noundef 2244) #7
  %and21.i446.i = and i32 %call.i.i445.i, -1073741825
  %227 = ptrtoint ptr %hci.i.i436.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hci.i.i436.i, align 8
  %write32.i.i447.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %228, i32 0, i32 16
  %229 = ptrtoint ptr %write32.i.i447.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write32.i.i447.i, align 4
  tail call void %230(ptr noundef %rtwdev, i32 noundef 2244, i32 noundef %and21.i446.i) #7
  br label %sw.epilog.sink.split.i

sw.bb152.i:                                       ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i454.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %231 = ptrtoint ptr %hci.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hci.i.i454.i, align 8
  %read32.i.i455.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %232, i32 0, i32 13
  %233 = ptrtoint ptr %read32.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %read32.i.i455.i, align 4
  %call.i.i456.i = tail call i32 %234(ptr noundef %rtwdev, i32 noundef 2220) #7
  %and154.i = and i32 %call.i.i456.i, -268501248
  %or155.i = or i32 %and154.i, 128
  %235 = ptrtoint ptr %hci.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hci.i.i454.i, align 8
  %read32.i.i458.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %236, i32 0, i32 13
  %237 = ptrtoint ptr %read32.i.i458.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %read32.i.i458.i, align 4
  %call.i.i459.i = tail call i32 %238(ptr noundef %rtwdev, i32 noundef 2220) #7
  %239 = ptrtoint ptr %hci.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hci.i.i454.i, align 8
  %write32.i.i460.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %240, i32 0, i32 16
  %241 = ptrtoint ptr %write32.i.i460.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write32.i.i460.i, align 4
  tail call void %242(ptr noundef %rtwdev, i32 noundef 2220, i32 noundef %or155.i) #7
  %243 = ptrtoint ptr %hci.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hci.i.i454.i, align 8
  %read32.i.i462.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %244, i32 0, i32 13
  %245 = ptrtoint ptr %read32.i.i462.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read32.i.i462.i, align 4
  %call.i.i463.i = tail call i32 %246(ptr noundef %rtwdev, i32 noundef 2244) #7
  %and21.i464.i = and i32 %call.i.i463.i, -1073741825
  %247 = ptrtoint ptr %hci.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hci.i.i454.i, align 8
  %write32.i.i465.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %248, i32 0, i32 16
  %249 = ptrtoint ptr %write32.i.i465.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write32.i.i465.i, align 4
  tail call void %250(ptr noundef %rtwdev, i32 noundef 2244, i32 noundef %and21.i464.i) #7
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb152.i, %sw.bb148.i, %if.then146.i, %sw.bb118.i, %sw.default.i
  %hci.i.i411.sink506.i = phi ptr [ %hci.i.i411.i, %if.then146.i ], [ %hci.i.i454.i, %sw.bb152.i ], [ %hci.i.i436.i, %sw.bb148.i ], [ %hci.i.i389.i, %sw.bb118.i ], [ %hci.i.i376.i, %sw.default.i ]
  %.sink503.i = phi i32 [ 2248, %if.then146.i ], [ 2248, %sw.bb152.i ], [ 2248, %sw.bb148.i ], [ 2244, %sw.bb118.i ], [ 2244, %sw.default.i ]
  %.sink502.i = phi i32 [ 1024, %if.then146.i ], [ -2147483648, %sw.bb152.i ], [ -2147483648, %sw.bb148.i ], [ 1073741824, %sw.bb118.i ], [ 1073741824, %sw.default.i ]
  %251 = ptrtoint ptr %hci.i.i411.sink506.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hci.i.i411.sink506.i, align 8
  %read32.i.i431.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %252, i32 0, i32 13
  %253 = ptrtoint ptr %read32.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %read32.i.i431.i, align 4
  %call.i.i432.i = tail call i32 %254(ptr noundef %rtwdev, i32 noundef %.sink503.i) #7
  %or.i434.i = or i32 %call.i.i432.i, %.sink502.i
  %255 = ptrtoint ptr %hci.i.i411.sink506.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hci.i.i411.sink506.i, align 8
  %write32.i.i435.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %256, i32 0, i32 16
  %257 = ptrtoint ptr %write32.i.i435.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write32.i.i435.i, align 4
  tail call void %258(ptr noundef %rtwdev, i32 noundef %.sink503.i, i32 noundef %or.i434.i) #7
  br label %rtw8822b_set_channel_bb.exit

rtw8822b_set_channel_bb.exit:                     ; preds = %sw.epilog.sink.split.i, %sw.bb131.i.rtw8822b_set_channel_bb.exit_crit_edge
  tail call void @rtw_set_channel_mac(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_chan_idx) #7
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %259 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %chip.i.i, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %read_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %262, i32 0, i32 7
  %263 = ptrtoint ptr %read_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read_rf.i.i, align 4
  %call5.i.i = tail call i32 %264(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #7
  %and.i48 = and i32 %call5.i.i, -462848
  %conv.i = zext i8 %channel to i32
  %cond.i = select i1 %cmp.i, i32 0, i32 65792
  %or.i = or i32 %cond.i, %conv.i
  %or5.i = or i32 %or.i, %and.i48
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %channel)
  %cmp7.i = icmp ugt i8 %channel, -112
  %or9.i = or i32 %or5.i, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %channel)
  %cmp11.i = icmp ugt i8 %channel, 79
  %or14.i = or i32 %or5.i, 131072
  %spec.select.i = select i1 %cmp11.i, i32 %or14.i, i32 %or5.i
  %rf_reg18.0.i = select i1 %cmp7.i, i32 %or9.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bw)
  %switch.selectcmp.i = icmp eq i8 %bw, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2048, i32 3072
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bw)
  %switch.selectcmp181.i = icmp eq i8 %bw, 2
  %switch.select182.i = select i1 %switch.selectcmp181.i, i32 1024, i32 %switch.select.i
  %or21.i = or i32 %rf_reg18.0.i, %switch.select182.i
  br i1 %cmp.i, label %rtw8822b_set_channel_bb.exit.if.end75.i_crit_edge, label %if.else26.i

rtw8822b_set_channel_bb.exit.if.end75.i_crit_edge: ; preds = %rtw8822b_set_channel_bb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.else26.i:                                      ; preds = %rtw8822b_set_channel_bb.exit
  %265 = add i8 %channel, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %265)
  %266 = icmp ult i8 %265, 13
  %267 = add i8 %channel, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %267)
  %268 = icmp ult i8 %267, 13
  %or.cond.i50 = or i1 %266, %268
  br i1 %or.cond.i50, label %if.then40.i, label %if.else43.i

if.then40.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv.i, -36
  %shr.i = ashr i32 %sub.i, 1
  %arrayidx.i = getelementptr [15 x i8], ptr @low_band, i32 0, i32 %shr.i
  br label %if.end75.sink.split.i

if.else43.i:                                      ; preds = %if.else26.i
  %269 = add i8 %channel, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %269)
  %270 = icmp ult i8 %269, 45
  br i1 %270, label %if.then51.i, label %if.else57.i

if.then51.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub53.i = add nsw i32 %conv.i, -100
  %shr54.i = ashr i32 %sub53.i, 1
  %arrayidx55.i = getelementptr [23 x i8], ptr @middle_band, i32 0, i32 %shr54.i
  br label %if.end75.sink.split.i

if.else57.i:                                      ; preds = %if.else43.i
  %271 = add i8 %channel, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %271)
  %272 = icmp ult i8 %271, 29
  br i1 %272, label %if.then65.i, label %do.end.i

if.then65.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub67.i = add nsw i32 %conv.i, -149
  %shr68.i = ashr i32 %sub67.i, 1
  %arrayidx69.i = getelementptr [15 x i8], ptr @high_band, i32 0, i32 %shr68.i
  br label %if.end75.sink.split.i

if.end75.sink.split.i:                            ; preds = %if.then65.i, %if.then51.i, %if.then40.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i, %if.then40.i ], [ %arrayidx69.i, %if.then65.i ], [ %arrayidx55.i, %if.then51.i ]
  %273 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx.sink.i, align 1
  %phi.cast.i = zext i8 %274 to i32
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end75.sink.split.i, %rtw8822b_set_channel_bb.exit.if.end75.i_crit_edge
  %rf_reg_be.0.shrunk.i = phi i32 [ 0, %rtw8822b_set_channel_bb.exit.if.end75.i_crit_edge ], [ %phi.cast.i, %if.end75.sink.split.i ]
  %call2.i143.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %275 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %chip.i.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %write_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %278, i32 0, i32 8
  %279 = ptrtoint ptr %write_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write_rf.i.i, align 4
  %call5.i145.i = tail call zeroext i1 %280(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 190, i32 noundef 229376, i32 noundef %rf_reg_be.0.shrunk.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i143.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %channel)
  %cmp77.i = icmp eq i8 %channel, -112
  %..i = zext i1 %cmp77.i to i32
  %call2.i152.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %281 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %chip.i.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %write_rf.i154.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %284, i32 0, i32 8
  %285 = ptrtoint ptr %write_rf.i154.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %write_rf.i154.i, align 4
  %call5.i155.i = tail call zeroext i1 %286(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 223, i32 noundef 262144, i32 noundef %..i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i152.i) #7
  %call2.i157.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %287 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %chip.i.i, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %288, align 4
  %write_rf.i159.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %290, i32 0, i32 8
  %291 = ptrtoint ptr %write_rf.i159.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %write_rf.i159.i, align 4
  %call5.i160.i = tail call zeroext i1 %292(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or21.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i157.i) #7
  %rf_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 13
  %293 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %cmp83.not.i = icmp eq i8 %294, 0
  br i1 %cmp83.not.i, label %if.end75.i.if.end86.i_crit_edge, label %if.then85.i

if.end75.i.if.end86.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

if.then85.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i162.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %295 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %chip.i.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %296, align 4
  %write_rf.i164.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %298, i32 0, i32 8
  %299 = ptrtoint ptr %write_rf.i164.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write_rf.i164.i, align 4
  %call5.i165.i = tail call zeroext i1 %300(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 24, i32 noundef 1048575, i32 noundef %or21.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i162.i) #7
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then85.i, %if.end75.i.if.end86.i_crit_edge
  %call2.i167.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %301 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %chip.i.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %302, align 4
  %write_rf.i169.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %304, i32 0, i32 8
  %305 = ptrtoint ptr %write_rf.i169.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %write_rf.i169.i, align 4
  %call5.i170.i = tail call zeroext i1 %306(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 184, i32 noundef 524288, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i167.i) #7
  %call2.i172.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %307 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %chip.i.i, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %308, align 4
  %write_rf.i174.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %310, i32 0, i32 8
  %311 = ptrtoint ptr %write_rf.i174.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %write_rf.i174.i, align 4
  %call5.i175.i = tail call zeroext i1 %312(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 184, i32 noundef 524288, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i172.i) #7
  br label %rtw8822b_set_channel_rf.exit

do.end.i:                                         ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 553, i32 noundef 9, ptr noundef null) #7
  br label %rtw8822b_set_channel_rf.exit

rtw8822b_set_channel_rf.exit:                     ; preds = %do.end.i, %if.end86.i
  %313 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %bw, label %if.else12.i [
    i8 1, label %if.then.i56
    i8 2, label %if.then7.i57
  ]

if.then.i56:                                      ; preds = %rtw8822b_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i51 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %314 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %hci.i.i.i51, align 8
  %read32.i.i.i52 = getelementptr inbounds %struct.rtw_hci_ops, ptr %315, i32 0, i32 13
  %316 = ptrtoint ptr %read32.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %read32.i.i.i52, align 4
  %call.i.i.i53 = tail call i32 %317(ptr noundef %rtwdev, i32 noundef 2376) #7
  %and21.i.i = and i32 %call.i.i.i53, -805306369
  %or.i.i54 = or i32 %and21.i.i, 268435456
  %318 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %hci.i.i.i51, align 8
  %write32.i.i.i55 = getelementptr inbounds %struct.rtw_hci_ops, ptr %319, i32 0, i32 16
  %320 = ptrtoint ptr %write32.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %write32.i.i.i55, align 4
  tail call void %321(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %or.i.i54) #7
  %322 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %hci.i.i.i51, align 8
  %read32.i.i28.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %323, i32 0, i32 13
  %324 = ptrtoint ptr %read32.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %read32.i.i28.i, align 4
  %call.i.i29.i = tail call i32 %325(ptr noundef %rtwdev, i32 noundef 2380) #7
  %and21.i30.i = and i32 %call.i.i29.i, -805306369
  %326 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %hci.i.i.i51, align 8
  %write32.i.i31.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %327, i32 0, i32 16
  %328 = ptrtoint ptr %write32.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %write32.i.i31.i, align 4
  tail call void %329(ptr noundef %rtwdev, i32 noundef 2380, i32 noundef %and21.i30.i) #7
  %330 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %hci.i.i.i51, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %331, i32 0, i32 13
  %332 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %333(ptr noundef %rtwdev, i32 noundef 3104) #7
  %and21.i.i.i = and i32 %call.i.i.i.i, 2147483647
  %334 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %hci.i.i.i51, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %335, i32 0, i32 16
  %336 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %337(ptr noundef %rtwdev, i32 noundef 3104, i32 noundef %and21.i.i.i) #7
  %338 = ptrtoint ptr %hci.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %hci.i.i.i51, align 8
  %read32.i.i9.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %339, i32 0, i32 13
  %340 = ptrtoint ptr %read32.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %read32.i.i9.i.i, align 4
  %call.i.i10.i.i = tail call i32 %341(ptr noundef %rtwdev, i32 noundef 3616) #7
  %and21.i12.i.i = and i32 %call.i.i10.i.i, 2147483647
  br label %rtw8822b_set_channel_rxdfir.exit

if.then7.i57:                                     ; preds = %rtw8822b_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i32.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %342 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %hci.i.i32.i, align 8
  %read32.i.i33.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %343, i32 0, i32 13
  %344 = ptrtoint ptr %read32.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %read32.i.i33.i, align 4
  %call.i.i34.i = tail call i32 %345(ptr noundef %rtwdev, i32 noundef 2376) #7
  %and21.i35.i = and i32 %call.i.i34.i, -805306369
  %or.i36.i = or i32 %and21.i35.i, 536870912
  %346 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %hci.i.i32.i, align 8
  %write32.i.i37.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %347, i32 0, i32 16
  %348 = ptrtoint ptr %write32.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %write32.i.i37.i, align 4
  tail call void %349(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %or.i36.i) #7
  %350 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %hci.i.i32.i, align 8
  %read32.i.i39.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %351, i32 0, i32 13
  %352 = ptrtoint ptr %read32.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %read32.i.i39.i, align 4
  %call.i.i40.i = tail call i32 %353(ptr noundef %rtwdev, i32 noundef 2380) #7
  %and21.i41.i = and i32 %call.i.i40.i, -805306369
  %or.i42.i = or i32 %and21.i41.i, 268435456
  %354 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %hci.i.i32.i, align 8
  %write32.i.i43.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %355, i32 0, i32 16
  %356 = ptrtoint ptr %write32.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %write32.i.i43.i, align 4
  tail call void %357(ptr noundef %rtwdev, i32 noundef 2380, i32 noundef %or.i42.i) #7
  %358 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %hci.i.i32.i, align 8
  %read32.i.i.i45.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %359, i32 0, i32 13
  %360 = ptrtoint ptr %read32.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %read32.i.i.i45.i, align 4
  %call.i.i.i46.i = tail call i32 %361(ptr noundef %rtwdev, i32 noundef 3104) #7
  %and21.i.i47.i = and i32 %call.i.i.i46.i, 2147483647
  %362 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %hci.i.i32.i, align 8
  %write32.i.i.i48.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %363, i32 0, i32 16
  %364 = ptrtoint ptr %write32.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %write32.i.i.i48.i, align 4
  tail call void %365(ptr noundef %rtwdev, i32 noundef 3104, i32 noundef %and21.i.i47.i) #7
  %366 = ptrtoint ptr %hci.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %hci.i.i32.i, align 8
  %read32.i.i9.i49.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %367, i32 0, i32 13
  %368 = ptrtoint ptr %read32.i.i9.i49.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %read32.i.i9.i49.i, align 4
  %call.i.i10.i50.i = tail call i32 %369(ptr noundef %rtwdev, i32 noundef 3616) #7
  %and21.i12.i51.i = and i32 %call.i.i10.i50.i, 2147483647
  br label %rtw8822b_set_channel_rxdfir.exit

if.else12.i:                                      ; preds = %rtw8822b_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i53.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %370 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %hci.i.i53.i, align 8
  %read32.i.i54.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %371, i32 0, i32 13
  %372 = ptrtoint ptr %read32.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %read32.i.i54.i, align 4
  %call.i.i55.i = tail call i32 %373(ptr noundef %rtwdev, i32 noundef 2376) #7
  %and21.i56.i = and i32 %call.i.i55.i, -805306369
  %or.i57.i = or i32 %and21.i56.i, 536870912
  %374 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hci.i.i53.i, align 8
  %write32.i.i58.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %375, i32 0, i32 16
  %376 = ptrtoint ptr %write32.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %write32.i.i58.i, align 4
  tail call void %377(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %or.i57.i) #7
  %378 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %hci.i.i53.i, align 8
  %read32.i.i60.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %379, i32 0, i32 13
  %380 = ptrtoint ptr %read32.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %read32.i.i60.i, align 4
  %call.i.i61.i = tail call i32 %381(ptr noundef %rtwdev, i32 noundef 2380) #7
  %and21.i62.i = and i32 %call.i.i61.i, -805306369
  %or.i63.i = or i32 %and21.i62.i, 536870912
  %382 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hci.i.i53.i, align 8
  %write32.i.i64.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %383, i32 0, i32 16
  %384 = ptrtoint ptr %write32.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %write32.i.i64.i, align 4
  tail call void %385(ptr noundef %rtwdev, i32 noundef 2380, i32 noundef %or.i63.i) #7
  %386 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %hci.i.i53.i, align 8
  %read32.i.i.i66.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %387, i32 0, i32 13
  %388 = ptrtoint ptr %read32.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %read32.i.i.i66.i, align 4
  %call.i.i.i67.i = tail call i32 %389(ptr noundef %rtwdev, i32 noundef 3104) #7
  %or.i.i.i = or i32 %call.i.i.i67.i, -2147483648
  %390 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %hci.i.i53.i, align 8
  %write32.i.i.i69.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %391, i32 0, i32 16
  %392 = ptrtoint ptr %write32.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %write32.i.i.i69.i, align 4
  tail call void %393(ptr noundef %rtwdev, i32 noundef 3104, i32 noundef %or.i.i.i) #7
  %394 = ptrtoint ptr %hci.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %hci.i.i53.i, align 8
  %read32.i.i9.i70.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %395, i32 0, i32 13
  %396 = ptrtoint ptr %read32.i.i9.i70.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %read32.i.i9.i70.i, align 4
  %call.i.i10.i71.i = tail call i32 %397(ptr noundef %rtwdev, i32 noundef 3616) #7
  %or.i15.i.i = or i32 %call.i.i10.i71.i, -2147483648
  br label %rtw8822b_set_channel_rxdfir.exit

rtw8822b_set_channel_rxdfir.exit:                 ; preds = %if.else12.i, %if.then7.i57, %if.then.i56
  %hci.i.i32.sink.i = phi ptr [ %hci.i.i32.i, %if.then7.i57 ], [ %hci.i.i53.i, %if.else12.i ], [ %hci.i.i.i51, %if.then.i56 ]
  %and21.i12.i51.sink.i = phi i32 [ %and21.i12.i51.i, %if.then7.i57 ], [ %or.i15.i.i, %if.else12.i ], [ %and21.i12.i.i, %if.then.i56 ]
  %398 = ptrtoint ptr %hci.i.i32.sink.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %hci.i.i32.sink.i, align 8
  %write32.i.i16.i52.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %399, i32 0, i32 16
  %400 = ptrtoint ptr %write32.i.i16.i52.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %write32.i.i16.i52.i, align 4
  tail call void %401(ptr noundef %rtwdev, i32 noundef 3616, i32 noundef %and21.i12.i51.sink.i) #7
  tail call fastcc void @rtw8822b_toggle_igi(ptr noundef %rtwdev)
  tail call fastcc void @rtw8822b_set_channel_cca(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, ptr noundef %arrayidx)
  %rtw_set_channel_rfe = getelementptr [6 x %struct.rtw8822b_rfe_info], ptr @rtw8822b_rfe_info, i32 0, i32 %conv, i32 4
  %402 = ptrtoint ptr %rtw_set_channel_rfe to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %rtw_set_channel_rfe, align 4
  tail call void %403(ptr noundef %rtwdev, i8 noundef zeroext %channel) #7
  br label %cleanup

cleanup:                                          ; preds = %rtw8822b_set_channel_rxdfir.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_query_rx_desc(ptr noundef %rtwdev, ptr noundef %rx_desc, ptr noundef %pkt_stat, ptr noundef %rx_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
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
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then55:                                        ; preds = %if.end
  %66 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr49, align 1
  %68 = and i8 %67, 15
  %conv2.i = zext i8 %68 to i32
  %69 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %conv2.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr49, align 4
  %sum.shift.i.i = lshr i32 %71, 16
  %div4.i242526.i.i = trunc i32 %sum.shift.i.i to i8
  %conv3.i.i = add i8 %div4.i242526.i.i, -110
  %rx_power.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15
  %72 = ptrtoint ptr %rx_power.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv3.i.i, ptr %rx_power.i.i, align 4
  %call5.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %rx_power.i.i, i8 noundef zeroext 1) #7
  %rssi.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 16
  %73 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %call5.i.i, ptr %rssi.i.i, align 4
  %bw.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %74 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %bw.i.i, align 2
  %75 = ptrtoint ptr %rx_power.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rx_power.i.i, align 4
  %77 = tail call i8 @llvm.smax.i8(i8 %76, i8 -120) #7
  %cond.i.i = sext i8 %77 to i32
  %signal_power.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %78 = ptrtoint ptr %signal_power.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond.i.i, ptr %signal_power.i.i, align 4
  %rssi14.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 50
  %79 = ptrtoint ptr %rssi14.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %call5.i.i, ptr %rssi14.i.i, align 2
  br label %if.end60

sw.bb3.i:                                         ; preds = %if.then55
  %80 = add nsw i8 %conv32, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %80)
  %81 = icmp ult i8 %80, 8
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr49, i32 1
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i, align 4
  %..i.i = select i1 %81, i32 16, i32 20
  %sum.shift.i11.i = lshr i32 %83, %..i.i
  %rxsc.0.in.i.i = and i32 %sum.shift.i11.i, 15
  %84 = add nsw i32 %rxsc.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %84)
  %85 = icmp ult i32 %84, 8
  br i1 %85, label %sw.bb3.i.if.end39.i.i_crit_edge, label %if.else19.i.i

sw.bb3.i.if.end39.i.i_crit_edge:                  ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.else19.i.i:                                    ; preds = %sw.bb3.i
  %86 = add nsw i32 %rxsc.0.in.i.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %if.else19.i.i.if.end39.i.i_crit_edge, label %if.else28.i.i

if.else19.i.i.if.end39.i.i_crit_edge:             ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.else28.i.i:                                    ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %rxsc.0.in.i.i)
  %cmp30.i.i = icmp ugt i32 %rxsc.0.in.i.i, 12
  br i1 %cmp30.i.i, label %if.else28.i.i.if.end39.i.i_crit_edge, label %if.else33.i.i

if.else28.i.i.if.end39.i.i_crit_edge:             ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.else33.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr34.i.i = getelementptr i32, ptr %add.ptr49, i32 3
  %88 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr34.i.i, align 4
  %90 = trunc i32 %89 to i8
  %91 = lshr i8 %90, 4
  %conv36.i.i = and i8 %91, 3
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.else33.i.i, %if.else28.i.i.if.end39.i.i_crit_edge, %if.else19.i.i.if.end39.i.i_crit_edge, %sw.bb3.i.if.end39.i.i_crit_edge
  %bw.0.i.i = phi i8 [ %conv36.i.i, %if.else33.i.i ], [ 0, %sw.bb3.i.if.end39.i.i_crit_edge ], [ 1, %if.else19.i.i.if.end39.i.i_crit_edge ], [ 2, %if.else28.i.i.if.end39.i.i_crit_edge ]
  %92 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr49, align 4
  %sum.shift228.i.i = lshr i32 %93, 16
  %div4.i206219227229.i.i = trunc i32 %sum.shift228.i.i to i8
  %conv42.i.i = add i8 %div4.i206219227229.i.i, -110
  %rx_power.i12.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15
  %94 = ptrtoint ptr %rx_power.i12.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv42.i.i, ptr %rx_power.i12.i, align 4
  %95 = load i32, ptr %add.ptr49, align 4
  %96 = lshr i32 %95, 8
  %97 = trunc i32 %96 to i8
  %conv46.i.i = add i8 %97, -110
  %arrayidx48.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15, i32 1
  %98 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv46.i.i, ptr %arrayidx48.i.i, align 1
  %call50.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %rx_power.i12.i, i8 noundef zeroext 2) #7
  %rssi51.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 16
  %99 = ptrtoint ptr %rssi51.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %call50.i.i, ptr %rssi51.i.i, align 4
  %bw52.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %100 = ptrtoint ptr %bw52.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %bw.0.i.i, ptr %bw52.i.i, align 2
  %101 = ptrtoint ptr %rx_power.i12.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rx_power.i12.i, align 4
  %103 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx48.i.i, align 1
  %105 = tail call i8 @llvm.smax.i8(i8 %102, i8 %104) #7
  %106 = tail call i8 @llvm.smax.i8(i8 %105, i8 -120) #7
  %cond74.i.i = sext i8 %106 to i32
  %signal_power.i13.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %107 = ptrtoint ptr %signal_power.i13.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %cond74.i.i, ptr %signal_power.i13.i, align 4
  %108 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rate, align 1
  %curr_rx_rate.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 51
  %110 = ptrtoint ptr %curr_rx_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %curr_rx_rate.i.i, align 2
  %add.ptr76.i.i = getelementptr i32, ptr %add.ptr49, i32 4
  %111 = ptrtoint ptr %add.ptr76.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr76.i.i, align 4
  %113 = lshr i32 %112, 24
  %conv78.i.i = trunc i32 %113 to i8
  %rx_evm79.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 19
  %114 = ptrtoint ptr %rx_evm79.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv78.i.i, ptr %rx_evm79.i.i, align 2
  %115 = load i32, ptr %add.ptr76.i.i, align 4
  %sum.shift232.i.i = lshr i32 %115, 16
  %div4.i211220231233.i.i = trunc i32 %sum.shift232.i.i to i8
  %arrayidx85.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 19, i32 1
  %116 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %div4.i211220231233.i.i, ptr %arrayidx85.i.i, align 1
  %add.ptr86.i.i = getelementptr i32, ptr %add.ptr49, i32 6
  %117 = ptrtoint ptr %add.ptr86.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr86.i.i, align 4
  %119 = lshr i32 %118, 24
  %conv88.i.i = trunc i32 %119 to i8
  %rx_snr.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 18
  %120 = ptrtoint ptr %rx_snr.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv88.i.i, ptr %rx_snr.i.i, align 2
  %121 = load i32, ptr %add.ptr86.i.i, align 4
  %sum.shift235.i.i = lshr i32 %121, 16
  %div4.i214221234236.i.i = trunc i32 %sum.shift235.i.i to i8
  %arrayidx94.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 18, i32 1
  %122 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %div4.i214221234236.i.i, ptr %arrayidx94.i.i, align 1
  %add.ptr95.i.i = getelementptr i32, ptr %add.ptr49, i32 5
  %123 = ptrtoint ptr %add.ptr95.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr95.i.i, align 4
  %125 = lshr i32 %124, 24
  %conv97.i.i = trunc i32 %125 to i8
  %cfo_tail.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 20
  %126 = ptrtoint ptr %cfo_tail.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv97.i.i, ptr %cfo_tail.i.i, align 2
  %127 = load i32, ptr %add.ptr95.i.i, align 4
  %sum.shift238.i.i = lshr i32 %127, 16
  %div4.i217222237239.i.i = trunc i32 %sum.shift238.i.i to i8
  %arrayidx103.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 20, i32 1
  %128 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %div4.i217222237239.i.i, ptr %arrayidx103.i.i, align 1
  %rf_path_num.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end143.i.i.for.body.i.i_crit_edge, %if.end39.i.i
  %path.0245.i.i = phi i32 [ 0, %if.end39.i.i ], [ %inc.i.i, %if.end143.i.i.for.body.i.i_crit_edge ]
  %evm_dbm.0244.i.i = phi i8 [ 0, %if.end39.i.i ], [ %evm_dbm.1.i.i, %if.end143.i.i.for.body.i.i_crit_edge ]
  %arrayidx108.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15, i32 %path.0245.i.i
  %call109.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %arrayidx108.i.i, i8 noundef zeroext 1) #7
  %arrayidx111.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 50, i32 %path.0245.i.i
  %129 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %call109.i.i, ptr %arrayidx111.i.i, align 1
  %arrayidx113.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 18, i32 %path.0245.i.i
  %130 = ptrtoint ptr %arrayidx113.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx113.i.i, align 1
  %132 = ashr i8 %131, 1
  %arrayidx117.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 47, i32 %path.0245.i.i
  %133 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx117.i.i, align 1
  %arrayidx119.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 20, i32 %path.0245.i.i
  %134 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx119.i.i, align 1
  %conv120.i.i = sext i8 %135 to i16
  %mul.i.i = mul nsw i16 %conv120.i.i, 5
  %shr121.i.i = ashr i16 %mul.i.i, 1
  %arrayidx124.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 49, i32 %path.0245.i.i
  %136 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %shr121.i.i, ptr %arrayidx124.i.i, align 2
  %arrayidx126.i.i = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 19, i32 %path.0245.i.i
  %137 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx126.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp128.i.i = icmp slt i8 %138, 0
  br i1 %cmp128.i.i, label %if.then130.i.i, label %for.body.i.i.if.end143.i.i_crit_edge

for.body.i.i.if.end143.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.i.i

if.then130.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %138)
  %cmp132.i.i = icmp eq i8 %138, -128
  br i1 %cmp132.i.i, label %if.then130.i.i.if.end143.i.i_crit_edge, label %if.else135.i.i

if.then130.i.i.if.end143.i.i_crit_edge:           ; preds = %if.then130.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.i.i

if.else135.i.i:                                   ; preds = %if.then130.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub137.i.i = sub nsw i8 0, %138
  %139 = lshr i8 %sub137.i.i, 1
  br label %if.end143.i.i

if.end143.i.i:                                    ; preds = %if.else135.i.i, %if.then130.i.i.if.end143.i.i_crit_edge, %for.body.i.i.if.end143.i.i_crit_edge
  %evm_dbm.1.i.i = phi i8 [ %139, %if.else135.i.i ], [ %evm_dbm.0244.i.i, %for.body.i.i.if.end143.i.i_crit_edge ], [ 0, %if.then130.i.i.if.end143.i.i_crit_edge ]
  %arrayidx144.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 48, i32 %path.0245.i.i
  %140 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %evm_dbm.1.i.i, ptr %arrayidx144.i.i, align 1
  %inc.i.i = add nuw nsw i32 %path.0245.i.i, 1
  %141 = ptrtoint ptr %rf_path_num.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %rf_path_num.i.i, align 2
  %conv104.i.i = zext i8 %142 to i32
  %cmp105.not.not.i.i = icmp ult i32 %path.0245.i.i, %conv104.i.i
  br i1 %cmp105.not.not.i.i, label %if.end143.i.i.for.body.i.i_crit_edge, label %if.end143.i.i.if.end60_crit_edge

if.end143.i.i.if.end60_crit_edge:                 ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end143.i.i.for.body.i.i_crit_edge:             ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %143 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.6, i32 noundef %conv2.i) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end.i, %if.end143.i.i.if.end60_crit_edge, %sw.bb.i, %if.end.if.end60_crit_edge
  %phy_status.0 = phi ptr [ null, %if.end.if.end60_crit_edge ], [ %add.ptr49, %sw.bb.i ], [ %add.ptr49, %do.end.i ], [ %add.ptr49, %if.end143.i.i.if.end60_crit_edge ]
  tail call void @rtw_rx_fill_rx_status(ptr noundef %rtwdev, ptr noundef %pkt_stat, ptr noundef %add.ptr52, ptr noundef %rx_status, ptr noundef %phy_status.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_phy_read_rf(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_write_rf_reg_sipi(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_set_tx_power_index(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_path_num = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %0 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_path_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp19.not = icmp eq i8 %1, 0
  br i1 %cmp19.not, label %entry.for.end11_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc9.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %path.020 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc10, %for.inc9.for.cond3.preheader_crit_edge ]
  %arrayidx21.i = getelementptr [2 x i32], ptr @rtw8822b_set_tx_power_index_by_rate.offset_txagc, i32 0, i32 %path.020
  br label %for.body6

for.body6:                                        ; preds = %rtw8822b_set_tx_power_index_by_rate.exit.for.body6_crit_edge, %for.cond3.preheader
  %rs.017 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %rtw8822b_set_tx_power_index_by_rate.exit.for.body6_crit_edge ]
  %arrayidx.i = getelementptr [0 x i8], ptr @rtw_rate_size, i32 0, i32 %rs.017
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp32.not.i = icmp eq i8 %3, 0
  br i1 %cmp32.not.i, label %for.body6.rtw8822b_set_tx_power_index_by_rate.exit_crit_edge, label %for.body.lr.ph.i

for.body6.rtw8822b_set_tx_power_index_by_rate.exit_crit_edge: ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_set_tx_power_index_by_rate.exit

for.body.lr.ph.i:                                 ; preds = %for.body6
  %arrayidx4.i = getelementptr [0 x ptr], ptr @rtw_rate_section, i32 0, i32 %rs.017
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %5, i32 %j.033.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.i, align 1
  %idxprom8.i = zext i8 %7 to i32
  %arrayidx9.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 26, i32 %path.020, i32 %idxprom8.i
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9.i, align 1
  %and.i = and i8 %7, 3
  %conv12.i = zext i8 %9 to i32
  %10 = shl nuw nsw i8 %and.i, 3
  %mul.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 %conv12.i, %mul.i
  %11 = load i32, ptr @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  %or.i = or i32 %shl.i, %11
  store i32 %or.i, ptr @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and.i)
  %cmp15.i = icmp eq i8 %and.i, 3
  br i1 %cmp15.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i = and i8 %7, -4
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21.i, align 4
  %conv22.i = zext i8 %and18.i to i32
  %add.i = add i32 %13, %conv22.i
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef %add.i, i32 noundef %or.i) #7
  store i32 0, ptr @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.033.i, 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %19 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rtw8822b_set_tx_power_index_by_rate.exit_crit_edge

for.inc.i.rtw8822b_set_tx_power_index_by_rate.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_set_tx_power_index_by_rate.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw8822b_set_tx_power_index_by_rate.exit:         ; preds = %for.inc.i.rtw8822b_set_tx_power_index_by_rate.exit_crit_edge, %for.body6.rtw8822b_set_tx_power_index_by_rate.exit_crit_edge
  %inc = add nuw nsw i32 %rs.017, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc9, label %rtw8822b_set_tx_power_index_by_rate.exit.for.body6_crit_edge

rtw8822b_set_tx_power_index_by_rate.exit.for.body6_crit_edge: ; preds = %rtw8822b_set_tx_power_index_by_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.inc9:                                         ; preds = %rtw8822b_set_tx_power_index_by_rate.exit
  %inc10 = add nuw nsw i32 %path.020, 1
  %20 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rf_path_num, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc10, %conv
  br i1 %cmp, label %for.inc9.for.cond3.preheader_crit_edge, label %for.inc9.for.end11_crit_edge

for.inc9.for.end11_crit_edge:                     ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11

for.inc9.for.cond3.preheader_crit_edge:           ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader

for.end11:                                        ; preds = %for.inc9.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8822b_set_antenna(ptr noundef %rtwdev, i32 noundef %antenna_tx, i32 noundef %antenna_rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %antenna_tx, i32 noundef %antenna_rx) #7
  %conv = trunc i32 %antenna_tx to i8
  %antenna.off.i = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %antenna.off.i)
  %switch.i = icmp ult i8 %antenna.off.i, 3
  br i1 %switch.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %antenna_tx) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = trunc i32 %antenna_rx to i8
  %antenna.off.i27 = add i8 %conv2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %antenna.off.i27)
  %switch.i28 = icmp ult i8 %antenna.off.i27, 3
  br i1 %switch.i28, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %antenna_rx) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %antenna_tx10 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 16
  %4 = ptrtoint ptr %antenna_tx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %antenna_tx, ptr %antenna_tx10, align 4
  %antenna_rx11 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %5 = ptrtoint ptr %antenna_rx11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %antenna_rx, ptr %antenna_rx11, align 4
  tail call fastcc void @rtw8822b_config_trx_mode(ptr noundef %rtwdev, i8 noundef zeroext %conv, i8 noundef zeroext %conv2)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_cfg_ldo25(ptr noundef %rtwdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 55) #7
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
  tail call void %8(ptr noundef %rtwdev, i32 noundef 55, i8 noundef zeroext %cond) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_false_alarm_statistics(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 2056) #7
  %and = and i32 %call.i, 268435456
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i, align 4
  %call.i77 = tail call zeroext i16 %7(ptr noundef %rtwdev, i32 noundef 2652) #7
  %conv = zext i16 %call.i77 to i32
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read16.i79 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %read16.i79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i79, align 4
  %call.i80 = tail call zeroext i16 %11(ptr noundef %rtwdev, i32 noundef 3912) #7
  %conv4 = zext i16 %call.i80 to i32
  %12 = ptrtoint ptr %dm_info1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %dm_info1, align 4
  %ofdm_fa_cnt6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %ofdm_fa_cnt6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4, ptr %ofdm_fa_cnt6, align 4
  %total_fa_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %conv
  %add = add nuw nsw i32 %spec.select, %conv4
  %14 = ptrtoint ptr %total_fa_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %total_fa_cnt, align 4
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read32.i82 = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read32.i82 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i82, align 4
  %call.i83 = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 3844) #7
  %and9 = and i32 %call.i83, 65535
  %cck_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 6
  %19 = ptrtoint ptr %cck_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and9, ptr %cck_ok_cnt, align 4
  %shr = lshr i32 %call.i83, 16
  %cck_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 7
  %20 = ptrtoint ptr %cck_err_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %cck_err_cnt, align 4
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %read32.i85 = getelementptr inbounds %struct.rtw_hci_ops, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %read32.i85 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i85, align 4
  %call.i86 = tail call i32 %24(ptr noundef %rtwdev, i32 noundef 3860) #7
  %and12 = and i32 %call.i86, 65535
  %ofdm_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 8
  %25 = ptrtoint ptr %ofdm_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and12, ptr %ofdm_ok_cnt, align 4
  %shr14 = lshr i32 %call.i86, 16
  %ofdm_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %ofdm_err_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr14, ptr %ofdm_err_cnt, align 4
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %read32.i88 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i88, align 4
  %call.i89 = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 3856) #7
  %and16 = and i32 %call.i89, 65535
  %ht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 10
  %31 = ptrtoint ptr %ht_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and16, ptr %ht_ok_cnt, align 4
  %shr18 = lshr i32 %call.i89, 16
  %ht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 11
  %32 = ptrtoint ptr %ht_err_cnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr18, ptr %ht_err_cnt, align 4
  %33 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i, align 8
  %read32.i91 = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %read32.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i91, align 4
  %call.i92 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 3852) #7
  %and20 = and i32 %call.i92, 65535
  %vht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 12
  %37 = ptrtoint ptr %vht_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and20, ptr %vht_ok_cnt, align 4
  %shr22 = lshr i32 %call.i92, 16
  %vht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 13
  %38 = ptrtoint ptr %vht_err_cnt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr22, ptr %vht_err_cnt, align 4
  %39 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i, align 8
  %read32.i94 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %read32.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i94, align 4
  %call.i95 = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 3848) #7
  %shr25 = lshr i32 %call.i95, 16
  %ofdm_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 4
  %43 = ptrtoint ptr %ofdm_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr25, ptr %ofdm_cca_cnt, align 4
  %total_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 5
  %44 = ptrtoint ptr %total_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr25, ptr %total_cca_cnt, align 4
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i, align 8
  %read32.i97 = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %read32.i97 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i97, align 4
  %call.i98 = tail call i32 %48(ptr noundef %rtwdev, i32 noundef 4044) #7
  %and29 = and i32 %call.i98, 65535
  %cck_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 3
  %49 = ptrtoint ptr %cck_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and29, ptr %cck_cca_cnt, align 4
  %50 = ptrtoint ptr %total_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_cca_cnt, align 4
  %add32 = add i32 %51, %and29
  store i32 %add32, ptr %total_cca_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %52 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 2468) #7
  %or.i = or i32 %call.i.i, 131072
  %56 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef %or.i) #7
  %60 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i, align 8
  %read32.i.i100 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %read32.i.i100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i100, align 4
  %call.i.i101 = tail call i32 %63(ptr noundef %rtwdev, i32 noundef 2468) #7
  %and.i = and i32 %call.i.i101, -131073
  %64 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i, align 8
  %write32.i.i102 = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %write32.i.i102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i102, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 2468, i32 noundef %and.i) #7
  %68 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i, align 8
  %read32.i.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %read32.i.i104 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i104, align 4
  %call.i.i105 = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and.i106 = and i32 %call.i.i105, -32769
  %72 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i, align 8
  %write32.i.i107 = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %write32.i.i107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i.i107, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and.i106) #7
  %76 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i, align 8
  %read32.i.i109 = getelementptr inbounds %struct.rtw_hci_ops, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %read32.i.i109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i109, align 4
  %call.i.i110 = tail call i32 %79(ptr noundef %rtwdev, i32 noundef 2604) #7
  %or.i111 = or i32 %call.i.i110, 32768
  %80 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i, align 8
  %write32.i.i112 = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 16
  %82 = ptrtoint ptr %write32.i.i112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i112, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %or.i111) #7
  %84 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i, align 8
  %read32.i.i114 = getelementptr inbounds %struct.rtw_hci_ops, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %read32.i.i114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32.i.i114, align 4
  %call.i.i115 = tail call i32 %87(ptr noundef %rtwdev, i32 noundef 2904) #7
  %or.i116 = or i32 %call.i.i115, 1
  %88 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hci.i, align 8
  %write32.i.i117 = getelementptr inbounds %struct.rtw_hci_ops, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %write32.i.i117 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i117, align 4
  tail call void %91(ptr noundef %rtwdev, i32 noundef 2904, i32 noundef %or.i116) #7
  %92 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i, align 8
  %read32.i.i119 = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %read32.i.i119 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i119, align 4
  %call.i.i120 = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 2904) #7
  %and.i121 = and i32 %call.i.i120, -2
  %96 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i, align 8
  %write32.i.i122 = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 16
  %98 = ptrtoint ptr %write32.i.i122 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i122, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 2904, i32 noundef %and.i121) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_phy_calibration(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtw8822b_do_iqk(ptr noundef %rtwdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_pwr_track(ptr noundef %rtwdev) #0 align 64 {
entry:
  %swing_table.i = alloca %struct.rtw_swing_table, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_track_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %power_track_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_track_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwr_trk_triggered = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 34
  %2 = ptrtoint ptr %pwr_trk_triggered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr_trk_triggered, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
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
  %call5.i = tail call zeroext i1 %9(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %swing_table.i) #7
  %10 = call ptr @memset(ptr %swing_table.i, i32 255, i32 32)
  call void @rtw_phy_config_swing_table(ptr noundef %rtwdev, ptr noundef nonnull %swing_table.i) #7
  %thermal_meter.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 10
  %11 = ptrtoint ptr %thermal_meter.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %thermal_meter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp eq i8 %12, -1
  br i1 %cmp.i, label %if.end6.rtw8822b_phy_pwrtrack.exit_crit_edge, label %if.end.i

if.end6.rtw8822b_phy_pwrtrack.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_phy_pwrtrack.exit

if.end.i:                                         ; preds = %if.end6
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
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
  %call5.i.i = call i32 %18(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #7
  %conv3.i = trunc i32 %call5.i.i to i8
  call void @rtw_phy_pwrtrack_avg(ptr noundef %rtwdev, i8 noundef zeroext %conv3.i, i8 noundef zeroext 0) #7
  %pwr_trk_init_trigger.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %19 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pwr_trk_init_trigger.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pwr_trk_init_trigger.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  %call6.i = call zeroext i1 @rtw_phy_pwrtrack_thermal_changed(ptr noundef %rtwdev, i8 noundef zeroext %conv3.i, i8 noundef zeroext 0) #7
  br i1 %call6.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.iqk.i_crit_edge

if.else.i.iqk.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqk.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %if.then4.i
  %rf_path_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %22 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rf_path_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1234.not.i = icmp eq i8 %23, 0
  br i1 %cmp1234.not.i, label %if.end9.i.iqk.i_crit_edge, label %for.body.lr.ph.i

if.end9.i.iqk.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqk.i

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %current_channel.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %current_band_width.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 9
  %tx_rate3.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 25
  %default_ofdm_index.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 33
  %dev.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %hci.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %rtw8822b_phy_pwrtrack_path.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %rtw8822b_phy_pwrtrack_path.exit.i.for.body.i_crit_edge ]
  %call.i.i = call zeroext i8 @rtw_phy_pwrtrack_get_delta(ptr noundef %rtwdev, i8 noundef zeroext 0) #7
  %arrayidx.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31, i32 %indvars.iv.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %26 = trunc i32 %indvars.iv.i to i8
  %call2.i33.i = call signext i8 @rtw_phy_pwrtrack_get_pwridx(ptr noundef %rtwdev, ptr noundef nonnull %swing_table.i, i8 noundef zeroext %26, i8 noundef zeroext 0, i8 noundef zeroext %call.i.i) #7
  call void @__sanitizer_cov_trace_cmp1(i8 %call2.i33.i, i8 %25)
  %cmp.i.i = icmp eq i8 %call2.i33.i, %25
  br i1 %cmp.i.i, label %for.body.i.rtw8822b_phy_pwrtrack_path.exit.i_crit_edge, label %if.end.i.i

for.body.i.rtw8822b_phy_pwrtrack_path.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_phy_pwrtrack_path.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call2.i33.i, ptr %arrayidx.i.i, align 1
  %28 = ptrtoint ptr %current_channel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %current_channel.i.i.i, align 1
  %30 = ptrtoint ptr %current_band_width.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %current_band_width.i.i.i, align 1
  %call.i.i.i = call zeroext i8 @rtw_regd_get(ptr noundef %rtwdev) #7
  %32 = ptrtoint ptr %tx_rate3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_rate3.i.i.i, align 1
  %34 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip.i.i, align 4
  %max_power_index.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %max_power_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_power_index.i.i.i, align 1
  %conv.i.i.i = zext i8 %31 to i32
  %call4.i.i.i = call zeroext i8 @rtw_phy_get_tx_power_index(ptr noundef %rtwdev, i8 noundef zeroext %26, i8 noundef zeroext %33, i32 noundef %conv.i.i.i, i8 noundef zeroext %29, i8 noundef zeroext %call.i.i.i) #7
  %38 = call i8 @llvm.usub.sat.i8(i8 %37, i8 %call4.i.i.i) #7
  %39 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %26, label %if.end.i.i.rtw8822b_phy_pwrtrack_path.exit.i_crit_edge [
    i8 0, label %if.end.i.i.if.end7.i.i.i.i_crit_edge
    i8 1, label %if.then5.i.i.i.i
  ]

if.end.i.i.if.end7.i.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i.i

if.end.i.i.rtw8822b_phy_pwrtrack_path.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_phy_pwrtrack_path.exit.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.then5.i.i.i.i, %if.end.i.i.if.end7.i.i.i.i_crit_edge
  %reg1.0.i.i.i.i = phi i32 [ 3732, %if.then5.i.i.i.i ], [ 3220, %if.end.i.i.if.end7.i.i.i.i_crit_edge ]
  %reg2.0.i.i.i.i = phi i32 [ 3612, %if.then5.i.i.i.i ], [ 3100, %if.end.i.i.if.end7.i.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i, align 1
  %42 = ptrtoint ptr %default_ofdm_index.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %default_ofdm_index.i.i.i.i.i, align 2
  %add.i.i.i.i.i = add i8 %43, 10
  %44 = call i8 @llvm.umin.i8(i8 %38, i8 15) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp11.i.i.i.i.i = icmp sgt i8 %41, -1
  br i1 %cmp11.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else43.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %44)
  %cmp15.not.i.i.i.i.i = icmp ugt i8 %41, %44
  br i1 %cmp15.not.i.i.i.i.i, label %if.then23.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i.i.i.i.i

if.then23.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add27.i.i.i.i.i = add i8 %43, %41
  %sub.i.i.i.i.i = sub i8 %add27.i.i.i.i.i, %44
  %45 = call i8 @llvm.umin.i8(i8 %sub.i.i.i.i.i, i8 %add.i.i.i.i.i) #7
  br label %if.end79.i.i.i.i.i

if.else43.i.i.i.i.i:                              ; preds = %if.end7.i.i.i.i
  %conv10.i.i.i.i.i = sext i8 %41 to i32
  %conv45.i.i.i.i.i = zext i8 %43 to i32
  %sub52.i.i.i.i.i = sub nsw i32 0, %conv10.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv45.i.i.i.i.i, i32 %sub52.i.i.i.i.i)
  %cmp57.i.i.i.i.i = icmp ugt i32 %conv45.i.i.i.i.i, %sub52.i.i.i.i.i
  %add63.i.i.i.i.i = add i8 %43, %41
  br i1 %cmp57.i.i.i.i.i, label %if.else43.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge, label %if.else43.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge

if.else43.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge: ; preds = %if.else43.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_txagc_swing_offset.exit.i.i.i.i

if.else43.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge: ; preds = %if.else43.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i.i.i.i.i

if.end79.i.i.i.i.i:                               ; preds = %if.else43.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge, %if.then23.i.i.i.i.i, %if.then.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge
  %agc_index.0.i.i.i.i.i = phi i8 [ %44, %if.then23.i.i.i.i.i ], [ %41, %if.then.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge ], [ 0, %if.else43.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge ]
  %swing_index.1.i.i.i.i.i = phi i8 [ %45, %if.then23.i.i.i.i.i ], [ %43, %if.then.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge ], [ %add63.i.i.i.i.i, %if.else43.i.i.i.i.i.if.end79.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %swing_index.1.i.i.i.i.i)
  %cmp81.i.i.i.i.i = icmp ugt i8 %swing_index.1.i.i.i.i.i, 36
  br i1 %cmp81.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end79.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge

if.end79.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge: ; preds = %if.end79.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_txagc_swing_offset.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end79.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.18) #10
  br label %rtw8822b_txagc_swing_offset.exit.i.i.i.i

rtw8822b_txagc_swing_offset.exit.i.i.i.i:         ; preds = %do.end.i.i.i.i.i, %if.end79.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge, %if.else43.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge
  %agc_index.0117.i.i.i.i.i = phi i8 [ %agc_index.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %agc_index.0.i.i.i.i.i, %if.end79.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge ], [ 0, %if.else43.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge ]
  %swing_index.2.i.i.i.i.i = phi i8 [ 36, %do.end.i.i.i.i.i ], [ %swing_index.1.i.i.i.i.i, %if.end79.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge ], [ 0, %if.else43.i.i.i.i.i.rtw8822b_txagc_swing_offset.exit.i.i.i.i_crit_edge ]
  %conv823.i.i.i.i = zext i8 %agc_index.0117.i.i.i.i.i to i32
  %48 = ptrtoint ptr %hci.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i.i.i.i, align 8
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 %51(ptr noundef %rtwdev, i32 noundef %reg1.0.i.i.i.i) #7
  %and21.i.i.i.i.i = and i32 %call.i.i.i.i.i.i, -1040187393
  %shl.i.i.i.i.i = shl nuw i32 %conv823.i.i.i.i, 25
  %and22.i.i.i.i.i = and i32 %shl.i.i.i.i.i, 1040187392
  %or.i.i.i.i.i = or i32 %and21.i.i.i.i.i, %and22.i.i.i.i.i
  %52 = ptrtoint ptr %hci.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i.i.i.i, align 8
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  call void %55(ptr noundef %rtwdev, i32 noundef %reg1.0.i.i.i.i, i32 noundef %or.i.i.i.i.i) #7
  %idxprom.i.i.i.i = zext i8 %swing_index.2.i.i.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr [37 x i32], ptr @rtw8822b_txscale_tbl, i32 0, i32 %idxprom.i.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %58 = ptrtoint ptr %hci.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i.i.i.i, align 8
  %read32.i.i17.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %read32.i.i17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i17.i.i.i.i, align 4
  %call.i.i18.i.i.i.i = call i32 %61(ptr noundef %rtwdev, i32 noundef %reg2.0.i.i.i.i) #7
  %and21.i19.i.i.i.i = and i32 %call.i.i18.i.i.i.i, 2097151
  %shl.i20.i.i.i.i = shl i32 %57, 21
  %or.i21.i.i.i.i = or i32 %and21.i19.i.i.i.i, %shl.i20.i.i.i.i
  %62 = ptrtoint ptr %hci.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i.i.i.i, align 8
  %write32.i.i22.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %write32.i.i22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i22.i.i.i.i, align 4
  call void %65(ptr noundef %rtwdev, i32 noundef %reg2.0.i.i.i.i, i32 noundef %or.i21.i.i.i.i) #7
  br label %rtw8822b_phy_pwrtrack_path.exit.i

rtw8822b_phy_pwrtrack_path.exit.i:                ; preds = %rtw8822b_txagc_swing_offset.exit.i.i.i.i, %if.end.i.i.rtw8822b_phy_pwrtrack_path.exit.i_crit_edge, %for.body.i.rtw8822b_phy_pwrtrack_path.exit.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %66 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rf_path_num.i, align 2
  %68 = zext i8 %67 to i32
  %cmp12.i = icmp ult i32 %indvars.iv.next.i, %68
  br i1 %cmp12.i, label %rtw8822b_phy_pwrtrack_path.exit.i.for.body.i_crit_edge, label %rtw8822b_phy_pwrtrack_path.exit.i.iqk.i_crit_edge

rtw8822b_phy_pwrtrack_path.exit.i.iqk.i_crit_edge: ; preds = %rtw8822b_phy_pwrtrack_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqk.i

rtw8822b_phy_pwrtrack_path.exit.i.for.body.i_crit_edge: ; preds = %rtw8822b_phy_pwrtrack_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

iqk.i:                                            ; preds = %rtw8822b_phy_pwrtrack_path.exit.i.iqk.i_crit_edge, %if.end9.i.iqk.i_crit_edge, %if.else.i.iqk.i_crit_edge
  %call14.i = call zeroext i1 @rtw_phy_pwrtrack_need_iqk(ptr noundef %rtwdev) #7
  br i1 %call14.i, label %if.then15.i, label %iqk.i.rtw8822b_phy_pwrtrack.exit_crit_edge

iqk.i.rtw8822b_phy_pwrtrack.exit_crit_edge:       ; preds = %iqk.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8822b_phy_pwrtrack.exit

if.then15.i:                                      ; preds = %iqk.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rtw8822b_do_iqk(ptr noundef %rtwdev) #7
  br label %rtw8822b_phy_pwrtrack.exit

rtw8822b_phy_pwrtrack.exit:                       ; preds = %if.then15.i, %iqk.i.rtw8822b_phy_pwrtrack.exit_crit_edge, %if.end6.rtw8822b_phy_pwrtrack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %swing_table.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rtw8822b_phy_pwrtrack.exit, %if.then4
  %.sink = phi i8 [ 0, %rtw8822b_phy_pwrtrack.exit ], [ 1, %if.then4 ]
  %69 = ptrtoint ptr %pwr_trk_triggered to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink, ptr %pwr_trk_triggered, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_bf_config_bfee(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %bfee, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfee, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %do.end [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

if.then:                                          ; preds = %entry
  br i1 %enable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_bf_enable_bfee_su(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %bfee) #7
  br label %if.end6

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_bf_remove_bfee_su(ptr noundef %rtwdev, ptr noundef %bfee) #7
  br label %if.end6

if.then3:                                         ; preds = %entry
  br i1 %enable, label %if.then.i14, label %if.else.i15

if.then.i14:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_bf_enable_bfee_mu(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %bfee) #7
  br label %if.end6

if.else.i15:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_bf_remove_bfee_mu(ptr noundef %rtwdev, ptr noundef %bfee) #7
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.20) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.else.i15, %if.then.i14, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_set_gid_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_cfg_csi_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_adaptivity_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_phy_set_edcca_th(ptr noundef %rtwdev, i8 noundef zeroext 127, i8 noundef zeroext 127) #7
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 1312) #7
  %and.i = and i32 %call.i.i, -32769
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1312, i32 noundef %and.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i7 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i7, align 4
  %call.i.i8 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 1316) #7
  %or.i = or i32 %call.i.i8, 2048
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i9 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i9, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1316, i32 noundef %or.i) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i11, align 4
  %call.i.i12 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 2372) #7
  %and21.i = and i32 %call.i.i12, -805306369
  %or.i13 = or i32 %and21.i, 268435456
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i14 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i14, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 2372, i32 noundef %or.i13) #7
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i16 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i16, align 4
  %call.i.i17 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 2208) #7
  %and21.i18 = and i32 %call.i.i17, -4
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i19 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i19, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 2208, i32 noundef %and21.i18) #7
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i21 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i21, align 4
  %call.i.i22 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 2268) #7
  %or.i23 = or i32 %call.i.i22, 32
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i24 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i.i24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i24, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 2268, i32 noundef %or.i23) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_adaptivity(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %igi_history = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 17
  %0 = ptrtoint ptr %igi_history to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %igi_history, align 2
  %edcca_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 61
  %2 = ptrtoint ptr %edcca_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %edcca_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i8 %1, 8
  %4 = tail call i8 @llvm.smax.i8(i8 %add, i8 48)
  %sub = add nsw i8 %4, -8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %l2h_th_ini = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 60
  %5 = ptrtoint ptr %l2h_th_ini to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l2h_th_ini, align 1
  %7 = tail call i8 @llvm.smin.i8(i8 %1, i8 %6)
  %sub25 = add i8 %7, -7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %h2l.0 = phi i8 [ %sub, %if.then ], [ %sub25, %if.else ]
  %l2h.0 = phi i8 [ %4, %if.then ], [ %7, %if.else ]
  tail call void @rtw_phy_set_edcca_th(ptr noundef %rtwdev, i8 noundef zeroext %l2h.0, i8 noundef zeroext %h2l.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_coex_cfg_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 1360) #7
  %or5.i = or i8 %call.i.i, 8
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %or5.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i9 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i9, align 4
  %call.i.i10 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 1936) #7
  %12 = and i8 %call.i.i10, -64
  %13 = or i8 %12, 5
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %write8.i.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8.i.i11, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 1936, i8 noundef zeroext %13) #7
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 1912, i8 noundef zeroext 1) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i13 = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 64) #7
  %or.i14 = or i32 %call.i.i13, 32
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i14) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i16 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %read32.i.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i16, align 4
  %call.i.i17 = tail call i32 %33(ptr noundef %rtwdev, i32 noundef 64) #7
  %or.i18 = or i32 %call.i.i17, 512
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i19 = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %write32.i.i19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i19, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i18) #7
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i21 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %read8.i.i21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8.i.i21, align 4
  %call.i.i22 = tail call zeroext i8 %41(ptr noundef %rtwdev, i32 noundef 1222) #7
  %or5.i23 = or i8 %call.i.i22, 16
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i24 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %write8.i.i24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8.i.i24, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 1222, i8 noundef zeroext %or5.i23) #7
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i26 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %read8.i.i26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8.i.i26, align 4
  %call.i.i27 = tail call zeroext i8 %49(ptr noundef %rtwdev, i32 noundef 1222) #7
  %and.i = and i8 %call.i.i27, -33
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i28 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %write8.i.i28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8.i.i28, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 1222, i8 noundef zeroext %and.i) #7
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i.i, align 4
  %call.i.i30 = tail call zeroext i16 %57(ptr noundef %rtwdev, i32 noundef 1890) #7
  %58 = or i16 %call.i.i30, 4096
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i.i, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 1890, i16 noundef zeroext %58) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_coex_cfg_ant_switch(ptr noundef %rtwdev, i8 noundef zeroext %ctrl_type, i8 noundef zeroext %pos_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ctrl_type to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv2 = zext i8 %pos_type to i32
  %add = or i32 %shl, %conv2
  %cur_switch_status = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 15
  %0 = ptrtoint ptr %cur_switch_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_switch_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp eq i32 %add, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cur_switch_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %cur_switch_status, align 4
  %ant_switch_diversity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 1
  %3 = ptrtoint ptr %ant_switch_diversity to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ant_switch_diversity, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ctrl_type)
  %cmp11 = icmp eq i8 %ctrl_type, 0
  %spec.store.select = select i1 %cmp11, i8 2, i8 %ctrl_type
  %ctrl_type.addr.0 = select i1 %tobool.not, i8 %ctrl_type, i8 %spec.store.select
  %ant_switch_polarity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 4
  %5 = ptrtoint ptr %ant_switch_polarity to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ant_switch_polarity, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp16 = icmp eq i8 %6, 1
  %7 = zext i8 %ctrl_type.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %ctrl_type.addr.0, label %sw.bb [
    i8 4, label %sw.bb63
    i8 1, label %sw.bb51
    i8 2, label %sw.bb56
    i8 3, label %sw.bb57
    i8 5, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 78) #7
  %12 = and i8 %call.i.i, 127
  %13 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8.i.i, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %12) #7
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i103 = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %read8.i.i103 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8.i.i103, align 4
  %call.i.i104 = tail call zeroext i8 %20(ptr noundef %rtwdev, i32 noundef 79) #7
  %21 = or i8 %call.i.i104, 1
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i108 = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %write8.i.i108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8.i.i108, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 79, i8 noundef zeroext %21) #7
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i110 = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %read8.i.i110 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8.i.i110, align 4
  %call.i.i111 = tail call zeroext i8 %29(ptr noundef %rtwdev, i32 noundef 3252) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i116 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %write8.i.i116 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8.i.i116, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 3252, i8 noundef zeroext 119) #7
  %34 = zext i8 %pos_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %pos_type, label %if.else44 [
    i8 4, label %if.then22
    i8 1, label %if.then39
  ]

if.then22:                                        ; preds = %sw.bb
  %rfe_module_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 3
  %35 = ptrtoint ptr %rfe_module_type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rfe_module_type, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %36, label %if.then22.if.end50_crit_edge [
    i8 4, label %if.then22.if.else_crit_edge
    i8 2, label %if.then22.if.else_crit_edge228
  ]

if.then22.if.else_crit_edge228:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then22.if.else_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then22.if.end50_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.else:                                          ; preds = %if.then22.if.else_crit_edge, %if.then22.if.else_crit_edge228
  %conv33 = select i1 %cmp16, i8 1, i8 2
  br label %if.end50

if.then39:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv43 = select i1 %cmp16, i8 1, i8 2
  br label %if.end50

if.else44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv48 = select i1 %cmp16, i8 2, i8 1
  br label %if.end50

if.end50:                                         ; preds = %if.else44, %if.then39, %if.else, %if.then22.if.end50_crit_edge
  %regval.0 = phi i8 [ %conv33, %if.else ], [ %conv43, %if.then39 ], [ %conv48, %if.else44 ], [ 3, %if.then22.if.end50_crit_edge ]
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i118 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %read8.i.i118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8.i.i118, align 4
  %call.i.i119 = tail call zeroext i8 %41(ptr noundef %rtwdev, i32 noundef 3261) #7
  %42 = and i8 %call.i.i119, -4
  %or.i122 = or i8 %42, %regval.0
  %43 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %write8.i.i124 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8.i.i124, align 4
  tail call void %46(ptr noundef %rtwdev, i32 noundef 3261, i8 noundef zeroext %or.i122) #7
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i125 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %47 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i125, align 8
  %read8.i.i126 = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %read8.i.i126 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8.i.i126, align 4
  %call.i.i127 = tail call zeroext i8 %50(ptr noundef %rtwdev, i32 noundef 78) #7
  %51 = and i8 %call.i.i127, 127
  %52 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i125, align 8
  %write8.i.i131 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %write8.i.i131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write8.i.i131, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %51) #7
  %56 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i125, align 8
  %read8.i.i133 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %read8.i.i133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8.i.i133, align 4
  %call.i.i134 = tail call zeroext i8 %59(ptr noundef %rtwdev, i32 noundef 79) #7
  %60 = or i8 %call.i.i134, 1
  %61 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i125, align 8
  %write8.i.i139 = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 14
  %63 = ptrtoint ptr %write8.i.i139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8.i.i139, align 4
  tail call void %64(ptr noundef %rtwdev, i32 noundef 79, i8 noundef zeroext %60) #7
  %65 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i125, align 8
  %read8.i.i141 = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %read8.i.i141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8.i.i141, align 4
  %call.i.i142 = tail call zeroext i8 %68(ptr noundef %rtwdev, i32 noundef 3252) #7
  %69 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i.i125, align 8
  %write8.i.i147 = getelementptr inbounds %struct.rtw_hci_ops, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %write8.i.i147 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8.i.i147, align 4
  tail call void %72(ptr noundef %rtwdev, i32 noundef 3252, i8 noundef zeroext 102) #7
  %conv55 = select i1 %cmp16, i8 1, i8 2
  %73 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i125, align 8
  %read8.i.i149 = getelementptr inbounds %struct.rtw_hci_ops, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %read8.i.i149 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8.i.i149, align 4
  %call.i.i150 = tail call zeroext i8 %76(ptr noundef %rtwdev, i32 noundef 3261) #7
  %77 = and i8 %call.i.i150, -4
  %or.i155 = or i8 %77, %conv55
  %78 = ptrtoint ptr %hci.i.i125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i125, align 8
  %write8.i.i157 = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 14
  %80 = ptrtoint ptr %write8.i.i157 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write8.i.i157, align 4
  tail call void %81(ptr noundef %rtwdev, i32 noundef 3261, i8 noundef zeroext %or.i155) #7
  br label %cleanup

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i158 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %82 = ptrtoint ptr %hci.i.i158 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i158, align 8
  %read8.i.i159 = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %read8.i.i159 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read8.i.i159, align 4
  %call.i.i160 = tail call zeroext i8 %85(ptr noundef %rtwdev, i32 noundef 78) #7
  %86 = and i8 %call.i.i160, 127
  %87 = ptrtoint ptr %hci.i.i158 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i158, align 8
  %write8.i.i164 = getelementptr inbounds %struct.rtw_hci_ops, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %write8.i.i164 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write8.i.i164, align 4
  tail call void %90(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %86) #7
  %91 = ptrtoint ptr %hci.i.i158 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i158, align 8
  %read8.i.i166 = getelementptr inbounds %struct.rtw_hci_ops, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %read8.i.i166 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8.i.i166, align 4
  %call.i.i167 = tail call zeroext i8 %94(ptr noundef %rtwdev, i32 noundef 79) #7
  %95 = or i8 %call.i.i167, 1
  %96 = ptrtoint ptr %hci.i.i158 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i158, align 8
  %write8.i.i172 = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %write8.i.i172 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8.i.i172, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 79, i8 noundef zeroext %95) #7
  %100 = ptrtoint ptr %hci.i.i158 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i158, align 8
  %read8.i.i174 = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %read8.i.i174 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read8.i.i174, align 4
  %call.i.i175 = tail call zeroext i8 %103(ptr noundef %rtwdev, i32 noundef 3252) #7
  %104 = ptrtoint ptr %hci.i.i158 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i.i158, align 8
  %write8.i.i180 = getelementptr inbounds %struct.rtw_hci_ops, ptr %105, i32 0, i32 14
  %106 = ptrtoint ptr %write8.i.i180 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8.i.i180, align 4
  tail call void %107(ptr noundef %rtwdev, i32 noundef 3252, i8 noundef zeroext -120) #7
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i181 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %108 = ptrtoint ptr %hci.i.i181 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i181, align 8
  %read8.i.i182 = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %read8.i.i182 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read8.i.i182, align 4
  %call.i.i183 = tail call zeroext i8 %111(ptr noundef %rtwdev, i32 noundef 78) #7
  %112 = or i8 %call.i.i183, -128
  %113 = ptrtoint ptr %hci.i.i181 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hci.i.i181, align 8
  %write8.i.i188 = getelementptr inbounds %struct.rtw_hci_ops, ptr %114, i32 0, i32 14
  %115 = ptrtoint ptr %write8.i.i188 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8.i.i188, align 4
  tail call void %116(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %112) #7
  %117 = ptrtoint ptr %hci.i.i181 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i181, align 8
  %read8.i.i190 = getelementptr inbounds %struct.rtw_hci_ops, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %read8.i.i190 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8.i.i190, align 4
  %call.i.i191 = tail call zeroext i8 %120(ptr noundef %rtwdev, i32 noundef 100) #7
  %121 = and i8 %call.i.i191, -2
  %conv3.i194 = zext i1 %cmp16 to i8
  %or.i196 = or i8 %121, %conv3.i194
  %122 = ptrtoint ptr %hci.i.i181 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i181, align 8
  %write8.i.i198 = getelementptr inbounds %struct.rtw_hci_ops, ptr %123, i32 0, i32 14
  %124 = ptrtoint ptr %write8.i.i198 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8.i.i198, align 4
  tail call void %125(ptr noundef %rtwdev, i32 noundef 100, i8 noundef zeroext %or.i196) #7
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i199 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %126 = ptrtoint ptr %hci.i.i199 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i199, align 8
  %read8.i.i200 = getelementptr inbounds %struct.rtw_hci_ops, ptr %127, i32 0, i32 11
  %128 = ptrtoint ptr %read8.i.i200 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read8.i.i200, align 4
  %call.i.i201 = tail call zeroext i8 %129(ptr noundef %rtwdev, i32 noundef 78) #7
  %130 = and i8 %call.i.i201, 127
  %131 = ptrtoint ptr %hci.i.i199 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i199, align 8
  %write8.i.i205 = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 14
  %133 = ptrtoint ptr %write8.i.i205 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write8.i.i205, align 4
  tail call void %134(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %130) #7
  %135 = ptrtoint ptr %hci.i.i199 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i199, align 8
  %read8.i.i207 = getelementptr inbounds %struct.rtw_hci_ops, ptr %136, i32 0, i32 11
  %137 = ptrtoint ptr %read8.i.i207 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read8.i.i207, align 4
  %call.i.i208 = tail call zeroext i8 %138(ptr noundef %rtwdev, i32 noundef 79) #7
  %139 = or i8 %call.i.i208, 1
  %140 = ptrtoint ptr %hci.i.i199 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i199, align 8
  %write8.i.i213 = getelementptr inbounds %struct.rtw_hci_ops, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %write8.i.i213 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write8.i.i213, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 79, i8 noundef zeroext %139) #7
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i214 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %144 = ptrtoint ptr %hci.i.i214 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i214, align 8
  %read8.i.i215 = getelementptr inbounds %struct.rtw_hci_ops, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %read8.i.i215 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read8.i.i215, align 4
  %call.i.i216 = tail call zeroext i8 %147(ptr noundef %rtwdev, i32 noundef 78) #7
  %148 = and i8 %call.i.i216, 127
  %149 = ptrtoint ptr %hci.i.i214 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i214, align 8
  %write8.i.i220 = getelementptr inbounds %struct.rtw_hci_ops, ptr %150, i32 0, i32 14
  %151 = ptrtoint ptr %write8.i.i220 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write8.i.i220, align 4
  tail call void %152(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %148) #7
  %153 = ptrtoint ptr %hci.i.i214 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i214, align 8
  %read8.i.i222 = getelementptr inbounds %struct.rtw_hci_ops, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %read8.i.i222 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read8.i.i222, align 4
  %call.i.i223 = tail call zeroext i8 %156(ptr noundef %rtwdev, i32 noundef 79) #7
  %157 = and i8 %call.i.i223, -2
  %158 = ptrtoint ptr %hci.i.i214 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hci.i.i214, align 8
  %write8.i.i227 = getelementptr inbounds %struct.rtw_hci_ops, ptr %159, i32 0, i32 14
  %160 = ptrtoint ptr %write8.i.i227 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write8.i.i227, align 4
  tail call void %161(ptr noundef %rtwdev, i32 noundef 79, i8 noundef zeroext %157) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb63, %sw.bb62, %sw.bb57, %sw.bb56, %sw.bb51, %if.end50, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8822b_coex_cfg_gnt_fix(ptr nocapture noundef %rtwdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_coex_cfg_gnt_debug(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 102) #7
  %4 = and i8 %call.i.i, -17
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 102, i8 noundef zeroext %4) #7
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i6 = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %read8.i.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i.i6, align 4
  %call.i.i7 = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 103) #7
  %13 = and i8 %call.i.i7, -2
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %write8.i.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8.i.i11, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %13) #7
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i13 = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %read8.i.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8.i.i13, align 4
  %call.i.i14 = tail call zeroext i8 %21(ptr noundef %rtwdev, i32 noundef 66) #7
  %22 = and i8 %call.i.i14, -9
  %23 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i18 = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %write8.i.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8.i.i18, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 66, i8 noundef zeroext %22) #7
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i20 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %read8.i.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8.i.i20, align 4
  %call.i.i21 = tail call zeroext i8 %30(ptr noundef %rtwdev, i32 noundef 101) #7
  %31 = and i8 %call.i.i21, 127
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i.i25, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 101, i8 noundef zeroext %31) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i27 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %read8.i.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8.i.i27, align 4
  %call.i.i28 = tail call zeroext i8 %39(ptr noundef %rtwdev, i32 noundef 115) #7
  %40 = and i8 %call.i.i28, -9
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i32 = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %write8.i.i32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8.i.i32, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %40) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_coex_cfg_rfe_type(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %ant_switch_diversity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 1
  %4 = ptrtoint ptr %ant_switch_diversity to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ant_switch_diversity, align 1
  %switch.tableidx = add i8 %1, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %5 = icmp ult i8 %switch.tableidx, 5
  br i1 %5, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtw8822b_coex_cfg_rfe_type, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %7)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %storemerge = phi i8 [ %switch.load, %switch.lookup ], [ 1, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %rfe to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %rfe, align 1
  %9 = add i8 %1, -2
  %switch.and = and i8 %9, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  tail call void @rtw_coex_write_scbd(ptr noundef %rtwdev, i16 noundef zeroext 256, i1 noundef zeroext %switch.selectcmp) #7
  %wlg_at_btg = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 5
  %10 = ptrtoint ptr %wlg_at_btg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %wlg_at_btg, align 1
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %11 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %share_ant, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.else35_crit_edge, label %land.lhs.true

if.end.if.else35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %rfe to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rfe, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool30.not = icmp eq i8 %14, 0
  %brmerge = or i1 %switch.selectcmp, %tobool30.not
  br i1 %brmerge, label %land.lhs.true.if.else35_crit_edge, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true.if.else35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

if.else35:                                        ; preds = %land.lhs.true.if.else35_crit_edge, %if.end.if.else35_crit_edge
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %land.lhs.true.if.end37_crit_edge
  %.sink68 = phi i8 [ 0, %if.else35 ], [ 1, %land.lhs.true.if.end37_crit_edge ]
  %ant_switch_with_bt36 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 2
  %15 = ptrtoint ptr %ant_switch_with_bt36 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink68, ptr %ant_switch_with_bt36, align 1
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 2420, i8 noundef zeroext -1) #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %23(ptr noundef %rtwdev, i32 noundef 6545) #7
  %24 = and i8 %call.i.i, -4
  %25 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write8.i.i, align 4
  tail call void %28(ptr noundef %rtwdev, i32 noundef 6545, i8 noundef zeroext %24) #7
  %29 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i, align 8
  %read8.i.i62 = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %read8.i.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8.i.i62, align 4
  %call.i.i63 = tail call zeroext i8 %32(ptr noundef %rtwdev, i32 noundef 3262) #7
  %33 = and i8 %call.i.i63, -9
  %34 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i, align 8
  %write8.i.i67 = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %write8.i.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write8.i.i67, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 3262, i8 noundef zeroext %33) #7
  tail call void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef 128, i32 noundef 0) #7
  tail call void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext 160, i32 noundef 65535, i32 noundef 65535) #7
  tail call void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext 164, i32 noundef 65535, i32 noundef 65535) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_coex_cfg_wl_tx_power(ptr noundef %rtwdev, i8 noundef zeroext %wl_pwr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_wl_pwr_lvl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 12
  %0 = ptrtoint ptr %cur_wl_pwr_lvl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_wl_pwr_lvl, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %wl_pwr)
  %cmp = icmp eq i8 %1, %wl_pwr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i8 @llvm.umin.i8(i8 %wl_pwr, i8 4)
  %3 = ptrtoint ptr %cur_wl_pwr_lvl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %cur_wl_pwr_lvl, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [5 x i8], ptr @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %9(ptr noundef %rtwdev, i32 noundef 3160) #7
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8.i.i, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 3160, i8 noundef zeroext %5) #7
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %read8.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8.i.i.1, align 4
  %call.i.i.1 = tail call zeroext i8 %17(ptr noundef %rtwdev, i32 noundef 3672) #7
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %write8.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8.i.i.1, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 3672, i8 noundef zeroext %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_coex_cfg_wl_rx_gain(ptr noundef %rtwdev, i1 noundef zeroext %low_gain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_wl_rx_low_gain_en = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 1
  %0 = ptrtoint ptr %cur_wl_rx_low_gain_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_wl_rx_low_gain_en, align 1, !range !182
  %2 = zext i1 %low_gain to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cur_wl_rx_low_gain_en to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %cur_wl_rx_low_gain_en, align 1
  br i1 %low_gain, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.22) #7
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then10
  %indvars.iv86 = phi i32 [ 0, %if.then10 ], [ %indvars.iv.next87, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [41 x i32], ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, i32 0, i32 %indvars.iv86
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 2076, i32 noundef %5) #7
  %indvars.iv.next87 = add nuw nsw i32 %indvars.iv86, 1
  %exitcond88.not = icmp eq i32 %indvars.iv.next87, 41
  br i1 %exitcond88.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
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
  %call5.i = tail call zeroext i1 %15(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 222, i32 noundef 2, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  %call2.i48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %16 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write_rf.i50 = getelementptr inbounds %struct.rtw_chip_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %write_rf.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_rf.i50, align 4
  %call5.i51 = tail call zeroext i1 %21(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 29, i32 noundef 63, i32 noundef 63) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i48) #7
  %call2.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %22 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_rf.i55 = getelementptr inbounds %struct.rtw_chip_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %write_rf.i55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_rf.i55, align 4
  %call5.i56 = tail call zeroext i1 %27(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 222, i32 noundef 2, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i53) #7
  %call2.i58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %28 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write_rf.i60 = getelementptr inbounds %struct.rtw_chip_ops, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %write_rf.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_rf.i60, align 4
  %call5.i61 = tail call zeroext i1 %33(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 29, i32 noundef 63, i32 noundef 63) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i58) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.23) #7
  %hci.i62 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.else
  %indvars.iv = phi i32 [ 0, %if.else ], [ %indvars.iv.next, %for.body18.for.body18_crit_edge ]
  %arrayidx20 = getelementptr [41 x i32], ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, i32 0, i32 %indvars.iv
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx20, align 4
  %36 = ptrtoint ptr %hci.i62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i62, align 8
  %write32.i63 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i63, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 2076, i32 noundef %35) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 41
  br i1 %exitcond.not, label %for.end23, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.end23:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  %rf_lock.i64 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i64) #7
  %chip.i66 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %40 = ptrtoint ptr %chip.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip.i66, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write_rf.i67 = getelementptr inbounds %struct.rtw_chip_ops, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %write_rf.i67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_rf.i67, align 4
  %call5.i68 = tail call zeroext i1 %45(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 29, i32 noundef 63, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i64, i32 noundef %call2.i65) #7
  %call2.i70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i64) #7
  %46 = ptrtoint ptr %chip.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip.i66, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %write_rf.i72 = getelementptr inbounds %struct.rtw_chip_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %write_rf.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_rf.i72, align 4
  %call5.i73 = tail call zeroext i1 %51(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 222, i32 noundef 2, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i64, i32 noundef %call2.i70) #7
  %call2.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i64) #7
  %52 = ptrtoint ptr %chip.i66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip.i66, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write_rf.i77 = getelementptr inbounds %struct.rtw_chip_ops, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %write_rf.i77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_rf.i77, align 4
  %call5.i78 = tail call zeroext i1 %57(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 29, i32 noundef 63, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i64, i32 noundef %call2.i75) #7
  %call2.i80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i64) #7
  %58 = ptrtoint ptr %chip.i66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip.i66, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %write_rf.i82 = getelementptr inbounds %struct.rtw_chip_ops, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %write_rf.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_rf.i82, align 4
  %call5.i83 = tail call zeroext i1 %63(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 222, i32 noundef 2, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i64, i32 noundef %call2.i80) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_load_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8822b_config_trx_mode(ptr noundef %rtwdev, i8 noundef zeroext %tx_path, i8 noundef zeroext %rx_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_channel, align 1
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %2 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rfe_option, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ugt i8 %3, 5
  %conv = zext i8 %3 to i32
  br i1 %cmp, label %do.end, label %if.end25, !prof !181

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 729, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %conv) #7
  br label %cleanup148

if.end25:                                         ; preds = %entry
  %arrayidx = getelementptr [6 x %struct.rtw8822b_rfe_info], ptr @rtw8822b_rfe_info, i32 0, i32 %conv
  %conv27 = zext i8 %tx_path to i32
  %conv28 = zext i8 %rx_path to i32
  %or1 = or i8 %rx_path, %tx_path
  %or = zext i8 %or1 to i32
  %and = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %hci.i.i5 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i5, align 8
  %read32.i.i6 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i6, align 4
  %call.i.i7 = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 3080) #7
  %and21.i8 = and i32 %call.i.i7, -65536
  %. = select i1 %tobool29.not, i32 4369, i32 12849
  %or.i9 = or i32 %and21.i8, %.
  %8 = ptrtoint ptr %hci.i.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i5, align 8
  %write32.i.i10 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %write32.i.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i10, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 3080, i32 noundef %or.i9) #7
  %and35 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %.223 = select i1 %tobool36.not, i32 4369, i32 12849
  %hci.i.i17 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %12 = ptrtoint ptr %hci.i.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i17, align 8
  %read32.i.i18 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i18, align 4
  %call.i.i19 = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 3592) #7
  %and21.i20 = and i32 %call.i.i19, -65536
  %or.i21 = or i32 %and21.i20, %.223
  %16 = ptrtoint ptr %hci.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i17, align 8
  %write32.i.i22 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %write32.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i22, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 3592, i32 noundef %or.i21) #7
  %hci.i.i23 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %20 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i24 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i24, align 4
  %call.i.i25 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 2364) #7
  %or.i27 = or i32 %call.i.i25, 786432
  %24 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i28 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %write32.i.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i28, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 2364, i32 noundef %or.i27) #7
  %28 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i30 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %read32.i.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i30, align 4
  %call.i.i31 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 2060) #7
  %and21.i32 = and i32 %call.i.i31, -805306369
  %or.i33 = or i32 %and21.i32, 268435456
  %32 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i34 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %write32.i.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i34, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 2060, i32 noundef %or.i33) #7
  %36 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i36 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %read32.i.i36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i36, align 4
  %call.i.i37 = tail call i32 %39(ptr noundef %rtwdev, i32 noundef 2060) #7
  %or.i39 = or i32 %call.i.i37, 1073741824
  %40 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i40 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %write32.i.i40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i40, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 2060, i32 noundef %or.i39) #7
  %and41 = and i32 %conv27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else44, label %if.end25.if.end50.sink.split_crit_edge

if.end25.if.end50.sink.split_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split

if.else44:                                        ; preds = %if.end25
  %and46 = and i32 %conv27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else44.if.end50_crit_edge, label %if.else44.if.end50.sink.split_crit_edge

if.else44.if.end50.sink.split_crit_edge:          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split

if.else44.if.end50_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50.sink.split:                              ; preds = %if.else44.if.end50.sink.split_crit_edge, %if.end25.if.end50.sink.split_crit_edge
  %.sink210 = phi i32 [ 1048576, %if.end25.if.end50.sink.split_crit_edge ], [ 2097152, %if.else44.if.end50.sink.split_crit_edge ]
  %.sink205 = phi i32 [ -2147483648, %if.end25.if.end50.sink.split_crit_edge ], [ 1073741824, %if.else44.if.end50.sink.split_crit_edge ]
  %44 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i54 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %read32.i.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i54, align 4
  %call.i.i55 = tail call i32 %47(ptr noundef %rtwdev, i32 noundef 2364) #7
  %and21.i56 = and i32 %call.i.i55, 1048575
  %or.i57 = or i32 %and21.i56, %.sink210
  %48 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i58 = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %write32.i.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i58, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 2364, i32 noundef %or.i57) #7
  %52 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i60 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %read32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.i60, align 4
  %call.i.i61 = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 2564) #7
  %and21.i62 = and i32 %call.i.i61, 268435455
  %or.i63 = or i32 %and21.i62, %.sink205
  %56 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i64 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %write32.i.i64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.i64, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 2564, i32 noundef %or.i63) #7
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.else44.if.end50_crit_edge
  %tx_path.off = add i8 %tx_path, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %tx_path.off)
  %switch = icmp ult i8 %tx_path.off, 2
  %.222 = select i1 %switch, i32 16, i32 1072
  %60 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i72 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %read32.i.i72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i72, align 4
  %call.i.i73 = tail call i32 %63(ptr noundef %rtwdev, i32 noundef 2368) #7
  %and21.i74 = and i32 %call.i.i73, -65521
  %or.i75 = or i32 %and21.i74, %.222
  %64 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i76 = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %write32.i.i76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i76, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 2368, i32 noundef %or.i75) #7
  %shl = shl i8 %tx_path, 4
  %or62 = or i8 %shl, %tx_path
  %conv64 = zext i8 %or62 to i32
  %68 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i78 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %read32.i.i78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i78, align 4
  %call.i.i79 = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 2060) #7
  %and21.i80 = and i32 %call.i.i79, -256
  %or.i81 = or i32 %and21.i80, %conv64
  %72 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i82 = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %write32.i.i82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write32.i.i82, align 4
  tail call void %75(ptr noundef %rtwdev, i32 noundef 2060, i32 noundef %or.i81) #7
  br i1 %switch, label %if.end50.if.end79_crit_edge, label %lor.lhs.false74

if.end50.if.end79_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

lor.lhs.false74:                                  ; preds = %if.end50
  %mp_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 39
  %76 = ptrtoint ptr %mp_mode to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool76.not = icmp eq i8 %77, 0
  br i1 %tobool76.not, label %lor.lhs.false74.if.end79_crit_edge, label %if.then77

lor.lhs.false74.if.end79_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then77:                                        ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i84 = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %read32.i.i84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i84, align 4
  %call.i.i85 = tail call i32 %81(ptr noundef %rtwdev, i32 noundef 2364) #7
  %and21.i86 = and i32 %call.i.i85, 1048575
  %or.i87 = or i32 %and21.i86, 70254592
  %82 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i88 = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %write32.i.i88 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i88, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 2364, i32 noundef %or.i87) #7
  %86 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i90 = getelementptr inbounds %struct.rtw_hci_ops, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %read32.i.i90 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i90, align 4
  %call.i.i91 = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 2564) #7
  %and21.i92 = and i32 %call.i.i91, 268435455
  %or.i93 = or i32 %and21.i92, -1073741824
  %90 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i94 = getelementptr inbounds %struct.rtw_hci_ops, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %write32.i.i94 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i94, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 2564, i32 noundef %or.i93) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %lor.lhs.false74.if.end79_crit_edge, %if.end50.if.end79_crit_edge
  %94 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i96 = getelementptr inbounds %struct.rtw_hci_ops, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %read32.i.i96 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i96, align 4
  %call.i.i97 = tail call i32 %97(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and21.i98 = and i32 %call.i.i97, -4194305
  %98 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i99 = getelementptr inbounds %struct.rtw_hci_ops, ptr %99, i32 0, i32 16
  %100 = ptrtoint ptr %write32.i.i99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write32.i.i99, align 4
  tail call void %101(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and21.i98) #7
  %102 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i101 = getelementptr inbounds %struct.rtw_hci_ops, ptr %103, i32 0, i32 13
  %104 = ptrtoint ptr %read32.i.i101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32.i.i101, align 4
  %call.i.i102 = tail call i32 %105(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and21.i103 = and i32 %call.i.i102, -262145
  %106 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %write32.i.i104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write32.i.i104, align 4
  tail call void %109(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and21.i103) #7
  %and81 = and i32 %conv28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i106 = getelementptr inbounds %struct.rtw_hci_ops, ptr %111, i32 0, i32 13
  %112 = ptrtoint ptr %read32.i.i106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read32.i.i106, align 4
  %call.i.i107 = tail call i32 %113(ptr noundef %rtwdev, i32 noundef 2564) #7
  %and21.i108 = and i32 %call.i.i107, -251658241
  br label %if.end90.sink.split

if.else84:                                        ; preds = %if.end79
  %and86 = and i32 %conv28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else84.if.end90_crit_edge, label %if.then88

if.else84.if.end90_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i111 = getelementptr inbounds %struct.rtw_hci_ops, ptr %115, i32 0, i32 13
  %116 = ptrtoint ptr %read32.i.i111 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read32.i.i111, align 4
  %call.i.i112 = tail call i32 %117(ptr noundef %rtwdev, i32 noundef 2564) #7
  %and21.i113 = and i32 %call.i.i112, -251658241
  %or.i114 = or i32 %and21.i113, 83886080
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.then88, %if.then83
  %or.i114.sink = phi i32 [ %or.i114, %if.then88 ], [ %and21.i108, %if.then83 ]
  %118 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i115 = getelementptr inbounds %struct.rtw_hci_ops, ptr %119, i32 0, i32 16
  %120 = ptrtoint ptr %write32.i.i115 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write32.i.i115, align 4
  tail call void %121(ptr noundef %rtwdev, i32 noundef 2564, i32 noundef %or.i114.sink) #7
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.else84.if.end90_crit_edge
  %shl92 = shl i8 %rx_path, 4
  %or94 = or i8 %shl92, %rx_path
  %conv96 = zext i8 %or94 to i32
  %122 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i117 = getelementptr inbounds %struct.rtw_hci_ops, ptr %123, i32 0, i32 13
  %124 = ptrtoint ptr %read32.i.i117 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i.i117, align 4
  %call.i.i118 = tail call i32 %125(ptr noundef %rtwdev, i32 noundef 2056) #7
  %and21.i119 = and i32 %call.i.i118, -256
  %or.i121 = or i32 %and21.i119, %conv96
  %126 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i122 = getelementptr inbounds %struct.rtw_hci_ops, ptr %127, i32 0, i32 16
  %128 = ptrtoint ptr %write32.i.i122 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write32.i.i122, align 4
  tail call void %129(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i121) #7
  %rx_path.off = add i8 %rx_path, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rx_path.off)
  %switch4 = icmp ult i8 %rx_path.off, 2
  %130 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %131, i32 0, i32 13
  %132 = ptrtoint ptr %read32.i.i124 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read32.i.i124, align 4
  %call.i.i125 = tail call i32 %133(ptr noundef %rtwdev, i32 noundef 6404) #7
  br i1 %switch4, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %and21.i126 = and i32 %call.i.i125, -65537
  %134 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i127 = getelementptr inbounds %struct.rtw_hci_ops, ptr %135, i32 0, i32 16
  %136 = ptrtoint ptr %write32.i.i127 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write32.i.i127, align 4
  tail call void %137(ptr noundef %rtwdev, i32 noundef 6404, i32 noundef %and21.i126) #7
  %138 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i129 = getelementptr inbounds %struct.rtw_hci_ops, ptr %139, i32 0, i32 13
  %140 = ptrtoint ptr %read32.i.i129 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read32.i.i129, align 4
  %call.i.i130 = tail call i32 %141(ptr noundef %rtwdev, i32 noundef 2048) #7
  %and21.i131 = and i32 %call.i.i130, -268435457
  %142 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i132 = getelementptr inbounds %struct.rtw_hci_ops, ptr %143, i32 0, i32 16
  %144 = ptrtoint ptr %write32.i.i132 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write32.i.i132, align 4
  tail call void %145(ptr noundef %rtwdev, i32 noundef 2048, i32 noundef %and21.i131) #7
  %146 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i134 = getelementptr inbounds %struct.rtw_hci_ops, ptr %147, i32 0, i32 13
  %148 = ptrtoint ptr %read32.i.i134 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read32.i.i134, align 4
  %call.i.i135 = tail call i32 %149(ptr noundef %rtwdev, i32 noundef 2128) #7
  %and21.i136 = and i32 %call.i.i135, -8388609
  br label %if.end106

if.else105:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %or.i142 = or i32 %call.i.i125, 65536
  %150 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i143 = getelementptr inbounds %struct.rtw_hci_ops, ptr %151, i32 0, i32 16
  %152 = ptrtoint ptr %write32.i.i143 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write32.i.i143, align 4
  tail call void %153(ptr noundef %rtwdev, i32 noundef 6404, i32 noundef %or.i142) #7
  %154 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i145 = getelementptr inbounds %struct.rtw_hci_ops, ptr %155, i32 0, i32 13
  %156 = ptrtoint ptr %read32.i.i145 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read32.i.i145, align 4
  %call.i.i146 = tail call i32 %157(ptr noundef %rtwdev, i32 noundef 2048) #7
  %or.i148 = or i32 %call.i.i146, 268435456
  %158 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i149 = getelementptr inbounds %struct.rtw_hci_ops, ptr %159, i32 0, i32 16
  %160 = ptrtoint ptr %write32.i.i149 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write32.i.i149, align 4
  tail call void %161(ptr noundef %rtwdev, i32 noundef 2048, i32 noundef %or.i148) #7
  %162 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hci.i.i23, align 8
  %read32.i.i151 = getelementptr inbounds %struct.rtw_hci_ops, ptr %163, i32 0, i32 13
  %164 = ptrtoint ptr %read32.i.i151 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read32.i.i151, align 4
  %call.i.i152 = tail call i32 %165(ptr noundef %rtwdev, i32 noundef 2128) #7
  %or.i154 = or i32 %call.i.i152, 8388608
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  %or.i154.sink = phi i32 [ %or.i154, %if.else105 ], [ %and21.i136, %if.then104 ]
  %166 = ptrtoint ptr %hci.i.i23 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hci.i.i23, align 8
  %write32.i.i155 = getelementptr inbounds %struct.rtw_hci_ops, ptr %167, i32 0, i32 16
  %168 = ptrtoint ptr %write32.i.i155 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write32.i.i155, align 4
  tail call void %169(ptr noundef %rtwdev, i32 noundef 2128, i32 noundef %or.i154.sink) #7
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %counter.0196, -1
  %cmp107 = icmp ugt i32 %counter.0196, 1
  br i1 %cmp107, label %for.cond.for.body_crit_edge, label %do.end131

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end106
  %counter.0196 = phi i32 [ 100, %if.end106 ], [ %dec, %for.cond.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %170 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %chip.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %173, i32 0, i32 8
  %174 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write_rf.i, align 4
  %call5.i = tail call zeroext i1 %175(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524288) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  %call2.i157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %176 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %chip.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %write_rf.i159 = getelementptr inbounds %struct.rtw_chip_ops, ptr %179, i32 0, i32 8
  %180 = ptrtoint ptr %write_rf.i159 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write_rf.i159, align 4
  %call5.i160 = tail call zeroext i1 %181(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 51, i32 noundef 1048575, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i157) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 429496) #7
  %call2.i162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %183 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %chip.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %186, i32 0, i32 7
  %187 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read_rf.i, align 4
  %call5.i164 = tail call i32 %188(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 51, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i164)
  %cmp109 = icmp eq i32 %call5.i164, 1
  br i1 %cmp109, label %if.end147, label %for.cond

do.end131:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 805, i32 noundef 9, ptr noundef nonnull @.str.5) #7
  br label %cleanup148

if.end147:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %189 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %chip.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %write_rf.i168 = getelementptr inbounds %struct.rtw_chip_ops, ptr %192, i32 0, i32 8
  %193 = ptrtoint ptr %write_rf.i168 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write_rf.i168, align 4
  %call5.i169 = tail call zeroext i1 %194(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524288) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i166) #7
  %call2.i171 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %195 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %chip.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %write_rf.i173 = getelementptr inbounds %struct.rtw_chip_ops, ptr %198, i32 0, i32 8
  %199 = ptrtoint ptr %write_rf.i173 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write_rf.i173, align 4
  %call5.i174 = tail call zeroext i1 %200(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 51, i32 noundef 1048575, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i171) #7
  %call2.i176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %201 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %chip.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %write_rf.i178 = getelementptr inbounds %struct.rtw_chip_ops, ptr %204, i32 0, i32 8
  %205 = ptrtoint ptr %write_rf.i178 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write_rf.i178, align 4
  %call5.i179 = tail call zeroext i1 %206(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 62, i32 noundef 1048575, i32 noundef 52) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i176) #7
  %call2.i181 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %207 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %chip.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %write_rf.i183 = getelementptr inbounds %struct.rtw_chip_ops, ptr %210, i32 0, i32 8
  %211 = ptrtoint ptr %write_rf.i183 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write_rf.i183, align 4
  %call5.i184 = tail call zeroext i1 %212(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 63, i32 noundef 1048575, i32 noundef 264204) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i181) #7
  %call2.i186 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %213 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %chip.i, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %write_rf.i188 = getelementptr inbounds %struct.rtw_chip_ops, ptr %216, i32 0, i32 8
  %217 = ptrtoint ptr %write_rf.i188 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write_rf.i188, align 4
  %call5.i189 = tail call zeroext i1 %218(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i186) #7
  %call2.i191 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %219 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %chip.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %write_rf.i193 = getelementptr inbounds %struct.rtw_chip_ops, ptr %222, i32 0, i32 8
  %223 = ptrtoint ptr %write_rf.i193 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %write_rf.i193, align 4
  %call5.i194 = tail call zeroext i1 %224(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i191) #7
  tail call fastcc void @rtw8822b_toggle_igi(ptr noundef %rtwdev)
  tail call fastcc void @rtw8822b_set_channel_cca(ptr noundef %rtwdev, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %arrayidx)
  %rtw_set_channel_rfe = getelementptr [6 x %struct.rtw8822b_rfe_info], ptr @rtw8822b_rfe_info, i32 0, i32 %conv, i32 4
  %225 = ptrtoint ptr %rtw_set_channel_rfe to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rtw_set_channel_rfe, align 4
  tail call void %226(ptr noundef %rtwdev, i8 noundef zeroext %1) #7
  br label %cleanup148

cleanup148:                                       ; preds = %if.end147, %do.end131, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8822b_toggle_igi(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and.i = and i32 %call.i.i, 127
  %sub = add i32 %call.i.i, 126
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i16 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i16, align 4
  %call.i.i17 = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and21.i = and i32 %call.i.i17, -128
  %and22.i = and i32 %sub, 127
  %or.i = or i32 %and21.i, %and22.i
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 3152, i32 noundef %or.i) #7
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i19 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i19, align 4
  %call.i.i20 = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and21.i21 = and i32 %call.i.i20, -128
  %or.i22 = or i32 %and21.i21, %and.i
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %write32.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i23, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 3152, i32 noundef %or.i22) #7
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i25, align 4
  %call.i.i26 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 3664) #7
  %and21.i27 = and i32 %call.i.i26, -128
  %or.i29 = or i32 %and21.i27, %and22.i
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i30 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %write32.i.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i30, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 3664, i32 noundef %or.i29) #7
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i32 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %read32.i.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i32, align 4
  %call.i.i33 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 3664) #7
  %and21.i34 = and i32 %call.i.i33, -128
  %or.i35 = or i32 %and21.i34, %and.i
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i36 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %write32.i.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i36, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 3664, i32 noundef %or.i35) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i38 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %read32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i38, align 4
  %call.i.i39 = tail call i32 %39(ptr noundef %rtwdev, i32 noundef 2056) #7
  %and21.i40 = and i32 %call.i.i39, -256
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i41 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %write32.i.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i41, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %and21.i40) #7
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %44 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %antenna_rx, align 4
  %shl = shl i32 %45, 4
  %or = or i32 %shl, %45
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i43 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %read32.i.i43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i43, align 4
  %call.i.i44 = tail call i32 %49(ptr noundef %rtwdev, i32 noundef 2056) #7
  %and21.i45 = and i32 %call.i.i44, -256
  %and22.i46 = and i32 %or, 255
  %or.i47 = or i32 %and21.i45, %and22.i46
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i48 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %write32.i.i48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i48, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i47) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8822b_set_channel_cca(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, ptr nocapture noundef readonly %rfe_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp = icmp ult i8 %channel, 15
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %0 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %antenna_rx, align 4
  %2 = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %switch = icmp ult i32 %2, -2
  %spec.select133 = zext i1 %switch to i32
  br label %if.end21

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cca_ccut_5g = getelementptr inbounds %struct.rtw8822b_rfe_info, ptr %rfe_info, i32 0, i32 1
  %antenna_rx11 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %3 = ptrtoint ptr %antenna_rx11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %antenna_rx11, align 4
  %.off134 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off134)
  %switch135 = icmp ult i32 %.off134, 2
  %not.switch135 = xor i1 %switch135, true
  %spec.select137 = select i1 %switch135, i32 2, i32 3
  br label %if.end21

if.end21:                                         ; preds = %if.else10, %if.then
  %cca_ccut.0.in = phi ptr [ %rfe_info, %if.then ], [ %cca_ccut_5g, %if.else10 ]
  %cmp52 = phi i1 [ false, %if.then ], [ %not.switch135, %if.else10 ]
  %cmp38 = phi i1 [ %switch, %if.then ], [ false, %if.else10 ]
  %col.0 = phi i32 [ %spec.select133, %if.then ], [ %spec.select137, %if.else10 ]
  %5 = ptrtoint ptr %cca_ccut.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cca_ccut.0 = load ptr, ptr %cca_ccut.0.in, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %cca_ccut.0, i32 0, i32 %col.0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.cca_ccut, ptr %cca_ccut.0, i32 0, i32 1, i32 %col.0
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx7.i = getelementptr %struct.cca_ccut, ptr %cca_ccut.0, i32 0, i32 2, i32 %col.0
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  %fem = getelementptr inbounds %struct.rtw8822b_rfe_info, ptr %rfe_info, i32 0, i32 2
  %12 = ptrtoint ptr %fem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fem, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %13, label %sw.epilog.thread [
    i32 2, label %sw.epilog
    i32 1, label %if.end21.if.end68_crit_edge
  ]

if.end21.if.end68_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

sw.epilog.thread:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %ifem_ext = getelementptr inbounds %struct.rtw8822b_rfe_info, ptr %rfe_info, i32 0, i32 3
  %15 = ptrtoint ptr %ifem_ext to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ifem_ext, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br label %if.then33

sw.epilog:                                        ; preds = %if.end21
  br i1 %cmp, label %sw.epilog.if.then33_crit_edge, label %sw.epilog.if.end68_crit_edge

sw.epilog.if.end68_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

sw.epilog.if.then33_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %sw.epilog.if.then33_crit_edge, %sw.epilog.thread
  %is_rfe_type.0.off0159 = phi i1 [ %tobool.not, %sw.epilog.thread ], [ true, %sw.epilog.if.then33_crit_edge ]
  %cut_version = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %cut_version to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cut_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp35 = icmp eq i8 %18, 1
  br i1 %cmp35, label %land.lhs.true, label %if.then33.lor.lhs.false48_crit_edge

if.then33.lor.lhs.false48_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false48

land.lhs.true:                                    ; preds = %if.then33
  %brmerge = or i1 %cmp52, %cmp38
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bw)
  %cmp46 = icmp eq i8 %bw, 1
  %or.cond = and i1 %cmp46, %brmerge
  br i1 %or.cond, label %land.lhs.true.if.then66_crit_edge, label %land.lhs.true.lor.lhs.false48_crit_edge

land.lhs.true.lor.lhs.false48_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false48

land.lhs.true.if.then66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

lor.lhs.false48:                                  ; preds = %land.lhs.true.lor.lhs.false48_crit_edge, %if.then33.lor.lhs.false48_crit_edge
  %brmerge126.not = and i1 %cmp52, %is_rfe_type.0.off0159
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bw)
  %cmp56 = icmp eq i8 %bw, 1
  %or.cond127 = and i1 %cmp56, %brmerge126.not
  br i1 %or.cond127, label %lor.lhs.false48.if.then66_crit_edge, label %lor.lhs.false58

lor.lhs.false48.if.then66_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

lor.lhs.false58:                                  ; preds = %lor.lhs.false48
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %19 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rfe_option, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp60 = icmp eq i8 %20, 5
  %21 = and i1 %cmp52, %cmp60
  br i1 %21, label %lor.lhs.false58.if.then66_crit_edge, label %lor.lhs.false58.if.end68_crit_edge

lor.lhs.false58.if.end68_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

lor.lhs.false58.if.then66_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

if.then66:                                        ; preds = %lor.lhs.false58.if.then66_crit_edge, %lor.lhs.false48.if.then66_crit_edge, %land.lhs.true.if.then66_crit_edge
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %lor.lhs.false58.if.end68_crit_edge, %sw.epilog.if.end68_crit_edge, %if.end21.if.end68_crit_edge
  %is_efem_cca.0.off0157 = phi i1 [ false, %if.then66 ], [ false, %lor.lhs.false58.if.end68_crit_edge ], [ true, %sw.epilog.if.end68_crit_edge ], [ true, %if.end21.if.end68_crit_edge ]
  %reg830.0 = phi i32 [ 2040588840, %if.then66 ], [ %9, %lor.lhs.false58.if.end68_crit_edge ], [ %9, %sw.epilog.if.end68_crit_edge ], [ %9, %if.end21.if.end68_crit_edge ]
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 2092) #7
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 2092, i32 noundef %7) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i139 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %read32.i.i139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i139, align 4
  %call.i.i140 = tail call i32 %33(ptr noundef %rtwdev, i32 noundef 2096) #7
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i141 = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %write32.i.i141 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i141, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 2096, i32 noundef %reg830.0) #7
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i143 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %read32.i.i143 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i143, align 4
  %call.i.i144 = tail call i32 %41(ptr noundef %rtwdev, i32 noundef 2104) #7
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i145 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %write32.i.i145 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i145, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 2104, i32 noundef %11) #7
  br i1 %is_efem_cca.0.off0157, label %land.lhs.true71, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

land.lhs.true71:                                  ; preds = %if.end68
  %cut_version72 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %cut_version72 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cut_version72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp74 = icmp eq i8 %47, 1
  br i1 %cmp74, label %land.lhs.true71.if.end77_crit_edge, label %if.then76

land.lhs.true71.if.end77_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then76:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i147 = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %read32.i.i147 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i147, align 4
  %call.i.i148 = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 2108) #7
  %52 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i149 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %write32.i.i149 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i149, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 2108, i32 noundef -1852525895) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %land.lhs.true71.if.end77_crit_edge, %if.end68.if.end77_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw)
  %cmp79 = icmp eq i8 %bw, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end77.if.end98_crit_edge

if.end77.if.end98_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

land.lhs.true81:                                  ; preds = %if.end77
  %56 = add i8 %channel, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %56)
  %57 = icmp ult i8 %56, 13
  %58 = add i8 %channel, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %58)
  %59 = icmp ult i8 %58, 45
  %or.cond166 = or i1 %57, %59
  br i1 %or.cond166, label %if.then97, label %land.lhs.true81.if.end98_crit_edge

land.lhs.true81.if.end98_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then97:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i151 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %read32.i.i151 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i151, align 4
  %call.i.i152 = tail call i32 %63(ptr noundef %rtwdev, i32 noundef 2104) #7
  %and21.i = and i32 %call.i.i152, -241
  %or.i = or i32 %and21.i, 64
  %64 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i153 = getelementptr inbounds %struct.rtw_hci_ops, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %write32.i.i153 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i153, align 4
  tail call void %67(ptr noundef %rtwdev, i32 noundef 2104, i32 noundef %or.i) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %land.lhs.true81.if.end98_crit_edge, %if.end77.if.end98_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_set_channel_rfe_efem(ptr noundef %rtwdev, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp = icmp ult i8 %channel, 15
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 3248) #7
  %and21.i.i = and i32 %call.i.i.i, -16777216
  %. = select i1 %cmp, i32 7362416, i32 1537303
  %.213 = select i1 %cmp, i32 22272, i32 29952
  %.214 = select i1 %cmp, i32 -17, i32 -33
  %or.i.i112 = or i32 %and21.i.i, %.
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i113 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i113, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 3248, i32 noundef %or.i.i112) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i114 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i9.i114 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i9.i114, align 4
  %call.i.i10.i115 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 3760) #7
  %and21.i12.i116 = and i32 %call.i.i10.i115, -16777216
  %or.i15.i117 = or i32 %and21.i12.i116, %.
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i118 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i16.i118 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i16.i118, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 3760, i32 noundef %or.i15.i117) #7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i120 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i120, align 4
  %call.i.i.i121 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 3252) #7
  %and21.i.i122 = and i32 %call.i.i.i121, -65281
  %or.i.i123 = or i32 %and21.i.i122, %.213
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i124, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 3252, i32 noundef %or.i.i123) #7
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i125 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i9.i125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i9.i125, align 4
  %call.i.i10.i126 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 3764) #7
  %and21.i12.i127 = and i32 %call.i.i10.i126, -65281
  %or.i15.i128 = or i32 %and21.i12.i127, %.213
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i129 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i16.i129 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i16.i129, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 3764, i32 noundef %or.i15.i128) #7
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i131 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i131, align 4
  %call.i.i.i132 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 3256) #7
  %and21.i.i133 = and i32 %call.i.i.i132, %.214
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i134 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i134, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 3256, i32 noundef %and21.i.i133) #7
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i135 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %read32.i.i9.i135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i9.i135, align 4
  %call.i.i10.i136 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 3768) #7
  %and21.i12.i137 = and i32 %call.i.i10.i136, %.214
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i138 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %write32.i.i16.i138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i16.i138, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 3768, i32 noundef %and21.i12.i137) #7
  %hci.i.i.i139 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %48 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i.i.i139, align 8
  %read32.i.i.i140 = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %read32.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32.i.i.i140, align 4
  %call.i.i.i141 = tail call i32 %51(ptr noundef %rtwdev, i32 noundef 3260) #7
  %and21.i.i142 = and i32 %call.i.i.i141, -3136
  %52 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i.i139, align 8
  %write32.i.i.i143 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %write32.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i.i143, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 3260, i32 noundef %and21.i.i142) #7
  %56 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i.i139, align 8
  %read32.i.i9.i144 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %read32.i.i9.i144 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i9.i144, align 4
  %call.i.i10.i145 = tail call i32 %59(ptr noundef %rtwdev, i32 noundef 3772) #7
  %and21.i12.i146 = and i32 %call.i.i10.i145, -3136
  %60 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i.i139, align 8
  %write32.i.i16.i147 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %write32.i.i16.i147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.i16.i147, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 3772, i32 noundef %and21.i12.i146) #7
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %64 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %antenna_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp42 = icmp eq i32 %65, 3
  br i1 %cmp42, label %entry.do.end50_crit_edge, label %lor.lhs.false

entry.do.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

lor.lhs.false:                                    ; preds = %entry
  %antenna_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 16
  %66 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %antenna_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp44 = icmp eq i32 %67, 3
  br i1 %cmp44, label %lor.lhs.false.do.end50_crit_edge, label %if.else53

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false.do.end50_crit_edge, %entry.do.end50_crit_edge
  %68 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i.i139, align 8
  %read32.i.i.i149 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %read32.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i.i.i149, align 4
  %call.i.i.i150 = tail call i32 %71(ptr noundef %rtwdev, i32 noundef 3232) #7
  %and21.i.i151 = and i32 %call.i.i.i150, -65536
  %or.i.i152 = or i32 %and21.i.i151, 42241
  br label %if.end73

if.else53:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp56 = icmp eq i32 %65, %67
  %72 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i.i139, align 8
  %read32.i.i.i160 = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %read32.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32.i.i.i160, align 4
  %call.i.i.i161 = tail call i32 %75(ptr noundef %rtwdev, i32 noundef 3232) #7
  %and21.i.i162 = and i32 %call.i.i.i161, -65536
  br i1 %cmp56, label %do.end62, label %do.end69

do.end62:                                         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i163 = or i32 %and21.i.i162, 42240
  br label %if.end73

do.end69:                                         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i174 = or i32 %and21.i.i162, 40965
  br label %if.end73

if.end73:                                         ; preds = %do.end69, %do.end62, %do.end50
  %or.i.i163.sink = phi i32 [ %or.i.i163, %do.end62 ], [ %or.i.i174, %do.end69 ], [ %or.i.i152, %do.end50 ]
  %.sink208 = phi i32 [ 42240, %do.end62 ], [ 40965, %do.end69 ], [ 42241, %do.end50 ]
  %76 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hci.i.i.i139, align 8
  %write32.i.i.i164 = getelementptr inbounds %struct.rtw_hci_ops, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %write32.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i.i.i164, align 4
  tail call void %79(ptr noundef %rtwdev, i32 noundef 3232, i32 noundef %or.i.i163.sink) #7
  %80 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i139, align 8
  %read32.i.i9.i165 = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %read32.i.i9.i165 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read32.i.i9.i165, align 4
  %call.i.i10.i166 = tail call i32 %83(ptr noundef %rtwdev, i32 noundef 3744) #7
  %and21.i12.i167 = and i32 %call.i.i10.i166, -65536
  %or.i15.i168 = or i32 %and21.i12.i167, %.sink208
  %84 = ptrtoint ptr %hci.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hci.i.i.i139, align 8
  %write32.i.i16.i169 = getelementptr inbounds %struct.rtw_hci_ops, ptr %85, i32 0, i32 16
  %86 = ptrtoint ptr %write32.i.i16.i169 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write32.i.i16.i169, align 4
  tail call void %87(ptr noundef %rtwdev, i32 noundef 3744, i32 noundef %or.i15.i168) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8822b_set_channel_rfe_ifem(ptr noundef %rtwdev, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp = icmp ult i8 %channel, 15
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 3248) #7
  %and21.i.i = and i32 %call.i.i.i, -16777216
  br i1 %cmp, label %do.end, label %do.end15

do.end:                                           ; preds = %entry
  %or.i.i = or i32 %and21.i.i, 7624564
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 3248, i32 noundef %or.i.i) #7
  %8 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i9.i, align 4
  %call.i.i10.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 3760) #7
  %and21.i12.i = and i32 %call.i.i10.i, -16777216
  %or.i15.i = or i32 %and21.i12.i, 7624564
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i16.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 3760, i32 noundef %or.i15.i) #7
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i89 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i89, align 4
  %call.i.i.i90 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 3252) #7
  %and21.i.i91 = and i32 %call.i.i.i90, -65281
  %or.i.i92 = or i32 %and21.i.i91, 22272
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i93 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i93, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 3252, i32 noundef %or.i.i92) #7
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i94 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i9.i94 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i9.i94, align 4
  %call.i.i10.i95 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 3764) #7
  %and21.i12.i96 = and i32 %call.i.i10.i95, -65281
  %or.i15.i97 = or i32 %and21.i12.i96, 22272
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i98 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i16.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i16.i98, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 3764, i32 noundef %or.i15.i97) #7
  %32 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i100 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i100, align 4
  %call.i.i.i101 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 3260) #7
  %and21.i.i102 = and i32 %call.i.i.i101, -3136
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i103 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.i.i103, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 3260, i32 noundef %and21.i.i102) #7
  %40 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %read32.i.i9.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i9.i104, align 4
  %call.i.i10.i105 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 3772) #7
  %and21.i12.i106 = and i32 %call.i.i10.i105, -3136
  %44 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i107 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %write32.i.i16.i107 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i16.i107, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 3772, i32 noundef %and21.i12.i106) #7
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %48 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %antenna_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp34 = icmp eq i32 %49, 3
  br i1 %cmp34, label %do.end.do.end42_crit_edge, label %lor.lhs.false

do.end.do.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i112 = or i32 %and21.i.i, 4683079
  %50 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i113 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %write32.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i.i113, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 3248, i32 noundef %or.i.i112) #7
  %54 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i114 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %read32.i.i9.i114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i9.i114, align 4
  %call.i.i10.i115 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 3760) #7
  %and21.i12.i116 = and i32 %call.i.i10.i115, -16777216
  %or.i15.i117 = or i32 %and21.i12.i116, 4683079
  %58 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i118 = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %write32.i.i16.i118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i16.i118, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 3760, i32 noundef %or.i15.i117) #7
  %62 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i120 = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %read32.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i.i120, align 4
  %call.i.i.i121 = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 3252) #7
  %and21.i.i122 = and i32 %call.i.i.i121, -65281
  %or.i.i123 = or i32 %and21.i.i122, 29952
  %66 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %write32.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i.i.i124, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 3252, i32 noundef %or.i.i123) #7
  %70 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i125 = getelementptr inbounds %struct.rtw_hci_ops, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %read32.i.i9.i125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i.i9.i125, align 4
  %call.i.i10.i126 = tail call i32 %73(ptr noundef %rtwdev, i32 noundef 3764) #7
  %and21.i12.i127 = and i32 %call.i.i10.i126, -65281
  %or.i15.i128 = or i32 %and21.i12.i127, 29952
  %74 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i129 = getelementptr inbounds %struct.rtw_hci_ops, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %write32.i.i16.i129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32.i.i16.i129, align 4
  tail call void %77(ptr noundef %rtwdev, i32 noundef 3764, i32 noundef %or.i15.i128) #7
  %78 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i131 = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %read32.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i.i131, align 4
  %call.i.i.i132 = tail call i32 %81(ptr noundef %rtwdev, i32 noundef 3260) #7
  %and21.i.i133 = and i32 %call.i.i.i132, -3136
  %82 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i134 = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %write32.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i.i134, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 3260, i32 noundef %and21.i.i133) #7
  %86 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i135 = getelementptr inbounds %struct.rtw_hci_ops, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %read32.i.i9.i135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i9.i135, align 4
  %call.i.i10.i136 = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 3772) #7
  %and21.i12.i137 = and i32 %call.i.i10.i136, -3136
  %90 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i138 = getelementptr inbounds %struct.rtw_hci_ops, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %write32.i.i16.i138 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i16.i138, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 3772, i32 noundef %and21.i12.i137) #7
  %94 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i140 = getelementptr inbounds %struct.rtw_hci_ops, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %read32.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i.i140, align 4
  %call.i.i.i141 = tail call i32 %97(ptr noundef %rtwdev, i32 noundef 3232) #7
  %and21.i.i142 = and i32 %call.i.i.i141, -65536
  %or.i.i143 = or i32 %and21.i.i142, 42405
  br label %if.end73

lor.lhs.false:                                    ; preds = %do.end
  %antenna_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 16
  %98 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %antenna_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %99)
  %cmp36 = icmp eq i32 %99, 3
  br i1 %cmp36, label %lor.lhs.false.do.end42_crit_edge, label %if.else45

lor.lhs.false.do.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false.do.end42_crit_edge, %do.end.do.end42_crit_edge
  %100 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i151 = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %read32.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i.i.i151, align 4
  %call.i.i.i152 = tail call i32 %103(ptr noundef %rtwdev, i32 noundef 3232) #7
  %and21.i.i153 = and i32 %call.i.i.i152, -65536
  %or.i.i154 = or i32 %and21.i.i153, 42241
  br label %if.end73

if.else45:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %99)
  %cmp48 = icmp eq i32 %49, %99
  %104 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i162 = getelementptr inbounds %struct.rtw_hci_ops, ptr %105, i32 0, i32 13
  %106 = ptrtoint ptr %read32.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read32.i.i.i162, align 4
  %call.i.i.i163 = tail call i32 %107(ptr noundef %rtwdev, i32 noundef 3232) #7
  %and21.i.i164 = and i32 %call.i.i.i163, -65536
  br i1 %cmp48, label %do.end54, label %do.end61

do.end54:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i165 = or i32 %and21.i.i164, 42240
  br label %if.end73

do.end61:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i176 = or i32 %and21.i.i164, 40965
  br label %if.end73

if.end73:                                         ; preds = %do.end61, %do.end54, %do.end42, %do.end15
  %or.i.i154.sink = phi i32 [ %or.i.i154, %do.end42 ], [ %or.i.i176, %do.end61 ], [ %or.i.i165, %do.end54 ], [ %or.i.i143, %do.end15 ]
  %.sink = phi i32 [ 42241, %do.end42 ], [ 40965, %do.end61 ], [ 42240, %do.end54 ], [ 42405, %do.end15 ]
  %108 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i155 = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 16
  %110 = ptrtoint ptr %write32.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write32.i.i.i155, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef 3232, i32 noundef %or.i.i154.sink) #7
  %112 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i9.i156 = getelementptr inbounds %struct.rtw_hci_ops, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %read32.i.i9.i156 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read32.i.i9.i156, align 4
  %call.i.i10.i157 = tail call i32 %115(ptr noundef %rtwdev, i32 noundef 3744) #7
  %and21.i12.i158 = and i32 %call.i.i10.i157, -65536
  %or.i15.i159 = or i32 %and21.i12.i158, %.sink
  %116 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i16.i160 = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 16
  %118 = ptrtoint ptr %write32.i.i16.i160 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write32.i.i16.i160, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef 3744, i32 noundef %or.i15.i159) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_channel_mac(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_rx_fill_rx_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8822b_do_iqk(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %para = alloca %struct.rtw_iqk_para, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %para) #7
  %0 = ptrtoint ptr %para to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %para, align 2
  call void @rtw_fw_do_iqk(ptr noundef %rtwdev, ptr noundef nonnull %para) #7
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %counter.022 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_rf.i, align 4
  %call5.i = call i32 %6(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 8, i32 noundef 1048575) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 703710, i32 %call5.i)
  %cmp1 = icmp eq i32 %call5.i, 703710
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @msleep(i32 noundef 20) #7
  %inc = add nuw nsw i32 %counter.022, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %counter.0.lcssa = phi i32 [ %counter.022, %for.body.for.end_crit_edge ], [ 300, %if.end.for.end_crit_edge ]
  %call2.i15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %7 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_rf.i, align 4
  %call5.i17 = call zeroext i1 %12(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 8, i32 noundef 1048575, i32 noundef 0) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i15) #7
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %13 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %16(ptr noundef %rtwdev, i32 noundef 7152) #7
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i19 = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %read32.i.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i19, align 4
  %call.i.i20 = call i32 %20(ptr noundef %rtwdev, i32 noundef 7152) #7
  %and.i21 = and i32 %call.i.i20, 255
  %21 = lshr i32 %call.i.i, 16
  %.lobit = and i32 %21, 1
  %22 = load i32, ptr @rtw8822b_do_iqk.do_iqk_cnt, align 4
  %inc6 = add i32 %22, 1
  store i32 %inc6, ptr @rtw8822b_do_iqk.do_iqk_cnt, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %counter.0.lcssa, i32 noundef %.lobit, i32 noundef %inc6, i32 noundef %and.i21) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %para) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_do_iqk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_config_swing_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_pwrtrack_avg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_pwrtrack_thermal_changed(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_pwrtrack_need_iqk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_pwrtrack_get_delta(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @rtw_phy_pwrtrack_get_pwridx(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_set_edcca_th(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_write_scbd(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_write_indirect_reg(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2503, i32 13}
!2 = !{ptr @rtw8822b_hw_spec, !3, !"rtw8822b_hw_spec", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2500, i32 22}
!4 = !{ptr @__ksymtab_rtw8822b_hw_spec, !5, !"__ksymtab_rtw8822b_hw_spec", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2584, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware458, !7, !"__UNIQUE_ID_firmware458", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2586, i32 1}
!8 = !{ptr @__UNIQUE_ID_author459, !9, !"__UNIQUE_ID_author459", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2588, i32 1}
!10 = !{ptr @__UNIQUE_ID_description460, !11, !"__UNIQUE_ID_description460", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2589, i32 1}
!12 = !{ptr @__UNIQUE_ID_file461, !13, !"__UNIQUE_ID_file461", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2590, i32 1}
!14 = !{ptr @__UNIQUE_ID_license462, !13, !"__UNIQUE_ID_license462", i1 false, i1 false}
!15 = !{ptr @rtw8822b_ops, !16, !"rtw8822b_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2147, i32 28}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw88/hci.h", i32 236, i32 2}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 728, i32 6}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 805, i32 6}
!25 = !{ptr @rtw8822b_rfe_info, !26, !"rtw8822b_rfe_info", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 396, i32 39}
!27 = !{ptr @cca_ifem_ccut, !28, !"cca_ifem_ccut", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 347, i32 30}
!29 = !{ptr @cca_efem_ccut, !30, !"cca_efem_ccut", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 353, i32 30}
!31 = !{ptr @cca_ifem_ccut_ext, !32, !"cca_ifem_ccut_ext", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 359, i32 30}
!33 = !{ptr @rtw8822b_txscale_tbl, !34, !"rtw8822b_txscale_tbl", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 84, i32 18}
!35 = !{ptr @low_band, !36, !"low_band", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 471, i32 17}
!37 = !{ptr @middle_band, !38, !"middle_band", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 473, i32 17}
!39 = !{ptr @high_band, !40, !"high_band", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 476, i32 17}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 913, i32 3}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @query_phy_status._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @query_phy_status._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rtw8822b_set_tx_power_index_by_rate.offset_txagc, !49, !"offset_txagc", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 963, i32 19}
!50 = !{ptr @rtw8822b_set_tx_power_index_by_rate.phy_pwr_idx, !51, !"phy_pwr_idx", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 964, i32 13}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1011, i32 2}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1015, i32 3}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rtw8822b_set_antenna._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtw8822b_set_antenna._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1020, i32 3}
!62 = !{ptr @rtw8822b_set_antenna._entry.14, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtw8822b_set_antenna._entry_ptr.16, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @rtw8822b_do_iqk.do_iqk_cnt, !65, !"do_iqk_cnt", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1091, i32 13}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1109, i32 2}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1405, i32 3}
!70 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rtw8822b_txagc_swing_offset._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtw8822b_txagc_swing_offset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1555, i32 3}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rtw8822b_bf_config_bfee._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rtw8822b_bf_config_bfee._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"reg_addr", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1292, i32 19}
!80 = !{ptr @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power, !81, !"wl_tx_power", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1293, i32 18}
!82 = !{ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, !83, !"wl_rx_low_gain_on", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1315, i32 19}
!84 = !{ptr @rtw8822b_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, !85, !"wl_rx_low_gain_off", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1328, i32 19}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1347, i32 3}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1357, i32 3}
!90 = !{ptr @card_enable_flow_8822b, !91, !"card_enable_flow_8822b", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1953, i32 38}
!92 = !{ptr @trans_carddis_to_cardemu_8822b, !93, !"trans_carddis_to_cardemu_8822b", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1591, i32 37}
!94 = !{ptr @trans_cardemu_to_act_8822b, !95, !"trans_cardemu_to_act_8822b", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1629, i32 37}
!96 = !{ptr @card_disable_flow_8822b, !97, !"card_disable_flow_8822b", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1959, i32 38}
!98 = !{ptr @trans_act_to_cardemu_8822b, !99, !"trans_act_to_cardemu_8822b", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1762, i32 37}
!100 = !{ptr @trans_cardemu_to_carddis_8822b, !101, !"trans_cardemu_to_carddis_8822b", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1835, i32 37}
!102 = !{ptr @rqpn_table_8822b, !103, !"rqpn_table_8822b", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2113, i32 30}
!104 = !{ptr @prioq_addrs_8822b, !105, !"prioq_addrs_8822b", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2131, i32 31}
!106 = !{ptr @page_table_8822b, !107, !"page_table_8822b", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2105, i32 36}
!108 = !{ptr @phy_para_table_8822b, !109, !"phy_para_table_8822b", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2077, i32 45}
!110 = !{ptr @usb2_param_8822b, !111, !"usb2_param_8822b", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1965, i32 39}
!112 = !{ptr @usb3_param_8822b, !113, !"usb3_param_8822b", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1972, i32 39}
!114 = !{ptr @pcie_gen1_param_8822b, !115, !"pcie_gen1_param_8822b", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 1983, i32 39}
!116 = !{ptr @pcie_gen2_param_8822b, !117, !"pcie_gen2_param_8822b", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2030, i32 39}
!118 = !{ptr @rtw8822b_dig, !119, !"rtw8822b_dig", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2094, i32 32}
!120 = !{ptr @rtw8822b_ltecoex_addr, !121, !"rtw8822b_ltecoex_addr", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2099, i32 38}
!122 = !{ptr @rtw8822b_rfe_defs, !123, !"rtw8822b_rfe_defs", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2088, i32 33}
!124 = !{ptr @rtw8822b_rtw_pwr_track_tbl, !125, !"rtw8822b_rtw_pwr_track_tbl", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2445, i32 39}
!126 = !{ptr @rtw8822b_pwrtrk_5gb_n, !127, !"rtw8822b_pwrtrk_5gb_n", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2346, i32 1}
!128 = !{ptr @rtw8822b_pwrtrk_5gb_p, !129, !"rtw8822b_pwrtrk_5gb_p", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2359, i32 1}
!130 = !{ptr @rtw8822b_pwrtrk_5ga_n, !131, !"rtw8822b_pwrtrk_5ga_n", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2372, i32 1}
!132 = !{ptr @rtw8822b_pwrtrk_5ga_p, !133, !"rtw8822b_pwrtrk_5ga_p", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2385, i32 1}
!134 = !{ptr @rtw8822b_pwrtrk_2gb_n, !135, !"rtw8822b_pwrtrk_2gb_n", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2397, i32 17}
!136 = !{ptr @rtw8822b_pwrtrk_2gb_p, !137, !"rtw8822b_pwrtrk_2gb_p", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2403, i32 17}
!138 = !{ptr @rtw8822b_pwrtrk_2ga_n, !139, !"rtw8822b_pwrtrk_2ga_n", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2409, i32 17}
!140 = !{ptr @rtw8822b_pwrtrk_2ga_p, !141, !"rtw8822b_pwrtrk_2ga_p", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2415, i32 17}
!142 = !{ptr @rtw8822b_pwrtrk_2g_cck_b_n, !143, !"rtw8822b_pwrtrk_2g_cck_b_n", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2421, i32 17}
!144 = !{ptr @rtw8822b_pwrtrk_2g_cck_b_p, !145, !"rtw8822b_pwrtrk_2g_cck_b_p", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2427, i32 17}
!146 = !{ptr @rtw8822b_pwrtrk_2g_cck_a_n, !147, !"rtw8822b_pwrtrk_2g_cck_a_n", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2433, i32 17}
!148 = !{ptr @rtw8822b_pwrtrk_2g_cck_a_p, !149, !"rtw8822b_pwrtrk_2g_cck_a_p", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2439, i32 17}
!150 = !{ptr @rtw8822b_edcca_th, !151, !"rtw8822b_edcca_th", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2495, i32 33}
!152 = !{ptr @bt_rssi_step_8822b, !153, !"bt_rssi_step_8822b", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2301, i32 17}
!154 = !{ptr @wl_rssi_step_8822b, !155, !"wl_rssi_step_8822b", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2300, i32 17}
!156 = !{ptr @table_nsant_8822b, !157, !"table_nsant_8822b", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2214, i32 37}
!158 = !{ptr @table_sant_8822b, !159, !"table_sant_8822b", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2177, i32 37}
!160 = !{ptr @tdma_sant_8822b, !161, !"tdma_sant_8822b", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2242, i32 36}
!162 = !{ptr @tdma_nsant_8822b, !163, !"tdma_nsant_8822b", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2274, i32 36}
!164 = !{ptr @rf_para_tx_8822b, !165, !"rf_para_tx_8822b", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2304, i32 34}
!166 = !{ptr @rf_para_rx_8822b, !167, !"rf_para_rx_8822b", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2313, i32 34}
!168 = !{ptr @afh_5g_8822b, !169, !"afh_5g_8822b", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2322, i32 37}
!170 = !{ptr @coex_info_hw_regs_8822b, !171, !"coex_info_hw_regs_8822b", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8822b.c", i32 2468, i32 36}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{!"branch_weights", i32 1, i32 2000}
!182 = !{i8 0, i8 2}
