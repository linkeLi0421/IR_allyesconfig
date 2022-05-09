; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/rtw8723d.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/rtw8723d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw8723d_hw_spec\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw8723d_hw_spec\09\09\09\09"
module asm "\09.long\09__crc_rtw8723d_hw_spec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw8723d_hw_spec:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw8723d_hw_spec\22\09\09\09\09\09"
module asm "__kstrtabns_rtw8723d_hw_spec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_rqpn = type { i32, i32, i32, i32, i32, i32 }
%struct.rtw_prioq_addrs = type { [4 x %struct.rtw_prioq_addr], i8 }
%struct.rtw_prioq_addr = type { i32, i32 }
%struct.rtw_page_table = type { i16, i16, i16, i16, i16 }
%struct.rtw_intf_phy_para_table = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.rtw_hw_reg = type { i32, i32 }
%struct.rtw_rf_sipi_addr = type { i32, i32, i32, i32 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtw_8723d_iqk_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtw8723d_efuse = type { i16, [2 x i8], i8, [11 x i8], [4 x %struct.rtw_txpwr_idx], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [3 x i8], %struct.rtw8723de_efuse }
%struct.rtw8723de_efuse = type { [6 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8] }
%struct.rtw_rx_pkt_stat = type { i8, i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], [4 x i8], i16, i8, ptr, ptr, ptr }
%struct.iqk_backup_regs = type { [16 x i32], [3 x i8], [1 x i32], [9 x i32], i32, i32, i32, i8, i8, i8 }
%struct.rtw_swing_table = type { [4 x ptr], [4 x ptr] }

@rtw8723d_ops = internal global { %struct.rtw_chip_ops, [56 x i8] } { %struct.rtw_chip_ops { ptr @rtw8723d_mac_init, ptr null, ptr @rtw8723d_shutdown, ptr @rtw8723d_read_efuse, ptr @rtw8723d_phy_set_param, ptr @rtw8723d_set_channel, ptr @rtw8723d_query_rx_desc, ptr @rtw_phy_read_rf_sipi, ptr @rtw_phy_write_rf_reg_sipi, ptr @rtw8723d_set_tx_power_index, ptr null, ptr null, ptr @rtw8723d_cfg_ldo25, ptr @rtw8723d_efuse_grant, ptr @rtw8723d_false_alarm_statistics, ptr @rtw8723d_phy_calibration, ptr null, ptr @rtw8723d_phy_cck_pd_set, ptr @rtw8723d_pwr_track, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw8723d_coex_cfg_init, ptr null, ptr @rtw8723d_coex_cfg_gnt_fix, ptr @rtw8723d_coex_cfg_gnt_debug, ptr @rtw8723d_coex_cfg_rfe_type, ptr @rtw8723d_coex_cfg_wl_tx_power, ptr @rtw8723d_coex_cfg_wl_rx_gain }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw88/rtw8723d_fw.bin\00", [42 x i8] zeroinitializer }, align 32
@card_enable_flow_8723d = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @trans_carddis_to_cardemu_8723d, ptr @trans_cardemu_to_act_8723d, ptr null], [20 x i8] zeroinitializer }, align 32
@card_disable_flow_8723d = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @trans_act_to_lps_8723d, ptr @trans_act_to_pre_carddis_8723d, ptr @trans_act_to_cardemu_8723d, ptr @trans_cardemu_to_carddis_8723d, ptr @trans_act_to_post_carddis_8723d, ptr null], [40 x i8] zeroinitializer }, align 32
@rqpn_table_8723d = internal constant { [5 x %struct.rtw_rqpn], [40 x i8] } { [5 x %struct.rtw_rqpn] [%struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 2, i32 3, i32 3, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 3, i32 3 }, %struct.rtw_rqpn { i32 2, i32 2, i32 1, i32 1, i32 0, i32 3 }], [40 x i8] zeroinitializer }, align 32
@prioq_addrs_8723d = internal constant { %struct.rtw_prioq_addrs, [60 x i8] } { %struct.rtw_prioq_addrs { [4 x %struct.rtw_prioq_addr] [%struct.rtw_prioq_addr { i32 534, i32 535 }, %struct.rtw_prioq_addr { i32 513, i32 517 }, %struct.rtw_prioq_addr { i32 532, i32 533 }, %struct.rtw_prioq_addr { i32 512, i32 516 }], i8 0 }, [60 x i8] zeroinitializer }, align 32
@page_table_8723d = internal constant { [5 x %struct.rtw_page_table], [46 x i8] } { [5 x %struct.rtw_page_table] [%struct.rtw_page_table { i16 12, i16 2, i16 2, i16 0, i16 1 }, %struct.rtw_page_table { i16 12, i16 2, i16 2, i16 0, i16 1 }, %struct.rtw_page_table { i16 12, i16 2, i16 2, i16 0, i16 1 }, %struct.rtw_page_table { i16 12, i16 2, i16 2, i16 0, i16 1 }, %struct.rtw_page_table { i16 12, i16 2, i16 2, i16 0, i16 1 }], [46 x i8] zeroinitializer }, align 32
@phy_para_table_8723d = internal constant { %struct.rtw_intf_phy_para_table, [44 x i8] } { %struct.rtw_intf_phy_para_table { ptr null, ptr null, ptr @pcie_gen1_param_8723d, ptr null, i8 0, i8 0, i8 3, i8 0 }, [44 x i8] zeroinitializer }, align 32
@rtw8723d_dig = internal constant { [2 x %struct.rtw_hw_reg], [16 x i8] } { [2 x %struct.rtw_hw_reg] [%struct.rtw_hw_reg { i32 3152, i32 127 }, %struct.rtw_hw_reg { i32 3152, i32 127 }], [16 x i8] zeroinitializer }, align 32
@rtw8723d_dig_cck = internal constant { [1 x %struct.rtw_hw_reg], [24 x i8] } { [1 x %struct.rtw_hw_reg] [%struct.rtw_hw_reg { i32 2572, i32 16128 }], [24 x i8] zeroinitializer }, align 32
@rtw8723d_rf_sipi_addr = internal constant { [2 x %struct.rtw_rf_sipi_addr], [32 x i8] } { [2 x %struct.rtw_rf_sipi_addr] [%struct.rtw_rf_sipi_addr { i32 2080, i32 2084, i32 2208, i32 2232 }, %struct.rtw_rf_sipi_addr { i32 2088, i32 2092, i32 2212, i32 2236 }], [32 x i8] zeroinitializer }, align 32
@rtw8723d_ltecoex_addr = internal constant { %struct.rtw_ltecoex_addr, [20 x i8] } { %struct.rtw_ltecoex_addr { i32 1984, i32 1988, i32 1992 }, [20 x i8] zeroinitializer }, align 32
@rtw8723d_mac_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8723d_agc_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8723d_bb_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8723d_rf_a_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8723d_rfe_defs = internal constant { [1 x %struct.rtw_rfe_def], [20 x i8] } { [1 x %struct.rtw_rfe_def] [%struct.rtw_rfe_def { ptr @rtw8723d_bb_pg_tbl, ptr @rtw8723d_txpwr_lmt_tbl, ptr null }], [20 x i8] zeroinitializer }, align 32
@rtw8723d_rtw_pwr_track_tbl = internal constant { %struct.rtw_pwr_track_tbl, [40 x i8] } { %struct.rtw_pwr_track_tbl { [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, [3 x ptr] zeroinitializer, ptr @rtw8723d_pwrtrk_2gb_n, ptr @rtw8723d_pwrtrk_2gb_p, ptr @rtw8723d_pwrtrk_2ga_n, ptr @rtw8723d_pwrtrk_2ga_p, ptr @rtw8723d_pwrtrk_2g_cck_b_n, ptr @rtw8723d_pwrtrk_2g_cck_b_p, ptr @rtw8723d_pwrtrk_2g_cck_a_n, ptr @rtw8723d_pwrtrk_2g_cck_a_p, ptr @rtw8723d_pwrtrk_xtal_n, ptr @rtw8723d_pwrtrk_xtal_p }, [40 x i8] zeroinitializer }, align 32
@bt_rssi_step_8723d = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\1E\1E\1E\1E", [28 x i8] zeroinitializer }, align 32
@wl_rssi_step_8723d = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<2,\1E", [28 x i8] zeroinitializer }, align 32
@table_nsant_8723d = internal constant { [24 x %struct.coex_table_para], [32 x i8] } { [24 x %struct.coex_table_para] [%struct.coex_table_para { i32 -1, i32 -1 }, %struct.coex_table_para { i32 1431655765, i32 1431655765 }, %struct.coex_table_para { i32 1716868437, i32 1716868437 }, %struct.coex_table_para { i32 -1431655766, i32 -1431655766 }, %struct.coex_table_para { i32 1515870810, i32 1515870810 }, %struct.coex_table_para { i32 -84215046, i32 -84215046 }, %struct.coex_table_para { i32 1526356730, i32 1526356730 }, %struct.coex_table_para { i32 1431655765, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 -84215046 }, %struct.coex_table_para { i32 1716868437, i32 1515870810 }, %struct.coex_table_para { i32 1716868437, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 1526356730 }, %struct.coex_table_para { i32 -43521, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -43521 }, %struct.coex_table_para { i32 -1426063446, i32 1526356730 }, %struct.coex_table_para { i32 -1426063446, i32 -1431655766 }, %struct.coex_table_para { i32 -1, i32 -84215046 }, %struct.coex_table_para { i32 -1, i32 1526356730 }, %struct.coex_table_para { i32 -1, i32 -1431655766 }, %struct.coex_table_para { i32 1442797055, i32 1526356730 }, %struct.coex_table_para { i32 1442797055, i32 -1431655766 }, %struct.coex_table_para { i32 1442797055, i32 1442797055 }], [32 x i8] zeroinitializer }, align 32
@table_sant_8723d = internal constant { [33 x %struct.coex_table_para], [88 x i8] } { [33 x %struct.coex_table_para] [%struct.coex_table_para { i32 -1, i32 -1 }, %struct.coex_table_para { i32 1431655765, i32 1431655765 }, %struct.coex_table_para { i32 1716868437, i32 1716868437 }, %struct.coex_table_para { i32 -1431655766, i32 -1431655766 }, %struct.coex_table_para { i32 1515870810, i32 1515870810 }, %struct.coex_table_para { i32 -84215046, i32 -84215046 }, %struct.coex_table_para { i32 1784304981, i32 -1431655766 }, %struct.coex_table_para { i32 1784305322, i32 1784305322 }, %struct.coex_table_para { i32 1784306266, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 1515870810 }, %struct.coex_table_para { i32 1716868437, i32 1784306266 }, %struct.coex_table_para { i32 1716868437, i32 1784306346 }, %struct.coex_table_para { i32 1716868437, i32 1515870890 }, %struct.coex_table_para { i32 1716868437, i32 1789549226 }, %struct.coex_table_para { i32 1716868437, i32 -1431676246 }, %struct.coex_table_para { i32 1716868437, i32 -1431655766 }, %struct.coex_table_para { i32 -43521, i32 -84215046 }, %struct.coex_table_para { i32 -43521, i32 1794792186 }, %struct.coex_table_para { i32 -1426063446, i32 -84215046 }, %struct.coex_table_para { i32 -1437248086, i32 1515870810 }, %struct.coex_table_para { i32 -1437248086, i32 1784306266 }, %struct.coex_table_para { i32 -1437248086, i32 -1431655766 }, %struct.coex_table_para { i32 -1, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 1515870810 }, %struct.coex_table_para { i32 -1, i32 1431655765 }, %struct.coex_table_para { i32 -1, i32 1515870890 }, %struct.coex_table_para { i32 1431655765, i32 1515870810 }, %struct.coex_table_para { i32 1431655765, i32 -1431655766 }, %struct.coex_table_para { i32 1431655765, i32 1784310362 }, %struct.coex_table_para { i32 1716872789, i32 1716872789 }, %struct.coex_table_para { i32 1716873898, i32 1784310442 }, %struct.coex_table_para { i32 -1, i32 1521113770 }, %struct.coex_table_para { i32 1448432981, i32 1515870890 }], [88 x i8] zeroinitializer }, align 32
@tdma_sant_8723d = internal constant { [28 x %struct.coex_tdma_para], [52 x i8] } { [28 x %struct.coex_tdma_para] [%struct.coex_tdma_para zeroinitializer, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\14" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\10\14" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10U" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\07\10T" }, %struct.coex_tdma_para { [5 x i8] c"QE\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q:\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q0\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q \03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"QJ\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\0C\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"U\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"e\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10Q" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\11" }], [52 x i8] zeroinitializer }, align 32
@tdma_nsant_8723d = internal constant { [22 x %struct.coex_tdma_para], [50 x i8] } { [22 x %struct.coex_tdma_para] [%struct.coex_tdma_para { [5 x i8] c"\00\00\00\00\01" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\11" }, %struct.coex_tdma_para { [5 x i8] c"aE\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a:\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a0\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a \03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\10\03\11\10" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\11\14" }, %struct.coex_tdma_para { [5 x i8] c"a\08\03\10\14" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10T" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10U" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\07\10T" }, %struct.coex_tdma_para { [5 x i8] c"QE\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q:\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q0\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q \03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\10\03\10P" }, %struct.coex_tdma_para { [5 x i8] c"Q\08\03\10P" }], [50 x i8] zeroinitializer }, align 32
@rf_para_tx_8723d = internal constant { [6 x %struct.coex_rf_para], [40 x i8] } { [6 x %struct.coex_rf_para] [%struct.coex_rf_para { i8 0, i8 0, i8 0, i8 7 }, %struct.coex_rf_para { i8 0, i8 10, i8 0, i8 7 }, %struct.coex_rf_para { i8 1, i8 0, i8 1, i8 4 }, %struct.coex_rf_para { i8 1, i8 2, i8 1, i8 4 }, %struct.coex_rf_para { i8 1, i8 10, i8 1, i8 4 }, %struct.coex_rf_para { i8 1, i8 15, i8 1, i8 4 }], [40 x i8] zeroinitializer }, align 32
@rf_para_rx_8723d = internal constant { [6 x %struct.coex_rf_para], [40 x i8] } { [6 x %struct.coex_rf_para] [%struct.coex_rf_para { i8 0, i8 0, i8 0, i8 7 }, %struct.coex_rf_para { i8 0, i8 10, i8 0, i8 7 }, %struct.coex_rf_para { i8 1, i8 0, i8 1, i8 5 }, %struct.coex_rf_para { i8 1, i8 2, i8 1, i8 5 }, %struct.coex_rf_para { i8 1, i8 10, i8 1, i8 5 }, %struct.coex_rf_para { i8 1, i8 15, i8 1, i8 5 }], [40 x i8] zeroinitializer }, align 32
@afh_5g_8723d = internal constant { [1 x %struct.coex_5g_afh_map], [24 x i8] } zeroinitializer, align 32
@btg_reg_8723d = internal constant { %struct.rtw_hw_reg, [24 x i8] } { %struct.rtw_hw_reg { i32 103, i32 128 }, [24 x i8] zeroinitializer }, align 32
@coex_info_hw_regs_8723d = internal constant { [19 x %struct.rtw_reg_domain], [60 x i8] } { [19 x %struct.rtw_reg_domain] [%struct.rtw_reg_domain { i32 2376, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 103, i32 128, i8 2 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 2404, i32 2, i8 2 }, %struct.rtw_reg_domain { i32 2148, i32 1, i8 2 }, %struct.rtw_reg_domain { i32 2743, i32 32, i8 2 }, %struct.rtw_reg_domain { i32 2561, i32 128, i8 2 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 1072, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1076, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1066, i32 65535, i8 1 }, %struct.rtw_reg_domain { i32 1062, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 1118, i32 8, i8 2 }, %struct.rtw_reg_domain { i32 0, i32 0, i8 -1 }, %struct.rtw_reg_domain { i32 1222, i32 16, i8 2 }, %struct.rtw_reg_domain { i32 64, i32 32, i8 2 }, %struct.rtw_reg_domain { i32 1360, i32 -1, i8 0 }, %struct.rtw_reg_domain { i32 1314, i32 255, i8 2 }, %struct.rtw_reg_domain { i32 2387, i32 2, i8 2 }], [60 x i8] zeroinitializer }, align 32
@rtw8723d_hw_spec = dso_local global { %struct.rtw_chip_info, [84 x i8] } { %struct.rtw_chip_info { ptr @rtw8723d_ops, i8 2, ptr @.str, i32 1, i8 40, i8 16, i8 24, i8 8, i32 512, i32 512, i32 97, i32 32768, i32 16384, i32 0, i8 1, i8 -128, i8 0, i8 0, i8 32, i8 1, i8 1, i8 0, i8 0, i8 63, [6 x i16] zeroinitializer, ptr null, i8 0, i8 0, i8 1, i8 0, i8 0, i8 -3, ptr @card_enable_flow_8723d, ptr @card_disable_flow_8723d, ptr @rqpn_table_8723d, ptr @prioq_addrs_8723d, ptr @page_table_8723d, ptr @phy_para_table_8723d, ptr @rtw8723d_dig, ptr @rtw8723d_dig_cck, [2 x i32] zeroinitializer, [2 x i32] [i32 2112, i32 2116], ptr @rtw8723d_rf_sipi_addr, i8 2, ptr @rtw8723d_ltecoex_addr, ptr @rtw8723d_mac_tbl, ptr @rtw8723d_agc_tbl, ptr @rtw8723d_bb_tbl, [4 x ptr] [ptr @rtw8723d_rf_a_tbl, ptr null, ptr null, ptr null], ptr null, ptr @rtw8723d_rfe_defs, i32 1, i8 0, i16 0, i8 8, i8 0, ptr @rtw8723d_rtw_pwr_track_tbl, i8 0, i8 0, ptr null, i8 0, i8 0, ptr null, ptr null, i8 0, [3 x i32] zeroinitializer, i32 537330223, i8 47, i8 1, i8 1, i8 0, i8 0, i8 0, i8 15, i8 2, i8 33, i8 24, i8 28, i8 22, i8 32, i8 48, i8 1, i8 6, i8 19, ptr @bt_rssi_step_8723d, ptr @wl_rssi_step_8723d, ptr @table_nsant_8723d, ptr @table_sant_8723d, ptr @tdma_sant_8723d, ptr @tdma_nsant_8723d, ptr @rf_para_tx_8723d, ptr @rf_para_rx_8723d, ptr @afh_5g_8723d, ptr @btg_reg_8723d, ptr @coex_info_hw_regs_8723d, i32 0 }, [84 x i8] zeroinitializer }, align 32
@__kstrtab_rtw8723d_hw_spec = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw8723d_hw_spec = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw8723d_hw_spec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw8723d_hw_spec to i32), ptr @__kstrtab_rtw8723d_hw_spec, ptr @__kstrtabns_rtw8723d_hw_spec }, section "___ksymtab+rtw8723d_hw_spec", align 4
@__UNIQUE_ID_firmware457 = internal constant [43 x i8] c"rtw88_8723d.firmware=rtw88/rtw8723d_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_author458 = internal constant [39 x i8] c"rtw88_8723d.author=Realtek Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description459 = internal constant [62 x i8] c"rtw88_8723d.description=Realtek 802.11n wireless 8723d driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [64 x i8] c"rtw88_8723d.file=drivers/net/wireless/realtek/rtw88/rtw88_8723d\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [33 x i8] c"rtw88_8723d.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw88/hci.h\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"should be 4-byte aligned, addr = 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/realtek/rtw88/rtw8723d.c\00", [50 x i8] zeroinitializer }, align 32
@rtw8723d_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 87, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to poll LCK status bit\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw8723d_lck\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw8723d_lck._entry_ptr = internal global ptr @rtw8723d_lck._entry, section ".printk_index", align 4
@query_phy_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unused phy status page (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"query_phy_status\00", [47 x i8] zeroinitializer }, align 32
@query_phy_status._entry_ptr = internal global ptr @query_phy_status._entry, section ".printk_index", align 4
@rtw_rate_size = external dso_local local_unnamed_addr global [0 x i8], align 1
@rtw_rate_section = external dso_local local_unnamed_addr global [0 x ptr], align 4
@rtw8723d_set_tx_power_index_by_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rate 0x%x isn't supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtw8723d_set_tx_power_index_by_rate\00", [60 x i8] zeroinitializer }, align 32
@rtw8723d_set_tx_power_index_by_rate._entry_ptr = internal global ptr @rtw8723d_set_tx_power_index_by_rate._entry, section ".printk_index", align 4
@rtw8723d_txagc = internal constant { [20 x %struct.rtw_hw_reg], [32 x i8] } { [20 x %struct.rtw_hw_reg] [%struct.rtw_hw_reg { i32 3592, i32 65280 }, %struct.rtw_hw_reg { i32 2156, i32 65280 }, %struct.rtw_hw_reg { i32 2156, i32 16711680 }, %struct.rtw_hw_reg { i32 2156, i32 -16777216 }, %struct.rtw_hw_reg { i32 3584, i32 255 }, %struct.rtw_hw_reg { i32 3584, i32 65280 }, %struct.rtw_hw_reg { i32 3584, i32 16711680 }, %struct.rtw_hw_reg { i32 3584, i32 -16777216 }, %struct.rtw_hw_reg { i32 3588, i32 255 }, %struct.rtw_hw_reg { i32 3588, i32 65280 }, %struct.rtw_hw_reg { i32 3588, i32 16711680 }, %struct.rtw_hw_reg { i32 3588, i32 -16777216 }, %struct.rtw_hw_reg { i32 3600, i32 255 }, %struct.rtw_hw_reg { i32 3600, i32 65280 }, %struct.rtw_hw_reg { i32 3600, i32 16711680 }, %struct.rtw_hw_reg { i32 3600, i32 -16777216 }, %struct.rtw_hw_reg { i32 3604, i32 255 }, %struct.rtw_hw_reg { i32 3604, i32 65280 }, %struct.rtw_hw_reg { i32 3604, i32 16711680 }, %struct.rtw_hw_reg { i32 3604, i32 -16777216 }], [32 x i8] zeroinitializer }, align 32
@rtw8723d_set_tx_power_index_by_rate._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 591, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rate 0x%x isn't defined\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw8723d_set_tx_power_index_by_rate._entry_ptr.14 = internal global ptr @rtw8723d_set_tx_power_index_by_rate._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[IQK] Start!!!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[IQK] cmp %d:%d final_candidate is %x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IQK is failed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] final_candidate is %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"[IQK] Result %u: rege94_s1=%x rege9c_s1=%x regea4_s1=%x regeac_s1=%x rege94_s0=%x rege9c_s0=%x regea4_s0=%x regeac_s0=%x %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(final candidate)\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[IQK]0xc80 = 0x%x 0xc94 = 0x%x 0xc14 = 0x%x 0xca0 = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[IQK]0xcd0 = 0x%x 0xcd4 = 0x%x 0xcd8 = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[IQK] finished\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[IQK] original 0x67 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[IQK] OriginalGNT = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@iqk_adda_regs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[IQK] set 0x67 = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[IQK] IQ Calibration for 1T1R_S0/S1 for %d times\0A\00", [46 x i8] zeroinitializer }, align 32
@iqk_tx_cfg = internal constant { [2 x %struct.rtw_8723d_iqk_cfg], [48 x i8] } { [2 x %struct.rtw_8723d_iqk_cfg] [%struct.rtw_8723d_iqk_cfg { ptr @.str.41, i32 -1728053248, i32 239, i32 -2112618081, i32 223, i32 86, i32 84, i32 3597, i32 1549, i32 -100663296 }, %struct.rtw_8723d_iqk_cfg { ptr @.str.42, i32 -1728052608, i32 238, i32 -2112618102, i32 222, i32 102, i32 100, i32 3693, i32 1645, i32 -117440512 }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IQK] path S1 Tx IQK Success!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path S1 Tx IQK Fail!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IQK] path S1 Rx IQK Success!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path S1 Rx IQK Fail!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[IQK] path S1 IQK is failed!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IQK] path S0 Tx IQK Success!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path S0 Tx IQK Fail!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IQK] path S0 Rx IQK Success!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path S0 Rx IQK Fail!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[IQK] path S0 IQK is failed!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[IQK] back to BB mode, load original value!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path-%s standby mode!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S1\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S0\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[IQK] path %s TXIQK!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] 0x67 @%s TXIQK = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[IQK] RF0x1 @%s TXIQK = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[IQK] RF0x2 @%s TXIQK = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IQK] GNT_BT @%s %sIQK1 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[IQK] 0x948 @%s %sIQK1 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw8723d_iqk_one_shot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 939, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s IQK isn't done\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw8723d_iqk_one_shot\00", [42 x i8] zeroinitializer }, align 32
@rtw8723d_iqk_one_shot._entry_ptr = internal global ptr @rtw8723d_iqk_one_shot._entry, section ".printk_index", align 4
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[IQK] 0xeac = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[IQK] 0xe94 = 0x%x, 0xe9c = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[IQK] 0xe90(before IQK)= 0x%x, 0xe98(afer IQK) = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[IQK] %s TXIQK is failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path %s RXIQK Step1!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[IQK] 0x67 @%s RXIQK1 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[IQK] RF0x1@ path %s RXIQK1 = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[IQK] RF0x2@ path %s RXIQK1 = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[IQK] 0xe40 = 0x%x u4tmp = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[IQK] path %s RXIQK STEP2!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[IQK] 0x67 @%s RXIQK2 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[IQK] RF0x1 @%s RXIQK2 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[IQK] RF0x2 @%s RXIQK2 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[IQK] 0xea4 = 0x%x, 0xeac = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[IQK] 0xea0(before IQK)= 0x%x, 0xea8(afer IQK) = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IQK] %s RXIQK STEP2 is failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[IQK] restore 0x67 = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[IQK] X = 0x%x, TX1_A = 0x%x, oldval_1 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[IQK] Y = 0x%x, TX1_C = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@__const.rtw8723d_phy_cck_pd_set.pd = private unnamed_addr constant [5 x i8] c"\03\07\0D\0D\0D", align 1
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lv: (%d) -> (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"is_linked=%d, lv=%d, n_rx=%d, cs_ratio=0x%x, pd_th=0x%x, cck_fa_avg=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrack_get_limit_ofdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1682, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pwrtrack unhandled tx_rate 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtw8723d_pwrtrack_get_limit_ofdm\00", [63 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrack_get_limit_ofdm._entry_ptr = internal global ptr @rtw8723d_pwrtrack_get_limit_ofdm._entry, section ".printk_index", align 4
@rtw8723d_ofdm_swing_table = internal constant { [43 x i32], [52 x i8] } { [43 x i32] [i32 188743725, i32 201326640, i32 213909555, i32 226492470, i32 239075385, i32 251658300, i32 268435520, i32 285212740, i32 301989960, i32 318767180, i32 339738705, i32 360710230, i32 381681755, i32 402653280, i32 427819110, i32 452984940, i32 478150770, i32 507510905, i32 536871040, i32 570425480, i32 603979920, i32 637534360, i32 679477410, i32 717226155, i32 759169205, i32 805306560, i32 851443915, i32 901775575, i32 956301540, i32 1015021810, i32 1073742080, i32 1136656655, i32 1203765535, i32 1275068720, i32 1350566210, i32 1430258005, i32 1514144105, i32 1606418815, i32 1698693525, i32 1803551150, i32 1908408775, i32 2021655010, i32 2139095550], [52 x i8] zeroinitializer }, align 32
@rtw8723d_cck_swing_table = internal constant { [41 x i32], [60 x i8] } { [41 x i32] [i32 205, i32 217, i32 230, i32 243, i32 258, i32 273, i32 289, i32 306, i32 324, i32 344, i32 364, i32 386, i32 408, i32 433, i32 458, i32 485, i32 514, i32 545, i32 577, i32 611, i32 647, i32 686, i32 726, i32 769, i32 815, i32 863, i32 914, i32 969, i32 1026, i32 1087, i32 1151, i32 1219, i32 1292, i32 1368, i32 1449, i32 1535, i32 1626, i32 1722, i32 1824, i32 1932, i32 2047], [60 x i8] zeroinitializer }, align 32
@rtw8723d_coex_cfg_wl_tx_power.wl_tx_power = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B2\90", [30 x i8] zeroinitializer }, align 32
@rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_on = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 -334364415, i32 -351076095, i32 -837549823, i32 -854261503, i32 -870973183, i32 -887684863, i32 -904396543, i32 -1927741183, i32 -1944452863, i32 -1961164543, i32 1327235329, i32 1310523649, i32 1293811969, i32 1277100289, i32 236978433, i32 220266753, i32 203555073, i32 186843393, i32 -819724287, i32 -836435967, i32 -853147647, i32 -869859327, i32 -1893203967], [36 x i8] zeroinitializer }, align 32
@rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_off = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 -334364415, i32 -351076095, i32 -367787775, i32 -384499455, i32 -401211135, i32 -417922815, i32 -434634495, i32 -451346175, i32 -468057855, i32 -484769535, i32 -501481215, i32 -518192895, i32 -534904575, i32 -2044788479, i32 -2061500159, i32 -2078211839, i32 -2094923519, i32 -2111635199, i32 -2128346879, i32 -2145058559, i32 1143341313, i32 1126629633, i32 1109917953], [36 x i8] zeroinitializer }, align 32
@trans_carddis_to_cardemu_8723d = internal constant { [8 x %struct.rtw_pwr_seq_cmd], [32 x i8] } { [8 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 -120, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 49, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 50, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 74, i8 -1, i8 2, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 24, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 35, i8 -1, i8 1, i8 1, i8 16, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 769, i8 -1, i8 4, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@trans_cardemu_to_act_8723d = internal constant { [26 x %struct.rtw_pwr_seq_cmd], [48 x i8] } { [26 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 3, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 1, i8 -1, i8 3, i8 3, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 0, i8 -1, i8 3, i8 1, i8 32, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 28, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 117, i8 -1, i8 4, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 2, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 117, i8 -1, i8 4, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 3, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 -128, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 24, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 16, i8 -1, i8 15, i8 1, i8 64, i8 64 }, %struct.rtw_pwr_seq_cmd { i16 73, i8 -1, i8 15, i8 1, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 99, i8 -1, i8 15, i8 1, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 98, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 88, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 90, i8 -1, i8 15, i8 1, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 104, i8 1, i8 15, i8 1, i8 8, i8 8 }, %struct.rtw_pwr_seq_cmd { i16 105, i8 -1, i8 15, i8 1, i8 64, i8 64 }, %struct.rtw_pwr_seq_cmd { i16 31, i8 -1, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 119, i8 -1, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 31, i8 -1, i8 15, i8 1, i8 -1, i8 7 }, %struct.rtw_pwr_seq_cmd { i16 119, i8 -1, i8 15, i8 1, i8 -1, i8 7 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@trans_act_to_lps_8723d = internal constant { [14 x %struct.rtw_pwr_seq_cmd], [48 x i8] } { [14 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 769, i8 -1, i8 4, i8 1, i8 -1, i8 -1 }, %struct.rtw_pwr_seq_cmd { i16 1314, i8 -1, i8 15, i8 1, i8 -1, i8 -1 }, %struct.rtw_pwr_seq_cmd { i16 1528, i8 -1, i8 15, i8 2, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 1529, i8 -1, i8 15, i8 2, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 1530, i8 -1, i8 15, i8 2, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 1531, i8 -1, i8 15, i8 2, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 2, i8 -1, i8 15, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 2, i8 -1, i8 15, i8 3, i8 0, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 2, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 256, i8 -1, i8 15, i8 1, i8 -1, i8 3 }, %struct.rtw_pwr_seq_cmd { i16 257, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 147, i8 -1, i8 1, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 1363, i8 -1, i8 15, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@trans_act_to_pre_carddis_8723d = internal constant { [3 x %struct.rtw_pwr_seq_cmd], [40 x i8] } { [3 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 3, i8 -1, i8 15, i8 1, i8 4, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 128, i8 -1, i8 15, i8 1, i8 -1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@trans_act_to_cardemu_8723d = internal constant { [9 x %struct.rtw_pwr_seq_cmd], [56 x i8] } { [9 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 2, i8 -1, i8 15, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 73, i8 -1, i8 15, i8 1, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 6, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 1, i8 2, i8 2 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 15, i8 2, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 16, i8 -1, i8 15, i8 1, i8 64, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 0, i8 -1, i8 3, i8 1, i8 32, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 32, i8 -1, i8 3, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@trans_cardemu_to_carddis_8723d = internal constant { [9 x %struct.rtw_pwr_seq_cmd], [56 x i8] } { [9 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 7, i8 -1, i8 1, i8 1, i8 -1, i8 32 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 3, i8 1, i8 24, i8 8 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 4, i8 1, i8 4, i8 4 }, %struct.rtw_pwr_seq_cmd { i16 5, i8 -1, i8 4, i8 1, i8 24, i8 24 }, %struct.rtw_pwr_seq_cmd { i16 74, i8 -1, i8 2, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 35, i8 -1, i8 1, i8 1, i8 16, i8 16 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 49, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 134, i8 -1, i8 1, i8 50, i8 2, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@trans_act_to_post_carddis_8723d = internal constant { [4 x %struct.rtw_pwr_seq_cmd], [32 x i8] } { [4 x %struct.rtw_pwr_seq_cmd] [%struct.rtw_pwr_seq_cmd { i16 29, i8 -1, i8 15, i8 1, i8 1, i8 0 }, %struct.rtw_pwr_seq_cmd { i16 29, i8 -1, i8 15, i8 1, i8 1, i8 1 }, %struct.rtw_pwr_seq_cmd { i16 28, i8 -1, i8 15, i8 1, i8 -1, i8 14 }, %struct.rtw_pwr_seq_cmd { i16 -1, i8 -1, i8 15, i8 4, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@pcie_gen1_param_8723d = internal constant { [3 x %struct.rtw_intf_phy_para], [34 x i8] } { [3 x %struct.rtw_intf_phy_para] [%struct.rtw_intf_phy_para { i16 8, i16 18978, i16 0, i16 -1, i16 0 }, %struct.rtw_intf_phy_para { i16 9, i16 4096, i16 0, i16 -4, i16 0 }, %struct.rtw_intf_phy_para { i16 -1, i16 0, i16 0, i16 -1, i16 0 }], [34 x i8] zeroinitializer }, align 32
@rtw8723d_bb_pg_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8723d_txpwr_lmt_tbl = external dso_local constant %struct.rtw_table, align 4
@rtw8723d_pwrtrk_2gb_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\01\02\02\03\04\04\04\04\05\05\05\06\06\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0A", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2gb_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\02\03\03\04\04\05\05\06\07\07\08\08\08\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2ga_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\01\02\02\03\04\04\04\04\05\05\05\06\06\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0A", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2ga_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\02\03\03\04\04\05\05\06\07\07\08\08\08\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2g_cck_b_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\01\02\02\03\03\04\04\05\05\06\06\06\07\07\07\08\08\09\09\0A\0A\0B\0B\0B\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2g_cck_b_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2g_cck_a_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\01\02\02\03\03\04\04\05\05\06\06\06\07\07\07\08\08\09\09\0A\0A\0B\0B\0B\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_2g_cck_a_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtw8723d_pwrtrk_xtal_n = internal constant { [30 x i8], [34 x i8] } zeroinitializer, align 32
@rtw8723d_pwrtrk_xtal_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F6\F4\F2\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0", [34 x i8] zeroinitializer }, align 32
@switch.table.rtw8723d_pwr_track = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\1E\1E\1E\1E$$$$$$$\22&&&$$\22\22\22", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 14]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 14]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"rtw8723d_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1948, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2707, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"card_enable_flow_8723d\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2305, i32 38 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"card_disable_flow_8723d\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2521, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"rqpn_table_8723d\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2538, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"prioq_addrs_8723d\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2556, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"page_table_8723d\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2530, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"phy_para_table_8723d\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2587, i32 45 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"rtw8723d_dig\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2592, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"rtw8723d_dig_cck\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2597, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"rtw8723d_rf_sipi_addr\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2601, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"rtw8723d_ltecoex_addr\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2608, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"rtw8723d_rfe_defs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2614, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"rtw8723d_rtw_pwr_track_tbl\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2669, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"bt_rssi_step_8723d\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2103, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"wl_rssi_step_8723d\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2102, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"table_nsant_8723d\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2016, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"table_sant_8723d\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1979, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"tdma_sant_8723d\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2044, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"tdma_nsant_8723d\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2076, i32 36 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"rf_para_tx_8723d\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2111, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"rf_para_rx_8723d\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2120, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"afh_5g_8723d\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2104, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"btg_reg_8723d\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2106, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"coex_info_hw_regs_8723d\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2682, i32 36 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"rtw8723d_hw_spec\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2704, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant [44 x i8] c"../drivers/net/wireless/realtek/rtw88/hci.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 236, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 83, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 87, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 319, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 586, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [15 x i8] c"rtw8723d_txagc\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 18, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 591, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1417, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1441, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1458, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1476, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1480, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1487, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1493, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1499, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 771, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 797, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"iqk_adda_regs\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 686, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 778, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1313, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [11 x i8] c"iqk_tx_cfg\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 829, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1327, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1336, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1344, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1353, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1359, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1366, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1375, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1383, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1393, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1399, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1404, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1221, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 963, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 964, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1001, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1004, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 926, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 929, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 938, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 862, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 864, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 867, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 879, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1023, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1025, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1060, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1063, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1078, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1082, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1084, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1108, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1111, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 891, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 895, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 909, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 786, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1154, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1157, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1508, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1516, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1682, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [26 x i8] c"rtw8723d_ofdm_swing_table\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 96, i32 18 }
@___asan_gen_.407 = private unnamed_addr constant [25 x i8] c"rtw8723d_cck_swing_table\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 107, i32 18 }
@___asan_gen_.410 = private unnamed_addr constant [12 x i8] c"wl_tx_power\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1604, i32 18 }
@___asan_gen_.413 = private unnamed_addr constant [18 x i8] c"wl_rx_low_gain_on\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1625, i32 19 }
@___asan_gen_.416 = private unnamed_addr constant [19 x i8] c"wl_rx_low_gain_off\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1633, i32 19 }
@___asan_gen_.419 = private unnamed_addr constant [31 x i8] c"trans_carddis_to_cardemu_8723d\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2129, i32 37 }
@___asan_gen_.422 = private unnamed_addr constant [27 x i8] c"trans_cardemu_to_act_8723d\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2172, i32 37 }
@___asan_gen_.425 = private unnamed_addr constant [23 x i8] c"trans_act_to_lps_8723d\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2311, i32 37 }
@___asan_gen_.428 = private unnamed_addr constant [31 x i8] c"trans_act_to_pre_carddis_8723d\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2384, i32 37 }
@___asan_gen_.431 = private unnamed_addr constant [27 x i8] c"trans_act_to_cardemu_8723d\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2402, i32 37 }
@___asan_gen_.434 = private unnamed_addr constant [31 x i8] c"trans_cardemu_to_carddis_8723d\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2450, i32 37 }
@___asan_gen_.437 = private unnamed_addr constant [32 x i8] c"trans_act_to_post_carddis_8723d\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2498, i32 37 }
@___asan_gen_.440 = private unnamed_addr constant [22 x i8] c"pcie_gen1_param_8723d\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2572, i32 39 }
@___asan_gen_.443 = private unnamed_addr constant [22 x i8] c"rtw8723d_pwrtrk_2gb_n\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2619, i32 17 }
@___asan_gen_.446 = private unnamed_addr constant [22 x i8] c"rtw8723d_pwrtrk_2gb_p\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2624, i32 17 }
@___asan_gen_.449 = private unnamed_addr constant [22 x i8] c"rtw8723d_pwrtrk_2ga_n\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2629, i32 17 }
@___asan_gen_.452 = private unnamed_addr constant [22 x i8] c"rtw8723d_pwrtrk_2ga_p\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2634, i32 17 }
@___asan_gen_.455 = private unnamed_addr constant [27 x i8] c"rtw8723d_pwrtrk_2g_cck_b_n\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2639, i32 17 }
@___asan_gen_.458 = private unnamed_addr constant [27 x i8] c"rtw8723d_pwrtrk_2g_cck_b_p\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2644, i32 17 }
@___asan_gen_.461 = private unnamed_addr constant [27 x i8] c"rtw8723d_pwrtrk_2g_cck_a_n\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2649, i32 17 }
@___asan_gen_.464 = private unnamed_addr constant [27 x i8] c"rtw8723d_pwrtrk_2g_cck_a_p\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2654, i32 17 }
@___asan_gen_.467 = private unnamed_addr constant [23 x i8] c"rtw8723d_pwrtrk_xtal_n\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2659, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant [23 x i8] c"rtw8723d_pwrtrk_xtal_p\00", align 1
@___asan_gen_.471 = private constant [49 x i8] c"../drivers/net/wireless/realtek/rtw88/rtw8723d.c\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 2664, i32 17 }
@___asan_gen_.473 = private unnamed_addr constant [32 x i8] c"switch.table.rtw8723d_pwr_track\00", align 1
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author458, ptr @__UNIQUE_ID_description459, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_firmware457, ptr @__UNIQUE_ID_license461, ptr @__ksymtab_rtw8723d_hw_spec, ptr @query_phy_status._entry, ptr @query_phy_status._entry_ptr, ptr @rtw8723d_iqk_one_shot._entry, ptr @rtw8723d_iqk_one_shot._entry_ptr, ptr @rtw8723d_lck._entry, ptr @rtw8723d_lck._entry_ptr, ptr @rtw8723d_pwrtrack_get_limit_ofdm._entry, ptr @rtw8723d_pwrtrack_get_limit_ofdm._entry_ptr, ptr @rtw8723d_set_tx_power_index_by_rate._entry, ptr @rtw8723d_set_tx_power_index_by_rate._entry.12, ptr @rtw8723d_set_tx_power_index_by_rate._entry_ptr, ptr @rtw8723d_set_tx_power_index_by_rate._entry_ptr.14, ptr @rtw8723d_ops, ptr @.str, ptr @card_enable_flow_8723d, ptr @card_disable_flow_8723d, ptr @rqpn_table_8723d, ptr @prioq_addrs_8723d, ptr @page_table_8723d, ptr @phy_para_table_8723d, ptr @rtw8723d_dig, ptr @rtw8723d_dig_cck, ptr @rtw8723d_rf_sipi_addr, ptr @rtw8723d_ltecoex_addr, ptr @rtw8723d_rfe_defs, ptr @rtw8723d_rtw_pwr_track_tbl, ptr @bt_rssi_step_8723d, ptr @wl_rssi_step_8723d, ptr @table_nsant_8723d, ptr @table_sant_8723d, ptr @tdma_sant_8723d, ptr @tdma_nsant_8723d, ptr @rf_para_tx_8723d, ptr @rf_para_rx_8723d, ptr @afh_5g_8723d, ptr @btg_reg_8723d, ptr @coex_info_hw_regs_8723d, ptr @rtw8723d_hw_spec, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rtw8723d_txagc, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @iqk_adda_regs, ptr @.str.27, ptr @.str.28, ptr @iqk_tx_cfg, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @rtw8723d_ofdm_swing_table, ptr @rtw8723d_cck_swing_table, ptr @rtw8723d_coex_cfg_wl_tx_power.wl_tx_power, ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, ptr @trans_carddis_to_cardemu_8723d, ptr @trans_cardemu_to_act_8723d, ptr @trans_act_to_lps_8723d, ptr @trans_act_to_pre_carddis_8723d, ptr @trans_act_to_cardemu_8723d, ptr @trans_cardemu_to_carddis_8723d, ptr @trans_act_to_post_carddis_8723d, ptr @pcie_gen1_param_8723d, ptr @rtw8723d_pwrtrk_2gb_n, ptr @rtw8723d_pwrtrk_2gb_p, ptr @rtw8723d_pwrtrk_2ga_n, ptr @rtw8723d_pwrtrk_2ga_p, ptr @rtw8723d_pwrtrk_2g_cck_b_n, ptr @rtw8723d_pwrtrk_2g_cck_b_p, ptr @rtw8723d_pwrtrk_2g_cck_a_n, ptr @rtw8723d_pwrtrk_2g_cck_a_p, ptr @rtw8723d_pwrtrk_xtal_n, ptr @rtw8723d_pwrtrk_xtal_p, ptr @switch.table.rtw8723d_pwr_track], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_ops to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_enable_flow_8723d to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_disable_flow_8723d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rqpn_table_8723d to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prioq_addrs_8723d to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_table_8723d to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_para_table_8723d to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_dig to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_dig_cck to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_rf_sipi_addr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_ltecoex_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_rfe_defs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_rtw_pwr_track_tbl to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_rssi_step_8723d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl_rssi_step_8723d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_nsant_8723d to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_sant_8723d to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdma_sant_8723d to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdma_nsant_8723d to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_para_tx_8723d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_para_rx_8723d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afh_5g_8723d to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btg_reg_8723d to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coex_info_hw_regs_8723d to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_hw_spec to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @query_phy_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_set_tx_power_index_by_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_txagc to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_set_tx_power_index_by_rate._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqk_adda_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqk_tx_cfg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_iqk_one_shot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrack_get_limit_ofdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_ofdm_swing_table to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_cck_swing_table to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_coex_cfg_wl_tx_power.wl_tx_power to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_on to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_off to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_carddis_to_cardemu_8723d to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_cardemu_to_act_8723d to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_act_to_lps_8723d to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_act_to_pre_carddis_8723d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_act_to_cardemu_8723d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_cardemu_to_carddis_8723d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_act_to_post_carddis_8723d to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_gen1_param_8723d to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2gb_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2gb_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2ga_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2ga_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2g_cck_b_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2g_cck_b_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2g_cck_a_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_2g_cck_a_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_xtal_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw8723d_pwrtrk_xtal_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw8723d_pwr_track to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8723d_mac_init(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 1057, i8 noundef zeroext 31) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 1540, i32 noundef 12800) #7
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 1696, i16 noundef zeroext -1) #7
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %write16.i13 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %write16.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i13, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1698, i16 noundef zeroext 1024) #7
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write16.i15 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %write16.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i15, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 1700, i16 noundef zeroext -1) #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %write32.i17 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i17, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef 1879072974) #7
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %write32.i19 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %write32.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i19, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 772, i32 noundef 0) #7
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %write32.i21 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i21, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 448, i32 noundef 0) #7
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %write8.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i23, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 1399, i8 noundef zeroext 3) #7
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %write8.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %write8.i25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8.i25, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 2422, i8 noundef zeroext 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_shutdown(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %3(ptr noundef %rtwdev, i32 noundef 116) #7
  %or5.i = or i16 %call.i.i, 256
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 116, i16 noundef zeroext %or5.i) #7
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw8723d_read_efuse(ptr nocapture noundef %rtwdev, ptr nocapture noundef readonly %log_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %rfe_option to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rfe_option, align 2
  %rf_board_option = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 12
  %1 = ptrtoint ptr %rf_board_option to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rf_board_option, align 1
  %rf_board_option2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 7
  %3 = ptrtoint ptr %rf_board_option2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %rf_board_option2, align 1
  %xtal_k = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 6
  %4 = ptrtoint ptr %xtal_k to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xtal_k, align 1
  %crystal_cap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %6 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %crystal_cap, align 1
  %pa_type = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 9
  %7 = ptrtoint ptr %pa_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pa_type, align 2
  %pa_type_2g = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 23
  %9 = ptrtoint ptr %pa_type_2g to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pa_type_2g, align 4
  %lna_type_2g = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 10
  %10 = ptrtoint ptr %lna_type_2g to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lna_type_2g, align 1
  %lna_type_2g3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 17
  %12 = ptrtoint ptr %lna_type_2g3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %lna_type_2g3, align 2
  %channel_plan = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 5
  %13 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %channel_plan, align 2
  %channel_plan4 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 5
  %15 = ptrtoint ptr %channel_plan4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %channel_plan4, align 2
  %country_code = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 22
  %16 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %country_code, align 1
  %country_code6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %country_code6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %country_code6, align 1
  %arrayidx9 = getelementptr %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 22, i32 1
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx11, align 1
  %rf_bt_setting = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 14
  %22 = ptrtoint ptr %rf_bt_setting to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rf_bt_setting, align 1
  %bt_setting = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 33
  %24 = ptrtoint ptr %bt_setting to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %bt_setting, align 2
  %25 = load i8, ptr %rf_board_option, align 1
  %26 = and i8 %25, 7
  %regd = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 15
  %27 = ptrtoint ptr %regd to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %regd, align 4
  %thermal_meter = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 7
  %28 = ptrtoint ptr %thermal_meter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %thermal_meter, align 2
  %thermal_meter14 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 10
  %30 = ptrtoint ptr %thermal_meter14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %thermal_meter14, align 4
  %31 = load i8, ptr %thermal_meter, align 2
  %thermal_meter_k = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 11
  %32 = ptrtoint ptr %thermal_meter_k to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %thermal_meter_k, align 4
  %afe = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 2
  %33 = ptrtoint ptr %afe to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %afe, align 2
  %afe17 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 16
  %35 = ptrtoint ptr %afe17 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %afe17, align 1
  %arrayidx19 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 0
  %arrayidx21 = getelementptr %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 4, i32 0
  %36 = call ptr @memcpy(ptr %arrayidx19, ptr %arrayidx21, i32 42)
  %arrayidx19.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 1
  %arrayidx21.1 = getelementptr %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 4, i32 1
  %37 = call ptr @memcpy(ptr %arrayidx19.1, ptr %arrayidx21.1, i32 42)
  %arrayidx19.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 2
  %arrayidx21.2 = getelementptr %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 4, i32 2
  %38 = call ptr @memcpy(ptr %arrayidx19.2, ptr %arrayidx21.2, i32 42)
  %arrayidx19.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 35, i32 3
  %arrayidx21.3 = getelementptr %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 4, i32 3
  %39 = call ptr @memcpy(ptr %arrayidx19.3, ptr %arrayidx21.3, i32 42)
  %type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cond = icmp eq i32 %41, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 4
  %e.i = getelementptr inbounds %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 24
  %42 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %e.i, align 4
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtw8723d_efuse, ptr %log_map, i32 0, i32 24, i32 0, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 4, i32 4
  %47 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr1.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_phy_set_param(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %3(ptr noundef %rtwdev, i32 noundef 2) #7
  %or5.i = or i16 %call.i.i, 8195
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 2, i16 noundef zeroext %or5.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i, align 4
  %call.i.i63 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 31) #7
  %or5.i64 = or i8 %call.i.i63, 7
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 31, i8 noundef zeroext %or5.i64) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 37, i8 noundef zeroext -128) #7
  tail call void @rtw_phy_load_tables(ptr noundef %rtwdev) #7
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i, align 4
  %call.i.i66 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 1544) #7
  %and.i = and i32 %call.i.i66, -2049
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %and.i) #7
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i68 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %read8.i.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8.i.i68, align 4
  %call.i.i69 = tail call zeroext i8 %31(ptr noundef %rtwdev, i32 noundef 1447) #7
  %or5.i70 = or i8 %call.i.i69, 1
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i71 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i.i71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i.i71, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 1447, i8 noundef zeroext %or5.i70) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i73 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %read16.i.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read16.i.i73, align 4
  %call.i.i74 = tail call zeroext i16 %39(ptr noundef %rtwdev, i32 noundef 120) #7
  %or5.i75 = or i16 %call.i.i74, -32752
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i76 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %write16.i.i76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i.i76, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 120, i16 noundef zeroext %or5.i75) #7
  %crystal_cap = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %44 = ptrtoint ptr %crystal_cap to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %crystal_cap, align 1
  %46 = and i8 %45, 63
  %conv2 = zext i8 %46 to i32
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i78 = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %read32.i.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i78, align 4
  %call.i.i79 = tail call i32 %50(ptr noundef %rtwdev, i32 noundef 44) #7
  %and21.i = and i32 %call.i.i79, -16773121
  %shl.i = mul nuw nsw i32 %conv2, 266240
  %or.i = or i32 %and21.i, %shl.i
  %51 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i80 = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %write32.i.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i.i80, align 4
  tail call void %54(ptr noundef %rtwdev, i32 noundef 44, i32 noundef %or.i) #7
  %55 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i82 = getelementptr inbounds %struct.rtw_hci_ops, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %read32.i.i82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i.i82, align 4
  %call.i.i83 = tail call i32 %58(ptr noundef %rtwdev, i32 noundef 2048) #7
  %or.i84 = or i32 %call.i.i83, 50331648
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i85 = getelementptr inbounds %struct.rtw_hci_ops, ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %write32.i.i85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i85, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 2048, i32 noundef %or.i84) #7
  %afe = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 16
  %63 = ptrtoint ptr %afe to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %afe, align 1
  %.mask = and i8 %64, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %.mask)
  %cmp = icmp eq i8 %.mask, -32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i87 = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 13
  %67 = ptrtoint ptr %read32.i.i87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32.i.i87, align 4
  %call.i.i88 = tail call i32 %68(ptr noundef %rtwdev, i32 noundef 44) #7
  %or.i89 = or i32 %call.i.i88, 268435456
  %69 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i90 = getelementptr inbounds %struct.rtw_hci_ops, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %write32.i.i90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write32.i.i90, align 4
  tail call void %72(ptr noundef %rtwdev, i32 noundef 44, i32 noundef %or.i89) #7
  %73 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i92 = getelementptr inbounds %struct.rtw_hci_ops, ptr %74, i32 0, i32 13
  %75 = ptrtoint ptr %read32.i.i92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read32.i.i92, align 4
  %call.i.i93 = tail call i32 %76(ptr noundef %rtwdev, i32 noundef 36) #7
  %and.i94 = and i32 %call.i.i93, -241
  %77 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i95 = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %write32.i.i95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write32.i.i95, align 4
  tail call void %80(ptr noundef %rtwdev, i32 noundef 36, i32 noundef %and.i94) #7
  %81 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i97 = getelementptr inbounds %struct.rtw_hci_ops, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %read32.i.i97 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.i97, align 4
  %call.i.i98 = tail call i32 %84(ptr noundef %rtwdev, i32 noundef 124) #7
  %or.i99 = or i32 %call.i.i98, 536870912
  %85 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i100 = getelementptr inbounds %struct.rtw_hci_ops, ptr %86, i32 0, i32 16
  %87 = ptrtoint ptr %write32.i.i100 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i100, align 4
  tail call void %88(ptr noundef %rtwdev, i32 noundef 124, i32 noundef %or.i99) #7
  %89 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i102 = getelementptr inbounds %struct.rtw_hci_ops, ptr %90, i32 0, i32 13
  %91 = ptrtoint ptr %read32.i.i102 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read32.i.i102, align 4
  %call.i.i103 = tail call i32 %92(ptr noundef %rtwdev, i32 noundef 124) #7
  %and.i104 = and i32 %call.i.i103, -268435457
  %93 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i105 = getelementptr inbounds %struct.rtw_hci_ops, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %write32.i.i105 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i.i105, align 4
  tail call void %96(ptr noundef %rtwdev, i32 noundef 124, i32 noundef %and.i104) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %97 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i.i, align 8
  %write8.i107 = getelementptr inbounds %struct.rtw_hci_ops, ptr %98, i32 0, i32 14
  %99 = ptrtoint ptr %write8.i107 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write8.i107, align 4
  tail call void %100(ptr noundef %rtwdev, i32 noundef 1307, i8 noundef zeroext 9) #7
  %101 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i, align 8
  %write8.i109 = getelementptr inbounds %struct.rtw_hci_ops, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %write8.i109 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write8.i109, align 4
  tail call void %104(ptr noundef %rtwdev, i32 noundef 1057, i8 noundef zeroext 31) #7
  %105 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write16.i, align 4
  tail call void %108(ptr noundef %rtwdev, i32 noundef 1066, i16 noundef zeroext 12336) #7
  %109 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %110, i32 0, i32 16
  %111 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write32.i, align 4
  tail call void %112(ptr noundef %rtwdev, i32 noundef 1228, i32 noundef 33685503) #7
  %113 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hci.i.i, align 8
  %write8.i113 = getelementptr inbounds %struct.rtw_hci_ops, ptr %114, i32 0, i32 14
  %115 = ptrtoint ptr %write8.i113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8.i113, align 4
  tail call void %116(ptr noundef %rtwdev, i32 noundef 1370, i8 noundef zeroext 2) #7
  %117 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i, align 8
  %write8.i115 = getelementptr inbounds %struct.rtw_hci_ops, ptr %118, i32 0, i32 14
  %119 = ptrtoint ptr %write8.i115 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write8.i115, align 4
  tail call void %120(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext 28) #7
  %121 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %122, i32 0, i32 13
  %123 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %124(ptr noundef %rtwdev, i32 noundef 1344) #7
  %125 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i.i, align 8
  %write8.i118 = getelementptr inbounds %struct.rtw_hci_ops, ptr %126, i32 0, i32 14
  %127 = ptrtoint ptr %write8.i118 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write8.i118, align 4
  tail call void %128(ptr noundef %rtwdev, i32 noundef 1344, i8 noundef zeroext 4) #7
  %129 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i.i, align 8
  %write8.i120 = getelementptr inbounds %struct.rtw_hci_ops, ptr %130, i32 0, i32 14
  %131 = ptrtoint ptr %write8.i120 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write8.i120, align 4
  tail call void %132(ptr noundef %rtwdev, i32 noundef 1298, i8 noundef zeroext 0) #7
  %133 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hci.i.i, align 8
  %write8.i122 = getelementptr inbounds %struct.rtw_hci_ops, ptr %134, i32 0, i32 14
  %135 = ptrtoint ptr %write8.i122 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8.i122, align 4
  tail call void %136(ptr noundef %rtwdev, i32 noundef 1306, i8 noundef zeroext 22) #7
  %137 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i, align 8
  %write16.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %138, i32 0, i32 15
  %139 = ptrtoint ptr %write16.i124 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write16.i124, align 4
  tail call void %140(ptr noundef %rtwdev, i32 noundef 1350, i16 noundef zeroext 64) #7
  %141 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hci.i.i, align 8
  %write16.i126 = getelementptr inbounds %struct.rtw_hci_ops, ptr %142, i32 0, i32 15
  %143 = ptrtoint ptr %write16.i126 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write16.i126, align 4
  tail call void %144(ptr noundef %rtwdev, i32 noundef 1594, i16 noundef zeroext 4106) #7
  %145 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hci.i.i, align 8
  %write16.i128 = getelementptr inbounds %struct.rtw_hci_ops, ptr %146, i32 0, i32 15
  %147 = ptrtoint ptr %write16.i128 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write16.i128, align 4
  tail call void %148(ptr noundef %rtwdev, i32 noundef 1300, i16 noundef zeroext 4106) #7
  %149 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i, align 8
  %write16.i130 = getelementptr inbounds %struct.rtw_hci_ops, ptr %150, i32 0, i32 15
  %151 = ptrtoint ptr %write16.i130 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write16.i130, align 4
  tail call void %152(ptr noundef %rtwdev, i32 noundef 1302, i16 noundef zeroext 4106) #7
  %153 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i, align 8
  %write8.i132 = getelementptr inbounds %struct.rtw_hci_ops, ptr %154, i32 0, i32 14
  %155 = ptrtoint ptr %write8.i132 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8.i132, align 4
  tail call void %156(ptr noundef %rtwdev, i32 noundef 1223, i8 noundef zeroext -128) #7
  %157 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i, align 8
  %write8.i134 = getelementptr inbounds %struct.rtw_hci_ops, ptr %158, i32 0, i32 14
  %159 = ptrtoint ptr %write8.i134 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write8.i134, align 4
  tail call void %160(ptr noundef %rtwdev, i32 noundef 1548, i8 noundef zeroext 23) #7
  %161 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hci.i.i, align 8
  %write8.i136 = getelementptr inbounds %struct.rtw_hci_ops, ptr %162, i32 0, i32 14
  %163 = ptrtoint ptr %write8.i136 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write8.i136, align 4
  tail call void %164(ptr noundef %rtwdev, i32 noundef 1226, i8 noundef zeroext 10) #7
  %165 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hci.i.i, align 8
  %write8.i138 = getelementptr inbounds %struct.rtw_hci_ops, ptr %166, i32 0, i32 14
  %167 = ptrtoint ptr %write8.i138 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write8.i138, align 4
  tail call void %168(ptr noundef %rtwdev, i32 noundef 1110, i8 noundef zeroext 28) #7
  %169 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hci.i.i, align 8
  %write8.i140 = getelementptr inbounds %struct.rtw_hci_ops, ptr %170, i32 0, i32 14
  %171 = ptrtoint ptr %write8.i140 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write8.i140, align 4
  tail call void %172(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext -126) #7
  %173 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hci.i.i, align 8
  %write32.i142 = getelementptr inbounds %struct.rtw_hci_ops, ptr %174, i32 0, i32 16
  %175 = ptrtoint ptr %write32.i142 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write32.i142, align 4
  tail call void %176(ptr noundef %rtwdev, i32 noundef 1944, i32 noundef -1878814717) #7
  %177 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i.i, align 8
  %write32.i144 = getelementptr inbounds %struct.rtw_hci_ops, ptr %178, i32 0, i32 16
  %179 = ptrtoint ptr %write32.i144 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write32.i144, align 4
  tail call void %180(ptr noundef %rtwdev, i32 noundef 1948, i32 noundef -2009298884) #7
  %181 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hci.i.i, align 8
  %write32.i146 = getelementptr inbounds %struct.rtw_hci_ops, ptr %182, i32 0, i32 16
  %183 = ptrtoint ptr %write32.i146 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write32.i146, align 4
  tail call void %184(ptr noundef %rtwdev, i32 noundef 1956, i32 noundef -889176048) #7
  %185 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i, align 8
  %write32.i148 = getelementptr inbounds %struct.rtw_hci_ops, ptr %186, i32 0, i32 16
  %187 = ptrtoint ptr %write32.i148 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write32.i148, align 4
  tail call void %188(ptr noundef %rtwdev, i32 noundef 1960, i32 noundef 19084325) #7
  tail call void @rtw_phy_init(ptr noundef %rtwdev) #7
  %189 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hci.i.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %190, i32 0, i32 11
  %191 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read8.i, align 4
  %call.i150 = tail call zeroext i8 %192(ptr noundef %rtwdev, i32 noundef 2730) #7
  %193 = and i8 %call.i150, 31
  %cck_pd_default = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 46
  %194 = ptrtoint ptr %cck_pd_default to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %cck_pd_default, align 8
  %195 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i152 = getelementptr inbounds %struct.rtw_hci_ops, ptr %196, i32 0, i32 12
  %197 = ptrtoint ptr %read16.i.i152 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read16.i.i152, align 4
  %call.i.i153 = tail call zeroext i16 %198(ptr noundef %rtwdev, i32 noundef 524) #7
  %or5.i154 = or i16 %call.i.i153, 512
  %199 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i155 = getelementptr inbounds %struct.rtw_hci_ops, ptr %200, i32 0, i32 15
  %201 = ptrtoint ptr %write16.i.i155 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write16.i.i155, align 4
  tail call void %202(ptr noundef %rtwdev, i32 noundef 524, i16 noundef zeroext %or5.i154) #7
  tail call fastcc void @rtw8723d_lck(ptr noundef %rtwdev)
  %203 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i157 = getelementptr inbounds %struct.rtw_hci_ops, ptr %204, i32 0, i32 13
  %205 = ptrtoint ptr %read32.i.i157 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read32.i.i157, align 4
  %call.i.i158 = tail call i32 %206(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and21.i159 = and i32 %call.i.i158, -256
  %or.i160 = or i32 %and21.i159, 80
  %207 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i161 = getelementptr inbounds %struct.rtw_hci_ops, ptr %208, i32 0, i32 16
  %209 = ptrtoint ptr %write32.i.i161 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write32.i.i161, align 4
  tail call void %210(ptr noundef %rtwdev, i32 noundef 3152, i32 noundef %or.i160) #7
  %211 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i163 = getelementptr inbounds %struct.rtw_hci_ops, ptr %212, i32 0, i32 13
  %213 = ptrtoint ptr %read32.i.i163 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %read32.i.i163, align 4
  %call.i.i164 = tail call i32 %214(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and21.i165 = and i32 %call.i.i164, -256
  %or.i166 = or i32 %and21.i165, 32
  %215 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i167 = getelementptr inbounds %struct.rtw_hci_ops, ptr %216, i32 0, i32 16
  %217 = ptrtoint ptr %write32.i.i167 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write32.i.i167, align 4
  tail call void %218(ptr noundef %rtwdev, i32 noundef 3152, i32 noundef %or.i166) #7
  %default_ofdm_index.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 33
  %219 = ptrtoint ptr %default_ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 28, ptr %default_ofdm_index.i, align 2
  %rf_path_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %220 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %rf_path_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %cmp19.not.i = icmp eq i8 %221, 0
  br i1 %cmp19.not.i, label %if.end.rtw8723d_pwrtrack_init.exit_crit_edge, label %for.body.preheader.i

if.end.rtw8723d_pwrtrack_init.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_pwrtrack_init.exit

for.body.preheader.i:                             ; preds = %if.end
  %wide.trip.count.i = zext i8 %221 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 36, i32 %indvars.iv.i
  %222 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx5.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31, i32 %indvars.iv.i
  %223 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %arrayidx5.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.rtw8723d_pwrtrack_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.rtw8723d_pwrtrack_init.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_pwrtrack_init.exit

rtw8723d_pwrtrack_init.exit:                      ; preds = %for.body.i.rtw8723d_pwrtrack_init.exit_crit_edge, %if.end.rtw8723d_pwrtrack_init.exit_crit_edge
  %pwr_trk_triggered.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 34
  %224 = ptrtoint ptr %pwr_trk_triggered.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %pwr_trk_triggered.i, align 1
  %pwr_trk_init_trigger.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %225 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %pwr_trk_init_trigger.i, align 4
  %thermal_meter_k.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 11
  %226 = ptrtoint ptr %thermal_meter_k.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %thermal_meter_k.i, align 4
  %thermal_meter_k6.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 29
  %228 = ptrtoint ptr %thermal_meter_k6.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %thermal_meter_k6.i, align 4
  %txagc_remnant_cck.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 37
  %229 = ptrtoint ptr %txagc_remnant_cck.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %txagc_remnant_cck.i, align 4
  %txagc_remnant_ofdm.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 38
  %230 = ptrtoint ptr %txagc_remnant_ofdm.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %txagc_remnant_ofdm.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_set_channel(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_chan_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %read_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_rf.i.i, align 4
  %call5.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #7
  %call2.i26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %6 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read_rf.i28.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %read_rf.i28.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_rf.i28.i, align 4
  %call5.i29.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i26.i) #7
  %and.i = and i32 %call5.i.i, -3328
  %conv.i = zext i8 %channel to i32
  %or.i = or i32 %and.i, %conv.i
  %12 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bw, label %entry.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb10.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = or i32 %or.i, 3072
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or11.i = or i32 %or.i, 1024
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %rf_cfgch_a.0.i = phi i32 [ %or.i, %entry.sw.epilog.i_crit_edge ], [ %or11.i, %sw.bb10.i ], [ %or9.i, %sw.bb.i ]
  %and2.i = and i32 %call5.i29.i, -256
  %or6.i = or i32 %and2.i, %conv.i
  %call2.i31.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %13 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %write_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_rf.i.i, align 4
  %call5.i33.i = tail call zeroext i1 %18(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %rf_cfgch_a.0.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i31.i) #7
  %call2.i35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %19 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write_rf.i37.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %write_rf.i37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_rf.i37.i, align 4
  %call5.i38.i = tail call zeroext i1 %24(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 24, i32 noundef 1048575, i32 noundef %or6.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i35.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %channel)
  %cmp.i.i = icmp ult i8 %channel, 13
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %25 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %28(ptr noundef %rtwdev, i32 noundef 3136) #7
  %or.i.i.i.i = or i32 %call.i.i.i.i.i, 520093696
  %29 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %or.i.i.i.i) #7
  %33 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i25.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %read32.i.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i25.i.i.i, align 4
  %call.i.i26.i.i.i = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 3136) #7
  %and21.i27.i.i.i = and i32 %call.i.i26.i.i.i, -513
  %37 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i28.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %write32.i.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i.i28.i.i.i, align 4
  tail call void %40(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %and21.i27.i.i.i) #7
  %41 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef 3392, i32 noundef 0) #7
  %45 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i30.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %write32.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i30.i.i.i, align 4
  tail call void %48(ptr noundef %rtwdev, i32 noundef 3396, i32 noundef 0) #7
  %49 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %write32.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i32.i.i.i, align 4
  tail call void %52(ptr noundef %rtwdev, i32 noundef 3400, i32 noundef 0) #7
  %53 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i34.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %write32.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i34.i.i.i, align 4
  tail call void %56(ptr noundef %rtwdev, i32 noundef 3404, i32 noundef 0) #7
  %57 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i36.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %read32.i.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.i36.i.i.i, align 4
  %call.i.i37.i.i.i = tail call i32 %60(ptr noundef %rtwdev, i32 noundef 3372) #7
  %and21.i38.i.i.i = and i32 %call.i.i37.i.i.i, -268435457
  br label %rtw8723d_set_channel_rf.exit

if.end.i.i:                                       ; preds = %sw.epilog.i
  %61 = zext i8 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %channel, label %if.end.i.i.if.then.i.i.i_crit_edge [
    i8 13, label %if.end.i.i.rtw8723d_check_spur_ov_thres.exit.i.i_crit_edge
    i8 14, label %if.then5.i.i.i
  ]

if.end.i.i.rtw8723d_check_spur_ov_thres.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_check_spur_ov_thres.exit.i.i

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_check_spur_ov_thres.exit.i.i

rtw8723d_check_spur_ov_thres.exit.i.i:            ; preds = %if.then5.i.i.i, %if.end.i.i.rtw8723d_check_spur_ov_thres.exit.i.i_crit_edge
  %freq.0.i.i.i = phi i32 [ 65434, %if.then5.i.i.i ], [ 64717, %if.end.i.i.rtw8723d_check_spur_ov_thres.exit.i.i_crit_edge ]
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %62 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i7.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %write32.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write32.i.i7.i.i, align 4
  tail call void %65(ptr noundef %rtwdev, i32 noundef 2188, i32 noundef -856686400) #7
  %66 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i2.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %write32.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i2.i.i.i, align 4
  tail call void %69(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %freq.0.i.i.i) #7
  %or.i.i.i = or i32 %freq.0.i.i.i, 4194304
  %70 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i4.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %write32.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i4.i.i.i, align 4
  tail call void %73(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %or.i.i.i) #7
  tail call void @msleep(i32 noundef 30) #7
  %74 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %77(ptr noundef %rtwdev, i32 noundef 2228) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call.i.i.i.i)
  %cmp8.i.i.i = icmp ugt i32 %call.i.i.i.i, 21
  %78 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i7.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 16
  %80 = ptrtoint ptr %write32.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write32.i7.i.i.i, align 4
  tail call void %81(ptr noundef %rtwdev, i32 noundef 2056, i32 noundef %freq.0.i.i.i) #7
  %82 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i9.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %write32.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i9.i.i.i, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 2188, i32 noundef -859832128) #7
  br i1 %cmp8.i.i.i, label %if.end.i.i.i, label %rtw8723d_check_spur_ov_thres.exit.i.i.if.then.i.i.i_crit_edge

rtw8723d_check_spur_ov_thres.exit.i.i.if.then.i.i.i_crit_edge: ; preds = %rtw8723d_check_spur_ov_thres.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %rtw8723d_check_spur_ov_thres.exit.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge
  %hci.i.i.i8.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %86 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %read32.i.i.i9.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %read32.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.i.i9.i.i, align 4
  %call.i.i.i10.i.i = tail call i32 %89(ptr noundef %rtwdev, i32 noundef 3136) #7
  %or.i.i11.i.i = or i32 %call.i.i.i10.i.i, 520093696
  %90 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %write32.i.i.i12.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %write32.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write32.i.i.i12.i.i, align 4
  tail call void %93(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %or.i.i11.i.i) #7
  %94 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %read32.i.i25.i13.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %read32.i.i25.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i25.i13.i.i, align 4
  %call.i.i26.i14.i.i = tail call i32 %97(ptr noundef %rtwdev, i32 noundef 3136) #7
  %and21.i27.i15.i.i = and i32 %call.i.i26.i14.i.i, -513
  %98 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %write32.i.i28.i16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %99, i32 0, i32 16
  %100 = ptrtoint ptr %write32.i.i28.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write32.i.i28.i16.i.i, align 4
  tail call void %101(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %and21.i27.i15.i.i) #7
  %102 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %write32.i.i17.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %103, i32 0, i32 16
  %104 = ptrtoint ptr %write32.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write32.i.i17.i.i, align 4
  tail call void %105(ptr noundef %rtwdev, i32 noundef 3392, i32 noundef 0) #7
  %106 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %write32.i30.i18.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %write32.i30.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write32.i30.i18.i.i, align 4
  tail call void %109(ptr noundef %rtwdev, i32 noundef 3396, i32 noundef 0) #7
  %110 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %write32.i32.i19.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %111, i32 0, i32 16
  %112 = ptrtoint ptr %write32.i32.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i32.i19.i.i, align 4
  tail call void %113(ptr noundef %rtwdev, i32 noundef 3400, i32 noundef 0) #7
  %114 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %write32.i34.i20.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %115, i32 0, i32 16
  %116 = ptrtoint ptr %write32.i34.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write32.i34.i20.i.i, align 4
  tail call void %117(ptr noundef %rtwdev, i32 noundef 3404, i32 noundef 0) #7
  %118 = ptrtoint ptr %hci.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hci.i.i.i8.i.i, align 8
  %read32.i.i36.i21.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %119, i32 0, i32 13
  %120 = ptrtoint ptr %read32.i.i36.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read32.i.i36.i21.i.i, align 4
  %call.i.i37.i22.i.i = tail call i32 %121(ptr noundef %rtwdev, i32 noundef 3372) #7
  %and21.i38.i23.i.i = and i32 %call.i.i37.i22.i.i, -268435457
  br label %rtw8723d_set_channel_rf.exit

if.end.i.i.i:                                     ; preds = %rtw8723d_check_spur_ov_thres.exit.i.i
  %122 = zext i8 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %channel, label %sw.default.i.i.i [
    i8 13, label %sw.bb.i.i.i
    i8 14, label %sw.bb1.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i41.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %read32.i.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read32.i.i41.i.i.i, align 4
  %call.i.i42.i.i.i = tail call i32 %126(ptr noundef %rtwdev, i32 noundef 3136) #7
  %and21.i43.i.i.i = and i32 %call.i.i42.i.i.i, -520093697
  %or.i44.i.i.i = or i32 %and21.i43.i.i.i, 184549376
  %127 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i45.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %128, i32 0, i32 16
  %129 = ptrtoint ptr %write32.i.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write32.i.i45.i.i.i, align 4
  tail call void %130(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %or.i44.i.i.i) #7
  %131 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i47.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 13
  %133 = ptrtoint ptr %read32.i.i47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read32.i.i47.i.i.i, align 4
  %call.i.i48.i.i.i = tail call i32 %134(ptr noundef %rtwdev, i32 noundef 3136) #7
  %or.i50.i.i.i = or i32 %call.i.i48.i.i.i, 512
  %135 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i51.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %136, i32 0, i32 16
  %137 = ptrtoint ptr %write32.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write32.i.i51.i.i.i, align 4
  tail call void %138(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %or.i50.i.i.i) #7
  %139 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i53.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %140, i32 0, i32 16
  %141 = ptrtoint ptr %write32.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i53.i.i.i, align 4
  tail call void %142(ptr noundef %rtwdev, i32 noundef 3392, i32 noundef 67108864) #7
  %143 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i55.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %144, i32 0, i32 16
  %145 = ptrtoint ptr %write32.i55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write32.i55.i.i.i, align 4
  tail call void %146(ptr noundef %rtwdev, i32 noundef 3396, i32 noundef 0) #7
  %147 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i57.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %148, i32 0, i32 16
  %149 = ptrtoint ptr %write32.i57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write32.i57.i.i.i, align 4
  tail call void %150(ptr noundef %rtwdev, i32 noundef 3400, i32 noundef 0) #7
  %151 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i59.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %152, i32 0, i32 16
  %153 = ptrtoint ptr %write32.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write32.i59.i.i.i, align 4
  tail call void %154(ptr noundef %rtwdev, i32 noundef 3404, i32 noundef 0) #7
  %155 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i61.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %156, i32 0, i32 13
  %157 = ptrtoint ptr %read32.i.i61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read32.i.i61.i.i.i, align 4
  %call.i.i62.i.i.i = tail call i32 %158(ptr noundef %rtwdev, i32 noundef 3372) #7
  %or.i64.i.i.i = or i32 %call.i.i62.i.i.i, 268435456
  br label %rtw8723d_set_channel_rf.exit

sw.bb1.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i67.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %160, i32 0, i32 13
  %161 = ptrtoint ptr %read32.i.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read32.i.i67.i.i.i, align 4
  %call.i.i68.i.i.i = tail call i32 %162(ptr noundef %rtwdev, i32 noundef 3136) #7
  %and21.i69.i.i.i = and i32 %call.i.i68.i.i.i, -520093697
  %or.i70.i.i.i = or i32 %and21.i69.i.i.i, 83886080
  %163 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i71.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %164, i32 0, i32 16
  %165 = ptrtoint ptr %write32.i.i71.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write32.i.i71.i.i.i, align 4
  tail call void %166(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %or.i70.i.i.i) #7
  %167 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i73.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %168, i32 0, i32 13
  %169 = ptrtoint ptr %read32.i.i73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read32.i.i73.i.i.i, align 4
  %call.i.i74.i.i.i = tail call i32 %170(ptr noundef %rtwdev, i32 noundef 3136) #7
  %or.i76.i.i.i = or i32 %call.i.i74.i.i.i, 512
  %171 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i77.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %172, i32 0, i32 16
  %173 = ptrtoint ptr %write32.i.i77.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write32.i.i77.i.i.i, align 4
  tail call void %174(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %or.i76.i.i.i) #7
  %175 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i79.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %176, i32 0, i32 16
  %177 = ptrtoint ptr %write32.i79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write32.i79.i.i.i, align 4
  tail call void %178(ptr noundef %rtwdev, i32 noundef 3392, i32 noundef 0) #7
  %179 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i81.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %180, i32 0, i32 16
  %181 = ptrtoint ptr %write32.i81.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write32.i81.i.i.i, align 4
  tail call void %182(ptr noundef %rtwdev, i32 noundef 3396, i32 noundef 0) #7
  %183 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i83.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %184, i32 0, i32 16
  %185 = ptrtoint ptr %write32.i83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write32.i83.i.i.i, align 4
  tail call void %186(ptr noundef %rtwdev, i32 noundef 3400, i32 noundef 0) #7
  %187 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i85.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %188, i32 0, i32 16
  %189 = ptrtoint ptr %write32.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write32.i85.i.i.i, align 4
  tail call void %190(ptr noundef %rtwdev, i32 noundef 3404, i32 noundef 524288) #7
  %191 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i87.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %192, i32 0, i32 13
  %193 = ptrtoint ptr %read32.i.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read32.i.i87.i.i.i, align 4
  %call.i.i88.i.i.i = tail call i32 %194(ptr noundef %rtwdev, i32 noundef 3372) #7
  %or.i90.i.i.i = or i32 %call.i.i88.i.i.i, 268435456
  br label %rtw8723d_set_channel_rf.exit

sw.default.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i93.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %196, i32 0, i32 13
  %197 = ptrtoint ptr %read32.i.i93.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read32.i.i93.i.i.i, align 4
  %call.i.i94.i.i.i = tail call i32 %198(ptr noundef %rtwdev, i32 noundef 3136) #7
  %and21.i95.i.i.i = and i32 %call.i.i94.i.i.i, -513
  %199 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i96.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %200, i32 0, i32 16
  %201 = ptrtoint ptr %write32.i.i96.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write32.i.i96.i.i.i, align 4
  tail call void %202(ptr noundef %rtwdev, i32 noundef 3136, i32 noundef %and21.i95.i.i.i) #7
  %203 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i98.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %204, i32 0, i32 13
  %205 = ptrtoint ptr %read32.i.i98.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read32.i.i98.i.i.i, align 4
  %call.i.i99.i.i.i = tail call i32 %206(ptr noundef %rtwdev, i32 noundef 3372) #7
  %and21.i100.i.i.i = and i32 %call.i.i99.i.i.i, -268435457
  br label %rtw8723d_set_channel_rf.exit

rtw8723d_set_channel_rf.exit:                     ; preds = %sw.default.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i, %if.then.i.i.i, %if.then.i.i
  %hci.i.i.sink.i.sink.i.i = phi ptr [ %hci.i.i.i.i.i, %if.then.i.i ], [ %hci.i.i.i8.i.i, %if.then.i.i.i ], [ %hci.i.i.i.i, %sw.default.i.i.i ], [ %hci.i.i.i.i, %sw.bb1.i.i.i ], [ %hci.i.i.i.i, %sw.bb.i.i.i ]
  %and21.i38.sink.i.sink.i.i = phi i32 [ %and21.i38.i.i.i, %if.then.i.i ], [ %and21.i38.i23.i.i, %if.then.i.i.i ], [ %and21.i100.i.i.i, %sw.default.i.i.i ], [ %or.i90.i.i.i, %sw.bb1.i.i.i ], [ %or.i64.i.i.i, %sw.bb.i.i.i ]
  %207 = ptrtoint ptr %hci.i.i.sink.i.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hci.i.i.sink.i.sink.i.i, align 8
  %write32.i.i39.i24.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %208, i32 0, i32 16
  %209 = ptrtoint ptr %write32.i.i39.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write32.i.i39.i24.i.i, align 4
  tail call void %210(ptr noundef %rtwdev, i32 noundef 3372, i32 noundef %and21.i38.sink.i.sink.i.i) #7
  tail call void @rtw_set_channel_mac(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_chan_idx) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp.i = icmp ult i8 %channel, 14
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %211 = select i1 %cmp.i, i32 1689783324, i32 47132
  %212 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %213, i32 0, i32 16
  %214 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write32.i.i, align 4
  tail call void %215(ptr noundef %rtwdev, i32 noundef 2596, i32 noundef %211) #7
  %216 = select i1 %cmp.i, i32 34832, i32 0
  %217 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hci.i.i, align 8
  %write32.i.1.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %218, i32 0, i32 16
  %219 = ptrtoint ptr %write32.i.1.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write32.i.1.i, align 4
  tail call void %220(ptr noundef %rtwdev, i32 noundef 2600, i32 noundef %216) #7
  %221 = select i1 %cmp.i, i32 19093095, i32 13927
  %222 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hci.i.i, align 8
  %write32.i.2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %223, i32 0, i32 16
  %224 = ptrtoint ptr %write32.i.2.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write32.i.2.i, align 4
  tail call void %225(ptr noundef %rtwdev, i32 noundef 2732, i32 noundef %221) #7
  %226 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %bw, label %rtw8723d_set_channel_rf.exit.rtw8723d_set_channel_bb.exit_crit_edge [
    i8 0, label %sw.bb.i8
    i8 1, label %sw.bb5.i
  ]

rtw8723d_set_channel_rf.exit.rtw8723d_set_channel_bb.exit_crit_edge: ; preds = %rtw8723d_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_set_channel_bb.exit

sw.bb.i8:                                         ; preds = %rtw8723d_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  %227 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %228, i32 0, i32 13
  %229 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %230(ptr noundef %rtwdev, i32 noundef 2048) #7
  %and21.i.i = and i32 %call.i.i.i, -2
  %231 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %232, i32 0, i32 16
  %233 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %234(ptr noundef %rtwdev, i32 noundef 2048, i32 noundef %and21.i.i) #7
  %235 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i22.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %236, i32 0, i32 13
  %237 = ptrtoint ptr %read32.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %read32.i.i22.i, align 4
  %call.i.i23.i = tail call i32 %238(ptr noundef %rtwdev, i32 noundef 2304) #7
  %and21.i24.i = and i32 %call.i.i23.i, -2
  %239 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i25.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %240, i32 0, i32 16
  %241 = ptrtoint ptr %write32.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write32.i.i25.i, align 4
  tail call void %242(ptr noundef %rtwdev, i32 noundef 2304, i32 noundef %and21.i24.i) #7
  %243 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i27.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %244, i32 0, i32 13
  %245 = ptrtoint ptr %read32.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read32.i.i27.i, align 4
  %call.i.i28.i = tail call i32 %246(ptr noundef %rtwdev, i32 noundef 2388) #7
  %or.i.i = or i32 %call.i.i28.i, 524288
  %247 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i30.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %248, i32 0, i32 16
  %249 = ptrtoint ptr %write32.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write32.i.i30.i, align 4
  tail call void %250(ptr noundef %rtwdev, i32 noundef 2388, i32 noundef %or.i.i) #7
  %251 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %252, i32 0, i32 13
  %253 = ptrtoint ptr %read32.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %read32.i.i32.i, align 4
  %call.i.i33.i = tail call i32 %254(ptr noundef %rtwdev, i32 noundef 2388) #7
  %and21.i34.i = and i32 %call.i.i33.i, -251658241
  %or.i35.i = or i32 %and21.i34.i, 167772160
  %255 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i36.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %256, i32 0, i32 16
  %257 = ptrtoint ptr %write32.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write32.i.i36.i, align 4
  tail call void %258(ptr noundef %rtwdev, i32 noundef 2388, i32 noundef %or.i35.i) #7
  br label %rtw8723d_set_channel_bb.exit

sw.bb5.i:                                         ; preds = %rtw8723d_set_channel_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  %259 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i38.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %260, i32 0, i32 13
  %261 = ptrtoint ptr %read32.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %read32.i.i38.i, align 4
  %call.i.i39.i = tail call i32 %262(ptr noundef %rtwdev, i32 noundef 2048) #7
  %or.i41.i = or i32 %call.i.i39.i, 1
  %263 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i42.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %264, i32 0, i32 16
  %265 = ptrtoint ptr %write32.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %write32.i.i42.i, align 4
  tail call void %266(ptr noundef %rtwdev, i32 noundef 2048, i32 noundef %or.i41.i) #7
  %267 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i44.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %268, i32 0, i32 13
  %269 = ptrtoint ptr %read32.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read32.i.i44.i, align 4
  %call.i.i45.i = tail call i32 %270(ptr noundef %rtwdev, i32 noundef 2304) #7
  %or.i47.i = or i32 %call.i.i45.i, 1
  %271 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i48.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %272, i32 0, i32 16
  %273 = ptrtoint ptr %write32.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %write32.i.i48.i, align 4
  tail call void %274(ptr noundef %rtwdev, i32 noundef 2304, i32 noundef %or.i47.i) #7
  %275 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i50.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %276, i32 0, i32 13
  %277 = ptrtoint ptr %read32.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %read32.i.i50.i, align 4
  %call.i.i51.i = tail call i32 %278(ptr noundef %rtwdev, i32 noundef 2388) #7
  %and21.i52.i = and i32 %call.i.i51.i, -524289
  %279 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i53.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %280, i32 0, i32 16
  %281 = ptrtoint ptr %write32.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %write32.i.i53.i, align 4
  tail call void %282(ptr noundef %rtwdev, i32 noundef 2388, i32 noundef %and21.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %primary_chan_idx)
  %cmp7.i = icmp eq i8 %primary_chan_idx, 1
  %283 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i55.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %284, i32 0, i32 13
  %285 = ptrtoint ptr %read32.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %read32.i.i55.i, align 4
  %call.i.i56.i = tail call i32 %286(ptr noundef %rtwdev, i32 noundef 2560) #7
  %and21.i57.i = and i32 %call.i.i56.i, -17
  %shl.i.i = select i1 %cmp7.i, i32 16, i32 0
  %or.i58.i = or i32 %and21.i57.i, %shl.i.i
  %287 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i59.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %288, i32 0, i32 16
  %289 = ptrtoint ptr %write32.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write32.i.i59.i, align 4
  tail call void %290(ptr noundef %rtwdev, i32 noundef 2560, i32 noundef %or.i58.i) #7
  br label %rtw8723d_set_channel_bb.exit

rtw8723d_set_channel_bb.exit:                     ; preds = %sw.bb5.i, %sw.bb.i8, %rtw8723d_set_channel_rf.exit.rtw8723d_set_channel_bb.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_query_rx_desc(ptr noundef %rtwdev, ptr noundef %rx_desc, ptr noundef %pkt_stat, ptr noundef %rx_status) #0 align 64 {
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
  %ppdu_cnt = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 13
  %56 = ptrtoint ptr %ppdu_cnt to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %ppdu_cnt, align 4
  %add.ptr36 = getelementptr i32, ptr %rx_desc, i32 5
  %57 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr36, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %tsf_low = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 14
  %60 = ptrtoint ptr %tsf_low to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tsf_low, align 4
  %mul = shl nuw nsw i8 %conv26, 3
  %61 = ptrtoint ptr %drv_info_sz to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %mul, ptr %drv_info_sz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  br i1 %tobool42.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %add.ptr43 = getelementptr i8, ptr %rx_desc, i32 %conv
  %conv45 = zext i8 %conv29 to i32
  %add.ptr46 = getelementptr i8, ptr %add.ptr43, i32 %conv45
  %conv48 = zext i8 %mul to i32
  %add.ptr49 = getelementptr i8, ptr %add.ptr46, i32 %conv48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool51.not = icmp eq i8 %9, 0
  br i1 %tobool51.not, label %if.end.if.end57_crit_edge, label %if.then52

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then52:                                        ; preds = %if.end
  %62 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr46, align 1
  %64 = and i8 %63, 15
  %conv2.i = zext i8 %64 to i32
  %65 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %conv2.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr46, align 4
  %sum.shift.i.i = lshr i32 %67, 16
  %div4.i242526.i.i = trunc i32 %sum.shift.i.i to i8
  %conv3.i.i = add i8 %div4.i242526.i.i, -97
  %rx_power.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15
  %68 = ptrtoint ptr %rx_power.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv3.i.i, ptr %rx_power.i.i, align 4
  %call5.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %rx_power.i.i, i8 noundef zeroext 1) #7
  %rssi.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 16
  %69 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call5.i.i, ptr %rssi.i.i, align 4
  %bw.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %70 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bw.i.i, align 2
  %71 = ptrtoint ptr %rx_power.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_power.i.i, align 4
  %73 = tail call i8 @llvm.smax.i8(i8 %72, i8 -120) #7
  %cond.i.i = sext i8 %73 to i32
  %signal_power.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %74 = ptrtoint ptr %signal_power.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %cond.i.i, ptr %signal_power.i.i, align 4
  %rssi14.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 50
  %75 = ptrtoint ptr %rssi14.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %call5.i.i, ptr %rssi14.i.i, align 2
  br label %if.end57

sw.bb3.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %76 = add nsw i8 %conv32, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %76)
  %77 = icmp ult i8 %76, 8
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr46, i32 1
  %78 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i, align 4
  %..i.i = select i1 %77, i32 16, i32 20
  %sum.shift.i11.i = lshr i32 %79, %..i.i
  %rxsc.0.in.i.i = and i32 %sum.shift.i11.i, 15
  %add.ptr11.i.i = getelementptr i32, ptr %add.ptr46, i32 3
  %80 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr11.i.i, align 4
  %82 = and i32 %81, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp13.i.i = icmp ne i32 %82, 0
  %83 = add nsw i32 %rxsc.0.in.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %83)
  %switch.i.i = icmp ult i32 %83, -2
  %narrow.i.i = select i1 %cmp13.i.i, i1 %switch.i.i, i1 false
  %bw.0.i.i = zext i1 %narrow.i.i to i8
  %84 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr46, align 4
  %sum.shift153.i.i = lshr i32 %85, 16
  %div4.i142147152154.i.i = trunc i32 %sum.shift153.i.i to i8
  %conv29.i.i = add i8 %div4.i142147152154.i.i, -110
  %rx_power.i12.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15
  %86 = ptrtoint ptr %rx_power.i12.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv29.i.i, ptr %rx_power.i12.i, align 4
  %call31.i.i = tail call zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef %rx_power.i12.i, i8 noundef zeroext 1) #7
  %rssi.i13.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 16
  %87 = ptrtoint ptr %rssi.i13.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %call31.i.i, ptr %rssi.i13.i, align 4
  %bw32.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %88 = ptrtoint ptr %bw32.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %bw.0.i.i, ptr %bw32.i.i, align 2
  %89 = ptrtoint ptr %rx_power.i12.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rx_power.i12.i, align 4
  %91 = tail call i8 @llvm.smax.i8(i8 %90, i8 -120) #7
  %cond.i14.i = sext i8 %91 to i32
  %signal_power.i15.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %92 = ptrtoint ptr %signal_power.i15.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond.i14.i, ptr %signal_power.i15.i, align 4
  %add.ptr41.i.i = getelementptr i32, ptr %add.ptr46, i32 4
  %93 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr41.i.i, align 4
  %95 = lshr i32 %94, 24
  %conv43.i.i = trunc i32 %95 to i8
  %rx_evm44.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 19
  %96 = ptrtoint ptr %rx_evm44.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv43.i.i, ptr %rx_evm44.i.i, align 2
  %add.ptr46.i.i = getelementptr i32, ptr %add.ptr46, i32 6
  %97 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr46.i.i, align 4
  %99 = lshr i32 %98, 24
  %conv48.i.i = trunc i32 %99 to i8
  %rx_snr.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 18
  %100 = ptrtoint ptr %rx_snr.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv48.i.i, ptr %rx_snr.i.i, align 2
  %add.ptr50.i.i = getelementptr i32, ptr %add.ptr46, i32 5
  %101 = ptrtoint ptr %add.ptr50.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr50.i.i, align 4
  %103 = lshr i32 %102, 24
  %conv52.i.i = trunc i32 %103 to i8
  %cfo_tail.i.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 20
  %104 = ptrtoint ptr %cfo_tail.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv52.i.i, ptr %cfo_tail.i.i, align 2
  %105 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %rate, align 1
  %curr_rx_rate.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 51
  %107 = ptrtoint ptr %curr_rx_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %curr_rx_rate.i.i, align 2
  %108 = ptrtoint ptr %rssi.i13.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rssi.i13.i, align 4
  %rssi56.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 50
  %110 = ptrtoint ptr %rssi56.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %rssi56.i.i, align 2
  %111 = load i8, ptr %rx_snr.i.i, align 2
  %112 = ashr i8 %111, 1
  %rx_snr62.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 47
  %113 = ptrtoint ptr %rx_snr62.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %rx_snr62.i.i, align 1
  %114 = load i8, ptr %cfo_tail.i.i, align 2
  %conv66.i.i = sext i8 %114 to i16
  %mul.i.i = mul nsw i16 %conv66.i.i, 5
  %shr67.i.i = ashr i16 %mul.i.i, 1
  %cfo_tail69.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 49
  %115 = ptrtoint ptr %cfo_tail69.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %shr67.i.i, ptr %cfo_tail69.i.i, align 2
  %rx_evm_dbm.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 48
  %116 = ptrtoint ptr %rx_evm_dbm.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %rx_evm_dbm.i.i, align 1
  br label %if.end57

do.end.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %117 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.8, i32 noundef %conv2.i) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end.i, %sw.bb3.i, %sw.bb.i, %if.end.if.end57_crit_edge
  %phy_status.0 = phi ptr [ null, %if.end.if.end57_crit_edge ], [ %add.ptr46, %sw.bb.i ], [ %add.ptr46, %sw.bb3.i ], [ %add.ptr46, %do.end.i ]
  tail call void @rtw_rx_fill_rx_status(ptr noundef %rtwdev, ptr noundef %pkt_stat, ptr noundef %add.ptr49, ptr noundef %rx_status, ptr noundef %phy_status.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_phy_read_rf_sipi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_write_rf_reg_sipi(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_set_tx_power_index(ptr noundef %rtwdev) #0 align 64 {
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
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %dev20.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc9.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %path.020 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc10, %for.inc9.for.cond3.preheader_crit_edge ]
  br label %for.body6

for.body6:                                        ; preds = %rtw8723d_set_tx_power_index_by_rate.exit.for.body6_crit_edge, %for.cond3.preheader
  %rs.017 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %rtw8723d_set_tx_power_index_by_rate.exit.for.body6_crit_edge ]
  %arrayidx.i = getelementptr [0 x i8], ptr @rtw_rate_size, i32 0, i32 %rs.017
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp38.not.i = icmp eq i8 %3, 0
  br i1 %cmp38.not.i, label %for.body6.rtw8723d_set_tx_power_index_by_rate.exit_crit_edge, label %for.body.lr.ph.i

for.body6.rtw8723d_set_tx_power_index_by_rate.exit_crit_edge: ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_set_tx_power_index_by_rate.exit

for.body.lr.ph.i:                                 ; preds = %for.body6
  %arrayidx4.i = getelementptr [0 x ptr], ptr @rtw_rate_section, i32 0, i32 %rs.017
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %5, i32 %j.039.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.i, align 1
  %idxprom8.i = zext i8 %7 to i32
  %arrayidx9.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 26, i32 %path.020, i32 %idxprom8.i
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %7)
  %cmp11.i = icmp ugt i8 %7, 19
  br i1 %cmp11.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %idxprom8.i) #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx15.i = getelementptr [20 x %struct.rtw_hw_reg], ptr @rtw8723d_txagc, i32 0, i32 %idxprom8.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %idxprom8.i) #10
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end.i
  %mask.i = getelementptr [20 x %struct.rtw_hw_reg], ptr @rtw8723d_txagc, i32 0, i32 %idxprom8.i, i32 1
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  %conv24.i = zext i8 %9 to i32
  %and.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.rtw_write32_mask.exit.i_crit_edge, label %do.end.i.i, !prof !276

if.end22.i.rtw_write32_mask.exit.i_crit_edge:     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_write32_mask.exit.i

do.end.i.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %13) #7
  br label %rtw_write32_mask.exit.i

rtw_write32_mask.exit.i:                          ; preds = %do.end.i.i, %if.end22.i.rtw_write32_mask.exit.i_crit_edge
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 false) #7, !range !277
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %22(ptr noundef %rtwdev, i32 noundef %13) #7
  %neg.i.i = xor i32 %17, -1
  %and21.i.i = and i32 %call.i.i.i, %neg.i.i
  %shl.i.i = shl i32 %conv24.i, %18
  %and22.i.i = and i32 %shl.i.i, %17
  %or.i.i = or i32 %and21.i.i, %and22.i.i
  %23 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef %13, i32 noundef %or.i.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %rtw_write32_mask.exit.i, %do.end19.i, %do.end.i
  %inc.i = add nuw nsw i32 %j.039.i, 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %28 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rtw8723d_set_tx_power_index_by_rate.exit_crit_edge

for.inc.i.rtw8723d_set_tx_power_index_by_rate.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_set_tx_power_index_by_rate.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw8723d_set_tx_power_index_by_rate.exit:         ; preds = %for.inc.i.rtw8723d_set_tx_power_index_by_rate.exit_crit_edge, %for.body6.rtw8723d_set_tx_power_index_by_rate.exit_crit_edge
  %inc = add nuw nsw i32 %rs.017, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc9, label %rtw8723d_set_tx_power_index_by_rate.exit.for.body6_crit_edge

rtw8723d_set_tx_power_index_by_rate.exit.for.body6_crit_edge: ; preds = %rtw8723d_set_tx_power_index_by_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.inc9:                                         ; preds = %rtw8723d_set_tx_power_index_by_rate.exit
  %inc10 = add nuw nsw i32 %path.020, 1
  %29 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rf_path_num, align 2
  %conv = zext i8 %30 to i32
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
define internal void @rtw8723d_cfg_ldo25(ptr noundef %rtwdev, i1 noundef zeroext %enable) #0 align 64 {
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
  %4 = and i8 %call.i, 15
  %5 = or i8 %4, -80
  %6 = and i8 %call.i, 127
  %ldo_pwr.0 = select i1 %enable, i8 %5, i8 %6
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write8.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 55, i8 noundef zeroext %ldo_pwr.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_efuse_grant(ptr noundef %rtwdev, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8.i, align 4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %rtwdev, i32 noundef 207, i8 noundef zeroext 105) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %7(ptr noundef %rtwdev, i32 noundef 2) #7
  %or5.i = or i16 %call.i.i, 4096
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 2, i16 noundef zeroext %or5.i) #7
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %read16.i.i5 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %read16.i.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i5, align 4
  %call.i.i6 = tail call zeroext i16 %15(ptr noundef %rtwdev, i32 noundef 8) #7
  %or5.i7 = or i16 %call.i.i6, 34
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write16.i.i8 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %write16.i.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i8, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 8, i16 noundef zeroext %or5.i7) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %rtwdev, i32 noundef 207, i8 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_false_alarm_statistics(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_info1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 3072) #7
  %or.i = or i32 %call.i.i, -2147483648
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 3072, i32 noundef %or.i) #7
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i116 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i116 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i116, align 4
  %call.i.i117 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 3328) #7
  %or.i119 = or i32 %call.i.i117, -2147483648
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i120 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i120 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i120, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 3328, i32 noundef %or.i119) #7
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i122 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i122 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i122, align 4
  %call.i.i123 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 2604) #7
  %or.i125 = or i32 %call.i.i123, 4096
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i126 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i126, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %or.i125) #7
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i128 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i128 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i128, align 4
  %call.i.i129 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 2604) #7
  %or.i131 = or i32 %call.i.i129, 16384
  %28 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i132 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.i132 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i132, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %or.i131) #7
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i134 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i134 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i134, align 4
  %call.i.i135 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 2652) #7
  %and.i136 = and i32 %call.i.i135, 255
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i138 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %read32.i.i138 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i138, align 4
  %call.i.i139 = tail call i32 %39(ptr noundef %rtwdev, i32 noundef 2648) #7
  %40 = lshr i32 %call.i.i139, 16
  %shl = and i32 %40, 65280
  %add = or i32 %shl, %and.i136
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %44(ptr noundef %rtwdev, i32 noundef 3312) #7
  %and.i = and i32 %call.i, 65535
  %div4.i231 = lshr i32 %call.i, 16
  %add6 = add nuw nsw i32 %and.i, %div4.i231
  %45 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i, align 8
  %read32.i142 = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %read32.i142 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i142, align 4
  %call.i143 = tail call i32 %48(ptr noundef %rtwdev, i32 noundef 3488) #7
  %and.i99 = and i32 %call.i143, 65535
  %ofdm_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 4
  %49 = ptrtoint ptr %ofdm_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i99, ptr %ofdm_cca_cnt, align 4
  %div4.i101232 = lshr i32 %call.i143, 16
  %add10 = add nuw nsw i32 %add6, %div4.i101232
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %read32.i145 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %read32.i145 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i145, align 4
  %call.i146 = tail call i32 %53(ptr noundef %rtwdev, i32 noundef 3492) #7
  %and.i102 = and i32 %call.i146, 65535
  %add13 = add nuw nsw i32 %add10, %and.i102
  %div4.i104233 = lshr i32 %call.i146, 16
  %add15 = add nuw nsw i32 %add13, %div4.i104233
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %read32.i148 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %read32.i148 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i148, align 4
  %call.i149 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 3496) #7
  %and.i105 = and i32 %call.i149, 65535
  %add18 = add nuw nsw i32 %add15, %and.i105
  %58 = ptrtoint ptr %dm_info1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add, ptr %dm_info1, align 4
  %ofdm_fa_cnt20 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 1
  %59 = ptrtoint ptr %ofdm_fa_cnt20 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add18, ptr %ofdm_fa_cnt20, align 4
  %add21 = add nuw nsw i32 %add18, %add
  %total_fa_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 2
  %60 = ptrtoint ptr %total_fa_cnt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add21, ptr %total_fa_cnt, align 4
  %61 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i, align 8
  %read32.i151 = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %read32.i151 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read32.i151, align 4
  %call.i152 = tail call i32 %64(ptr noundef %rtwdev, i32 noundef 3972) #7
  %cck_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 7
  %65 = ptrtoint ptr %cck_err_cnt to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i152, ptr %cck_err_cnt, align 4
  %66 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hci.i.i, align 8
  %read32.i154 = getelementptr inbounds %struct.rtw_hci_ops, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %read32.i154 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32.i154, align 4
  %call.i155 = tail call i32 %69(ptr noundef %rtwdev, i32 noundef 3976) #7
  %cck_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 6
  %70 = ptrtoint ptr %cck_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i155, ptr %cck_ok_cnt, align 4
  %71 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i, align 8
  %read32.i157 = getelementptr inbounds %struct.rtw_hci_ops, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %read32.i157 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i157, align 4
  %call.i158 = tail call i32 %74(ptr noundef %rtwdev, i32 noundef 3988) #7
  %div4.i107234 = lshr i32 %call.i158, 16
  %ofdm_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 9
  %75 = ptrtoint ptr %ofdm_err_cnt to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div4.i107234, ptr %ofdm_err_cnt, align 4
  %and.i108 = and i32 %call.i158, 65535
  %ofdm_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 8
  %76 = ptrtoint ptr %ofdm_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and.i108, ptr %ofdm_ok_cnt, align 4
  %77 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i, align 8
  %read32.i160 = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 13
  %79 = ptrtoint ptr %read32.i160 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32.i160, align 4
  %call.i161 = tail call i32 %80(ptr noundef %rtwdev, i32 noundef 3984) #7
  %div4.i110235 = lshr i32 %call.i161, 16
  %ht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 11
  %81 = ptrtoint ptr %ht_err_cnt to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div4.i110235, ptr %ht_err_cnt, align 4
  %and.i111 = and i32 %call.i161, 65535
  %ht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 10
  %82 = ptrtoint ptr %ht_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and.i111, ptr %ht_ok_cnt, align 4
  %vht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 13
  %83 = ptrtoint ptr %vht_err_cnt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %vht_err_cnt, align 4
  %vht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 12
  %84 = ptrtoint ptr %vht_ok_cnt to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %vht_ok_cnt, align 4
  %85 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i, align 8
  %read32.i163 = getelementptr inbounds %struct.rtw_hci_ops, ptr %86, i32 0, i32 13
  %87 = ptrtoint ptr %read32.i163 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read32.i163, align 4
  %call.i164 = tail call i32 %88(ptr noundef %rtwdev, i32 noundef 2656) #7
  %trunc = trunc i32 %call.i164 to i16
  %rev = tail call i16 @llvm.bswap.i16(i16 %trunc)
  %or = zext i16 %rev to i32
  %cck_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 3
  %89 = ptrtoint ptr %cck_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or, ptr %cck_cca_cnt, align 4
  %90 = ptrtoint ptr %ofdm_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ofdm_cca_cnt, align 4
  %add36 = add i32 %91, %or
  %total_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 5
  %92 = ptrtoint ptr %total_cca_cnt to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add36, ptr %total_cca_cnt, align 4
  %93 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i166 = getelementptr inbounds %struct.rtw_hci_ops, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %read32.i.i166 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read32.i.i166, align 4
  %call.i.i167 = tail call i32 %96(ptr noundef %rtwdev, i32 noundef 3084) #7
  %or.i169 = or i32 %call.i.i167, -2147483648
  %97 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i170 = getelementptr inbounds %struct.rtw_hci_ops, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %write32.i.i170 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write32.i.i170, align 4
  tail call void %100(ptr noundef %rtwdev, i32 noundef 3084, i32 noundef %or.i169) #7
  %101 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i172 = getelementptr inbounds %struct.rtw_hci_ops, ptr %102, i32 0, i32 13
  %103 = ptrtoint ptr %read32.i.i172 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32.i.i172, align 4
  %call.i.i173 = tail call i32 %104(ptr noundef %rtwdev, i32 noundef 3084) #7
  %and21.i174 = and i32 %call.i.i173, 2147483647
  %105 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i175 = getelementptr inbounds %struct.rtw_hci_ops, ptr %106, i32 0, i32 16
  %107 = ptrtoint ptr %write32.i.i175 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32.i.i175, align 4
  tail call void %108(ptr noundef %rtwdev, i32 noundef 3084, i32 noundef %and21.i174) #7
  %109 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i177 = getelementptr inbounds %struct.rtw_hci_ops, ptr %110, i32 0, i32 13
  %111 = ptrtoint ptr %read32.i.i177 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read32.i.i177, align 4
  %call.i.i178 = tail call i32 %112(ptr noundef %rtwdev, i32 noundef 3328) #7
  %or.i180 = or i32 %call.i.i178, 134217728
  %113 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i181 = getelementptr inbounds %struct.rtw_hci_ops, ptr %114, i32 0, i32 16
  %115 = ptrtoint ptr %write32.i.i181 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write32.i.i181, align 4
  tail call void %116(ptr noundef %rtwdev, i32 noundef 3328, i32 noundef %or.i180) #7
  %117 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i183 = getelementptr inbounds %struct.rtw_hci_ops, ptr %118, i32 0, i32 13
  %119 = ptrtoint ptr %read32.i.i183 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32.i.i183, align 4
  %call.i.i184 = tail call i32 %120(ptr noundef %rtwdev, i32 noundef 3328) #7
  %and21.i185 = and i32 %call.i.i184, -134217729
  %121 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i186 = getelementptr inbounds %struct.rtw_hci_ops, ptr %122, i32 0, i32 16
  %123 = ptrtoint ptr %write32.i.i186 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write32.i.i186, align 4
  tail call void %124(ptr noundef %rtwdev, i32 noundef 3328, i32 noundef %and21.i185) #7
  %125 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i188 = getelementptr inbounds %struct.rtw_hci_ops, ptr %126, i32 0, i32 13
  %127 = ptrtoint ptr %read32.i.i188 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read32.i.i188, align 4
  %call.i.i189 = tail call i32 %128(ptr noundef %rtwdev, i32 noundef 3072) #7
  %and21.i190 = and i32 %call.i.i189, 2147483647
  %129 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i191 = getelementptr inbounds %struct.rtw_hci_ops, ptr %130, i32 0, i32 16
  %131 = ptrtoint ptr %write32.i.i191 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write32.i.i191, align 4
  tail call void %132(ptr noundef %rtwdev, i32 noundef 3072, i32 noundef %and21.i190) #7
  %133 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i193 = getelementptr inbounds %struct.rtw_hci_ops, ptr %134, i32 0, i32 13
  %135 = ptrtoint ptr %read32.i.i193 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read32.i.i193, align 4
  %call.i.i194 = tail call i32 %136(ptr noundef %rtwdev, i32 noundef 3328) #7
  %and21.i195 = and i32 %call.i.i194, 2147483647
  %137 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i196 = getelementptr inbounds %struct.rtw_hci_ops, ptr %138, i32 0, i32 16
  %139 = ptrtoint ptr %write32.i.i196 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write32.i.i196, align 4
  tail call void %140(ptr noundef %rtwdev, i32 noundef 3328, i32 noundef %and21.i195) #7
  %141 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i198 = getelementptr inbounds %struct.rtw_hci_ops, ptr %142, i32 0, i32 13
  %143 = ptrtoint ptr %read32.i.i198 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read32.i.i198, align 4
  %call.i.i199 = tail call i32 %144(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and21.i200 = and i32 %call.i.i199, -12289
  %145 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i201 = getelementptr inbounds %struct.rtw_hci_ops, ptr %146, i32 0, i32 16
  %147 = ptrtoint ptr %write32.i.i201 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write32.i.i201, align 4
  tail call void %148(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and21.i200) #7
  %149 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i203 = getelementptr inbounds %struct.rtw_hci_ops, ptr %150, i32 0, i32 13
  %151 = ptrtoint ptr %read32.i.i203 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read32.i.i203, align 4
  %call.i.i204 = tail call i32 %152(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and21.i205 = and i32 %call.i.i204, -12289
  %or.i206 = or i32 %and21.i205, 8192
  %153 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i207 = getelementptr inbounds %struct.rtw_hci_ops, ptr %154, i32 0, i32 16
  %155 = ptrtoint ptr %write32.i.i207 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write32.i.i207, align 4
  tail call void %156(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %or.i206) #7
  %157 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i209 = getelementptr inbounds %struct.rtw_hci_ops, ptr %158, i32 0, i32 13
  %159 = ptrtoint ptr %read32.i.i209 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read32.i.i209, align 4
  %call.i.i210 = tail call i32 %160(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and21.i211 = and i32 %call.i.i210, -49153
  %161 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i212 = getelementptr inbounds %struct.rtw_hci_ops, ptr %162, i32 0, i32 16
  %163 = ptrtoint ptr %write32.i.i212 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write32.i.i212, align 4
  tail call void %164(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %and21.i211) #7
  %165 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i214 = getelementptr inbounds %struct.rtw_hci_ops, ptr %166, i32 0, i32 13
  %167 = ptrtoint ptr %read32.i.i214 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read32.i.i214, align 4
  %call.i.i215 = tail call i32 %168(ptr noundef %rtwdev, i32 noundef 2604) #7
  %and21.i216 = and i32 %call.i.i215, -49153
  %or.i217 = or i32 %and21.i216, 32768
  %169 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i218 = getelementptr inbounds %struct.rtw_hci_ops, ptr %170, i32 0, i32 16
  %171 = ptrtoint ptr %write32.i.i218 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write32.i.i218, align 4
  tail call void %172(ptr noundef %rtwdev, i32 noundef 2604, i32 noundef %or.i217) #7
  %173 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i220 = getelementptr inbounds %struct.rtw_hci_ops, ptr %174, i32 0, i32 13
  %175 = ptrtoint ptr %read32.i.i220 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %read32.i.i220, align 4
  %call.i.i221 = tail call i32 %176(ptr noundef %rtwdev, i32 noundef 3860) #7
  %or.i223 = or i32 %call.i.i221, 65536
  %177 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i224 = getelementptr inbounds %struct.rtw_hci_ops, ptr %178, i32 0, i32 16
  %179 = ptrtoint ptr %write32.i.i224 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write32.i.i224, align 4
  tail call void %180(ptr noundef %rtwdev, i32 noundef 3860, i32 noundef %or.i223) #7
  %181 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i226 = getelementptr inbounds %struct.rtw_hci_ops, ptr %182, i32 0, i32 13
  %183 = ptrtoint ptr %read32.i.i226 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read32.i.i226, align 4
  %call.i.i227 = tail call i32 %184(ptr noundef %rtwdev, i32 noundef 3860) #7
  %and21.i228 = and i32 %call.i.i227, -65537
  %185 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i229 = getelementptr inbounds %struct.rtw_hci_ops, ptr %186, i32 0, i32 16
  %187 = ptrtoint ptr %write32.i.i229 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write32.i.i229, align 4
  tail call void %188(ptr noundef %rtwdev, i32 noundef 3860, i32 noundef %and21.i228) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_phy_calibration(ptr noundef %rtwdev) #0 align 64 {
entry:
  %result = alloca [4 x [8 x i32]], align 4
  %backup = alloca %struct.iqk_backup_regs, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #7
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %backup) #7
  %0 = call ptr @memset(ptr %backup, i32 255, i32 124)
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.15) #7
  %1 = call ptr @memset(ptr %result, i32 0, i32 128)
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %5(ptr noundef %rtwdev, i32 noundef 103) #7
  %btg_sel.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 7
  %6 = ptrtoint ptr %btg_sel.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i.i, ptr %btg_sel.i, align 4
  %conv.i = zext i8 %call.i.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.25, i32 noundef %conv.i) #7
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i.i, align 4
  %call.i.i196 = tail call i32 %10(ptr noundef %rtwdev, i32 noundef 112) #7
  %lte_path.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 4
  %11 = ptrtoint ptr %lte_path.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i.i196, ptr %lte_path.i, align 4
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1984, i32 noundef -2146500552) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %read32.i10.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %read32.i10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i10.i, align 4
  %call.i11.i = tail call i32 %20(ptr noundef %rtwdev, i32 noundef 1992) #7
  %lte_gnt.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 5
  %21 = ptrtoint ptr %lte_gnt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i11.i, ptr %lte_gnt.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.26, i32 noundef %call.i11.i) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i198 = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %read32.i.i198 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i198, align 4
  %call.i.i199 = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 2140) #7
  %26 = ptrtoint ptr %backup to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i.i199, ptr %backup, align 4
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %read32.i.1.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.1.i, align 4
  %call.i.1.i = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 3692) #7
  %arrayidx1.1.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i.1.i, ptr %arrayidx1.1.i, align 4
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read32.i.2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.2.i, align 4
  %call.i.2.i = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 3696) #7
  %arrayidx1.2.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i.2.i, ptr %arrayidx1.2.i, align 4
  %37 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i, align 8
  %read32.i.3.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %read32.i.3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.3.i, align 4
  %call.i.3.i = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 3700) #7
  %arrayidx1.3.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i.3.i, ptr %arrayidx1.3.i, align 4
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %read32.i.4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %read32.i.4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.4.i, align 4
  %call.i.4.i = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 3704) #7
  %arrayidx1.4.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i.4.i, ptr %arrayidx1.4.i, align 4
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %read32.i.5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %read32.i.5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.5.i, align 4
  %call.i.5.i = tail call i32 %50(ptr noundef %rtwdev, i32 noundef 3708) #7
  %arrayidx1.5.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i.5.i, ptr %arrayidx1.5.i, align 4
  %52 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i, align 8
  %read32.i.6.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %read32.i.6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.6.i, align 4
  %call.i.6.i = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 3712) #7
  %arrayidx1.6.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 6
  %56 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i.6.i, ptr %arrayidx1.6.i, align 4
  %57 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i, align 8
  %read32.i.7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %read32.i.7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.7.i, align 4
  %call.i.7.i = tail call i32 %60(ptr noundef %rtwdev, i32 noundef 3716) #7
  %arrayidx1.7.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 7
  %61 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i.7.i, ptr %arrayidx1.7.i, align 4
  %62 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i.i, align 8
  %read32.i.8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %read32.i.8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.8.i, align 4
  %call.i.8.i = tail call i32 %65(ptr noundef %rtwdev, i32 noundef 3720) #7
  %arrayidx1.8.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 8
  %66 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i.8.i, ptr %arrayidx1.8.i, align 4
  %67 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i, align 8
  %read32.i.9.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %read32.i.9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read32.i.9.i, align 4
  %call.i.9.i = tail call i32 %70(ptr noundef %rtwdev, i32 noundef 3724) #7
  %arrayidx1.9.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 9
  %71 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i.9.i, ptr %arrayidx1.9.i, align 4
  %72 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hci.i.i, align 8
  %read32.i.10.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %read32.i.10.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32.i.10.i, align 4
  %call.i.10.i = tail call i32 %75(ptr noundef %rtwdev, i32 noundef 3792) #7
  %arrayidx1.10.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 10
  %76 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call.i.10.i, ptr %arrayidx1.10.i, align 4
  %77 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i, align 8
  %read32.i.11.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 13
  %79 = ptrtoint ptr %read32.i.11.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32.i.11.i, align 4
  %call.i.11.i = tail call i32 %80(ptr noundef %rtwdev, i32 noundef 3796) #7
  %arrayidx1.11.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 11
  %81 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call.i.11.i, ptr %arrayidx1.11.i, align 4
  %82 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i, align 8
  %read32.i.12.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %read32.i.12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32.i.12.i, align 4
  %call.i.12.i = tail call i32 %85(ptr noundef %rtwdev, i32 noundef 3800) #7
  %arrayidx1.12.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 12
  %86 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call.i.12.i, ptr %arrayidx1.12.i, align 4
  %87 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i, align 8
  %read32.i.13.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %88, i32 0, i32 13
  %89 = ptrtoint ptr %read32.i.13.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32.i.13.i, align 4
  %call.i.13.i = tail call i32 %90(ptr noundef %rtwdev, i32 noundef 3804) #7
  %arrayidx1.13.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 13
  %91 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i.13.i, ptr %arrayidx1.13.i, align 4
  %92 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i, align 8
  %read32.i.14.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %read32.i.14.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.14.i, align 4
  %call.i.14.i = tail call i32 %95(ptr noundef %rtwdev, i32 noundef 3808) #7
  %arrayidx1.14.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 14
  %96 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call.i.14.i, ptr %arrayidx1.14.i, align 4
  %97 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i.i, align 8
  %read32.i.15.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %read32.i.15.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read32.i.15.i, align 4
  %call.i.15.i = tail call i32 %100(ptr noundef %rtwdev, i32 noundef 3820) #7
  %arrayidx1.15.i = getelementptr inbounds [16 x i32], ptr %backup, i32 0, i32 15
  %101 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call.i.15.i, ptr %arrayidx1.15.i, align 4
  %102 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i200 = getelementptr inbounds %struct.rtw_hci_ops, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %read8.i.i200 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read8.i.i200, align 4
  %call.i61.i = tail call zeroext i8 %105(ptr noundef %rtwdev, i32 noundef 1314) #7
  %arrayidx7.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 1, i32 0
  %106 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %call.i61.i, ptr %arrayidx7.i, align 4
  %107 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hci.i.i, align 8
  %read8.i.1.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %read8.i.1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8.i.1.i, align 4
  %call.i61.1.i = tail call zeroext i8 %110(ptr noundef %rtwdev, i32 noundef 1360) #7
  %arrayidx7.1.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %call.i61.1.i, ptr %arrayidx7.1.i, align 1
  %112 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i, align 8
  %read8.i.2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %read8.i.2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read8.i.2.i, align 4
  %call.i61.2.i = tail call zeroext i8 %115(ptr noundef %rtwdev, i32 noundef 1361) #7
  %arrayidx7.2.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %call.i61.2.i, ptr %arrayidx7.2.i, align 2
  %117 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i, align 8
  %read32.i63.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %118, i32 0, i32 13
  %119 = ptrtoint ptr %read32.i63.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32.i63.i, align 4
  %call.i64.i = tail call i32 %120(ptr noundef %rtwdev, i32 noundef 64) #7
  %mac32.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 2
  %121 = ptrtoint ptr %mac32.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call.i64.i, ptr %mac32.i, align 4
  %122 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %123, i32 0, i32 13
  %124 = ptrtoint ptr %read32.i66.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i66.i, align 4
  %call.i67.i = tail call i32 %125(ptr noundef %rtwdev, i32 noundef 3076) #7
  %arrayidx25.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 0
  %126 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call.i67.i, ptr %arrayidx25.i, align 4
  %127 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.1.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %128, i32 0, i32 13
  %129 = ptrtoint ptr %read32.i66.1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read32.i66.1.i, align 4
  %call.i67.1.i = tail call i32 %130(ptr noundef %rtwdev, i32 noundef 3080) #7
  %arrayidx25.1.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 1
  %131 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call.i67.1.i, ptr %arrayidx25.1.i, align 4
  %132 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %133, i32 0, i32 13
  %134 = ptrtoint ptr %read32.i66.2.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32.i66.2.i, align 4
  %call.i67.2.i = tail call i32 %135(ptr noundef %rtwdev, i32 noundef 2164) #7
  %arrayidx25.2.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 2
  %136 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call.i67.2.i, ptr %arrayidx25.2.i, align 4
  %137 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.3.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %138, i32 0, i32 13
  %139 = ptrtoint ptr %read32.i66.3.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read32.i66.3.i, align 4
  %call.i67.3.i = tail call i32 %140(ptr noundef %rtwdev, i32 noundef 2920) #7
  %arrayidx25.3.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 3
  %141 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call.i67.3.i, ptr %arrayidx25.3.i, align 4
  %142 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %143, i32 0, i32 13
  %144 = ptrtoint ptr %read32.i66.4.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read32.i66.4.i, align 4
  %call.i67.4.i = tail call i32 %145(ptr noundef %rtwdev, i32 noundef 2924) #7
  %arrayidx25.4.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 4
  %146 = ptrtoint ptr %arrayidx25.4.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call.i67.4.i, ptr %arrayidx25.4.i, align 4
  %147 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %148, i32 0, i32 13
  %149 = ptrtoint ptr %read32.i66.5.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read32.i66.5.i, align 4
  %call.i67.5.i = tail call i32 %150(ptr noundef %rtwdev, i32 noundef 2160) #7
  %arrayidx25.5.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 5
  %151 = ptrtoint ptr %arrayidx25.5.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call.i67.5.i, ptr %arrayidx25.5.i, align 4
  %152 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.6.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %153, i32 0, i32 13
  %154 = ptrtoint ptr %read32.i66.6.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read32.i66.6.i, align 4
  %call.i67.6.i = tail call i32 %155(ptr noundef %rtwdev, i32 noundef 2144) #7
  %arrayidx25.6.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 6
  %156 = ptrtoint ptr %arrayidx25.6.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call.i67.6.i, ptr %arrayidx25.6.i, align 4
  %157 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %158, i32 0, i32 13
  %159 = ptrtoint ptr %read32.i66.7.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read32.i66.7.i, align 4
  %call.i67.7.i = tail call i32 %160(ptr noundef %rtwdev, i32 noundef 2148) #7
  %arrayidx25.7.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 7
  %161 = ptrtoint ptr %arrayidx25.7.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call.i67.7.i, ptr %arrayidx25.7.i, align 4
  %162 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hci.i.i, align 8
  %read32.i66.8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %163, i32 0, i32 13
  %164 = ptrtoint ptr %read32.i66.8.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read32.i66.8.i, align 4
  %call.i67.8.i = tail call i32 %165(ptr noundef %rtwdev, i32 noundef 2564) #7
  %arrayidx25.8.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 3, i32 8
  %166 = ptrtoint ptr %arrayidx25.8.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call.i67.8.i, ptr %arrayidx25.8.i, align 4
  %167 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %168, i32 0, i32 13
  %169 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %170(ptr noundef %rtwdev, i32 noundef 3152) #7
  %conv.i201 = trunc i32 %call.i.i.i to i8
  %igia.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 8
  %171 = ptrtoint ptr %igia.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv.i201, ptr %igia.i, align 1
  %172 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i69.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %173, i32 0, i32 13
  %174 = ptrtoint ptr %read32.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %read32.i.i69.i, align 4
  %call.i.i70.i = tail call i32 %175(ptr noundef %rtwdev, i32 noundef 3160) #7
  %conv31.i = trunc i32 %call.i.i70.i to i8
  %igib.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 9
  %176 = ptrtoint ptr %igib.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv31.i, ptr %igib.i, align 2
  %177 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i.i, align 8
  %read32.i73.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %178, i32 0, i32 13
  %179 = ptrtoint ptr %read32.i73.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read32.i73.i, align 4
  %call.i74.i = tail call i32 %180(ptr noundef %rtwdev, i32 noundef 2376) #7
  %bb_sel_btg.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 6
  %181 = ptrtoint ptr %bb_sel_btg.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %call.i74.i, ptr %bb_sel_btg.i, align 4
  %arrayidx90.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 0
  %arrayidx90.1.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 1
  %arrayidx90.2.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 2
  %arrayidx90.3.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 3
  %arrayidx90.4.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 4
  %arrayidx90.5.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 5
  %arrayidx90.6.i = getelementptr inbounds [8 x i32], ptr %result, i32 3, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry
  %indvars.iv331 = phi i32 [ 0, %entry ], [ %indvars.iv.next332, %for.inc19.for.body_crit_edge ]
  %182 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i202 = getelementptr inbounds %struct.rtw_hci_ops, ptr %183, i32 0, i32 13
  %184 = ptrtoint ptr %read32.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read32.i.i.i202, align 4
  %call.i.i.i203 = tail call i32 %185(ptr noundef %rtwdev, i32 noundef 100) #7
  %or.i.i = or i32 %call.i.i.i203, -2147483648
  %186 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %187, i32 0, i32 16
  %188 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %189(ptr noundef %rtwdev, i32 noundef 100, i32 noundef %or.i.i) #7
  %190 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %191, i32 0, i32 13
  %192 = ptrtoint ptr %read32.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read32.i.i4.i, align 4
  %call.i.i5.i = tail call i32 %193(ptr noundef %rtwdev, i32 noundef 100) #7
  %shr.i.i = lshr i32 %call.i.i5.i, 24
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.27, i32 noundef %shr.i.i) #7
  %194 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i205 = getelementptr inbounds %struct.rtw_hci_ops, ptr %195, i32 0, i32 16
  %196 = ptrtoint ptr %write32.i.i205 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write32.i.i205, align 4
  tail call void %197(ptr noundef %rtwdev, i32 noundef 1988, i32 noundef 65280) #7
  %198 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hci.i.i, align 8
  %write32.i4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %199, i32 0, i32 16
  %200 = ptrtoint ptr %write32.i4.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write32.i4.i, align 4
  tail call void %201(ptr noundef %rtwdev, i32 noundef 1984, i32 noundef -1073610696) #7
  %202 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i206 = getelementptr inbounds %struct.rtw_hci_ops, ptr %203, i32 0, i32 13
  %204 = ptrtoint ptr %read32.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %read32.i.i.i206, align 4
  %call.i.i.i207 = tail call i32 %205(ptr noundef %rtwdev, i32 noundef 112) #7
  %or.i.i208 = or i32 %call.i.i.i207, 67108864
  %206 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i209 = getelementptr inbounds %struct.rtw_hci_ops, ptr %207, i32 0, i32 16
  %208 = ptrtoint ptr %write32.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write32.i.i.i209, align 4
  tail call void %209(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %or.i.i208) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv331) #7
  tail call fastcc void @rtw8723d_iqk_path_adda_on(ptr noundef %rtwdev) #7
  %210 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %211, i32 0, i32 14
  %212 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %213(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext -1) #7
  %214 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i212 = getelementptr inbounds %struct.rtw_hci_ops, ptr %215, i32 0, i32 13
  %216 = ptrtoint ptr %read32.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read32.i.i.i212, align 4
  %call.i.i.i213 = tail call i32 %217(ptr noundef %rtwdev, i32 noundef 2564) #7
  %or.i.i214 = or i32 %call.i.i.i213, 251658240
  %218 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i215 = getelementptr inbounds %struct.rtw_hci_ops, ptr %219, i32 0, i32 16
  %220 = ptrtoint ptr %write32.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write32.i.i.i215, align 4
  tail call void %221(ptr noundef %rtwdev, i32 noundef 2564, i32 noundef %or.i.i214) #7
  %222 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i216 = getelementptr inbounds %struct.rtw_hci_ops, ptr %223, i32 0, i32 16
  %224 = ptrtoint ptr %write32.i.i216 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write32.i.i216, align 4
  tail call void %225(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef 60839441) #7
  %226 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %hci.i.i, align 8
  %write32.i187.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %227, i32 0, i32 16
  %228 = ptrtoint ptr %write32.i187.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write32.i187.i, align 4
  tail call void %229(ptr noundef %rtwdev, i32 noundef 3080, i32 noundef 524516) #7
  %230 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hci.i.i, align 8
  %write32.i189.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %231, i32 0, i32 16
  %232 = ptrtoint ptr %write32.i189.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write32.i189.i, align 4
  tail call void %233(ptr noundef %rtwdev, i32 noundef 2164, i32 noundef 622871040) #7
  tail call fastcc void @rtw8723d_iqk_precfg_path(ptr noundef %rtwdev, i32 noundef 0) #7
  %arrayidx12.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331
  %arrayidx16.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 1
  %call.i = call fastcc zeroext i8 @rtw8723d_iqk_tx_path(ptr noundef %rtwdev, ptr noundef nonnull @iqk_tx_cfg, ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i)
  %cmp3.i = icmp eq i8 %call.i, 1
  br i1 %cmp3.i, label %for.body.if.then.i_crit_edge, label %if.end.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.29) #7
  %234 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i191.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %235, i32 0, i32 13
  %236 = ptrtoint ptr %read32.i.i191.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read32.i.i191.i, align 4
  %call.i.i192.i = tail call i32 %237(ptr noundef %rtwdev, i32 noundef 3732) #7
  %and.i.i = lshr i32 %call.i.i192.i, 16
  %shr.i.i217 = and i32 %and.i.i, 1023
  %238 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %shr.i.i217, ptr %arrayidx12.i, align 4
  %239 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i194.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %240, i32 0, i32 13
  %241 = ptrtoint ptr %read32.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read32.i.i194.i, align 4
  %call.i.i195.i = tail call i32 %242(ptr noundef %rtwdev, i32 noundef 3740) #7
  %and.i196.i = lshr i32 %call.i.i195.i, 16
  %shr.i197.i = and i32 %and.i196.i, 1023
  br label %for.end.i

if.end.i:                                         ; preds = %for.body
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.30) #7
  %243 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 256, ptr %arrayidx12.i, align 4
  %244 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %arrayidx16.i, align 4
  %call.1.i = call fastcc zeroext i8 @rtw8723d_iqk_tx_path(ptr noundef %rtwdev, ptr noundef nonnull @iqk_tx_cfg, ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.1.i)
  %cmp3.1.i = icmp eq i8 %call.1.i, 1
  br i1 %cmp3.1.i, label %if.end.i.if.then.i_crit_edge, label %if.end.1.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.30) #7
  %245 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 256, ptr %arrayidx12.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.1.i, %if.then.i
  %storemerge.i = phi i32 [ 0, %if.end.1.i ], [ %shr.i197.i, %if.then.i ]
  %246 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %storemerge.i, ptr %arrayidx16.i, align 4
  %arrayidx37.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 2
  %arrayidx40.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 3
  %call21.i = call fastcc zeroext i8 @rtw8723d_iqk_rx_path(ptr noundef %rtwdev, ptr noundef nonnull @iqk_tx_cfg, ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call21.i)
  %cmp23.i = icmp eq i8 %call21.i, 3
  br i1 %cmp23.i, label %for.end.i.for.end43.thread.i_crit_edge, label %if.end34.i

for.end.i.for.end43.thread.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43.thread.i

for.end43.thread.i:                               ; preds = %if.end34.i.for.end43.thread.i_crit_edge, %for.end.i.for.end43.thread.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.31) #7
  %247 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i199.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %248, i32 0, i32 13
  %249 = ptrtoint ptr %read32.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %read32.i.i199.i, align 4
  %call.i.i200.i = tail call i32 %250(ptr noundef %rtwdev, i32 noundef 3748) #7
  %and.i201.i = lshr i32 %call.i.i200.i, 16
  %shr.i202.i = and i32 %and.i201.i, 1023
  %251 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %shr.i202.i, ptr %arrayidx37.i, align 4
  %252 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i204.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %253, i32 0, i32 13
  %254 = ptrtoint ptr %read32.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read32.i.i204.i, align 4
  %call.i.i205.i = tail call i32 %255(ptr noundef %rtwdev, i32 noundef 3756) #7
  %and.i206.i = lshr i32 %call.i.i205.i, 16
  %shr.i207.i = and i32 %and.i206.i, 1023
  %256 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %shr.i207.i, ptr %arrayidx40.i, align 4
  br label %if.end48.i

if.end34.i:                                       ; preds = %for.end.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.32) #7
  %257 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 256, ptr %arrayidx37.i, align 4
  %258 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %arrayidx40.i, align 4
  %call21.1.i = call fastcc zeroext i8 @rtw8723d_iqk_rx_path(ptr noundef %rtwdev, ptr noundef nonnull @iqk_tx_cfg, ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call21.1.i)
  %cmp23.1.i = icmp eq i8 %call21.1.i, 3
  br i1 %cmp23.1.i, label %if.end34.i.for.end43.thread.i_crit_edge, label %if.end34.1.i

if.end34.i.for.end43.thread.i_crit_edge:          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43.thread.i

if.end34.1.i:                                     ; preds = %if.end34.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.32) #7
  %259 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 256, ptr %arrayidx37.i, align 4
  %260 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21.1.i)
  %cmp45.i = icmp eq i8 %call21.1.i, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.end34.1.i.if.end48.i_crit_edge

if.end34.1.i.if.end48.i_crit_edge:                ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.33) #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end34.1.i.if.end48.i_crit_edge, %for.end43.thread.i
  tail call fastcc void @rtw8723d_iqk_precfg_path(ptr noundef %rtwdev, i32 noundef 1) #7
  %arrayidx69.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 4
  %arrayidx72.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 5
  %call53.i = call fastcc zeroext i8 @rtw8723d_iqk_tx_path(ptr noundef %rtwdev, ptr noundef getelementptr inbounds ([2 x %struct.rtw_8723d_iqk_cfg], ptr @iqk_tx_cfg, i32 0, i32 1), ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call53.i)
  %cmp55.i = icmp eq i8 %call53.i, 1
  br i1 %cmp55.i, label %if.end48.i.if.then57.i_crit_edge, label %if.end66.i

if.end48.i.if.then57.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57.i

if.then57.i:                                      ; preds = %if.end66.i.if.then57.i_crit_edge, %if.end48.i.if.then57.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.34) #7
  %261 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i209.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %262, i32 0, i32 13
  %263 = ptrtoint ptr %read32.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read32.i.i209.i, align 4
  %call.i.i210.i = tail call i32 %264(ptr noundef %rtwdev, i32 noundef 3732) #7
  %and.i211.i = lshr i32 %call.i.i210.i, 16
  %shr.i212.i = and i32 %and.i211.i, 1023
  %265 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %shr.i212.i, ptr %arrayidx69.i, align 4
  %266 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i214.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %267, i32 0, i32 13
  %268 = ptrtoint ptr %read32.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %read32.i.i214.i, align 4
  %call.i.i215.i = tail call i32 %269(ptr noundef %rtwdev, i32 noundef 3740) #7
  %and.i216.i = lshr i32 %call.i.i215.i, 16
  %shr.i217.i = and i32 %and.i216.i, 1023
  br label %for.end75.i

if.end66.i:                                       ; preds = %if.end48.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.35) #7
  %270 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 256, ptr %arrayidx69.i, align 4
  %271 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %arrayidx72.i, align 4
  %call53.1.i = call fastcc zeroext i8 @rtw8723d_iqk_tx_path(ptr noundef %rtwdev, ptr noundef getelementptr inbounds ([2 x %struct.rtw_8723d_iqk_cfg], ptr @iqk_tx_cfg, i32 0, i32 1), ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call53.1.i)
  %cmp55.1.i = icmp eq i8 %call53.1.i, 1
  br i1 %cmp55.1.i, label %if.end66.i.if.then57.i_crit_edge, label %if.end66.1.i

if.end66.i.if.then57.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57.i

if.end66.1.i:                                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.35) #7
  %272 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 256, ptr %arrayidx69.i, align 4
  br label %for.end75.i

for.end75.i:                                      ; preds = %if.end66.1.i, %if.then57.i
  %storemerge247.i = phi i32 [ 0, %if.end66.1.i ], [ %shr.i217.i, %if.then57.i ]
  %273 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %storemerge247.i, ptr %arrayidx72.i, align 4
  %arrayidx96.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 6
  %arrayidx99.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv331, i32 7
  %call80.i = call fastcc zeroext i8 @rtw8723d_iqk_rx_path(ptr noundef %rtwdev, ptr noundef getelementptr inbounds ([2 x %struct.rtw_8723d_iqk_cfg], ptr @iqk_tx_cfg, i32 0, i32 1), ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call80.i)
  %cmp82.i = icmp eq i8 %call80.i, 3
  br i1 %cmp82.i, label %for.end75.i.for.end102.thread.i_crit_edge, label %if.end93.i

for.end75.i.for.end102.thread.i_crit_edge:        ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end102.thread.i

for.end102.thread.i:                              ; preds = %if.end93.i.for.end102.thread.i_crit_edge, %for.end75.i.for.end102.thread.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.36) #7
  %274 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i219.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %275, i32 0, i32 13
  %276 = ptrtoint ptr %read32.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %read32.i.i219.i, align 4
  %call.i.i220.i = tail call i32 %277(ptr noundef %rtwdev, i32 noundef 3748) #7
  %and.i221.i = lshr i32 %call.i.i220.i, 16
  %shr.i222.i = and i32 %and.i221.i, 1023
  %278 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %shr.i222.i, ptr %arrayidx96.i, align 4
  %279 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i224.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %280, i32 0, i32 13
  %281 = ptrtoint ptr %read32.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read32.i.i224.i, align 4
  %call.i.i225.i = tail call i32 %282(ptr noundef %rtwdev, i32 noundef 3756) #7
  %and.i226.i = lshr i32 %call.i.i225.i, 16
  %shr.i227.i = and i32 %and.i226.i, 1023
  %283 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %shr.i227.i, ptr %arrayidx99.i, align 4
  br label %rtw8723d_iqk_one_round.exit

if.end93.i:                                       ; preds = %for.end75.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.37) #7
  %284 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 256, ptr %arrayidx96.i, align 4
  %285 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %arrayidx99.i, align 4
  %call80.1.i = call fastcc zeroext i8 @rtw8723d_iqk_rx_path(ptr noundef %rtwdev, ptr noundef getelementptr inbounds ([2 x %struct.rtw_8723d_iqk_cfg], ptr @iqk_tx_cfg, i32 0, i32 1), ptr noundef nonnull %backup) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call80.1.i)
  %cmp82.1.i = icmp eq i8 %call80.1.i, 3
  br i1 %cmp82.1.i, label %if.end93.i.for.end102.thread.i_crit_edge, label %if.end93.1.i

if.end93.i.for.end102.thread.i_crit_edge:         ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end102.thread.i

if.end93.1.i:                                     ; preds = %if.end93.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.37) #7
  %286 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 256, ptr %arrayidx96.i, align 4
  %287 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %arrayidx99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call80.1.i)
  %cmp104.i = icmp eq i8 %call80.1.i, 0
  br i1 %cmp104.i, label %if.then106.i, label %if.end93.1.i.rtw8723d_iqk_one_round.exit_crit_edge

if.end93.1.i.rtw8723d_iqk_one_round.exit_crit_edge: ; preds = %if.end93.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_iqk_one_round.exit

if.then106.i:                                     ; preds = %if.end93.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.38) #7
  br label %rtw8723d_iqk_one_round.exit

rtw8723d_iqk_one_round.exit:                      ; preds = %if.then106.i, %if.end93.1.i.rtw8723d_iqk_one_round.exit_crit_edge, %for.end102.thread.i
  %288 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i229.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %289, i32 0, i32 13
  %290 = ptrtoint ptr %read32.i.i229.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %read32.i.i229.i, align 4
  %call.i.i230.i = tail call i32 %291(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i231.i = and i32 %call.i.i230.i, 255
  %292 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i232.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %293, i32 0, i32 16
  %294 = ptrtoint ptr %write32.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %write32.i.i232.i, align 4
  tail call void %295(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i231.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %296(i32 noundef 214748000) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv331)
  %cmp5.not = icmp eq i32 %indvars.iv331, 0
  br i1 %cmp5.not, label %rtw8723d_iqk_one_round.exit.if.end_crit_edge, label %rtw8723d_iqk_one_round.exit.for.body.i_crit_edge

rtw8723d_iqk_one_round.exit.for.body.i_crit_edge: ; preds = %rtw8723d_iqk_one_round.exit
  br label %for.body.i

rtw8723d_iqk_one_round.exit.if.end_crit_edge:     ; preds = %rtw8723d_iqk_one_round.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rtw8723d_iqk_one_round.exit.for.body.i_crit_edge
  %i.084.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %rtw8723d_iqk_one_round.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i32], ptr @iqk_adda_regs, i32 0, i32 %i.084.i
  %297 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [16 x i32], ptr %backup, i32 0, i32 %i.084.i
  %299 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx1.i, align 4
  %301 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i227 = getelementptr inbounds %struct.rtw_hci_ops, ptr %302, i32 0, i32 16
  %303 = ptrtoint ptr %write32.i.i227 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %write32.i.i227, align 4
  tail call void %304(ptr noundef %rtwdev, i32 noundef %298, i32 noundef %300) #7
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %rtw8723d_iqk_restore_regs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rtw8723d_iqk_restore_regs.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx7.i, align 4
  %307 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %308, i32 0, i32 14
  %309 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write8.i.i, align 4
  tail call void %310(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext %306) #7
  %311 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx7.1.i, align 1
  %313 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %hci.i.i, align 8
  %write8.i.1.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %314, i32 0, i32 14
  %315 = ptrtoint ptr %write8.i.1.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %write8.i.1.i, align 4
  tail call void %316(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %312) #7
  %317 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx7.2.i, align 2
  %319 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %hci.i.i, align 8
  %write8.i.2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %320, i32 0, i32 14
  %321 = ptrtoint ptr %write8.i.2.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %write8.i.2.i, align 4
  tail call void %322(ptr noundef %rtwdev, i32 noundef 1361, i8 noundef zeroext %318) #7
  %323 = ptrtoint ptr %mac32.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %mac32.i, align 4
  %325 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hci.i.i, align 8
  %write32.i58.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %326, i32 0, i32 16
  %327 = ptrtoint ptr %write32.i58.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %write32.i58.i, align 4
  tail call void %328(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %324) #7
  %329 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx25.i, align 4
  %331 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %332, i32 0, i32 16
  %333 = ptrtoint ptr %write32.i60.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %write32.i60.i, align 4
  tail call void %334(ptr noundef %rtwdev, i32 noundef 3076, i32 noundef %330) #7
  %335 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx25.1.i, align 4
  %337 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.1.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %338, i32 0, i32 16
  %339 = ptrtoint ptr %write32.i60.1.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write32.i60.1.i, align 4
  tail call void %340(ptr noundef %rtwdev, i32 noundef 3080, i32 noundef %336) #7
  %341 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx25.2.i, align 4
  %343 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %344, i32 0, i32 16
  %345 = ptrtoint ptr %write32.i60.2.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %write32.i60.2.i, align 4
  tail call void %346(ptr noundef %rtwdev, i32 noundef 2164, i32 noundef %342) #7
  %347 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx25.3.i, align 4
  %349 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.3.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %350, i32 0, i32 16
  %351 = ptrtoint ptr %write32.i60.3.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %write32.i60.3.i, align 4
  tail call void %352(ptr noundef %rtwdev, i32 noundef 2920, i32 noundef %348) #7
  %353 = ptrtoint ptr %arrayidx25.4.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx25.4.i, align 4
  %355 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %356, i32 0, i32 16
  %357 = ptrtoint ptr %write32.i60.4.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %write32.i60.4.i, align 4
  tail call void %358(ptr noundef %rtwdev, i32 noundef 2924, i32 noundef %354) #7
  %359 = ptrtoint ptr %arrayidx25.5.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx25.5.i, align 4
  %361 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %362, i32 0, i32 16
  %363 = ptrtoint ptr %write32.i60.5.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %write32.i60.5.i, align 4
  tail call void %364(ptr noundef %rtwdev, i32 noundef 2160, i32 noundef %360) #7
  %365 = ptrtoint ptr %arrayidx25.6.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx25.6.i, align 4
  %367 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.6.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %368, i32 0, i32 16
  %369 = ptrtoint ptr %write32.i60.6.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %write32.i60.6.i, align 4
  tail call void %370(ptr noundef %rtwdev, i32 noundef 2144, i32 noundef %366) #7
  %371 = ptrtoint ptr %arrayidx25.7.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx25.7.i, align 4
  %373 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %374, i32 0, i32 16
  %375 = ptrtoint ptr %write32.i60.7.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %write32.i60.7.i, align 4
  tail call void %376(ptr noundef %rtwdev, i32 noundef 2148, i32 noundef %372) #7
  %377 = ptrtoint ptr %arrayidx25.8.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx25.8.i, align 4
  %379 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %hci.i.i, align 8
  %write32.i60.8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %380, i32 0, i32 16
  %381 = ptrtoint ptr %write32.i60.8.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write32.i60.8.i, align 4
  tail call void %382(ptr noundef %rtwdev, i32 noundef 2564, i32 noundef %378) #7
  %383 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i220 = getelementptr inbounds %struct.rtw_hci_ops, ptr %384, i32 0, i32 13
  %385 = ptrtoint ptr %read32.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %read32.i.i.i220, align 4
  %call.i.i.i221 = tail call i32 %386(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and21.i.i = and i32 %call.i.i.i221, -256
  %or.i.i222 = or i32 %and21.i.i, 80
  %387 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i223 = getelementptr inbounds %struct.rtw_hci_ops, ptr %388, i32 0, i32 16
  %389 = ptrtoint ptr %write32.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %write32.i.i.i223, align 4
  tail call void %390(ptr noundef %rtwdev, i32 noundef 3152, i32 noundef %or.i.i222) #7
  %391 = ptrtoint ptr %igia.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %igia.i, align 1
  %conv.i225 = zext i8 %392 to i32
  %393 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i62.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %394, i32 0, i32 13
  %395 = ptrtoint ptr %read32.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %read32.i.i62.i, align 4
  %call.i.i63.i = tail call i32 %396(ptr noundef %rtwdev, i32 noundef 3152) #7
  %and21.i64.i = and i32 %call.i.i63.i, -256
  %or.i65.i = or i32 %and21.i64.i, %conv.i225
  %397 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i66.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %398, i32 0, i32 16
  %399 = ptrtoint ptr %write32.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %write32.i.i66.i, align 4
  tail call void %400(ptr noundef %rtwdev, i32 noundef 3152, i32 noundef %or.i65.i) #7
  %401 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i68.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %402, i32 0, i32 13
  %403 = ptrtoint ptr %read32.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %read32.i.i68.i, align 4
  %call.i.i69.i = tail call i32 %404(ptr noundef %rtwdev, i32 noundef 3160) #7
  %and21.i70.i = and i32 %call.i.i69.i, -256
  %or.i71.i = or i32 %and21.i70.i, 80
  %405 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i72.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %406, i32 0, i32 16
  %407 = ptrtoint ptr %write32.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %write32.i.i72.i, align 4
  tail call void %408(ptr noundef %rtwdev, i32 noundef 3160, i32 noundef %or.i71.i) #7
  %409 = ptrtoint ptr %igib.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %igib.i, align 2
  %conv26.i = zext i8 %410 to i32
  %411 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i74.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %412, i32 0, i32 13
  %413 = ptrtoint ptr %read32.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %read32.i.i74.i, align 4
  %call.i.i75.i = tail call i32 %414(ptr noundef %rtwdev, i32 noundef 3160) #7
  %and21.i76.i = and i32 %call.i.i75.i, -256
  %or.i78.i = or i32 %and21.i76.i, %conv26.i
  %415 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i79.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %416, i32 0, i32 16
  %417 = ptrtoint ptr %write32.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %write32.i.i79.i, align 4
  tail call void %418(ptr noundef %rtwdev, i32 noundef 3160, i32 noundef %or.i78.i) #7
  %419 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %hci.i.i, align 8
  %write32.i81.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %420, i32 0, i32 16
  %421 = ptrtoint ptr %write32.i81.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %write32.i81.i, align 4
  tail call void %422(ptr noundef %rtwdev, i32 noundef 3632, i32 noundef 16813056) #7
  %423 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %hci.i.i, align 8
  %write32.i83.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %424, i32 0, i32 16
  %425 = ptrtoint ptr %write32.i83.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %write32.i83.i, align 4
  tail call void %426(ptr noundef %rtwdev, i32 noundef 3636, i32 noundef 16813056) #7
  br label %if.end

if.end:                                           ; preds = %rtw8723d_iqk_restore_regs.exit, %rtw8723d_iqk_one_round.exit.if.end_crit_edge
  %427 = ptrtoint ptr %lte_gnt.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %lte_gnt.i, align 4
  %429 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i230 = getelementptr inbounds %struct.rtw_hci_ops, ptr %430, i32 0, i32 16
  %431 = ptrtoint ptr %write32.i.i230 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %write32.i.i230, align 4
  tail call void %432(ptr noundef %rtwdev, i32 noundef 1988, i32 noundef %428) #7
  %433 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %hci.i.i, align 8
  %write32.i5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %434, i32 0, i32 16
  %435 = ptrtoint ptr %write32.i5.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %write32.i5.i, align 4
  tail call void %436(ptr noundef %rtwdev, i32 noundef 1984, i32 noundef -1072758728) #7
  %437 = ptrtoint ptr %lte_path.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %lte_path.i, align 4
  %439 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %hci.i.i, align 8
  %write32.i7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %440, i32 0, i32 16
  %441 = ptrtoint ptr %write32.i7.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %write32.i7.i, align 4
  tail call void %442(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %438) #7
  %443 = ptrtoint ptr %btg_sel.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %btg_sel.i, align 4
  %445 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i234 = getelementptr inbounds %struct.rtw_hci_ops, ptr %446, i32 0, i32 14
  %447 = ptrtoint ptr %write8.i.i234 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %write8.i.i234, align 4
  tail call void %448(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %444) #7
  %449 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i235 = getelementptr inbounds %struct.rtw_hci_ops, ptr %450, i32 0, i32 13
  %451 = ptrtoint ptr %read32.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %read32.i.i.i235, align 4
  %call.i.i.i236 = tail call i32 %452(ptr noundef %rtwdev, i32 noundef 100) #7
  %shr.i.i237 = lshr i32 %call.i.i.i236, 24
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.69, i32 noundef %shr.i.i237) #7
  br i1 %cmp5.not, label %if.end.for.inc19_crit_edge, label %for.body12.lr.ph

if.end.for.inc19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc19

for.body12.lr.ph:                                 ; preds = %if.end
  %453 = trunc i32 %indvars.iv331 to i8
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next, %for.inc.for.body12_crit_edge ]
  %arrayidx1.i238 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 0
  %454 = ptrtoint ptr %arrayidx1.i238 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx1.i238, align 4
  %shl.i.i.i = shl i32 %455, 22
  %shr.i.i.i = ashr exact i32 %shl.i.i.i, 22
  %456 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx12.i, align 4
  %shl.i.i4.i = shl i32 %457, 22
  %shr.i.i5.i = ashr exact i32 %shl.i.i4.i, 22
  %sub.i = sub nsw i32 %shr.i.i.i, %shr.i.i5.i
  %458 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %458)
  %cmp8.i = icmp ugt i32 %458, 5
  %spec.select.i = zext i1 %cmp8.i to i32
  %arrayidx1.1.i239 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 1
  %459 = ptrtoint ptr %arrayidx1.1.i239 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %arrayidx1.1.i239, align 4
  %shl.i.i.1.i = shl i32 %460, 22
  %shr.i.i.1.i = ashr exact i32 %shl.i.i.1.i, 22
  %461 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %arrayidx16.i, align 4
  %shl.i.i4.1.i = shl i32 %462, 22
  %shr.i.i5.1.i = ashr exact i32 %shl.i.i4.1.i, 22
  %sub.1.i = sub nsw i32 %shr.i.i.1.i, %shr.i.i5.1.i
  %463 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %463)
  %cmp8.1.i = icmp ult i32 %463, 6
  %or39.1.i = or i32 %spec.select.i, 2
  %bitmap.1.1.i = select i1 %cmp8.1.i, i32 %spec.select.i, i32 %or39.1.i
  %arrayidx1.2.i240 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 2
  %464 = ptrtoint ptr %arrayidx1.2.i240 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx1.2.i240, align 4
  %shl.i.i.2.i = shl i32 %465, 22
  %shr.i.i.2.i = ashr exact i32 %shl.i.i.2.i, 22
  %466 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx37.i, align 4
  %shl.i.i4.2.i = shl i32 %467, 22
  %shr.i.i5.2.i = ashr exact i32 %shl.i.i4.2.i, 22
  %sub.2.i = sub nsw i32 %shr.i.i.2.i, %shr.i.i5.2.i
  %468 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %468)
  %cmp8.2.i = icmp ult i32 %468, 6
  br i1 %cmp8.2.i, label %for.body12.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.body12.for.inc.2.i_crit_edge:                 ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap.1.1.i)
  %tobool.not.2.i = icmp eq i32 %bitmap.1.1.i, 0
  br i1 %tobool.not.2.i, label %if.then11.2.i, label %if.else37.2.i

if.then11.2.i:                                    ; preds = %land.lhs.true.2.i
  %arrayidx17.2.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 3
  %469 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %arrayidx17.2.i, align 4
  %add18.2.i = sub i32 0, %470
  call void @__sanitizer_cov_trace_cmp4(i32 %465, i32 %add18.2.i)
  %cmp19.2.i = icmp eq i32 %465, %add18.2.i
  br i1 %cmp19.2.i, label %if.then11.2.i.for.inc.2.i_crit_edge, label %if.else.2.i

if.then11.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then11.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %if.then11.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %471 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx40.i, align 4
  %add29.2.i = sub i32 0, %472
  call void @__sanitizer_cov_trace_cmp4(i32 %467, i32 %add29.2.i)
  %cmp30.2.i = icmp eq i32 %467, %add29.2.i
  %473 = trunc i32 %indvars.iv to i8
  %spec.select25.i = select i1 %cmp30.2.i, i8 %473, i8 -1
  %spec.select26.i = select i1 %cmp30.2.i, i32 0, i32 4
  br label %for.inc.2.i

if.else37.2.i:                                    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %or39.2.i = or i32 %bitmap.1.1.i, 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else37.2.i, %if.else.2.i, %if.then11.2.i.for.inc.2.i_crit_edge, %for.body12.for.inc.2.i_crit_edge
  %candidate.sroa.0.2.i = phi i8 [ -1, %for.body12.for.inc.2.i_crit_edge ], [ -1, %if.else37.2.i ], [ %453, %if.then11.2.i.for.inc.2.i_crit_edge ], [ %spec.select25.i, %if.else.2.i ]
  %bitmap.1.2.i = phi i32 [ %bitmap.1.1.i, %for.body12.for.inc.2.i_crit_edge ], [ %or39.2.i, %if.else37.2.i ], [ 0, %if.then11.2.i.for.inc.2.i_crit_edge ], [ %spec.select26.i, %if.else.2.i ]
  %arrayidx1.3.i241 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 3
  %474 = ptrtoint ptr %arrayidx1.3.i241 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx1.3.i241, align 4
  %shl.i.i.3.i = shl i32 %475, 22
  %shr.i.i.3.i = ashr exact i32 %shl.i.i.3.i, 22
  %476 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx40.i, align 4
  %shl.i.i4.3.i = shl i32 %477, 22
  %shr.i.i5.3.i = ashr exact i32 %shl.i.i4.3.i, 22
  %sub.3.i = sub nsw i32 %shr.i.i.3.i, %shr.i.i5.3.i
  %478 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %478)
  %cmp8.3.i = icmp ult i32 %478, 6
  %or39.3.i = or i32 %bitmap.1.2.i, 8
  %spec.select27.i = select i1 %cmp8.3.i, i32 %bitmap.1.2.i, i32 %or39.3.i
  %arrayidx1.4.i242 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 4
  %479 = ptrtoint ptr %arrayidx1.4.i242 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %arrayidx1.4.i242, align 4
  %shl.i.i.4.i = shl i32 %480, 22
  %shr.i.i.4.i = ashr exact i32 %shl.i.i.4.i, 22
  %481 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %arrayidx69.i, align 4
  %shl.i.i4.4.i = shl i32 %482, 22
  %shr.i.i5.4.i = ashr exact i32 %shl.i.i4.4.i, 22
  %sub.4.i = sub nsw i32 %shr.i.i.4.i, %shr.i.i5.4.i
  %483 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %483)
  %cmp8.4.i = icmp ult i32 %483, 6
  %or39.4.i = or i32 %spec.select27.i, 16
  %bitmap.1.4.i = select i1 %cmp8.4.i, i32 %spec.select27.i, i32 %or39.4.i
  %arrayidx1.5.i243 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 5
  %484 = ptrtoint ptr %arrayidx1.5.i243 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx1.5.i243, align 4
  %shl.i.i.5.i = shl i32 %485, 22
  %shr.i.i.5.i = ashr exact i32 %shl.i.i.5.i, 22
  %486 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx72.i, align 4
  %shl.i.i4.5.i = shl i32 %487, 22
  %shr.i.i5.5.i = ashr exact i32 %shl.i.i4.5.i, 22
  %sub.5.i = sub nsw i32 %shr.i.i.5.i, %shr.i.i5.5.i
  %488 = tail call i32 @llvm.abs.i32(i32 %sub.5.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %488)
  %cmp8.5.i = icmp ult i32 %488, 6
  %or39.5.i = or i32 %bitmap.1.4.i, 32
  %bitmap.1.5.i = select i1 %cmp8.5.i, i32 %bitmap.1.4.i, i32 %or39.5.i
  %arrayidx1.6.i244 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 6
  %489 = ptrtoint ptr %arrayidx1.6.i244 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %arrayidx1.6.i244, align 4
  %shl.i.i.6.i = shl i32 %490, 22
  %shr.i.i.6.i = ashr exact i32 %shl.i.i.6.i, 22
  %491 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %arrayidx96.i, align 4
  %shl.i.i4.6.i = shl i32 %492, 22
  %shr.i.i5.6.i = ashr exact i32 %shl.i.i4.6.i, 22
  %sub.6.i = sub nsw i32 %shr.i.i.6.i, %shr.i.i5.6.i
  %493 = tail call i32 @llvm.abs.i32(i32 %sub.6.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %493)
  %cmp8.6.i = icmp ult i32 %493, 6
  br i1 %cmp8.6.i, label %for.inc.2.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.2.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap.1.5.i)
  %tobool.not.6.i = icmp eq i32 %bitmap.1.5.i, 0
  br i1 %tobool.not.6.i, label %if.then11.6.i, label %if.else37.6.i

if.then11.6.i:                                    ; preds = %land.lhs.true.6.i
  %arrayidx17.6.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 7
  %494 = ptrtoint ptr %arrayidx17.6.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx17.6.i, align 4
  %add18.6.i = sub i32 0, %495
  call void @__sanitizer_cov_trace_cmp4(i32 %490, i32 %add18.6.i)
  %cmp19.6.i = icmp eq i32 %490, %add18.6.i
  br i1 %cmp19.6.i, label %if.then11.6.i.for.inc.6.i_crit_edge, label %if.else.6.i

if.then11.6.i.for.inc.6.i_crit_edge:              ; preds = %if.then11.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

if.else.6.i:                                      ; preds = %if.then11.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %496 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx99.i, align 4
  %add29.6.i = sub i32 0, %497
  call void @__sanitizer_cov_trace_cmp4(i32 %492, i32 %add29.6.i)
  %cmp30.6.i = icmp eq i32 %492, %add29.6.i
  %498 = trunc i32 %indvars.iv to i8
  %spec.select28.i = select i1 %cmp30.6.i, i8 %498, i8 -1
  %spec.select29.i = select i1 %cmp30.6.i, i32 0, i32 64
  br label %for.inc.6.i

if.else37.6.i:                                    ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %or39.6.i = or i32 %bitmap.1.5.i, 64
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.else37.6.i, %if.else.6.i, %if.then11.6.i.for.inc.6.i_crit_edge, %for.inc.2.i.for.inc.6.i_crit_edge
  %candidate.sroa.12.2.i = phi i8 [ -1, %for.inc.2.i.for.inc.6.i_crit_edge ], [ -1, %if.else37.6.i ], [ %453, %if.then11.6.i.for.inc.6.i_crit_edge ], [ %spec.select28.i, %if.else.6.i ]
  %bitmap.1.6.i = phi i32 [ %bitmap.1.5.i, %for.inc.2.i.for.inc.6.i_crit_edge ], [ %or39.6.i, %if.else37.6.i ], [ 0, %if.then11.6.i.for.inc.6.i_crit_edge ], [ %spec.select29.i, %if.else.6.i ]
  %arrayidx1.7.i245 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 7
  %499 = ptrtoint ptr %arrayidx1.7.i245 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %arrayidx1.7.i245, align 4
  %shl.i.i.7.i = shl i32 %500, 22
  %shr.i.i.7.i = ashr exact i32 %shl.i.i.7.i, 22
  %501 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx99.i, align 4
  %shl.i.i4.7.i = shl i32 %502, 22
  %shr.i.i5.7.i = ashr exact i32 %shl.i.i4.7.i, 22
  %sub.7.i = sub nsw i32 %shr.i.i.7.i, %shr.i.i5.7.i
  %503 = tail call i32 @llvm.abs.i32(i32 %sub.7.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %503)
  %cmp8.7.i = icmp ult i32 %503, 6
  br i1 %cmp8.7.i, label %for.inc.7.i, label %for.inc.7.thread.i

for.inc.7.thread.i:                               ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %or39.7.i = or i32 %bitmap.1.6.i, 128
  br label %for.cond71.preheader.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap.1.6.i)
  %cmp41.not.i = icmp eq i32 %bitmap.1.6.i, 0
  br i1 %cmp41.not.i, label %for.body46.preheader.i, label %for.inc.7.i.for.cond71.preheader.i_crit_edge

for.inc.7.i.for.cond71.preheader.i_crit_edge:     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond71.preheader.i

for.body46.preheader.i:                           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %candidate.sroa.0.2.i)
  %cmp48.i = icmp eq i8 %candidate.sroa.0.2.i, -1
  br i1 %cmp48.i, label %for.inc67.i, label %for.inc67.i.thread

for.cond71.preheader.i:                           ; preds = %for.inc.7.i.for.cond71.preheader.i_crit_edge, %for.inc.7.thread.i
  %bitmap.1.724.i = phi i32 [ %or39.7.i, %for.inc.7.thread.i ], [ %bitmap.1.6.i, %for.inc.7.i.for.cond71.preheader.i_crit_edge ]
  %and82.i = and i32 %bitmap.1.724.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.end85.1.i, label %for.cond71.preheader.i.for.inc91.1.i_crit_edge

for.cond71.preheader.i.for.inc91.1.i_crit_edge:   ; preds = %for.cond71.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc91.1.i

for.inc67.i:                                      ; preds = %for.body46.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %candidate.sroa.12.2.i)
  %cmp48.1.i = icmp eq i8 %candidate.sroa.12.2.i, -1
  br i1 %cmp48.1.i, label %if.then14, label %for.inc67.i.for.body57.lr.ph.1.i_crit_edge

for.inc67.i.for.body57.lr.ph.1.i_crit_edge:       ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57.lr.ph.1.i

for.inc67.i.thread:                               ; preds = %for.body46.preheader.i
  %idxprom59.i = zext i8 %candidate.sroa.0.2.i to i32
  %arrayidx61.i = getelementptr [8 x i32], ptr %result, i32 %idxprom59.i, i32 0
  %504 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx61.i, align 4
  %506 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %505, ptr %arrayidx90.i, align 4
  %arrayidx61.1.i = getelementptr [8 x i32], ptr %result, i32 %idxprom59.i, i32 1
  %507 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx61.1.i, align 4
  %509 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %508, ptr %arrayidx90.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %candidate.sroa.12.2.i)
  %cmp48.1.i340 = icmp eq i8 %candidate.sroa.12.2.i, -1
  br i1 %cmp48.1.i340, label %for.inc67.i.thread.for.inc_crit_edge, label %for.inc67.i.thread.for.body57.lr.ph.1.i_crit_edge

for.inc67.i.thread.for.body57.lr.ph.1.i_crit_edge: ; preds = %for.inc67.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57.lr.ph.1.i

for.inc67.i.thread.for.inc_crit_edge:             ; preds = %for.inc67.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body57.lr.ph.1.i:                             ; preds = %for.inc67.i.thread.for.body57.lr.ph.1.i_crit_edge, %for.inc67.i.for.body57.lr.ph.1.i_crit_edge
  %idxprom59.1.i = zext i8 %candidate.sroa.12.2.i to i32
  %arrayidx61.120.i = getelementptr [8 x i32], ptr %result, i32 %idxprom59.1.i, i32 4
  %510 = ptrtoint ptr %arrayidx61.120.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx61.120.i, align 4
  %512 = ptrtoint ptr %arrayidx90.4.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %511, ptr %arrayidx90.4.i, align 4
  %arrayidx61.1.1.i = getelementptr [8 x i32], ptr %result, i32 %idxprom59.1.i, i32 5
  br label %cleanup.sink.split.i

if.end85.1.i:                                     ; preds = %for.cond71.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %513 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %455, ptr %arrayidx90.i, align 4
  %514 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %460, ptr %arrayidx90.1.i, align 4
  br label %for.inc91.1.i

for.inc91.1.i:                                    ; preds = %if.end85.1.i, %for.cond71.preheader.i.for.inc91.1.i_crit_edge
  %and82.2.i = and i32 %bitmap.1.724.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.2.i)
  %tobool83.not.2.i = icmp eq i32 %and82.2.i, 0
  br i1 %tobool83.not.2.i, label %if.end85.3.i, label %for.inc91.1.i.for.inc91.3.i_crit_edge

for.inc91.1.i.for.inc91.3.i_crit_edge:            ; preds = %for.inc91.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc91.3.i

if.end85.3.i:                                     ; preds = %for.inc91.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %515 = ptrtoint ptr %arrayidx1.2.i240 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %arrayidx1.2.i240, align 4
  %517 = ptrtoint ptr %arrayidx90.2.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %516, ptr %arrayidx90.2.i, align 4
  %518 = ptrtoint ptr %arrayidx1.3.i241 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %arrayidx1.3.i241, align 4
  %520 = ptrtoint ptr %arrayidx90.3.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %519, ptr %arrayidx90.3.i, align 4
  br label %for.inc91.3.i

for.inc91.3.i:                                    ; preds = %if.end85.3.i, %for.inc91.1.i.for.inc91.3.i_crit_edge
  %and82.4.i = and i32 %bitmap.1.724.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.4.i)
  %tobool83.not.4.i = icmp eq i32 %and82.4.i, 0
  br i1 %tobool83.not.4.i, label %if.end85.5.i, label %for.inc91.3.i.for.inc91.5.i_crit_edge

for.inc91.3.i.for.inc91.5.i_crit_edge:            ; preds = %for.inc91.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc91.5.i

if.end85.5.i:                                     ; preds = %for.inc91.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %521 = ptrtoint ptr %arrayidx1.4.i242 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %arrayidx1.4.i242, align 4
  %523 = ptrtoint ptr %arrayidx90.4.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %522, ptr %arrayidx90.4.i, align 4
  %524 = ptrtoint ptr %arrayidx1.5.i243 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %arrayidx1.5.i243, align 4
  %526 = ptrtoint ptr %arrayidx90.5.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %525, ptr %arrayidx90.5.i, align 4
  br label %for.inc91.5.i

for.inc91.5.i:                                    ; preds = %if.end85.5.i, %for.inc91.3.i.for.inc91.5.i_crit_edge
  %and82.6.i = and i32 %bitmap.1.724.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.6.i)
  %tobool83.not.6.i = icmp eq i32 %and82.6.i, 0
  br i1 %tobool83.not.6.i, label %if.end85.7.i, label %for.inc91.5.i.for.inc_crit_edge

for.inc91.5.i.for.inc_crit_edge:                  ; preds = %for.inc91.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end85.7.i:                                     ; preds = %for.inc91.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %527 = ptrtoint ptr %arrayidx1.6.i244 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %arrayidx1.6.i244, align 4
  %529 = ptrtoint ptr %arrayidx90.6.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %528, ptr %arrayidx90.6.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end85.7.i, %for.body57.lr.ph.1.i
  %arrayidx1.7.sink.i = phi ptr [ %arrayidx1.7.i245, %if.end85.7.i ], [ %arrayidx61.1.1.i, %for.body57.lr.ph.1.i ]
  %.sink30.i = phi i32 [ 7, %if.end85.7.i ], [ 5, %for.body57.lr.ph.1.i ]
  %530 = ptrtoint ptr %arrayidx1.7.sink.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %arrayidx1.7.sink.i, align 4
  %arrayidx90.7.i = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink30.i
  %532 = ptrtoint ptr %arrayidx90.7.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 %531, ptr %arrayidx90.7.i, align 4
  br label %for.inc

if.then14:                                        ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #9
  %533 = trunc i32 %indvars.iv to i8
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.16, i32 noundef %indvars.iv, i32 noundef %indvars.iv331, i32 noundef %indvars.iv) #7
  br label %iqk_done

for.inc:                                          ; preds = %cleanup.sink.split.i, %for.inc91.5.i.for.inc_crit_edge, %for.inc67.i.thread.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %indvars.iv331
  br i1 %exitcond.not, label %for.inc.for.inc19_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.inc.for.inc19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc19

for.inc19:                                        ; preds = %for.inc.for.inc19_crit_edge, %if.end.for.inc19_crit_edge
  %indvars.iv.next332 = add nuw nsw i32 %indvars.iv331, 1
  %exitcond333.not = icmp eq i32 %indvars.iv.next332, 3
  br i1 %exitcond333.not, label %for.body30.preheader, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body30.preheader:                             ; preds = %for.inc19
  %534 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx90.i, align 4
  %536 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx90.1.i, align 4
  %add.1 = add i32 %537, %535
  %538 = ptrtoint ptr %arrayidx90.2.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %arrayidx90.2.i, align 4
  %add.2 = add i32 %539, %add.1
  %540 = ptrtoint ptr %arrayidx90.3.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %arrayidx90.3.i, align 4
  %add.3 = add i32 %541, %add.2
  %542 = ptrtoint ptr %arrayidx90.4.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx90.4.i, align 4
  %add.4 = add i32 %543, %add.3
  %544 = ptrtoint ptr %arrayidx90.5.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %arrayidx90.5.i, align 4
  %add.5 = add i32 %545, %add.4
  %546 = ptrtoint ptr %arrayidx90.6.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %arrayidx90.6.i, align 4
  %add.6 = add i32 %547, %add.5
  %arrayidx31.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %548 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %arrayidx31.7, align 4
  %add.7 = sub i32 0, %add.6
  call void @__sanitizer_cov_trace_cmp4(i32 %549, i32 %add.7)
  %cmp35.not = icmp eq i32 %549, %add.7
  br i1 %cmp35.not, label %cleanup, label %for.body30.preheader.iqk_done_crit_edge

for.body30.preheader.iqk_done_crit_edge:          ; preds = %for.body30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqk_done

cleanup:                                          ; preds = %for.body30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1458, i32 noundef 9, ptr noundef nonnull @.str.17) #7
  br label %out

iqk_done:                                         ; preds = %for.body30.preheader.iqk_done_crit_edge, %if.then14
  %final_candidate.1 = phi i8 [ %533, %if.then14 ], [ 3, %for.body30.preheader.iqk_done_crit_edge ]
  %idxprom57 = zext i8 %final_candidate.1 to i32
  %arrayidx58 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %idxprom57
  %550 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %arrayidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %551)
  %cmp.i = icmp eq i32 %551, 0
  br i1 %cmp.i, label %iqk_done.rtw8723d_iqk_fill_s1_matrix.exit_crit_edge, label %if.end.i256

iqk_done.rtw8723d_iqk_fill_s1_matrix.exit_crit_edge: ; preds = %iqk_done
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_iqk_fill_s1_matrix.exit

if.end.i256:                                      ; preds = %iqk_done
  %552 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i247 = getelementptr inbounds %struct.rtw_hci_ops, ptr %553, i32 0, i32 13
  %554 = ptrtoint ptr %read32.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %read32.i.i.i247, align 4
  %call.i.i.i248 = tail call i32 %555(ptr noundef %rtwdev, i32 noundef 3200) #7
  %shr.i.i249 = lshr i32 %call.i.i.i248, 22
  %556 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %arrayidx58, align 4
  %shl.i.i.i250 = shl i32 %557, 22
  %shr.i.i.i251 = ashr exact i32 %shl.i.i.i250, 22
  %mul.i.i = mul nsw i32 %shr.i.i.i251, %shr.i.i249
  %shr1.i.i = ashr i32 %mul.i.i, 8
  %558 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i49.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %559, i32 0, i32 13
  %560 = ptrtoint ptr %read32.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %read32.i.i49.i, align 4
  %call.i.i50.i = tail call i32 %561(ptr noundef %rtwdev, i32 noundef 3200) #7
  %and21.i.i252 = and i32 %call.i.i50.i, -1024
  %and22.i.i = and i32 %shr1.i.i, 1023
  %or.i.i253 = or i32 %and22.i.i, %and21.i.i252
  %562 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i254 = getelementptr inbounds %struct.rtw_hci_ops, ptr %563, i32 0, i32 16
  %564 = ptrtoint ptr %write32.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %write32.i.i.i254, align 4
  tail call void %565(ptr noundef %rtwdev, i32 noundef 3200, i32 noundef %or.i.i253) #7
  %566 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i52.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %567, i32 0, i32 13
  %568 = ptrtoint ptr %read32.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %read32.i.i52.i, align 4
  %call.i.i53.i = tail call i32 %569(ptr noundef %rtwdev, i32 noundef 3148) #7
  %and21.i54.i = and i32 %call.i.i53.i, 2147483647
  %570 = shl i32 %mul.i.i, 24
  %and.i47.i = and i32 %570, -2147483648
  %or.i55.i = or i32 %and21.i54.i, %and.i47.i
  %571 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i56.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %572, i32 0, i32 16
  %573 = ptrtoint ptr %write32.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %write32.i.i56.i, align 4
  tail call void %574(ptr noundef %rtwdev, i32 noundef 3148, i32 noundef %or.i55.i) #7
  %arrayidx4.i255 = getelementptr i32, ptr %arrayidx58, i32 1
  %575 = ptrtoint ptr %arrayidx4.i255 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %arrayidx4.i255, align 4
  %shl.i.i57.i = shl i32 %576, 22
  %shr.i.i58.i = ashr exact i32 %shl.i.i57.i, 22
  %mul.i59.i = mul nsw i32 %shr.i.i58.i, %shr.i.i249
  %shr1.i62.i = ashr i32 %mul.i59.i, 8
  %577 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i64.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %578, i32 0, i32 13
  %579 = ptrtoint ptr %read32.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %read32.i.i64.i, align 4
  %call.i.i65.i = tail call i32 %580(ptr noundef %rtwdev, i32 noundef 3220) #7
  %and21.i66.i = and i32 %call.i.i65.i, 268435455
  %581 = shl i32 %shr1.i62.i, 22
  %582 = and i32 %581, -268435456
  %or.i68.i = or i32 %582, %and21.i66.i
  %583 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i69.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %584, i32 0, i32 16
  %585 = ptrtoint ptr %write32.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %write32.i.i69.i, align 4
  tail call void %586(ptr noundef %rtwdev, i32 noundef 3220, i32 noundef %or.i68.i) #7
  %587 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i71.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %588, i32 0, i32 13
  %589 = ptrtoint ptr %read32.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %read32.i.i71.i, align 4
  %call.i.i72.i = tail call i32 %590(ptr noundef %rtwdev, i32 noundef 3200) #7
  %and21.i73.i = and i32 %call.i.i72.i, -4128769
  %and7.i = shl nsw i32 %shr1.i62.i, 16
  %shl.i74.i = and i32 %and7.i, 4128768
  %or.i76.i = or i32 %and21.i73.i, %shl.i74.i
  %591 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i77.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %592, i32 0, i32 16
  %593 = ptrtoint ptr %write32.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %write32.i.i77.i, align 4
  tail call void %594(ptr noundef %rtwdev, i32 noundef 3200, i32 noundef %or.i76.i) #7
  %595 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i79.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %596, i32 0, i32 13
  %597 = ptrtoint ptr %read32.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %read32.i.i79.i, align 4
  %call.i.i80.i = tail call i32 %598(ptr noundef %rtwdev, i32 noundef 3148) #7
  %and21.i81.i = and i32 %call.i.i80.i, -536870913
  %599 = shl i32 %mul.i59.i, 22
  %shl.i82.i = and i32 %599, 536870912
  %or.i84.i = or i32 %and21.i81.i, %shl.i82.i
  %600 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i85.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %601, i32 0, i32 16
  %602 = ptrtoint ptr %write32.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %write32.i.i85.i, align 4
  tail call void %603(ptr noundef %rtwdev, i32 noundef 3148, i32 noundef %or.i84.i) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.70, i32 noundef %shr.i.i.i251, i32 noundef %shr1.i.i, i32 noundef %shr.i.i249) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.71, i32 noundef %shr.i.i58.i, i32 noundef %shr1.i62.i) #7
  %arrayidx8.i = getelementptr i32, ptr %arrayidx58, i32 2
  %604 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %605)
  %cmp9.i = icmp eq i32 %605, 0
  br i1 %cmp9.i, label %if.end.i256.rtw8723d_iqk_fill_s1_matrix.exit_crit_edge, label %if.end11.i

if.end.i256.rtw8723d_iqk_fill_s1_matrix.exit_crit_edge: ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_iqk_fill_s1_matrix.exit

if.end11.i:                                       ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #9
  %606 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i87.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %607, i32 0, i32 13
  %608 = ptrtoint ptr %read32.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %read32.i.i87.i, align 4
  %call.i.i88.i = tail call i32 %609(ptr noundef %rtwdev, i32 noundef 3092) #7
  %and21.i89.i = and i32 %call.i.i88.i, -1024
  %and22.i90.i = and i32 %605, 1023
  %or.i91.i = or i32 %and21.i89.i, %and22.i90.i
  %610 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i92.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %611, i32 0, i32 16
  %612 = ptrtoint ptr %write32.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %write32.i.i92.i, align 4
  tail call void %613(ptr noundef %rtwdev, i32 noundef 3092, i32 noundef %or.i91.i) #7
  %arrayidx13.i = getelementptr i32, ptr %arrayidx58, i32 3
  %614 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %arrayidx13.i, align 4
  %616 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i94.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %617, i32 0, i32 13
  %618 = ptrtoint ptr %read32.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %read32.i.i94.i, align 4
  %call.i.i95.i = tail call i32 %619(ptr noundef %rtwdev, i32 noundef 3092) #7
  %and21.i96.i = and i32 %call.i.i95.i, -64513
  %and14.i = shl i32 %615, 10
  %shl.i97.i = and i32 %and14.i, 64512
  %or.i99.i = or i32 %and21.i96.i, %shl.i97.i
  %620 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i100.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %621, i32 0, i32 16
  %622 = ptrtoint ptr %write32.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %write32.i.i100.i, align 4
  tail call void %623(ptr noundef %rtwdev, i32 noundef 3092, i32 noundef %or.i99.i) #7
  %624 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i102.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %625, i32 0, i32 13
  %626 = ptrtoint ptr %read32.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %read32.i.i102.i, align 4
  %call.i.i103.i = tail call i32 %627(ptr noundef %rtwdev, i32 noundef 3232) #7
  %and21.i104.i = and i32 %call.i.i103.i, 268435455
  %628 = shl i32 %615, 22
  %and17.i = and i32 %628, -268435456
  %or.i106.i = or i32 %and21.i104.i, %and17.i
  %629 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i107.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %630, i32 0, i32 16
  %631 = ptrtoint ptr %write32.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %write32.i.i107.i, align 4
  tail call void %632(ptr noundef %rtwdev, i32 noundef 3232, i32 noundef %or.i106.i) #7
  br label %rtw8723d_iqk_fill_s1_matrix.exit

rtw8723d_iqk_fill_s1_matrix.exit:                 ; preds = %if.end11.i, %if.end.i256.rtw8723d_iqk_fill_s1_matrix.exit_crit_edge, %iqk_done.rtw8723d_iqk_fill_s1_matrix.exit_crit_edge
  %arrayidx.i257 = getelementptr i32, ptr %arrayidx58, i32 4
  %633 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %arrayidx.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %634)
  %cmp.i258 = icmp eq i32 %634, 0
  br i1 %cmp.i258, label %rtw8723d_iqk_fill_s1_matrix.exit.rtw8723d_iqk_fill_s0_matrix.exit_crit_edge, label %if.end.i276

rtw8723d_iqk_fill_s1_matrix.exit.rtw8723d_iqk_fill_s0_matrix.exit_crit_edge: ; preds = %rtw8723d_iqk_fill_s1_matrix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_iqk_fill_s0_matrix.exit

if.end.i276:                                      ; preds = %rtw8723d_iqk_fill_s1_matrix.exit
  %635 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i260 = getelementptr inbounds %struct.rtw_hci_ops, ptr %636, i32 0, i32 13
  %637 = ptrtoint ptr %read32.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %read32.i.i.i260, align 4
  %call.i.i.i261 = tail call i32 %638(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and.i.i262 = lshr i32 %call.i.i.i261, 13
  %shr.i.i263 = and i32 %and.i.i262, 1023
  %639 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %arrayidx.i257, align 4
  %shl.i.i.i264 = shl i32 %640, 22
  %shr.i.i.i265 = ashr exact i32 %shl.i.i.i264, 22
  %mul.i.i266 = mul nsw i32 %shr.i.i.i265, %shr.i.i263
  %shr4.i.i = lshr i32 %mul.i.i266, 7
  %and.i31.i = and i32 %shr4.i.i, 1
  %641 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i33.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %642, i32 0, i32 13
  %643 = ptrtoint ptr %read32.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %read32.i.i33.i, align 4
  %call.i.i34.i = tail call i32 %644(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i.i267 = and i32 %call.i.i34.i, -2047
  %and22.i.i268 = and i32 %shr4.i.i, 2046
  %or.i.i269 = or i32 %and22.i.i268, %and21.i.i267
  %645 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i270 = getelementptr inbounds %struct.rtw_hci_ops, ptr %646, i32 0, i32 16
  %647 = ptrtoint ptr %write32.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %write32.i.i.i270, align 4
  tail call void %648(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %or.i.i269) #7
  %649 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i36.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %650, i32 0, i32 13
  %651 = ptrtoint ptr %read32.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %read32.i.i36.i, align 4
  %call.i.i37.i = tail call i32 %652(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i38.i = and i32 %call.i.i37.i, -2
  %or.i40.i = or i32 %and21.i38.i, %and.i31.i
  %653 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i41.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %654, i32 0, i32 16
  %655 = ptrtoint ptr %write32.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %write32.i.i41.i, align 4
  tail call void %656(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %or.i40.i) #7
  %arrayidx4.i271 = getelementptr i32, ptr %arrayidx58, i32 5
  %657 = ptrtoint ptr %arrayidx4.i271 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %arrayidx4.i271, align 4
  %shl.i.i42.i = shl i32 %658, 22
  %shr.i.i43.i = ashr exact i32 %shl.i.i42.i, 22
  %mul.i44.i = mul nsw i32 %shr.i.i43.i, %shr.i.i263
  %shr4.i45.i = lshr i32 %mul.i44.i, 7
  %and.i46.i = and i32 %shr4.i45.i, 1
  %659 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i49.i272 = getelementptr inbounds %struct.rtw_hci_ops, ptr %660, i32 0, i32 13
  %661 = ptrtoint ptr %read32.i.i49.i272 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %read32.i.i49.i272, align 4
  %call.i.i50.i273 = tail call i32 %662(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i51.i = and i32 %call.i.i50.i273, -2047
  %and22.i53.i = and i32 %shr4.i45.i, 2046
  %or.i54.i = or i32 %and22.i53.i, %and21.i51.i
  %663 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i55.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %664, i32 0, i32 16
  %665 = ptrtoint ptr %write32.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %write32.i.i55.i, align 4
  tail call void %666(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i54.i) #7
  %667 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i57.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %668, i32 0, i32 13
  %669 = ptrtoint ptr %read32.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %read32.i.i57.i, align 4
  %call.i.i58.i = tail call i32 %670(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i59.i = and i32 %call.i.i58.i, -2
  %or.i61.i = or i32 %and21.i59.i, %and.i46.i
  %671 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i62.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %672, i32 0, i32 16
  %673 = ptrtoint ptr %write32.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %write32.i.i62.i, align 4
  tail call void %674(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i61.i) #7
  %arrayidx7.i274 = getelementptr i32, ptr %arrayidx58, i32 6
  %675 = ptrtoint ptr %arrayidx7.i274 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %arrayidx7.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %676)
  %cmp8.i275 = icmp eq i32 %676, 0
  br i1 %cmp8.i275, label %if.end.i276.rtw8723d_iqk_fill_s0_matrix.exit_crit_edge, label %if.end10.i

if.end.i276.rtw8723d_iqk_fill_s0_matrix.exit_crit_edge: ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_iqk_fill_s0_matrix.exit

if.end10.i:                                       ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #9
  %677 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i64.i277 = getelementptr inbounds %struct.rtw_hci_ops, ptr %678, i32 0, i32 13
  %679 = ptrtoint ptr %read32.i.i64.i277 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %read32.i.i64.i277, align 4
  %call.i.i65.i278 = tail call i32 %680(ptr noundef %rtwdev, i32 noundef 3288) #7
  %and21.i66.i279 = and i32 %call.i.i65.i278, -1024
  %and22.i67.i = and i32 %676, 1023
  %or.i68.i280 = or i32 %and21.i66.i279, %and22.i67.i
  %681 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i69.i281 = getelementptr inbounds %struct.rtw_hci_ops, ptr %682, i32 0, i32 16
  %683 = ptrtoint ptr %write32.i.i69.i281 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %write32.i.i69.i281, align 4
  tail call void %684(ptr noundef %rtwdev, i32 noundef 3288, i32 noundef %or.i68.i280) #7
  %arrayidx12.i282 = getelementptr i32, ptr %arrayidx58, i32 7
  %685 = ptrtoint ptr %arrayidx12.i282 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %arrayidx12.i282, align 4
  %687 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i71.i283 = getelementptr inbounds %struct.rtw_hci_ops, ptr %688, i32 0, i32 13
  %689 = ptrtoint ptr %read32.i.i71.i283 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %read32.i.i71.i283, align 4
  %call.i.i72.i284 = tail call i32 %690(ptr noundef %rtwdev, i32 noundef 3288) #7
  %and21.i73.i285 = and i32 %call.i.i72.i284, -4190209
  %shl.i74.i286 = shl i32 %686, 12
  %and22.i75.i = and i32 %shl.i74.i286, 4190208
  %or.i76.i287 = or i32 %and21.i73.i285, %and22.i75.i
  %691 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i77.i288 = getelementptr inbounds %struct.rtw_hci_ops, ptr %692, i32 0, i32 16
  %693 = ptrtoint ptr %write32.i.i77.i288 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %write32.i.i77.i288, align 4
  tail call void %694(ptr noundef %rtwdev, i32 noundef 3288, i32 noundef %or.i76.i287) #7
  br label %rtw8723d_iqk_fill_s0_matrix.exit

rtw8723d_iqk_fill_s0_matrix.exit:                 ; preds = %if.end10.i, %if.end.i276.rtw8723d_iqk_fill_s0_matrix.exit_crit_edge, %rtw8723d_iqk_fill_s1_matrix.exit.rtw8723d_iqk_fill_s0_matrix.exit_crit_edge
  %695 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %arrayidx58, align 4
  %iqk = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57
  %result66 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1
  %697 = ptrtoint ptr %result66 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 %696, ptr %result66, align 4
  %arrayidx69 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %idxprom57, i32 1
  %698 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %arrayidx69, align 4
  %s1_y = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1, i32 1
  %700 = ptrtoint ptr %s1_y to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 %699, ptr %s1_y, align 4
  %arrayidx74 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %idxprom57, i32 4
  %701 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %arrayidx74, align 4
  %s0_x = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1, i32 2
  %703 = ptrtoint ptr %s0_x to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %702, ptr %s0_x, align 4
  %arrayidx79 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %idxprom57, i32 5
  %704 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %arrayidx79, align 4
  %s0_y = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1, i32 3
  %706 = ptrtoint ptr %s0_y to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %705, ptr %s0_y, align 4
  %707 = ptrtoint ptr %iqk to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 1, ptr %iqk, align 4
  br label %out

out:                                              ; preds = %rtw8723d_iqk_fill_s0_matrix.exit, %cleanup
  %final_candidate.2 = phi i8 [ %final_candidate.1, %rtw8723d_iqk_fill_s0_matrix.exit ], [ -1, %cleanup ]
  %708 = ptrtoint ptr %bb_sel_btg.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %bb_sel_btg.i, align 4
  %710 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %711, i32 0, i32 16
  %712 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %write32.i, align 4
  tail call void %713(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %709) #7
  %conv83 = zext i8 %final_candidate.2 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %conv83) #7
  %714 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %result, align 4
  %arrayidx95 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 1
  %716 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx95, align 4
  %arrayidx98 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 2
  %718 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %arrayidx98, align 4
  %arrayidx101 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 3
  %720 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %arrayidx101, align 4
  %arrayidx104 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 4
  %722 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %arrayidx104, align 4
  %arrayidx107 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 5
  %724 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %arrayidx107, align 4
  %arrayidx110 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 6
  %726 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %arrayidx110, align 4
  %arrayidx113 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 0, i32 7
  %728 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %arrayidx113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %final_candidate.2)
  %cmp116 = icmp eq i8 %final_candidate.2, 0
  %spec.select = select i1 %cmp116, ptr @.str.20, ptr @.str.21
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %715, i32 noundef %717, i32 noundef %719, i32 noundef %721, i32 noundef %723, i32 noundef %725, i32 noundef %727, i32 noundef %729, ptr noundef nonnull %spec.select) #7
  %arrayidx91.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1
  %730 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %arrayidx91.1, align 4
  %arrayidx95.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 1
  %732 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %arrayidx95.1, align 4
  %arrayidx98.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 2
  %734 = ptrtoint ptr %arrayidx98.1 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %arrayidx98.1, align 4
  %arrayidx101.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 3
  %736 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %arrayidx101.1, align 4
  %arrayidx104.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 4
  %738 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %arrayidx104.1, align 4
  %arrayidx107.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 5
  %740 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %arrayidx107.1, align 4
  %arrayidx110.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 6
  %742 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %arrayidx110.1, align 4
  %arrayidx113.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 1, i32 7
  %744 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %arrayidx113.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %final_candidate.2)
  %cmp116.1 = icmp eq i8 %final_candidate.2, 1
  %746 = select i1 %cmp116.1, ptr @.str.20, ptr @.str.21
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %731, i32 noundef %733, i32 noundef %735, i32 noundef %737, i32 noundef %739, i32 noundef %741, i32 noundef %743, i32 noundef %745, ptr noundef nonnull %746) #7
  %arrayidx91.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2
  %747 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %arrayidx91.2, align 4
  %arrayidx95.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 1
  %749 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %arrayidx95.2, align 4
  %arrayidx98.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 2
  %751 = ptrtoint ptr %arrayidx98.2 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %arrayidx98.2, align 4
  %arrayidx101.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 3
  %753 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %arrayidx101.2, align 4
  %arrayidx104.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 4
  %755 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %arrayidx104.2, align 4
  %arrayidx107.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 5
  %757 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %arrayidx107.2, align 4
  %arrayidx110.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 6
  %759 = ptrtoint ptr %arrayidx110.2 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %arrayidx110.2, align 4
  %arrayidx113.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 2, i32 7
  %761 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %arrayidx113.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %final_candidate.2)
  %cmp116.2 = icmp eq i8 %final_candidate.2, 2
  %763 = select i1 %cmp116.2, ptr @.str.20, ptr @.str.21
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.19, i32 noundef 2, i32 noundef %748, i32 noundef %750, i32 noundef %752, i32 noundef %754, i32 noundef %756, i32 noundef %758, i32 noundef %760, i32 noundef %762, ptr noundef nonnull %763) #7
  %764 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %arrayidx90.i, align 4
  %766 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %arrayidx90.1.i, align 4
  %768 = ptrtoint ptr %arrayidx90.2.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %arrayidx90.2.i, align 4
  %770 = ptrtoint ptr %arrayidx90.3.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %arrayidx90.3.i, align 4
  %772 = ptrtoint ptr %arrayidx90.4.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %arrayidx90.4.i, align 4
  %774 = ptrtoint ptr %arrayidx90.5.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %arrayidx90.5.i, align 4
  %776 = ptrtoint ptr %arrayidx90.6.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %arrayidx90.6.i, align 4
  %arrayidx113.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %778 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %arrayidx113.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %final_candidate.2)
  %cmp116.3 = icmp eq i8 %final_candidate.2, 3
  %780 = select i1 %cmp116.3, ptr @.str.20, ptr @.str.21
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.19, i32 noundef 3, i32 noundef %765, i32 noundef %767, i32 noundef %769, i32 noundef %771, i32 noundef %773, i32 noundef %775, i32 noundef %777, i32 noundef %779, ptr noundef nonnull %780) #7
  %781 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %hci.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %782, i32 0, i32 13
  %783 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %read32.i, align 4
  %call.i290 = tail call i32 %784(ptr noundef %rtwdev, i32 noundef 3200) #7
  %785 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %hci.i.i, align 8
  %read32.i292 = getelementptr inbounds %struct.rtw_hci_ops, ptr %786, i32 0, i32 13
  %787 = ptrtoint ptr %read32.i292 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %read32.i292, align 4
  %call.i293 = tail call i32 %788(ptr noundef %rtwdev, i32 noundef 3220) #7
  %789 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %hci.i.i, align 8
  %read32.i295 = getelementptr inbounds %struct.rtw_hci_ops, ptr %790, i32 0, i32 13
  %791 = ptrtoint ptr %read32.i295 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %read32.i295, align 4
  %call.i296 = tail call i32 %792(ptr noundef %rtwdev, i32 noundef 3092) #7
  %793 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %hci.i.i, align 8
  %read32.i298 = getelementptr inbounds %struct.rtw_hci_ops, ptr %794, i32 0, i32 13
  %795 = ptrtoint ptr %read32.i298 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %read32.i298, align 4
  %call.i299 = tail call i32 %796(ptr noundef %rtwdev, i32 noundef 3232) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.22, i32 noundef %call.i290, i32 noundef %call.i293, i32 noundef %call.i296, i32 noundef %call.i299) #7
  %797 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %hci.i.i, align 8
  %read32.i301 = getelementptr inbounds %struct.rtw_hci_ops, ptr %798, i32 0, i32 13
  %799 = ptrtoint ptr %read32.i301 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %read32.i301, align 4
  %call.i302 = tail call i32 %800(ptr noundef %rtwdev, i32 noundef 3280) #7
  %801 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %hci.i.i, align 8
  %read32.i304 = getelementptr inbounds %struct.rtw_hci_ops, ptr %802, i32 0, i32 13
  %803 = ptrtoint ptr %read32.i304 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %read32.i304, align 4
  %call.i305 = tail call i32 %804(ptr noundef %rtwdev, i32 noundef 3284) #7
  %805 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %hci.i.i, align 8
  %read32.i307 = getelementptr inbounds %struct.rtw_hci_ops, ptr %806, i32 0, i32 13
  %807 = ptrtoint ptr %read32.i307 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %read32.i307, align 4
  %call.i308 = tail call i32 %808(ptr noundef %rtwdev, i32 noundef 3288) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.23, i32 noundef %call.i302, i32 noundef %call.i305, i32 noundef %call.i308) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.24) #7
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %backup) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_phy_cck_pd_set(ptr noundef %rtwdev, i8 noundef zeroext %new_lvl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cck_pd_lv = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 44
  %0 = ptrtoint ptr %cck_pd_lv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cck_pd_lv, align 4
  %conv = zext i8 %1 to i32
  %conv3 = zext i8 %new_lvl to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef %conv3) #7
  %2 = ptrtoint ptr %cck_pd_lv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cck_pd_lv, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %new_lvl)
  %cmp = icmp eq i8 %3, %new_lvl
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %7(ptr noundef %rtwdev, i32 noundef 2604) #7
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
  %arrayidx21 = getelementptr [5 x i8], ptr @__const.rtw8723d_phy_cck_pd_set.pd, i32 0, i32 %conv3
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %cck_fa_avg = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 45
  %14 = ptrtoint ptr %cck_fa_avg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cck_fa_avg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 8, ptr noundef nonnull @.str.73, i32 noundef %conv16, i32 noundef %conv3, i32 noundef 1, i32 noundef %add, i32 noundef %conv22, i32 noundef %15) #7
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
  %call.i.i66 = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 2568) #7
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
  tail call void %25(ptr noundef %rtwdev, i32 noundef 2568, i32 noundef %or.i) #7
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
  %call.i.i69 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 2728) #7
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
  tail call void %35(ptr noundef %rtwdev, i32 noundef 2728, i32 noundef %or.i73) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_pwr_track(ptr noundef %rtwdev) #0 align 64 {
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
  %3 = load i8, ptr %pwr_trk_triggered, align 1, !range !278
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
  br i1 %cmp.i, label %if.end6.rtw8723d_phy_pwrtrack.exit_crit_edge, label %if.end.i

if.end6.rtw8723d_phy_pwrtrack.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_phy_pwrtrack.exit

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
  %call4.i = call zeroext i1 @rtw_phy_pwrtrack_need_iqk(ptr noundef %rtwdev) #7
  br i1 %call4.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rtw8723d_lck(ptr noundef %rtwdev) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %pwr_trk_init_trigger.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 35
  %19 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pwr_trk_init_trigger.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pwr_trk_init_trigger.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pwr_trk_init_trigger.i, align 4
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end6.i
  %call10.i = call zeroext i1 @rtw_phy_pwrtrack_thermal_changed(ptr noundef %rtwdev, i8 noundef zeroext %conv3.i, i8 noundef zeroext 0) #7
  br i1 %call10.i, label %if.else.i.if.end13.i_crit_edge, label %if.else.i.iqk.i_crit_edge

if.else.i.iqk.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqk.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i.if.end13.i_crit_edge, %if.then8.i
  %call14.i = call zeroext i8 @rtw_phy_pwrtrack_get_delta(ptr noundef %rtwdev, i8 noundef zeroext 0) #7
  %22 = call i8 @llvm.umin.i8(i8 %call14.i, i8 29) #7
  %rf_path_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %23 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rf_path_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp2480.not.i = icmp eq i8 %24, 0
  br i1 %cmp2480.not.i, label %if.end13.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %tx_rate2.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 25
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %txagc_remnant_ofdm.i62.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 38
  %txagc_remnant_cck.i71.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 37
  %hci.i.i.i72.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %current_channel.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 31, i32 %indvars.iv.i
  %25 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx26.i, align 1
  %27 = trunc i32 %indvars.iv.i to i8
  %call27.i = call signext i8 @rtw_phy_pwrtrack_get_pwridx(ptr noundef %rtwdev, ptr noundef nonnull %swing_table.i, i8 noundef zeroext %27, i8 noundef zeroext 0, i8 noundef zeroext %22) #7
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %call27.i)
  %cmp30.i = icmp eq i8 %26, %call27.i
  br i1 %cmp30.i, label %for.body.i.cleanup.i_crit_edge, label %if.end33.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end33.i:                                       ; preds = %for.body.i
  %28 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call27.i, ptr %arrayidx26.i, align 1
  %29 = ptrtoint ptr %tx_rate2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_rate2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %30)
  %31 = icmp ult i8 %30, 20
  br i1 %31, label %switch.lookup, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i = zext i8 %30 to i32
  %32 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.74, i32 noundef %conv.i.i.i) #10
  br label %rtw8723d_pwrtrack_get_limit_ofdm.exit.i.i

switch.lookup:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = sext i8 %30 to i32
  %switch.gep = getelementptr inbounds [20 x i8], ptr @switch.table.rtw8723d_pwr_track, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %35)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %rtw8723d_pwrtrack_get_limit_ofdm.exit.i.i

rtw8723d_pwrtrack_get_limit_ofdm.exit.i.i:        ; preds = %switch.lookup, %do.end.i.i.i
  %limit_ofdm.0.i.i.i = phi i8 [ 30, %do.end.i.i.i ], [ %switch.load, %switch.lookup ]
  %36 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx26.i, align 1
  %add.i.i = add i8 %37, 28
  %conv10.i.i = sext i8 %add.i.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i.i, i8 %limit_ofdm.0.i.i.i)
  %cmp.i.i = icmp sgt i8 %add.i.i, %limit_ofdm.0.i.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %rtw8723d_pwrtrack_get_limit_ofdm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i8 %add.i.i, %limit_ofdm.0.i.i.i
  br label %if.end21.i.i

if.else.i.i:                                      ; preds = %rtw8723d_pwrtrack_get_limit_ofdm.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i.i)
  %cmp17.i.i = icmp slt i8 %add.i.i, 0
  br i1 %cmp17.i.i, label %if.else31.thread.i.i, label %if.else.i.i.if.end21.i.i_crit_edge

if.else.i.i.if.end21.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.else31.thread.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %txagc_remnant_ofdm.i62.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %add.i.i, ptr %txagc_remnant_ofdm.i62.i.i, align 1
  call fastcc void @rtw8723d_set_iqk_matrix(ptr noundef %rtwdev, i8 noundef signext 0, i8 noundef zeroext 0) #7
  call fastcc void @rtw8723d_set_iqk_matrix(ptr noundef %rtwdev, i8 noundef signext 0, i8 noundef zeroext 1) #7
  br label %if.then35.i.i

if.end21.i.i:                                     ; preds = %if.else.i.i.if.end21.i.i_crit_edge, %if.then.i.i
  %storemerge.i = phi i8 [ %sub.i.i, %if.then.i.i ], [ 0, %if.else.i.i.if.end21.i.i_crit_edge ]
  %add.sink80.i.i = phi i8 [ %limit_ofdm.0.i.i.i, %if.then.i.i ], [ %add.i.i, %if.else.i.i.if.end21.i.i_crit_edge ]
  %39 = ptrtoint ptr %txagc_remnant_ofdm.i62.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge.i, ptr %txagc_remnant_ofdm.i62.i.i, align 1
  call fastcc void @rtw8723d_set_iqk_matrix(ptr noundef %rtwdev, i8 noundef signext %add.sink80.i.i, i8 noundef zeroext 0) #7
  call fastcc void @rtw8723d_set_iqk_matrix(ptr noundef %rtwdev, i8 noundef signext %add.sink80.i.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %add.i.i)
  %cmp24.i.i = icmp sgt i8 %add.i.i, 40
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.else31.i.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub29.i.i = add nsw i8 %37, -12
  %40 = ptrtoint ptr %txagc_remnant_cck.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %sub29.i.i, ptr %txagc_remnant_cck.i71.i.i, align 4
  %41 = ptrtoint ptr %hci.i.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i.i72.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %44(ptr noundef %rtwdev, i32 noundef 2740) #7
  %or.i.i.i.i = or i32 %call.i.i.i.i.i, 2047
  br label %rtw8723d_pwrtrack_set.exit.i

if.else31.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i.i)
  %cmp33.i.i = icmp slt i8 %add.i.i, 0
  br i1 %cmp33.i.i, label %if.else31.i.i.if.then35.i.i_crit_edge, label %if.else36.i.i

if.else31.i.i.if.then35.i.i_crit_edge:            ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.else31.i.i.if.then35.i.i_crit_edge, %if.else31.thread.i.i
  %45 = ptrtoint ptr %txagc_remnant_cck.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add.i.i, ptr %txagc_remnant_cck.i71.i.i, align 4
  %46 = ptrtoint ptr %hci.i.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i.i72.i.i, align 8
  %read32.i.i.i66.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %read32.i.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i.i.i66.i.i, align 4
  %call.i.i.i67.i.i = call i32 %49(ptr noundef %rtwdev, i32 noundef 2740) #7
  %and21.i.i68.i.i = and i32 %call.i.i.i67.i.i, -2048
  %or.i.i69.i.i = or i32 %and21.i.i68.i.i, 205
  br label %rtw8723d_pwrtrack_set.exit.i

if.else36.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %txagc_remnant_cck.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %txagc_remnant_cck.i71.i.i, align 4
  %arrayidx.i.i.i = getelementptr [41 x i32], ptr @rtw8723d_cck_swing_table, i32 0, i32 %conv10.i.i
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i, align 4
  %53 = ptrtoint ptr %hci.i.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i.i72.i.i, align 8
  %read32.i.i.i73.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %read32.i.i.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read32.i.i.i73.i.i, align 4
  %call.i.i.i74.i.i = call i32 %56(ptr noundef %rtwdev, i32 noundef 2740) #7
  %and21.i.i75.i.i = and i32 %call.i.i.i74.i.i, -2048
  %and22.i.i.i.i = and i32 %52, 2047
  %or.i.i76.i.i = or i32 %and21.i.i75.i.i, %and22.i.i.i.i
  br label %rtw8723d_pwrtrack_set.exit.i

rtw8723d_pwrtrack_set.exit.i:                     ; preds = %if.else36.i.i, %if.then35.i.i, %if.then26.i.i
  %or.i.i69.sink.i.i = phi i32 [ %or.i.i69.i.i, %if.then35.i.i ], [ %or.i.i76.i.i, %if.else36.i.i ], [ %or.i.i.i.i, %if.then26.i.i ]
  %57 = ptrtoint ptr %hci.i.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i.i72.i.i, align 8
  %write32.i.i.i70.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %write32.i.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i.i.i70.i.i, align 4
  call void %60(ptr noundef %rtwdev, i32 noundef 2740, i32 noundef %or.i.i69.sink.i.i) #7
  %61 = ptrtoint ptr %current_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %current_channel.i.i, align 1
  call void @rtw_phy_set_tx_power_level(ptr noundef %rtwdev, i8 noundef zeroext %62) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %rtw8723d_pwrtrack_set.exit.i, %for.body.i.cleanup.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %63 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rf_path_num.i, align 2
  %65 = zext i8 %64 to i32
  %cmp24.i = icmp ult i32 %indvars.iv.next.i, %65
  br i1 %cmp24.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  %66 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip.i.i, align 4
  %pwr_track_tbl.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %67, i32 0, i32 56
  %68 = ptrtoint ptr %pwr_track_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pwr_track_tbl.i.i, align 4
  %thermal_avg.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 28
  %70 = ptrtoint ptr %thermal_avg.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %thermal_avg.i.i, align 1
  %72 = ptrtoint ptr %thermal_meter.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %thermal_meter.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp.i78.i = icmp ugt i8 %71, %73
  %pwrtrk_xtal_p.i.i = getelementptr inbounds %struct.rtw_pwr_track_tbl, ptr %69, i32 0, i32 13
  %pwrtrk_xtal_n.i.i = getelementptr inbounds %struct.rtw_pwr_track_tbl, ptr %69, i32 0, i32 12
  %pwrtrk_xtal.0.in.i.i = select i1 %cmp.i78.i, ptr %pwrtrk_xtal_p.i.i, ptr %pwrtrk_xtal_n.i.i
  %74 = ptrtoint ptr %pwrtrk_xtal.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %pwrtrk_xtal.0.i.i = load ptr, ptr %pwrtrk_xtal.0.in.i.i, align 4
  %crystal_cap.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 12
  %75 = ptrtoint ptr %crystal_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %crystal_cap.i.i, align 1
  %77 = and i8 %76, 63
  %idxprom10.i.i = zext i8 %22 to i32
  %arrayidx11.i.i = getelementptr i8, ptr %pwrtrk_xtal.0.i.i, i32 %idxprom10.i.i
  %78 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx11.i.i, align 1
  %add.i79.i = add i8 %77, %79
  %80 = call i8 @llvm.smax.i8(i8 %add.i79.i, i8 0) #7
  %81 = call i8 @llvm.umin.i8(i8 %80, i8 63) #7
  %82 = zext i8 %81 to i32
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %83 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %86(ptr noundef %rtwdev, i32 noundef 44) #7
  %and21.i.i.i = and i32 %call.i.i.i.i, -16773121
  %shl.i.i.i = mul nuw nsw i32 %82, 266240
  %or.i.i.i = or i32 %shl.i.i.i, %and21.i.i.i
  %87 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %88, i32 0, i32 16
  %89 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i.i.i.i, align 4
  call void %90(ptr noundef %rtwdev, i32 noundef 44, i32 noundef %or.i.i.i) #7
  br label %iqk.i

iqk.i:                                            ; preds = %for.end.i, %if.else.i.iqk.i_crit_edge
  br i1 %call4.i, label %if.then39.i, label %iqk.i.rtw8723d_phy_pwrtrack.exit_crit_edge

iqk.i.rtw8723d_phy_pwrtrack.exit_crit_edge:       ; preds = %iqk.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw8723d_phy_pwrtrack.exit

if.then39.i:                                      ; preds = %iqk.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtw8723d_phy_calibration(ptr noundef %rtwdev) #7
  br label %rtw8723d_phy_pwrtrack.exit

rtw8723d_phy_pwrtrack.exit:                       ; preds = %if.then39.i, %iqk.i.rtw8723d_phy_pwrtrack.exit_crit_edge, %if.end6.rtw8723d_phy_pwrtrack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %swing_table.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rtw8723d_phy_pwrtrack.exit, %if.then4
  %.sink = phi i8 [ 0, %rtw8723d_phy_pwrtrack.exit ], [ 1, %if.then4 ]
  %91 = ptrtoint ptr %pwr_trk_triggered to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %.sink, ptr %pwr_trk_triggered, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_coex_cfg_init(ptr noundef %rtwdev) #0 align 64 {
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
  %read8.i.i7 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i.i7, align 4
  %call.i.i8 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 1936) #7
  %12 = and i8 %call.i.i8, -64
  %13 = or i8 %12, 5
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i9 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %write8.i.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8.i.i9, align 4
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
  %call.i.i11 = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 64) #7
  %or.i12 = or i32 %call.i.i11, 32
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i12) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i14 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %read32.i.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i14, align 4
  %call.i.i15 = tail call i32 %33(ptr noundef %rtwdev, i32 noundef 64) #7
  %or.i16 = or i32 %call.i.i15, 512
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i17 = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %write32.i.i17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i17, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or.i16) #7
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i19 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %read8.i.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8.i.i19, align 4
  %call.i.i20 = tail call zeroext i8 %41(ptr noundef %rtwdev, i32 noundef 1222) #7
  %or5.i21 = or i8 %call.i.i20, 16
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i22 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %write8.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8.i.i22, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 1222, i8 noundef zeroext %or5.i21) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw8723d_coex_cfg_gnt_fix(ptr nocapture noundef %rtwdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_coex_cfg_gnt_debug(ptr noundef %rtwdev) #0 align 64 {
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
  %call.i.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 78) #7
  %4 = and i8 %call.i.i, -65
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 78, i8 noundef zeroext %4) #7
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i9 = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %read8.i.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i.i9, align 4
  %call.i.i10 = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 103) #7
  %13 = and i8 %call.i.i10, -2
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i14 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %write8.i.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8.i.i14, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %13) #7
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i16 = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %read8.i.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8.i.i16, align 4
  %call.i.i17 = tail call zeroext i8 %21(ptr noundef %rtwdev, i32 noundef 74) #7
  %22 = and i8 %call.i.i17, -17
  %23 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i21 = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %write8.i.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8.i.i21, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 74, i8 noundef zeroext %22) #7
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %read8.i.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8.i.i23, align 4
  %call.i.i24 = tail call zeroext i8 %30(ptr noundef %rtwdev, i32 noundef 66) #7
  %31 = and i8 %call.i.i24, -3
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i28 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i.i28, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 66, i8 noundef zeroext %31) #7
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i30 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %read8.i.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8.i.i30, align 4
  %call.i.i31 = tail call zeroext i8 %39(ptr noundef %rtwdev, i32 noundef 103) #7
  %40 = and i8 %call.i.i31, -3
  %41 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i35 = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %write8.i.i35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8.i.i35, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef 103, i8 noundef zeroext %40) #7
  %45 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i37 = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %read8.i.i37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8.i.i37, align 4
  %call.i.i38 = tail call zeroext i8 %48(ptr noundef %rtwdev, i32 noundef 102) #7
  %49 = and i8 %call.i.i38, 127
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i42 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %write8.i.i42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8.i.i42, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 102, i8 noundef zeroext %49) #7
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i44 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %read8.i.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read8.i.i44, align 4
  %call.i.i45 = tail call zeroext i8 %57(ptr noundef %rtwdev, i32 noundef 9) #7
  %58 = and i8 %call.i.i45, -3
  %59 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i49 = getelementptr inbounds %struct.rtw_hci_ops, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %write8.i.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8.i.i49, align 4
  tail call void %62(ptr noundef %rtwdev, i32 noundef 9, i8 noundef zeroext %58) #7
  %63 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i51 = getelementptr inbounds %struct.rtw_hci_ops, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %read8.i.i51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read8.i.i51, align 4
  %call.i.i52 = tail call zeroext i8 %66(ptr noundef %rtwdev, i32 noundef 115) #7
  %67 = and i8 %call.i.i52, -9
  %68 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i56 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %write8.i.i56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8.i.i56, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %67) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_coex_cfg_rfe_type(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rfe = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11
  %bt_setting = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 33
  %0 = ptrtoint ptr %bt_setting to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_setting, align 2
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %3 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rfe_option, align 2
  %rfe_module_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 3
  %5 = ptrtoint ptr %rfe_module_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %rfe_module_type, align 1
  %ant_switch_polarity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 4
  %6 = ptrtoint ptr %ant_switch_polarity to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ant_switch_polarity, align 1
  %7 = ptrtoint ptr %rfe to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rfe, align 1
  %ant_switch_with_bt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 2
  %8 = ptrtoint ptr %ant_switch_with_bt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ant_switch_with_bt, align 1
  %ant_switch_diversity = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 1
  %9 = ptrtoint ptr %ant_switch_diversity to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ant_switch_diversity, align 1
  %wlg_at_btg = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 5
  %10 = ptrtoint ptr %wlg_at_btg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %wlg_at_btg, align 1
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %11 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %share_ant, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  %hci.i33 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %13 = ptrtoint ptr %hci.i33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i33, align 8
  %write16.i34 = getelementptr inbounds %struct.rtw_hci_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %write16.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i34, align 4
  %. = select i1 %tobool.not, i16 512, i16 128
  %.35 = select i1 %tobool.not, i16 0, i16 640
  %.sink = select i1 %tobool4.not, i16 %.35, i16 %.
  tail call void %16(ptr noundef %rtwdev, i32 noundef 2376, i16 noundef zeroext %.sink) #7
  tail call void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef 128, i32 noundef 0) #7
  tail call void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext 160, i32 noundef 65535, i32 noundef 65535) #7
  tail call void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext 164, i32 noundef 65535, i32 noundef 65535) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_coex_cfg_wl_tx_power(ptr noundef %rtwdev, i8 noundef zeroext %wl_pwr) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wl_pwr)
  %2 = icmp ne i8 %wl_pwr, 0
  %3 = zext i1 %2 to i8
  %4 = ptrtoint ptr %cur_wl_pwr_lvl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %cur_wl_pwr_lvl, align 4
  %idxprom = zext i1 %2 to i32
  %arrayidx = getelementptr [2 x i8], ptr @rtw8723d_coex_cfg_wl_tx_power.wl_tx_power, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write8.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 2179, i8 noundef zeroext %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw8723d_coex_cfg_wl_rx_gain(ptr noundef %rtwdev, i1 noundef zeroext %low_gain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_wl_rx_low_gain_en = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 1
  %0 = ptrtoint ptr %cur_wl_rx_low_gain_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_wl_rx_low_gain_en, align 1, !range !278
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
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br i1 %low_gain, label %if.end.for.body_crit_edge, label %if.end.for.body18_crit_edge

if.end.for.body18_crit_edge:                      ; preds = %if.end
  br label %for.body18

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [23 x i32], ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, i32 0, i32 %indvars.iv43
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
  tail call void %9(ptr noundef %rtwdev, i32 noundef 3192, i32 noundef %5) #7
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  %exitcond45.not = icmp eq i32 %indvars.iv.next44, 23
  br i1 %exitcond45.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.end.for.body18_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body18.for.body18_crit_edge ], [ 0, %if.end.for.body18_crit_edge ]
  %arrayidx20 = getelementptr [23 x i32], ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, i32 0, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 4
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %write32.i38 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i38, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 3192, i32 noundef %11) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 23
  br i1 %exitcond.not, label %for.body18.cleanup_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body18.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_load_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8723d_lck(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 3331) #7
  %4 = and i8 %call.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3 = and i8 %call.i, -113
  %5 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8.i, align 4
  tail call void %8(ptr noundef %rtwdev, i32 noundef 3331, i8 noundef zeroext %and3) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i, align 8
  %write8.i73 = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %write8.i73 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8.i73, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext -1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %13 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_rf.i, align 4
  %call5.i = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  %or = or i32 %call5.i, 32768
  %call2.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %19 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_rf.i, align 4
  %call5.i77 = tail call zeroext i1 %24(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i75) #7
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 85) #7
  %call2.i7998 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %25 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %read_rf.i8199 = getelementptr inbounds %struct.rtw_chip_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %read_rf.i8199 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_rf.i8199, align 4
  %call5.i82100 = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 32768) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i7998) #7
  %conv20101 = and i32 %call5.i82100, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv20101)
  %cmp21.not102 = icmp eq i32 %conv20101, 1
  br i1 %cmp21.not102, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then34

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %31 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %read_rf.i86 = getelementptr inbounds %struct.rtw_chip_ops, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %read_rf.i86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_rf.i86, align 4
  %call5.i87 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 32768) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i84) #7
  br label %for.end

if.then34:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %call2.i79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %37 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %read_rf.i81 = getelementptr inbounds %struct.rtw_chip_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %read_rf.i81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_rf.i81, align 4
  %call5.i82 = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 32768) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i79) #7
  %conv20 = and i32 %call5.i82, 255
  %cmp21.not = icmp eq i32 %conv20, 1
  br i1 %cmp21.not, label %if.then34.land.lhs.true_crit_edge, label %if.then34.for.end_crit_edge

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then34.for.end_crit_edge, %if.then29, %if.end.for.end_crit_edge
  %rf_val.0.in = phi i32 [ %call5.i87, %if.then29 ], [ %call5.i82100, %if.end.for.end_crit_edge ], [ %call5.i82, %if.then34.for.end_crit_edge ]
  %conv36 = and i32 %rf_val.0.in, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv36)
  %cmp37.not = icmp eq i32 %conv36, 1
  br i1 %cmp37.not, label %do.end43, label %for.end.if.end44_crit_edge

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.4) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %for.end.if.end44_crit_edge
  %call2.i89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %45 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %write_rf.i91 = getelementptr inbounds %struct.rtw_chip_ops, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %write_rf.i91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_rf.i91, align 4
  %call5.i92 = tail call zeroext i1 %50(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %call5.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i89) #7
  %51 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i, align 8
  %write8.i96 = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %write8.i96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8.i96, align 4
  br i1 %cmp.not, label %if.else50, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %54(ptr noundef %rtwdev, i32 noundef 3331, i8 noundef zeroext %call.i) #7
  br label %if.end51

if.else50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %54(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext 0) #7
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.then49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_channel_mac(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_rx_fill_rx_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_rf_power_2_rssi(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8723d_iqk_path_adda_on(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 2140, i32 noundef 62914582) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %write32.i.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.1, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 3692, i32 noundef 62914582) #7
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write32.i.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %write32.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.2, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 3696, i32 noundef 62914582) #7
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %write32.i.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.3, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 3700, i32 noundef 62914582) #7
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write32.i.4 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %write32.i.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.4, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 3704, i32 noundef 62914582) #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %write32.i.5 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.5, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 3708, i32 noundef 62914582) #7
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %write32.i.6 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %write32.i.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.6, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 3712, i32 noundef 62914582) #7
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %write32.i.7 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %write32.i.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.7, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 3716, i32 noundef 62914582) #7
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %write32.i.8 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %write32.i.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.8, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 3720, i32 noundef 62914582) #7
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %write32.i.9 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %write32.i.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i.9, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 3724, i32 noundef 62914582) #7
  %40 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i, align 8
  %write32.i.10 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %write32.i.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.10, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 3792, i32 noundef 62914582) #7
  %44 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i, align 8
  %write32.i.11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %write32.i.11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.11, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 3796, i32 noundef 62914582) #7
  %48 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hci.i, align 8
  %write32.i.12 = getelementptr inbounds %struct.rtw_hci_ops, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %write32.i.12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.12, align 4
  tail call void %51(ptr noundef %rtwdev, i32 noundef 3800, i32 noundef 62914582) #7
  %52 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i, align 8
  %write32.i.13 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %write32.i.13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.13, align 4
  tail call void %55(ptr noundef %rtwdev, i32 noundef 3804, i32 noundef 62914582) #7
  %56 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i, align 8
  %write32.i.14 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %write32.i.14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i.14, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 3808, i32 noundef 62914582) #7
  %60 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i, align 8
  %write32.i.15 = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %write32.i.15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32.i.15, align 4
  tail call void %63(ptr noundef %rtwdev, i32 noundef 3820, i32 noundef 62914582) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8723d_iqk_precfg_path(ptr noundef %rtwdev, i32 noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %path)
  %cmp = icmp eq i32 %path, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #7
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i.i = and i32 %call.i.i.i, 255
  %4 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  %rf_lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i) #7
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %9 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %write_rf.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %write_rf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_rf.i.i, align 4
  %call5.i.i = tail call zeroext i1 %14(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 65536) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i, i32 noundef %call2.i.i) #7
  %15 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i6.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read32.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i6.i, align 4
  %call.i.i7.i = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i8.i = and i32 %call.i.i7.i, 255
  %or.i.i = or i32 %and21.i8.i, -2139095040
  %19 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i9.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %write32.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i9.i, align 4
  tail call void %22(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %or.i.i) #7
  tail call fastcc void @rtw8723d_iqk_path_adda_on(ptr noundef %rtwdev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %23 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i = and i32 %call.i.i, 255
  %or.i = or i32 %and21.i, -2139095040
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %or.i) #7
  %31 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i, align 4
  tail call void %34(ptr noundef %rtwdev, i32 noundef 3648, i32 noundef 16808960) #7
  %35 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i, align 8
  %write32.i12 = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %write32.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i12, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef 3652, i32 noundef 16795648) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %path)
  %cmp1 = icmp eq i32 %path, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42) #7
  %39 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i14 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %read32.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i.i.i14, align 4
  %call.i.i.i15 = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i.i16 = and i32 %call.i.i.i15, 255
  %43 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i17 = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %write32.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i.i.i17, align 4
  tail call void %46(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i.i16) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  %rf_lock.i.i18 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i.i19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i18) #7
  %chip.i.i20 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %48 = ptrtoint ptr %chip.i.i20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip.i.i20, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write_rf.i.i21 = getelementptr inbounds %struct.rtw_chip_ops, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %write_rf.i.i21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_rf.i.i21, align 4
  %call5.i.i22 = tail call zeroext i1 %53(ptr noundef %rtwdev, i32 noundef 1, i32 noundef 0, i32 noundef 1048575, i32 noundef 65536) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i18, i32 noundef %call2.i.i19) #7
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i6.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %read32.i.i6.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i.i6.i23, align 4
  %call.i.i7.i24 = tail call i32 %57(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i8.i25 = and i32 %call.i.i7.i24, 255
  %or.i.i26 = or i32 %and21.i8.i25, -2139095040
  %58 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i9.i27 = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %write32.i.i9.i27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i9.i27, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %or.i.i26) #7
  tail call fastcc void @rtw8723d_iqk_path_adda_on(ptr noundef %rtwdev)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @rtw8723d_iqk_tx_path(ptr noundef %rtwdev, ptr nocapture noundef readonly %iqk_cfg, ptr nocapture noundef readonly %backup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqk_cfg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.43, ptr noundef %1) #7
  %2 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iqk_cfg, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 100) #7
  %shr.i = lshr i32 %call.i.i, 24
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.44, ptr noundef %3, i32 noundef %shr.i) #7
  %val_bb_sel_btg = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %val_bb_sel_btg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val_bb_sel_btg, align 4
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %9) #7
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i59 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %read32.i.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i59, align 4
  %call.i.i60 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i = and i32 %call.i.i60, 255
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  %reg_lutwe = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_lutwe, align 4
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %25 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_rf.i, align 4
  %call5.i = tail call zeroext i1 %30(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %24, i32 noundef 1048575, i32 noundef 524288) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %31 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %write_rf.i64 = getelementptr inbounds %struct.rtw_chip_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %write_rf.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_rf.i64, align 4
  %call5.i65 = tail call zeroext i1 %36(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 51, i32 noundef 1048575, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i62) #7
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %37 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write_rf.i69 = getelementptr inbounds %struct.rtw_chip_ops, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %write_rf.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_rf.i69, align 4
  %call5.i70 = tail call zeroext i1 %42(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 62, i32 noundef 1048575, i32 noundef 93) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i67) #7
  %call2.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %43 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write_rf.i74 = getelementptr inbounds %struct.rtw_chip_ops, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %write_rf.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_rf.i74, align 4
  %call5.i75 = tail call zeroext i1 %48(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 63, i32 noundef 1048575, i32 noundef 786400) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i72) #7
  %49 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_lutwe, align 4
  %call2.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %51 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %write_rf.i79 = getelementptr inbounds %struct.rtw_chip_ops, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %write_rf.i79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_rf.i79, align 4
  %call5.i80 = tail call zeroext i1 %56(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %50, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i77) #7
  %57 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i, align 8
  %write32.i82 = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %write32.i82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i82, align 4
  tail call void %60(ptr noundef %rtwdev, i32 noundef 3632, i32 noundef 134253580) #7
  %61 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i, align 8
  %write32.i84 = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %write32.i84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i84, align 4
  tail call void %64(ptr noundef %rtwdev, i32 noundef 3636, i32 noundef 939559964) #7
  %val_txiqk_pi = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 3
  %65 = ptrtoint ptr %val_txiqk_pi to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val_txiqk_pi, align 4
  %67 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hci.i.i, align 8
  %write32.i86 = getelementptr inbounds %struct.rtw_hci_ops, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %write32.i86 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32.i86, align 4
  tail call void %70(ptr noundef %rtwdev, i32 noundef 3640, i32 noundef %66) #7
  %71 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hci.i.i, align 8
  %write32.i88 = getelementptr inbounds %struct.rtw_hci_ops, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %write32.i88 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32.i88, align 4
  tail call void %74(ptr noundef %rtwdev, i32 noundef 3644, i32 noundef 672530944) #7
  %75 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hci.i.i, align 8
  %write32.i90 = getelementptr inbounds %struct.rtw_hci_ops, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %write32.i90 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i90, align 4
  tail call void %78(ptr noundef %rtwdev, i32 noundef 3648, i32 noundef 16808960) #7
  %79 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hci.i.i, align 8
  %write32.i92 = getelementptr inbounds %struct.rtw_hci_ops, ptr %80, i32 0, i32 16
  %81 = ptrtoint ptr %write32.i92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i92, align 4
  tail call void %82(ptr noundef %rtwdev, i32 noundef 3652, i32 noundef 16795648) #7
  %83 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i.i, align 8
  %write32.i94 = getelementptr inbounds %struct.rtw_hci_ops, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %write32.i94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write32.i94, align 4
  tail call void %86(ptr noundef %rtwdev, i32 noundef 3660, i32 noundef 4598033) #7
  %reg_padlut = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 4
  %87 = ptrtoint ptr %reg_padlut to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_padlut, align 4
  %call2.i96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %89 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chip.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %write_rf.i98 = getelementptr inbounds %struct.rtw_chip_ops, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %write_rf.i98 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_rf.i98, align 4
  %call5.i99 = tail call zeroext i1 %94(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %88, i32 noundef 2048, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i96) #7
  %reg_gaintx = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 5
  %95 = ptrtoint ptr %reg_gaintx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reg_gaintx, align 4
  %call2.i101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %97 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write_rf.i103 = getelementptr inbounds %struct.rtw_chip_ops, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %write_rf.i103 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_rf.i103, align 4
  %call5.i104 = tail call zeroext i1 %102(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %96, i32 noundef 1536, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i101) #7
  %103 = ptrtoint ptr %reg_gaintx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg_gaintx, align 4
  %call2.i106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %105 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %chip.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %write_rf.i108 = getelementptr inbounds %struct.rtw_chip_ops, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %write_rf.i108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_rf.i108, align 4
  %call5.i109 = tail call zeroext i1 %110(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %104, i32 noundef 480, i32 noundef 3) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i106) #7
  %call2.i111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %111 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chip.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %write_rf.i113 = getelementptr inbounds %struct.rtw_chip_ops, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %write_rf.i113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_rf.i113, align 4
  %call5.i114 = tail call zeroext i1 %116(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 141, i32 noundef 31, i32 noundef 15) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i111) #7
  %117 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %reg_lutwe, align 4
  %call2.i116 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %119 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chip.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %write_rf.i118 = getelementptr inbounds %struct.rtw_chip_ops, ptr %122, i32 0, i32 8
  %123 = ptrtoint ptr %write_rf.i118 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_rf.i118, align 4
  %call5.i119 = tail call zeroext i1 %124(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %118, i32 noundef 16, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i116) #7
  %reg_bspad = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 6
  %125 = ptrtoint ptr %reg_bspad to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %reg_bspad, align 4
  %call2.i121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %127 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %chip.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %write_rf.i123 = getelementptr inbounds %struct.rtw_chip_ops, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %write_rf.i123 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_rf.i123, align 4
  %call5.i124 = tail call zeroext i1 %132(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %126, i32 noundef 1, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i121) #7
  %val_wlint = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 7
  %133 = ptrtoint ptr %val_wlint to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %val_wlint, align 4
  %call2.i126 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %135 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %write_rf.i128 = getelementptr inbounds %struct.rtw_chip_ops, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %write_rf.i128 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write_rf.i128, align 4
  %call5.i129 = tail call zeroext i1 %140(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 1, i32 noundef 1048575, i32 noundef %134) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i126) #7
  %val_wlsel = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 8
  %141 = ptrtoint ptr %val_wlsel to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %val_wlsel, align 4
  %call2.i131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %143 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chip.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %write_rf.i133 = getelementptr inbounds %struct.rtw_chip_ops, ptr %146, i32 0, i32 8
  %147 = ptrtoint ptr %write_rf.i133 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write_rf.i133, align 4
  %call5.i134 = tail call zeroext i1 %148(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1048575, i32 noundef %142) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i131) #7
  %149 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %iqk_cfg, align 4
  %call2.i136 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %151 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %chip.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read_rf.i, align 4
  %call5.i138 = tail call i32 %156(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 1, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i136) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.45, ptr noundef %150, i32 noundef %call5.i138) #7
  %157 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %iqk_cfg, align 4
  %call2.i140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %159 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %chip.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %read_rf.i142 = getelementptr inbounds %struct.rtw_chip_ops, ptr %162, i32 0, i32 7
  %163 = ptrtoint ptr %read_rf.i142 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read_rf.i142, align 4
  %call5.i143 = tail call i32 %164(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i140) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.46, ptr noundef %158, i32 noundef %call5.i143) #7
  tail call fastcc void @rtw8723d_iqk_one_shot(ptr noundef %rtwdev, i1 noundef zeroext true, ptr noundef %iqk_cfg)
  %call9 = tail call fastcc zeroext i8 @rtw8723d_iqk_check_tx_failed(ptr noundef %rtwdev, ptr noundef %iqk_cfg)
  tail call fastcc void @rtw8723d_iqk_txrx_path_post(ptr noundef %rtwdev, ptr noundef %iqk_cfg, ptr noundef %backup)
  ret i8 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @rtw8723d_iqk_rx_path(ptr noundef %rtwdev, ptr nocapture noundef readonly %iqk_cfg, ptr nocapture noundef readonly %backup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqk_cfg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.57, ptr noundef %1) #7
  %2 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iqk_cfg, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 100) #7
  %shr.i = lshr i32 %call.i.i, 24
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.58, ptr noundef %3, i32 noundef %shr.i) #7
  %val_bb_sel_btg = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %val_bb_sel_btg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val_bb_sel_btg, align 4
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %9) #7
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i111 = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %read32.i.i111 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i111, align 4
  %call.i.i112 = tail call i32 %17(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i = and i32 %call.i.i112, 255
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i114 = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %write32.i114 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i114, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 3648, i32 noundef 16808960) #7
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i116 = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i116, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 3652, i32 noundef 16795648) #7
  %30 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i, align 8
  %write32.i118 = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %write32.i118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i118, align 4
  tail call void %33(ptr noundef %rtwdev, i32 noundef 3632, i32 noundef 402689052) #7
  %34 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i, align 8
  %write32.i120 = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %write32.i120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i120, align 4
  tail call void %37(ptr noundef %rtwdev, i32 noundef 3636, i32 noundef 939559964) #7
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %write32.i122 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %write32.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i122, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef 3664, i32 noundef 939559964) #7
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %write32.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %write32.i124 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i124, align 4
  tail call void %45(ptr noundef %rtwdev, i32 noundef 3668, i32 noundef 939559964) #7
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %write32.i126 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %write32.i126 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i126, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 3640, i32 noundef -2112487424) #7
  %50 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i.i, align 8
  %write32.i128 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %write32.i128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i128, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 3644, i32 noundef 672530432) #7
  %54 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i.i, align 8
  %write32.i130 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %write32.i130 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i130, align 4
  tail call void %57(ptr noundef %rtwdev, i32 noundef 3660, i32 noundef 4630801) #7
  %reg_lutwe = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 2
  %58 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_lutwe, align 4
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %60 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_rf.i, align 4
  %call5.i = tail call zeroext i1 %65(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %59, i32 noundef 1048575, i32 noundef 524288) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  %call2.i132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %66 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write_rf.i134 = getelementptr inbounds %struct.rtw_chip_ops, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %write_rf.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_rf.i134, align 4
  %call5.i135 = tail call zeroext i1 %71(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 51, i32 noundef 1048575, i32 noundef 6) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i132) #7
  %call2.i137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %72 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %write_rf.i139 = getelementptr inbounds %struct.rtw_chip_ops, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %write_rf.i139 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_rf.i139, align 4
  %call5.i140 = tail call zeroext i1 %77(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 62, i32 noundef 1048575, i32 noundef 95) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i137) #7
  %call2.i142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %78 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %write_rf.i144 = getelementptr inbounds %struct.rtw_chip_ops, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %write_rf.i144 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_rf.i144, align 4
  %call5.i145 = tail call zeroext i1 %83(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 63, i32 noundef 1048575, i32 noundef 688123) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i142) #7
  %84 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reg_lutwe, align 4
  %call2.i147 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %86 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write_rf.i149 = getelementptr inbounds %struct.rtw_chip_ops, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %write_rf.i149 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_rf.i149, align 4
  %call5.i150 = tail call zeroext i1 %91(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %85, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i147) #7
  %reg_padlut = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 4
  %92 = ptrtoint ptr %reg_padlut to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %reg_padlut, align 4
  %call2.i152 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %94 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chip.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %write_rf.i154 = getelementptr inbounds %struct.rtw_chip_ops, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %write_rf.i154 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_rf.i154, align 4
  %call5.i155 = tail call zeroext i1 %99(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %93, i32 noundef 2048, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i152) #7
  %reg_gaintx = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 5
  %100 = ptrtoint ptr %reg_gaintx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %reg_gaintx, align 4
  %call2.i157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %102 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chip.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %write_rf.i159 = getelementptr inbounds %struct.rtw_chip_ops, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %write_rf.i159 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_rf.i159, align 4
  %call5.i160 = tail call zeroext i1 %107(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %101, i32 noundef 1536, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i157) #7
  %val_wlint = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 7
  %108 = ptrtoint ptr %val_wlint to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val_wlint, align 4
  %call2.i162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %110 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chip.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write_rf.i164 = getelementptr inbounds %struct.rtw_chip_ops, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %write_rf.i164 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_rf.i164, align 4
  %call5.i165 = tail call zeroext i1 %115(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 1, i32 noundef 1048575, i32 noundef %109) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i162) #7
  %val_wlsel = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 8
  %116 = ptrtoint ptr %val_wlsel to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val_wlsel, align 4
  %call2.i167 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %118 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %write_rf.i169 = getelementptr inbounds %struct.rtw_chip_ops, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %write_rf.i169 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write_rf.i169, align 4
  %call5.i170 = tail call zeroext i1 %123(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1048575, i32 noundef %117) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i167) #7
  %124 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %iqk_cfg, align 4
  %call2.i172 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %126 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chip.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %read_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %read_rf.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read_rf.i, align 4
  %call5.i174 = tail call i32 %131(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 1, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i172) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.59, ptr noundef %125, i32 noundef %call5.i174) #7
  %132 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %iqk_cfg, align 4
  %call2.i176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %134 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chip.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %read_rf.i178 = getelementptr inbounds %struct.rtw_chip_ops, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %read_rf.i178 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read_rf.i178, align 4
  %call5.i179 = tail call i32 %139(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i176) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.60, ptr noundef %133, i32 noundef %call5.i179) #7
  tail call fastcc void @rtw8723d_iqk_one_shot(ptr noundef %rtwdev, i1 noundef zeroext false, ptr noundef %iqk_cfg)
  %call7 = tail call fastcc zeroext i8 @rtw8723d_iqk_check_tx_failed(ptr noundef %rtwdev, ptr noundef %iqk_cfg)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call7)
  %tobool.not = icmp eq i8 %call7, 0
  br i1 %tobool.not, label %entry.restore_crit_edge, label %if.end

entry.restore_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore

if.end:                                           ; preds = %entry
  %140 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i181 = getelementptr inbounds %struct.rtw_hci_ops, ptr %141, i32 0, i32 13
  %142 = ptrtoint ptr %read32.i.i181 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read32.i.i181, align 4
  %call.i.i182 = tail call i32 %143(ptr noundef %rtwdev, i32 noundef 3732) #7
  %shr.i184 = and i32 %call.i.i182, 67043328
  %144 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i186 = getelementptr inbounds %struct.rtw_hci_ops, ptr %145, i32 0, i32 13
  %146 = ptrtoint ptr %read32.i.i186 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i186, align 4
  %call.i.i187 = tail call i32 %147(ptr noundef %rtwdev, i32 noundef 3740) #7
  %and.i188 = lshr i32 %call.i.i187, 16
  %shr.i189 = and i32 %and.i188, 1023
  %or = or i32 %shr.i184, %shr.i189
  %or10 = or i32 %or, -2147451904
  %148 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i, align 8
  %write32.i191 = getelementptr inbounds %struct.rtw_hci_ops, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %write32.i191 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i191, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef 3648, i32 noundef %or10) #7
  %152 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %153, i32 0, i32 13
  %154 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %155(ptr noundef %rtwdev, i32 noundef 3648) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.61, i32 noundef %call.i, i32 noundef %or10) #7
  %156 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iqk_cfg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.62, ptr noundef %157) #7
  %158 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %iqk_cfg, align 4
  %160 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i194 = getelementptr inbounds %struct.rtw_hci_ops, ptr %161, i32 0, i32 13
  %162 = ptrtoint ptr %read32.i.i194 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read32.i.i194, align 4
  %call.i.i195 = tail call i32 %163(ptr noundef %rtwdev, i32 noundef 100) #7
  %shr.i197 = lshr i32 %call.i.i195, 24
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.63, ptr noundef %159, i32 noundef %shr.i197) #7
  %164 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hci.i.i, align 8
  %write32.i199 = getelementptr inbounds %struct.rtw_hci_ops, ptr %165, i32 0, i32 16
  %166 = ptrtoint ptr %write32.i199 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32.i199, align 4
  tail call void %167(ptr noundef %rtwdev, i32 noundef 3652, i32 noundef 16795648) #7
  %168 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hci.i.i, align 8
  %write32.i201 = getelementptr inbounds %struct.rtw_hci_ops, ptr %169, i32 0, i32 16
  %170 = ptrtoint ptr %write32.i201 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write32.i201, align 4
  tail call void %171(ptr noundef %rtwdev, i32 noundef 3632, i32 noundef 939559964) #7
  %172 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hci.i.i, align 8
  %write32.i203 = getelementptr inbounds %struct.rtw_hci_ops, ptr %173, i32 0, i32 16
  %174 = ptrtoint ptr %write32.i203 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write32.i203, align 4
  tail call void %175(ptr noundef %rtwdev, i32 noundef 3636, i32 noundef 402689052) #7
  %176 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hci.i.i, align 8
  %write32.i205 = getelementptr inbounds %struct.rtw_hci_ops, ptr %177, i32 0, i32 16
  %178 = ptrtoint ptr %write32.i205 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write32.i205, align 4
  tail call void %179(ptr noundef %rtwdev, i32 noundef 3664, i32 noundef 939559964) #7
  %180 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hci.i.i, align 8
  %write32.i207 = getelementptr inbounds %struct.rtw_hci_ops, ptr %181, i32 0, i32 16
  %182 = ptrtoint ptr %write32.i207 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i207, align 4
  tail call void %183(ptr noundef %rtwdev, i32 noundef 3668, i32 noundef 939559964) #7
  %184 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hci.i.i, align 8
  %write32.i209 = getelementptr inbounds %struct.rtw_hci_ops, ptr %185, i32 0, i32 16
  %186 = ptrtoint ptr %write32.i209 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write32.i209, align 4
  tail call void %187(ptr noundef %rtwdev, i32 noundef 3640, i32 noundef -2112421888) #7
  %188 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hci.i.i, align 8
  %write32.i211 = getelementptr inbounds %struct.rtw_hci_ops, ptr %189, i32 0, i32 16
  %190 = ptrtoint ptr %write32.i211 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write32.i211, align 4
  tail call void %191(ptr noundef %rtwdev, i32 noundef 3644, i32 noundef 672601088) #7
  %192 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hci.i.i, align 8
  %write32.i213 = getelementptr inbounds %struct.rtw_hci_ops, ptr %193, i32 0, i32 16
  %194 = ptrtoint ptr %write32.i213 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write32.i213, align 4
  tail call void %195(ptr noundef %rtwdev, i32 noundef 3660, i32 noundef 4630737) #7
  %196 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i215 = getelementptr inbounds %struct.rtw_hci_ops, ptr %197, i32 0, i32 13
  %198 = ptrtoint ptr %read32.i.i215 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read32.i.i215, align 4
  %call.i.i216 = tail call i32 %199(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i217 = and i32 %call.i.i216, 255
  %200 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i218 = getelementptr inbounds %struct.rtw_hci_ops, ptr %201, i32 0, i32 16
  %202 = ptrtoint ptr %write32.i.i218 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write32.i.i218, align 4
  tail call void %203(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i217) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 214748000) #7
  %205 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %reg_lutwe, align 4
  %call2.i220 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %207 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %chip.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %write_rf.i222 = getelementptr inbounds %struct.rtw_chip_ops, ptr %210, i32 0, i32 8
  %211 = ptrtoint ptr %write_rf.i222 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write_rf.i222, align 4
  %call5.i223 = tail call zeroext i1 %212(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %206, i32 noundef 524288, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i220) #7
  %call2.i225 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %213 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %chip.i, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %write_rf.i227 = getelementptr inbounds %struct.rtw_chip_ops, ptr %216, i32 0, i32 8
  %217 = ptrtoint ptr %write_rf.i227 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write_rf.i227, align 4
  %call5.i228 = tail call zeroext i1 %218(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 51, i32 noundef 1048575, i32 noundef 7) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i225) #7
  %call2.i230 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %219 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %chip.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %write_rf.i232 = getelementptr inbounds %struct.rtw_chip_ops, ptr %222, i32 0, i32 8
  %223 = ptrtoint ptr %write_rf.i232 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %write_rf.i232, align 4
  %call5.i233 = tail call zeroext i1 %224(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 62, i32 noundef 1048575, i32 noundef 95) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i230) #7
  %call2.i235 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %225 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %chip.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %write_rf.i237 = getelementptr inbounds %struct.rtw_chip_ops, ptr %228, i32 0, i32 8
  %229 = ptrtoint ptr %write_rf.i237 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write_rf.i237, align 4
  %call5.i238 = tail call zeroext i1 %230(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 63, i32 noundef 1048575, i32 noundef 737243) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i235) #7
  %231 = ptrtoint ptr %reg_lutwe to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %reg_lutwe, align 4
  %call2.i240 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %233 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %chip.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %write_rf.i242 = getelementptr inbounds %struct.rtw_chip_ops, ptr %236, i32 0, i32 8
  %237 = ptrtoint ptr %write_rf.i242 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %write_rf.i242, align 4
  %call5.i243 = tail call zeroext i1 %238(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %232, i32 noundef 1048575, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i240) #7
  %239 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %iqk_cfg, align 4
  %call2.i245 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %241 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %chip.i, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %read_rf.i247 = getelementptr inbounds %struct.rtw_chip_ops, ptr %244, i32 0, i32 7
  %245 = ptrtoint ptr %read_rf.i247 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read_rf.i247, align 4
  %call5.i248 = tail call i32 %246(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 1, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i245) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.64, ptr noundef %240, i32 noundef %call5.i248) #7
  %247 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %iqk_cfg, align 4
  %call2.i250 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %249 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %chip.i, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %250, align 4
  %read_rf.i252 = getelementptr inbounds %struct.rtw_chip_ops, ptr %252, i32 0, i32 7
  %253 = ptrtoint ptr %read_rf.i252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %read_rf.i252, align 4
  %call5.i253 = tail call i32 %254(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1048575) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i250) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.65, ptr noundef %248, i32 noundef %call5.i253) #7
  tail call fastcc void @rtw8723d_iqk_one_shot(ptr noundef %rtwdev, i1 noundef zeroext false, ptr noundef %iqk_cfg)
  %255 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i255 = getelementptr inbounds %struct.rtw_hci_ops, ptr %256, i32 0, i32 13
  %257 = ptrtoint ptr %read32.i.i255 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read32.i.i255, align 4
  %call.i.i256 = tail call i32 %258(ptr noundef %rtwdev, i32 noundef 3748) #7
  %259 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hci.i.i, align 8
  %read32.i31.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %260, i32 0, i32 13
  %261 = ptrtoint ptr %read32.i31.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %read32.i31.i, align 4
  %call.i32.i = tail call i32 %262(ptr noundef %rtwdev, i32 noundef 3756) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.66, i32 noundef %call.i.i256, i32 noundef %call.i32.i) #7
  %263 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hci.i.i, align 8
  %read32.i34.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %264, i32 0, i32 13
  %265 = ptrtoint ptr %read32.i34.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %read32.i34.i, align 4
  %call.i35.i = tail call i32 %266(ptr noundef %rtwdev, i32 noundef 3744) #7
  %267 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hci.i.i, align 8
  %read32.i37.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %268, i32 0, i32 13
  %269 = ptrtoint ptr %read32.i37.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read32.i37.i, align 4
  %call.i38.i = tail call i32 %270(ptr noundef %rtwdev, i32 noundef 3752) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.67, i32 noundef %call.i35.i, i32 noundef %call.i38.i) #7
  %271 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %272, i32 0, i32 13
  %273 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %274(ptr noundef %rtwdev, i32 noundef 3756) #7
  %275 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i40.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %276, i32 0, i32 13
  %277 = ptrtoint ptr %read32.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %read32.i.i40.i, align 4
  %call.i.i41.i = tail call i32 %278(ptr noundef %rtwdev, i32 noundef 3748) #7
  %and.i42.i = lshr i32 %call.i.i41.i, 16
  %shr.i43.i = and i32 %and.i42.i, 1023
  %279 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i45.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %280, i32 0, i32 13
  %281 = ptrtoint ptr %read32.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read32.i.i45.i, align 4
  %call.i.i46.i = tail call i32 %282(ptr noundef %rtwdev, i32 noundef 3756) #7
  %283 = shl i32 %call.i.i46.i, 6
  %shr.i48.i = ashr i32 %283, 22
  %284 = tail call i32 @llvm.abs.i32(i32 %shr.i48.i, i1 true) #7
  %285 = and i32 %call.i.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool.not.i = icmp eq i32 %285, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %shr.i43.i)
  %cmp8.i = icmp ult i32 %shr.i43.i, 282
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp8.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 230, i32 %shr.i43.i)
  %cmp10.i = icmp ugt i32 %shr.i43.i, 230
  %or.cond28.i = select i1 %or.cond.i, i1 %cmp10.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %284)
  %cmp12.i = icmp ult i32 %284, 26
  %or.cond29.i = select i1 %or.cond28.i, i1 %cmp12.i, i1 false
  br i1 %or.cond29.i, label %if.end.restore_crit_edge, label %if.end.i

if.end.restore_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %286 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %iqk_cfg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef %287) #7
  br label %restore

restore:                                          ; preds = %if.end.i, %if.end.restore_crit_edge, %entry.restore_crit_edge
  %status.0 = phi i8 [ 0, %entry.restore_crit_edge ], [ 1, %if.end.i ], [ 3, %if.end.restore_crit_edge ]
  tail call fastcc void @rtw8723d_iqk_txrx_path_post(ptr noundef %rtwdev, ptr noundef %iqk_cfg, ptr noundef %backup)
  ret i8 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8723d_iqk_one_shot(ptr noundef %rtwdev, i1 noundef zeroext %tx, ptr nocapture noundef readonly %iqk_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %tx, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val_iqkpts = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 9
  %0 = ptrtoint ptr %val_iqkpts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_iqkpts, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond2 = phi ptr [ @.str.49, %entry.cond.end_crit_edge ], [ @.str.48, %cond.true ]
  %cond = phi i32 [ -117440512, %entry.cond.end_crit_edge ], [ %1, %cond.true ]
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i = and i32 %call.i.i, 255
  %or.i = or i32 %and21.i, -2139095040
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %or.i) #7
  %10 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i28 = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %write32.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i28, align 4
  tail call void %13(ptr noundef %rtwdev, i32 noundef 1988, i32 noundef 65280) #7
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %write32.i4.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %write32.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i4.i, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 1984, i32 noundef -1073610696) #7
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %21(ptr noundef %rtwdev, i32 noundef 112) #7
  %or.i.i = or i32 %call.i.i.i, 67108864
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %or.i.i) #7
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 1984, i32 noundef -2146500524) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %31 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iqk_cfg, align 4
  %33 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 1992) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.47, ptr noundef %32, ptr noundef nonnull %cond2, i32 noundef %call.i) #7
  %37 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iqk_cfg, align 4
  %39 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i, align 8
  %read32.i31 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %read32.i31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i31, align 4
  %call.i32 = tail call i32 %42(ptr noundef %rtwdev, i32 noundef 2376) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.50, ptr noundef %38, ptr noundef nonnull %cond2, i32 noundef %call.i32) #7
  %43 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i, align 8
  %write32.i34 = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %write32.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i34, align 4
  tail call void %46(ptr noundef %rtwdev, i32 noundef 3656, i32 noundef %cond) #7
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %write32.i36 = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %write32.i36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i36, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef 3656, i32 noundef -134217728) #7
  %call7 = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 3756, i32 noundef 67108864, i32 noundef 1) #7
  br i1 %call7, label %cond.end.if.end_crit_edge, label %do.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iqk_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.51, ptr noundef %54, ptr noundef nonnull %cond2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @rtw8723d_iqk_check_tx_failed(ptr noundef %rtwdev, ptr nocapture noundef readonly %iqk_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %rtwdev, i32 noundef 3756) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.53, i32 noundef %call.i) #7
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read32.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i25, align 4
  %call.i26 = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 3732) #7
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read32.i28 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i28, align 4
  %call.i29 = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 3740) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.54, i32 noundef %call.i26, i32 noundef %call.i29) #7
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %read32.i31 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i31, align 4
  %call.i32 = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 3728) #7
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %read32.i34 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i34, align 4
  %call.i35 = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 3736) #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.55, i32 noundef %call.i32, i32 noundef %call.i35) #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 3756) #7
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %read32.i.i37 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i37, align 4
  %call.i.i38 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 3732) #7
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %read32.i.i42 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %read32.i.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i42, align 4
  %call.i.i43 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 3740) #7
  %32 = and i32 %call.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp ne i32 %32, 0
  %33 = and i32 %call.i.i38, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %33)
  %cmp.not = icmp eq i32 %33, 21102592
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  %34 = and i32 %call.i.i43, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %34)
  %cmp9.not = icmp eq i32 %34, 4325376
  %or.cond23 = select i1 %or.cond, i1 true, i1 %cmp9.not
  br i1 %or.cond23, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %iqk_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iqk_cfg, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 128, ptr noundef nonnull @.str.56, ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8723d_iqk_txrx_path_post(ptr noundef %rtwdev, ptr nocapture noundef readonly %iqk_cfg, ptr nocapture noundef readonly %backup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lte_gnt.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 5
  %0 = ptrtoint ptr %lte_gnt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lte_gnt.i, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %rtwdev, i32 noundef 1988, i32 noundef %1) #7
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write32.i5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i5.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 1984, i32 noundef -1072758728) #7
  %lte_path.i = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 4
  %10 = ptrtoint ptr %lte_path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lte_path.i, align 4
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write32.i7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i7.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 112, i32 noundef %11) #7
  %bb_sel_btg = getelementptr inbounds %struct.iqk_backup_regs, ptr %backup, i32 0, i32 6
  %16 = ptrtoint ptr %bb_sel_btg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bb_sel_btg, align 4
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 2376, i32 noundef %17) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 3624) #7
  %and21.i = and i32 %call.i.i, 255
  %26 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i8 = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %write32.i.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i8, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 3624, i32 noundef %and21.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %reg_padlut = getelementptr inbounds %struct.rtw_8723d_iqk_cfg, ptr %iqk_cfg, i32 0, i32 4
  %31 = ptrtoint ptr %reg_padlut to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_padlut, align 4
  %rf_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %33 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write_rf.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %write_rf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_rf.i, align 4
  %call5.i = tail call zeroext i1 %38(ptr noundef %rtwdev, i32 noundef 0, i32 noundef %32, i32 noundef 2048, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i) #7
  %call2.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %39 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %write_rf.i12 = getelementptr inbounds %struct.rtw_chip_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %write_rf.i12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_rf.i12, align 4
  %call5.i13 = tail call zeroext i1 %44(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i10) #7
  %call2.i15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i) #7
  %45 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %write_rf.i17 = getelementptr inbounds %struct.rtw_chip_ops, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %write_rf.i17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_rf.i17, align 4
  %call5.i18 = tail call zeroext i1 %50(ptr noundef %rtwdev, i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i, i32 noundef %call2.i15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @check_hw_ready(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_config_swing_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_pwrtrack_avg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_pwrtrack_need_iqk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_phy_pwrtrack_thermal_changed(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_phy_pwrtrack_get_delta(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @rtw_phy_pwrtrack_get_pwridx(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_set_tx_power_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw8723d_set_iqk_matrix(ptr noundef %rtwdev, i8 noundef signext %ofdm_index, i8 noundef zeroext %rf_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.umin.i8(i8 %ofdm_index, i8 42)
  %ofdm_index.addr.0 = zext i8 %0 to i32
  %arrayidx = getelementptr [43 x i32], ptr @rtw8723d_ofdm_swing_table, i32 0, i32 %ofdm_index.addr.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %iqk = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57
  %3 = ptrtoint ptr %iqk to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iqk, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rf_path)
  %cond = icmp eq i8 %rf_path, 1
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %entry
  %s0_x.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1, i32 2
  %s0_y.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1, i32 3
  %result.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1
  %s1_y.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 57, i32 1, i32 1
  %iqk_result_x.0.in.i = select i1 %cond, ptr %s0_x.i, ptr %result.i
  %iqk_result_y.0.in.i = select i1 %cond, ptr %s0_y.i, ptr %s1_y.i
  %5 = ptrtoint ptr %iqk_result_y.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %iqk_result_y.0.i = load i32, ptr %iqk_result_y.0.in.i, align 4
  %6 = ptrtoint ptr %iqk_result_x.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %iqk_result_x.0.i = load i32, ptr %iqk_result_x.0.in.i, align 4
  %shr.i = lshr i32 %2, 22
  %mul.i.i = mul i32 %iqk_result_x.0.i, %shr.i
  %shr4.i.i = lshr i32 %mul.i.i, 7
  %and.i.i = and i32 %shr4.i.i, 1
  %shl.i.i.i = shl i32 %iqk_result_x.0.i, 22
  %shr.i.i.i = ashr exact i32 %shl.i.i.i, 22
  %mul.i73.i = mul nsw i32 %shr.i.i.i, %shr.i
  %shr4.i74.i = lshr i32 %mul.i73.i, 7
  %and.i75.i = and i32 %shr4.i74.i, 1
  %shr1.i76.i = ashr i32 %mul.i73.i, 8
  %shl.i.i77.i = shl i32 %iqk_result_y.0.i, 22
  %shr.i.i78.i = ashr exact i32 %shl.i.i77.i, 22
  %mul.i79.i = mul nsw i32 %shr.i.i78.i, %shr.i
  %shr4.i80.i = lshr i32 %mul.i79.i, 7
  %and.i81.i = and i32 %shr4.i80.i, 1
  %shr1.i82.i = ashr i32 %mul.i79.i, 8
  br i1 %cond, label %sw.bb42.i, label %sw.default27.i

sw.default27.i:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = and i32 %2, -4194304
  %and28.i = shl nsw i32 %shr1.i82.i, 16
  %shl29.i = and i32 %and28.i, 4128768
  %or.i = or i32 %shl29.i, %shl.i
  %and30.i = and i32 %shr1.i76.i, 1023
  %or31.i = or i32 %or.i, %and30.i
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 3200, i32 noundef %or31.i) #7
  %11 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %14(ptr noundef %rtwdev, i32 noundef 3220) #7
  %and21.i.i = and i32 %call.i.i.i, 268435455
  %15 = shl i32 %shr1.i82.i, 22
  %16 = and i32 %15, -268435456
  %or.i.i = or i32 %and21.i.i, %16
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 3220, i32 noundef %or.i.i) #7
  %21 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %24(ptr noundef %rtwdev, i32 noundef 3148) #7
  %and35.i = and i32 %call.i.i, 1342177279
  %shl36.i = shl nuw i32 %and.i75.i, 31
  %shl37.i = shl nuw nsw i32 %and.i81.i, 29
  %or38.i = or i32 %shl36.i, %shl37.i
  %shl39.i = shl nuw nsw i32 %and.i.i, 28
  %or40.i = or i32 %or38.i, %shl39.i
  %or41.i = or i32 %and35.i, %or40.i
  %25 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i.i, align 8
  %write32.i85.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %write32.i85.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i85.i, align 4
  tail call void %28(ptr noundef %rtwdev, i32 noundef 3148, i32 noundef %or41.i) #7
  br label %cleanup

sw.bb42.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %hci.i.i86.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %29 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i86.i, align 8
  %read32.i.i87.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %read32.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i87.i, align 4
  %call.i.i88.i = tail call i32 %32(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i89.i = and i32 %call.i.i88.i, -8380417
  %shl.i90.i = shl nuw nsw i32 %shr.i, 13
  %or.i91.i = or i32 %and21.i89.i, %shl.i90.i
  %33 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i86.i, align 8
  %write32.i.i92.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %write32.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i.i92.i, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i91.i) #7
  %37 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i86.i, align 8
  %read32.i.i94.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %read32.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i94.i, align 4
  %call.i.i95.i = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i96.i = and i32 %call.i.i95.i, -2047
  %shl.i97.i = shl nsw i32 %shr1.i82.i, 1
  %and22.i98.i = and i32 %shl.i97.i, 2046
  %or.i99.i = or i32 %and21.i96.i, %and22.i98.i
  %41 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i86.i, align 8
  %write32.i.i100.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %write32.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i100.i, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i99.i) #7
  %45 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i86.i, align 8
  %read32.i.i102.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %read32.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i.i102.i, align 4
  %call.i.i103.i = tail call i32 %48(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i104.i = and i32 %call.i.i103.i, -2047
  %shl.i105.i = shl nsw i32 %shr1.i76.i, 1
  %and22.i106.i = and i32 %shl.i105.i, 2046
  %or.i107.i = or i32 %and21.i104.i, %and22.i106.i
  %49 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i86.i, align 8
  %write32.i.i108.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %write32.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i.i108.i, align 4
  tail call void %52(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %or.i107.i) #7
  %53 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i86.i, align 8
  %read32.i.i110.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %read32.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read32.i.i110.i, align 4
  %call.i.i111.i = tail call i32 %56(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i112.i = and i32 %call.i.i111.i, -4097
  %shl.i113.i = shl nuw nsw i32 %and.i.i, 12
  %or.i115.i = or i32 %and21.i112.i, %shl.i113.i
  %57 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i86.i, align 8
  %write32.i.i116.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %write32.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i.i116.i, align 4
  tail call void %60(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i115.i) #7
  %61 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i86.i, align 8
  %read32.i.i118.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %read32.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read32.i.i118.i, align 4
  %call.i.i119.i = tail call i32 %64(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i120.i = and i32 %call.i.i119.i, -2
  %or.i122.i = or i32 %and21.i120.i, %and.i75.i
  %65 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i86.i, align 8
  %write32.i.i123.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %write32.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32.i.i123.i, align 4
  tail call void %68(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %or.i122.i) #7
  %69 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i.i86.i, align 8
  %read32.i.i125.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %read32.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32.i.i125.i, align 4
  %call.i.i126.i = tail call i32 %72(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i127.i = and i32 %call.i.i126.i, -2
  %or.i129.i = or i32 %and21.i127.i, %and.i81.i
  %73 = ptrtoint ptr %hci.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i86.i, align 8
  %write32.i.i130.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %write32.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i.i130.i, align 4
  tail call void %76(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i129.i) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %hci.i.i109 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %77 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i109, align 8
  br i1 %cond, label %sw.bb11, label %sw.default

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write32.i, align 4
  tail call void %80(ptr noundef %rtwdev, i32 noundef 3200, i32 noundef %2) #7
  %81 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i103 = getelementptr inbounds %struct.rtw_hci_ops, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %read32.i.i103 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.i103, align 4
  %call.i.i104 = tail call i32 %84(ptr noundef %rtwdev, i32 noundef 3220) #7
  %and21.i = and i32 %call.i.i104, 268435455
  %85 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i105 = getelementptr inbounds %struct.rtw_hci_ops, ptr %86, i32 0, i32 16
  %87 = ptrtoint ptr %write32.i.i105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i105, align 4
  tail call void %88(ptr noundef %rtwdev, i32 noundef 3220, i32 noundef %and21.i) #7
  %89 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hci.i.i109, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %90, i32 0, i32 13
  %91 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %92(ptr noundef %rtwdev, i32 noundef 3148) #7
  %and = and i32 %call.i, 1342177279
  %93 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hci.i.i109, align 8
  %write32.i108 = getelementptr inbounds %struct.rtw_hci_ops, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %write32.i108 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i108, align 4
  tail call void %96(ptr noundef %rtwdev, i32 noundef 3148, i32 noundef %and) #7
  br label %cleanup

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %read32.i.i110 = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 13
  %97 = ptrtoint ptr %read32.i.i110 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read32.i.i110, align 4
  %call.i.i111 = tail call i32 %98(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i112 = and i32 %call.i.i111, -2047
  %and24 = shl i32 %2, 1
  %shl.i113 = and i32 %and24, 2046
  %or.i114 = or i32 %and21.i112, %shl.i113
  %99 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i115 = getelementptr inbounds %struct.rtw_hci_ops, ptr %100, i32 0, i32 16
  %101 = ptrtoint ptr %write32.i.i115 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32.i.i115, align 4
  tail call void %102(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %or.i114) #7
  %103 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i117 = getelementptr inbounds %struct.rtw_hci_ops, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %read32.i.i117 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read32.i.i117, align 4
  %call.i.i118 = tail call i32 %106(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i119 = and i32 %call.i.i118, -516097
  %107 = shl i32 %2, 3
  %shl.i120 = and i32 %107, 516096
  %or.i122 = or i32 %and21.i119, %shl.i120
  %108 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i123 = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 16
  %110 = ptrtoint ptr %write32.i.i123 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write32.i.i123, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %or.i122) #7
  %112 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i125 = getelementptr inbounds %struct.rtw_hci_ops, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %read32.i.i125 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read32.i.i125, align 4
  %call.i.i126 = tail call i32 %115(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i127 = and i32 %call.i.i126, -2047
  %116 = lshr i32 %2, 15
  %shl.i128 = and i32 %116, 126
  %or.i130 = or i32 %and21.i127, %shl.i128
  %117 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i131 = getelementptr inbounds %struct.rtw_hci_ops, ptr %118, i32 0, i32 16
  %119 = ptrtoint ptr %write32.i.i131 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i.i131, align 4
  tail call void %120(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i130) #7
  %121 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i133 = getelementptr inbounds %struct.rtw_hci_ops, ptr %122, i32 0, i32 13
  %123 = ptrtoint ptr %read32.i.i133 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read32.i.i133, align 4
  %call.i.i134 = tail call i32 %124(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i135 = and i32 %call.i.i134, -8380417
  %125 = lshr i32 %2, 9
  %shl.i136 = and i32 %125, 8380416
  %or.i138 = or i32 %and21.i135, %shl.i136
  %126 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i139 = getelementptr inbounds %struct.rtw_hci_ops, ptr %127, i32 0, i32 16
  %128 = ptrtoint ptr %write32.i.i139 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write32.i.i139, align 4
  tail call void %129(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %or.i138) #7
  %130 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i141 = getelementptr inbounds %struct.rtw_hci_ops, ptr %131, i32 0, i32 13
  %132 = ptrtoint ptr %read32.i.i141 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read32.i.i141, align 4
  %call.i.i142 = tail call i32 %133(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i143 = and i32 %call.i.i142, -4097
  %134 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i144 = getelementptr inbounds %struct.rtw_hci_ops, ptr %135, i32 0, i32 16
  %136 = ptrtoint ptr %write32.i.i144 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write32.i.i144, align 4
  tail call void %137(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %and21.i143) #7
  %138 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i146 = getelementptr inbounds %struct.rtw_hci_ops, ptr %139, i32 0, i32 13
  %140 = ptrtoint ptr %read32.i.i146 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read32.i.i146, align 4
  %call.i.i147 = tail call i32 %141(ptr noundef %rtwdev, i32 noundef 3284) #7
  %and21.i148 = and i32 %call.i.i147, -2
  %142 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i149 = getelementptr inbounds %struct.rtw_hci_ops, ptr %143, i32 0, i32 16
  %144 = ptrtoint ptr %write32.i.i149 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write32.i.i149, align 4
  tail call void %145(ptr noundef %rtwdev, i32 noundef 3284, i32 noundef %and21.i148) #7
  %146 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hci.i.i109, align 8
  %read32.i.i151 = getelementptr inbounds %struct.rtw_hci_ops, ptr %147, i32 0, i32 13
  %148 = ptrtoint ptr %read32.i.i151 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read32.i.i151, align 4
  %call.i.i152 = tail call i32 %149(ptr noundef %rtwdev, i32 noundef 3280) #7
  %and21.i153 = and i32 %call.i.i152, -2
  %150 = ptrtoint ptr %hci.i.i109 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i109, align 8
  %write32.i.i154 = getelementptr inbounds %struct.rtw_hci_ops, ptr %151, i32 0, i32 16
  %152 = ptrtoint ptr %write32.i.i154 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write32.i.i154, align 4
  tail call void %153(ptr noundef %rtwdev, i32 noundef 3280, i32 noundef %and21.i153) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.default, %sw.bb42.i, %sw.default27.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_write_indirect_reg(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !111, !113, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2707, i32 13}
!2 = !{ptr @rtw8723d_hw_spec, !3, !"rtw8723d_hw_spec", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2704, i32 22}
!4 = !{ptr @__ksymtab_rtw8723d_hw_spec, !5, !"__ksymtab_rtw8723d_hw_spec", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2782, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware457, !7, !"__UNIQUE_ID_firmware457", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2784, i32 1}
!8 = !{ptr @__UNIQUE_ID_author458, !9, !"__UNIQUE_ID_author458", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2786, i32 1}
!10 = !{ptr @__UNIQUE_ID_description459, !11, !"__UNIQUE_ID_description459", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2787, i32 1}
!12 = !{ptr @__UNIQUE_ID_file460, !13, !"__UNIQUE_ID_file460", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2788, i32 1}
!14 = !{ptr @__UNIQUE_ID_license461, !13, !"__UNIQUE_ID_license461", i1 false, i1 false}
!15 = !{ptr @rtw8723d_ops, !16, !"rtw8723d_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1948, i32 28}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw88/hci.h", i32 236, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 83, i32 8}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 87, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rtw8723d_lck._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtw8723d_lck._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"cck_dfir_cfg", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 474, i32 37}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 319, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @query_phy_status._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @query_phy_status._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 586, i32 4}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtw8723d_set_tx_power_index_by_rate._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rtw8723d_set_tx_power_index_by_rate._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 591, i32 4}
!43 = !{ptr @rtw8723d_set_tx_power_index_by_rate._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rtw8723d_set_tx_power_index_by_rate._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rtw8723d_txagc, !46, !"rtw8723d_txagc", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 18, i32 32}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1417, i32 2}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1441, i32 5}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1458, i32 4}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1476, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1480, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1487, i32 2}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1493, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1499, i32 2}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 771, i32 2}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 797, i32 2}
!69 = !{ptr @iqk_adda_regs, !70, !"iqk_adda_regs", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 686, i32 18}
!71 = distinct !{null, !72, !"iqk_mac8_regs", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 691, i32 18}
!73 = distinct !{null, !74, !"iqk_mac32_regs", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 692, i32 18}
!75 = distinct !{null, !76, !"iqk_bb_regs", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 694, i32 18}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 778, i32 2}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1313, i32 2}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1327, i32 4}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1336, i32 3}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1344, i32 4}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1353, i32 3}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1359, i32 3}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1366, i32 4}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1375, i32 3}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1383, i32 4}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1393, i32 3}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1399, i32 3}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1404, i32 2}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1221, i32 2}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 963, i32 2}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 964, i32 2}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1001, i32 2}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1004, i32 2}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 926, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 929, i32 2}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 938, i32 3}
!123 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rtw8723d_iqk_one_shot._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rtw8723d_iqk_one_shot._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 862, i32 2}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 864, i32 2}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 867, i32 2}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 879, i32 2}
!134 = !{ptr @iqk_tx_cfg, !135, !"iqk_tx_cfg", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 829, i32 39}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1023, i32 2}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1025, i32 2}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1060, i32 2}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1063, i32 2}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1078, i32 2}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1082, i32 2}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1084, i32 2}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1108, i32 2}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1111, i32 2}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 891, i32 2}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 895, i32 2}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 909, i32 2}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 786, i32 2}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1154, i32 2}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1157, i32 2}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1508, i32 2}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1516, i32 2}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1682, i32 3}
!172 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @rtw8723d_pwrtrack_get_limit_ofdm._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @rtw8723d_pwrtrack_get_limit_ofdm._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @rtw8723d_ofdm_swing_table, !176, !"rtw8723d_ofdm_swing_table", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 96, i32 18}
!177 = !{ptr @rtw8723d_cck_swing_table, !178, !"rtw8723d_cck_swing_table", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 107, i32 18}
!179 = !{ptr @rtw8723d_coex_cfg_wl_tx_power.wl_tx_power, !180, !"wl_tx_power", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1604, i32 18}
!181 = !{ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_on, !182, !"wl_rx_low_gain_on", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1625, i32 19}
!183 = !{ptr @rtw8723d_coex_cfg_wl_rx_gain.wl_rx_low_gain_off, !184, !"wl_rx_low_gain_off", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1633, i32 19}
!185 = !{ptr @card_enable_flow_8723d, !186, !"card_enable_flow_8723d", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2305, i32 38}
!187 = !{ptr @trans_carddis_to_cardemu_8723d, !188, !"trans_carddis_to_cardemu_8723d", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2129, i32 37}
!189 = !{ptr @trans_cardemu_to_act_8723d, !190, !"trans_cardemu_to_act_8723d", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2172, i32 37}
!191 = !{ptr @card_disable_flow_8723d, !192, !"card_disable_flow_8723d", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2521, i32 38}
!193 = !{ptr @trans_act_to_lps_8723d, !194, !"trans_act_to_lps_8723d", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2311, i32 37}
!195 = !{ptr @trans_act_to_pre_carddis_8723d, !196, !"trans_act_to_pre_carddis_8723d", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2384, i32 37}
!197 = !{ptr @trans_act_to_cardemu_8723d, !198, !"trans_act_to_cardemu_8723d", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2402, i32 37}
!199 = !{ptr @trans_cardemu_to_carddis_8723d, !200, !"trans_cardemu_to_carddis_8723d", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2450, i32 37}
!201 = !{ptr @trans_act_to_post_carddis_8723d, !202, !"trans_act_to_post_carddis_8723d", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2498, i32 37}
!203 = !{ptr @rqpn_table_8723d, !204, !"rqpn_table_8723d", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2538, i32 30}
!205 = !{ptr @prioq_addrs_8723d, !206, !"prioq_addrs_8723d", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2556, i32 37}
!207 = !{ptr @page_table_8723d, !208, !"page_table_8723d", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2530, i32 36}
!209 = !{ptr @phy_para_table_8723d, !210, !"phy_para_table_8723d", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2587, i32 45}
!211 = !{ptr @pcie_gen1_param_8723d, !212, !"pcie_gen1_param_8723d", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2572, i32 39}
!213 = !{ptr @rtw8723d_dig, !214, !"rtw8723d_dig", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2592, i32 32}
!215 = !{ptr @rtw8723d_dig_cck, !216, !"rtw8723d_dig_cck", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2597, i32 32}
!217 = !{ptr @rtw8723d_rf_sipi_addr, !218, !"rtw8723d_rf_sipi_addr", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2601, i32 38}
!219 = !{ptr @rtw8723d_ltecoex_addr, !220, !"rtw8723d_ltecoex_addr", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2608, i32 38}
!221 = !{ptr @rtw8723d_rfe_defs, !222, !"rtw8723d_rfe_defs", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2614, i32 33}
!223 = !{ptr @rtw8723d_rtw_pwr_track_tbl, !224, !"rtw8723d_rtw_pwr_track_tbl", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2669, i32 39}
!225 = !{ptr @rtw8723d_pwrtrk_2gb_n, !226, !"rtw8723d_pwrtrk_2gb_n", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2619, i32 17}
!227 = !{ptr @rtw8723d_pwrtrk_2gb_p, !228, !"rtw8723d_pwrtrk_2gb_p", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2624, i32 17}
!229 = !{ptr @rtw8723d_pwrtrk_2ga_n, !230, !"rtw8723d_pwrtrk_2ga_n", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2629, i32 17}
!231 = !{ptr @rtw8723d_pwrtrk_2ga_p, !232, !"rtw8723d_pwrtrk_2ga_p", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2634, i32 17}
!233 = !{ptr @rtw8723d_pwrtrk_2g_cck_b_n, !234, !"rtw8723d_pwrtrk_2g_cck_b_n", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2639, i32 17}
!235 = !{ptr @rtw8723d_pwrtrk_2g_cck_b_p, !236, !"rtw8723d_pwrtrk_2g_cck_b_p", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2644, i32 17}
!237 = !{ptr @rtw8723d_pwrtrk_2g_cck_a_n, !238, !"rtw8723d_pwrtrk_2g_cck_a_n", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2649, i32 17}
!239 = !{ptr @rtw8723d_pwrtrk_2g_cck_a_p, !240, !"rtw8723d_pwrtrk_2g_cck_a_p", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2654, i32 17}
!241 = !{ptr @rtw8723d_pwrtrk_xtal_n, !242, !"rtw8723d_pwrtrk_xtal_n", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2659, i32 17}
!243 = !{ptr @rtw8723d_pwrtrk_xtal_p, !244, !"rtw8723d_pwrtrk_xtal_p", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2664, i32 17}
!245 = !{ptr @bt_rssi_step_8723d, !246, !"bt_rssi_step_8723d", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2103, i32 17}
!247 = !{ptr @wl_rssi_step_8723d, !248, !"wl_rssi_step_8723d", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2102, i32 17}
!249 = !{ptr @table_nsant_8723d, !250, !"table_nsant_8723d", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2016, i32 37}
!251 = !{ptr @table_sant_8723d, !252, !"table_sant_8723d", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 1979, i32 37}
!253 = !{ptr @tdma_sant_8723d, !254, !"tdma_sant_8723d", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2044, i32 36}
!255 = !{ptr @tdma_nsant_8723d, !256, !"tdma_nsant_8723d", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2076, i32 36}
!257 = !{ptr @rf_para_tx_8723d, !258, !"rf_para_tx_8723d", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2111, i32 34}
!259 = !{ptr @rf_para_rx_8723d, !260, !"rf_para_rx_8723d", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2120, i32 34}
!261 = !{ptr @afh_5g_8723d, !262, !"afh_5g_8723d", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2104, i32 37}
!263 = !{ptr @btg_reg_8723d, !264, !"btg_reg_8723d", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2106, i32 32}
!265 = !{ptr @coex_info_hw_regs_8723d, !266, !"coex_info_hw_regs_8723d", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723d.c", i32 2682, i32 36}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{!"branch_weights", i32 2000, i32 1}
!277 = !{i32 0, i32 33}
!278 = !{i8 0, i8 2}
