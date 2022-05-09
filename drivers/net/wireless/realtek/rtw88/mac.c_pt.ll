; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_set_channel_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_set_channel_mac\09\09\09\09"
module asm "\09.long\09__crc_rtw_set_channel_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_set_channel_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_set_channel_mac\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_set_channel_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtw_pwr_seq_cmd = type { i16, i8, i8, i8, i8, i8 }
%struct.rtw_backup_info = type { i8, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.rtw_fw_hdr = type { i16, i8, i8, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i16, i8, [3 x i8], i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtw_rqpn = type { i32, i32, i32, i32, i32, i32 }
%struct.rtw_prioq_addr = type { i32, i32 }
%struct.rtw_prioq_addrs = type { [4 x %struct.rtw_prioq_addr], i8 }
%struct.rtw_page_table = type { i16, i16, i16, i16, i16 }

@__kstrtab_rtw_set_channel_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_set_channel_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_set_channel_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_set_channel_mac to i32), ptr @__kstrtab_rtw_set_channel_mac, ptr @__kstrtabns_rtw_set_channel_mac }, section "___ksymtab+rtw_set_channel_mac", align 4
@rtw_mac_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac power on failed\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_mac_power_on\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw88/mac.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_mac_power_on._entry_ptr = internal global ptr @rtw_mac_power_on._entry, section ".printk_index", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"busy to start ddma\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"busy to complete ddma\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtw_pwr_cmd_polling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to poll offset=0x%x mask=0x%x value=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_pwr_cmd_polling\00", [44 x i8] zeroinitializer }, align 32
@rtw_pwr_cmd_polling._entry_ptr = internal global ptr @rtw_pwr_cmd_polling._entry, section ".printk_index", align 4
@en_download_firmware_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to check fw download ready\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"en_download_firmware_legacy\00", [36 x i8] zeroinitializer }, align 32
@en_download_firmware_legacy._entry_ptr = internal global ptr @en_download_firmware_legacy._entry, section ".printk_index", align 4
@download_firmware_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 851, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to check download firmware report\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"download_firmware_legacy\00", [39 x i8] zeroinitializer }, align 32
@download_firmware_legacy._entry_ptr = internal global ptr @download_firmware_legacy._entry, section ".printk_index", align 4
@download_firmware_validate_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 878, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to validate firmware\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"download_firmware_validate_legacy\00", [62 x i8] zeroinitializer }, align 32
@download_firmware_validate_legacy._entry_ptr = internal global ptr @download_firmware_validate_legacy._entry, section ".printk_index", align 4
@send_firmware_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to download rsvd page\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_firmware_pkt\00", [46 x i8] zeroinitializer }, align 32
@send_firmware_pkt._entry_ptr = internal global ptr @send_firmware_pkt._entry, section ".printk_index", align 4
@check_fw_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid fw checksum\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_fw_checksum\00", [46 x i8] zeroinitializer }, align 32
@check_fw_checksum._entry_ptr = internal global ptr @check_fw_checksum._entry, section ".printk_index", align 4
@download_firmware_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid fw key\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"download_firmware_validate\00", [37 x i8] zeroinitializer }, align 32
@download_firmware_validate._entry_ptr = internal global ptr @download_firmware_validate._entry, section ".printk_index", align 4
@__rtw_mac_flush_prio_queue._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 968, ptr @.str.24, ptr @.str.4 }, align 1
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timed out to flush queue %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__rtw_mac_flush_prio_queue\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__rtw_mac_flush_prio_queue._entry_ptr = internal global ptr @__rtw_mac_flush_prio_queue._entry, section ".printk_index", align 4
@set_trx_fifo_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1084, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wrong rsvd driver address\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_trx_fifo_info\00", [46 x i8] zeroinitializer }, align 32
@set_trx_fifo_info._entry_ptr = internal global ptr @set_trx_fifo_info._entry, section ".printk_index", align 4
@init_h2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2C queue mismatch\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_h2c\00", [23 x i8] zeroinitializer }, align 32
@init_h2c._entry_ptr = internal global ptr @init_h2c._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 352, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 538, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 545, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 788, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 851, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 878, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 497, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 570, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 695, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 968, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1084, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw88/mac.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1234, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__ksymtab_rtw_set_channel_mac, ptr @__rtw_mac_flush_prio_queue._entry, ptr @__rtw_mac_flush_prio_queue._entry_ptr, ptr @check_fw_checksum._entry, ptr @check_fw_checksum._entry_ptr, ptr @download_firmware_legacy._entry, ptr @download_firmware_legacy._entry_ptr, ptr @download_firmware_validate._entry, ptr @download_firmware_validate._entry_ptr, ptr @download_firmware_validate_legacy._entry, ptr @download_firmware_validate_legacy._entry_ptr, ptr @en_download_firmware_legacy._entry, ptr @en_download_firmware_legacy._entry_ptr, ptr @init_h2c._entry, ptr @init_h2c._entry_ptr, ptr @rtw_mac_power_on._entry, ptr @rtw_mac_power_on._entry_ptr, ptr @rtw_pwr_cmd_polling._entry, ptr @rtw_pwr_cmd_polling._entry_ptr, ptr @send_firmware_pkt._entry, ptr @send_firmware_pkt._entry_ptr, ptr @set_trx_fifo_info._entry, ptr @set_trx_fifo_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_mac_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_pwr_cmd_polling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_download_firmware_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware_validate_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_firmware_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_firmware_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_trx_fifo_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_h2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_channel_mac(ptr noundef %rtwdev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %primary_ch_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bw)
  %cmp = icmp eq i8 %bw, 2
  %0 = add i8 %primary_ch_idx, -1
  %switch.and = and i8 %0, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %1 = select i1 %switch.selectcmp, i8 -112, i8 -96
  %txsc40.0 = select i1 %cmp, i8 %1, i8 0
  %2 = and i8 %primary_ch_idx, 15
  %or = or i8 %txsc40.0, %2
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %3 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8.i, align 4
  tail call void %6(ptr noundef %rtwdev, i32 noundef 1155, i8 noundef zeroext %or) #5
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %10(ptr noundef %rtwdev, i32 noundef 1640) #5
  %and15 = and i32 %call.i, -385
  %11 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bw, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or17 = or i32 %and15, 256
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or19 = or i32 %and15, 128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb, %entry.sw.epilog_crit_edge
  %value32.0 = phi i32 [ %and15, %entry.sw.epilog_crit_edge ], [ %or19, %sw.bb18 ], [ %or17, %sw.bb ]
  %12 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 1640, i32 noundef %value32.0) #5
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %16 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip.i, align 4
  %wlan_cpu.i = getelementptr inbounds %struct.rtw_chip_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wlan_cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wlan_cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end23

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i101 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i101 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i101, align 4
  %call.i102 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 36) #5
  %and25 = and i32 %call.i102, -3145729
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %write32.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %write32.i104 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i104, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 36, i32 noundef %and25) #5
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %write8.i106 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %write8.i106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8.i106, align 4
  tail call void %31(ptr noundef %rtwdev, i32 noundef 1372, i8 noundef zeroext 80) #5
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %write8.i108 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i108 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i108, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 1592, i8 noundef zeroext 80) #5
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8.i, align 4
  %call.i110 = tail call zeroext i8 %39(ptr noundef %rtwdev, i32 noundef 1108) #5
  %40 = and i8 %call.i110, 127
  %41 = add i8 %channel, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %41)
  %42 = icmp ult i8 %41, 13
  %43 = add i8 %channel, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %43)
  %44 = icmp ult i8 %43, 13
  %or.cond = or i1 %42, %44
  %45 = add i8 %channel, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %45)
  %46 = icmp ult i8 %45, 45
  %or.cond115 = or i1 %46, %or.cond
  %47 = add i8 %channel, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %47)
  %48 = icmp ult i8 %47, 29
  %or.cond117 = or i1 %48, %or.cond115
  %masksel = select i1 %or.cond117, i8 -128, i8 0
  %value8.0 = or i8 %40, %masksel
  %49 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i, align 8
  %write8.i112 = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %write8.i112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8.i112, align 4
  tail call void %52(ptr noundef %rtwdev, i32 noundef 1108, i8 noundef zeroext %value8.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_mac_power_on(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8.i.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 28, i8 noundef zeroext 0) #5
  %chip.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %rtwdev, i32 noundef 240) #5
  %and.i = and i32 %call.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write8.i52.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %write8.i52.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8.i52.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15(ptr noundef %rtwdev, i32 noundef 124, i8 noundef zeroext -61) #5
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15(ptr noundef %rtwdev, i32 noundef 124, i8 noundef zeroext -125) #5
  br label %if.end

if.end3.i:                                        ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %17, label %if.end3.i.do.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end3.i.sw.epilog.i_crit_edge
  ]

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %22(ptr noundef %rtwdev, i32 noundef 116) #5
  %or.i.i = or i32 %call.i.i.i, 256
  %23 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 116, i32 noundef %or.i.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end3.i.sw.epilog.i_crit_edge
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %read32.i54.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i54.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i54.i, align 4
  %call.i55.i = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 100) #5
  %or.i = or i32 %call.i55.i, 805306368
  %31 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i.i, align 4
  tail call void %34(ptr noundef %rtwdev, i32 noundef 100, i32 noundef %or.i) #5
  %35 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i, align 8
  %read32.i58.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %read32.i58.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i58.i, align 4
  %call.i59.i = tail call i32 %38(ptr noundef %rtwdev, i32 noundef 76) #5
  %and7.i = and i32 %call.i59.i, -100663297
  %39 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i, align 8
  %write32.i61.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %write32.i61.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i61.i, align 4
  tail call void %42(ptr noundef %rtwdev, i32 noundef 76, i32 noundef %and7.i) #5
  %43 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hci.i.i, align 8
  %read32.i63.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %read32.i63.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32.i63.i, align 4
  %call.i64.i = tail call i32 %46(ptr noundef %rtwdev, i32 noundef 64) #5
  %or9.i = or i32 %call.i64.i, 4
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %write32.i66.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %write32.i66.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write32.i66.i, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %or9.i) #5
  %51 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read8.i.i, align 4
  %call.i68.i = tail call zeroext i8 %54(ptr noundef %rtwdev, i32 noundef 2) #5
  %55 = and i8 %call.i68.i, -4
  %56 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i, align 8
  %write8.i70.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %write8.i70.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8.i70.i, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %55) #5
  %60 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i.i, align 8
  %read8.i72.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %read8.i72.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read8.i72.i, align 4
  %call.i73.i = tail call zeroext i8 %63(ptr noundef %rtwdev, i32 noundef 31) #5
  %64 = and i8 %call.i73.i, -8
  %65 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i, align 8
  %write8.i75.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %write8.i75.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write8.i75.i, align 4
  tail call void %68(ptr noundef %rtwdev, i32 noundef 31, i8 noundef zeroext %64) #5
  %69 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i.i, align 8
  %read32.i77.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %read32.i77.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32.i77.i, align 4
  %call.i78.i = tail call i32 %72(ptr noundef %rtwdev, i32 noundef 236) #5
  %and18.i = and i32 %call.i78.i, -117440513
  %73 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i, align 8
  %write32.i80.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %write32.i80.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i80.i, align 4
  tail call void %76(ptr noundef %rtwdev, i32 noundef 236, i32 noundef %and18.i) #5
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %if.else.i, %if.then2.i
  %call1 = tail call fastcc i32 @rtw_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext true)
  %77 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call1, label %if.end.do.end_crit_edge [
    i32 -114, label %if.then2
    i32 0, label %if.end.if.end11_crit_edge
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @rtw_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext false)
  %call4 = tail call fastcc i32 @rtw_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end11_crit_edge, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.then2.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %78 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip.i.i, align 4
  %wlan_cpu.i.i27 = getelementptr inbounds %struct.rtw_chip_info, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %wlan_cpu.i.i27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wlan_cpu.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i.i28 = icmp eq i32 %81, 1
  br i1 %cmp.i.i28, label %if.then.i29, label %if.end.i

if.then.i29:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %85(ptr noundef %rtwdev, i32 noundef 256, i8 noundef zeroext -1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 429496000) #5
  %87 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i, align 8
  %write8.i2.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %write8.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write8.i2.i.i, align 4
  tail call void %90(ptr noundef %rtwdev, i32 noundef 1059, i8 noundef zeroext 127) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 429496000) #5
  %92 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i8 %95(ptr noundef %rtwdev, i32 noundef 8) #5
  %or5.i.i.i = or i8 %call.i.i.i.i, 8
  %96 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 8, i8 noundef zeroext %or5.i.i.i) #5
  %100 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i4.i.i = tail call zeroext i16 %103(ptr noundef %rtwdev, i32 noundef 64) #5
  %104 = and i16 %call.i.i4.i.i, -4097
  %105 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %108(ptr noundef %rtwdev, i32 noundef 64, i16 noundef zeroext %104) #5
  %109 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %110, i32 0, i32 15
  %111 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %112(ptr noundef %rtwdev, i32 noundef 256, i16 noundef zeroext 767) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %sys_func_en1.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %79, i32 0, i32 31
  %113 = ptrtoint ptr %sys_func_en1.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sys_func_en1.i.i, align 1
  %115 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i30 = getelementptr inbounds %struct.rtw_hci_ops, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %read32.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read32.i.i.i30, align 4
  %call.i.i.i31 = tail call i32 %118(ptr noundef %rtwdev, i32 noundef 4224) #5
  %or.i.i32 = or i32 %call.i.i.i31, 65792
  %119 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i33 = getelementptr inbounds %struct.rtw_hci_ops, ptr %120, i32 0, i32 16
  %121 = ptrtoint ptr %write32.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write32.i.i.i33, align 4
  tail call void %122(ptr noundef %rtwdev, i32 noundef 4224, i32 noundef %or.i.i32) #5
  %123 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i3.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %124, i32 0, i32 11
  %125 = ptrtoint ptr %read8.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read8.i.i.i3.i, align 4
  %call.i.i.i4.i = tail call zeroext i8 %126(ptr noundef %rtwdev, i32 noundef 3) #5
  %or5.i.i5.i = or i8 %call.i.i.i4.i, %114
  %127 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i6.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %128, i32 0, i32 14
  %129 = ptrtoint ptr %write8.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write8.i.i.i6.i, align 4
  tail call void %130(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %or5.i.i5.i) #5
  %131 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 11
  %133 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read8.i.i.i, align 4
  %call.i3.i.i = tail call zeroext i8 %134(ptr noundef %rtwdev, i32 noundef 4355) #5
  %135 = and i8 %call.i3.i.i, -16
  %136 = or i8 %135, 12
  %137 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %138, i32 0, i32 14
  %139 = ptrtoint ptr %write8.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write8.i.i7.i, align 4
  tail call void %140(ptr noundef %rtwdev, i32 noundef 4355, i8 noundef zeroext %136) #5
  %141 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hci.i.i, align 8
  %read32.i6.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %142, i32 0, i32 13
  %143 = ptrtoint ptr %read32.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read32.i6.i.i, align 4
  %call.i7.i.i = tail call i32 %144(ptr noundef %rtwdev, i32 noundef 128) #5
  %and6.i.i = and i32 %call.i7.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and7.i.i = and i32 %call.i7.i.i, -1048577
  %145 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hci.i.i, align 8
  %write32.i9.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %146, i32 0, i32 16
  %147 = ptrtoint ptr %write32.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write32.i9.i.i, align 4
  tail call void %148(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %and7.i.i) #5
  %149 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i, align 8
  %read32.i11.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %150, i32 0, i32 13
  %151 = ptrtoint ptr %read32.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read32.i11.i.i, align 4
  %call.i12.i.i = tail call i32 %152(ptr noundef %rtwdev, i32 noundef 64) #5
  %and9.i.i = and i32 %call.i12.i.i, -524289
  %153 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i, align 8
  %write32.i14.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %154, i32 0, i32 16
  %155 = ptrtoint ptr %write32.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write32.i14.i.i, align 4
  tail call void %156(ptr noundef %rtwdev, i32 noundef 64, i32 noundef %and9.i.i) #5
  br label %cleanup

do.end:                                           ; preds = %if.then2.do.end_crit_edge, %if.end.do.end_crit_edge, %if.end3.i.do.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2.do.end_crit_edge ], [ %call1, %if.end.do.end_crit_edge ], [ -22, %if.end3.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i.i, %if.end.i.cleanup_crit_edge, %if.then.i29
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.then.i29 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext %pwr_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %wlan_cpu.i = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %wlan_cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wlan_cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %rpwm_addr = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %rpwm_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpwm_addr, align 8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %rtwdev, i32 noundef %5) #5
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read16.i, align 4
  %call.i57 = tail call zeroext i16 %13(ptr noundef %rtwdev, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16264, i16 %call.i57)
  %cmp = icmp eq i16 %call.i57, -16264
  br i1 %cmp, label %if.then5, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %14 = and i8 %call.i, -128
  %15 = xor i8 %14, -128
  %16 = ptrtoint ptr %rpwm_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rpwm_addr, align 8
  %18 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef %17, i8 noundef zeroext %15) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %hci.i59 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %22 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i59, align 8
  %read8.i60 = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %read8.i60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8.i60, align 4
  %call.i61 = tail call zeroext i8 %25(ptr noundef %rtwdev, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i61)
  %cmp13 = icmp eq i8 %call.i61, -22
  br i1 %cmp13, label %if.end10.if.end25_crit_edge, label %if.else

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else:                                          ; preds = %if.end10
  %type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp17 = icmp eq i32 %27, 1
  br i1 %cmp17, label %land.lhs.true, label %if.else.if.else23_crit_edge

if.else.if.else23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %28 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i59, align 8
  %read8.i63 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %read8.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8.i63, align 4
  %call.i64 = tail call zeroext i8 %31(ptr noundef %rtwdev, i32 noundef 245) #5
  %32 = and i8 %call.i64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %land.lhs.true.if.else23_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true.if.else23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true.if.else23_crit_edge, %if.else.if.else23_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %land.lhs.true.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %cur_pwr.0.off0 = phi i32 [ 1, %if.else23 ], [ 0, %if.end10.if.end25_crit_edge ], [ 0, %land.lhs.true.if.end25_crit_edge ]
  %conv27 = zext i1 %pwr_on to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_pwr.0.off0, i32 %conv27)
  %cmp30 = icmp eq i32 %cur_pwr.0.off0, %conv27
  br i1 %cmp30, label %if.end25.cleanup_crit_edge, label %if.end33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %pwr_on_seq = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 32
  %pwr_off_seq = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 33
  %cond.in = select i1 %pwr_on, ptr %pwr_on_seq, ptr %pwr_off_seq
  %33 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond = load ptr, ptr %cond.in, align 4
  %cut_version.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %cut_version.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cut_version.i, align 8
  %conv.i = zext i8 %35 to i32
  %shl.i = shl i32 2, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %type.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type.i.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %37, label %if.end33.cleanup_crit_edge [
    i32 0, label %if.end33.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end33.sw.epilog.i_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end33.sw.epilog.i_crit_edge
  %intf_mask.0.i = phi i8 [ 2, %sw.bb2.i ], [ 4, %if.end33.sw.epilog.i_crit_edge ]
  %39 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cond, align 4
  %tobool.not21.i = icmp eq ptr %40, null
  br i1 %tobool.not21.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.if.end.i_crit_edge

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  br label %if.end.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end6.i.if.end.i_crit_edge, %sw.epilog.i.if.end.i_crit_edge
  %41 = phi ptr [ %143, %if.end6.i.if.end.i_crit_edge ], [ %40, %sw.epilog.i.if.end.i_crit_edge ]
  %idx.022.i = phi i32 [ %inc.i, %if.end6.i.if.end.i_crit_edge ], [ 0, %sw.epilog.i.if.end.i_crit_edge ]
  %cmd1132.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cmd1132.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load133.i.i = load i8, ptr %cmd1132.i.i, align 2
  %bf.clear134.i.i = and i8 %bf.load133.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear134.i.i)
  %cmp.not136.i.i = icmp eq i8 %bf.clear134.i.i, 4
  br i1 %cmp.not136.i.i, label %if.end.i.if.end6.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %conv140.in.i.i = phi i8 [ %bf.clear.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %bf.clear134.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %bf.load139.i.i = phi i8 [ %bf.load.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %bf.load133.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %cur_cmd.0137.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %41, %if.end.i.for.body.i.i_crit_edge ]
  %conv140.i.i = zext i8 %conv140.in.i.i to i32
  %intf_mask3.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %intf_mask3.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %intf_mask3.i.i, align 1
  %and121.i.i = and i8 %44, %intf_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and121.i.i)
  %tobool.not.i.i = icmp eq i8 %and121.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %cut_mask6.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %cut_mask6.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cut_mask6.i.i, align 2
  %and9122.i.i = and i8 %46, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9122.i.i)
  %tobool10.not.i.i = icmp eq i8 %and9122.i.i, 0
  br i1 %tobool10.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %47 = zext i32 %conv140.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %conv140.i.i, label %if.end.i.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb35.i.i
    i32 3, label %sw.bb40.i.i
    i32 0, label %if.end.i.i.for.inc.i.i_crit_edge
  ]

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %cur_cmd.0137.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cur_cmd.0137.i.i, align 2
  %conv16.i.i = zext i16 %49 to i32
  %bf.lshr.mask.i.i = and i8 %bf.load139.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %bf.lshr.mask.i.i)
  %cmp19.i.i = icmp eq i8 %bf.lshr.mask.i.i, 48
  %or.i.i = or i32 %conv16.i.i, 270860288
  %spec.select.i.i = select i1 %cmp19.i.i, i32 %or.i.i, i32 %conv16.i.i
  %50 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i59, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %53(ptr noundef %rtwdev, i32 noundef %spec.select.i.i) #5
  %mask.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mask.i.i, align 1
  %neg.i.i = xor i8 %55, -1
  %and25.i.i = and i8 %call.i.i.i, %neg.i.i
  %value27.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %value27.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %value27.i.i, align 2
  %and31123.i.i = and i8 %57, %55
  %or33124.i.i = or i8 %and31123.i.i, %and25.i.i
  %58 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i59, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef %spec.select.i.i, i8 noundef zeroext %or33124.i.i) #5
  br label %for.inc.i.i

sw.bb35.i.i:                                      ; preds = %if.end.i.i
  %bf.lshr.mask.i.i.i = and i8 %bf.load139.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %bf.lshr.mask.i.i.i)
  %cmp.i.i.i = icmp eq i8 %bf.lshr.mask.i.i.i, 48
  %62 = ptrtoint ptr %cur_cmd.0137.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cur_cmd.0137.i.i, align 2
  %conv3.i.i.i = zext i16 %63 to i32
  %or.i.i.i = or i32 %conv3.i.i.i, 270860288
  %offset.0.i.i.i = select i1 %cmp.i.i.i, i32 %or.i.i.i, i32 %conv3.i.i.i
  %mask.i.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mask.i.i.i, align 1
  %value7.i.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %value7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %value7.i.i.i, align 2
  %and.i109.i.i.i = and i8 %67, %65
  %call.i.i.i.i = tail call i64 @ktime_get() #5
  %add.i.i.i.i.i = add i64 %call.i.i.i.i, 1000000000
  %68 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i59, align 8
  %read8.i43.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %read8.i43.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8.i43.i.i.i.i, align 4
  %call.i44.i.i.i.i = tail call zeroext i8 %71(ptr noundef %rtwdev, i32 noundef %offset.0.i.i.i) #5
  %and346.i110.i.i.i = and i8 %call.i44.i.i.i.i, %65
  call void @__sanitizer_cov_trace_cmp1(i8 %and346.i110.i.i.i, i8 %and.i109.i.i.i)
  %cmp47.i.i.i.i = icmp eq i8 %and346.i110.i.i.i, %and.i109.i.i.i
  br i1 %cmp47.i.i.i.i, label %sw.bb35.i.i.for.inc.i.i_crit_edge, label %sw.bb35.i.i.land.lhs.true.i.i.i.i_crit_edge

sw.bb35.i.i.land.lhs.true.i.i.i.i_crit_edge:      ; preds = %sw.bb35.i.i
  br label %land.lhs.true.i.i.i.i

sw.bb35.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i.i.i:                            ; preds = %cond.false.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %sw.bb35.i.i.land.lhs.true.i.i.i.i_crit_edge
  %call5.i.i.i.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i.i.i.i, i64 %add.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp sgt i64 %call5.i.i.i.i, %add.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %do_pwr_poll_cmd.exit.i.i.i, label %cond.false.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 10737400) #5
  %73 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i59, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i8 %76(ptr noundef %rtwdev, i32 noundef %offset.0.i.i.i) #5
  %and3.i111.i.i.i = and i8 %call.i.i.i.i.i, %65
  %cmp.i.i.i.i = icmp eq i8 %and3.i111.i.i.i, %and.i109.i.i.i
  br i1 %cmp.i.i.i.i, label %cond.false.i.i.i.i.for.inc.i.i_crit_edge, label %cond.false.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge

cond.false.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i.i.i

cond.false.i.i.i.i.for.inc.i.i_crit_edge:         ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

do_pwr_poll_cmd.exit.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i
  %77 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i59, align 8
  %read8.i39.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %read8.i39.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8.i39.i.i.i.i, align 4
  %call.i40.i.i.i.i = tail call zeroext i8 %80(ptr noundef %rtwdev, i32 noundef %offset.0.i.i.i) #5
  %.pre.i116.i.i.i = and i8 %call.i40.i.i.i.i, %65
  call void @__sanitizer_cov_trace_cmp1(i8 %.pre.i116.i.i.i, i8 %and.i109.i.i.i)
  %cmp22.i.i.i.i = icmp eq i8 %.pre.i116.i.i.i, %and.i109.i.i.i
  br i1 %cmp22.i.i.i.i, label %do_pwr_poll_cmd.exit.i.i.i.for.inc.i.i_crit_edge, label %if.end10.i.i.i

do_pwr_poll_cmd.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %do_pwr_poll_cmd.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end10.i.i.i:                                   ; preds = %do_pwr_poll_cmd.exit.i.i.i
  %81 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp12.not.i.i.i = icmp eq i32 %82, 0
  br i1 %cmp12.not.i.i.i, label %if.end15.i.i.i, label %if.end10.i.i.i.rtw_pwr_cmd_polling.exit.i.i_crit_edge

if.end10.i.i.i.rtw_pwr_cmd_polling.exit.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_pwr_cmd_polling.exit.i.i

if.end15.i.i.i:                                   ; preds = %if.end10.i.i.i
  %83 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i59, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i75.i.i.i = tail call zeroext i8 %86(ptr noundef %rtwdev, i32 noundef 4) #5
  %87 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip1, align 4
  %id.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp18.i.i.i = icmp eq i8 %90, 2
  %91 = and i8 %call.i75.i.i.i, -9
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.end15.i.i.i.if.end23.i.i.i_crit_edge

if.end15.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i59, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 14
  %94 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 4, i8 noundef zeroext %91) #5
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then20.i.i.i, %if.end15.i.i.i.if.end23.i.i.i_crit_edge
  %or25.i.i.i = or i8 %call.i75.i.i.i, 8
  %96 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hci.i59, align 8
  %write8.i78.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %write8.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8.i78.i.i.i, align 4
  tail call void %99(ptr noundef %rtwdev, i32 noundef 4, i8 noundef zeroext %or25.i.i.i) #5
  %100 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i59, align 8
  %write8.i80.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %write8.i80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write8.i80.i.i.i, align 4
  tail call void %103(ptr noundef %rtwdev, i32 noundef 4, i8 noundef zeroext %91) #5
  %104 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip1, align 4
  %id31.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %id31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %id31.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %107)
  %cmp33.i.i.i = icmp eq i8 %107, 2
  br i1 %cmp33.i.i.i, label %if.then35.i.i.i, label %if.end23.i.i.i.if.end39.i.i.i_crit_edge

if.end23.i.i.i.if.end39.i.i.i_crit_edge:          ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i.i.i

if.then35.i.i.i:                                  ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i59, align 8
  %write8.i82.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %write8.i82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write8.i82.i.i.i, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef 4, i8 noundef zeroext %or25.i.i.i) #5
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then35.i.i.i, %if.end23.i.i.i.if.end39.i.i.i_crit_edge
  %112 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %mask.i.i.i, align 1
  %114 = ptrtoint ptr %value7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %value7.i.i.i, align 2
  %and.i83112.i.i.i = and i8 %115, %113
  %call.i84.i.i.i = tail call i64 @ktime_get() #5
  %add.i.i85.i.i.i = add i64 %call.i84.i.i.i, 1000000000
  %116 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i59, align 8
  %read8.i43.i87.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %read8.i43.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8.i43.i87.i.i.i, align 4
  %call.i44.i88.i.i.i = tail call zeroext i8 %119(ptr noundef %rtwdev, i32 noundef %offset.0.i.i.i) #5
  %and346.i90113.i.i.i = and i8 %call.i44.i88.i.i.i, %113
  call void @__sanitizer_cov_trace_cmp1(i8 %and346.i90113.i.i.i, i8 %and.i83112.i.i.i)
  %cmp47.i91.i.i.i = icmp eq i8 %and346.i90113.i.i.i, %and.i83112.i.i.i
  br i1 %cmp47.i91.i.i.i, label %if.end39.i.i.i.for.inc.i.i_crit_edge, label %if.end39.i.i.i.land.lhs.true.i94.i.i.i_crit_edge

if.end39.i.i.i.land.lhs.true.i94.i.i.i_crit_edge: ; preds = %if.end39.i.i.i
  br label %land.lhs.true.i94.i.i.i

if.end39.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i94.i.i.i:                          ; preds = %cond.false.i105.i.i.i.land.lhs.true.i94.i.i.i_crit_edge, %if.end39.i.i.i.land.lhs.true.i94.i.i.i_crit_edge
  %call5.i92.i.i.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i92.i.i.i, i64 %add.i.i85.i.i.i)
  %cmp3.i.i93.i.i.i = icmp sgt i64 %call5.i92.i.i.i, %add.i.i85.i.i.i
  br i1 %cmp3.i.i93.i.i.i, label %do_pwr_poll_cmd.exit108.i.i.i, label %cond.false.i105.i.i.i

cond.false.i105.i.i.i:                            ; preds = %land.lhs.true.i94.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 10737400) #5
  %121 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i59, align 8
  %read8.i.i100.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %read8.i.i100.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8.i.i100.i.i.i, align 4
  %call.i.i101.i.i.i = tail call zeroext i8 %124(ptr noundef %rtwdev, i32 noundef %offset.0.i.i.i) #5
  %and3.i103114.i.i.i = and i8 %call.i.i101.i.i.i, %113
  %cmp.i104.i.i.i = icmp eq i8 %and3.i103114.i.i.i, %and.i83112.i.i.i
  br i1 %cmp.i104.i.i.i, label %cond.false.i105.i.i.i.for.inc.i.i_crit_edge, label %cond.false.i105.i.i.i.land.lhs.true.i94.i.i.i_crit_edge

cond.false.i105.i.i.i.land.lhs.true.i94.i.i.i_crit_edge: ; preds = %cond.false.i105.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i94.i.i.i

cond.false.i105.i.i.i.for.inc.i.i_crit_edge:      ; preds = %cond.false.i105.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

do_pwr_poll_cmd.exit108.i.i.i:                    ; preds = %land.lhs.true.i94.i.i.i
  %125 = ptrtoint ptr %hci.i59 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i59, align 8
  %read8.i39.i95.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %read8.i39.i95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8.i39.i95.i.i.i, align 4
  %call.i40.i96.i.i.i = tail call zeroext i8 %128(ptr noundef %rtwdev, i32 noundef %offset.0.i.i.i) #5
  %.pre.i98115.i.i.i = and i8 %call.i40.i96.i.i.i, %113
  call void @__sanitizer_cov_trace_cmp1(i8 %.pre.i98115.i.i.i, i8 %and.i83112.i.i.i)
  %cmp22.i107.i.i.i = icmp eq i8 %.pre.i98115.i.i.i, %and.i83112.i.i.i
  br i1 %cmp22.i107.i.i.i, label %do_pwr_poll_cmd.exit108.i.i.i.for.inc.i.i_crit_edge, label %do_pwr_poll_cmd.exit108.i.i.i.rtw_pwr_cmd_polling.exit.i.i_crit_edge

do_pwr_poll_cmd.exit108.i.i.i.rtw_pwr_cmd_polling.exit.i.i_crit_edge: ; preds = %do_pwr_poll_cmd.exit108.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_pwr_cmd_polling.exit.i.i

do_pwr_poll_cmd.exit108.i.i.i.for.inc.i.i_crit_edge: ; preds = %do_pwr_poll_cmd.exit108.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

rtw_pwr_cmd_polling.exit.i.i:                     ; preds = %do_pwr_poll_cmd.exit108.i.i.i.rtw_pwr_cmd_polling.exit.i.i_crit_edge, %if.end10.i.i.i.rtw_pwr_cmd_polling.exit.i.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %129 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i.i, align 4
  %131 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %mask.i.i.i, align 1
  %conv48.i.i.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %value7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %value7.i.i.i, align 2
  %conv50.i.i.i = zext i8 %134 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.7, i32 noundef %offset.0.i.i.i, i32 noundef %conv48.i.i.i, i32 noundef %conv50.i.i.i) #8
  br label %cleanup

sw.bb40.i.i:                                      ; preds = %if.end.i.i
  %value41.i.i = getelementptr inbounds %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 0, i32 5
  %135 = ptrtoint ptr %value41.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %value41.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp43.i.i = icmp eq i8 %136, 0
  %137 = ptrtoint ptr %cur_cmd.0137.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cur_cmd.0137.i.i, align 2
  br i1 %cmp43.i.i, label %cond.false54.i.i, label %cond.false85.i.i

cond.false54.i.i:                                 ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv56.i.i = zext i16 %138 to i32
  tail call void %139(i32 noundef %conv56.i.i) #5
  br label %for.inc.i.i

cond.false85.i.i:                                 ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool88.not130.i.i = icmp eq i16 %138, 0
  br i1 %tobool88.not130.i.i, label %cond.false85.i.i.for.inc.i.i_crit_edge, label %while.body.preheader.i.i

cond.false85.i.i.for.inc.i.i_crit_edge:           ; preds = %cond.false85.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

while.body.preheader.i.i:                         ; preds = %cond.false85.i.i
  %conv87.i.i = zext i16 %138 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %__ms.0131.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv87.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %__ms.0131.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #5
  %tobool88.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool88.not.i.i, label %while.body.i.i.for.inc.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %while.body.i.i.for.inc.i.i_crit_edge, %cond.false85.i.i.for.inc.i.i_crit_edge, %cond.false54.i.i, %do_pwr_poll_cmd.exit108.i.i.i.for.inc.i.i_crit_edge, %cond.false.i105.i.i.i.for.inc.i.i_crit_edge, %if.end39.i.i.i.for.inc.i.i_crit_edge, %do_pwr_poll_cmd.exit.i.i.i.for.inc.i.i_crit_edge, %cond.false.i.i.i.i.for.inc.i.i_crit_edge, %sw.bb35.i.i.for.inc.i.i_crit_edge, %sw.bb.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 1
  %cmd1.i.i = getelementptr %struct.rtw_pwr_seq_cmd, ptr %cur_cmd.0137.i.i, i32 1, i32 3
  %141 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i.i = load i8, ptr %cmd1.i.i, align 2
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %cmp.not.i.i = icmp eq i8 %bf.clear.i.i, 4
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end6.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.end6.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %for.inc.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %inc.i = add i32 %idx.022.i, 1
  %arrayidx.i = getelementptr ptr, ptr %cond, i32 %inc.i
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %143, null
  br i1 %tobool.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.if.end.i_crit_edge

if.end6.i.if.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i.cleanup_crit_edge, %rtw_pwr_cmd_polling.exit.i.i, %if.end.i.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ -114, %if.end25.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ -22, %rtw_pwr_cmd_polling.exit.i.i ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_mac_power_off(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rtw_mac_power_switch(ptr noundef %rtwdev, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ddma_to_fw_fifo(ptr noundef %rtwdev, i32 noundef %ocp_src, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef -2147483648, i32 noundef 0) #5
  br i1 %call, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and = and i32 %size, 262143
  %or = or i32 %and, -2080374784
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32.i.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 4608, i32 noundef %ocp_src) #5
  %4 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i, align 8
  %write32.i5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %write32.i5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i5.i, align 4
  tail call void %7(ptr noundef %rtwdev, i32 noundef 4612, i32 noundef 409468928) #5
  %8 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i, align 8
  %write32.i7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %write32.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i7.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef %or) #5
  %call.i = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef -2147483648, i32 noundef 0) #5
  br i1 %call.i, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.5, %entry.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull %.str.6.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @check_hw_ready(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_download_firmware(ptr noundef %rtwdev, ptr nocapture noundef readonly %fw) local_unnamed_addr #0 align 64 {
entry:
  %bckp.i = alloca [6 x %struct.rtw_backup_info], align 4
  %ltecoex_bckp.i = alloca i32, align 4
  %remain_data.i21.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %wlan_cpu.i = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %wlan_cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wlan_cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %hci.i.i.i.i30 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i.i31 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %read8.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8.i.i.i.i31, align 4
  %call.i.i11.i.i32 = tail call zeroext i8 %7(ptr noundef %rtwdev, i32 noundef 3) #5
  %and.i.i.i33 = and i8 %call.i.i11.i.i32, -5
  %8 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i12.i.i34 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %write8.i.i12.i.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8.i.i12.i.i34, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %and.i.i.i33) #5
  %12 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i14.i.i35 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %read8.i.i14.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8.i.i14.i.i35, align 4
  %call.i.i15.i.i36 = tail call zeroext i8 %15(ptr noundef %rtwdev, i32 noundef 29) #5
  %and.i16.i.i37 = and i8 %call.i.i15.i.i36, -2
  %16 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i17.i.i38 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %write8.i.i17.i.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8.i.i17.i.i38, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 29, i8 noundef zeroext %and.i16.i.i37) #5
  %20 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i13.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %read8.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8.i.i.i13.i, align 4
  %call.i.i.i.i39 = tail call zeroext i8 %23(ptr noundef %rtwdev, i32 noundef 29) #5
  %or5.i.i.i40 = or i8 %call.i.i.i.i39, 1
  %24 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i.i.i41 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %write8.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8.i.i.i.i41, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 29, i8 noundef zeroext %or5.i.i.i40) #5
  %28 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i5.i.i42 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %read8.i.i5.i.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8.i.i5.i.i42, align 4
  %call.i.i6.i.i43 = tail call zeroext i8 %31(ptr noundef %rtwdev, i32 noundef 3) #5
  %or5.i7.i.i44 = or i8 %call.i.i6.i.i43, 4
  %32 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i8.i.i45 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %write8.i.i8.i.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8.i.i8.i.i45, align 4
  tail call void %35(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %or5.i7.i.i44) #5
  %36 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i46 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %read8.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8.i.i.i46, align 4
  %call.i.i.i47 = tail call zeroext i8 %39(ptr noundef %rtwdev, i32 noundef 128) #5
  %or5.i.i48 = or i8 %call.i.i.i47, 1
  %40 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i.i49 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %write8.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8.i.i.i49, align 4
  tail call void %43(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %or5.i.i48) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i51.for.body.i_crit_edge, %if.then
  %try.026.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i51.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8.i.i, align 4
  %call.i.i50 = tail call zeroext i8 %47(ptr noundef %rtwdev, i32 noundef 128) #5
  %48 = and i8 %call.i.i50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not.i = icmp eq i8 %48, 0
  br i1 %tobool1.not.i, label %if.end.i51, label %for.body.i.en_download_firmware_legacy.exit_crit_edge

for.body.i.en_download_firmware_legacy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %en_download_firmware_legacy.exit

if.end.i51:                                       ; preds = %for.body.i
  %49 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i15.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %read8.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8.i.i15.i, align 4
  %call.i.i16.i = tail call zeroext i8 %52(ptr noundef %rtwdev, i32 noundef 128) #5
  %or5.i17.i = or i8 %call.i.i16.i, 1
  %53 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i18.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %write8.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8.i.i18.i, align 4
  tail call void %56(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %or5.i17.i) #5
  tail call void @msleep(i32 noundef 20) #5
  %inc.i = add nuw nsw i32 %try.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i51.for.body.i_crit_edge

if.end.i51.for.body.i_crit_edge:                  ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.9) #8
  br label %en_download_firmware_legacy.exit

en_download_firmware_legacy.exit:                 ; preds = %do.end.i, %for.body.i.en_download_firmware_legacy.exit_crit_edge
  %59 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i.i.i52 = getelementptr inbounds %struct.rtw_hci_ops, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %read32.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i.i.i52, align 4
  %call.i.i20.i = tail call i32 %62(ptr noundef %rtwdev, i32 noundef 128) #5
  %and.i.i53 = and i32 %call.i.i20.i, -524289
  %63 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i.i.i54 = getelementptr inbounds %struct.rtw_hci_ops, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %write32.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32.i.i.i54, align 4
  tail call void %66(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %and.i.i53) #5
  %67 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %68, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 32
  %sub.i.i = add i32 %72, -32
  %and.i.i = and i32 %sub.i.i, 4095
  %73 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i8 %76(ptr noundef %rtwdev, i32 noundef 128) #5
  %or5.i.i.i = or i8 %call.i.i.i.i, 4
  %77 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 14
  %79 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %80(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %or5.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp40.not.i.i = icmp ult i32 %sub.i.i, 4096
  br i1 %cmp40.not.i.i, label %en_download_firmware_legacy.exit.for.end.i.i_crit_edge, label %for.body.preheader.i.i

en_download_firmware_legacy.exit.for.end.i.i_crit_edge: ; preds = %en_download_firmware_legacy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %en_download_firmware_legacy.exit
  %shr.i.i = lshr i32 %sub.i.i, 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %write_firmware_page.exit.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %page.042.i.i = phi i32 [ %inc.i.i, %write_firmware_page.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %data.addr.041.i.i = phi ptr [ %add.ptr1.i.i, %write_firmware_page.exit.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %81 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i20.i.i = tail call i32 %84(ptr noundef %rtwdev, i32 noundef 128) #5
  %and1.i.i.i = and i32 %call.i.i20.i.i, -458753
  %shl.i.i.i = shl i32 %page.042.i.i, 16
  %and2.i.i.i = and i32 %shl.i.i.i, 458752
  %or.i.i.i = or i32 %and1.i.i.i, %and2.i.i.i
  %85 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %86, i32 0, i32 16
  %87 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %88(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %or.i.i.i) #5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %block.023.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i ]
  %ptr.022.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %data.addr.041.i.i, %for.body.i.i ]
  %write_addr.021.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 4096, %for.body.i.i ]
  %89 = ptrtoint ptr %ptr.022.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ptr.022.i.i.i, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %92 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i17.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %write32.i17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i17.i.i.i, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef %write_addr.021.i.i.i, i32 noundef %91) #5
  %add.i.i.i = add nuw nsw i32 %write_addr.021.i.i.i, 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %ptr.022.i.i.i, i32 1
  %inc.i.i.i = add nuw nsw i32 %block.023.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1024
  br i1 %exitcond.not.i.i.i, label %write_firmware_page.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

write_firmware_page.exit.i.i:                     ; preds = %for.body.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %data.addr.041.i.i, i32 4096
  %inc.i.i = add nuw nsw i32 %page.042.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr.i.i
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %write_firmware_page.exit.i.i.for.body.i.i_crit_edge

write_firmware_page.exit.i.i.for.body.i.i_crit_edge: ; preds = %write_firmware_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %write_firmware_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i.i = shl i32 %shr.i.i, 16
  %phi.bo44.i.i = and i32 %phi.bo.i.i, 458752
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.i.i, %en_download_firmware_legacy.exit.for.end.i.i_crit_edge
  %data.addr.0.lcssa.i.i = phi ptr [ %add.ptr.i.i, %en_download_firmware_legacy.exit.for.end.i.i_crit_edge ], [ %add.ptr1.i.i, %for.end.loopexit.i.i ]
  %page.0.lcssa.i.i = phi i32 [ 0, %en_download_firmware_legacy.exit.for.end.i.i_crit_edge ], [ %phi.bo44.i.i, %for.end.loopexit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.end.i.i.if.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remain_data.i21.i.i)
  %96 = ptrtoint ptr %remain_data.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %remain_data.i21.i.i, align 4
  %and.i.i.i = and i32 %72, 3
  %97 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i.i23.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %read32.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read32.i.i23.i.i, align 4
  %call.i.i24.i.i = tail call i32 %100(ptr noundef %rtwdev, i32 noundef 128) #5
  %and1.i25.i.i = and i32 %call.i.i24.i.i, -458753
  %or.i28.i.i = or i32 %and1.i25.i.i, %page.0.lcssa.i.i
  %101 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i.i29.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %write32.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write32.i.i29.i.i, align 4
  tail call void %104(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %or.i28.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp20.not.i.i.i = icmp ult i32 %and.i.i, 4
  br i1 %cmp20.not.i.i.i, label %if.then.i.i.for.end.i.i.i_crit_edge, label %for.body.preheader.i.i.i

if.then.i.i.for.end.i.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.then.i.i
  %shr.i.i.i = lshr i32 %and.i.i, 2
  br label %for.body.i38.i.i

for.body.i38.i.i:                                 ; preds = %for.body.i38.i.i.for.body.i38.i.i_crit_edge, %for.body.preheader.i.i.i
  %block.023.i30.i.i = phi i32 [ %inc.i36.i.i, %for.body.i38.i.i.for.body.i38.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %ptr.022.i31.i.i = phi ptr [ %incdec.ptr.i35.i.i, %for.body.i38.i.i.for.body.i38.i.i_crit_edge ], [ %data.addr.0.lcssa.i.i, %for.body.preheader.i.i.i ]
  %write_addr.021.i32.i.i = phi i32 [ %add.i34.i.i, %for.body.i38.i.i.for.body.i38.i.i_crit_edge ], [ 4096, %for.body.preheader.i.i.i ]
  %105 = ptrtoint ptr %ptr.022.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ptr.022.i31.i.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #5
  %108 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i17.i33.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %109, i32 0, i32 16
  %110 = ptrtoint ptr %write32.i17.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write32.i17.i33.i.i, align 4
  tail call void %111(ptr noundef %rtwdev, i32 noundef %write_addr.021.i32.i.i, i32 noundef %107) #5
  %add.i34.i.i = add nuw nsw i32 %write_addr.021.i32.i.i, 4
  %incdec.ptr.i35.i.i = getelementptr i32, ptr %ptr.022.i31.i.i, i32 1
  %inc.i36.i.i = add nuw nsw i32 %block.023.i30.i.i, 1
  %exitcond.not.i37.i.i = icmp eq i32 %inc.i36.i.i, %shr.i.i.i
  br i1 %exitcond.not.i37.i.i, label %for.body.i38.i.i.for.end.i.i.i_crit_edge, label %for.body.i38.i.i.for.body.i38.i.i_crit_edge

for.body.i38.i.i.for.body.i38.i.i_crit_edge:      ; preds = %for.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i38.i.i

for.body.i38.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i38.i.i.for.end.i.i.i_crit_edge, %if.then.i.i.for.end.i.i.i_crit_edge
  %write_addr.0.lcssa.i.i.i = phi i32 [ 4096, %if.then.i.i.for.end.i.i.i_crit_edge ], [ %add.i34.i.i, %for.body.i38.i.i.for.end.i.i.i_crit_edge ]
  %ptr.0.lcssa.i.i.i = phi ptr [ %data.addr.0.lcssa.i.i, %if.then.i.i.for.end.i.i.i_crit_edge ], [ %incdec.ptr.i35.i.i, %for.body.i38.i.i.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.i.write_firmware_page.exit39.i.i_crit_edge, label %if.then.i.i.i

for.end.i.i.i.write_firmware_page.exit39.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_firmware_page.exit39.i.i

if.then.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %112 = call ptr @memcpy(ptr %remain_data.i21.i.i, ptr %ptr.0.lcssa.i.i.i, i32 %and.i.i.i)
  %113 = ptrtoint ptr %remain_data.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %remain_data.i21.i.i.0.remain_data.i21.i.i.0.remain_data.i21.i.0.remain_data.i21.i.0.remain_data.i21.0.remain_data.i21.0.remain_data.0.remain_data.0.remain_data.0..i.i.i = load i32, ptr %remain_data.i21.i.i, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %remain_data.i21.i.i.0.remain_data.i21.i.i.0.remain_data.i21.i.0.remain_data.i21.i.0.remain_data.i21.0.remain_data.i21.0.remain_data.0.remain_data.0.remain_data.0..i.i.i) #5
  %115 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i19.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %write32.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write32.i19.i.i.i, align 4
  tail call void %118(ptr noundef %rtwdev, i32 noundef %write_addr.0.lcssa.i.i.i, i32 noundef %114) #5
  br label %write_firmware_page.exit39.i.i

write_firmware_page.exit39.i.i:                   ; preds = %if.then.i.i.i, %for.end.i.i.i.write_firmware_page.exit39.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remain_data.i21.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %write_firmware_page.exit39.i.i, %for.end.i.i.if.end.i.i_crit_edge
  %call.i.i = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 128, i32 noundef 4, i32 noundef 1) #5
  br i1 %call.i.i, label %if.end.i.i.download_firmware_legacy.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.download_firmware_legacy.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %download_firmware_legacy.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %119 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.11) #8
  br label %download_firmware_legacy.exit.i

download_firmware_legacy.exit.i:                  ; preds = %do.end.i.i, %if.end.i.i.download_firmware_legacy.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ 0, %if.end.i.i.download_firmware_legacy.exit.i_crit_edge ]
  %121 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i23.i.i = tail call zeroext i8 %124(ptr noundef %rtwdev, i32 noundef 128) #5
  %and.i24.i.i = and i8 %call.i.i23.i.i, -2
  %125 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i25.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %126, i32 0, i32 14
  %127 = ptrtoint ptr %write8.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write8.i.i25.i.i, align 4
  tail call void %128(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %and.i24.i.i) #5
  br i1 %call.i.i, label %if.end.i, label %download_firmware_legacy.exit.i.return_crit_edge

download_firmware_legacy.exit.i.return_crit_edge: ; preds = %download_firmware_legacy.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i:                                         ; preds = %download_firmware_legacy.exit.i
  %129 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %130, i32 0, i32 13
  %131 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %132(ptr noundef %rtwdev, i32 noundef 128) #5
  %or.i.i = and i32 %call.i.i.i, -67
  %and.i18.i = or i32 %or.i.i, 2
  %133 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %134, i32 0, i32 16
  %135 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %136(ptr noundef %rtwdev, i32 noundef 128, i32 noundef %and.i18.i) #5
  %137 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i.i19.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %138, i32 0, i32 11
  %139 = ptrtoint ptr %read8.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read8.i.i.i.i19.i, align 4
  %call.i.i11.i.i.i = tail call zeroext i8 %140(ptr noundef %rtwdev, i32 noundef 3) #5
  %and.i.i.i.i = and i8 %call.i.i11.i.i.i, -5
  %141 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i12.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %142, i32 0, i32 14
  %143 = ptrtoint ptr %write8.i.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write8.i.i12.i.i.i, align 4
  tail call void %144(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %and.i.i.i.i) #5
  %145 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i14.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %146, i32 0, i32 11
  %147 = ptrtoint ptr %read8.i.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read8.i.i14.i.i.i, align 4
  %call.i.i15.i.i.i = tail call zeroext i8 %148(ptr noundef %rtwdev, i32 noundef 29) #5
  %and.i16.i.i.i = and i8 %call.i.i15.i.i.i, -2
  %149 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i17.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %150, i32 0, i32 14
  %151 = ptrtoint ptr %write8.i.i17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write8.i.i17.i.i.i, align 4
  tail call void %152(ptr noundef %rtwdev, i32 noundef 29, i8 noundef zeroext %and.i16.i.i.i) #5
  %153 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i.i16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %read8.i.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read8.i.i.i16.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i8 %156(ptr noundef %rtwdev, i32 noundef 29) #5
  %or5.i.i.i.i = or i8 %call.i.i.i.i.i, 1
  %157 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %158, i32 0, i32 14
  %159 = ptrtoint ptr %write8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write8.i.i.i.i.i, align 4
  tail call void %160(ptr noundef %rtwdev, i32 noundef 29, i8 noundef zeroext %or5.i.i.i.i) #5
  %161 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read8.i.i5.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %162, i32 0, i32 11
  %163 = ptrtoint ptr %read8.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read8.i.i5.i.i.i, align 4
  %call.i.i6.i.i.i = tail call zeroext i8 %164(ptr noundef %rtwdev, i32 noundef 3) #5
  %or5.i7.i.i.i = or i8 %call.i.i6.i.i.i, 4
  %165 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hci.i.i.i.i30, align 8
  %write8.i.i8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %166, i32 0, i32 14
  %167 = ptrtoint ptr %write8.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write8.i.i8.i.i.i, align 4
  tail call void %168(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %or5.i7.i.i.i) #5
  %169 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %170, i32 0, i32 13
  %171 = ptrtoint ptr %read32.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read32.i18.i.i, align 4
  %call.i19.i.i = tail call i32 %172(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.i.i = and i32 %call.i19.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.i.i)
  %cmp3.i.i = icmp eq i32 %and2.i.i, 198
  br i1 %cmp3.i.i, label %if.end.i.if.end5.i_crit_edge, label %if.end.i20.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.i20.i:                                     ; preds = %if.end.i
  tail call void @msleep(i32 noundef 20) #5
  %173 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.1.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %174, i32 0, i32 13
  %175 = ptrtoint ptr %read32.i18.1.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %read32.i18.1.i.i, align 4
  %call.i19.1.i.i = tail call i32 %176(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.1.i.i = and i32 %call.i19.1.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.1.i.i)
  %cmp3.1.i.i = icmp eq i32 %and2.1.i.i, 198
  br i1 %cmp3.1.i.i, label %if.end.i20.i.if.end5.i_crit_edge, label %if.end.1.i.i

if.end.i20.i.if.end5.i_crit_edge:                 ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.1.i.i:                                     ; preds = %if.end.i20.i
  tail call void @msleep(i32 noundef 20) #5
  %177 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.2.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %178, i32 0, i32 13
  %179 = ptrtoint ptr %read32.i18.2.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read32.i18.2.i.i, align 4
  %call.i19.2.i.i = tail call i32 %180(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.2.i.i = and i32 %call.i19.2.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.2.i.i)
  %cmp3.2.i.i = icmp eq i32 %and2.2.i.i, 198
  br i1 %cmp3.2.i.i, label %if.end.1.i.i.if.end5.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  tail call void @msleep(i32 noundef 20) #5
  %181 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.3.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %182, i32 0, i32 13
  %183 = ptrtoint ptr %read32.i18.3.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read32.i18.3.i.i, align 4
  %call.i19.3.i.i = tail call i32 %184(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.3.i.i = and i32 %call.i19.3.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.3.i.i)
  %cmp3.3.i.i = icmp eq i32 %and2.3.i.i, 198
  br i1 %cmp3.3.i.i, label %if.end.2.i.i.if.end5.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  tail call void @msleep(i32 noundef 20) #5
  %185 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.4.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %186, i32 0, i32 13
  %187 = ptrtoint ptr %read32.i18.4.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read32.i18.4.i.i, align 4
  %call.i19.4.i.i = tail call i32 %188(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.4.i.i = and i32 %call.i19.4.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.4.i.i)
  %cmp3.4.i.i = icmp eq i32 %and2.4.i.i, 198
  br i1 %cmp3.4.i.i, label %if.end.3.i.i.if.end5.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  tail call void @msleep(i32 noundef 20) #5
  %189 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.5.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %190, i32 0, i32 13
  %191 = ptrtoint ptr %read32.i18.5.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read32.i18.5.i.i, align 4
  %call.i19.5.i.i = tail call i32 %192(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.5.i.i = and i32 %call.i19.5.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.5.i.i)
  %cmp3.5.i.i = icmp eq i32 %and2.5.i.i, 198
  br i1 %cmp3.5.i.i, label %if.end.4.i.i.if.end5.i_crit_edge, label %if.end.5.i.i

if.end.4.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  tail call void @msleep(i32 noundef 20) #5
  %193 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.6.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %194, i32 0, i32 13
  %195 = ptrtoint ptr %read32.i18.6.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read32.i18.6.i.i, align 4
  %call.i19.6.i.i = tail call i32 %196(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.6.i.i = and i32 %call.i19.6.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.6.i.i)
  %cmp3.6.i.i = icmp eq i32 %and2.6.i.i, 198
  br i1 %cmp3.6.i.i, label %if.end.5.i.i.if.end5.i_crit_edge, label %if.end.6.i.i

if.end.5.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  tail call void @msleep(i32 noundef 20) #5
  %197 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.7.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %198, i32 0, i32 13
  %199 = ptrtoint ptr %read32.i18.7.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read32.i18.7.i.i, align 4
  %call.i19.7.i.i = tail call i32 %200(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.7.i.i = and i32 %call.i19.7.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.7.i.i)
  %cmp3.7.i.i = icmp eq i32 %and2.7.i.i, 198
  br i1 %cmp3.7.i.i, label %if.end.6.i.i.if.end5.i_crit_edge, label %if.end.7.i.i

if.end.6.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  tail call void @msleep(i32 noundef 20) #5
  %201 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %202, i32 0, i32 13
  %203 = ptrtoint ptr %read32.i18.8.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %read32.i18.8.i.i, align 4
  %call.i19.8.i.i = tail call i32 %204(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.8.i.i = and i32 %call.i19.8.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.8.i.i)
  %cmp3.8.i.i = icmp eq i32 %and2.8.i.i, 198
  br i1 %cmp3.8.i.i, label %if.end.7.i.i.if.end5.i_crit_edge, label %if.end.8.i.i

if.end.7.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  tail call void @msleep(i32 noundef 20) #5
  %205 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hci.i.i.i.i30, align 8
  %read32.i18.9.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %206, i32 0, i32 13
  %207 = ptrtoint ptr %read32.i18.9.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %read32.i18.9.i.i, align 4
  %call.i19.9.i.i = tail call i32 %208(ptr noundef %rtwdev, i32 noundef 128) #5
  %and2.9.i.i = and i32 %call.i19.9.i.i, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %and2.9.i.i)
  %cmp3.9.i.i = icmp eq i32 %and2.9.i.i, 198
  br i1 %cmp3.9.i.i, label %if.end.8.i.i.if.end5.i_crit_edge, label %download_firmware_validate_legacy.exit.i

if.end.8.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

download_firmware_validate_legacy.exit.i:         ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 20) #5
  %dev.i21.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %209 = ptrtoint ptr %dev.i21.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i21.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.13) #8
  br label %return

if.end5.i:                                        ; preds = %if.end.8.i.i.if.end5.i_crit_edge, %if.end.7.i.i.if.end5.i_crit_edge, %if.end.6.i.i.if.end5.i_crit_edge, %if.end.5.i.i.if.end5.i_crit_edge, %if.end.4.i.i.if.end5.i_crit_edge, %if.end.3.i.i.if.end5.i_crit_edge, %if.end.2.i.i.if.end5.i_crit_edge, %if.end.1.i.i.if.end5.i_crit_edge, %if.end.i20.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %211 = ptrtoint ptr %hci.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hci.i.i.i.i30, align 8
  %setup.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %setup.i.i, align 4
  %call.i23.i = tail call i32 %214(ptr noundef %rtwdev) #5
  %h2c.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29
  %215 = ptrtoint ptr %h2c.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %h2c.i, align 8
  %seq.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %216 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %seq.i, align 8
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %bckp.i) #5
  %217 = call ptr @memset(ptr %bckp.i, i32 255, i32 72)
  %218 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %fw, align 4
  %data1.i = getelementptr inbounds %struct.firmware, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %data1.i, align 4
  %222 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %219, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ltecoex_bckp.i) #5
  %224 = ptrtoint ptr %ltecoex_bckp.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %ltecoex_bckp.i, align 4, !annotation !76
  %dmem_size1.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 19
  %225 = ptrtoint ptr %dmem_size1.i.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %226 = load i32, ptr %dmem_size1.i.i, align 1
  %imem_size2.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 22
  %227 = ptrtoint ptr %imem_size2.i.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %imem_size2.i.i, align 1
  %mem_usage.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 14
  %229 = ptrtoint ptr %mem_usage.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %mem_usage.i.i, align 1
  %231 = and i8 %230, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.not.i.i6 = icmp eq i8 %231, 0
  br i1 %tobool.not.i.i6, label %if.end.cond.end.thread.i.i_crit_edge, label %cond.end.i.i

if.end.cond.end.thread.i.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread.i.i

cond.end.i.i:                                     ; preds = %if.end
  %emem_size3.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 23
  %232 = ptrtoint ptr %emem_size3.i.i to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %233 = load i32, ptr %emem_size3.i.i, align 1
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool5.not.i.i = icmp eq i32 %233, 0
  br i1 %tobool5.not.i.i, label %cond.end.i.i.cond.end.thread.i.i_crit_edge, label %cond.end.i.i.check_firmware_size.exit.i_crit_edge

cond.end.i.i.check_firmware_size.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_firmware_size.exit.i

cond.end.i.i.cond.end.thread.i.i_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread.i.i

cond.end.thread.i.i:                              ; preds = %cond.end.i.i.cond.end.thread.i.i_crit_edge, %if.end.cond.end.thread.i.i_crit_edge
  br label %check_firmware_size.exit.i

check_firmware_size.exit.i:                       ; preds = %cond.end.thread.i.i, %cond.end.i.i.check_firmware_size.exit.i_crit_edge
  %cond25.i.i = phi i32 [ 0, %cond.end.thread.i.i ], [ %234, %cond.end.i.i.check_firmware_size.exit.i_crit_edge ]
  %235 = phi i32 [ 0, %cond.end.thread.i.i ], [ 8, %cond.end.i.i.check_firmware_size.exit.i_crit_edge ]
  %236 = tail call i32 @llvm.bswap.i32(i32 %228) #5
  %237 = tail call i32 @llvm.bswap.i32(i32 %226) #5
  %add7.i.i = add i32 %237, 80
  %add4.i.i = add i32 %add7.i.i, %236
  %add9.i.i = add i32 %add4.i.i, %cond25.i.i
  %add10.i.i = add i32 %add9.i.i, %235
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i.i, i32 %223)
  %cmp.not.i.i = icmp eq i32 %add10.i.i, %223
  br i1 %cmp.not.i.i, label %if.end.i7, label %check_firmware_size.exit.i.__rtw_download_firmware.exit_crit_edge

check_firmware_size.exit.i.__rtw_download_firmware.exit_crit_edge: ; preds = %check_firmware_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rtw_download_firmware.exit

if.end.i7:                                        ; preds = %check_firmware_size.exit.i
  %call4.i = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, ptr noundef nonnull %ltecoex_bckp.i) #5
  br i1 %call4.i, label %if.end6.i, label %if.end.i7.__rtw_download_firmware.exit_crit_edge

if.end.i7.__rtw_download_firmware.exit_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rtw_download_firmware.exit

if.end6.i:                                        ; preds = %if.end.i7
  %hci.i.i.i.i8 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %238 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i.i.i9 = getelementptr inbounds %struct.rtw_hci_ops, ptr %239, i32 0, i32 11
  %240 = ptrtoint ptr %read8.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read8.i.i.i.i9, align 4
  %call.i.i11.i.i = call zeroext i8 %241(ptr noundef %rtwdev, i32 noundef 3) #5
  %and.i.i.i10 = and i8 %call.i.i11.i.i, -5
  %242 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i12.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %243, i32 0, i32 14
  %244 = ptrtoint ptr %write8.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write8.i.i12.i.i, align 4
  call void %245(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %and.i.i.i10) #5
  %246 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i14.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %247, i32 0, i32 11
  %248 = ptrtoint ptr %read8.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read8.i.i14.i.i, align 4
  %call.i.i15.i.i = call zeroext i8 %249(ptr noundef %rtwdev, i32 noundef 29) #5
  %and.i16.i.i = and i8 %call.i.i15.i.i, -2
  %250 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i17.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %251, i32 0, i32 14
  %252 = ptrtoint ptr %write8.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write8.i.i17.i.i, align 4
  call void %253(ptr noundef %rtwdev, i32 noundef 29, i8 noundef zeroext %and.i16.i.i) #5
  %254 = ptrtoint ptr %bckp.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 1, ptr %bckp.i, align 4
  %reg.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 0, i32 1
  %255 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 269, ptr %reg.i.i, align 4
  %256 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %257, i32 0, i32 11
  %258 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i11 = call zeroext i8 %259(ptr noundef %rtwdev, i32 noundef 269) #5
  %conv.i.i = zext i8 %call.i.i.i11 to i32
  %val.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 0, i32 2
  %260 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %conv.i.i, ptr %val.i.i, align 4
  %261 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %262, i32 0, i32 14
  %263 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write8.i.i.i, align 4
  call void %264(ptr noundef %rtwdev, i32 noundef 269, i8 noundef zeroext -64) #5
  %arrayidx6.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 1
  %265 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %arrayidx6.i.i, align 4
  %reg10.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 1, i32 1
  %266 = ptrtoint ptr %reg10.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 256, ptr %reg10.i.i, align 4
  %267 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i149.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %268, i32 0, i32 11
  %269 = ptrtoint ptr %read8.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read8.i149.i.i, align 4
  %call.i150.i.i = call zeroext i8 %270(ptr noundef %rtwdev, i32 noundef 256) #5
  %conv12.i.i = zext i8 %call.i150.i.i to i32
  %val15.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 1, i32 2
  %271 = ptrtoint ptr %val15.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %conv12.i.i, ptr %val15.i.i, align 4
  %arrayidx18.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 2
  %272 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 4, ptr %arrayidx18.i.i, align 4
  %reg22.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 2, i32 1
  %273 = ptrtoint ptr %reg22.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 4912, ptr %reg22.i.i, align 4
  %val25.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 2, i32 2
  %274 = ptrtoint ptr %val25.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -2147483648, ptr %val25.i.i, align 4
  %275 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i152.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %276, i32 0, i32 14
  %277 = ptrtoint ptr %write8.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write8.i152.i.i, align 4
  call void %278(ptr noundef %rtwdev, i32 noundef 256, i8 noundef zeroext 5) #5
  %279 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write32.i.i.i12 = getelementptr inbounds %struct.rtw_hci_ops, ptr %280, i32 0, i32 16
  %281 = ptrtoint ptr %write32.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %write32.i.i.i12, align 4
  call void %282(ptr noundef %rtwdev, i32 noundef 4912, i32 noundef -2147483648) #5
  %arrayidx28.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 3
  %283 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 2, ptr %arrayidx28.i.i, align 4
  %reg32.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 3, i32 1
  %284 = ptrtoint ptr %reg32.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 560, ptr %reg32.i.i, align 4
  %285 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %286, i32 0, i32 12
  %287 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read16.i.i.i, align 4
  %call.i155.i.i = call zeroext i16 %288(ptr noundef %rtwdev, i32 noundef 560) #5
  %conv34.i.i = zext i16 %call.i155.i.i to i32
  %val37.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 3, i32 2
  %289 = ptrtoint ptr %val37.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %conv34.i.i, ptr %val37.i.i, align 4
  %arrayidx40.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 4
  %290 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 4, ptr %arrayidx40.i.i, align 4
  %reg44.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 4, i32 1
  %291 = ptrtoint ptr %reg44.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 556, ptr %reg44.i.i, align 4
  %292 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read32.i.i.i13 = getelementptr inbounds %struct.rtw_hci_ops, ptr %293, i32 0, i32 13
  %294 = ptrtoint ptr %read32.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read32.i.i.i13, align 4
  %call.i157.i.i = call i32 %295(ptr noundef %rtwdev, i32 noundef 556) #5
  %or.i.i14 = or i32 %call.i157.i.i, -2147483648
  %val48.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 4, i32 2
  %296 = ptrtoint ptr %val48.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %or.i.i14, ptr %val48.i.i, align 4
  %297 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %298, i32 0, i32 15
  %299 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write16.i.i.i, align 4
  call void %300(ptr noundef %rtwdev, i32 noundef 560, i16 noundef zeroext 512) #5
  %301 = ptrtoint ptr %val48.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %val48.i.i, align 4
  %303 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write32.i160.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %304, i32 0, i32 16
  %305 = ptrtoint ptr %write32.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %write32.i160.i.i, align 4
  call void %306(ptr noundef %rtwdev, i32 noundef 556, i32 noundef %302) #5
  %307 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i162.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %308, i32 0, i32 11
  %309 = ptrtoint ptr %read8.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %read8.i162.i.i, align 4
  %call.i163.i.i = call zeroext i8 %310(ptr noundef %rtwdev, i32 noundef 1360) #5
  %arrayidx55.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 5
  %311 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 1, ptr %arrayidx55.i.i, align 4
  %reg59.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 5, i32 1
  %312 = ptrtoint ptr %reg59.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 1360, ptr %reg59.i.i, align 4
  %conv60.i.i = zext i8 %call.i163.i.i to i32
  %val63.i.i = getelementptr inbounds %struct.rtw_backup_info, ptr %bckp.i, i32 5, i32 2
  %313 = ptrtoint ptr %val63.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %conv60.i.i, ptr %val63.i.i, align 4
  %and.i.i15 = and i8 %call.i163.i.i, -25
  %or66.i.i = or i8 %and.i.i15, 16
  %314 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i165.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %315, i32 0, i32 14
  %316 = ptrtoint ptr %write8.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %write8.i165.i.i, align 4
  call void %317(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %or66.i.i) #5
  %318 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i.i46.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %319, i32 0, i32 11
  %320 = ptrtoint ptr %read8.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %read8.i.i.i46.i, align 4
  %call.i.i.i.i16 = call zeroext i8 %321(ptr noundef %rtwdev, i32 noundef 4226) #5
  %and.i.i47.i = and i8 %call.i.i.i.i16, -2
  %322 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i.i.i17 = getelementptr inbounds %struct.rtw_hci_ops, ptr %323, i32 0, i32 14
  %324 = ptrtoint ptr %write8.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %write8.i.i.i.i17, align 4
  call void %325(ptr noundef %rtwdev, i32 noundef 4226, i8 noundef zeroext %and.i.i47.i) #5
  %326 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i5.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %327, i32 0, i32 11
  %328 = ptrtoint ptr %read8.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %read8.i.i5.i.i, align 4
  %call.i.i6.i.i = call zeroext i8 %329(ptr noundef %rtwdev, i32 noundef 9) #5
  %and.i7.i.i = and i8 %call.i.i6.i.i, -65
  %330 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %331, i32 0, i32 14
  %332 = ptrtoint ptr %write8.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %write8.i.i8.i.i, align 4
  call void %333(ptr noundef %rtwdev, i32 noundef 9, i8 noundef zeroext %and.i7.i.i) #5
  %334 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i10.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %335, i32 0, i32 11
  %336 = ptrtoint ptr %read8.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %read8.i.i10.i.i, align 4
  %call.i.i11.i48.i = call zeroext i8 %337(ptr noundef %rtwdev, i32 noundef 4226) #5
  %or5.i.i.i18 = or i8 %call.i.i11.i48.i, 1
  %338 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i12.i49.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %339, i32 0, i32 14
  %340 = ptrtoint ptr %write8.i.i12.i49.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %write8.i.i12.i49.i, align 4
  call void %341(ptr noundef %rtwdev, i32 noundef 4226, i8 noundef zeroext %or5.i.i.i18) #5
  %342 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i14.i50.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %343, i32 0, i32 11
  %344 = ptrtoint ptr %read8.i.i14.i50.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %read8.i.i14.i50.i, align 4
  %call.i.i15.i51.i = call zeroext i8 %345(ptr noundef %rtwdev, i32 noundef 9) #5
  %or5.i16.i.i = or i8 %call.i.i15.i51.i, 64
  %346 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i17.i52.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %347, i32 0, i32 14
  %348 = ptrtoint ptr %write8.i.i17.i52.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %write8.i.i17.i52.i, align 4
  call void %349(ptr noundef %rtwdev, i32 noundef 9, i8 noundef zeroext %or5.i16.i.i) #5
  %350 = ptrtoint ptr %dmem_size1.i.i to i32
  call void @__asan_loadN_noabort(i32 %350, i32 4)
  %351 = load i32, ptr %dmem_size1.i.i, align 1
  %352 = call i32 @llvm.bswap.i32(i32 %351) #5
  %353 = ptrtoint ptr %imem_size2.i.i to i32
  call void @__asan_loadN_noabort(i32 %353, i32 4)
  %354 = load i32, ptr %imem_size2.i.i, align 1
  %355 = call i32 @llvm.bswap.i32(i32 %354) #5
  %356 = ptrtoint ptr %mem_usage.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %mem_usage.i.i, align 1
  %358 = and i8 %357, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool.not.i56.i = icmp eq i8 %358, 0
  br i1 %tobool.not.i56.i, label %cond.end.thread.i57.i, label %cond.end.i61.i

cond.end.thread.i57.i:                            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %add3.i.i = add i32 %352, 8
  %add44.i.i = add i32 %355, 8
  br label %362

cond.end.i61.i:                                   ; preds = %if.end6.i
  %emem_size3.i58.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 23
  %359 = ptrtoint ptr %emem_size3.i58.i to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %360 = load i32, ptr %emem_size3.i58.i, align 1
  %361 = call i32 @llvm.bswap.i32(i32 %360) #5
  %add.i.i = add i32 %352, 8
  %add4.i59.i = add i32 %355, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool5.not.i60.i = icmp eq i32 %360, 0
  br i1 %tobool5.not.i60.i, label %cond.end.i61.i._crit_edge, label %cond.end.i61.i._crit_edge55

cond.end.i61.i._crit_edge55:                      ; preds = %cond.end.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %363

cond.end.i61.i._crit_edge:                        ; preds = %cond.end.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %362

362:                                              ; preds = %cond.end.i61.i._crit_edge, %cond.end.thread.i57.i
  %add411.i.i = phi i32 [ %add44.i.i, %cond.end.thread.i57.i ], [ %add4.i59.i, %cond.end.i61.i._crit_edge ]
  %add9.i62.i = phi i32 [ %add3.i.i, %cond.end.thread.i57.i ], [ %add.i.i, %cond.end.i61.i._crit_edge ]
  br label %363

363:                                              ; preds = %362, %cond.end.i61.i._crit_edge55
  %add410.i.i = phi i32 [ %add411.i.i, %362 ], [ %add4.i59.i, %cond.end.i61.i._crit_edge55 ]
  %add8.i.i = phi i32 [ %add9.i62.i, %362 ], [ %add.i.i, %cond.end.i61.i._crit_edge55 ]
  %cond6.i.i = phi i32 [ 0, %362 ], [ %361, %cond.end.i61.i._crit_edge55 ]
  %364 = phi i32 [ 0, %362 ], [ 8, %cond.end.i61.i._crit_edge55 ]
  %add7.i63.i = add i32 %364, %cond6.i.i
  %365 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read16.i.i65.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %366, i32 0, i32 12
  %367 = ptrtoint ptr %read16.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read16.i.i65.i, align 4
  %call.i.i66.i = call zeroext i16 %368(ptr noundef %rtwdev, i32 noundef 128) #5
  %369 = and i16 %call.i.i66.i, 14336
  %370 = or i16 %369, 1
  %371 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write16.i.i67.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %372, i32 0, i32 15
  %373 = ptrtoint ptr %write16.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %write16.i.i67.i, align 4
  call void %374(ptr noundef %rtwdev, i32 noundef 128, i16 noundef zeroext %370) #5
  %add.ptr.i.i19 = getelementptr i8, ptr %221, i32 64
  %dmem_addr.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 18
  %375 = ptrtoint ptr %dmem_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %375, i32 4)
  %376 = load i32, ptr %dmem_addr.i.i, align 1
  %377 = and i32 %376, -129
  %378 = call i32 @llvm.bswap.i32(i32 %377) #5
  %call14.i.i = call fastcc i32 @download_firmware_to_mem(ptr noundef %rtwdev, ptr noundef %add.ptr.i.i19, i32 noundef %378, i32 noundef %add8.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end.i.i20, label %.dlfw_fail.i_crit_edge

.dlfw_fail.i_crit_edge:                           ; preds = %363
  call void @__sanitizer_cov_trace_pc() #7
  br label %dlfw_fail.i

if.end.i.i20:                                     ; preds = %363
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i19, i32 %add8.i.i
  %imem_addr.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 25
  %379 = ptrtoint ptr %imem_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %379, i32 4)
  %380 = load i32, ptr %imem_addr.i.i, align 1
  %381 = and i32 %380, -129
  %382 = call i32 @llvm.bswap.i32(i32 %381) #5
  %call19.i.i = call fastcc i32 @download_firmware_to_mem(ptr noundef %rtwdev, ptr noundef %add.ptr17.i.i, i32 noundef %382, i32 noundef %add410.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end.i.i20.dlfw_fail.i_crit_edge

if.end.i.i20.dlfw_fail.i_crit_edge:               ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %dlfw_fail.i

if.end22.i.i:                                     ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add7.i63.i)
  %tobool23.not.i.i = icmp eq i32 %add7.i63.i, 0
  br i1 %tobool23.not.i.i, label %if.end22.i.i.if.end9.i_crit_edge, label %if.then24.i.i

if.end22.i.i.if.end9.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr17.i.i, i32 %add410.i.i
  %emem_addr.i.i = getelementptr inbounds %struct.rtw_fw_hdr, ptr %221, i32 0, i32 24
  %383 = ptrtoint ptr %emem_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %383, i32 4)
  %384 = load i32, ptr %emem_addr.i.i, align 1
  %385 = and i32 %384, -129
  %386 = call i32 @llvm.bswap.i32(i32 %385) #5
  %call29.i.i = call fastcc i32 @download_firmware_to_mem(ptr noundef %rtwdev, ptr noundef %add.ptr27.i.i, i32 noundef %386, i32 noundef %add7.i63.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then24.i.i.if.end9.i_crit_edge, label %if.then24.i.i.dlfw_fail.i_crit_edge

if.then24.i.i.dlfw_fail.i_crit_edge:              ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dlfw_fail.i

if.then24.i.i.if.end9.i_crit_edge:                ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then24.i.i.if.end9.i_crit_edge, %if.end22.i.i.if.end9.i_crit_edge
  call void @rtw_restore_reg(ptr noundef %rtwdev, ptr noundef nonnull %bckp.i, i32 noundef 6) #5
  %387 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write32.i.i69.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %388, i32 0, i32 16
  %389 = ptrtoint ptr %write32.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %write32.i.i69.i, align 4
  call void %390(ptr noundef %rtwdev, i32 noundef 528, i32 noundef 4) #5
  %391 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read16.i.i70.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %392, i32 0, i32 12
  %393 = ptrtoint ptr %read16.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %read16.i.i70.i, align 4
  %call.i.i71.i = call zeroext i16 %394(ptr noundef %rtwdev, i32 noundef 128) #5
  %395 = and i16 %call.i.i71.i, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %395)
  %cmp.not.i72.i = icmp eq i16 %395, 80
  br i1 %cmp.not.i72.i, label %if.end.i75.i, label %if.end9.i.download_firmware_end_flow.exit.i_crit_edge

if.end9.i.download_firmware_end_flow.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %download_firmware_end_flow.exit.i

if.end.i75.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i73.i = and i16 %call.i.i71.i, -16386
  %and3.i.i = or i16 %or.i73.i, 16384
  %396 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write16.i.i74.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %397, i32 0, i32 15
  %398 = ptrtoint ptr %write16.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %write16.i.i74.i, align 4
  call void %399(ptr noundef %rtwdev, i32 noundef 128, i16 noundef zeroext %and3.i.i) #5
  br label %download_firmware_end_flow.exit.i

download_firmware_end_flow.exit.i:                ; preds = %if.end.i75.i, %if.end9.i.download_firmware_end_flow.exit.i_crit_edge
  %400 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i.i77.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %401, i32 0, i32 11
  %402 = ptrtoint ptr %read8.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %read8.i.i.i77.i, align 4
  %call.i.i.i78.i = call zeroext i8 %403(ptr noundef %rtwdev, i32 noundef 29) #5
  %or5.i.i79.i = or i8 %call.i.i.i78.i, 1
  %404 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i.i80.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %405, i32 0, i32 14
  %406 = ptrtoint ptr %write8.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %write8.i.i.i80.i, align 4
  call void %407(ptr noundef %rtwdev, i32 noundef 29, i8 noundef zeroext %or5.i.i79.i) #5
  %408 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i5.i81.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %409, i32 0, i32 11
  %410 = ptrtoint ptr %read8.i.i5.i81.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %read8.i.i5.i81.i, align 4
  %call.i.i6.i82.i = call zeroext i8 %411(ptr noundef %rtwdev, i32 noundef 3) #5
  %or5.i7.i.i = or i8 %call.i.i6.i82.i, 4
  %412 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i8.i83.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %413, i32 0, i32 14
  %414 = ptrtoint ptr %write8.i.i8.i83.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %write8.i.i8.i83.i, align 4
  call void %415(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %or5.i7.i.i) #5
  %416 = ptrtoint ptr %ltecoex_bckp.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %ltecoex_bckp.i, align 4
  %call11.i = call zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef %417) #5
  br i1 %call11.i, label %if.end13.i, label %download_firmware_end_flow.exit.i.__rtw_download_firmware.exit_crit_edge

download_firmware_end_flow.exit.i.__rtw_download_firmware.exit_crit_edge: ; preds = %download_firmware_end_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rtw_download_firmware.exit

if.end13.i:                                       ; preds = %download_firmware_end_flow.exit.i
  %call.i.i21 = call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 128, i32 noundef 65535, i32 noundef 49272) #5
  %418 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %hci.i.i.i.i8, align 8
  br i1 %call.i.i21, label %if.end17.i, label %if.then.i.i22

if.then.i.i22:                                    ; preds = %if.end13.i
  %read32.i.i86.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %419, i32 0, i32 13
  %420 = ptrtoint ptr %read32.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %read32.i.i86.i, align 4
  %call.i.i87.i = call i32 %421(ptr noundef %rtwdev, i32 noundef 4348) #5
  %and.i88.i = and i32 %call.i.i87.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -89478656, i32 %and.i88.i)
  %cmp.i.i = icmp eq i32 %and.i88.i, -89478656
  br i1 %cmp.i.i, label %do.end.i.i24, label %if.then.i.i22.dlfw_fail.i_crit_edge

if.then.i.i22.dlfw_fail.i_crit_edge:              ; preds = %if.then.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %dlfw_fail.i

do.end.i.i24:                                     ; preds = %if.then.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i23 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %422 = ptrtoint ptr %dev.i.i23 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev.i.i23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.20) #8
  br label %dlfw_fail.i

if.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %setup.i.i25 = getelementptr inbounds %struct.rtw_hci_ops, ptr %419, i32 0, i32 3
  %424 = ptrtoint ptr %setup.i.i25 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %setup.i.i25, align 4
  %call.i90.i = call i32 %425(ptr noundef %rtwdev) #5
  %h2c.i26 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29
  %426 = ptrtoint ptr %h2c.i26 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %h2c.i26, align 8
  %seq.i27 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %427 = ptrtoint ptr %seq.i27 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 0, ptr %seq.i27, align 8
  %flags.i28 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i28) #5
  br label %__rtw_download_firmware.exit

dlfw_fail.i:                                      ; preds = %do.end.i.i24, %if.then.i.i22.dlfw_fail.i_crit_edge, %if.then24.i.i.dlfw_fail.i_crit_edge, %if.end.i.i20.dlfw_fail.i_crit_edge, %.dlfw_fail.i_crit_edge
  %ret.0.i29 = phi i32 [ %call29.i.i, %if.then24.i.i.dlfw_fail.i_crit_edge ], [ %call19.i.i, %if.end.i.i20.dlfw_fail.i_crit_edge ], [ %call14.i.i, %.dlfw_fail.i_crit_edge ], [ -22, %do.end.i.i24 ], [ -22, %if.then.i.i22.dlfw_fail.i_crit_edge ]
  %428 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i92.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %429, i32 0, i32 11
  %430 = ptrtoint ptr %read8.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %read8.i.i92.i, align 4
  %call.i.i93.i = call zeroext i8 %431(ptr noundef %rtwdev, i32 noundef 128) #5
  %and.i94.i = and i8 %call.i.i93.i, -2
  %432 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i95.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %433, i32 0, i32 14
  %434 = ptrtoint ptr %write8.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %write8.i.i95.i, align 4
  call void %435(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %and.i94.i) #5
  %436 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %hci.i.i.i.i8, align 8
  %read8.i.i97.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %437, i32 0, i32 11
  %438 = ptrtoint ptr %read8.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %read8.i.i97.i, align 4
  %call.i.i98.i = call zeroext i8 %439(ptr noundef %rtwdev, i32 noundef 3) #5
  %or5.i.i = or i8 %call.i.i98.i, 4
  %440 = ptrtoint ptr %hci.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %hci.i.i.i.i8, align 8
  %write8.i.i99.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %441, i32 0, i32 14
  %442 = ptrtoint ptr %write8.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %write8.i.i99.i, align 4
  call void %443(ptr noundef %rtwdev, i32 noundef 3, i8 noundef zeroext %or5.i.i) #5
  br label %__rtw_download_firmware.exit

__rtw_download_firmware.exit:                     ; preds = %dlfw_fail.i, %if.end17.i, %download_firmware_end_flow.exit.i.__rtw_download_firmware.exit_crit_edge, %if.end.i7.__rtw_download_firmware.exit_crit_edge, %check_firmware_size.exit.i.__rtw_download_firmware.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i29, %dlfw_fail.i ], [ 0, %if.end17.i ], [ -22, %check_firmware_size.exit.i.__rtw_download_firmware.exit_crit_edge ], [ -16, %if.end.i7.__rtw_download_firmware.exit_crit_edge ], [ -16, %download_firmware_end_flow.exit.i.__rtw_download_firmware.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ltecoex_bckp.i) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bckp.i) #5
  br label %return

return:                                           ; preds = %__rtw_download_firmware.exit, %if.end5.i, %download_firmware_validate_legacy.exit.i, %download_firmware_legacy.exit.i.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__rtw_download_firmware.exit ], [ %retval.0.i.i, %download_firmware_legacy.exit.i.return_crit_edge ], [ -22, %download_firmware_validate_legacy.exit.i ], [ 0, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_mac_flush_queues(ptr noundef %rtwdev, i32 noundef %queues, i1 noundef zeroext %drop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %queues1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queues1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues1, align 4
  %conv = zext i16 %3 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %queues)
  %cmp = icmp eq i32 %sub, %queues
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %rqpn = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %rqpn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rqpn, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %if.else

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %and.i = and i32 %queues, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shl.i = shl nuw i32 1, %7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %prio_queues.0.i = phi i32 [ %shl.i, %if.then.i ], [ 0, %if.else.if.end.i_crit_edge ]
  %and2.i = and i32 %queues, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_map_vi.i = getelementptr inbounds %struct.rtw_rqpn, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dma_map_vi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_map_vi.i, align 4
  %shl5.i = shl nuw i32 1, %9
  %or6.i = or i32 %shl5.i, %prio_queues.0.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %prio_queues.1.i = phi i32 [ %or6.i, %if.then4.i ], [ %prio_queues.0.i, %if.end.i.if.end7.i_crit_edge ]
  %and8.i = and i32 %queues, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then10.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_map_be.i = getelementptr inbounds %struct.rtw_rqpn, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dma_map_be.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_map_be.i, align 4
  %shl11.i = shl nuw i32 1, %11
  %or12.i = or i32 %shl11.i, %prio_queues.1.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  %prio_queues.2.i = phi i32 [ %or12.i, %if.then10.i ], [ %prio_queues.1.i, %if.end7.i.if.end13.i_crit_edge ]
  %and14.i = and i32 %queues, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end_crit_edge, label %if.then16.i

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_map_bk.i = getelementptr inbounds %struct.rtw_rqpn, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %dma_map_bk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_map_bk.i, align 4
  %shl17.i = shl nuw i32 1, %13
  %or18.i = or i32 %shl17.i, %prio_queues.2.i
  br label %if.end

if.end:                                           ; preds = %if.then16.i, %if.end13.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %prio_queues.0 = phi i32 [ 15, %lor.lhs.false.if.end_crit_edge ], [ 15, %entry.if.end_crit_edge ], [ %or18.i, %if.then16.i ], [ %prio_queues.2.i, %if.end13.i.if.end_crit_edge ]
  %chip1.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %q.05.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i8 = shl nuw nsw i32 1, %q.05.i
  %and.i9 = and i32 %shl.i8, %prio_queues.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %for.body.i.for.inc.i_crit_edge, label %if.then.i11

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i11:                                      ; preds = %for.body.i
  %14 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip1.i.i, align 4
  %prioq_addrs.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %prioq_addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prioq_addrs.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x %struct.rtw_prioq_addr], ptr %17, i32 0, i32 %q.05.i
  %wsize3.i.i = getelementptr inbounds %struct.rtw_prioq_addrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wsize3.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wsize3.i.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %avail.i.i = getelementptr [4 x %struct.rtw_prioq_addr], ptr %17, i32 0, i32 %q.05.i, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end28.i.i.for.body.i.i_crit_edge, %if.then.i11
  %i.061.i.i = phi i32 [ 0, %if.then.i11 ], [ %inc.i.i, %if.end28.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %22 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i.i, align 8
  br i1 %tobool.not.i.i, label %cond.false16.i.i, label %cond.true13.i.i

cond.true13.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %25(ptr noundef %rtwdev, i32 noundef %21) #5
  %26 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avail.i.i, align 4
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i53.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %read16.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read16.i53.i.i, align 4
  %call.i54.i.i = tail call zeroext i16 %31(ptr noundef %rtwdev, i32 noundef %27) #5
  br label %cond.end20.i.i

cond.false16.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 11
  %32 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8.i.i.i, align 4
  %call.i51.i.i = tail call zeroext i8 %33(ptr noundef %rtwdev, i32 noundef %21) #5
  %conv9.i.i = zext i8 %call.i51.i.i to i16
  %34 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %avail.i.i, align 4
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i56.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %read8.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8.i56.i.i, align 4
  %call.i57.i.i = tail call zeroext i8 %39(ptr noundef %rtwdev, i32 noundef %35) #5
  %conv19.i.i = zext i8 %call.i57.i.i to i16
  br label %cond.end20.i.i

cond.end20.i.i:                                   ; preds = %cond.false16.i.i, %cond.true13.i.i
  %cond59.i.i = phi i16 [ %call.i.i.i, %cond.true13.i.i ], [ %conv9.i.i, %cond.false16.i.i ]
  %cond21.i.i = phi i16 [ %call.i54.i.i, %cond.true13.i.i ], [ %conv19.i.i, %cond.false16.i.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %cond59.i.i, i16 %cond21.i.i)
  %cmp25.i.i = icmp eq i16 %cond59.i.i, %cond21.i.i
  br i1 %cmp25.i.i, label %cond.end20.i.i.for.inc.i_crit_edge, label %if.end28.i.i

cond.end20.i.i.for.inc.i_crit_edge:               ; preds = %cond.end20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end28.i.i:                                     ; preds = %cond.end20.i.i
  tail call void @msleep(i32 noundef 20) #5
  %inc.i.i = add nuw nsw i32 %i.061.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end28.i.i.for.body.i.i_crit_edge

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end28.i.i
  br i1 %drop, label %for.end.i.i.for.inc.i_crit_edge, label %do.end.i.i

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.22, i32 noundef %q.05.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.i, %for.end.i.i.for.inc.i_crit_edge, %cond.end20.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %q.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %rtw_mac_flush_prio_queues.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

rtw_mac_flush_prio_queues.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_mac_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %type.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog.i.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

entry.sw.epilog.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2.i.i:                                       ; preds = %entry
  %bulkout_num.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %bulkout_num.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bulkout_num.i.i, align 8
  %switch.tableidx = add i8 %6, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 3
  br i1 %7, label %switch.lookup, label %sw.bb2.i.i.cleanup_crit_edge

sw.bb2.i.i.cleanup_crit_edge:                     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %entry.sw.epilog.i.i_crit_edge
  %.sink88.i.i = phi i32 [ 1, %entry.sw.epilog.i.i_crit_edge ], [ %switch.offset, %switch.lookup ]
  %rqpn_table4.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %rqpn_table4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rqpn_table4.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.rtw_rqpn, ptr %9, i32 %.sink88.i.i
  %rqpn26.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 12
  %10 = ptrtoint ptr %rqpn26.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx5.i.i, ptr %rqpn26.i.i, align 8
  %dma_map_hi.i.i = getelementptr %struct.rtw_rqpn, ptr %9, i32 %.sink88.i.i, i32 5
  %11 = ptrtoint ptr %dma_map_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_map_hi.i.i, align 4
  %conv28.i.i = shl i32 %12, 14
  %dma_map_mg.i.i = getelementptr %struct.rtw_rqpn, ptr %9, i32 %.sink88.i.i, i32 4
  %13 = ptrtoint ptr %dma_map_mg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_map_mg.i.i, align 4
  %and29.i.i = shl i32 %14, 12
  %shl30.i.i = and i32 %and29.i.i, 12288
  %dma_map_bk.i.i = getelementptr %struct.rtw_rqpn, ptr %9, i32 %.sink88.i.i, i32 3
  %15 = ptrtoint ptr %dma_map_bk.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_map_bk.i.i, align 4
  %and34.i.i = shl i32 %16, 10
  %shl35.i.i = and i32 %and34.i.i, 3072
  %dma_map_be.i.i = getelementptr %struct.rtw_rqpn, ptr %9, i32 %.sink88.i.i, i32 2
  %17 = ptrtoint ptr %dma_map_be.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_map_be.i.i, align 4
  %and39.i.i = shl i32 %18, 8
  %shl40.i.i = and i32 %and39.i.i, 768
  %dma_map_vi.i.i = getelementptr %struct.rtw_rqpn, ptr %9, i32 %.sink88.i.i, i32 1
  %19 = ptrtoint ptr %dma_map_vi.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_map_vi.i.i, align 4
  %and44.i.i = shl i32 %20, 6
  %shl45.i.i = and i32 %and44.i.i, 192
  %conv28.masked.i.i = and i32 %conv28.i.i, 49152
  %conv36.masked.masked.i.i = or i32 %shl30.i.i, %conv28.masked.i.i
  %conv41.masked.i.i = or i32 %conv36.masked.masked.i.i, %shl35.i.i
  %conv46.i.i = or i32 %conv41.masked.i.i, %shl40.i.i
  %or47.i.i = or i32 %conv46.i.i, %shl45.i.i
  %21 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i.i, align 4
  %and49.i.i = shl i32 %22, 4
  %shl50.i.i = and i32 %and49.i.i, 48
  %or52.i.i = or i32 %or47.i.i, %shl50.i.i
  %conv53.i.i = trunc i32 %or52.i.i to i16
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %23 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 268, i16 noundef zeroext %conv53.i.i) #5
  %27 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 256, i8 noundef zeroext 0) #5
  %31 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i86.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %write8.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8.i86.i.i, align 4
  tail call void %34(ptr noundef %rtwdev, i32 noundef 256, i8 noundef zeroext -1) #5
  %35 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip1, align 4
  %wlan_cpu.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %wlan_cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wlan_cpu.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i, label %if.then55.i.i, label %sw.epilog.i.i.if.end.i_crit_edge

sw.epilog.i.i.if.end.i_crit_edge:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then55.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %42(ptr noundef %rtwdev, i32 noundef 4912, i32 noundef -2147483648) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then55.i.i, %sw.epilog.i.i.if.end.i_crit_edge
  %43 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip1, align 4
  %csi_buf_pg_num3.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %csi_buf_pg_num3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %csi_buf_pg_num3.i.i.i, align 2
  %rsvd_drv_pg_num.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %rsvd_drv_pg_num.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 8, ptr %rsvd_drv_pg_num.i.i.i, align 4
  %txff_size.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %44, i32 0, i32 11
  %48 = ptrtoint ptr %txff_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %txff_size.i.i.i, align 4
  %shr.i.i.i = lshr i32 %49, 7
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %txff_pg_num.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 3
  %50 = ptrtoint ptr %txff_pg_num.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i.i.i, ptr %txff_pg_num.i.i.i, align 2
  %wlan_cpu.i.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %44, i32 0, i32 3
  %51 = ptrtoint ptr %wlan_cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wlan_cpu.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i.i.i.i = icmp eq i32 %52, 1
  %conv11.i.i.i = zext i8 %46 to i16
  %add12.i.i.i = add nuw nsw i16 %conv11.i.i.i, 52
  %add12.sink.i.i.i = select i1 %cmp.i.i.i.i, i16 8, i16 %add12.i.i.i
  %53 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %add12.sink.i.i.i, ptr %53, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add12.sink.i.i.i, i16 %conv.i.i.i)
  %cmp.i.i16.i = icmp ugt i16 %add12.sink.i.i.i, %conv.i.i.i
  br i1 %cmp.i.i16.i, label %if.end.i.cleanup_crit_edge, label %if.end21.i.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.i.i.i:                                   ; preds = %if.end.i
  %fifo1.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6
  %sub.i.i.i = sub i16 %conv.i.i.i, %add12.sink.i.i.i
  %acq_pg_num.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 4
  %55 = ptrtoint ptr %acq_pg_num.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %sub.i.i.i, ptr %acq_pg_num.i.i.i, align 4
  %56 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %sub.i.i.i, ptr %fifo1.i.i.i, align 4
  %57 = ptrtoint ptr %wlan_cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wlan_cpu.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i117.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i117.i.i.i, label %if.then35.i.i.i, label %if.end21.i.i.i.if.end55.i.i.i_crit_edge

if.end21.i.i.i.if.end55.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i.i.i

if.then35.i.i.i:                                  ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub38.i.i.i = sub i16 %conv.i.i.i, %conv11.i.i.i
  %rsvd_csibuf_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 11
  %59 = ptrtoint ptr %rsvd_csibuf_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %sub38.i.i.i, ptr %rsvd_csibuf_addr.i.i.i, align 2
  %sub41.i.i.i = add i16 %sub38.i.i.i, -4
  %rsvd_fw_txbuf_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 10
  %60 = ptrtoint ptr %rsvd_fw_txbuf_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %sub41.i.i.i, ptr %rsvd_fw_txbuf_addr.i.i.i, align 4
  %rsvd_cpu_instr_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 9
  %61 = ptrtoint ptr %rsvd_cpu_instr_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %sub41.i.i.i, ptr %rsvd_cpu_instr_addr.i.i.i, align 2
  %sub47.i.i.i = add i16 %sub38.i.i.i, -12
  %rsvd_h2cq_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 8
  %62 = ptrtoint ptr %rsvd_h2cq_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %sub47.i.i.i, ptr %rsvd_h2cq_addr.i.i.i, align 4
  %sub50.i.i.i = add i16 %sub38.i.i.i, -20
  %rsvd_h2c_sta_info_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 7
  %63 = ptrtoint ptr %rsvd_h2c_sta_info_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %sub50.i.i.i, ptr %rsvd_h2c_sta_info_addr.i.i.i, align 2
  %sub53.i.i.i = add i16 %sub38.i.i.i, -44
  %rsvd_h2c_info_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 6
  %64 = ptrtoint ptr %rsvd_h2c_info_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sub53.i.i.i, ptr %rsvd_h2c_info_addr.i.i.i, align 4
  br label %if.end55.i.i.i

if.end55.i.i.i:                                   ; preds = %if.then35.i.i.i, %if.end21.i.i.i.if.end55.i.i.i_crit_edge
  %cur_pg_addr.0.i.i.i = phi i16 [ %sub53.i.i.i, %if.then35.i.i.i ], [ %conv.i.i.i, %if.end21.i.i.i.if.end55.i.i.i_crit_edge ]
  %sub59.i.i.i = add i16 %cur_pg_addr.0.i.i.i, -8
  %rsvd_drv_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 5
  %65 = ptrtoint ptr %rsvd_drv_addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %sub59.i.i.i, ptr %rsvd_drv_addr.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i.i.i, i16 %sub59.i.i.i)
  %cmp65.not.i.i.i = icmp eq i16 %sub.i.i.i, %sub59.i.i.i
  br i1 %cmp65.not.i.i.i, label %if.end.i.i, label %if.end55.i.i.i.cleanup.sink.split.i_crit_edge

if.end55.i.i.i.cleanup.sink.split.i_crit_edge:    ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %if.end55.i.i.i
  %66 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type.i.i.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %67, label %if.end.i.i.cleanup_crit_edge [
    i32 0, label %if.end.i.i.sw.epilog.i20.i_crit_edge
    i32 1, label %sw.bb4.i.i
  ]

if.end.i.i.sw.epilog.i20.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i20.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  %bulkout_num.i18.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %bulkout_num.i18.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bulkout_num.i18.i, align 8
  %switch.tableidx37 = add i8 %70, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx37)
  %71 = icmp ult i8 %switch.tableidx37, 3
  br i1 %71, label %switch.lookup36, label %sw.bb4.i.i.cleanup_crit_edge

sw.bb4.i.i.cleanup_crit_edge:                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup36:                                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast38 = zext i8 %switch.tableidx37 to i32
  %switch.offset39 = add nuw nsw i32 %switch.idx.cast38, 2
  br label %sw.epilog.i20.i

sw.epilog.i20.i:                                  ; preds = %switch.lookup36, %if.end.i.i.sw.epilog.i20.i_crit_edge
  %.sink99.i.i = phi i32 [ 1, %if.end.i.i.sw.epilog.i20.i_crit_edge ], [ %switch.offset39, %switch.lookup36 ]
  %page_table7.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %44, i32 0, i32 36
  %72 = ptrtoint ptr %page_table7.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %page_table7.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.rtw_page_table, ptr %73, i32 %.sink99.i.i
  %74 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx8.i.i, align 2
  %lq_num.i.i = getelementptr %struct.rtw_page_table, ptr %73, i32 %.sink99.i.i, i32 2
  %76 = ptrtoint ptr %lq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %lq_num.i.i, align 2
  %nq_num.i.i = getelementptr %struct.rtw_page_table, ptr %73, i32 %.sink99.i.i, i32 1
  %78 = ptrtoint ptr %nq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nq_num.i.i, align 2
  %exq_num.i.i = getelementptr %struct.rtw_page_table, ptr %73, i32 %.sink99.i.i, i32 3
  %80 = ptrtoint ptr %exq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %exq_num.i.i, align 2
  %gapq_num.i.i = getelementptr %struct.rtw_page_table, ptr %73, i32 %.sink99.i.i, i32 4
  %82 = ptrtoint ptr %gapq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %gapq_num.i.i, align 2
  %84 = add i16 %75, %77
  %85 = add i16 %84, %79
  %86 = add i16 %85, %81
  %87 = add i16 %86, %83
  %sub39.i.i = sub i16 %sub.i.i.i, %87
  %88 = ptrtoint ptr %wlan_cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %wlan_cpu.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i70.i.i = icmp eq i32 %89, 1
  br i1 %cmp.i70.i.i, label %if.then42.i.i, label %if.else44.i.i

if.then42.i.i:                                    ; preds = %sw.epilog.i20.i
  %90 = and i16 %79, 255
  %and.i.i.i = zext i16 %90 to i32
  %91 = and i16 %81, 255
  %and4.i.i.i = zext i16 %91 to i32
  %shl5.i.i.i = shl nuw nsw i32 %and4.i.i.i, 16
  %or.i.i.i = or i32 %shl5.i.i.i, %and.i.i.i
  %92 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %95(ptr noundef %rtwdev, i32 noundef 532, i32 noundef %or.i.i.i) #5
  %96 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx8.i.i, align 2
  %98 = and i16 %97, 255
  %99 = ptrtoint ptr %lq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %lq_num.i.i, align 2
  %101 = shl i16 %100, 8
  %or950.i.i.i = or i16 %101, %98
  %or9.i.i.i = zext i16 %or950.i.i.i to i32
  %102 = and i16 %sub39.i.i, 255
  %and15.i.i.i = zext i16 %102 to i32
  %shl16.i.i.i = shl nuw nsw i32 %and15.i.i.i, 16
  %or13.i.i.i = or i32 %shl16.i.i.i, %or9.i.i.i
  %or17.i.i.i = or i32 %or13.i.i.i, -2147483648
  %103 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i52.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %104, i32 0, i32 16
  %105 = ptrtoint ptr %write32.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write32.i52.i.i.i, align 4
  tail call void %106(ptr noundef %rtwdev, i32 noundef 512, i32 noundef %or17.i.i.i) #5
  %107 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %fifo1.i.i.i, align 4
  %conv18.i.i.i = trunc i16 %108 to i8
  %109 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %110, i32 0, i32 14
  %111 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %112(ptr noundef %rtwdev, i32 noundef 276, i8 noundef zeroext %conv18.i.i.i) #5
  %rxff_size.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %44, i32 0, i32 12
  %113 = ptrtoint ptr %rxff_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rxff_size.i.i.i, align 4
  %115 = trunc i32 %114 to i16
  %conv20.i.i.i = add i16 %115, -129
  %116 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %117, i32 0, i32 15
  %118 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %119(ptr noundef %rtwdev, i32 noundef 278, i16 noundef zeroext %conv20.i.i.i) #5
  %120 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %fifo1.i.i.i, align 4
  %conv22.i.i.i = trunc i16 %121 to i8
  %122 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i56.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %123, i32 0, i32 14
  %124 = ptrtoint ptr %write8.i56.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8.i56.i.i.i, align 4
  tail call void %125(ptr noundef %rtwdev, i32 noundef 521, i8 noundef zeroext %conv22.i.i.i) #5
  %126 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %fifo1.i.i.i, align 4
  %conv24.i.i.i = trunc i16 %127 to i8
  %128 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i58.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %129, i32 0, i32 14
  %130 = ptrtoint ptr %write8.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8.i58.i.i.i, align 4
  tail call void %131(ptr noundef %rtwdev, i32 noundef 1060, i8 noundef zeroext %conv24.i.i.i) #5
  %132 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %fifo1.i.i.i, align 4
  %conv26.i.i.i = trunc i16 %133 to i8
  %134 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i60.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %135, i32 0, i32 14
  %136 = ptrtoint ptr %write8.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write8.i60.i.i.i, align 4
  tail call void %137(ptr noundef %rtwdev, i32 noundef 1061, i8 noundef zeroext %conv26.i.i.i) #5
  %138 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %fifo1.i.i.i, align 4
  %conv28.i.i.i = trunc i16 %139 to i8
  %140 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i62.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %write8.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write8.i62.i.i.i, align 4
  tail call void %143(ptr noundef %rtwdev, i32 noundef 1117, i8 noundef zeroext %conv28.i.i.i) #5
  %144 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %145, i32 0, i32 13
  %146 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %147(ptr noundef %rtwdev, i32 noundef 548) #5
  %or.i.i.i.i = or i32 %call.i.i.i.i.i, 65536
  %148 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %151(ptr noundef %rtwdev, i32 noundef 548, i32 noundef %or.i.i.i.i) #5
  %call.i.i.i = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 548, i32 noundef 65536, i32 noundef 0) #5
  br i1 %call.i.i.i, label %if.then42.i.i.if.end4.i_crit_edge, label %if.then42.i.i.cleanup_crit_edge

if.then42.i.i.cleanup_crit_edge:                  ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42.i.i.if.end4.i_crit_edge:                ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.else44.i.i:                                    ; preds = %sw.epilog.i20.i
  %152 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i76.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %153, i32 0, i32 15
  %154 = ptrtoint ptr %write16.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write16.i.i76.i.i, align 4
  tail call void %155(ptr noundef %rtwdev, i32 noundef 560, i16 noundef zeroext %75) #5
  %156 = ptrtoint ptr %lq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %lq_num.i.i, align 2
  %158 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i31.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %159, i32 0, i32 15
  %160 = ptrtoint ptr %write16.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write16.i31.i.i.i, align 4
  tail call void %161(ptr noundef %rtwdev, i32 noundef 564, i16 noundef zeroext %157) #5
  %162 = ptrtoint ptr %nq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %nq_num.i.i, align 2
  %164 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i33.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %165, i32 0, i32 15
  %166 = ptrtoint ptr %write16.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write16.i33.i.i.i, align 4
  tail call void %167(ptr noundef %rtwdev, i32 noundef 568, i16 noundef zeroext %163) #5
  %168 = ptrtoint ptr %exq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %exq_num.i.i, align 2
  %170 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i35.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %171, i32 0, i32 15
  %172 = ptrtoint ptr %write16.i35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write16.i35.i.i.i, align 4
  tail call void %173(ptr noundef %rtwdev, i32 noundef 572, i16 noundef zeroext %169) #5
  %174 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i37.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %175, i32 0, i32 15
  %176 = ptrtoint ptr %write16.i37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write16.i37.i.i.i, align 4
  tail call void %177(ptr noundef %rtwdev, i32 noundef 576, i16 noundef zeroext %sub39.i.i) #5
  %178 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i80.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %179, i32 0, i32 13
  %180 = ptrtoint ptr %read32.i.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %read32.i.i.i80.i.i, align 4
  %call.i.i.i81.i.i = tail call i32 %181(ptr noundef %rtwdev, i32 noundef 556) #5
  %or.i.i82.i.i = or i32 %call.i.i.i81.i.i, -2147483648
  %182 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i83.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %183, i32 0, i32 16
  %184 = ptrtoint ptr %write32.i.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write32.i.i.i83.i.i, align 4
  tail call void %185(ptr noundef %rtwdev, i32 noundef 556, i32 noundef %or.i.i82.i.i) #5
  %186 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %fifo1.i.i.i, align 4
  %188 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i39.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %189, i32 0, i32 15
  %190 = ptrtoint ptr %write16.i39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write16.i39.i.i.i, align 4
  tail call void %191(ptr noundef %rtwdev, i32 noundef 516, i16 noundef zeroext %187) #5
  %192 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %193, i32 0, i32 11
  %194 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i41.i.i.i = tail call zeroext i8 %195(ptr noundef %rtwdev, i32 noundef 1058) #5
  %or5.i.i.i.i = or i8 %call.i.i41.i.i.i, 16
  %196 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %197, i32 0, i32 14
  %198 = ptrtoint ptr %write8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write8.i.i.i.i.i, align 4
  tail call void %199(ptr noundef %rtwdev, i32 noundef 1058, i8 noundef zeroext %or5.i.i.i.i) #5
  %200 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %fifo1.i.i.i, align 4
  %202 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i43.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %203, i32 0, i32 15
  %204 = ptrtoint ptr %write16.i43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write16.i43.i.i.i, align 4
  tail call void %205(ptr noundef %rtwdev, i32 noundef 1060, i16 noundef zeroext %201) #5
  %206 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %fifo1.i.i.i, align 4
  %208 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i45.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %209, i32 0, i32 15
  %210 = ptrtoint ptr %write16.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write16.i45.i.i.i, align 4
  tail call void %211(ptr noundef %rtwdev, i32 noundef 518, i16 noundef zeroext %207) #5
  %212 = ptrtoint ptr %fifo1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %fifo1.i.i.i, align 4
  %214 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i47.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %215, i32 0, i32 15
  %216 = ptrtoint ptr %write16.i47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write16.i47.i.i.i, align 4
  tail call void %217(ptr noundef %rtwdev, i32 noundef 1110, i16 noundef zeroext %213) #5
  %rxff_size.i84.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %44, i32 0, i32 12
  %218 = ptrtoint ptr %rxff_size.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rxff_size.i84.i.i, align 4
  %sub6.i.i.i = add i32 %219, -257
  %220 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i85.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %221, i32 0, i32 16
  %222 = ptrtoint ptr %write32.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write32.i.i85.i.i, align 4
  tail call void %223(ptr noundef %rtwdev, i32 noundef 284, i32 noundef %sub6.i.i.i) #5
  %224 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i50.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %225, i32 0, i32 11
  %226 = ptrtoint ptr %read8.i.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read8.i.i50.i.i.i, align 4
  %call.i.i51.i.i.i = tail call zeroext i8 %227(ptr noundef %rtwdev, i32 noundef 520) #5
  %or5.i52.i.i.i = or i8 %call.i.i51.i.i.i, 1
  %228 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i53.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %229, i32 0, i32 14
  %230 = ptrtoint ptr %write8.i.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write8.i.i53.i.i.i, align 4
  tail call void %231(ptr noundef %rtwdev, i32 noundef 520, i8 noundef zeroext %or5.i52.i.i.i) #5
  %call.i86.i.i = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 520, i32 noundef 1, i32 noundef 0) #5
  br i1 %call.i86.i.i, label %if.end.i.i.i, label %if.else44.i.i.cleanup_crit_edge

if.else44.i.i.cleanup_crit_edge:                  ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i87.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %233, i32 0, i32 14
  %234 = ptrtoint ptr %write8.i.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write8.i.i87.i.i, align 4
  tail call void %235(ptr noundef %rtwdev, i32 noundef 259, i8 noundef zeroext 0) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.i.i, %if.then42.i.i.if.end4.i_crit_edge
  %236 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %chip1, align 4
  %wlan_cpu.i.i22.i = getelementptr inbounds %struct.rtw_chip_info, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %wlan_cpu.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %wlan_cpu.i.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp.i.i23.i = icmp eq i32 %239, 1
  br i1 %cmp.i.i23.i, label %if.end4.i.if.end_crit_edge, label %if.end.i28.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i28.i:                                     ; preds = %if.end4.i
  %rsvd_h2cq_addr.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 8
  %240 = ptrtoint ptr %rsvd_h2cq_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %rsvd_h2cq_addr.i.i, align 4
  %conv.i.i = zext i16 %241 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 7
  %242 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %243, i32 0, i32 13
  %244 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i25.i = tail call i32 %245(ptr noundef %rtwdev, i32 noundef 580) #5
  %and.i.i = and i32 %call.i.i25.i, -262144
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %246 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i26.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %247, i32 0, i32 16
  %248 = ptrtoint ptr %write32.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write32.i.i26.i, align 4
  tail call void %249(ptr noundef %rtwdev, i32 noundef 580, i32 noundef %or.i.i) #5
  %250 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i79.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %251, i32 0, i32 13
  %252 = ptrtoint ptr %read32.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %read32.i79.i.i, align 4
  %call.i80.i.i = tail call i32 %253(ptr noundef %rtwdev, i32 noundef 588) #5
  %and4.i.i = and i32 %call.i80.i.i, -262144
  %or5.i.i = or i32 %and4.i.i, %shl.i.i
  %254 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i82.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %255, i32 0, i32 16
  %256 = ptrtoint ptr %write32.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write32.i82.i.i, align 4
  tail call void %257(ptr noundef %rtwdev, i32 noundef 588, i32 noundef %or5.i.i) #5
  %258 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i84.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %259, i32 0, i32 13
  %260 = ptrtoint ptr %read32.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read32.i84.i.i, align 4
  %call.i85.i.i = tail call i32 %261(ptr noundef %rtwdev, i32 noundef 584) #5
  %and7.i.i = and i32 %call.i85.i.i, -262144
  %add.i.i = add nuw nsw i32 %shl.i.i, 1024
  %or8.i.i = or i32 %and7.i.i, %add.i.i
  %262 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i87.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %263, i32 0, i32 16
  %264 = ptrtoint ptr %write32.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write32.i87.i.i, align 4
  tail call void %265(ptr noundef %rtwdev, i32 noundef 584, i32 noundef %or8.i.i) #5
  %266 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %267, i32 0, i32 11
  %268 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %read8.i.i.i, align 4
  %call.i89.i.i = tail call zeroext i8 %269(ptr noundef %rtwdev, i32 noundef 596) #5
  %270 = and i8 %call.i89.i.i, -4
  %271 = or i8 %270, 1
  %272 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i27.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %273, i32 0, i32 14
  %274 = ptrtoint ptr %write8.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %write8.i.i27.i, align 4
  tail call void %275(ptr noundef %rtwdev, i32 noundef 596, i8 noundef zeroext %271) #5
  %276 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i92.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %277, i32 0, i32 11
  %278 = ptrtoint ptr %read8.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %read8.i92.i.i, align 4
  %call.i93.i.i = tail call zeroext i8 %279(ptr noundef %rtwdev, i32 noundef 596) #5
  %280 = or i8 %call.i93.i.i, 4
  %281 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i95.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %282, i32 0, i32 14
  %283 = ptrtoint ptr %write8.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write8.i95.i.i, align 4
  tail call void %284(ptr noundef %rtwdev, i32 noundef 596, i8 noundef zeroext %280) #5
  %285 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i97.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %286, i32 0, i32 11
  %287 = ptrtoint ptr %read8.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read8.i97.i.i, align 4
  %call.i98.i.i = tail call zeroext i8 %288(ptr noundef %rtwdev, i32 noundef 525) #5
  %289 = or i8 %call.i98.i.i, -128
  %290 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i100.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %291, i32 0, i32 14
  %292 = ptrtoint ptr %write8.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write8.i100.i.i, align 4
  tail call void %293(ptr noundef %rtwdev, i32 noundef 525, i8 noundef zeroext %289) #5
  %294 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i102.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %295, i32 0, i32 13
  %296 = ptrtoint ptr %read32.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %read32.i102.i.i, align 4
  %call.i103.i.i = tail call i32 %297(ptr noundef %rtwdev, i32 noundef 4308) #5
  %and25.i.i = and i32 %call.i103.i.i, 262143
  %298 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i105.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %299, i32 0, i32 13
  %300 = ptrtoint ptr %read32.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read32.i105.i.i, align 4
  %call.i106.i.i = tail call i32 %301(ptr noundef %rtwdev, i32 noundef 4304) #5
  %and27.i.i = and i32 %call.i106.i.i, 262143
  call void @__sanitizer_cov_trace_cmp4(i32 %and27.i.i, i32 %and25.i.i)
  %cmp.not.i.i = icmp ugt i32 %and27.i.i, %and25.i.i
  %sub.neg.i.i = sub nsw i32 %and27.i.i, %and25.i.i
  %sub29.i.i = add nsw i32 %sub.neg.i.i, 1024
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub.neg.i.i, i32 %sub29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %cond.i.i)
  %cmp31.not.i.i = icmp eq i32 %cond.i.i, 1024
  br i1 %cmp31.not.i.i, label %if.end.i28.i.if.end_crit_edge, label %if.end.i28.i.cleanup.sink.split.i_crit_edge

if.end.i28.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i28.i.if.end_crit_edge:                    ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.sink.split.i:                             ; preds = %if.end.i28.i.cleanup.sink.split.i_crit_edge, %if.end55.i.i.i.cleanup.sink.split.i_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.25, %if.end55.i.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.27, %if.end.i28.i.cleanup.sink.split.i_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %302 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull %.str.27.sink.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i28.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %304 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %1, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %call2 = tail call i32 %307(ptr noundef %rtwdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %308 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %309, i32 0, i32 14
  %310 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %write8.i.i, align 4
  tail call void %311(ptr noundef %rtwdev, i32 noundef 1551, i8 noundef zeroext 4) #5
  %312 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %chip1, align 4
  %wlan_cpu.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %313, i32 0, i32 3
  %314 = ptrtoint ptr %wlan_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %wlan_cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp.i.i = icmp eq i32 %315, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end5.rtw_drv_info_cfg.exit_crit_edge

if.end5.rtw_drv_info_cfg.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_drv_info_cfg.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %316 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %317, i32 0, i32 11
  %318 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %319(ptr noundef %rtwdev, i32 noundef 277) #5
  %320 = or i8 %call.i.i, 15
  %321 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i3.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %322, i32 0, i32 14
  %323 = ptrtoint ptr %write8.i3.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write8.i3.i, align 4
  tail call void %324(ptr noundef %rtwdev, i32 noundef 277, i8 noundef zeroext %320) #5
  br label %rtw_drv_info_cfg.exit

rtw_drv_info_cfg.exit:                            ; preds = %if.then.i, %if.end5.rtw_drv_info_cfg.exit_crit_edge
  %325 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i20 = getelementptr inbounds %struct.rtw_hci_ops, ptr %326, i32 0, i32 13
  %327 = ptrtoint ptr %read32.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %read32.i.i.i20, align 4
  %call.i.i.i21 = tail call i32 %328(ptr noundef %rtwdev, i32 noundef 1544) #5
  %or.i.i22 = or i32 %call.i.i.i21, 268435456
  %329 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i23 = getelementptr inbounds %struct.rtw_hci_ops, ptr %330, i32 0, i32 16
  %331 = ptrtoint ptr %write32.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %write32.i.i.i23, align 4
  tail call void %332(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %or.i.i22) #5
  %333 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i5.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %334, i32 0, i32 13
  %335 = ptrtoint ptr %read32.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read32.i.i5.i, align 4
  %call.i.i6.i = tail call i32 %336(ptr noundef %rtwdev, i32 noundef 2004) #5
  %and.i.i24 = and i32 %call.i.i6.i, -769
  %337 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %338, i32 0, i32 16
  %339 = ptrtoint ptr %write32.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write32.i.i7.i, align 4
  tail call void %340(ptr noundef %rtwdev, i32 noundef 2004, i32 noundef %and.i.i24) #5
  %341 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %hci.i.i.i, align 8
  %interface_cfg.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %342, i32 0, i32 8
  %343 = ptrtoint ptr %interface_cfg.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %interface_cfg.i, align 4
  tail call void %344(ptr noundef %rtwdev) #5
  br label %cleanup

cleanup:                                          ; preds = %rtw_drv_info_cfg.exit, %if.end.cleanup_crit_edge, %cleanup.sink.split.i, %if.else44.i.i.cleanup_crit_edge, %if.then42.i.i.cleanup_crit_edge, %sw.bb4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb2.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtw_drv_info_cfg.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ], [ -16, %if.then42.i.i.cleanup_crit_edge ], [ -22, %sw.bb4.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -16, %if.else44.i.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb2.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ltecoex_read_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ltecoex_reg_write(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @download_firmware_to_mem(ptr noundef %rtwdev, ptr noundef %data, i32 noundef %dst, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %tx_pkt_desc_sz = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_pkt_desc_sz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_pkt_desc_sz, align 4
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %rtwdev, i32 noundef 4616) #5
  %or = or i32 %call.i, 33554432
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i, align 4
  tail call void %11(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not16 = icmp eq i32 %size, 0
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i8 %3 to i32
  %type.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %add8 = or i32 %conv, 410517504
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %residue_size.019 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %if.end13.while.body_crit_edge ]
  %mem_offset.018 = phi i32 [ 0, %while.body.lr.ph ], [ %add14, %if.end13.while.body_crit_edge ]
  %tobool.not.i417 = phi i32 [ -1610612736, %while.body.lr.ph ], [ -1593835520, %if.end13.while.body_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %residue_size.019, i32 4096)
  %add.ptr = getelementptr i8, ptr %data, i32 %mem_offset.018
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nuw nsw i32 %12, 48
  %and.i = and i32 %add.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add1.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add nuw nsw i32 %12, %add1.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body.if.end.i_crit_edge
  %size.addr.0.i = phi i32 [ %12, %while.body.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call.i.i = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef %size.addr.0.i, i32 noundef 3264) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.send_firmware_pkt.exit_crit_edge, label %send_firmware_pkt_rsvd_page.exit.i

if.end.i.send_firmware_pkt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_firmware_pkt.exit

send_firmware_pkt_rsvd_page.exit.i:               ; preds = %if.end.i
  %call1.i.i = tail call i32 @rtw_fw_write_data_rsvd_page(ptr noundef %rtwdev, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i32 noundef %size.addr.0.i) #5
  tail call void @kfree(ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool3.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool3.not.i, label %if.end7, label %send_firmware_pkt_rsvd_page.exit.i.send_firmware_pkt.exit_crit_edge

send_firmware_pkt_rsvd_page.exit.i.send_firmware_pkt.exit_crit_edge: ; preds = %send_firmware_pkt_rsvd_page.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_firmware_pkt.exit

send_firmware_pkt.exit:                           ; preds = %send_firmware_pkt_rsvd_page.exit.i.send_firmware_pkt.exit_crit_edge, %if.end.i.send_firmware_pkt.exit_crit_edge
  %retval.0.i3.i = phi i32 [ %call1.i.i, %send_firmware_pkt_rsvd_page.exit.i.send_firmware_pkt.exit_crit_edge ], [ -12, %if.end.i.send_firmware_pkt.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end7:                                          ; preds = %send_firmware_pkt_rsvd_page.exit.i
  %call.i2 = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef -2147483648, i32 noundef 0) #5
  br i1 %call.i2, label %if.end.i7, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i7:                                        ; preds = %if.end7
  %add9 = add i32 %mem_offset.018, %dst
  %spec.select.i5 = or i32 %12, %tobool.not.i417
  %17 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 4608, i32 noundef %add8) #5
  %21 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i, align 8
  %write32.i5.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %write32.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i5.i.i, align 4
  tail call void %24(ptr noundef %rtwdev, i32 noundef 4612, i32 noundef %add9) #5
  %25 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i, align 8
  %write32.i7.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %write32.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i7.i.i, align 4
  tail call void %28(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef %spec.select.i5) #5
  %call.i.i6 = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 4616, i32 noundef -2147483648, i32 noundef 0) #5
  br i1 %call.i.i6, label %if.end13, label %if.end.i7.cleanup_crit_edge

if.end.i7.cleanup_crit_edge:                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end.i7
  %add14 = add i32 %12, %mem_offset.018
  %sub = sub i32 %residue_size.019, %12
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %entry.while.end_crit_edge
  %29 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8.i.i, align 4
  %call.i.i8 = tail call zeroext i8 %32(ptr noundef %rtwdev, i32 noundef 128) #5
  %33 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i, align 4
  %call.i42.i = tail call i32 %36(ptr noundef %rtwdev, i32 noundef 4616) #5
  %and.i9 = and i32 %call.i42.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %dst)
  %cmp14.i = icmp ult i32 %dst, 2097152
  br i1 %tobool.not.i10, label %if.end13.i, label %if.then.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %..i = select i1 %cmp14.i, i8 -25, i8 -97
  %.54.i = select i1 %cmp14.i, i8 8, i8 32
  %37 = and i8 %call.i.i8, %..i
  %38 = or i8 %37, %.54.i
  %39 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write8.i.i, align 4
  tail call void %42(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %38) #5
  %dev.i11 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %43 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end13.i:                                       ; preds = %while.end
  br i1 %cmp14.i, label %if.then16.i, label %if.else20.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = or i8 %call.i.i8, 24
  %46 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i, align 8
  %write8.i47.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %write8.i47.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8.i47.i, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %45) #5
  br label %cleanup

if.else20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = or i8 %call.i.i8, 96
  %51 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hci.i, align 8
  %write8.i49.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %write8.i49.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8.i49.i, align 4
  tail call void %54(ptr noundef %rtwdev, i32 noundef 128, i8 noundef zeroext %50) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else20.i, %if.then16.i, %if.then.i, %if.end.i7.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %send_firmware_pkt.exit
  %retval.0 = phi i32 [ %retval.0.i3.i, %send_firmware_pkt.exit ], [ -22, %if.then.i ], [ 0, %if.then16.i ], [ 0, %if.else20.i ], [ -16, %if.end7.cleanup_crit_edge ], [ -16, %if.end.i7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_fw_write_data_rsvd_page(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_restore_reg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab_rtw_set_channel_mac, !1, !"__ksymtab_rtw_set_channel_mac", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 59, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 352, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtw_mac_power_on._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtw_mac_power_on._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 538, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 545, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 156, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rtw_pwr_cmd_polling._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtw_pwr_cmd_polling._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 788, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @en_download_firmware_legacy._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @en_download_firmware_legacy._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 851, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @download_firmware_legacy._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @download_firmware_legacy._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 878, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @download_firmware_validate_legacy._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @download_firmware_validate_legacy._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 451, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 497, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @send_firmware_pkt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @send_firmware_pkt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 570, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @check_fw_checksum._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @check_fw_checksum._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 695, i32 4}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @download_firmware_validate._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @download_firmware_validate._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 968, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__rtw_mac_flush_prio_queue._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @__rtw_mac_flush_prio_queue._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 1084, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @set_trx_fifo_info._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @set_trx_fifo_info._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtw88/mac.c", i32 1234, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @init_h2c._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @init_h2c._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i8 0, i8 2}
