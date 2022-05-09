; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_hal.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_hal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rsi_hal_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_hal_device_init\09\09\09\09"
module asm "\09.long\09__crc_rsi_hal_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_hal_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_hal_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_hal_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ta_metadata = type { ptr, i32 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
%struct.rsi_host_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rsi_mgmt_desc = type { i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.rsi_data_desc = type { i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.154, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.154 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.155] }
%struct.anon.155 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rsi_bt_desc = type { i16, i16, i32, i32, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.bootload_ds = type { i16, i16, i32, [7 x %struct.bootload_entry] }
%struct.bootload_entry = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.bl_header = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Dropping mgmt pkt > 512\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rsi_prepare_mgmt_desc = private unnamed_addr constant [22 x i8] c"rsi_prepare_mgmt_desc\00", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to add extended descriptor\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to add dword align\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Unable to send pkt\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.rsi_prepare_data_desc = private unnamed_addr constant [22 x i8] c"rsi_prepare_data_desc\00", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Not enough headroom\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"*** Tx EAPOL ***\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Failed to write pkt\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rsi_send_data_pkt = private unnamed_addr constant [18 x i8] c"rsi_send_data_pkt\00", align 1
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to write the packet\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_send_mgmt_pkt = private unnamed_addr constant [18 x i8] c"rsi_send_mgmt_pkt\00", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: blocking mgmt queue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mgmt queue blocked\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to write bt mgmt pkt\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_send_bt_pkt = private unnamed_addr constant [16 x i8] c"rsi_send_bt_pkt\00", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to write bt pkt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get beacon from mac80211\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to load TA instructions\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rsi_hal_device_init = private unnamed_addr constant [20 x i8] c"rsi_hal_device_init\00", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to load firmware to 9116 device\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_hal_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_hal_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_hal_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_hal_device_init to i32), ptr @__kstrtab_rsi_hal_device_init, ptr @__kstrtabns_rsi_hal_device_init }, section "___ksymtab_gpl+rsi_hal_device_init", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: REGOUT read failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.rsi_hal_prepare_fwload = private unnamed_addr constant [23 x i8] c"rsi_hal_prepare_fwload\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: REGOUT read timedout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Soft boot loader not present\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Received Board Version Number: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: REGOUT writing failed..\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"===> Device is ready to load firmware <===\0A\00", [52 x i8] zeroinitializer }, align 32
@bl_start_cmd_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&adapter->bl_cmd_timer)\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AUTO_READ_CMD\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Unable to read flash size from EEPROM\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.rsi_load_9113_firmware = private unnamed_addr constant [23 x i8] c"rsi_load_9113_firmware\00", align 1
@metadata_flash_content = internal constant { [5 x %struct.ta_metadata], [56 x i8] } { [5 x %struct.ta_metadata] [%struct.ta_metadata { ptr @.str.43, i32 65536 }, %struct.ta_metadata { ptr @.str.44, i32 65536 }, %struct.ta_metadata { ptr @.str.45, i32 65536 }, %struct.ta_metadata { ptr @.str.43, i32 65536 }, %struct.ta_metadata { ptr @.str.46, i32 65536 }], [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Loading file %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to open file %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW Length = %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: RPS Image header loading failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: CHECK_CRC Command writing failed..\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CRC Fail.. Proceeding to Upgrade mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"POLLING_MODE\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LOAD_HOSTED_FW\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Load Image command passed..\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FW_UPGRADE\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Burn Command Pass.. Upgrading the firmware\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware upgradation Done\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware upgrade failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AUTO_READ_MODE\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"***** Firmware Loading successful *****\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"##### Firmware loading failed #####\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Command %s (%0x) writing failed..\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.bl_cmd = private unnamed_addr constant [7 x i8] c"bl_cmd\00", align 1
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Flash size reading failed..\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.read_flash_capacity = private unnamed_addr constant [20 x i8] c"read_flash_capacity\00", align 1
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Flash capacity: %d KiloBytes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flash_content\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rsi/rs9113_wlan_qspi.rps\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rsi/rs9113_wlan_bt_dual_mode.rps\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rsi/rs9113_ap_bt_dual_mode.rps\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to load Version/CRC structure\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.bl_write_header = private unnamed_addr constant [16 x i8] c"bl_write_header\00", align 1
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to set ms word to common reg\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Command %0x REGIN reading failed..\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.bl_write_cmd = private unnamed_addr constant [13 x i8] c"bl_write_cmd\00", align 1
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Command %0x REGIN reading timed out..\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Issuing write to Regin val:%0x sending cmd:%0x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Command %0x REGOUT reading failed..\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Command %0x REGOUT reading timed out..\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Command %0x REGOUT writing failed..\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Recvd resp %x for cmd %0x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Recvd Expected resp %x for cmd %0x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Flash Content size is more than 400K %u\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.auto_fw_upgrade = private unnamed_addr constant [16 x i8] c"auto_fw_upgrade\00", align 1
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flash start address: %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Fw image Flash Start Address is less than 64K\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Flash Start Address is not multiple of 4K\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Flash Content will cross max flash size\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"content_size: %d, num_flash: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash index: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QSPI content_size:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Writing last sector content_size:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"instruction size zero\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Unable to load %d block\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Successfully loaded %d instructions\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EOF_REACHED\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FW loading is done and FW is running..\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PING_VALID\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PONG_VALID\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Unable to write blk at addr %0x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ping_pong_write = private unnamed_addr constant [16 x i8] c"ping_pong_write\00", align 1
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"***** Load 9116 TA Instructions *****\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Unable to access full RAM memory\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.rsi_load_9116_firmware = private unnamed_addr constant [23 x i8] c"rsi_load_9116_firmware\00", align 1
@metadata = internal constant { [5 x %struct.ta_metadata], [56 x i8] } { [5 x %struct.ta_metadata] [%struct.ta_metadata { ptr @.str.88, i32 0 }, %struct.ta_metadata { ptr @.str.89, i32 0 }, %struct.ta_metadata { ptr @.str.90, i32 0 }, %struct.ta_metadata { ptr @.str.91, i32 0 }, %struct.ta_metadata { ptr @.str.90, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: loading file %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"instructions_sz : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW start = %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Loading chunk %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"length %d destination %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to load chunk %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Unable to load %s blk\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Successfully loaded %s instructions\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to put ta in reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"JUMP_TO_ZERO\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Jump to zero command failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Jump to zero command successful\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmemdata_dummy\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rsi/rs9116_wlan.rps\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rsi/rs9116_wlan_bt_classic.rps\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsi/pmemdata_dummy\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 131, i64 133]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 69, i64 73, i64 79]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 65, i64 74]
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 72, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 84, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 92, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 173, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 179, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 235, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 319, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 358, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 372, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 376, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 397, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 417, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 449, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1143, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1154, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 856, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 864, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 866, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 871, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 879, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 882, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 500, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 897, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 904, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [23 x i8] c"metadata_flash_content\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 25, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 911, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 916, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 921, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 940, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 950, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 954, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 960, i32 51 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 966, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 969, i32 21 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 973, i32 58 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 977, i32 21 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 981, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 984, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 987, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 992, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 997, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 630, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 705, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 709, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 26, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 27, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 28, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 30, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 668, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 677, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 535, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 545, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 551, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 572, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 582, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 595, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 603, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 608, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 760, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 766, i32 21 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 770, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 777, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 784, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 792, i32 21 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 796, i32 22 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 799, i32 23 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 805, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 808, i32 24 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 821, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 827, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 833, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 837, i32 21 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 727, i32 9 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 732, i32 9 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 738, i32 21 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1015, i32 21 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1028, i32 21 }
@___asan_gen_.336 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 34, i32 27 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1034, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1061, i32 21 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1066, i32 22 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1070, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1076, i32 23 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1085, i32 6 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1104, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1109, i32 21 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1114, i32 22 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1117, i32 17 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1118, i32 23 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1120, i32 23 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 34, i32 42 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 35, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 36, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [42 x i8] c"../drivers/net/wireless/rsi/rsi_91x_hal.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 37, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__ksymtab_rsi_hal_device_init, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @bl_start_cmd_timer.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @metadata_flash_content, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @metadata, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_start_cmd_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_flash_content to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_pkt_to_bus(ptr noundef %common, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %2 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tx_bus_mutex, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %host_intf_ops = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %host_intf_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_intf_ops, align 4
  %write_pkt = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_pkt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_pkt, align 4
  %8 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call = tail call i32 %7(ptr noundef %9, ptr noundef %11, i32 noundef %13) #5
  %14 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp5 = icmp ugt i8 %15, 1
  br i1 %cmp5, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex8 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %tx_bus_mutex8) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_prepare_mgmt_desc(ptr noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp = icmp ugt i32 %5, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_prepare_mgmt_desc) #5
  br label %cleanup91

if.end:                                           ; preds = %entry
  %vif2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif2, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i)
  %cmp4 = icmp ult i32 %sub.ptr.sub.i, 20
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_prepare_mgmt_desc) #5
  br label %cleanup91

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #5
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %and = and i32 %14, 63
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.rhs.cast.i148 = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i149 = sub i32 %14, %sub.ptr.rhs.cast.i148
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub.ptr.sub.i149)
  %cmp11 = icmp ugt i32 %and, %sub.ptr.sub.i149
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rsi_prepare_mgmt_desc) #5
  br label %cleanup91

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %and) #5
  %17 = trunc i32 %and to i8
  %conv17 = add nuw nsw i8 %17, 20
  %internal_hdr_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %internal_hdr_size to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %internal_hdr_size, align 4
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %conv19 = zext i8 %conv17 to i32
  %21 = call ptr @memset(ptr %20, i32 0, i32 %conv19)
  %22 = load ptr, ptr %data.i, align 4
  %arrayidx21 = getelementptr i8, ptr %22, i32 %conv19
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %25 = trunc i32 %24 to i16
  %conv26 = add i16 %25, -16
  %or.i = or i16 %conv26, 16384
  %26 = tail call i16 @llvm.bswap.i16(i16 %or.i) #5
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %22, align 2
  %frame_type = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %frame_type to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %frame_type, align 1
  %header_len = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 4
  %29 = ptrtoint ptr %header_len to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 24, ptr %header_len, align 1
  %sub28 = add nuw nsw i8 %17, 4
  %xtend_desc_size = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 3
  %30 = ptrtoint ptr %xtend_desc_size to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %sub28, ptr %xtend_desc_size, align 1
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx21, align 2
  %33 = and i16 %32, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %33)
  %cmp.i = icmp eq i16 %33, 16384
  br i1 %cmp.i, label %if.then31, label %if.end14.if.end32_crit_edge

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %frame_info = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 5
  %34 = ptrtoint ptr %frame_info to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 1024, ptr %frame_info, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end14.if.end32_crit_edge
  %frame_info33 = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 5
  %35 = ptrtoint ptr %frame_info33 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %frame_info33, align 1
  %37 = or i16 %36, 256
  store i16 %37, ptr %frame_info33, align 1
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx21, i32 0, i32 2
  %38 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr1, i32 2
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %41, %39
  %add.ptr3.i = getelementptr i8, ptr %addr1, i32 4
  %42 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %43
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i150 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i150, label %if.then38, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %44 = or i16 %36, 258
  %45 = ptrtoint ptr %frame_info33 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %frame_info33, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end32.if.end43_crit_edge
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx21, i32 0, i32 5
  %46 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %seq_ctrl, align 2
  %48 = and i16 %47, -3841
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = lshr exact i16 %49, 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %seq_ctrl47 = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 8
  %52 = ptrtoint ptr %seq_ctrl47 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %seq_ctrl47, align 1
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %53 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp49 = icmp eq i8 %54, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end43.if.else_crit_edge

if.end43.if.else_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end43
  %p2p_enabled = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 71
  %55 = ptrtoint ptr %p2p_enabled to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p2p_enabled, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not = icmp eq i8 %56, 0
  br i1 %tobool.not, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end43.if.else_crit_edge
  br label %if.end53

if.end53:                                         ; preds = %if.else, %land.lhs.true.if.end53_crit_edge
  %.sink = phi i16 [ -29952, %if.else ], [ 0, %land.lhs.true.if.end53_crit_edge ]
  %rate_info52 = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 6
  %57 = ptrtoint ptr %rate_info52 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %.sink, ptr %rate_info52, align 1
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.i151 = icmp eq i32 %59, 2
  br i1 %cmp.i151, label %if.then55, label %if.end53.if.end56_crit_edge

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %bbp_info = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 7
  %60 = ptrtoint ptr %bbp_info to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 1536, ptr %bbp_info, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.if.end56_crit_edge
  %61 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx21, align 2
  %63 = and i16 %62, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %63)
  %cmp.i152 = icmp eq i16 %63, 20480
  br i1 %cmp.i152, label %if.then59, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %misc_flags = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 2
  %64 = ptrtoint ptr %misc_flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %misc_flags, align 1
  %66 = or i8 %65, 24
  store i8 %66, ptr %misc_flags, align 1
  %retry_cnt = getelementptr i8, ptr %22, i32 17
  %67 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %retry_cnt, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end56.if.end63_crit_edge
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %7, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %69, label %if.end63.if.end82_crit_edge [
    i32 3, label %if.end63.land.lhs.true69_crit_edge
    i32 9, label %if.end63.land.lhs.true69_crit_edge154
  ]

if.end63.land.lhs.true69_crit_edge154:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true69

if.end63.land.lhs.true69_crit_edge:               ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true69

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

land.lhs.true69:                                  ; preds = %if.end63.land.lhs.true69_crit_edge, %if.end63.land.lhs.true69_crit_edge154
  %71 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx21, align 2
  %73 = and i16 %72, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %73)
  %cmp.i153 = icmp eq i16 %73, -12288
  br i1 %cmp.i153, label %if.then73, label %land.lhs.true69.if.end82_crit_edge

land.lhs.true69.if.end82_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then73:                                        ; preds = %land.lhs.true69
  %call76 = tail call ptr @rsi_find_sta(ptr noundef %common, ptr noundef %addr1) #5
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then73.cleanup91_crit_edge, label %if.then78

if.then73.cleanup91_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %sta_id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 19
  %74 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sta_id, align 1
  %sta_id79 = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 10
  %76 = ptrtoint ptr %sta_id79 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %sta_id79, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %land.lhs.true69.if.end82_crit_edge, %if.end63.if.end82_crit_edge
  %vap_id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %77 = ptrtoint ptr %vap_id to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %vap_id, align 4
  %conv83 = zext i8 %78 to i16
  %79 = shl nuw nsw i16 %conv83, 6
  %80 = and i16 %79, 192
  %rate_info87 = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %22, i32 0, i32 6
  %81 = ptrtoint ptr %rate_info87 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %rate_info87, align 1
  %or89 = or i16 %80, %82
  store i16 %or89, ptr %rate_info87, align 1
  br label %cleanup91

cleanup91:                                        ; preds = %if.end82, %if.then73.cleanup91_crit_edge, %if.then13, %if.then6, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ -28, %if.then6 ], [ -28, %if.then13 ], [ 0, %if.end82 ], [ -22, %if.then73.cleanup91_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsi_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_prepare_data_desc(ptr noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rsi_prepare_data_desc) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #5
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i318 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i319 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i320 = sub i32 %sub.ptr.lhs.cast.i318, %sub.ptr.rhs.cast.i319
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i320)
  %cmp9 = icmp ult i32 %sub.ptr.sub.i320, 20
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rsi_prepare_data_desc) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %conv6 = and i32 %sub.ptr.lhs.cast.i318, 63
  %call14 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv6) #5
  %12 = trunc i32 %conv6 to i8
  %conv17 = add nuw nsw i8 %12, 20
  %internal_hdr_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %13 = ptrtoint ptr %internal_hdr_size to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %internal_hdr_size, align 4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %conv19 = zext i8 %conv17 to i32
  %16 = call ptr @memset(ptr %15, i32 0, i32 %conv19)
  %17 = load ptr, ptr %data.i, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 16
  %arrayidx22 = getelementptr i8, ptr %17, i32 %conv19
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx22, i32 0, i32 5
  %18 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %seq_ctrl, align 2
  %20 = and i16 %19, -3841
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = lshr exact i16 %21, 4
  %sub = add nuw nsw i8 %12, 4
  %xtend_desc_size = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 3
  %23 = ptrtoint ptr %xtend_desc_size to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %sub, ptr %xtend_desc_size, align 1
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx22, align 2
  %26 = and i16 %25, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %26)
  %cmp.i = icmp eq i16 %26, -30720
  br i1 %cmp.i, label %if.then29, label %if.end12.if.end35_crit_edge

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then29:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %mac_flags = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %mac_flags to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %mac_flags, align 1
  %29 = or i16 %28, 16
  store i16 %29, ptr %mac_flags, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end12.if.end35_crit_edge
  %ieee80211_size.0 = phi i8 [ 26, %if.then29 ], [ 24, %if.end12.if.end35_crit_edge ]
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %31, label %if.end35.if.end48_crit_edge [
    i32 2, label %if.end35.land.lhs.true_crit_edge
    i32 8, label %if.end35.land.lhs.true_crit_edge325
  ]

if.end35.land.lhs.true_crit_edge325:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end35.land.lhs.true_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end35.land.lhs.true_crit_edge, %if.end35.land.lhs.true_crit_edge325
  %ps_state = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp41 = icmp eq i32 %34, 3
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx22, align 2
  %37 = or i16 %36, 16
  store i16 %37, ptr %arrayidx22, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %land.lhs.true.if.end48_crit_edge, %if.end35.if.end48_crit_edge
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cb.i, align 8
  %and49 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool.not = icmp eq i32 %and49, 0
  br i1 %tobool.not, label %land.lhs.true50, label %if.end48.if.end67_crit_edge

if.end48.if.end67_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true50:                                  ; preds = %if.end48
  %have_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 29
  %40 = ptrtoint ptr %have_key to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %have_key, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool51.not = icmp eq i8 %41, 0
  br i1 %tobool51.not, label %land.lhs.true50.if.end67_crit_edge, label %if.then53

land.lhs.true50.if.end67_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then53:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = tail call zeroext i1 @rsi_is_cipher_wep(ptr noundef %common) #5
  %42 = or i8 %ieee80211_size.0, 4
  %narrow = add nuw nsw i8 %ieee80211_size.0, 8
  %ieee80211_size.1 = select i1 %call54, i8 %42, i8 %narrow
  %mac_flags63 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 8
  %43 = ptrtoint ptr %mac_flags63 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %mac_flags63, align 1
  %45 = or i16 %44, 128
  store i16 %45, ptr %mac_flags63, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then53, %land.lhs.true50.if.end67_crit_edge, %if.end48.if.end67_crit_edge
  %ieee80211_size.2 = phi i8 [ %ieee80211_size.0, %if.end48.if.end67_crit_edge ], [ %ieee80211_size.1, %if.then53 ], [ %ieee80211_size.0, %land.lhs.true50.if.end67_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = trunc i32 %47 to i16
  %conv69 = add i16 %48, -16
  %or.i = or i16 %conv69, 20480
  %49 = tail call i16 @llvm.bswap.i16(i16 %or.i) #5
  %50 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %15, align 2
  %header_len = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 4
  %51 = ptrtoint ptr %header_len to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %ieee80211_size.2, ptr %header_len, align 1
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %52 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %band, align 1
  %idxprom70 = zext i8 %53 to i32
  %fixed_enabled = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 19, i32 %idxprom70, i32 2
  %54 = ptrtoint ptr %fixed_enabled to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fixed_enabled, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool72.not = icmp eq i8 %55, 0
  br i1 %tobool72.not, label %if.end67.if.end95_crit_edge, label %if.then73

if.end67.if.end95_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then73:                                        ; preds = %if.end67
  %fixed_hw_rate = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 19, i32 %idxprom70, i32 1
  %56 = ptrtoint ptr %fixed_hw_rate to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %fixed_hw_rate, align 4
  %frame_info = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 5
  %58 = ptrtoint ptr %frame_info to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 256, ptr %frame_info, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %57)
  %rate_info = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 6
  %60 = ptrtoint ptr %rate_info to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %rate_info, align 1
  %61 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %common, align 4
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %64, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp.i321 = icmp eq i32 %66, 2
  br i1 %cmp.i321, label %if.then80, label %if.then73.if.end81_crit_edge

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then80:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %bbp_info = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 7
  %67 = ptrtoint ptr %bbp_info to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 1536, ptr %bbp_info, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.then73.if.end81_crit_edge
  %sgi = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sgi, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool83.not = icmp eq i8 %69, 0
  %70 = and i16 %57, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool88.not = icmp eq i16 %70, 0
  %or.cond = select i1 %tobool83.not, i1 true, i1 %tobool88.not
  br i1 %or.cond, label %if.end81.if.end95_crit_edge, label %if.then89

if.end81.if.end95_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %rate_info to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %rate_info, align 1
  %73 = or i16 %72, 2
  store i16 %73, ptr %rate_info, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %if.end81.if.end95_crit_edge, %if.end67.if.end95_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %74 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %75)
  %cmp97 = icmp eq i16 %75, -30578
  br i1 %cmp97, label %if.then99, label %if.end95.if.end142_crit_edge

if.end95.if.end142_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then99:                                        ; preds = %if.end95
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #5
  %frame_info100 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 5
  %76 = ptrtoint ptr %frame_info100 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 256, ptr %frame_info100, align 1
  %77 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp103 = icmp eq i8 %78, 1
  %spec.select = select i1 %cmp103, i16 -29952, i16 0
  %79 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 6
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %spec.select, ptr %79, align 1
  %mac_flags110 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 8
  %81 = ptrtoint ptr %mac_flags110 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %mac_flags110, align 1
  %83 = or i16 %82, 32
  store i16 %83, ptr %mac_flags110, align 1
  %misc_flags = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 2
  %84 = ptrtoint ptr %misc_flags to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %misc_flags, align 1
  %86 = or i8 %85, 16
  store i8 %86, ptr %misc_flags, align 1
  %retry_cnt = getelementptr i8, ptr %17, i32 17
  %87 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 15, ptr %retry_cnt, align 1
  %eapol4_confirm = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 75
  %88 = ptrtoint ptr %eapol4_confirm to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %eapol4_confirm, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool117.not = icmp eq i8 %89, 0
  br i1 %tobool117.not, label %if.else119, label %if.then118

if.then118:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %90 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %priority, align 4
  br label %if.end124

if.else119:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %93 = trunc i32 %92 to i16
  %conv123 = add i16 %93, -16
  %or.i322 = or i16 %conv123, 16384
  %94 = tail call i16 @llvm.bswap.i16(i16 %or.i322) #5
  %95 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %15, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.else119, %if.then118
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len, align 4
  %sub127 = sub i32 %97, %conv19
  %98 = zext i32 %sub127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %sub127, label %if.end124.if.end142_crit_edge [
    i32 133, label %if.end124.if.then136_crit_edge
    i32 131, label %if.end124.if.then136_crit_edge326
  ]

if.end124.if.then136_crit_edge326:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then136

if.end124.if.then136_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then136

if.end124.if.end142_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then136:                                       ; preds = %if.end124.if.then136_crit_edge, %if.end124.if.then136_crit_edge326
  %99 = ptrtoint ptr %misc_flags to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %misc_flags, align 1
  %101 = or i8 %100, 4
  store i8 %101, ptr %misc_flags, align 1
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %arrayidx, align 2
  br label %if.end142

if.end142:                                        ; preds = %if.then136, %if.end124.if.end142_crit_edge, %if.end95.if.end142_crit_edge
  %103 = tail call i16 @llvm.bswap.i16(i16 %22)
  %mac_flags147 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 8
  %104 = ptrtoint ptr %mac_flags147 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %mac_flags147, align 1
  %or149314 = or i16 %105, %103
  store i16 %or149314, ptr %mac_flags147, align 1
  %priority151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %106 = ptrtoint ptr %priority151 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %priority151, align 4
  %tid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %108 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %tid, align 2
  %110 = shl i8 %109, 4
  %111 = trunc i32 %107 to i8
  %112 = and i8 %111, 15
  %conv156 = or i8 %112, %110
  %qid_tid = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 9
  %113 = ptrtoint ptr %qid_tid to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv156, ptr %qid_tid, align 1
  %sta_id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 19
  %114 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %sta_id, align 1
  %sta_id157 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 10
  %116 = ptrtoint ptr %sta_id157 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %sta_id157, align 1
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx22, i32 0, i32 2
  %117 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr1, i32 2
  %119 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %120, %118
  %add.ptr3.i = getelementptr i8, ptr %addr1, i32 4
  %121 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %122
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i323 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i323, label %if.end142.if.then166_crit_edge, label %lor.lhs.false161

if.end142.if.then166_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then166

lor.lhs.false161:                                 ; preds = %if.end142
  %123 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr1, align 4
  %125 = and i32 %124, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i.not = icmp eq i32 %125, 0
  br i1 %tobool.i.not, label %lor.lhs.false161.if.end191thread-pre-split_crit_edge, label %lor.lhs.false161.if.then166_crit_edge

lor.lhs.false161.if.then166_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then166

lor.lhs.false161.if.end191thread-pre-split_crit_edge: ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191thread-pre-split

if.then166:                                       ; preds = %lor.lhs.false161.if.then166_crit_edge, %if.end142.if.then166_crit_edge
  %frame_info167 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 5
  %126 = ptrtoint ptr %frame_info167 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 258, ptr %frame_info167, align 1
  %127 = ptrtoint ptr %sta_id157 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %sta_id157, align 1
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %3, align 8
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %129, label %if.then166.if.end191_crit_edge [
    i32 3, label %if.then166.if.then180_crit_edge
    i32 9, label %if.then166.if.then180_crit_edge327
  ]

if.then166.if.then180_crit_edge327:               ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then180

if.then166.if.then180_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then180

if.then166.if.end191_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191

if.then180:                                       ; preds = %if.then166.if.then180_crit_edge, %if.then166.if.then180_crit_edge327
  %131 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp183 = icmp eq i8 %132, 1
  %rate_info186 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 6
  %. = select i1 %cmp183, i16 -29952, i16 0
  %133 = ptrtoint ptr %rate_info186 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %., ptr %rate_info186, align 1
  br label %if.end191thread-pre-split

if.end191thread-pre-split:                        ; preds = %if.then180, %lor.lhs.false161.if.end191thread-pre-split_crit_edge
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr = load i32, ptr %3, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.end191thread-pre-split, %if.then166.if.end191_crit_edge
  %135 = phi i32 [ %.pr, %if.end191thread-pre-split ], [ %129, %if.then166.if.end191_crit_edge ]
  %136 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %135, label %if.end191.if.end208_crit_edge [
    i32 3, label %if.end191.land.lhs.true199_crit_edge
    i32 9, label %if.end191.land.lhs.true199_crit_edge328
  ]

if.end191.land.lhs.true199_crit_edge328:          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true199

if.end191.land.lhs.true199_crit_edge:             ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true199

if.end191.if.end208_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

land.lhs.true199:                                 ; preds = %if.end191.land.lhs.true199_crit_edge, %if.end191.land.lhs.true199_crit_edge328
  %137 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx22, align 2
  %139 = and i16 %138, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %cmp.i324.not = icmp eq i16 %139, 0
  br i1 %cmp.i324.not, label %land.lhs.true199.if.end208_crit_edge, label %if.then203

land.lhs.true199.if.end208_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

if.then203:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #7
  %frame_info204 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 5
  %140 = ptrtoint ptr %frame_info204 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %frame_info204, align 1
  %142 = or i16 %141, 512
  store i16 %142, ptr %frame_info204, align 1
  br label %if.end208

if.end208:                                        ; preds = %if.then203, %land.lhs.true199.if.end208_crit_edge, %if.end191.if.end208_crit_edge
  %vap_id209 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %143 = ptrtoint ptr %vap_id209 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %vap_id209, align 4
  %conv210 = zext i8 %144 to i16
  %145 = shl nuw nsw i16 %conv210, 6
  %146 = and i16 %145, 192
  %rate_info215 = getelementptr inbounds %struct.rsi_data_desc, ptr %15, i32 0, i32 6
  %147 = ptrtoint ptr %rate_info215 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %rate_info215, align 1
  %or217 = or i16 %146, %148
  store i16 %or217, ptr %rate_info215, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %if.then11, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ -28, %if.then11 ], [ 0, %if.end208 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rsi_is_cipher_wep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_data_pkt(ptr noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 31
  %2 = ptrtoint ptr %iface_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface_down, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end3:                                          ; preds = %if.end
  %vif4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %vif4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif4, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end3.err_crit_edge, label %if.end7

if.end3.err_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end7:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %7, label %if.end7.if.end13_crit_edge [
    i32 2, label %if.end7.land.lhs.true_crit_edge
    i32 8, label %if.end7.land.lhs.true_crit_edge35
  ]

if.end7.land.lhs.true_crit_edge35:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge35
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %assoc, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %land.lhs.true.err_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %coex_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %11 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %coex_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp ugt i8 %12, 1
  br i1 %cmp.i, label %if.then.i, label %if.end13.if.end.i_crit_edge

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tx_bus_mutex.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end13.if.end.i_crit_edge
  %host_intf_ops.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %host_intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_intf_ops.i, align 4
  %write_pkt.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_pkt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_pkt.i, align 4
  %17 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 %16(ptr noundef %18, ptr noundef %20, i32 noundef %22) #5
  %23 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %coex_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp5.i = icmp ugt i8 %24, 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.rsi_send_pkt_to_bus.exit_crit_edge

if.end.i.rsi_send_pkt_to_bus.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_send_pkt_to_bus.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex8.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %tx_bus_mutex8.i) #5
  br label %rsi_send_pkt_to_bus.exit

rsi_send_pkt_to_bus.exit:                         ; preds = %if.then7.i, %if.end.i.rsi_send_pkt_to_bus.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %rsi_send_pkt_to_bus.exit.err_crit_edge, label %if.then16

rsi_send_pkt_to_bus.exit.err_crit_edge:           ; preds = %rsi_send_pkt_to_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then16:                                        ; preds = %rsi_send_pkt_to_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rsi_send_data_pkt) #5
  br label %err

err:                                              ; preds = %if.then16, %rsi_send_pkt_to_bus.exit.err_crit_edge, %land.lhs.true.err_crit_edge, %if.end3.err_crit_edge, %if.end.err_crit_edge
  %status.0 = phi i32 [ -22, %if.end.err_crit_edge ], [ %call.i, %if.then16 ], [ 0, %rsi_send_pkt_to_bus.exit.err_crit_edge ], [ -22, %land.lhs.true.err_crit_edge ], [ -22, %if.end3.err_crit_edge ]
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %25 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %priority, align 4
  %arrayidx = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 22, i32 1, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %arrayidx, align 4
  tail call void @rsi_indicate_tx_status(ptr noundef %1, ptr noundef nonnull %skb, i32 noundef %status.0) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %err ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_indicate_tx_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_mgmt_pkt(ptr noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %host_intf_ops = getelementptr inbounds %struct.rsi_hw, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %host_intf_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_intf_ops, align 4
  %write_pkt = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_pkt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_pkt, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call2 = tail call i32 %7(ptr noundef %3, ptr noundef %9, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rsi_send_mgmt_pkt) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  %internal_hdr_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %12 = ptrtoint ptr %internal_hdr_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %internal_hdr_size, align 4
  %data6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data6, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr i8, ptr %15, i32 %idxprom
  %arrayidx9 = getelementptr i8, ptr %15, i32 16
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %18 = and i16 %17, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %18)
  %cmp.i = icmp eq i16 %18, 16384
  br i1 %cmp.i, label %land.lhs.true, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %vif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vif, align 8
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %20, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %assoc, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not = icmp eq i8 %22, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rsi_send_mgmt_pkt) #5
  %misc_flags = getelementptr inbounds %struct.rsi_mgmt_desc, ptr %15, i32 0, i32 2
  %23 = ptrtoint ptr %misc_flags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %misc_flags, align 1
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx9, align 2
  %mgmt_q_block = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 3
  %25 = ptrtoint ptr %mgmt_q_block to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %mgmt_q_block, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %26 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common, align 4
  %coex_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %28 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %coex_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i45 = icmp ugt i8 %29, 1
  br i1 %cmp.i45, label %if.then.i, label %if.end13.if.end.i_crit_edge

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tx_bus_mutex.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end13.if.end.i_crit_edge
  %host_intf_ops.i = getelementptr inbounds %struct.rsi_hw, ptr %27, i32 0, i32 25
  %30 = ptrtoint ptr %host_intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host_intf_ops.i, align 4
  %write_pkt.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_pkt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_pkt.i, align 4
  %34 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %common, align 4
  %36 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data6, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 %33(ptr noundef %35, ptr noundef %37, i32 noundef %39) #5
  %40 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %coex_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp5.i = icmp ugt i8 %41, 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.rsi_send_pkt_to_bus.exit_crit_edge

if.end.i.rsi_send_pkt_to_bus.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_send_pkt_to_bus.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex8.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %tx_bus_mutex8.i) #5
  br label %rsi_send_pkt_to_bus.exit

rsi_send_pkt_to_bus.exit:                         ; preds = %if.then7.i, %if.end.i.rsi_send_pkt_to_bus.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %rsi_send_pkt_to_bus.exit.if.end17_crit_edge, label %if.then16

rsi_send_pkt_to_bus.exit.if.end17_crit_edge:      ; preds = %rsi_send_pkt_to_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %rsi_send_pkt_to_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rsi_send_mgmt_pkt) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %rsi_send_pkt_to_bus.exit.if.end17_crit_edge
  %42 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %common, align 4
  tail call void @rsi_indicate_tx_status(ptr noundef %43, ptr noundef %skb, i32 noundef %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_send_bt_pkt(ptr noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %.mask = and i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 96
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %coex_mode.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %6 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coex_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp ugt i8 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tx_bus_mutex.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %host_intf_ops.i = getelementptr inbounds %struct.rsi_hw, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %host_intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_intf_ops.i, align 4
  %write_pkt.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_pkt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_pkt.i, align 4
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 %11(ptr noundef %13, ptr noundef %15, i32 noundef %17) #5
  %18 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %coex_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp5.i = icmp ugt i8 %19, 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.rsi_send_pkt_to_bus.exit_crit_edge

if.end.i.rsi_send_pkt_to_bus.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_send_pkt_to_bus.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex8.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %tx_bus_mutex8.i) #5
  br label %rsi_send_pkt_to_bus.exit

rsi_send_pkt_to_bus.exit:                         ; preds = %if.then7.i, %if.end.i.rsi_send_pkt_to_bus.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %rsi_send_pkt_to_bus.exit.out_crit_edge, label %rsi_send_pkt_to_bus.exit.out.sink.split_crit_edge

rsi_send_pkt_to_bus.exit.out.sink.split_crit_edge: ; preds = %rsi_send_pkt_to_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

rsi_send_pkt_to_bus.exit.out_crit_edge:           ; preds = %rsi_send_pkt_to_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i)
  %cmp8 = icmp ult i32 %sub.ptr.sub.i, 16
  br i1 %cmp8, label %if.end5.out.sink.split_crit_edge, label %if.end11

if.end5.out.sink.split_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end11:                                         ; preds = %if.end5
  %call13 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 16) #5
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 16)
  %25 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = trunc i32 %27 to i16
  %conv17 = add i16 %28, -16
  %or.i = or i16 %conv17, 28672
  %29 = tail call i16 @llvm.bswap.i16(i16 %or.i) #5
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %25, align 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %31 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cb, align 8
  %conv18 = zext i8 %32 to i16
  %33 = shl nuw i16 %conv18, 8
  %bt_pkt_type = getelementptr inbounds %struct.rsi_bt_desc, ptr %25, i32 0, i32 5
  %34 = ptrtoint ptr %bt_pkt_type to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %bt_pkt_type, align 1
  %35 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common, align 4
  %coex_mode.i39 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %37 = ptrtoint ptr %coex_mode.i39 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %coex_mode.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp.i40 = icmp ugt i8 %38, 1
  br i1 %cmp.i40, label %if.then.i42, label %if.end11.if.end.i49_crit_edge

if.end11.if.end.i49_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i49

if.then.i42:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex.i41 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %tx_bus_mutex.i41, i32 noundef 0) #5
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then.i42, %if.end11.if.end.i49_crit_edge
  %host_intf_ops.i43 = getelementptr inbounds %struct.rsi_hw, ptr %36, i32 0, i32 25
  %39 = ptrtoint ptr %host_intf_ops.i43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_intf_ops.i43, align 4
  %write_pkt.i44 = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_pkt.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_pkt.i44, align 4
  %43 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %common, align 4
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %call.i47 = tail call i32 %42(ptr noundef %44, ptr noundef %46, i32 noundef %48) #5
  %49 = ptrtoint ptr %coex_mode.i39 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %coex_mode.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp5.i48 = icmp ugt i8 %50, 1
  br i1 %cmp5.i48, label %if.then7.i51, label %if.end.i49.rsi_send_pkt_to_bus.exit52_crit_edge

if.end.i49.rsi_send_pkt_to_bus.exit52_crit_edge:  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_send_pkt_to_bus.exit52

if.then7.i51:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  %tx_bus_mutex8.i50 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %tx_bus_mutex8.i50) #5
  br label %rsi_send_pkt_to_bus.exit52

rsi_send_pkt_to_bus.exit52:                       ; preds = %if.then7.i51, %if.end.i49.rsi_send_pkt_to_bus.exit52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool20.not = icmp eq i32 %call.i47, 0
  br i1 %tobool20.not, label %rsi_send_pkt_to_bus.exit52.out_crit_edge, label %rsi_send_pkt_to_bus.exit52.out.sink.split_crit_edge

rsi_send_pkt_to_bus.exit52.out.sink.split_crit_edge: ; preds = %rsi_send_pkt_to_bus.exit52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

rsi_send_pkt_to_bus.exit52.out_crit_edge:         ; preds = %rsi_send_pkt_to_bus.exit52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out.sink.split:                                   ; preds = %rsi_send_pkt_to_bus.exit52.out.sink.split_crit_edge, %if.end5.out.sink.split_crit_edge, %rsi_send_pkt_to_bus.exit.out.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.10, %rsi_send_pkt_to_bus.exit.out.sink.split_crit_edge ], [ @.str.4, %if.end5.out.sink.split_crit_edge ], [ @.str.11, %rsi_send_pkt_to_bus.exit52.out.sink.split_crit_edge ]
  %status.0.ph = phi i32 [ %call.i, %rsi_send_pkt_to_bus.exit.out.sink.split_crit_edge ], [ -28, %if.end5.out.sink.split_crit_edge ], [ %call.i47, %rsi_send_pkt_to_bus.exit52.out.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.11.sink, ptr noundef nonnull @__func__.rsi_send_bt_pkt) #5
  br label %out

out:                                              ; preds = %out.sink.split, %rsi_send_pkt_to_bus.exit52.out_crit_edge, %rsi_send_pkt_to_bus.exit.out_crit_edge
  %status.0 = phi i32 [ 0, %rsi_send_pkt_to_bus.exit.out_crit_edge ], [ 0, %rsi_send_pkt_to_bus.exit52.out_crit_edge ], [ %status.0.ph, %out.sink.split ]
  tail call void @consume_skb(ptr noundef %skb) #5
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_prepare_beacon(ptr nocapture noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %tim_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %hw2 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_offset) #5
  %4 = ptrtoint ptr %tim_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %tim_offset, align 2
  %arrayidx = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %8, label %if.end.for.inc_crit_edge [
    i32 3, label %if.end.if.end14_crit_edge
    i32 9, label %if.end.if.end14_crit_edge122
  ]

if.end.if.end14_crit_edge122:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %13, label %if.end.1.for.inc.1_crit_edge [
    i32 3, label %if.end.1.if.end14_crit_edge
    i32 9, label %if.end.1.if.end14_crit_edge123
  ]

if.end.1.if.end14_crit_edge123:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.1.if.end14_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %16, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.if.end14_crit_edge

for.inc.1.if.end14_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %for.inc.1.if.end14_crit_edge, %if.end.1.if.end14_crit_edge, %if.end.1.if.end14_crit_edge123, %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge122
  %17 = phi ptr [ %6, %if.end.if.end14_crit_edge ], [ %6, %if.end.if.end14_crit_edge122 ], [ %11, %if.end.1.if.end14_crit_edge ], [ %11, %if.end.1.if.end14_crit_edge123 ], [ %16, %for.inc.1.if.end14_crit_edge ]
  %call = call ptr @ieee80211_beacon_get_tim(ptr noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %tim_offset, ptr noundef null) #5
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %beacon_cnt = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 65
  %18 = ptrtoint ptr %beacon_cnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %beacon_cnt, align 4
  %inc19 = add i16 %19, 1
  store i16 %inc19, ptr %beacon_cnt, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv20 = trunc i32 %23 to i16
  %or.i = or i16 %conv20, 20480
  %24 = call i16 @llvm.bswap.i16(i16 %or.i) #5
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %21, align 2
  %header_len = getelementptr inbounds %struct.rsi_data_desc, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %header_len to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 24, ptr %header_len, align 1
  %frame_info = getelementptr inbounds %struct.rsi_data_desc, ptr %21, i32 0, i32 5
  %27 = ptrtoint ptr %frame_info to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 1418, ptr %frame_info, align 1
  %rate_info = getelementptr inbounds %struct.rsi_data_desc, ptr %21, i32 0, i32 6
  %28 = ptrtoint ptr %rate_info to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %rate_info, align 1
  %qid_tid = getelementptr inbounds %struct.rsi_data_desc, ptr %21, i32 0, i32 9
  %29 = ptrtoint ptr %qid_tid to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 11, ptr %qid_tid, align 1
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  br i1 %cmp.i, label %conf_is_ht40_plus.exit, label %if.end18.if.end36_crit_edge

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

conf_is_ht40_plus.exit:                           ; preds = %if.end18
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %center_freq1.i, align 4
  %34 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %37)
  %cmp3.i = icmp ugt i32 %33, %37
  br i1 %cmp3.i, label %conf_is_ht40_plus.exit.if.end36.sink.split_crit_edge, label %conf_is_ht40_minus.exit

conf_is_ht40_plus.exit.if.end36.sink.split_crit_edge: ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.sink.split

conf_is_ht40_minus.exit:                          ; preds = %conf_is_ht40_plus.exit
  %38 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %center_freq1.i, align 4
  %40 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chandef.i, align 4
  %center_freq.i113 = getelementptr inbounds %struct.ieee80211_channel, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %center_freq.i113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %center_freq.i113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp3.i114 = icmp ult i32 %39, %43
  br i1 %cmp3.i114, label %conf_is_ht40_minus.exit.if.end36.sink.split_crit_edge, label %conf_is_ht40_minus.exit.if.end36_crit_edge

conf_is_ht40_minus.exit.if.end36_crit_edge:       ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

conf_is_ht40_minus.exit.if.end36.sink.split_crit_edge: ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %conf_is_ht40_minus.exit.if.end36.sink.split_crit_edge, %conf_is_ht40_plus.exit.if.end36.sink.split_crit_edge
  %.sink = phi i16 [ 1088, %conf_is_ht40_plus.exit.if.end36.sink.split_crit_edge ], [ 544, %conf_is_ht40_minus.exit.if.end36.sink.split_crit_edge ]
  %bbp_info30 = getelementptr inbounds %struct.rsi_data_desc, ptr %21, i32 0, i32 7
  %44 = ptrtoint ptr %bbp_info30 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %.sink, ptr %bbp_info30, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %conf_is_ht40_minus.exit.if.end36_crit_edge, %if.end18.if.end36_crit_edge
  %band = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %45 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp38 = icmp eq i8 %46, 0
  br i1 %cmp38, label %if.end36.if.end50_crit_edge, label %if.else45

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.else45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %rate_info to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %rate_info, align 1
  %49 = or i16 %48, -29952
  store i16 %49, ptr %rate_info, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.else45, %if.end36.if.end50_crit_edge
  %data51 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %50 = ptrtoint ptr %data51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data51, align 4
  %52 = ptrtoint ptr %tim_offset to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tim_offset, align 2
  %conv52 = zext i16 %53 to i32
  %add = add nuw nsw i32 %conv52, 2
  %arrayidx53 = getelementptr i8, ptr %51, i32 %add
  %54 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp55 = icmp eq i8 %55, 0
  br i1 %cmp55, label %if.then57, label %if.end50.if.end62_crit_edge

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %frame_info to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %frame_info, align 1
  %58 = or i16 %57, 12
  store i16 %58, ptr %frame_info, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end50.if.end62_crit_edge
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  %arrayidx64 = getelementptr i8, ptr %60, i32 16
  %61 = ptrtoint ptr %data51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data51, align 4
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  %65 = call ptr @memcpy(ptr %arrayidx64, ptr %62, i32 %64)
  %66 = load i32, ptr %len, align 4
  %add68 = add i32 %66, 16
  %call69 = call ptr @skb_put(ptr noundef %skb, i32 noundef %add68) #5
  call void @consume_skb(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then17, %for.inc.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -22, %if.then17 ], [ -22, %for.inc.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_offset) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_hal_device_init(ptr noundef %adapter) #0 align 64 {
entry:
  %fw_entry.i22 = alloca ptr, align 4
  %bootload_ds.i = alloca %struct.bootload_ds, align 1
  %flash_sz.i.i = alloca i32, align 4
  %fw_entry.i = alloca ptr, align 4
  %tmp_regout_val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %device_model = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %device_model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_model, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @rsi_hal_prepare_fwload(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i) #5
  %7 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fw_entry.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_regout_val.i) #5
  %8 = ptrtoint ptr %tmp_regout_val.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %tmp_regout_val.i, align 2
  %call.i = tail call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 82, i8 noundef zeroext -86, ptr noundef nonnull @.str.22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_sz.i.i) #5
  %9 = ptrtoint ptr %flash_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flash_sz.i.i, align 4
  %host_intf_ops.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 25
  %10 = ptrtoint ptr %host_intf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_intf_ops.i.i, align 4
  %master_reg_read.i.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %master_reg_read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_reg_read.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef %adapter, i32 noundef 67108886, ptr noundef nonnull %flash_sz.i.i, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %read_flash_capacity.exit.thread.i, label %read_flash_capacity.exit.i

read_flash_capacity.exit.thread.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.read_flash_capacity) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_sz.i.i) #5
  %flash_capacity145.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 19
  %14 = ptrtoint ptr %flash_capacity145.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flash_capacity145.i, align 4
  br label %if.then4.i

read_flash_capacity.exit.i:                       ; preds = %if.end.i
  %15 = ptrtoint ptr %flash_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flash_sz.i.i, align 4
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef %16) #5
  %17 = ptrtoint ptr %flash_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flash_sz.i.i, align 4
  %mul.i.i = shl i32 %18, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_sz.i.i) #5
  %flash_capacity.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 19
  %19 = ptrtoint ptr %flash_capacity.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i.i, ptr %flash_capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp3.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp3.i, label %read_flash_capacity.exit.i.if.then4.i_crit_edge, label %if.end5.i

read_flash_capacity.exit.i.if.then4.i_crit_edge:  ; preds = %read_flash_capacity.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %read_flash_capacity.exit.i.if.then4.i_crit_edge, %read_flash_capacity.exit.thread.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.rsi_load_9113_firmware) #5
  br label %if.then2

if.end5.i:                                        ; preds = %read_flash_capacity.exit.i
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 4
  %coex_mode.i = getelementptr inbounds %struct.rsi_common, ptr %21, i32 0, i32 45
  %22 = ptrtoint ptr %coex_mode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %coex_mode.i, align 2
  %idxprom.i = zext i8 %23 to i32
  %arrayidx.i = getelementptr [5 x %struct.ta_metadata], ptr @metadata_flash_content, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rsi_load_9113_firmware, ptr noundef %25) #5
  %fw_file_name.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 16
  %26 = ptrtoint ptr %fw_file_name.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fw_file_name.i, align 4
  %device.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 6
  %27 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i, align 4
  %call9.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef %25, ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rsi_load_9113_firmware, ptr noundef %25) #5
  br label %if.then2

if.end13.i:                                       ; preds = %if.end5.i
  %29 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw_entry.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %32) #5
  %33 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw_entry.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %36, i32 2592
  %37 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx14.i, align 1
  %lmac_ver.i = getelementptr inbounds %struct.rsi_common, ptr %6, i32 0, i32 4
  %ver.i = getelementptr inbounds %struct.rsi_common, ptr %6, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ver.i, align 1
  %40 = load ptr, ptr %data.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %40, i32 2593
  %41 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx18.i, align 1
  %arrayidx25.i = getelementptr %struct.rsi_common, ptr %6, i32 0, i32 4, i32 4, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx25.i, align 1
  %44 = load ptr, ptr %fw_entry.i, align 4
  %data26.i = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %data26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data26.i, align 4
  %arrayidx27.i = getelementptr i8, ptr %46, i32 2594
  %47 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx27.i, align 1
  %conv30.i = zext i8 %48 to i16
  %49 = ptrtoint ptr %lmac_ver.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %conv30.i, ptr %lmac_ver.i, align 1
  %50 = load ptr, ptr %data26.i, align 4
  %arrayidx33.i = getelementptr i8, ptr %50, i32 2595
  %51 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx33.i, align 1
  %release_num.i = getelementptr inbounds %struct.rsi_common, ptr %6, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %release_num.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %release_num.i, align 1
  %54 = load ptr, ptr %data26.i, align 4
  %arrayidx39.i = getelementptr i8, ptr %54, i32 2596
  %55 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx39.i, align 1
  %conv42.i = zext i8 %56 to i16
  %minor.i = getelementptr inbounds %struct.rsi_common, ptr %6, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %minor.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %conv42.i, ptr %minor.i, align 1
  %patch_num.i = getelementptr inbounds %struct.rsi_common, ptr %6, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %patch_num.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %patch_num.i, align 1
  call void @rsi_print_version(ptr noundef %6) #5
  %59 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw_entry.i, align 4
  %data45.i = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data45.i, align 4
  %63 = ptrtoint ptr %host_intf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host_intf_ops.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 20) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.i.if.then47.i_crit_edge, label %if.end.i130.i

if.end13.i.if.then47.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47.i

if.end.i130.i:                                    ; preds = %if.end13.i
  %66 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %67 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter, align 4
  %coex_mode.i.i = getelementptr inbounds %struct.rsi_common, ptr %68, i32 0, i32 45
  %69 = ptrtoint ptr %coex_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %coex_mode.i.i, align 2
  %conv.i.i = zext i8 %70 to i32
  %71 = shl nuw i32 %conv.i.i, 24
  %image_no.i.i = getelementptr inbounds %struct.bl_header, ptr %call7.i.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %image_no.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %image_no.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %62, i32 20
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #5
  %check_sum.i.i = getelementptr inbounds %struct.bl_header, ptr %call7.i.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %check_sum.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %check_sum.i.i, align 8
  %arrayidx1.i.i = getelementptr i8, ptr %62, i32 16
  %77 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx1.i.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #5
  %flash_start_address.i.i = getelementptr inbounds %struct.bl_header, ptr %call7.i.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %flash_start_address.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %flash_start_address.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %62, i32 8
  %81 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.i.i, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #5
  %flash_len.i.i = getelementptr inbounds %struct.bl_header, ptr %call7.i.i.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %flash_len.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %flash_len.i.i, align 8
  %rsi_host_intf.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 8
  %85 = ptrtoint ptr %rsi_host_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rsi_host_intf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i129.i = icmp eq i32 %86, 1
  br i1 %cmp.i129.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.end.i130.i
  %write_reg_multiple.i.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %64, i32 0, i32 4
  %87 = ptrtoint ptr %write_reg_multiple.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_reg_multiple.i.i, align 4
  %call6.i.i = call i32 %88(ptr noundef %adapter, i32 noundef 102400, ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then4.i.i.bl_write_header.exit.i_crit_edge, label %if.then4.i.i.if.end48.i_crit_edge

if.then4.i.i.if.end48.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.then4.i.i.bl_write_header.exit.i_crit_edge:    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_write_header.exit.i

if.else.i.i:                                      ; preds = %if.end.i130.i
  %master_access_msword.i.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %64, i32 0, i32 2
  %89 = ptrtoint ptr %master_access_msword.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %master_access_msword.i.i, align 4
  %call12.i.i = call i32 %90(ptr noundef %adapter, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.else.i.i.bl_write_header.exit.i_crit_edge, label %if.end16.i.i

if.else.i.i.bl_write_header.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_write_header.exit.i

if.end16.i.i:                                     ; preds = %if.else.i.i
  %write_reg_multiple17.i.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %64, i32 0, i32 4
  %91 = ptrtoint ptr %write_reg_multiple17.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_reg_multiple17.i.i, align 4
  %call19.i.i = call i32 %92(ptr noundef %adapter, i32 noundef 102400, ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %if.end16.i.i.bl_write_header.exit.i_crit_edge, label %if.end16.i.i.if.end48.i_crit_edge

if.end16.i.i.if.end48.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end16.i.i.bl_write_header.exit.i_crit_edge:    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_write_header.exit.i

bl_write_header.exit.i:                           ; preds = %if.end16.i.i.bl_write_header.exit.i_crit_edge, %if.else.i.i.bl_write_header.exit.i_crit_edge, %if.then4.i.i.bl_write_header.exit.i_crit_edge
  %.str.47.sink.i.i = phi ptr [ @.str.47, %if.then4.i.i.bl_write_header.exit.i_crit_edge ], [ @.str.48, %if.else.i.i.bl_write_header.exit.i_crit_edge ], [ @.str.47, %if.end16.i.i.bl_write_header.exit.i_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.47.sink.i.i, ptr noundef nonnull @__func__.bl_write_header) #5
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  br label %if.then47.i

if.then47.i:                                      ; preds = %bl_write_header.exit.i, %if.end13.i.if.then47.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rsi_load_9113_firmware) #5
  br label %fail.i

if.end48.i:                                       ; preds = %if.end16.i.i.if.end48.i_crit_edge, %if.then4.i.i.if.end48.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  %bl_cmd_timer.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17
  call void @init_timer_key(ptr noundef %bl_cmd_timer.i.i, ptr noundef nonnull @bl_cmd_timeout, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @bl_start_cmd_timer.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %93, 200
  %expires.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 1
  %94 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i.i, ptr %expires.i.i, align 4
  %blcmd_timer_expired.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 18
  %95 = ptrtoint ptr %blcmd_timer_expired.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %blcmd_timer_expired.i.i, align 4
  call void @add_timer(ptr noundef %bl_cmd_timer.i.i) #5
  %call50.i = call fastcc i32 @bl_write_cmd(ptr noundef %adapter, i8 noundef zeroext 75, i8 noundef zeroext -86, ptr noundef nonnull %tmp_regout_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end48.i.if.end60.i_crit_edge, label %if.then52.i

if.end48.i.if.end60.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then52.i:                                      ; preds = %if.end48.i
  %96 = ptrtoint ptr %blcmd_timer_expired.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %blcmd_timer_expired.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 0, i32 1
  %97 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i.not.i.i, label %if.then52.i.bl_stop_cmd_timer.exit.i_crit_edge, label %if.then.i134.i

if.then52.i.bl_stop_cmd_timer.exit.i_crit_edge:   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_stop_cmd_timer.exit.i

if.then.i134.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = call i32 @del_timer(ptr noundef %bl_cmd_timer.i.i) #5
  br label %bl_stop_cmd_timer.exit.i

bl_stop_cmd_timer.exit.i:                         ; preds = %if.then.i134.i, %if.then52.i.bl_stop_cmd_timer.exit.i_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rsi_load_9113_firmware) #5
  %99 = ptrtoint ptr %tmp_regout_val.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %tmp_regout_val.i, align 2
  %101 = and i16 %100, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 204, i16 %101)
  %cmp56.i = icmp eq i16 %101, 204
  br i1 %cmp56.i, label %if.then58.i, label %bl_stop_cmd_timer.exit.i.if.end60.i_crit_edge

bl_stop_cmd_timer.exit.i.if.end60.i_crit_edge:    ; preds = %bl_stop_cmd_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then58.i:                                      ; preds = %bl_stop_cmd_timer.exit.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.29) #5
  %call70.i = call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 66, i8 noundef zeroext 50, ptr noundef nonnull @.str.33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.then58.i.fail.i_crit_edge

if.then58.i.fail.i_crit_edge:                     ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

if.end60.i:                                       ; preds = %bl_stop_cmd_timer.exit.i.if.end60.i_crit_edge, %if.end48.i.if.end60.i_crit_edge
  %102 = ptrtoint ptr %blcmd_timer_expired.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %blcmd_timer_expired.i.i, align 4
  %pprev.i.i.i137.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 0, i32 1
  %103 = ptrtoint ptr %pprev.i.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %pprev.i.i.i137.i, align 4
  %tobool.not.i.i.not.i138.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i.not.i138.i, label %if.end60.i.bl_stop_cmd_timer.exit143.i_crit_edge, label %if.then.i141.i

if.end60.i.bl_stop_cmd_timer.exit143.i_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_stop_cmd_timer.exit143.i

if.then.i141.i:                                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i140.i = call i32 @del_timer(ptr noundef %bl_cmd_timer.i.i) #5
  br label %bl_stop_cmd_timer.exit143.i

bl_stop_cmd_timer.exit143.i:                      ; preds = %if.then.i141.i, %if.end60.i.bl_stop_cmd_timer.exit143.i_crit_edge
  %call62.i = call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 80, i8 noundef zeroext -86, ptr noundef nonnull @.str.30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %bl_stop_cmd_timer.exit143.i.load_image_cmd.i_crit_edge, label %bl_stop_cmd_timer.exit143.i.fail.i_crit_edge

bl_stop_cmd_timer.exit143.i.fail.i_crit_edge:     ; preds = %bl_stop_cmd_timer.exit143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

bl_stop_cmd_timer.exit143.i.load_image_cmd.i_crit_edge: ; preds = %bl_stop_cmd_timer.exit143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %load_image_cmd.i

load_image_cmd.i:                                 ; preds = %if.then78.i, %bl_stop_cmd_timer.exit143.i.load_image_cmd.i_crit_edge
  %call66.i = call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 65, i8 noundef zeroext 49, ptr noundef nonnull @.str.31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %load_image_cmd.i.fail.i_crit_edge

load_image_cmd.i.fail.i_crit_edge:                ; preds = %load_image_cmd.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

if.end69.i:                                       ; preds = %load_image_cmd.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.32) #5
  br label %rsi_load_9113_firmware.exit

if.end73.i:                                       ; preds = %if.then58.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.34) #5
  %105 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fw_entry.i, align 4
  %data74.i = getelementptr inbounds %struct.firmware, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %data74.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data74.i, align 4
  %call75.i = call fastcc i32 @auto_fw_upgrade(ptr noundef %adapter, ptr noundef %108, i32 noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp eq i32 %call75.i, 0
  br i1 %cmp76.i, label %if.then78.i, label %if.end79.i

if.then78.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.35) #5
  br label %load_image_cmd.i

if.end79.i:                                       ; preds = %if.end73.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.36) #5
  %call80.i = call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 82, i8 noundef zeroext -86, ptr noundef nonnull @.str.37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.rsi_load_9113_firmware.exit_crit_edge, label %if.end79.i.fail.i_crit_edge

if.end79.i.fail.i_crit_edge:                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

if.end79.i.rsi_load_9113_firmware.exit_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_load_9113_firmware.exit

fail.i:                                           ; preds = %if.end79.i.fail.i_crit_edge, %load_image_cmd.i.fail.i_crit_edge, %bl_stop_cmd_timer.exit143.i.fail.i_crit_edge, %if.then58.i.fail.i_crit_edge, %if.then47.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.39) #5
  %109 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %110) #5
  br label %if.then2

rsi_load_9113_firmware.exit:                      ; preds = %if.end79.i.rsi_load_9113_firmware.exit_crit_edge, %if.end69.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #5
  %111 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %112) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_regout_val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #5
  br label %sw.epilog

if.then2:                                         ; preds = %fail.i, %if.then11.i, %if.then4.i, %if.end.if.then2_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_regout_val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #5
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rsi_hal_device_init) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @rsi_hal_prepare_fwload(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  %113 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter, align 4
  %host_intf_ops.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 25
  %115 = ptrtoint ptr %host_intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %host_intf_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i22) #5
  %117 = ptrtoint ptr %fw_entry.i22 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i22, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bootload_ds.i) #5
  %block_size1.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 9
  %118 = ptrtoint ptr %block_size1.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %block_size1.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.74) #5
  %rsi_host_intf.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 8
  %120 = ptrtoint ptr %rsi_host_intf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rsi_host_intf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp.i23 = icmp eq i32 %121, 1
  br i1 %cmp.i23, label %if.then.i, label %if.end8.if.end4.i_crit_edge

if.end8.if.end4.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end8
  %call.i24 = tail call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 80, i8 noundef zeroext -86, ptr noundef nonnull @.str.30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp2.i = icmp slt i32 %call.i24, 0
  br i1 %cmp2.i, label %if.then.i.rsi_load_9116_firmware.exit.thread_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i.rsi_load_9116_firmware.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_load_9116_firmware.exit.thread

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end8.if.end4.i_crit_edge
  %master_reg_write.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %116, i32 0, i32 6
  %122 = ptrtoint ptr %master_reg_write.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %master_reg_write.i, align 4
  %call5.i = tail call i32 %123(ptr noundef %adapter, i32 noundef 1093664768, i32 noundef 66060348, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.rsi_load_9116_firmware) #5
  br label %rsi_load_9116_firmware.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %124 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adapter, align 4
  %coex_mode.i25 = getelementptr inbounds %struct.rsi_common, ptr %125, i32 0, i32 45
  %126 = ptrtoint ptr %coex_mode.i25 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %coex_mode.i25, align 2
  %idxprom.i26 = zext i8 %127 to i32
  %arrayidx.i27 = getelementptr [5 x %struct.ta_metadata], ptr @metadata, i32 0, i32 %idxprom.i26
  %128 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i27, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.rsi_load_9116_firmware, ptr noundef %129) #5
  %device.i28 = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 6
  %130 = ptrtoint ptr %device.i28 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device.i28, align 4
  %call11.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i22, ptr noundef %129, ptr noundef %131) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rsi_load_9116_firmware, ptr noundef %129) #5
  br label %rsi_load_9116_firmware.exit.thread

if.end15.i:                                       ; preds = %if.end8.i
  %132 = ptrtoint ptr %fw_entry.i22 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fw_entry.i22, align 4
  %data.i29 = getelementptr inbounds %struct.firmware, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %data.i29 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i29, align 4
  %136 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %133, align 4
  %call16.i = call ptr @kmemdup(ptr noundef %135, i32 noundef %137, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call16.i, null
  %138 = ptrtoint ptr %fw_entry.i22 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fw_entry.i22, align 4
  br i1 %tobool.not.i, label %rsi_load_9116_firmware.exit.thread41, label %if.end18.i

rsi_load_9116_firmware.exit.thread41:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @release_firmware(ptr noundef %139) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bootload_ds.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i22) #5
  br label %if.then11

if.end18.i:                                       ; preds = %if.end15.i
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %141) #5
  %arrayidx20.i = getelementptr i8, ptr %call16.i, i32 8898
  %142 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx20.i, align 1
  %conv.i = zext i8 %143 to i16
  %lmac_ver.i30 = getelementptr inbounds %struct.rsi_common, ptr %114, i32 0, i32 4
  %144 = ptrtoint ptr %lmac_ver.i30 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 %conv.i, ptr %lmac_ver.i30, align 1
  %arrayidx21.i = getelementptr i8, ptr %call16.i, i32 8899
  %145 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %146 to i16
  %minor.i31 = getelementptr inbounds %struct.rsi_common, ptr %114, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %minor.i31 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %conv22.i, ptr %minor.i31, align 1
  %arrayidx24.i = getelementptr i8, ptr %call16.i, i32 8900
  %148 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx24.i, align 1
  %release_num.i32 = getelementptr inbounds %struct.rsi_common, ptr %114, i32 0, i32 4, i32 2
  %150 = ptrtoint ptr %release_num.i32 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %release_num.i32, align 1
  %arrayidx26.i = getelementptr i8, ptr %call16.i, i32 8901
  %151 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx26.i, align 1
  %patch_num.i33 = getelementptr inbounds %struct.rsi_common, ptr %114, i32 0, i32 4, i32 3
  %153 = ptrtoint ptr %patch_num.i33 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %patch_num.i33, align 1
  %arrayidx28.i = getelementptr i8, ptr %call16.i, i32 8902
  %154 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx28.i, align 1
  %ver.i34 = getelementptr inbounds %struct.rsi_common, ptr %114, i32 0, i32 4, i32 4
  %156 = ptrtoint ptr %ver.i34 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %ver.i34, align 1
  %rem.i = and i32 %141, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool31.not.i = icmp eq i32 %rem.i, 0
  %sub.i = sub nuw nsw i32 4, %rem.i
  %add.i = select i1 %tobool31.not.i, i32 0, i32 %sub.i
  %instructions_sz.0.i = add i32 %add.i, %141
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %instructions_sz.0.i) #5
  %157 = ptrtoint ptr %call16.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %call16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23205, i16 %158)
  %cmp36.i = icmp eq i16 %158, 23205
  br i1 %cmp36.i, label %if.then38.i, label %if.else.i

if.then38.i:                                      ; preds = %if.end18.i
  %159 = call ptr @memcpy(ptr %bootload_ds.i, ptr %call16.i, i32 64)
  %offset.i = getelementptr inbounds %struct.bootload_ds, ptr %bootload_ds.i, i32 0, i32 1
  %160 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %offset.i, align 1
  %162 = call i16 @llvm.bswap.i16(i16 %161) #5
  %conv39.i = zext i16 %162 to i32
  %add.ptr.i = getelementptr i8, ptr %call16.i, i32 %conv39.i
  %163 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i, align 4
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef %164) #5
  %load_data_master_write.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %116, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end55.i, %if.then38.i
  %fw_p.0.i = phi ptr [ %add.ptr.i, %if.then38.i ], [ %add.ptr48.i, %if.end55.i ]
  %cnt.0.i = phi i32 [ 0, %if.then38.i ], [ %inc.i, %if.end55.i ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.rsi_load_9116_firmware, i32 noundef %cnt.0.i) #5
  %arrayidx40.i = getelementptr %struct.bootload_ds, ptr %bootload_ds.i, i32 0, i32 3, i32 %cnt.0.i
  %dst_addr.i = getelementptr %struct.bootload_ds, ptr %bootload_ds.i, i32 0, i32 3, i32 %cnt.0.i, i32 1
  %165 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %dst_addr.i, align 1
  %167 = call i32 @llvm.bswap.i32(i32 %166) #5
  %168 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %arrayidx40.i, align 1
  %170 = and i32 %169, -256
  %171 = call i32 @llvm.bswap.i32(i32 %170) #5
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %171, i32 noundef %167) #5
  %172 = ptrtoint ptr %load_data_master_write.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %load_data_master_write.i, align 4
  %call43.i = call i32 %173(ptr noundef %adapter, i32 noundef %167, i32 noundef %171, i16 noundef zeroext %119, ptr noundef %fw_p.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %if.end58.thread.i, label %if.end47.i

if.end58.thread.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.81, i32 noundef %cnt.0.i) #5
  br label %if.then60.i

if.end47.i:                                       ; preds = %do.body.i
  %.mask.i = and i32 %169, 128
  %tobool53.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end47.i.if.end58.i_crit_edge

if.end47.i.if.end58.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.end55.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr48.i = getelementptr i8, ptr %fw_p.0.i, i32 %171
  %inc.i = add i32 %cnt.0.i, 1
  br label %do.body.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %address.i = getelementptr [5 x %struct.ta_metadata], ptr @metadata, i32 0, i32 %idxprom.i26, i32 1
  %174 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %address.i, align 4
  %load_data_master_write56.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %116, i32 0, i32 7
  %176 = ptrtoint ptr %load_data_master_write56.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %load_data_master_write56.i, align 4
  %call57.i = call i32 %177(ptr noundef %adapter, i32 noundef %175, i32 noundef %instructions_sz.0.i, i16 noundef zeroext %119, ptr noundef nonnull %call16.i) #5
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else.i, %if.end47.i.if.end58.i_crit_edge
  %status.0.i35 = phi i32 [ %call57.i, %if.else.i ], [ %call43.i, %if.end47.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i35)
  %tobool59.not.i = icmp eq i32 %status.0.i35, 0
  br i1 %tobool59.not.i, label %if.end62.i, label %if.end58.i.if.then60.i_crit_edge

if.end58.i.if.then60.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.i

if.then60.i:                                      ; preds = %if.end58.i.if.then60.i_crit_edge, %if.end58.thread.i
  %status.0155.i = phi i32 [ %call43.i, %if.end58.thread.i ], [ %status.0.i35, %if.end58.i.if.then60.i_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.rsi_load_9116_firmware, ptr noundef %129) #5
  br label %rsi_load_9116_firmware.exit

if.end62.i:                                       ; preds = %if.end58.i
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.rsi_load_9116_firmware, ptr noundef %129) #5
  %178 = ptrtoint ptr %rsi_host_intf.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rsi_host_intf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp65.i = icmp eq i32 %179, 0
  br i1 %cmp65.i, label %if.then67.i, label %if.else72.i

if.then67.i:                                      ; preds = %if.end62.i
  %ta_reset.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %116, i32 0, i32 9
  %180 = ptrtoint ptr %ta_reset.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ta_reset.i, align 4
  %call68.i = call i32 %181(ptr noundef %adapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.then67.i.rsi_load_9116_firmware.exit_crit_edge, label %if.then70.i

if.then67.i.rsi_load_9116_firmware.exit_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsi_load_9116_firmware.exit

if.then70.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.84) #5
  br label %rsi_load_9116_firmware.exit

if.else72.i:                                      ; preds = %if.end62.i
  %call73.i = call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 74, i8 noundef zeroext -86, ptr noundef nonnull @.str.85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.then76.i, label %if.else77.i

if.then76.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.86) #5
  br label %rsi_load_9116_firmware.exit

if.else77.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.87) #5
  br label %rsi_load_9116_firmware.exit

rsi_load_9116_firmware.exit.thread:               ; preds = %if.then13.i, %if.then7.i, %if.then.i.rsi_load_9116_firmware.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bootload_ds.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i22) #5
  br label %if.then11

rsi_load_9116_firmware.exit:                      ; preds = %if.else77.i, %if.then76.i, %if.then70.i, %if.then67.i.rsi_load_9116_firmware.exit_crit_edge, %if.then60.i
  %status.0154.i = phi i32 [ 0, %if.then70.i ], [ 0, %if.then67.i.rsi_load_9116_firmware.exit_crit_edge ], [ 0, %if.else77.i ], [ 0, %if.then76.i ], [ %status.0155.i, %if.then60.i ]
  call void @kfree(ptr noundef nonnull %call16.i) #5
  %182 = ptrtoint ptr %fw_entry.i22 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fw_entry.i22, align 4
  call void @release_firmware(ptr noundef %183) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bootload_ds.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0154.i)
  %tobool10.not = icmp eq i32 %status.0154.i, 0
  br i1 %tobool10.not, label %rsi_load_9116_firmware.exit.sw.epilog_crit_edge, label %rsi_load_9116_firmware.exit.if.then11_crit_edge

rsi_load_9116_firmware.exit.if.then11_crit_edge:  ; preds = %rsi_load_9116_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

rsi_load_9116_firmware.exit.sw.epilog_crit_edge:  ; preds = %rsi_load_9116_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then11:                                        ; preds = %rsi_load_9116_firmware.exit.if.then11_crit_edge, %rsi_load_9116_firmware.exit.thread, %rsi_load_9116_firmware.exit.thread41
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rsi_hal_device_init) #5
  br label %cleanup

sw.epilog:                                        ; preds = %rsi_load_9116_firmware.exit.sw.epilog_crit_edge, %rsi_load_9113_firmware.exit
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %1, i32 0, i32 28
  %184 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %fsm_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11, %sw.bb4.cleanup_crit_edge, %if.then2, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ 0, %sw.epilog ], [ -22, %if.then2 ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call5, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_hal_prepare_fwload(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %regout_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_intf_ops = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %host_intf_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_intf_ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regout_val) #5
  %2 = ptrtoint ptr %regout_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %regout_val, align 4
  %bl_cmd_timer.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %bl_cmd_timer.i, ptr noundef nonnull @bl_cmd_timeout, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @bl_start_cmd_timer.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %3, 200
  %expires.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %expires.i, align 4
  %blcmd_timer_expired.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 18
  %5 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %blcmd_timer_expired.i, align 4
  tail call void @add_timer(ptr noundef %bl_cmd_timer.i) #5
  %master_reg_read = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %1, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %6 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blcmd_timer_expired.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %while.body, label %while.cond.if.then8_crit_edge

while.cond.if.then8_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

while.body:                                       ; preds = %while.cond
  %8 = ptrtoint ptr %master_reg_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master_reg_read, align 4
  %call1 = call i32 %9(ptr noundef %adapter, i32 noundef 1090846780, ptr noundef nonnull %regout_val, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %blcmd_timer_expired.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.not.i, label %if.then.bl_stop_cmd_timer.exit_crit_edge, label %if.then.i

if.then.bl_stop_cmd_timer.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_stop_cmd_timer.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = call i32 @del_timer(ptr noundef %bl_cmd_timer.i) #5
  br label %bl_stop_cmd_timer.exit

bl_stop_cmd_timer.exit:                           ; preds = %if.then.i, %if.then.bl_stop_cmd_timer.exit_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rsi_hal_prepare_fwload) #5
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #5
  %14 = ptrtoint ptr %regout_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regout_val, align 4
  %shr.mask = and i32 %15, -256
  %cmp3 = icmp eq i32 %shr.mask, 43776
  br i1 %cmp3, label %while.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %if.end
  %16 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %blcmd_timer_expired.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool7.not = icmp eq i8 %.pr, 0
  br i1 %tobool7.not, label %if.end9, label %while.end.if.then8_crit_edge

while.end.if.then8_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %while.end.if.then8_crit_edge, %while.cond.if.then8_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rsi_hal_prepare_fwload) #5
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rsi_hal_prepare_fwload) #5
  br label %cleanup

if.end9:                                          ; preds = %while.end
  %17 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %blcmd_timer_expired.i, align 4
  %pprev.i.i.i31 = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pprev.i.i.i31, align 4
  %tobool.not.i.i.not.i32 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.not.i32, label %if.end9.bl_stop_cmd_timer.exit36_crit_edge, label %if.then.i35

if.end9.bl_stop_cmd_timer.exit36_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_stop_cmd_timer.exit36

if.then.i35:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i34 = call i32 @del_timer(ptr noundef %bl_cmd_timer.i) #5
  br label %bl_stop_cmd_timer.exit36

bl_stop_cmd_timer.exit36:                         ; preds = %if.then.i35, %if.end9.bl_stop_cmd_timer.exit36_crit_edge
  %20 = ptrtoint ptr %regout_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regout_val, align 4
  %and = and i32 %21, 255
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %and) #5
  %master_reg_write = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %master_reg_write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master_reg_write, align 4
  %call11 = call i32 %23(ptr noundef %adapter, i32 noundef 1090846780, i32 noundef -172, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %bl_stop_cmd_timer.exit36
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rsi_hal_prepare_fwload) #5
  br label %cleanup

if.else:                                          ; preds = %bl_stop_cmd_timer.exit36
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %if.then8, %bl_stop_cmd_timer.exit
  %retval.0 = phi i32 [ %call1, %bl_stop_cmd_timer.exit ], [ -110, %if.then8 ], [ %call11, %if.else ], [ %call11, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regout_val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_cmd_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %blcmd_timer_expired = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %blcmd_timer_expired to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %blcmd_timer_expired, align 4
  %call = tail call i32 @del_timer(ptr noundef %t) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext %cmd, i8 noundef zeroext %exp_resp, ptr noundef %str) unnamed_addr #0 align 64 {
entry:
  %regout_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regout_val) #5
  %0 = ptrtoint ptr %regout_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %regout_val, align 2
  %conv = zext i8 %cmd to i32
  %1 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %cmd, label %if.else [
    i8 69, label %entry.if.end_crit_edge
    i8 73, label %entry.if.end_crit_edge37
    i8 79, label %entry.if.end_crit_edge38
  ]

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge37, %entry.if.end_crit_edge38
  %timeout.0 = phi i32 [ 2000, %if.else ], [ 50000, %entry.if.end_crit_edge ], [ 50000, %entry.if.end_crit_edge37 ], [ 50000, %entry.if.end_crit_edge38 ]
  %bl_cmd_timer.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %bl_cmd_timer.i, ptr noundef nonnull @bl_cmd_timeout, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @bl_start_cmd_timer.__key) #5
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout.0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, %call2.i.i
  %expires.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %expires.i, align 4
  %blcmd_timer_expired.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 18
  %4 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %blcmd_timer_expired.i, align 4
  tail call void @add_timer(ptr noundef %bl_cmd_timer.i) #5
  %call9 = call fastcc i32 @bl_write_cmd(ptr noundef %adapter, i8 noundef zeroext %cmd, i8 noundef zeroext %exp_resp, ptr noundef nonnull %regout_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %5 = ptrtoint ptr %blcmd_timer_expired.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %blcmd_timer_expired.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 17, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %7, null
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  br i1 %tobool.not.i.i.not.i, label %if.then12.bl_stop_cmd_timer.exit_crit_edge, label %if.then.i

if.then12.bl_stop_cmd_timer.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %bl_stop_cmd_timer.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 @del_timer(ptr noundef %bl_cmd_timer.i) #5
  br label %bl_stop_cmd_timer.exit

bl_stop_cmd_timer.exit:                           ; preds = %if.then.i, %if.then12.bl_stop_cmd_timer.exit_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.bl_cmd, ptr noundef %str, i32 noundef %conv) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  br i1 %tobool.not.i.i.not.i, label %if.end15.cleanup_crit_edge, label %if.then.i34

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i34:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i33 = tail call i32 @del_timer(ptr noundef %bl_cmd_timer.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %if.end15.cleanup_crit_edge, %bl_stop_cmd_timer.exit
  %retval.0 = phi i32 [ %call9, %bl_stop_cmd_timer.exit ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.then.i34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regout_val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_print_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bl_write_cmd(ptr noundef %adapter, i8 noundef zeroext %cmd, i8 noundef zeroext %exp_resp, ptr nocapture noundef writeonly %cmd_resp) unnamed_addr #0 align 64 {
entry:
  %regin_val = alloca i32, align 4
  %regout_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_intf_ops = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %host_intf_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_intf_ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regin_val) #5
  %2 = ptrtoint ptr %regin_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %regin_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regout_val) #5
  %3 = ptrtoint ptr %regout_val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %regout_val, align 4
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coex_mode, align 2
  %8 = or i8 %7, -96
  %or = zext i8 %8 to i32
  %blcmd_timer_expired = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 18
  %master_reg_read = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %1, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %9 = ptrtoint ptr %blcmd_timer_expired to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %blcmd_timer_expired, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %while.body, label %while.cond.if.then9_crit_edge

while.cond.if.then9_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %regin_val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %regin_val, align 4
  %12 = ptrtoint ptr %master_reg_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_reg_read, align 4
  %call = call i32 %13(ptr noundef %adapter, i32 noundef 1090846772, ptr noundef nonnull %regin_val, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = zext i8 %cmd to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv2) #5
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #5
  %15 = ptrtoint ptr %regin_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regin_val, align 4
  %shr.mask = and i32 %16, -4096
  %cmp3.not = icmp eq i32 %shr.mask, 40960
  br i1 %cmp3.not, label %if.end.while.cond_crit_edge, label %while.end

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %if.end
  %17 = ptrtoint ptr %blcmd_timer_expired to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %blcmd_timer_expired, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool8.not = icmp eq i8 %.pr, 0
  br i1 %tobool8.not, label %if.end11, label %while.end.if.then9_crit_edge

while.end.if.then9_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %while.end.if.then9_crit_edge, %while.cond.if.then9_crit_edge
  %conv10 = zext i8 %cmd to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv10) #5
  br label %cleanup

if.end11:                                         ; preds = %while.end
  %18 = ptrtoint ptr %regin_val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regin_val, align 4
  %conv12 = zext i8 %cmd to i32
  %shl = shl nuw nsw i32 %or, 8
  %or13 = or i32 %shl, %conv12
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef %19, i32 noundef %or13) #5
  %master_reg_write = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %master_reg_write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master_reg_write, align 4
  %call17 = call i32 %21(ptr noundef %adapter, i32 noundef 1090846772, i32 noundef %or13, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.cleanup_crit_edge, label %if.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #5
  %23 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %cmd, label %while.cond30.preheader [
    i8 65, label %if.end21.cleanup_crit_edge
    i8 74, label %if.end21.cleanup_crit_edge146
  ]

if.end21.cleanup_crit_edge146:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond30.preheader:                           ; preds = %if.end21
  %24 = ptrtoint ptr %blcmd_timer_expired to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %blcmd_timer_expired, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not128 = icmp eq i8 %25, 0
  br i1 %tobool32.not128, label %while.cond30.preheader.while.body34_crit_edge, label %while.cond30.preheader.if.then50_crit_edge

while.cond30.preheader.if.then50_crit_edge:       ; preds = %while.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

while.cond30.preheader.while.body34_crit_edge:    ; preds = %while.cond30.preheader
  br label %while.body34

while.cond30:                                     ; preds = %if.end41
  br i1 %tobool49.not, label %while.cond30.while.body34_crit_edge, label %while.cond30.if.then50_crit_edge

while.cond30.if.then50_crit_edge:                 ; preds = %while.cond30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

while.cond30.while.body34_crit_edge:              ; preds = %while.cond30
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body34

while.body34:                                     ; preds = %while.cond30.while.body34_crit_edge, %while.cond30.preheader.while.body34_crit_edge
  %26 = ptrtoint ptr %regout_val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %regout_val, align 4
  %27 = ptrtoint ptr %master_reg_read to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master_reg_read, align 4
  %call36 = call i32 %28(ptr noundef %adapter, i32 noundef 1090846780, ptr noundef nonnull %regout_val, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv12) #5
  br label %cleanup

if.end41:                                         ; preds = %while.body34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #5
  %30 = ptrtoint ptr %regout_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regout_val, align 4
  %shr42.mask = and i32 %31, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 43776, i32 %shr42.mask)
  %cmp43 = icmp eq i32 %shr42.mask, 43776
  %32 = ptrtoint ptr %blcmd_timer_expired to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr118 = load i8, ptr %blcmd_timer_expired, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr118)
  %tobool49.not = icmp eq i8 %.pr118, 0
  br i1 %cmp43, label %while.end47, label %while.cond30

while.end47:                                      ; preds = %if.end41
  br i1 %tobool49.not, label %if.end52, label %while.end47.if.then50_crit_edge

while.end47.if.then50_crit_edge:                  ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

if.then50:                                        ; preds = %while.end47.if.then50_crit_edge, %while.cond30.if.then50_crit_edge, %while.cond30.preheader.if.then50_crit_edge
  %status.1121 = phi i32 [ %call36, %while.end47.if.then50_crit_edge ], [ %call17, %while.cond30.preheader.if.then50_crit_edge ], [ %call36, %while.cond30.if.then50_crit_edge ]
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv12) #5
  br label %cleanup

if.end52:                                         ; preds = %while.end47
  %33 = ptrtoint ptr %regout_val to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %regout_val, align 4
  %35 = ptrtoint ptr %cmd_resp to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %cmd_resp, align 2
  %36 = ptrtoint ptr %master_reg_write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master_reg_write, align 4
  %or61 = or i32 %conv12, -44032
  %call62 = call i32 %37(ptr noundef %adapter, i32 noundef 1090846780, i32 noundef %or61, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv12) #5
  br label %cleanup

if.end67:                                         ; preds = %if.end52
  %38 = lshr i16 %34, 8
  %39 = trunc i16 %38 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #5
  %conv68 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %exp_resp)
  %cmp70.not = icmp eq i8 %39, %exp_resp
  br i1 %cmp70.not, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv68, i32 noundef %conv12) #5
  br label %cleanup

if.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.bl_write_cmd, i32 noundef %conv68, i32 noundef %conv12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then72, %if.then65, %if.then50, %if.then39, %if.end21.cleanup_crit_edge, %if.end21.cleanup_crit_edge146, %if.end11.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -110, %if.then9 ], [ %call36, %if.then39 ], [ %status.1121, %if.then50 ], [ %call62, %if.then65 ], [ -22, %if.then72 ], [ 0, %if.end75 ], [ %call17, %if.end11.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regout_val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regin_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @auto_fw_upgrade(ptr noundef %adapter, ptr noundef %flash_content, i32 noundef %content_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 409600, i32 %content_size)
  %cmp = icmp ugt i32 %content_size, 409600
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.auto_fw_upgrade, i32 noundef 409600) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %flash_content, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 69632, i32 %1)
  %cmp1 = icmp ult i32 %1, 69632
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.auto_fw_upgrade) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rem = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.auto_fw_upgrade) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %add = add i32 %1, %content_size
  %flash_capacity = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 19
  %2 = ptrtoint ptr %flash_capacity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp6 = icmp ugt i32 %add, %3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.auto_fw_upgrade) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %div61 = lshr i32 %content_size, 12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %content_size, i32 noundef %div61) #5
  %rem12 = and i32 %content_size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12)
  %tobool13.not = icmp eq i32 %rem12, 0
  %host_intf_ops.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 25
  %block_size1.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end8
  %index.074 = phi i32 [ 0, %if.end8 ], [ %inc, %if.end24.for.body_crit_edge ]
  %flash_content.addr.073 = phi ptr [ %flash_content, %if.end8 ], [ %add.ptr, %if.end24.for.body_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %index.074) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %index.074, i32 %div61)
  %cmp10.not = icmp eq i32 %index.074, %div61
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef 4096) #5
  br label %if.end16

if.else:                                          ; preds = %for.body
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %rem12) #5
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.66) #5
  br label %for.end

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then11
  %content_size.addr.0 = phi i32 [ 4096, %if.then11 ], [ %rem12, %if.else.if.end16_crit_edge ]
  %rem17 = and i32 %index.074, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem17)
  %tobool18.not.not = icmp eq i32 %rem17, 0
  %4 = ptrtoint ptr %host_intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_intf_ops.i, align 4
  %6 = ptrtoint ptr %block_size1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %block_size1.i, align 4
  %..i = select i1 %tobool18.not.not, i32 106496, i32 102400
  %load_data_master_write.i = getelementptr inbounds %struct.rsi_host_intf_ops, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %load_data_master_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %load_data_master_write.i, align 4
  %call.i = tail call i32 %9(ptr noundef %adapter, i32 noundef %..i, i32 noundef %content_size.addr.0, i16 noundef zeroext %7, ptr noundef %flash_content.addr.073) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ping_pong_write.exit, label %ping_pong_write.exit.thread

ping_pong_write.exit.thread:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %flash_content.addr.073 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flash_content.addr.073, align 1
  %conv6.i = zext i8 %11 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.ping_pong_write, i32 noundef %conv6.i) #5
  br label %if.then23

ping_pong_write.exit:                             ; preds = %if.end16
  %.str.71..str.72.i = select i1 %tobool18.not.not, ptr @.str.72, ptr @.str.71
  %.28.i = select i1 %tobool18.not.not, i8 79, i8 73
  %.27.i = select i1 %tobool18.not.not, i8 73, i8 79
  %call10.i = tail call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext %.28.i, i8 noundef zeroext %.27.i, ptr noundef nonnull %.str.71..str.72.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool22.not = icmp eq i32 %call10.i, 0
  br i1 %tobool22.not, label %if.end24, label %ping_pong_write.exit.if.then23_crit_edge

ping_pong_write.exit.if.then23_crit_edge:         ; preds = %ping_pong_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %ping_pong_write.exit.if.then23_crit_edge, %ping_pong_write.exit.thread
  %retval.0.i64 = phi i32 [ %call.i, %ping_pong_write.exit.thread ], [ %call10.i, %ping_pong_write.exit.if.then23_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.auto_fw_upgrade, i32 noundef %index.074) #5
  br label %cleanup

if.end24:                                         ; preds = %ping_pong_write.exit
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.auto_fw_upgrade, i32 noundef %index.074) #5
  %add.ptr = getelementptr i8, ptr %flash_content.addr.073, i32 %content_size.addr.0
  %inc = add nuw nsw i32 %index.074, 1
  %exitcond = icmp eq i32 %index.074, %div61
  br i1 %exitcond, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %if.then14
  %call25 = tail call fastcc i32 @bl_cmd(ptr noundef %adapter, i8 noundef zeroext 69, i8 noundef zeroext 83, ptr noundef nonnull @.str.69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.70) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end.cleanup_crit_edge, %if.then23, %if.then7, %if.then4, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then4 ], [ -22, %if.then7 ], [ %retval.0.i64, %if.then23 ], [ 0, %if.end28 ], [ %call25, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 72, i32 22}
!2 = !{ptr @__func__.rsi_prepare_mgmt_desc, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 72, i32 55}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 84, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 92, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 173, i32 21}
!10 = !{ptr @__func__.rsi_prepare_data_desc, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 173, i32 49}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 179, i32 21}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 235, i32 22}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 319, i32 21}
!18 = !{ptr @__func__.rsi_send_data_pkt, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 319, i32 50}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 358, i32 5}
!22 = !{ptr @__func__.rsi_send_mgmt_pkt, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 358, i32 41}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 372, i32 4}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 376, i32 22}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 397, i32 22}
!30 = !{ptr @__func__.rsi_send_bt_pkt, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 398, i32 5}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 417, i32 21}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 449, i32 21}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1143, i32 5}
!38 = !{ptr @__func__.rsi_hal_device_init, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1144, i32 5}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1154, i32 5}
!42 = !{ptr @__ksymtab_rsi_hal_device_init, !43, !"__ksymtab_rsi_hal_device_init", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1166, i32 1}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 856, i32 5}
!46 = !{ptr @__func__.rsi_hal_prepare_fwload, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 856, i32 33}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 864, i32 21}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 866, i32 4}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 871, i32 21}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 879, i32 21}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 882, i32 4}
!58 = !{ptr @bl_start_cmd_timer.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 500, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 897, i32 4}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 904, i32 4}
!65 = !{ptr @__func__.rsi_load_9113_firmware, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 905, i32 4}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 911, i32 21}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 916, i32 21}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 921, i32 21}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 940, i32 4}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 950, i32 4}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 954, i32 5}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 960, i32 51}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 966, i32 4}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 969, i32 21}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 973, i32 58}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 977, i32 21}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 981, i32 21}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 984, i32 20}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 987, i32 4}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 992, i32 20}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 997, i32 20}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 630, i32 4}
!101 = !{ptr @__func__.bl_cmd, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 631, i32 4}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 705, i32 4}
!105 = !{ptr @__func__.read_flash_capacity, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 706, i32 4}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 709, i32 21}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 26, i32 3}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 27, i32 3}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 28, i32 3}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 30, i32 3}
!117 = !{ptr @metadata_flash_content, !118, !"metadata_flash_content", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 25, i32 27}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 668, i32 5}
!121 = !{ptr @__func__.bl_write_header, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 669, i32 5}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 677, i32 5}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 535, i32 5}
!127 = !{ptr @__func__.bl_write_cmd, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 536, i32 5}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 545, i32 4}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 551, i32 3}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 572, i32 5}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 582, i32 4}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 595, i32 4}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 603, i32 4}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 608, i32 3}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 760, i32 4}
!145 = !{ptr @__func__.auto_fw_upgrade, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 761, i32 4}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 766, i32 21}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 770, i32 4}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 777, i32 4}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 784, i32 4}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 792, i32 21}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 796, i32 22}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 799, i32 23}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 805, i32 5}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 808, i32 24}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 821, i32 22}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 827, i32 4}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 833, i32 4}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 837, i32 21}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 727, i32 9}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 732, i32 9}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 738, i32 21}
!179 = !{ptr @__func__.ping_pong_write, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 739, i32 4}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1015, i32 21}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1028, i32 21}
!185 = !{ptr @__func__.rsi_load_9116_firmware, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1029, i32 4}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1034, i32 21}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1061, i32 21}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1066, i32 22}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1070, i32 22}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1076, i32 23}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1085, i32 6}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1104, i32 4}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1109, i32 21}
!203 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1114, i32 22}
!205 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1117, i32 17}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1118, i32 23}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 1120, i32 23}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 34, i32 42}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 35, i32 3}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 36, i32 3}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 37, i32 3}
!219 = !{ptr @metadata, !220, !"metadata", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/rsi/rsi_91x_hal.c", i32 34, i32 27}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i8 0, i8 2}
!231 = !{!"auto-init"}
