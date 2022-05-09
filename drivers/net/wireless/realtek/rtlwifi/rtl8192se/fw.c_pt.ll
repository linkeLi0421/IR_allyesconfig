; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rt_firmware = type { ptr, i32, i16, [64000 x i8], [64000 x i8], i32, i32, [90000 x i8], i32, i16 }
%struct.fw_hdr = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.fw_priv }
%struct.fw_priv = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rtl_tx_desc = type { [16 x i32] }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.h2c_set_pwrmode_parm = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.h2c_joinbss_rpt_parm = type { i8, i8, [6 x i8], i16, i16 }

@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"signature:%x, version:%x, size:%x, imemsize:%x, sram size:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92s_download_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rtl8192se: memory for data image is less than IMEM required\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92s_download_fw\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92s_download_fw._entry_ptr = internal global ptr @rtl92s_download_fw._entry, section ".printk_index", align 4
@rtl92s_download_fw._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rtl8192se: memory for data image is less than EMEM required\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl92s_download_fw._entry_ptr.6 = internal global ptr @rtl92s_download_fw._entry.4, section ".printk_index", align 4
@rtl92s_download_fw._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013rtl8192se: Unexpected Download step!!\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92s_download_fw._entry_ptr.9 = internal global ptr @rtl92s_download_fw._entry.7, section ".printk_index", align 4
@rtl92s_download_fw._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013rtl8192se: fail!\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl92s_download_fw._entry_ptr.12 = internal global ptr @rtl92s_download_fw._entry.10, section ".printk_index", align 4
@rtl92s_download_fw._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192se: rtl8192se: firmware fail!\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92s_download_fw._entry_ptr.15 = internal global ptr @rtl92s_download_fw._entry.13, section ".printk_index", align 4
@_rtl92s_firmware_header_map_rftype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8192se: Unknown RF type(%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_rtl92s_firmware_header_map_rftype\00", [61 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_header_map_rftype._entry_ptr = internal global ptr @_rtl92s_firmware_header_map_rftype._entry, section ".printk_index", align 4
@_rtl92s_firmware_downloadcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192se: Size over FIRMWARE_CODE_SIZE!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_rtl92s_firmware_downloadcode\00", [34 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_downloadcode._entry_ptr = internal global ptr @_rtl92s_firmware_downloadcode._entry, section ".printk_index", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LoadStaus(%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_rtl92s_firmware_checkready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192se: FW_STATUS_LOAD_IMEM FAIL CPU, Status=%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_rtl92s_firmware_checkready\00", [36 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry_ptr = internal global ptr @_rtl92s_firmware_checkready._entry, section ".printk_index", align 4
@_rtl92s_firmware_checkready._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192se: FW_STATUS_LOAD_EMEM FAIL CPU, Status=%x\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry_ptr.25 = internal global ptr @_rtl92s_firmware_checkready._entry.23, section ".printk_index", align 4
@_rtl92s_firmware_checkready._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8192se: Enable CPU fail!\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry_ptr.28 = internal global ptr @_rtl92s_firmware_checkready._entry.26, section ".printk_index", align 4
@_rtl92s_firmware_checkready._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rtl8192se: Polling DMEM code done fail ! cpustatus(%#x)\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry_ptr.31 = internal global ptr @_rtl92s_firmware_checkready._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DMEM code download success, cpustatus(%#x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Polling Load Firmware ready, cpustatus(%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.3, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rtl8192se: Polling Load Firmware ready fail ! cpustatus(%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry_ptr.36 = internal global ptr @_rtl92s_firmware_checkready._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current RCR settings(%#x)\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.3, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rtl8192se: Unknown status check!\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92s_firmware_checkready._entry_ptr.40 = internal global ptr @_rtl92s_firmware_checkready._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"loadfw_status(%d), rtstatus(%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IMEM Ready after CPU has refilled\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 340, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 349, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 361, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 395, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 404, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 411, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 94, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 147, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 198, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 214, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 231, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 239, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 254, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 259, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 273, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 279, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 293, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 301, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 307, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 42, i32 4 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @_rtl92s_firmware_checkready._entry, ptr @_rtl92s_firmware_checkready._entry.23, ptr @_rtl92s_firmware_checkready._entry.26, ptr @_rtl92s_firmware_checkready._entry.29, ptr @_rtl92s_firmware_checkready._entry.34, ptr @_rtl92s_firmware_checkready._entry.38, ptr @_rtl92s_firmware_checkready._entry_ptr, ptr @_rtl92s_firmware_checkready._entry_ptr.25, ptr @_rtl92s_firmware_checkready._entry_ptr.28, ptr @_rtl92s_firmware_checkready._entry_ptr.31, ptr @_rtl92s_firmware_checkready._entry_ptr.36, ptr @_rtl92s_firmware_checkready._entry_ptr.40, ptr @_rtl92s_firmware_downloadcode._entry, ptr @_rtl92s_firmware_downloadcode._entry_ptr, ptr @_rtl92s_firmware_header_map_rftype._entry, ptr @_rtl92s_firmware_header_map_rftype._entry_ptr, ptr @rtl92s_download_fw._entry, ptr @rtl92s_download_fw._entry.10, ptr @rtl92s_download_fw._entry.13, ptr @rtl92s_download_fw._entry.4, ptr @rtl92s_download_fw._entry.7, ptr @rtl92s_download_fw._entry_ptr, ptr @rtl92s_download_fw._entry_ptr.12, ptr @rtl92s_download_fw._entry_ptr.15, ptr @rtl92s_download_fw._entry_ptr.6, ptr @rtl92s_download_fw._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_download_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_download_fw._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_download_fw._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_download_fw._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_download_fw._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_header_map_rftype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_downloadcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_checkready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_checkready._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_checkready._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_checkready._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_checkready._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_firmware_checkready._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92s_download_fw(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_fw_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %4 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfirmware, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fwstatus4 = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fwstatus4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fwstatus4, align 4
  %sz_fw_tmpbuffer = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sz_fw_tmpbuffer, ptr %5, align 4
  %version = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %version, align 2
  %10 = and i16 %9, 255
  %firmwareversion = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %firmwareversion to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %firmwareversion, align 4
  %hci_sel = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 7, i32 34
  %12 = ptrtoint ptr %hci_sel to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hci_sel, align 2
  %13 = ptrtoint ptr %sz_fw_tmpbuffer to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sz_fw_tmpbuffer, align 4
  %conv9 = zext i16 %14 to i32
  %conv11 = zext i16 %9 to i32
  %dmem_size = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %dmem_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dmem_size, align 4
  %img_imem_size = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 7, i32 8
  %17 = ptrtoint ptr %img_imem_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %img_imem_size, align 4
  %img_sram_size = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 7, i32 12
  %19 = ptrtoint ptr %img_sram_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %img_sram_size, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %16, i32 noundef %18, i32 noundef %20) #5
  %21 = ptrtoint ptr %img_imem_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %img_imem_size, align 4
  %23 = add i32 %22, -64001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64000, i32 %23)
  %24 = icmp ult i32 %23, -64000
  br i1 %24, label %if.end.cleanup.sink.split_crit_edge, label %if.else

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.rt_firmware, ptr %5, i32 0, i32 7, i32 80
  %fw_imem = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 3
  %25 = call ptr @memcpy(ptr %fw_imem, ptr %add.ptr, i32 %22)
  %26 = ptrtoint ptr %img_imem_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %img_imem_size, align 4
  %fw_imem_len = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %fw_imem_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fw_imem_len, align 4
  %29 = ptrtoint ptr %img_sram_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %img_sram_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %30)
  %cmp26 = icmp ugt i32 %30, 64000
  br i1 %cmp26, label %if.else.cleanup.sink.split_crit_edge, label %if.else34

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else34:                                        ; preds = %if.else
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 %27
  %fw_emem = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 4
  %31 = call ptr @memcpy(ptr %fw_emem, ptr %add.ptr36, i32 %30)
  %32 = ptrtoint ptr %img_sram_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %img_sram_size, align 4
  %fw_emem_len = getelementptr inbounds %struct.rt_firmware, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %fw_emem_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fw_emem_len, align 4
  %35 = ptrtoint ptr %fwstatus4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fwstatus4, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %if.else34.while.body.preheader_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %if.else34.cleanup_crit_edge
  ]

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else34.while.body.preheader_crit_edge:         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

sw.bb.i:                                          ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

sw.bb1.i:                                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

sw.bb2.i:                                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

while.body.preheader:                             ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.else34.while.body.preheader_crit_edge
  %fwstatus.0.in185.ph = phi i32 [ 0, %if.else34.while.body.preheader_crit_edge ], [ 1, %sw.bb.i ], [ 2, %sw.bb1.i ], [ 3, %sw.bb2.i ]
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.preheader
  %fwstatus.0.in185 = phi i32 [ %fwstatus.0.in185.ph, %while.body.preheader ], [ %fwstatus.0.in185.be, %while.body.backedge ]
  %trunc = trunc i32 %fwstatus.0.in185 to i2
  %38 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.43)
  switch i2 %trunc, label %while.body.cleanup.sink.split_crit_edge [
    i2 1, label %while.body.sw.epilog_crit_edge
    i2 -2, label %sw.bb51
    i2 -1, label %sw.bb55
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb51:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb55:                                          ; preds = %while.body
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %45 = icmp ult i8 %44, 3
  br i1 %45, label %switch.lookup, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %44 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv.i.i) #8
  br label %sw.epilog.thread

switch.lookup:                                    ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = zext i8 %44 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 2232849, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %switch.lookup, %do.end.i.i
  %retval.0.i.i = phi i8 [ 34, %do.end.i.i ], [ %switch.masked, %switch.lookup ]
  %rf_config.i = getelementptr inbounds %struct.fw_hdr, ptr %40, i32 0, i32 9, i32 6
  %46 = ptrtoint ptr %rf_config.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %retval.0.i.i, ptr %rf_config.i, align 1
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %add.ptr59 = getelementptr i8, ptr %48, i32 32
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  tail call fastcc void @_rtl92s_fw_set_rqpn(ptr noundef %hw) #5
  br label %do.body1.i.preheader

sw.epilog:                                        ; preds = %sw.bb51, %while.body.sw.epilog_crit_edge
  %fw_emem_len.sink = phi ptr [ %fw_emem_len, %sw.bb51 ], [ %fw_imem_len, %while.body.sw.epilog_crit_edge ]
  %puc_mappedfile.0 = phi ptr [ %fw_emem, %sw.bb51 ], [ %fw_imem, %while.body.sw.epilog_crit_edge ]
  %51 = ptrtoint ptr %fw_emem_len.sink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fw_emem_len.sink, align 4
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  tail call fastcc void @_rtl92s_fw_set_rqpn(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65279, i32 %52)
  %cmp.i = icmp ugt i32 %52, 65279
  br i1 %cmp.i, label %do.end.i, label %sw.epilog.do.body1.i.preheader_crit_edge

sw.epilog.do.body1.i.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i.preheader

do.body1.i.preheader:                             ; preds = %sw.epilog.do.body1.i.preheader_crit_edge, %sw.epilog.thread
  %55 = phi ptr [ %50, %sw.epilog.thread ], [ %54, %sw.epilog.do.body1.i.preheader_crit_edge ]
  %ul_filelength.0208 = phi i32 [ 48, %sw.epilog.thread ], [ %52, %sw.epilog.do.body1.i.preheader_crit_edge ]
  %puc_mappedfile.0207 = phi ptr [ %add.ptr59, %sw.epilog.thread ], [ %puc_mappedfile.0, %sw.epilog.do.body1.i.preheader_crit_edge ]
  br label %do.body1.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %cleanup.sink.split

do.body1.i:                                       ; preds = %if.end18.i.do.body1.i_crit_edge, %do.body1.i.preheader
  %frag_offset.0.i = phi i32 [ %add34.i, %if.end18.i.do.body1.i_crit_edge ], [ 0, %do.body1.i.preheader ]
  %last_inipkt.0.i = phi i8 [ %last_inipkt.0..i, %if.end18.i.do.body1.i_crit_edge ], [ 0, %do.body1.i.preheader ]
  %conv.i = and i32 %frag_offset.0.i, 65535
  %sub.i = sub i32 %ul_filelength.0208, %conv.i
  %56 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 65280) #5
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %56, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.body1.i.cleanup.sink.split_crit_edge, label %if.end18.i

do.body1.i.cleanup.sink.split_crit_edge:          ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end18.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %sub.i)
  %cmp3.i = icmp ugt i32 %sub.i, 65280
  %last_inipkt.0..i = select i1 %cmp3.i, i8 %last_inipkt.0.i, i8 1
  %add.ptr.i = getelementptr i8, ptr %puc_mappedfile.0207, i32 %conv.i
  %call.i.i148 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %56) #5
  %57 = call ptr @memcpy(ptr %call.i.i148, ptr %add.ptr.i, i32 %56)
  %queue_index.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %queue_index.i, align 4
  %cmd_or_init.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 7
  %59 = ptrtoint ptr %cmd_or_init.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %cmd_or_init.i, align 1
  %bf.shl.i = shl i8 %last_inipkt.0..i, 7
  %bf.clear27.i = and i8 %bf.load.i, 63
  %bf.set28.i = or i8 %bf.clear27.i, %bf.shl.i
  store i8 %bf.set28.i, ptr %cmd_or_init.i, align 1
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %arrayidx.i.i = getelementptr %struct.rtl_priv, ptr %61, i32 1, i32 7, i32 7, i32 0, i32 0, i32 1
  %irq_th_lock.i.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 7, i32 3
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i.i) #5
  %idx7.i.i = getelementptr %struct.rtl_priv, ptr %61, i32 1, i32 7, i32 7, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %idx7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx7.i.i, align 4
  %queue.i.i = getelementptr %struct.rtl_priv, ptr %61, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 1
  %qlen.i.i.i = getelementptr %struct.rtl_priv, ptr %61, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 2
  %64 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i = add i32 %65, %63
  %entries.i.i = getelementptr %struct.rtl_priv, ptr %61, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4
  %66 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %entries.i.i, align 4
  %rem.i.i = urem i32 %add.i.i, %67
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i, align 4
  %idxprom.i.i = and i32 %rem.i.i, 255
  %arrayidx10.i.i = getelementptr %struct.rtl_tx_desc, ptr %69, i32 %idxprom.i.i
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i.i, align 4
  %fill_tx_cmddesc.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %73, i32 0, i32 28
  %74 = ptrtoint ptr %fill_tx_cmddesc.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fill_tx_cmddesc.i.i, align 4
  tail call void %75(ptr noundef %hw, ptr noundef %arrayidx10.i.i, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %call.i.i.i) #5
  %prev.i.i.i.i = getelementptr %struct.rtl_priv, ptr %61, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i.i, align 4
  %78 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %queue.i.i, ptr %call.i.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %call.i.i.i, ptr %prev.i.i.i.i, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %call.i.i.i, ptr %77, align 4
  %81 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %82, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i.i, i32 noundef %call4.i.i) #5
  %add34.i = add nuw nsw i32 %56, %conv.i
  %conv37.i = and i32 %add34.i, 65535
  %cmp38.i = icmp ult i32 %conv37.i, %ul_filelength.0208
  br i1 %cmp38.i, label %if.end18.i.do.body1.i_crit_edge, label %do.end40.i

if.end18.i.do.body1.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i

do.end40.i:                                       ; preds = %if.end18.i
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 13, i32 5
  %83 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %84(ptr noundef %55, i32 noundef 1280, i8 noundef zeroext 32) #5
  %cfg.i71.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i71.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i71.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i, label %do.end40.i.if.end74_crit_edge, label %if.then.i.i

do.end40.i.if.end74_crit_edge:                    ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then.i.i:                                      ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 13, i32 9
  %89 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i72.i = tail call zeroext i8 %90(ptr noundef %55, i32 noundef 1280) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then.i.i, %do.end40.i.if.end74_crit_edge
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %pfirmware.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 10, i32 33
  %93 = ptrtoint ptr %pfirmware.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pfirmware.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %fwstatus.0.in185) #5
  %fwstatus.i = getelementptr inbounds %struct.rt_firmware, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %fwstatus.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %fwstatus.0.in185, ptr %fwstatus.i, align 4
  %trunc247 = trunc i32 %fwstatus.0.in185 to i2
  %96 = zext i2 %trunc247 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.44)
  switch i2 %trunc247, label %if.end74.do.end81_crit_edge [
    i2 1, label %do.body.preheader.i
    i2 -2, label %do.body20.preheader.i
    i2 -1, label %do.body56.preheader.i
  ]

if.end74.do.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end81

do.body56.preheader.i:                            ; preds = %if.end74
  %read8_sync.i172.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 13, i32 9
  br label %do.body56.i

do.body20.preheader.i:                            ; preds = %if.end74
  %read8_sync.i170.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 13, i32 9
  br label %do.body20.i

do.body.preheader.i:                              ; preds = %if.end74
  %read8_sync.i.i151 = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 13, i32 9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.body.preheader.i
  %pollingcnt.0.i = phi i16 [ %dec.i, %if.end.i.do.body.i_crit_edge ], [ 1000, %do.body.preheader.i ]
  %97 = ptrtoint ptr %read8_sync.i.i151 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read8_sync.i.i151, align 4
  %call.i.i152 = tail call zeroext i8 %98(ptr noundef %92, i32 noundef 68) #5
  %conv5.i = zext i8 %call.i.i152 to i32
  %and.i = and i32 %conv5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i153 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i153, label %if.end.i, label %do.end.i155

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 1073740) #5
  %dec.i = add nsw i16 %pollingcnt.0.i, -1
  %tobool6.not.i = icmp eq i16 %pollingcnt.0.i, 0
  br i1 %tobool6.not.i, label %if.end.i.do.end15.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end.i155:                                      ; preds = %do.body.i
  %and8.i = and i32 %conv5.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %pollingcnt.0.i)
  %cmp.i154 = icmp slt i16 %pollingcnt.0.i, 1
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp.i154
  br i1 %or.cond.i, label %do.end.i155.do.end15.i_crit_edge, label %do.end.i155.if.end84_crit_edge

do.end.i155.if.end84_crit_edge:                   ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end.i155.do.end15.i_crit_edge:                 ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i155.do.end15.i_crit_edge, %if.end.i.do.end15.i_crit_edge
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv5.i) #8
  br label %if.end84

do.body20.i:                                      ; preds = %if.end26.i.do.body20.i_crit_edge, %do.body20.preheader.i
  %pollingcnt.2.i = phi i16 [ %dec28.i, %if.end26.i.do.body20.i_crit_edge ], [ 1000, %do.body20.preheader.i ]
  %100 = ptrtoint ptr %read8_sync.i170.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read8_sync.i170.i, align 4
  %call.i171.i = tail call zeroext i8 %101(ptr noundef %92, i32 noundef 68) #5
  %conv22.i = zext i8 %call.i171.i to i32
  %and23.i = and i32 %conv22.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %do.end30.i

if.end26.i:                                       ; preds = %do.body20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 1073740) #5
  %dec28.i = add nsw i16 %pollingcnt.2.i, -1
  %tobool29.not.i = icmp eq i16 %pollingcnt.2.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.do.end41.i_crit_edge, label %if.end26.i.do.body20.i_crit_edge

if.end26.i.do.body20.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20.i

if.end26.i.do.end41.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41.i

do.end30.i:                                       ; preds = %do.body20.i
  %and32.i = and i32 %conv22.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %pollingcnt.2.i)
  %cmp36.i = icmp slt i16 %pollingcnt.2.i, 1
  %or.cond167.i = select i1 %tobool33.not.i, i1 true, i1 %cmp36.i
  br i1 %or.cond167.i, label %do.end30.i.do.end41.i_crit_edge, label %if.end45.i

do.end30.i.do.end41.i_crit_edge:                  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end30.i.do.end41.i_crit_edge, %if.end26.i.do.end41.i_crit_edge
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv22.i) #8
  br label %if.end84

if.end45.i:                                       ; preds = %do.end30.i
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 8
  tail call fastcc void @_rtl92s_fw_set_rqpn(ptr noundef %hw) #5
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 13, i32 9
  %105 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i156 = tail call zeroext i8 %106(ptr noundef %104, i32 noundef 8) #5
  %107 = or i8 %call.i.i.i156, 4
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 13, i32 5
  %108 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %109(ptr noundef %104, i32 noundef 8, i8 noundef zeroext %107) #5
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 32
  %110 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %write_readback.i.i.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i.i.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i.i.i, label %if.end45.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.end45.i.rtl_write_byte.exit.i.i_crit_edge:     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i26.i.i = tail call zeroext i8 %115(ptr noundef %104, i32 noundef 8) #5
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end45.i.rtl_write_byte.exit.i.i_crit_edge
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 13, i32 10
  %116 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i27.i.i = tail call zeroext i16 %117(ptr noundef %104, i32 noundef 2) #5
  %118 = or i16 %call.i27.i.i, 1024
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 13, i32 6
  %119 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %120(ptr noundef %104, i32 noundef 2, i16 noundef zeroext %118) #5
  %121 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i29.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %write_readback.i29.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %write_readback.i29.i.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i30.i.i = icmp eq i8 %124, 0
  br i1 %tobool.not.i30.i.i, label %rtl_write_byte.exit.i.i.do.body.i.i.preheader_crit_edge, label %if.then.i33.i.i

rtl_write_byte.exit.i.i.do.body.i.i.preheader_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.preheader

if.then.i33.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i32.i.i = tail call zeroext i16 %126(ptr noundef %104, i32 noundef 2) #5
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.then.i33.i.i, %rtl_write_byte.exit.i.i.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %ichecktime.0.i.i = phi i32 [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ 200, %do.body.i.i.preheader ]
  %127 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i35.i.i = tail call zeroext i8 %128(ptr noundef %104, i32 noundef 68) #5
  %129 = and i8 %call.i35.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i157 = icmp eq i8 %129, 0
  br i1 %tobool.not.i.i157, label %if.end.i.i, label %_rtl92s_firmware_enable_cpu.exit.thread.i

_rtl92s_firmware_enable_cpu.exit.thread.i:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %104, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.42) #5
  br label %if.end84

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 21474800) #5
  %dec.i.i = add nsw i32 %ichecktime.0.i.i, -1
  %tobool8.not.i.i = icmp eq i32 %ichecktime.0.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i.do.end81_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.end.i.i.do.end81_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end81

do.body56.i:                                      ; preds = %if.end62.i.do.body56.i_crit_edge, %do.body56.preheader.i
  %pollingcnt.4.i = phi i16 [ %dec64.i, %if.end62.i.do.body56.i_crit_edge ], [ 1000, %do.body56.preheader.i ]
  %131 = ptrtoint ptr %read8_sync.i172.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i172.i, align 4
  %call.i173.i = tail call zeroext i8 %132(ptr noundef %92, i32 noundef 68) #5
  %conv58.i = zext i8 %call.i173.i to i32
  %and59.i = and i32 %conv58.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %do.end66.i

if.end62.i:                                       ; preds = %do.body56.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 1073740) #5
  %dec64.i = add nsw i16 %pollingcnt.4.i, -1
  %tobool65.not.i = icmp eq i16 %pollingcnt.4.i, 0
  br i1 %tobool65.not.i, label %if.end62.i.do.end77.i_crit_edge, label %if.end62.i.do.body56.i_crit_edge

if.end62.i.do.body56.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56.i

if.end62.i.do.end77.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end77.i

do.end66.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %pollingcnt.4.i)
  %cmp72.i = icmp slt i16 %pollingcnt.4.i, 1
  br i1 %cmp72.i, label %do.end66.i.do.end77.i_crit_edge, label %if.end81.i

do.end66.i.do.end77.i_crit_edge:                  ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end77.i

do.end77.i:                                       ; preds = %do.end66.i.do.end77.i_crit_edge, %if.end62.i.do.end77.i_crit_edge
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv58.i) #8
  br label %if.end84

if.end81.i:                                       ; preds = %do.end66.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv58.i) #5
  br label %do.body83.i

do.body83.i:                                      ; preds = %if.end89.i.do.body83.i_crit_edge, %if.end81.i
  %pollingcnt.6.i = phi i16 [ 2000, %if.end81.i ], [ %dec91.i, %if.end89.i.do.body83.i_crit_edge ]
  %134 = ptrtoint ptr %read8_sync.i172.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read8_sync.i172.i, align 4
  %call.i175.i = tail call zeroext i8 %135(ptr noundef %92, i32 noundef 68) #5
  %conv85.i = zext i8 %call.i175.i to i32
  %and86.i = and i32 %conv85.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %do.body83.i.do.end93.i_crit_edge

do.body83.i.do.end93.i_crit_edge:                 ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end93.i

if.end89.i:                                       ; preds = %do.body83.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 8589920) #5
  %dec91.i = add nsw i16 %pollingcnt.6.i, -1
  %tobool92.not.i = icmp eq i16 %pollingcnt.6.i, 0
  br i1 %tobool92.not.i, label %if.end89.i.do.end93.i_crit_edge, label %if.end89.i.do.body83.i_crit_edge

if.end89.i.do.body83.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body83.i

if.end89.i.do.end93.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end93.i

do.end93.i:                                       ; preds = %if.end89.i.do.end93.i_crit_edge, %do.body83.i.do.end93.i_crit_edge
  %pollingcnt.7.i = phi i16 [ %pollingcnt.6.i, %do.body83.i.do.end93.i_crit_edge ], [ -1, %if.end89.i.do.end93.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv85.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i175.i)
  %cmp97.not.i = icmp ne i8 %call.i175.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %pollingcnt.7.i)
  %cmp101.i = icmp slt i16 %pollingcnt.7.i, 1
  %or.cond169.i = select i1 %cmp97.not.i, i1 true, i1 %cmp101.i
  br i1 %or.cond169.i, label %do.end106.i, label %if.end110.i

do.end106.i:                                      ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv85.i) #8
  br label %if.end84

if.end110.i:                                      ; preds = %do.end93.i
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 13, i32 11
  %137 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i176.i = tail call i32 %138(ptr noundef %92, i32 noundef 68) #5
  %and112.i = and i32 %call.i176.i, -524289
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 13, i32 7
  %139 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %140(ptr noundef %92, i32 noundef 68, i32 noundef %and112.i) #5
  %cfg.i.i158 = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 32
  %141 = ptrtoint ptr %cfg.i.i158 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg.i.i158, align 8
  %write_readback.i.i159 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %write_readback.i.i159 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %write_readback.i.i159, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i177.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i177.i, label %if.end110.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i180.i

if.end110.i.rtl_write_dword.exit.i_crit_edge:     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit.i

if.then.i180.i:                                   ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #7
  %145 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i179.i = tail call i32 %146(ptr noundef %92, i32 noundef 68) #5
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i180.i, %if.end110.i.rtl_write_dword.exit.i_crit_edge
  %147 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i183.i = tail call i32 %148(ptr noundef %92, i32 noundef 72) #5
  %or115.i = or i32 %call.i183.i, -2147287040
  %149 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %150(ptr noundef %92, i32 noundef 72, i32 noundef %or115.i) #5
  %151 = ptrtoint ptr %cfg.i.i158 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i.i158, align 8
  %write_readback.i186.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %write_readback.i186.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %write_readback.i186.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i187.i = icmp eq i8 %154, 0
  br i1 %tobool.not.i187.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit192.i_crit_edge, label %if.then.i190.i

rtl_write_dword.exit.i.rtl_write_dword.exit192.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit192.i

if.then.i190.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i189.i = tail call i32 %156(ptr noundef %92, i32 noundef 72) #5
  br label %rtl_write_dword.exit192.i

rtl_write_dword.exit192.i:                        ; preds = %if.then.i190.i, %rtl_write_dword.exit.i.rtl_write_dword.exit192.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %call.i183.i) #5
  %write8_async.i.i160 = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 13, i32 5
  %157 = ptrtoint ptr %write8_async.i.i160 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write8_async.i.i160, align 4
  tail call void %158(ptr noundef %92, i32 noundef 67, i8 noundef zeroext 0) #5
  %159 = ptrtoint ptr %cfg.i.i158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cfg.i.i158, align 8
  %write_readback.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %write_readback.i194.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %write_readback.i194.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.i195.i = icmp eq i8 %162, 0
  br i1 %tobool.not.i195.i, label %rtl_write_dword.exit192.i.if.end84_crit_edge, label %if.then.i198.i

rtl_write_dword.exit192.i.if.end84_crit_edge:     ; preds = %rtl_write_dword.exit192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then.i198.i:                                   ; preds = %rtl_write_dword.exit192.i
  call void @__sanitizer_cov_trace_pc() #7
  %163 = ptrtoint ptr %read8_sync.i172.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read8_sync.i172.i, align 4
  %call.i197.i = tail call zeroext i8 %164(ptr noundef %92, i32 noundef 67) #5
  br label %if.end84

do.end81:                                         ; preds = %if.end.i.i.do.end81_crit_edge, %if.end74.do.end81_crit_edge
  %.str.39.sink = phi ptr [ @.str.27, %if.end.i.i.do.end81_crit_edge ], [ @.str.39, %if.end74.do.end81_crit_edge ]
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %fwstatus.0.in185, i32 noundef 0) #5
  br label %cleanup.sink.split

if.end84:                                         ; preds = %if.then.i198.i, %rtl_write_dword.exit192.i.if.end84_crit_edge, %do.end106.i, %do.end77.i, %_rtl92s_firmware_enable_cpu.exit.thread.i, %do.end41.i, %do.end15.i, %do.end.i155.if.end84_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %fwstatus.0.in185, i32 noundef 1) #5
  %165 = ptrtoint ptr %fwstatus4 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fwstatus4, align 4
  %167 = zext i32 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %166, label %if.end84.while.body.backedge_crit_edge [
    i32 0, label %sw.bb.i161
    i32 1, label %sw.bb1.i162
    i32 2, label %sw.bb2.i163
    i32 3, label %if.end84.cleanup_crit_edge
  ]

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84.while.body.backedge_crit_edge:           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

while.body.backedge:                              ; preds = %sw.bb2.i163, %sw.bb1.i162, %sw.bb.i161, %if.end84.while.body.backedge_crit_edge
  %fwstatus.0.in185.be = phi i32 [ 0, %if.end84.while.body.backedge_crit_edge ], [ 1, %sw.bb.i161 ], [ 2, %sw.bb1.i162 ], [ 3, %sw.bb2.i163 ]
  br label %while.body

sw.bb.i161:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

sw.bb1.i162:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

sw.bb2.i163:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

cleanup.sink.split:                               ; preds = %do.end81, %do.body1.i.cleanup.sink.split_crit_edge, %do.end.i, %while.body.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.14, %do.end81 ], [ @.str.1, %if.end.cleanup.sink.split_crit_edge ], [ @.str.5, %if.else.cleanup.sink.split_crit_edge ], [ @.str.11, %do.end.i ], [ @.str.11, %do.body1.i.cleanup.sink.split_crit_edge ], [ @.str.8, %while.body.cleanup.sink.split_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.1.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end84.cleanup_crit_edge, %if.else34.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.else34.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 1, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %pwrmode = alloca %struct.h2c_set_pwrmode_parm, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %pwrmode) #5
  %2 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 1
  %3 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 7
  %4 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 8
  %5 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 9
  %6 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 10
  %7 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 11
  %8 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 12
  %9 = getelementptr inbounds i8, ptr %pwrmode, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %9, align 2
  %11 = ptrtoint ptr %pwrmode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %mode, ptr %pwrmode, align 2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %3, align 1
  %vif = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 7
  %13 = call ptr @memset(ptr %2, i32 0, i32 5)
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vif, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %15, i32 0, i32 1, i32 19
  %16 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %beacon_int, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #5
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %4, align 2
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %5, align 2
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %21 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_max_lps_awakeintvl, align 2
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %6, align 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %7, align 2
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %8, align 1
  %26 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %mode, label %entry.if.else55_crit_edge [
    i8 1, label %entry.if.end21_crit_edge
    i8 2, label %if.then12
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

entry.if.else55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %15, i32 0, i32 1, i32 18
  %27 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dtim_period, align 8
  %conv19 = zext i8 %28 to i16
  %mul = mul i16 %17, %conv19
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %entry.if.end21_crit_edge
  %max_wakeup_period.0 = phi i16 [ %mul, %if.then12 ], [ %17, %entry.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 499, i16 %max_wakeup_period.0)
  %cmp23 = icmp ugt i16 %max_wakeup_period.0, 499
  br i1 %cmp23, label %if.end21.if.end60_crit_edge, label %if.else26

if.end21.if.end60_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 299, i16 %max_wakeup_period.0)
  %cmp28 = icmp ugt i16 %max_wakeup_period.0, 299
  br i1 %cmp28, label %if.else26.if.end60_crit_edge, label %if.else35

if.else26.if.end60_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.else35:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp2(i16 199, i16 %max_wakeup_period.0)
  %cmp37 = icmp ugt i16 %max_wakeup_period.0, 199
  br i1 %cmp37, label %if.else35.if.end60_crit_edge, label %if.else45

if.else35.if.end60_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.else45:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %max_wakeup_period.0)
  %cmp47 = icmp ugt i16 %max_wakeup_period.0, 19
  br i1 %cmp47, label %if.else45.if.end60_crit_edge, label %if.else45.if.else55_crit_edge

if.else45.if.else55_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

if.else45.if.end60_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.else55:                                        ; preds = %if.else45.if.else55_crit_edge, %entry.if.else55_crit_edge
  br label %if.end60

if.end60:                                         ; preds = %if.else55, %if.else45.if.end60_crit_edge, %if.else35.if.end60_crit_edge, %if.else26.if.end60_crit_edge, %if.end21.if.end60_crit_edge
  %.sink = phi i8 [ 1, %if.else55 ], [ 1, %if.end21.if.end60_crit_edge ], [ 2, %if.else26.if.end60_crit_edge ], [ 3, %if.else35.if.end60_crit_edge ], [ 5, %if.else45.if.end60_crit_edge ]
  %29 = getelementptr inbounds %struct.h2c_set_pwrmode_parm, ptr %pwrmode, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %29, align 2
  call fastcc void @_rtl92s_firmware_set_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef nonnull %pwrmode)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %pwrmode) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92s_firmware_set_h2c_cmd(ptr noundef %hw, i8 noundef zeroext %h2c_cmd, ptr noundef %pcmd_buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %h2c_cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %h2c_cmd, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %element_id.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 9472, %sw.bb3 ], [ 9216, %sw.bb ]
  %cmd_len.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 12, %sw.bb3 ], [ 14, %sw.bb ]
  %3 = add nuw nsw i32 %cmd_len.0, 15
  %add1.i = and i32 %3, 24
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1.i, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %_rtl92s_fill_h2c_cmd.exit

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

_rtl92s_fill_h2c_cmd.exit:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %queue_index = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %queue_index, align 4
  %cmd_or_init = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %cmd_or_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %cmd_or_init, align 1
  %bf.set = and i8 %bf.load, 63
  %bf.clear9 = or i8 %bf.set, 64
  store i8 %bf.clear9, ptr %cmd_or_init, align 1
  %h2c_txcmd_seq = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 40
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #5
  %6 = call ptr @memset(ptr %call.i, i32 0, i32 %add1.i)
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i, align 4
  %and.i.i = and i32 %8, 255
  %9 = shl nuw nsw i32 %cmd_len.0, 24
  %or.i.i = or i32 %and.i.i, %9
  %or.i17.i = or i32 %or.i.i, %element_id.0
  store i32 %or.i17.i, ptr %call.i, align 4
  %10 = ptrtoint ptr %h2c_txcmd_seq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h2c_txcmd_seq, align 1
  %12 = and i8 %11, 127
  store i8 %12, ptr %h2c_txcmd_seq, align 1
  %13 = load i32, ptr %call.i, align 4
  %and.i29.i = and i32 %13, -128
  %and528.i.i31.i = zext i8 %12 to i32
  %or.i34.i = or i32 %and.i29.i, %and528.i.i31.i
  store i32 %or.i34.i, ptr %call.i, align 4
  %14 = load i8, ptr %h2c_txcmd_seq, align 1
  %inc.i = add i8 %14, 1
  store i8 %inc.i, ptr %h2c_txcmd_seq, align 1
  %add.ptr19.i = getelementptr i8, ptr %call.i, i32 8
  %15 = call ptr @memcpy(ptr %add.ptr19.i, ptr %pcmd_buffer, i32 %cmd_len.0)
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %17, i32 1, i32 7, i32 7, i32 0, i32 0, i32 1
  %irq_th_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 7, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i) #5
  %idx7.i = getelementptr %struct.rtl_priv, ptr %17, i32 1, i32 7, i32 7, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %idx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx7.i, align 4
  %queue.i = getelementptr %struct.rtl_priv, ptr %17, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 1
  %qlen.i.i = getelementptr %struct.rtl_priv, ptr %17, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i, align 4
  %add.i = add i32 %21, %19
  %entries.i = getelementptr %struct.rtl_priv, ptr %17, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entries.i, align 4
  %rem.i = urem i32 %add.i, %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %idxprom.i = and i32 %rem.i, 255
  %arrayidx10.i = getelementptr %struct.rtl_tx_desc, ptr %25, i32 %idxprom.i
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %fill_tx_cmddesc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %fill_tx_cmddesc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fill_tx_cmddesc.i, align 4
  tail call void %31(ptr noundef %hw, ptr noundef %arrayidx10.i, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %call.i.i) #5
  %prev.i.i.i = getelementptr %struct.rtl_priv, ptr %17, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %queue.i, ptr %call.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call.i.i, ptr %33, align 4
  %37 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i, i32 noundef %call4.i) #5
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %tx_polling = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 40
  %43 = ptrtoint ptr %tx_polling to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_polling, align 4
  tail call void %44(ptr noundef %hw, i8 noundef zeroext 5) #5
  br label %cleanup

cleanup:                                          ; preds = %_rtl92s_fill_h2c_cmd.exit, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_set_fw_joinbss_report_cmd(ptr noundef %hw, i8 noundef zeroext %mstatus, i8 noundef zeroext %ps_qosinfo) local_unnamed_addr #0 align 64 {
entry:
  %joinbss_rpt = alloca %struct.h2c_joinbss_rpt_parm, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %joinbss_rpt) #5
  %2 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 3
  %10 = getelementptr inbounds %struct.h2c_joinbss_rpt_parm, ptr %joinbss_rpt, i32 0, i32 4
  %11 = ptrtoint ptr %joinbss_rpt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %mstatus, ptr %joinbss_rpt, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %ps_qosinfo, ptr %2, align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %13 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bssid, align 2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %3, align 2
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %4, align 1
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8, align 2
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %5, align 2
  %arrayidx12 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12, align 1
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %6, align 1
  %arrayidx16 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16, align 2
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %7, align 2
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20, align 1
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %8, align 1
  %vif = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 7
  %31 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vif, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %32, i32 0, i32 1, i32 19
  %33 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %beacon_int, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #5
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %9, align 2
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %37 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %assoc_id, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #5
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %10, align 2
  call fastcc void @_rtl92s_firmware_set_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 1, ptr noundef nonnull %joinbss_rpt)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %joinbss_rpt) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92s_fw_set_rqpn(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 160, i32 noundef -1) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 160) #5
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 164, i32 noundef -1) #5
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i6, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i7 = icmp eq i8 %15, 0
  br i1 %tobool.not.i7, label %rtl_write_dword.exit.rtl_write_dword.exit11_crit_edge, label %if.then.i10

rtl_write_dword.exit.rtl_write_dword.exit11_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit11

if.then.i10:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i8, align 4
  %call.i9 = tail call i32 %17(ptr noundef %1, i32 noundef 164) #5
  br label %rtl_write_dword.exit11

rtl_write_dword.exit11:                           ; preds = %if.then.i10, %rtl_write_dword.exit.rtl_write_dword.exit11_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 168, i8 noundef zeroext -1) #5
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i13 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i13, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i14 = icmp eq i8 %23, 0
  br i1 %tobool.not.i14, label %rtl_write_dword.exit11.rtl_write_byte.exit_crit_edge, label %if.then.i16

rtl_write_dword.exit11.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit11
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i16:                                      ; preds = %rtl_write_dword.exit11
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i15 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 168) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i16, %rtl_write_dword.exit11.rtl_write_byte.exit_crit_edge
  %26 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 171, i8 noundef zeroext -128) #5
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i19 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i19, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i20 = icmp eq i8 %31, 0
  br i1 %tobool.not.i20, label %rtl_write_byte.exit.rtl_write_byte.exit24_crit_edge, label %if.then.i23

rtl_write_byte.exit.rtl_write_byte.exit24_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit24

if.then.i23:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %32 = ptrtoint ptr %read8_sync.i21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i21, align 4
  %call.i22 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 171) #5
  br label %rtl_write_byte.exit24

rtl_write_byte.exit24:                            ; preds = %if.then.i23, %rtl_write_byte.exit.rtl_write_byte.exit24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 340, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 349, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtl92s_download_fw._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtl92s_download_fw._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 361, i32 3}
!10 = !{ptr @rtl92s_download_fw._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtl92s_download_fw._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 395, i32 4}
!14 = !{ptr @rtl92s_download_fw._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl92s_download_fw._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 404, i32 4}
!18 = !{ptr @rtl92s_download_fw._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl92s_download_fw._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 411, i32 4}
!22 = !{ptr @rtl92s_download_fw._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtl92s_download_fw._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 94, i32 3}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_rtl92s_firmware_header_map_rftype._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @_rtl92s_firmware_header_map_rftype._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 147, i32 3}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @_rtl92s_firmware_downloadcode._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @_rtl92s_firmware_downloadcode._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 198, i32 2}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 214, i32 4}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @_rtl92s_firmware_checkready._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @_rtl92s_firmware_checkready._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 231, i32 4}
!43 = !{ptr @_rtl92s_firmware_checkready._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @_rtl92s_firmware_checkready._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 239, i32 4}
!47 = !{ptr @_rtl92s_firmware_checkready._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @_rtl92s_firmware_checkready._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 254, i32 4}
!51 = !{ptr @_rtl92s_firmware_checkready._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @_rtl92s_firmware_checkready._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 259, i32 3}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 273, i32 3}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 279, i32 4}
!59 = !{ptr @_rtl92s_firmware_checkready._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @_rtl92s_firmware_checkready._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 293, i32 3}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 301, i32 3}
!65 = !{ptr @_rtl92s_firmware_checkready._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @_rtl92s_firmware_checkready._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 307, i32 2}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/fw.c", i32 42, i32 4}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
