; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/xmit.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_tx_legacy_rate_phy_ctl_entry = type { i8, i16, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.150, [32 x i8] }
%struct.anon.150 = type { i64 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.138, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.b43_phy = type { ptr, %struct.anon.136, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.136 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.138 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.132, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.132 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.131, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.131 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.b43_txhdr = type <{ i32, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x i8], [6 x i8], i16, %struct.b43_plcp_hdr6, i16, %struct.b43_plcp_hdr6, i16, i16, i16, i32, %union.anon.154 }>
%struct.b43_plcp_hdr6 = type { %union.anon.153 }
%union.anon.153 = type <{ i32, [2 x i8] }>
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { i16, i16, [2 x i8], i16, i16, i16, i16, i16, i16, %struct.b43_plcp_hdr6, [16 x i8], [2 x i8], %struct.b43_plcp_hdr6 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.b43_rxhdr_fw4 = type { i16, [2 x i8], i16, %union.anon.158, %union.anon.161, %union.anon.164, %union.anon.166 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { i8, i8 }
%union.anon.161 = type { i16 }
%union.anon.164 = type { i16 }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { i16, i16, i32, i16, i16 }
%struct.anon.168 = type { i32, i16, i16 }
%struct.anon.162 = type { [1 x i8], i8 }
%struct.anon.165 = type { i8, i8 }
%struct.b43_bus_dev = type { i32, %union.anon.0, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon.0 = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.103, %struct.anon.104, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.103 = type { i8, i8, i8, i8 }
%struct.anon.104 = type { %struct.anon.105, %struct.anon.106 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.anon.106 = type { i8, i8, i8, i8, i8 }
%struct.b43_phy_g = type { i8, i8, i8, i8, %struct.anon.137, [2 x i16], [2 x i16], ptr, i8, i32, i32, i8, %struct.b43_bbatt, %struct.b43_rfatt, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i32, [26 x i32], [2 x i16], i32, [64 x i8], i16, i16, i16, i32 }
%struct.anon.137 = type { i8, i16, i16 }
%struct.b43_bbatt = type { i8 }
%struct.b43_rfatt = type { i8, i8 }
%struct.b43_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/broadcom/b43/xmit.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: Packet size underrun (1)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: Packet size underrun (2)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: Packet size underrun (3)\0A\00", [34 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@b43_tx_legacy_rate_phy_ctl = internal constant { [12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], [56 x i8] } { [12 x %struct.b43_tx_legacy_rate_phy_ctl_entry] [%struct.b43_tx_legacy_rate_phy_ctl_entry { i8 2, i16 0, i16 0 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 4, i16 0, i16 1 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 11, i16 0, i16 2 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 22, i16 0, i16 3 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 12, i16 0, i16 0 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 18, i16 512, i16 0 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 24, i16 0, i16 2048 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 36, i16 512, i16 2048 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 48, i16 0, i16 4096 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 72, i16 512, i16 4096 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 96, i16 256, i16 6144 }, %struct.b43_tx_legacy_rate_phy_ctl_entry { i8 108, i16 512, i16 6144 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 8, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.6 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 8, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [10 x i64] [i64 8, i64 8, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 8272, i64 8288]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 32, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 15]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 108, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 682, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 689, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 711, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2737, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"b43_tx_legacy_rate_phy_ctl\00", align 1
@___asan_gen_.49 = private constant [44 x i8] c"../drivers/net/wireless/broadcom/b43/xmit.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 22, i32 54 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @b43_tx_legacy_rate_phy_ctl], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tx_legacy_rate_phy_ctl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @b43_plcp_get_ratecode_cck(i8 noundef zeroext %bitrate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bitrate, label %do.end [
    i8 2, label %entry.return_crit_edge
    i8 4, label %sw.bb1
    i8 11, label %sw.bb2
    i8 22, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %do.end ], [ 110, %sw.bb3 ], [ 55, %sw.bb2 ], [ 20, %sw.bb1 ], [ 10, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @b43_plcp_get_ratecode_ofdm(i8 noundef zeroext %bitrate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %bitrate, label %do.end [
    i8 12, label %entry.return_crit_edge
    i8 18, label %sw.bb1
    i8 24, label %sw.bb2
    i8 36, label %sw.bb3
    i8 48, label %sw.bb4
    i8 72, label %sw.bb5
    i8 96, label %sw.bb6
    i8 108, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %do.end ], [ 12, %sw.bb7 ], [ 8, %sw.bb6 ], [ 13, %sw.bb5 ], [ 9, %sw.bb4 ], [ 14, %sw.bb3 ], [ 10, %sw.bb2 ], [ 15, %sw.bb1 ], [ 11, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_generate_plcp_hdr(ptr nocapture noundef %plcp, i16 noundef zeroext %octets, i8 noundef zeroext %bitrate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %bitrate, label %do.end.i [
    i8 2, label %entry.if.else_crit_edge
    i8 4, label %entry.if.else_crit_edge78
    i8 11, label %entry.if.else_crit_edge79
    i8 22, label %entry.if.else_crit_edge80
    i8 12, label %entry.b43_plcp_get_ratecode_ofdm.exit_crit_edge
    i8 18, label %sw.bb1.i
    i8 24, label %sw.bb2.i
    i8 36, label %sw.bb3.i
    i8 48, label %sw.bb4.i
    i8 72, label %sw.bb5.i
    i8 96, label %sw.bb6.i
    i8 108, label %sw.bb7.i
  ]

entry.b43_plcp_get_ratecode_ofdm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

entry.if.else_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_ofdm.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #7
  br label %b43_plcp_get_ratecode_ofdm.exit

b43_plcp_get_ratecode_ofdm.exit:                  ; preds = %do.end.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.b43_plcp_get_ratecode_ofdm.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 12, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 13, %sw.bb5.i ], [ 9, %sw.bb4.i ], [ 14, %sw.bb3.i ], [ 10, %sw.bb2.i ], [ 15, %sw.bb1.i ], [ 11, %entry.b43_plcp_get_ratecode_ofdm.exit_crit_edge ]
  %conv3 = zext i16 %octets to i32
  %and = and i32 %conv3, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %b43_plcp_get_ratecode_ofdm.exit.if.end_crit_edge, label %do.end, !prof !22

b43_plcp_get_ratecode_ofdm.exit.if.end_crit_edge: ; preds = %b43_plcp_get_ratecode_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %b43_plcp_get_ratecode_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %b43_plcp_get_ratecode_ofdm.exit.if.end_crit_edge
  %shl = shl nuw nsw i32 %conv3, 5
  %or = or i32 %retval.0.i, %shl
  %1 = tail call i32 @llvm.bswap.i32(i32 %or)
  %2 = ptrtoint ptr %plcp to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %plcp, align 1
  br label %if.end52

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge78, %entry.if.else_crit_edge79, %entry.if.else_crit_edge80
  %conv = zext i8 %bitrate to i32
  %conv26 = zext i16 %octets to i32
  %mul = shl nuw nsw i32 %conv26, 4
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %mul.frozen, %conv
  %3 = mul i32 %div, %conv
  %rem.decomposed = sub i32 %mul.frozen, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %if.else.if.end47_crit_edge, label %if.then32

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then32:                                        ; preds = %if.else
  %inc = add nuw nsw i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %bitrate)
  %cmp34 = icmp eq i8 %bitrate, 22
  br i1 %cmp34, label %land.lhs.true, label %if.then32.if.end47_crit_edge

if.then32.if.end47_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %if.then32
  %mul37 = shl nuw nsw i32 %conv26, 3
  %rem38 = urem i32 %mul37, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem38)
  %cmp39 = icmp ult i32 %rem38, 4
  br i1 %cmp39, label %if.end47.thread, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end47.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %plcp, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -124, ptr %arrayidx, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %6 = lshr i32 %5, 16
  %7 = ptrtoint ptr %plcp to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %plcp, align 1
  %or4977 = or i32 %8, %6
  store i32 %or4977, ptr %plcp, align 1
  br label %sw.bb3.i72

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.then32.if.end47_crit_edge, %if.else.if.end47_crit_edge
  %plen.0 = phi i32 [ %inc, %land.lhs.true.if.end47_crit_edge ], [ %inc, %if.then32.if.end47_crit_edge ], [ %div, %if.else.if.end47_crit_edge ]
  %arrayidx43 = getelementptr i8, ptr %plcp, i32 1
  %9 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx43, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %plen.0)
  %11 = lshr i32 %10, 16
  %12 = ptrtoint ptr %plcp to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %plcp, align 1
  %or49 = or i32 %11, %13
  store i32 %or49, ptr %plcp, align 1
  %14 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %bitrate, label %do.end.i73 [
    i8 2, label %if.end47.b43_plcp_get_ratecode_cck.exit_crit_edge
    i8 4, label %sw.bb1.i70
    i8 11, label %sw.bb2.i71
    i8 22, label %if.end47.sw.bb3.i72_crit_edge
  ]

if.end47.sw.bb3.i72_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i72

if.end47.b43_plcp_get_ratecode_cck.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_cck.exit

sw.bb1.i70:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_cck.exit

sw.bb2.i71:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_plcp_get_ratecode_cck.exit

sw.bb3.i72:                                       ; preds = %if.end47.sw.bb3.i72_crit_edge, %if.end47.thread
  br label %b43_plcp_get_ratecode_cck.exit

do.end.i73:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %b43_plcp_get_ratecode_cck.exit

b43_plcp_get_ratecode_cck.exit:                   ; preds = %do.end.i73, %sw.bb3.i72, %sw.bb2.i71, %sw.bb1.i70, %if.end47.b43_plcp_get_ratecode_cck.exit_crit_edge
  %retval.0.i74 = phi i8 [ 0, %do.end.i73 ], [ 110, %sw.bb3.i72 ], [ 55, %sw.bb2.i71 ], [ 20, %sw.bb1.i70 ], [ 10, %if.end47.b43_plcp_get_ratecode_cck.exit_crit_edge ]
  %15 = ptrtoint ptr %plcp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i74, ptr %plcp, align 1
  br label %if.end52

if.end52:                                         ; preds = %b43_plcp_get_ratecode_cck.exit, %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_generate_txhdr(ptr noundef %dev, ptr noundef %_txhdr, ptr nocapture noundef readonly %skb_frag, ptr noundef %info, i16 noundef zeroext %cookie) local_unnamed_addr #0 align 64 {
entry:
  %phase1key = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb_frag, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb_frag, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %5 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_key, align 4
  %tobool.not = icmp eq ptr %6, null
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  %switch.tableidx = add i8 %10, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %11 = icmp ult i8 %switch.tableidx, 4
  %switch.cast = trunc i8 %switch.tableidx to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %12 = and i4 %switch.downshift, 1
  %13 = sext i4 %12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.masked = icmp ne i4 %12, 0
  %14 = select i1 %11, i1 %switch.masked, i1 false
  %15 = call ptr @memset(ptr %_txhdr, i32 0, i32 118)
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp slt i8 %17, 0
  br i1 %cmp.i, label %land.rhs.i, label %ieee80211_get_tx_rate.exit

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.b43_is_ofdm_rate.exit_crit_edge, label %if.then.i, !prof !22

land.rhs.i.b43_is_ofdm_rate.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2737, i32 noundef 9, ptr noundef null) #7
  br label %b43_is_ofdm_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %entry
  %18 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %24 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %23, i32 0, i32 53, i32 %bf.lshr.i
  %25 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %17 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %28, i32 %idxprom51.i
  %tobool12.not = icmp eq ptr %arrayidx44.i, null
  br i1 %tobool12.not, label %ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge, label %cond.end

ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge: ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit

cond.end:                                         ; preds = %ieee80211_get_tx_rate.exit
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %28, i32 %idxprom51.i, i32 2
  %29 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hw_value, align 2
  %conv13 = trunc i16 %30 to i8
  %conv13.mask = and i16 %30, 255
  %31 = zext i8 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %conv13, label %lor.rhs.i.i [
    i8 2, label %cond.end.b43_is_ofdm_rate.exit_crit_edge
    i8 4, label %cond.end.b43_is_ofdm_rate.exit_crit_edge758
    i8 11, label %cond.end.b43_is_ofdm_rate.exit_crit_edge759
  ]

cond.end.b43_is_ofdm_rate.exit_crit_edge759:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit

cond.end.b43_is_ofdm_rate.exit_crit_edge758:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit

cond.end.b43_is_ofdm_rate.exit_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit

lor.rhs.i.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %conv13.mask)
  %cmp4.i.i = icmp ne i16 %conv13.mask, 22
  %phi.cast.i = zext i1 %cmp4.i.i to i32
  br label %b43_is_ofdm_rate.exit

b43_is_ofdm_rate.exit:                            ; preds = %lor.rhs.i.i, %cond.end.b43_is_ofdm_rate.exit_crit_edge, %cond.end.b43_is_ofdm_rate.exit_crit_edge758, %cond.end.b43_is_ofdm_rate.exit_crit_edge759, %ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge, %if.then.i, %land.rhs.i.b43_is_ofdm_rate.exit_crit_edge
  %conv15729.shrunk = phi i16 [ %conv13.mask, %cond.end.b43_is_ofdm_rate.exit_crit_edge ], [ %conv13.mask, %lor.rhs.i.i ], [ %conv13.mask, %cond.end.b43_is_ofdm_rate.exit_crit_edge758 ], [ %conv13.mask, %cond.end.b43_is_ofdm_rate.exit_crit_edge759 ], [ 2, %ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge ], [ 2, %if.then.i ], [ 2, %land.rhs.i.b43_is_ofdm_rate.exit_crit_edge ]
  %cond727 = phi i8 [ %conv13, %cond.end.b43_is_ofdm_rate.exit_crit_edge ], [ %conv13, %lor.rhs.i.i ], [ %conv13, %cond.end.b43_is_ofdm_rate.exit_crit_edge758 ], [ %conv13, %cond.end.b43_is_ofdm_rate.exit_crit_edge759 ], [ 2, %ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge ], [ 2, %if.then.i ], [ 2, %land.rhs.i.b43_is_ofdm_rate.exit_crit_edge ]
  %retval.0.i722726 = phi ptr [ %arrayidx44.i, %cond.end.b43_is_ofdm_rate.exit_crit_edge ], [ %arrayidx44.i, %lor.rhs.i.i ], [ %arrayidx44.i, %cond.end.b43_is_ofdm_rate.exit_crit_edge758 ], [ %arrayidx44.i, %cond.end.b43_is_ofdm_rate.exit_crit_edge759 ], [ null, %ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge ], [ null, %if.then.i ], [ null, %land.rhs.i.b43_is_ofdm_rate.exit_crit_edge ]
  %32 = phi i32 [ 0, %cond.end.b43_is_ofdm_rate.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i.i ], [ 0, %cond.end.b43_is_ofdm_rate.exit_crit_edge758 ], [ 0, %cond.end.b43_is_ofdm_rate.exit_crit_edge759 ], [ 0, %ieee80211_get_tx_rate.exit.b43_is_ofdm_rate.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.rhs.i.b43_is_ofdm_rate.exit_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %4, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i661 = icmp slt i8 %34, 0
  br i1 %cmp.i661, label %b43_is_ofdm_rate.exit.ieee80211_get_alt_retry_rate.exit_crit_edge, label %if.end.i

b43_is_ofdm_rate.exit.ieee80211_get_alt_retry_rate.exit_crit_edge: ; preds = %b43_is_ofdm_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_alt_retry_rate.exit

if.end.i:                                         ; preds = %b43_is_ofdm_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wl, align 4
  %hw18 = getelementptr inbounds %struct.b43_wl, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw18, align 4
  %conv1.i = zext i8 %34 to i32
  %wiphy.i662 = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy.i662 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy.i662, align 8
  %band.i663 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %41 = ptrtoint ptr %band.i663 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i664 = load i32, ptr %band.i663, align 4
  %bf.lshr.i665 = lshr i32 %bf.load.i664, 29
  %arrayidx3.i = getelementptr %struct.wiphy, ptr %40, i32 0, i32 53, i32 %bf.lshr.i665
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx3.i, align 4
  %bitrates.i666 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bitrates.i666 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bitrates.i666, align 4
  %arrayidx8.i = getelementptr %struct.ieee80211_rate, ptr %45, i32 %conv1.i
  br label %ieee80211_get_alt_retry_rate.exit

ieee80211_get_alt_retry_rate.exit:                ; preds = %if.end.i, %b43_is_ofdm_rate.exit.ieee80211_get_alt_retry_rate.exit_crit_edge
  %retval.0.i667 = phi ptr [ %arrayidx8.i, %if.end.i ], [ null, %b43_is_ofdm_rate.exit.ieee80211_get_alt_retry_rate.exit_crit_edge ]
  %tobool20.not = icmp eq ptr %retval.0.i667, null
  %spec.select = select i1 %tobool20.not, ptr %retval.0.i722726, ptr %retval.0.i667
  %hw_value25 = getelementptr inbounds %struct.ieee80211_rate, ptr %spec.select, i32 0, i32 2
  %46 = ptrtoint ptr %hw_value25 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hw_value25, align 2
  %conv26 = trunc i16 %47 to i8
  %conv26.mask = and i16 %47, 255
  %48 = zext i8 %conv26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %conv26, label %lor.rhs.i.i670 [
    i8 2, label %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge
    i8 4, label %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge760
    i8 11, label %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge761
  ]

ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge761: ; preds = %ieee80211_get_alt_retry_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit671

ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge760: ; preds = %ieee80211_get_alt_retry_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit671

ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge: ; preds = %ieee80211_get_alt_retry_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit671

lor.rhs.i.i670:                                   ; preds = %ieee80211_get_alt_retry_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %conv26.mask)
  %cmp4.i.i668 = icmp ne i16 %conv26.mask, 22
  %phi.cast.i669 = zext i1 %cmp4.i.i668 to i8
  br label %b43_is_ofdm_rate.exit671

b43_is_ofdm_rate.exit671:                         ; preds = %lor.rhs.i.i670, %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge, %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge760, %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge761
  %49 = phi i8 [ 0, %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge ], [ %phi.cast.i669, %lor.rhs.i.i670 ], [ 0, %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge760 ], [ 0, %ieee80211_get_alt_retry_rate.exit.b43_is_ofdm_rate.exit671_crit_edge761 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool29.not = icmp eq i32 %32, 0
  br i1 %tobool29.not, label %if.else, label %if.then

if.then:                                          ; preds = %b43_is_ofdm_rate.exit671
  %50 = zext i8 %cond727 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %cond727, label %do.end.i [
    i8 12, label %if.then.if.end_crit_edge
    i8 18, label %sw.bb1.i
    i8 24, label %sw.bb2.i
    i8 36, label %sw.bb3.i
    i8 48, label %sw.bb4.i
    i8 72, label %sw.bb5.i
    i8 96, label %sw.bb6.i
    i8 108, label %sw.bb7.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb7.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.else:                                          ; preds = %b43_is_ofdm_rate.exit671
  %51 = zext i8 %cond727 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %cond727, label %do.end.i676 [
    i8 2, label %if.else.if.end_crit_edge
    i8 4, label %sw.bb1.i673
    i8 11, label %sw.bb2.i674
    i8 22, label %sw.bb3.i675
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb1.i673:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i674:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb3.i675:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i676:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end.i676, %sw.bb3.i675, %sw.bb2.i674, %sw.bb1.i673, %if.else.if.end_crit_edge, %do.end.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.if.end_crit_edge
  %retval.0.i677.sink = phi i8 [ 0, %do.end.i ], [ 12, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 13, %sw.bb5.i ], [ 9, %sw.bb4.i ], [ 14, %sw.bb3.i ], [ 10, %sw.bb2.i ], [ 15, %sw.bb1.i ], [ 11, %if.then.if.end_crit_edge ], [ 0, %do.end.i676 ], [ 110, %sw.bb3.i675 ], [ 55, %sw.bb2.i674 ], [ 20, %sw.bb1.i673 ], [ 10, %if.else.if.end_crit_edge ]
  %phy_rate32 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 8
  %52 = ptrtoint ptr %phy_rate32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %retval.0.i677.sink, ptr %phy_rate32, align 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %1, align 2
  %mac_frame_ctl = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 1
  %55 = ptrtoint ptr %mac_frame_ctl to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %mac_frame_ctl, align 1
  %tx_receiver = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 13
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %56 = call ptr @memcpy(ptr %tx_receiver, ptr %addr1, i32 6)
  call void @__sanitizer_cov_trace_cmp2(i16 %conv15729.shrunk, i16 %conv26.mask)
  %cmp37 = icmp eq i16 %conv15729.shrunk, %conv26.mask
  br i1 %cmp37, label %if.end.if.then47_crit_edge, label %lor.lhs.false39

if.end.if.then47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

lor.lhs.false39:                                  ; preds = %if.end
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %duration_id to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %duration_id, align 2
  %59 = and i16 %58, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool41.not = icmp ne i16 %59, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp45 = icmp eq i16 %58, 0
  %or.cond = or i1 %cmp45, %tobool41.not
  br i1 %or.cond, label %lor.lhs.false39.if.then47_crit_edge, label %if.else49

lor.lhs.false39.if.then47_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false39.if.then47_crit_edge, %if.end.if.then47_crit_edge
  %duration_id48 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %duration_id48 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %duration_id48, align 2
  br label %if.end54

if.else49:                                        ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wl, align 4
  %hw51 = getelementptr inbounds %struct.b43_wl, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %hw51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw51, align 4
  %vif = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %66 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vif, align 8
  %band = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %68 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %call52 = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %65, ptr noundef %67, i32 noundef %bf.lshr, i32 noundef %3, ptr noundef %spec.select) #7
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then47
  %call52.sink = phi i16 [ %call52, %if.else49 ], [ %61, %if.then47 ]
  %dur_fb53 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 18
  %69 = ptrtoint ptr %dur_fb53 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %call52.sink, ptr %dur_fb53, align 1
  %add = add i32 %3, 4
  br i1 %tobool.not, label %if.end54.if.end149_crit_edge, label %if.then56

if.end54.if.end149_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then56:                                        ; preds = %if.end54
  %70 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_key, align 4
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %hw_key_idx, align 2
  %conv58 = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %73)
  %cmp59 = icmp ugt i8 %73, 57
  br i1 %cmp59, label %do.end, label %if.then56.if.end78_crit_edge, !prof !23

if.then56.if.end78_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end:                                           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #7
  br label %if.end78

if.end78:                                         ; preds = %do.end, %if.then56.if.end78_crit_edge
  %arrayidx = getelementptr %struct.b43_wldev, ptr %dev, i32 0, i32 23, i32 %conv58
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %tobool86.not = icmp eq ptr %75, null
  br i1 %tobool86.not, label %if.end78.cleanup462_crit_edge, label %if.end96, !prof !23

if.end78.cleanup462_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup462

if.end96:                                         ; preds = %if.end78
  %76 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_key, align 4
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %icv_len, align 4
  %conv98 = zext i8 %79 to i32
  %add99 = add i32 %add, %conv98
  %rev.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 4
  %80 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 351, i16 %81)
  %cmp.i.i = icmp ult i16 %81, 351
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %73)
  %cmp.i678 = icmp ugt i8 %73, 3
  %or.cond.i = and i1 %cmp.i678, %cmp.i.i
  %sub.i = add i8 %73, -4
  %firmware_kidx.0.i = select i1 %or.cond.i, i8 %sub.i, i8 %73
  %conv101 = zext i8 %firmware_kidx.0.i to i32
  %shl = shl nuw nsw i32 %conv101, 20
  %algorithm = getelementptr %struct.b43_wldev, ptr %dev, i32 0, i32 23, i32 %conv58, i32 1
  %82 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %algorithm, align 4
  %conv103 = zext i8 %83 to i32
  %shl104 = shl nuw nsw i32 %conv103, 16
  %and105 = and i32 %shl104, 458752
  %or106 = or i32 %shl, %and105
  %call107 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp110 = icmp eq i8 %83, 2
  br i1 %cmp110, label %if.then112, label %cleanup.thread732

if.then112:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %phase1key) #7
  %84 = getelementptr inbounds [5 x i16], ptr %phase1key, i32 0, i32 1
  %85 = getelementptr inbounds [5 x i16], ptr %phase1key, i32 0, i32 2
  %86 = getelementptr inbounds [5 x i16], ptr %phase1key, i32 0, i32 3
  %87 = getelementptr inbounds [5 x i16], ptr %phase1key, i32 0, i32 4
  %88 = call ptr @memset(ptr %phase1key, i32 255, i32 10)
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %90, align 2
  %call.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %92) #10
  %add.ptr.i = getelementptr i8, ptr %90, i32 %call.i
  %arrayidx.i679 = getelementptr i8, ptr %add.ptr.i, i32 4
  %93 = ptrtoint ptr %arrayidx.i679 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %arrayidx.i679, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  call void @ieee80211_get_tkip_p1k_iv(ptr noundef %77, i32 noundef %95, ptr noundef nonnull %phase1key) #7
  %96 = ptrtoint ptr %phase1key to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %phase1key, align 2
  %conv118 = trunc i16 %97 to i8
  %arrayidx120 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 0
  %98 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv118, ptr %arrayidx120, align 1
  %99 = lshr i16 %97, 8
  %conv123 = trunc i16 %99 to i8
  %arrayidx127 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 1
  %100 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv123, ptr %arrayidx127, align 1
  %101 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %84, align 2
  %conv118.1 = trunc i16 %102 to i8
  %arrayidx120.1 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 2
  %103 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv118.1, ptr %arrayidx120.1, align 1
  %104 = lshr i16 %102, 8
  %conv123.1 = trunc i16 %104 to i8
  %arrayidx127.1 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 3
  %105 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv123.1, ptr %arrayidx127.1, align 1
  %106 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %85, align 2
  %conv118.2 = trunc i16 %107 to i8
  %arrayidx120.2 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 4
  %108 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv118.2, ptr %arrayidx120.2, align 1
  %109 = lshr i16 %107, 8
  %conv123.2 = trunc i16 %109 to i8
  %arrayidx127.2 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 5
  %110 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv123.2, ptr %arrayidx127.2, align 1
  %111 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %86, align 2
  %conv118.3 = trunc i16 %112 to i8
  %arrayidx120.3 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 6
  %113 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv118.3, ptr %arrayidx120.3, align 1
  %114 = lshr i16 %112, 8
  %conv123.3 = trunc i16 %114 to i8
  %arrayidx127.3 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 7
  %115 = ptrtoint ptr %arrayidx127.3 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv123.3, ptr %arrayidx127.3, align 1
  %116 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %87, align 2
  %conv118.4 = trunc i16 %117 to i8
  %arrayidx120.4 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 8
  %118 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv118.4, ptr %arrayidx120.4, align 1
  %119 = lshr i16 %117, 8
  %conv123.4 = trunc i16 %119 to i8
  %arrayidx127.4 = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 9
  %120 = ptrtoint ptr %arrayidx127.4 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv123.4, ptr %arrayidx127.4, align 1
  %add.ptr = getelementptr %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12, i32 10
  %add.ptr130 = getelementptr i8, ptr %1, i32 %call107
  %121 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr130, i32 3)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %phase1key) #7
  br label %if.end149

cleanup.thread732:                                ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len133 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %77, i32 0, i32 3
  %122 = ptrtoint ptr %iv_len133 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %iv_len133, align 1
  %124 = tail call i8 @llvm.umin.i8(i8 %123, i8 16)
  %cond141 = zext i8 %124 to i32
  %iv142 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 12
  %add.ptr144 = getelementptr i8, ptr %1, i32 %call107
  %125 = call ptr @memcpy(ptr %iv142, ptr %add.ptr144, i32 %cond141)
  br label %if.end149

if.end149:                                        ; preds = %cleanup.thread732, %if.then112, %if.end54.if.end149_crit_edge
  %plcp_fragment_len.1 = phi i32 [ %add99, %if.then112 ], [ %add, %if.end54.if.end149_crit_edge ], [ %add99, %cleanup.thread732 ]
  %mac_ctl.1 = phi i32 [ %or106, %if.then112 ], [ 0, %if.end54.if.end149_crit_edge ], [ %or106, %cleanup.thread732 ]
  %hdr_format = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %126 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hdr_format, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %127, label %if.end149.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb151
    i32 1, label %sw.bb154
  ]

if.end149.sw.epilog_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = trunc i32 %plcp_fragment_len.1 to i16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %plcp = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 12
  %conv150 = trunc i32 %plcp_fragment_len.1 to i16
  call void @b43_generate_plcp_hdr(ptr noundef %plcp, i16 noundef zeroext %conv150, i8 noundef zeroext %cond727)
  br label %sw.epilog

sw.bb151:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %plcp152 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 10, i32 6
  %conv153 = trunc i32 %plcp_fragment_len.1 to i16
  call void @b43_generate_plcp_hdr(ptr noundef %plcp152, i16 noundef zeroext %conv153, i8 noundef zeroext %cond727)
  br label %sw.epilog

sw.bb154:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %plcp155 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 10, i32 10
  %conv156 = trunc i32 %plcp_fragment_len.1 to i16
  call void @b43_generate_plcp_hdr(ptr noundef %plcp155, i16 noundef zeroext %conv156, i8 noundef zeroext %cond727)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb154, %sw.bb151, %sw.bb, %if.end149.sw.epilog_crit_edge
  %conv157.pre-phi = phi i16 [ %.pre, %if.end149.sw.epilog_crit_edge ], [ %conv156, %sw.bb154 ], [ %conv153, %sw.bb151 ], [ %conv150, %sw.bb ]
  %plcp_fb = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 17
  call void @b43_generate_plcp_hdr(ptr noundef %plcp_fb, i16 noundef zeroext %conv157.pre-phi, i8 noundef zeroext %conv26)
  %channel = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 18
  %129 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %channel, align 4
  %conv168 = trunc i32 %130 to i8
  %chan_radio_code = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 11
  %131 = ptrtoint ptr %chan_radio_code to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv168, ptr %chan_radio_code, align 1
  %not.tobool29.not = xor i1 %tobool29.not, true
  %phy_ctl.0 = zext i1 %not.tobool29.not to i16
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %4, i32 0, i32 1
  %132 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %bf.load181 = load i16, ptr %flags, align 1
  %133 = shl i16 %bf.load181, 2
  %134 = and i16 %133, 16
  %135 = or i16 %134, %phy_ctl.0
  %call190 = call zeroext i8 @b43_ieee80211_antenna_sanitize(ptr noundef %dev, i8 noundef zeroext 0) #7
  %136 = zext i8 %call190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %call190, label %do.end224 [
    i8 0, label %sw.bb192
    i8 1, label %sw.epilog.sw.epilog238_crit_edge
    i8 2, label %sw.bb200
    i8 3, label %sw.bb204
    i8 4, label %sw.bb208
  ]

sw.epilog.sw.epilog238_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog238

sw.bb192:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %137 = or i16 %135, 192
  br label %sw.epilog238

sw.bb200:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %138 = or i16 %135, 64
  br label %sw.epilog238

sw.bb204:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %139 = or i16 %135, 256
  br label %sw.epilog238

sw.bb208:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %140 = or i16 %135, 512
  br label %sw.epilog238

do.end224:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 394, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog238

sw.epilog238:                                     ; preds = %do.end224, %sw.bb208, %sw.bb204, %sw.bb200, %sw.bb192, %sw.epilog.sw.epilog238_crit_edge
  %phy_ctl.2 = phi i16 [ %135, %do.end224 ], [ %140, %sw.bb208 ], [ %139, %sw.bb204 ], [ %138, %sw.bb200 ], [ %137, %sw.bb192 ], [ %135, %sw.epilog.sw.epilog238_crit_edge ]
  %141 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %info, align 8
  %and242 = lshr i32 %142, 2
  %143 = and i32 %and242, 1
  %144 = xor i32 %143, 1
  %and248 = shl i32 %142, 3
  %145 = and i32 %and248, 16
  %and254 = lshr i32 %142, 1
  %146 = and i32 %and254, 8
  %147 = or i32 %145, %mac_ctl.1
  %148 = or i32 %147, %146
  %149 = or i32 %148, %144
  %gmode = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 4
  %150 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %gmode, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool259.not = icmp eq i8 %151, 0
  %or261 = or i32 %149, 128
  %mac_ctl.5 = select i1 %tobool259.not, i32 %or261, i32 %149
  %152 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %bf.load265 = load i16, ptr %flags, align 1
  %bf.clear266 = and i16 %bf.load265, 2047
  %153 = and i16 %bf.load265, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool269.not = icmp eq i16 %153, 0
  br i1 %tobool269.not, label %lor.lhs.false270, label %sw.epilog238.if.then280_crit_edge

sw.epilog238.if.then280_crit_edge:                ; preds = %sw.epilog238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then280

lor.lhs.false270:                                 ; preds = %sw.epilog238
  %bf.lshr273 = lshr i16 %bf.load265, 11
  %154 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wl, align 4
  %hw276 = getelementptr inbounds %struct.b43_wl, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %hw276 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw276, align 4
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %157, i32 0, i32 5
  %158 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %long_frame_max_tx_count, align 1
  %160 = zext i8 %159 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr273, i16 %160)
  %cmp278.not = icmp ugt i16 %bf.lshr273, %160
  br i1 %cmp278.not, label %if.else291, label %lor.lhs.false270.if.then280_crit_edge

lor.lhs.false270.if.then280_crit_edge:            ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then280

if.then280:                                       ; preds = %lor.lhs.false270.if.then280_crit_edge, %sw.epilog238.if.then280_crit_edge
  %161 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wl, align 4
  %hw282 = getelementptr inbounds %struct.b43_wl, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %hw282 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw282, align 4
  %long_frame_max_tx_count284 = getelementptr inbounds %struct.ieee80211_conf, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %long_frame_max_tx_count284 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %long_frame_max_tx_count284, align 1
  %bf.value = zext i8 %166 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.set = or i16 %bf.shl, %bf.clear266
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 %bf.set, ptr %flags, align 1
  %or290 = or i32 %mac_ctl.5, 2
  br label %if.end303

if.else291:                                       ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #9
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %157, i32 0, i32 6
  %168 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %short_frame_max_tx_count, align 8
  %bf.value299 = zext i8 %169 to i16
  %bf.shl300 = shl i16 %bf.value299, 11
  %bf.set302 = or i16 %bf.shl300, %bf.clear266
  %170 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %170, i32 2)
  store i16 %bf.set302, ptr %flags, align 1
  br label %if.end303

if.end303:                                        ; preds = %if.else291, %if.then280
  %mac_ctl.6 = phi i32 [ %or290, %if.then280 ], [ %mac_ctl.5, %if.else291 ]
  %171 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %171, i32 2)
  %bf.load306 = load i16, ptr %flags, align 1
  %172 = and i16 %bf.load306, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %if.end303.if.end444_crit_edge, label %if.then319

if.end303.if.end444_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end444

if.then319:                                       ; preds = %if.end303
  %rts_cts_rate_idx.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 4
  %174 = ptrtoint ptr %rts_cts_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %rts_cts_rate_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cmp.i680 = icmp slt i8 %175, 0
  br i1 %cmp.i680, label %if.then319.b43_is_ofdm_rate.exit703_crit_edge, label %ieee80211_get_rts_cts_rate.exit

if.then319.b43_is_ofdm_rate.exit703_crit_edge:    ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

ieee80211_get_rts_cts_rate.exit:                  ; preds = %if.then319
  %176 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wl, align 4
  %hw323 = getelementptr inbounds %struct.b43_wl, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %hw323 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw323, align 4
  %conv6.i = zext i8 %175 to i32
  %wiphy.i681 = getelementptr inbounds %struct.ieee80211_hw, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %wiphy.i681 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %wiphy.i681, align 8
  %band.i682 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %182 = ptrtoint ptr %band.i682 to i32
  call void @__asan_load4_noabort(i32 %182)
  %bf.load.i683 = load i32, ptr %band.i682, align 4
  %bf.lshr.i684 = lshr i32 %bf.load.i683, 29
  %arrayidx.i685 = getelementptr %struct.wiphy, ptr %181, i32 0, i32 53, i32 %bf.lshr.i684
  %183 = ptrtoint ptr %arrayidx.i685 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i685, align 4
  %bitrates.i686 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %bitrates.i686 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bitrates.i686, align 4
  %arrayidx3.i687 = getelementptr %struct.ieee80211_rate, ptr %186, i32 %conv6.i
  %tobool325.not = icmp eq ptr %arrayidx3.i687, null
  br i1 %tobool325.not, label %ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge, label %cond.end330

ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge: ; preds = %ieee80211_get_rts_cts_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

cond.end330:                                      ; preds = %ieee80211_get_rts_cts_rate.exit
  %hw_value327 = getelementptr %struct.ieee80211_rate, ptr %186, i32 %conv6.i, i32 2
  %187 = ptrtoint ptr %hw_value327 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %hw_value327, align 2
  %189 = zext i16 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %188, label %lor.rhs.i.i692 [
    i16 2, label %cond.end330.b43_is_ofdm_rate.exit693_crit_edge
    i16 4, label %cond.end330.b43_is_ofdm_rate.exit693_crit_edge762
    i16 11, label %cond.end330.b43_is_ofdm_rate.exit693_crit_edge763
  ]

cond.end330.b43_is_ofdm_rate.exit693_crit_edge763: ; preds = %cond.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit693

cond.end330.b43_is_ofdm_rate.exit693_crit_edge762: ; preds = %cond.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit693

cond.end330.b43_is_ofdm_rate.exit693_crit_edge:   ; preds = %cond.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit693

lor.rhs.i.i692:                                   ; preds = %cond.end330
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %188)
  %cmp4.i.i690 = icmp ne i16 %188, 22
  %phi.cast.i691 = zext i1 %cmp4.i.i690 to i32
  br label %b43_is_ofdm_rate.exit693

b43_is_ofdm_rate.exit693:                         ; preds = %lor.rhs.i.i692, %cond.end330.b43_is_ofdm_rate.exit693_crit_edge, %cond.end330.b43_is_ofdm_rate.exit693_crit_edge762, %cond.end330.b43_is_ofdm_rate.exit693_crit_edge763
  %190 = phi i32 [ 0, %cond.end330.b43_is_ofdm_rate.exit693_crit_edge ], [ %phi.cast.i691, %lor.rhs.i.i692 ], [ 0, %cond.end330.b43_is_ofdm_rate.exit693_crit_edge762 ], [ 0, %cond.end330.b43_is_ofdm_rate.exit693_crit_edge763 ]
  %conv333 = trunc i16 %188 to i8
  %191 = zext i8 %conv333 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %conv333, label %do.end.i700 [
    i8 2, label %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge
    i8 4, label %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764
    i8 11, label %sw.bb2.i694
    i8 22, label %sw.bb3.i695
    i8 12, label %b43_calc_fallback_rate.exit
    i8 18, label %b43_is_ofdm_rate.exit693.lor.rhs.i.i702_crit_edge
    i8 24, label %sw.bb6.i698
    i8 36, label %sw.bb7.i699
    i8 48, label %sw.bb8.i
    i8 72, label %sw.bb9.i
    i8 96, label %sw.bb10.i
    i8 108, label %sw.bb11.i
  ]

b43_is_ofdm_rate.exit693.lor.rhs.i.i702_crit_edge: ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764: ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge: ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

sw.bb2.i694:                                      ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

sw.bb3.i695:                                      ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

sw.bb6.i698:                                      ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

sw.bb7.i699:                                      ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

sw.bb8.i:                                         ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

sw.bb9.i:                                         ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

sw.bb10.i:                                        ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

sw.bb11.i:                                        ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

do.end.i700:                                      ; preds = %b43_is_ofdm_rate.exit693
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %lor.rhs.i.i702

b43_calc_fallback_rate.exit:                      ; preds = %b43_is_ofdm_rate.exit693
  %192 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %gmode, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i = icmp eq i8 %193, 0
  br i1 %tobool.not.i, label %b43_calc_fallback_rate.exit.lor.rhs.i.i702_crit_edge, label %b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge

b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge: ; preds = %b43_calc_fallback_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_is_ofdm_rate.exit703

b43_calc_fallback_rate.exit.lor.rhs.i.i702_crit_edge: ; preds = %b43_calc_fallback_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i702

lor.rhs.i.i702:                                   ; preds = %b43_calc_fallback_rate.exit.lor.rhs.i.i702_crit_edge, %do.end.i700, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i699, %sw.bb6.i698, %b43_is_ofdm_rate.exit693.lor.rhs.i.i702_crit_edge
  %retval.0.i701748 = phi i8 [ 12, %b43_calc_fallback_rate.exit.lor.rhs.i.i702_crit_edge ], [ 18, %sw.bb6.i698 ], [ 24, %sw.bb7.i699 ], [ 36, %sw.bb8.i ], [ 48, %sw.bb9.i ], [ 72, %sw.bb10.i ], [ 96, %sw.bb11.i ], [ 0, %do.end.i700 ], [ 12, %b43_is_ofdm_rate.exit693.lor.rhs.i.i702_crit_edge ]
  br label %b43_is_ofdm_rate.exit703

b43_is_ofdm_rate.exit703:                         ; preds = %lor.rhs.i.i702, %b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge, %sw.bb3.i695, %sw.bb2.i694, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764, %ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge, %if.then319.b43_is_ofdm_rate.exit703_crit_edge
  %retval.0.i701747 = phi i8 [ %retval.0.i701748, %lor.rhs.i.i702 ], [ 11, %b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ], [ 2, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge ], [ 2, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764 ], [ 4, %sw.bb2.i694 ], [ 11, %sw.bb3.i695 ], [ 2, %if.then319.b43_is_ofdm_rate.exit703_crit_edge ], [ 2, %ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ]
  %194 = phi i32 [ %190, %lor.rhs.i.i702 ], [ %190, %b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ], [ %190, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge ], [ %190, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764 ], [ %190, %sw.bb2.i694 ], [ %190, %sw.bb3.i695 ], [ 0, %if.then319.b43_is_ofdm_rate.exit703_crit_edge ], [ 0, %ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ]
  %conv333741745 = phi i8 [ %conv333, %lor.rhs.i.i702 ], [ 12, %b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ], [ %conv333, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge ], [ %conv333, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764 ], [ %conv333, %sw.bb2.i694 ], [ %conv333, %sw.bb3.i695 ], [ 2, %if.then319.b43_is_ofdm_rate.exit703_crit_edge ], [ 2, %ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ]
  %tobool419.not = phi i1 [ false, %lor.rhs.i.i702 ], [ true, %b43_calc_fallback_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ], [ true, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge ], [ true, %b43_is_ofdm_rate.exit693.b43_is_ofdm_rate.exit703_crit_edge764 ], [ true, %sw.bb2.i694 ], [ true, %sw.bb3.i695 ], [ true, %if.then319.b43_is_ofdm_rate.exit703_crit_edge ], [ true, %ieee80211_get_rts_cts_rate.exit.b43_is_ofdm_rate.exit703_crit_edge ]
  %195 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %195, i32 2)
  %bf.load342 = load i16, ptr %flags, align 1
  %196 = and i16 %bf.load342, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool346.not = icmp eq i16 %196, 0
  %197 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %hdr_format, align 4
  br i1 %tobool346.not, label %if.else363, label %if.then347

if.then347:                                       ; preds = %b43_is_ofdm_rate.exit703
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %198, label %if.then347.sw.epilog358_crit_edge [
    i32 0, label %sw.bb350
    i32 2, label %sw.bb352
    i32 1, label %sw.bb355
  ]

if.then347.sw.epilog358_crit_edge:                ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog358

sw.bb350:                                         ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 10
  br label %sw.epilog358

sw.bb352:                                         ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame353 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 6
  br label %sw.epilog358

sw.bb355:                                         ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame356 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 8
  br label %sw.epilog358

sw.epilog358:                                     ; preds = %sw.bb355, %sw.bb352, %sw.bb350, %if.then347.sw.epilog358_crit_edge
  %cts.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.then347.sw.epilog358_crit_edge ], [ %rts_frame356, %sw.bb355 ], [ %rts_frame353, %sw.bb352 ], [ %rts_frame, %sw.bb350 ]
  %200 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wl, align 4
  %hw360 = getelementptr inbounds %struct.b43_wl, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %hw360 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw360, align 4
  %vif361 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %204 = ptrtoint ptr %vif361 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %vif361, align 8
  call void @ieee80211_ctstoself_get(ptr noundef %203, ptr noundef %205, ptr noundef %1, i32 noundef %3, ptr noundef %info, ptr noundef %cts.0) #7
  br label %if.end380

if.else363:                                       ; preds = %b43_is_ofdm_rate.exit703
  %206 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %198, label %if.else363.sw.epilog375_crit_edge [
    i32 0, label %sw.bb366
    i32 2, label %sw.bb369
    i32 1, label %sw.bb372
  ]

if.else363.sw.epilog375_crit_edge:                ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog375

sw.bb366:                                         ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame367 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 10
  br label %sw.epilog375

sw.bb369:                                         ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame370 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 6
  br label %sw.epilog375

sw.bb372:                                         ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame373 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 8
  br label %sw.epilog375

sw.epilog375:                                     ; preds = %sw.bb372, %sw.bb369, %sw.bb366, %if.else363.sw.epilog375_crit_edge
  %rts.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.else363.sw.epilog375_crit_edge ], [ %rts_frame373, %sw.bb372 ], [ %rts_frame370, %sw.bb369 ], [ %rts_frame367, %sw.bb366 ]
  %207 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %wl, align 4
  %hw377 = getelementptr inbounds %struct.b43_wl, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %hw377 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hw377, align 4
  %vif378 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %211 = ptrtoint ptr %vif378 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %vif378, align 8
  call void @ieee80211_rts_get(ptr noundef %210, ptr noundef %212, ptr noundef %1, i32 noundef %3, ptr noundef %info, ptr noundef %rts.0) #7
  br label %if.end380

if.end380:                                        ; preds = %sw.epilog375, %sw.epilog358
  %.sink = phi i32 [ 4, %sw.epilog375 ], [ 2048, %sw.epilog358 ]
  %len320.0 = phi i16 [ 20, %sw.epilog375 ], [ 14, %sw.epilog358 ]
  %or379 = or i32 %mac_ctl.6, %.sink
  %213 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %hdr_format, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %214, label %if.end380.sw.epilog389_crit_edge [
    i32 0, label %sw.bb384
    i32 2, label %sw.bb385
    i32 1, label %sw.bb387
  ]

if.end380.sw.epilog389_crit_edge:                 ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog389

sw.bb384:                                         ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #9
  %rts_plcp = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 9
  br label %sw.epilog389

sw.bb385:                                         ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #9
  %rts_plcp386 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 3
  br label %sw.epilog389

sw.bb387:                                         ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #9
  %rts_plcp388 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 5
  br label %sw.epilog389

sw.epilog389:                                     ; preds = %sw.bb387, %sw.bb385, %sw.bb384, %if.end380.sw.epilog389_crit_edge
  %plcp321.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end380.sw.epilog389_crit_edge ], [ %rts_plcp388, %sw.bb387 ], [ %rts_plcp386, %sw.bb385 ], [ %rts_plcp, %sw.bb384 ]
  call void @b43_generate_plcp_hdr(ptr noundef %plcp321.0, i16 noundef zeroext %len320.0, i8 noundef zeroext %conv333741745)
  %rts_plcp_fb = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 15
  call void @b43_generate_plcp_hdr(ptr noundef %rts_plcp_fb, i16 noundef zeroext %len320.0, i8 noundef zeroext %retval.0.i701747)
  %216 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %hdr_format, align 4
  %218 = zext i32 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %217, label %sw.epilog389.sw.epilog402_crit_edge [
    i32 0, label %sw.bb396
    i32 2, label %sw.bb398
    i32 1, label %sw.bb400
  ]

sw.epilog389.sw.epilog402_crit_edge:              ; preds = %sw.epilog389
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog402

sw.bb396:                                         ; preds = %sw.epilog389
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame397 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 10
  br label %sw.epilog402

sw.bb398:                                         ; preds = %sw.epilog389
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame399 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 6
  br label %sw.epilog402

sw.bb400:                                         ; preds = %sw.epilog389
  call void @__sanitizer_cov_trace_pc() #9
  %rts_frame401 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 8
  br label %sw.epilog402

sw.epilog402:                                     ; preds = %sw.bb400, %sw.bb398, %sw.bb396, %sw.epilog389.sw.epilog402_crit_edge
  %hdr.0 = phi ptr [ inttoptr (i32 -1 to ptr), %sw.epilog389.sw.epilog402_crit_edge ], [ %rts_frame401, %sw.bb400 ], [ %rts_frame399, %sw.bb398 ], [ %rts_frame397, %sw.bb396 ]
  %duration_id403 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr.0, i32 0, i32 1
  %219 = ptrtoint ptr %duration_id403 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %duration_id403, align 2
  %rts_dur_fb = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 16
  %221 = ptrtoint ptr %rts_dur_fb to i32
  call void @__asan_storeN_noabort(i32 %221, i32 2)
  store i16 %220, ptr %rts_dur_fb, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool404.not = icmp eq i32 %194, 0
  br i1 %tobool404.not, label %if.else411, label %if.then405

if.then405:                                       ; preds = %sw.epilog402
  %222 = or i8 %49, 4
  %223 = zext i8 %conv333741745 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %conv333741745, label %do.end.i711 [
    i8 12, label %if.then405.if.end418_crit_edge
    i8 18, label %sw.bb1.i704
    i8 24, label %sw.bb2.i705
    i8 36, label %sw.bb3.i706
    i8 48, label %sw.bb4.i707
    i8 72, label %sw.bb5.i708
    i8 96, label %sw.bb6.i709
    i8 108, label %sw.bb7.i710
  ]

if.then405.if.end418_crit_edge:                   ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb1.i704:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb2.i705:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb3.i706:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb4.i707:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb5.i708:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb6.i709:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb7.i710:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

do.end.i711:                                      ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #7
  br label %if.end418

if.else411:                                       ; preds = %sw.epilog402
  %224 = zext i8 %conv333741745 to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %conv333741745, label %do.end.i717 [
    i8 2, label %if.else411.if.end418_crit_edge
    i8 4, label %sw.bb1.i714
    i8 11, label %sw.bb2.i715
    i8 22, label %sw.bb3.i716
  ]

if.else411.if.end418_crit_edge:                   ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb1.i714:                                      ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb2.i715:                                      ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

sw.bb3.i716:                                      ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

do.end.i717:                                      ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %if.end418

if.end418:                                        ; preds = %do.end.i717, %sw.bb3.i716, %sw.bb2.i715, %sw.bb1.i714, %if.else411.if.end418_crit_edge, %do.end.i711, %sw.bb7.i710, %sw.bb6.i709, %sw.bb5.i708, %sw.bb4.i707, %sw.bb3.i706, %sw.bb2.i705, %sw.bb1.i704, %if.then405.if.end418_crit_edge
  %retval.0.i718.sink = phi i8 [ 0, %do.end.i711 ], [ 12, %sw.bb7.i710 ], [ 8, %sw.bb6.i709 ], [ 13, %sw.bb5.i708 ], [ 9, %sw.bb4.i707 ], [ 14, %sw.bb3.i706 ], [ 10, %sw.bb2.i705 ], [ 15, %sw.bb1.i704 ], [ 11, %if.then405.if.end418_crit_edge ], [ 0, %do.end.i717 ], [ 110, %sw.bb3.i716 ], [ 55, %sw.bb2.i715 ], [ 20, %sw.bb1.i714 ], [ 10, %if.else411.if.end418_crit_edge ]
  %extra_ft.1 = phi i8 [ %222, %do.end.i711 ], [ %222, %sw.bb7.i710 ], [ %222, %sw.bb6.i709 ], [ %222, %sw.bb5.i708 ], [ %222, %sw.bb4.i707 ], [ %222, %sw.bb3.i706 ], [ %222, %sw.bb2.i705 ], [ %222, %sw.bb1.i704 ], [ %222, %if.then405.if.end418_crit_edge ], [ %49, %do.end.i717 ], [ %49, %sw.bb3.i716 ], [ %49, %sw.bb2.i715 ], [ %49, %sw.bb1.i714 ], [ %49, %if.else411.if.end418_crit_edge ]
  %phy_rate_rts417 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 9
  %225 = ptrtoint ptr %phy_rate_rts417 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %retval.0.i718.sink, ptr %phy_rate_rts417, align 1
  %226 = or i8 %extra_ft.1, 16
  %extra_ft.2 = select i1 %tobool419.not, i8 %extra_ft.1, i8 %226
  %227 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %bf.load431 = load i16, ptr %flags, align 1
  %228 = and i16 %bf.load431, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool435.not = icmp ne i16 %228, 0
  %229 = and i1 %14, %tobool435.not
  br i1 %229, label %if.then438, label %if.end418.if.end444_crit_edge

if.end418.if.end444_crit_edge:                    ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end444

if.then438:                                       ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #9
  %call440 = call fastcc zeroext i16 @b43_generate_tx_phy_ctl1(ptr noundef %dev, i8 noundef zeroext %conv333741745)
  %230 = call i16 @llvm.bswap.i16(i16 %call440)
  %phy_ctl1_rts = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 6
  %231 = ptrtoint ptr %phy_ctl1_rts to i32
  call void @__asan_storeN_noabort(i32 %231, i32 2)
  store i16 %230, ptr %phy_ctl1_rts, align 1
  %call442 = call fastcc zeroext i16 @b43_generate_tx_phy_ctl1(ptr noundef %dev, i8 noundef zeroext %retval.0.i701747)
  %232 = call i16 @llvm.bswap.i16(i16 %call442)
  %phy_ctl1_rts_fb = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 7
  %233 = ptrtoint ptr %phy_ctl1_rts_fb to i32
  call void @__asan_storeN_noabort(i32 %233, i32 2)
  store i16 %232, ptr %phy_ctl1_rts_fb, align 1
  br label %if.end444

if.end444:                                        ; preds = %if.then438, %if.end418.if.end444_crit_edge, %if.end303.if.end444_crit_edge
  %mac_ctl.8 = phi i32 [ %mac_ctl.6, %if.end303.if.end444_crit_edge ], [ %or379, %if.end418.if.end444_crit_edge ], [ %or379, %if.then438 ]
  %extra_ft.3 = phi i8 [ %49, %if.end303.if.end444_crit_edge ], [ %extra_ft.2, %if.end418.if.end444_crit_edge ], [ %extra_ft.2, %if.then438 ]
  %234 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %hdr_format, align 4
  %236 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %235, label %if.end444.sw.epilog453_crit_edge [
    i32 0, label %sw.bb447
    i32 2, label %sw.bb449
    i32 1, label %sw.bb451
  ]

if.end444.sw.epilog453_crit_edge:                 ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog453

sw.bb447:                                         ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #9
  %237 = call i16 @llvm.bswap.i16(i16 %cookie)
  %cookie448 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 3
  %238 = ptrtoint ptr %cookie448 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 2)
  store i16 %237, ptr %cookie448, align 1
  br label %sw.epilog453

sw.bb449:                                         ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #9
  %239 = call i16 @llvm.bswap.i16(i16 %cookie)
  %cookie450 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 1
  %240 = ptrtoint ptr %cookie450 to i32
  call void @__asan_storeN_noabort(i32 %240, i32 2)
  store i16 %239, ptr %cookie450, align 1
  br label %sw.epilog453

sw.bb451:                                         ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #9
  %241 = call i16 @llvm.bswap.i16(i16 %cookie)
  %cookie452 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 22, i32 0, i32 3
  %242 = ptrtoint ptr %cookie452 to i32
  call void @__asan_storeN_noabort(i32 %242, i32 2)
  store i16 %241, ptr %cookie452, align 1
  br label %sw.epilog453

sw.epilog453:                                     ; preds = %sw.bb451, %sw.bb449, %sw.bb447, %if.end444.sw.epilog453_crit_edge
  br i1 %14, label %if.then455, label %sw.epilog453.if.end458_crit_edge

sw.epilog453.if.end458_crit_edge:                 ; preds = %sw.epilog453
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end458

if.then455:                                       ; preds = %sw.epilog453
  call void @__sanitizer_cov_trace_pc() #9
  %call456 = call fastcc zeroext i16 @b43_generate_tx_phy_ctl1(ptr noundef %dev, i8 noundef zeroext %cond727)
  %243 = call i16 @llvm.bswap.i16(i16 %call456)
  %phy_ctl1 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 4
  %244 = ptrtoint ptr %phy_ctl1 to i32
  call void @__asan_storeN_noabort(i32 %244, i32 2)
  store i16 %243, ptr %phy_ctl1, align 1
  %call457 = call fastcc zeroext i16 @b43_generate_tx_phy_ctl1(ptr noundef %dev, i8 noundef zeroext %conv26)
  %245 = call i16 @llvm.bswap.i16(i16 %call457)
  %phy_ctl1_fb = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 5
  %246 = ptrtoint ptr %phy_ctl1_fb to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 %245, ptr %phy_ctl1_fb, align 1
  br label %if.end458

if.end458:                                        ; preds = %if.then455, %sw.epilog453.if.end458_crit_edge
  %247 = call i32 @llvm.bswap.i32(i32 %mac_ctl.8)
  %248 = ptrtoint ptr %_txhdr to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 %247, ptr %_txhdr, align 1
  %249 = call i16 @llvm.bswap.i16(i16 %phy_ctl.2)
  %phy_ctl460 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 3
  %250 = ptrtoint ptr %phy_ctl460 to i32
  call void @__asan_storeN_noabort(i32 %250, i32 2)
  store i16 %249, ptr %phy_ctl460, align 1
  %extra_ft461 = getelementptr inbounds %struct.b43_txhdr, ptr %_txhdr, i32 0, i32 10
  %251 = ptrtoint ptr %extra_ft461 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %extra_ft.3, ptr %extra_ft461, align 1
  br label %cleanup462

cleanup462:                                       ; preds = %if.end458, %if.end78.cleanup462_crit_edge
  %retval.1 = phi i32 [ 0, %if.end458 ], [ -126, %if.end78.cleanup462_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @b43_ieee80211_antenna_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ctstoself_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rts_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @b43_generate_tx_phy_ctl1(ptr nocapture noundef readonly %dev, i8 noundef zeroext %bitrate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %bitrate, label %entry.b43_tx_legacy_rate_phy_ctl_ent.exit_crit_edge [
    i8 2, label %entry.land.lhs.true_crit_edge
    i8 4, label %entry.land.lhs.true_crit_edge38
    i8 11, label %entry.land.lhs.true_crit_edge39
    i8 22, label %entry.land.lhs.true_crit_edge40
    i8 12, label %entry.cleanup.fold.split30.i_crit_edge
    i8 18, label %entry.cleanup.fold.split31.i_crit_edge
    i8 24, label %entry.if.then12_crit_edge
    i8 36, label %cleanup.fold.split33.i
    i8 48, label %cleanup.fold.split34.i
    i8 72, label %cleanup.fold.split35.i
    i8 96, label %cleanup.fold.split36.i
    i8 108, label %cleanup.fold.split37.i
  ]

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

entry.cleanup.fold.split31.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.fold.split31.i

entry.cleanup.fold.split30.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.fold.split30.i

entry.land.lhs.true_crit_edge40:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge39:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge38:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.b43_tx_legacy_rate_phy_ctl_ent.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_tx_legacy_rate_phy_ctl_ent.exit

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge38, %entry.land.lhs.true_crit_edge39, %entry.land.lhs.true_crit_edge40
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %cmp6.not = icmp eq i8 %2, 5
  br i1 %cmp6.not, label %if.else9, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else9:                                         ; preds = %land.lhs.true
  %3 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %bitrate, label %if.else9.b43_tx_legacy_rate_phy_ctl_ent.exit_crit_edge [
    i8 2, label %if.else9.if.then12_crit_edge
    i8 4, label %cleanup.fold.split.i
    i8 11, label %cleanup.fold.split28.i
    i8 22, label %cleanup.fold.split29.i
    i8 12, label %if.else9.cleanup.fold.split30.i_crit_edge
    i8 18, label %if.else9.cleanup.fold.split31.i_crit_edge
  ]

if.else9.cleanup.fold.split31.i_crit_edge:        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.fold.split31.i

if.else9.cleanup.fold.split30.i_crit_edge:        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.fold.split30.i

if.else9.if.then12_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.else9.b43_tx_legacy_rate_phy_ctl_ent.exit_crit_edge: ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43_tx_legacy_rate_phy_ctl_ent.exit

cleanup.fold.split.i:                             ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split28.i:                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split29.i:                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split30.i:                           ; preds = %if.else9.cleanup.fold.split30.i_crit_edge, %entry.cleanup.fold.split30.i_crit_edge
  br label %if.then12

cleanup.fold.split31.i:                           ; preds = %if.else9.cleanup.fold.split31.i_crit_edge, %entry.cleanup.fold.split31.i_crit_edge
  br label %if.then12

cleanup.fold.split33.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split34.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split35.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split36.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

cleanup.fold.split37.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

b43_tx_legacy_rate_phy_ctl_ent.exit:              ; preds = %if.else9.b43_tx_legacy_rate_phy_ctl_ent.exit_crit_edge, %entry.b43_tx_legacy_rate_phy_ctl_ent.exit_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef null) #7
  br label %if.end24

if.then12:                                        ; preds = %cleanup.fold.split37.i, %cleanup.fold.split36.i, %cleanup.fold.split35.i, %cleanup.fold.split34.i, %cleanup.fold.split33.i, %cleanup.fold.split31.i, %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split.i, %if.else9.if.then12_crit_edge, %entry.if.then12_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 11), %cleanup.fold.split37.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 10), %cleanup.fold.split36.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 9), %cleanup.fold.split35.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 8), %cleanup.fold.split34.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 7), %cleanup.fold.split33.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 5), %cleanup.fold.split31.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 4), %cleanup.fold.split30.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 3), %cleanup.fold.split29.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 2), %cleanup.fold.split28.i ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 1), %cleanup.fold.split.i ], [ @b43_tx_legacy_rate_phy_ctl, %if.else9.if.then12_crit_edge ], [ getelementptr inbounds ([12 x %struct.b43_tx_legacy_rate_phy_ctl_entry], ptr @b43_tx_legacy_rate_phy_ctl, i32 0, i32 6), %entry.if.then12_crit_edge ]
  %coding_rate = getelementptr inbounds %struct.b43_tx_legacy_rate_phy_ctl_entry, ptr %retval.0.i.ph, i32 0, i32 1
  %4 = ptrtoint ptr %coding_rate to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %coding_rate, align 2
  %modulation = getelementptr inbounds %struct.b43_tx_legacy_rate_phy_ctl_entry, ptr %retval.0.i.ph, i32 0, i32 2
  %6 = ptrtoint ptr %modulation to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %modulation, align 2
  %8 = or i16 %5, %7
  %or1833 = or i16 %8, 2
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %b43_tx_legacy_rate_phy_ctl_ent.exit, %land.lhs.true.if.end24_crit_edge
  %control.1 = phi i16 [ 2, %land.lhs.true.if.end24_crit_edge ], [ %or1833, %if.then12 ], [ 2, %b43_tx_legacy_rate_phy_ctl_ent.exit ]
  ret i16 %control.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_rx(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readonly %_rxhdr) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %status) #7
  %0 = call ptr @memset(ptr %status, i32 0, i32 48)
  %phy_status0 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 2
  %1 = ptrtoint ptr %phy_status0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %phy_status0, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = shl i16 %6, 8
  %hdr_format = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %8 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdr_format, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %9, label %entry.if.then_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge444
  ]

entry.sw.bb1_crit_edge444:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac_status = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %mac_status to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %mac_status, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %mac_time = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 6, i32 0, i32 3
  %14 = ptrtoint ptr %mac_time to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %mac_time, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %channel = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 6, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge444
  %17 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %17, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %mac_time3 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %mac_time3 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %mac_time3, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %channel4 = getelementptr inbounds %struct.anon.168, ptr %17, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %channel4.sink = phi ptr [ %channel4, %sw.bb1 ], [ %channel, %sw.bb ]
  %mactime.0 = phi i16 [ %23, %sw.bb1 ], [ %16, %sw.bb ]
  %macstat.0 = phi i32 [ %20, %sw.bb1 ], [ %13, %sw.bb ]
  %24 = ptrtoint ptr %channel4.sink to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %channel4.sink, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %and = and i32 %macstat.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %sw.epilog.if.then_crit_edge, !prof !22

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %entry.if.then_crit_edge
  %chanstat.0435 = phi i16 [ %26, %sw.epilog.if.then_crit_edge ], [ -1, %entry.if.then_crit_edge ]
  %macstat.0433 = phi i32 [ %macstat.0, %sw.epilog.if.then_crit_edge ], [ -1, %entry.if.then_crit_edge ]
  %mactime.0431 = phi i16 [ %mactime.0, %sw.epilog.if.then_crit_edge ], [ -1, %entry.if.then_crit_edge ]
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %27 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wl, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.b43_wl, ptr %28, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dot11FCSErrorCount, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %dot11FCSErrorCount, align 8
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %31 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flag, align 8
  %or = or i32 %32, 32
  store i32 %or, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %chanstat.0436 = phi i16 [ %chanstat.0435, %if.then ], [ %26, %sw.epilog.if.end_crit_edge ]
  %macstat.0434 = phi i32 [ %macstat.0433, %if.then ], [ %macstat.0, %sw.epilog.if.end_crit_edge ]
  %mactime.0432 = phi i16 [ %mactime.0431, %if.then ], [ %mactime.0, %sw.epilog.if.end_crit_edge ]
  %conv = zext i16 %3 to i32
  %and7 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %if.then15, !prof !22

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flag16 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %33 = ptrtoint ptr %flag16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flag16, align 8
  %or17 = or i32 %34, 64
  store i32 %or17, ptr %flag16, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %and20 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %35 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enc_flags, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %enc_flags, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %and27 = and i32 %macstat.0434, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.drop_crit_edge

if.end26.drop_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end30:                                         ; preds = %if.end26
  %and31 = lshr i32 %macstat.0434, 1
  %38 = and i32 %and31, 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %add = add nuw nsw i32 %38, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add)
  %cmp = icmp ult i32 %40, %add
  br i1 %cmp, label %if.then40, label %if.end42, !prof !23

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %wl41 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %wl41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wl41, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %42, ptr noundef nonnull @.str.1) #7
  br label %drop

if.end42:                                         ; preds = %if.end30
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 %38
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #7
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %46)
  %cmp45 = icmp ult i32 %46, 14
  br i1 %cmp45, label %if.then53, label %if.end55, !prof !23

if.then53:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %wl54 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %47 = ptrtoint ptr %wl54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wl54, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %48, ptr noundef nonnull @.str.2) #7
  br label %drop

if.end55:                                         ; preds = %if.end42
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 2
  %and57 = and i32 %macstat.0434, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end113_crit_edge, label %if.then59

if.end55.if.end113_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then59:                                        ; preds = %if.end55
  %and60 = lshr i32 %macstat.0434, 5
  %53 = trunc i32 %and60 to i8
  %conv61 = and i8 %53, 63
  %rev.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 4
  %54 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 351, i16 %55)
  %cmp.i.i = icmp ult i16 %55, 351
  %add.i = add nuw nsw i8 %conv61, 4
  %raw_kidx.0.i = select i1 %cmp.i.i, i8 %add.i, i8 %conv61
  %conv63 = zext i8 %raw_kidx.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %raw_kidx.0.i)
  %cmp64 = icmp ugt i8 %raw_kidx.0.i, 57
  br i1 %cmp64, label %do.end, label %if.then59.if.end84_crit_edge, !prof !23

if.then59.if.end84_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

do.end:                                           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 705, i32 noundef 9, ptr noundef null) #7
  br label %if.end84

if.end84:                                         ; preds = %do.end, %if.then59.if.end84_crit_edge
  %algorithm = getelementptr %struct.b43_wldev, ptr %dev, i32 0, i32 23, i32 %conv63, i32 1
  %56 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %algorithm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp92.not = icmp eq i8 %57, 0
  br i1 %cmp92.not, label %if.end84.if.end113_crit_edge, label %if.then94

if.end84.if.end113_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then94:                                        ; preds = %if.end84
  %call95 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %52) #10
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  %add97 = add i32 %call95, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add97)
  %cmp98 = icmp ult i32 %59, %add97
  br i1 %cmp98, label %cleanup, label %if.end108, !prof !23

if.end108:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %flag109 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %60 = ptrtoint ptr %flag109 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flag109, align 8
  %or110 = or i32 %61, 2
  store i32 %or110, ptr %flag109, align 8
  br label %if.end113

cleanup:                                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %wl107 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %62 = ptrtoint ptr %wl107 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wl107, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %63, ptr noundef nonnull @.str.3) #7
  br label %drop

if.end113:                                        ; preds = %if.end108, %if.end84.if.end113_crit_edge, %if.end55.if.end113_crit_edge
  %conv114 = zext i16 %chanstat.0436 to i32
  %and115 = and i32 %conv114, 7
  %64 = zext i32 %and115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and115, label %if.end113.sw.epilog185_crit_edge [
    i32 7, label %sw.bb116
    i32 4, label %sw.bb138
    i32 1, label %if.end113.sw.bb176_crit_edge
    i32 2, label %if.end113.sw.bb176_crit_edge445
    i32 5, label %if.end113.sw.bb176_crit_edge446
  ]

if.end113.sw.bb176_crit_edge446:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb176

if.end113.sw.bb176_crit_edge445:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb176

if.end113.sw.bb176_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb176

if.end113.sw.epilog185_crit_edge:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog185

sw.bb116:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %65 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 4
  %phy_ht_power0 = getelementptr inbounds %struct.anon.162, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %phy_ht_power0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %phy_ht_power0, align 1
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %4, align 1
  %70 = tail call i8 @llvm.smax.i8(i8 %67, i8 %69)
  %phy_ht_power2 = getelementptr inbounds %struct.anon.165, ptr %4, i32 0, i32 1
  %71 = ptrtoint ptr %phy_ht_power2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %phy_ht_power2, align 1
  %73 = tail call i8 @llvm.smax.i8(i8 %70, i8 %72)
  br label %sw.epilog185.sink.split

sw.bb138:                                         ; preds = %if.end113
  %74 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 3
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %76, label %if.else [
    i8 16, label %sw.bb138.if.then146_crit_edge
    i8 32, label %sw.bb138.if.then146_crit_edge447
  ]

sw.bb138.if.then146_crit_edge447:                 ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then146

sw.bb138.if.then146_crit_edge:                    ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then146

if.then146:                                       ; preds = %sw.bb138.if.then146_crit_edge, %sw.bb138.if.then146_crit_edge447
  %power1 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 3, i32 0, i32 1
  %78 = ptrtoint ptr %power1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %power1, align 1
  %80 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  %83 = tail call i8 @llvm.smax.i8(i8 %79, i8 %82)
  br label %sw.epilog185.sink.split

if.else:                                          ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #9
  %power1161 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 3, i32 0, i32 1
  %84 = ptrtoint ptr %power1161 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %power1161, align 1
  %86 = tail call i8 @llvm.smax.i8(i8 %76, i8 %85)
  br label %sw.epilog185.sink.split

sw.bb176:                                         ; preds = %if.end113.sw.bb176_crit_edge, %if.end113.sw.bb176_crit_edge445, %if.end113.sw.bb176_crit_edge446
  %87 = getelementptr inbounds %struct.b43_rxhdr_fw4, ptr %_rxhdr, i32 0, i32 3
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %90 = and i16 %7, 1024
  %91 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %radio_ver.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %94 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %radio_ver.i, align 2
  %96 = zext i16 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %95, label %sw.default.i [
    i16 8272, label %sw.bb.i
    i16 8288, label %sw.bb65.i
  ]

sw.bb.i:                                          ; preds = %sw.bb176
  %and178 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool.not.i = icmp eq i32 %and178, 0
  br i1 %tobool.not.i, label %if.else9.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  %conv2.i = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp.i = icmp slt i8 %89, 0
  %sub.i = or i32 %conv2.i, 65280
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %conv2.i
  %97 = trunc i32 %spec.select.i to i16
  %div.lhs.trunc.i = mul i16 %97, 73
  %div123.i = sdiv i16 %div.lhs.trunc.i, 64
  %div.sext124.i = zext i16 %div123.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool5.not.i = icmp eq i16 %90, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i418 = add nuw nsw i32 %div.sext124.i, 25
  br label %b43_rssi_postprocess.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub7.i = add nsw i32 %div.sext124.i, -3
  br label %b43_rssi_postprocess.exit

if.else9.i:                                       ; preds = %sw.bb.i
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %99, i32 0, i32 23
  %100 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus_sprom.i, align 4
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %101, i32 0, i32 70
  %102 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %boardflags_lo.i, align 4
  %104 = and i16 %103, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool12.not.i = icmp eq i16 %104, 0
  br i1 %tobool12.not.i, label %if.else49.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else9.i
  %105 = tail call i8 @llvm.umin.i8(i8 %89, i8 63) #7
  %type.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %106 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %107)
  %cmp20.not.i = icmp eq i8 %107, 2
  br i1 %cmp20.not.i, label %if.then13.i.if.end36.i_crit_edge, label %do.end.i, !prof !22

if.then13.i.if.end36.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef null) #7
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.i, %if.then13.i.if.end36.i_crit_edge
  %idxprom.i = zext i8 %105 to i32
  %arrayidx.i = getelementptr %struct.b43_phy_g, ptr %93, i32 0, i32 27, i32 %idxprom.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i, align 1
  %conv44.i = sext i8 %109 to i16
  %sub45.i = sub nsw i16 31, %conv44.i
  %mul46.i = mul nsw i16 %sub45.i, -131
  %div47122.i = sdiv i16 %mul46.i, 128
  %narrow.i = add nsw i16 %div47122.i, -57
  %sub48125.i = zext i16 %narrow.i to i32
  br label %if.end55.i

if.else49.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv50.i = zext i8 %89 to i32
  %sub51.i = sub nsw i32 31, %conv50.i
  %mul52.i = mul nsw i32 %sub51.i, -149
  %div53.i = sdiv i32 %mul52.i, 128
  %sub54.i = add nsw i32 %div53.i, -68
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else49.i, %if.end36.i
  %tmp.1.i = phi i32 [ %sub48125.i, %if.end36.i ], [ %sub54.i, %if.else49.i ]
  %type56.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %110 = ptrtoint ptr %type56.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %type56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp58.i = icmp ne i8 %111, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool60.not.i = icmp eq i16 %90, 0
  %or.cond.i = or i1 %tobool60.not.i, %cmp58.i
  %add62.i = add nsw i32 %tmp.1.i, 25
  %spec.select119.i = select i1 %or.cond.i, i32 %tmp.1.i, i32 %add62.i
  br label %b43_rssi_postprocess.exit

sw.bb65.i:                                        ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #9
  %conv66.i = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp67.i = icmp slt i8 %89, 0
  %sub71.i = or i32 %conv66.i, -256
  %spec.select120.i = select i1 %cmp67.i, i32 %sub71.i, i32 %conv66.i
  br label %b43_rssi_postprocess.exit

sw.default.i:                                     ; preds = %sw.bb176
  %and180 = and i32 %conv, 16384
  %conv75.i = zext i8 %89 to i16
  %112 = mul nuw nsw i16 %conv75.i, 103
  %mul77.i = add nsw i16 %112, -1133
  %div78121.i = sdiv i16 %mul77.i, 64
  %div78.sext126.i = zext i16 %div78121.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool79.not.i = icmp eq i32 %and180, 0
  br i1 %tobool79.not.i, label %if.else82.i, label %if.then80.i

if.then80.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub81.i = add nsw i32 %div78.sext126.i, -109
  br label %b43_rssi_postprocess.exit

if.else82.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub83.i = add nsw i32 %div78.sext126.i, -83
  br label %b43_rssi_postprocess.exit

b43_rssi_postprocess.exit:                        ; preds = %if.else82.i, %if.then80.i, %sw.bb65.i, %if.end55.i, %if.else.i, %if.then6.i
  %tmp.2.i = phi i32 [ %sub81.i, %if.then80.i ], [ %sub83.i, %if.else82.i ], [ %add.i418, %if.then6.i ], [ %sub7.i, %if.else.i ], [ %spec.select119.i, %if.end55.i ], [ %spec.select120.i, %sw.bb65.i ]
  %conv85.i = trunc i32 %tmp.2.i to i8
  br label %sw.epilog185.sink.split

sw.epilog185.sink.split:                          ; preds = %b43_rssi_postprocess.exit, %if.else, %if.then146, %sw.bb116
  %.sink442 = phi i8 [ %83, %if.then146 ], [ %86, %if.else ], [ %conv85.i, %b43_rssi_postprocess.exit ], [ %73, %sw.bb116 ]
  %signal159 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 13
  %113 = ptrtoint ptr %signal159 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %.sink442, ptr %signal159, align 2
  br label %sw.epilog185

sw.epilog185:                                     ; preds = %sw.epilog185.sink.split, %if.end113.sw.epilog185_crit_edge
  %and187 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.else198, label %if.then189

if.then189:                                       ; preds = %sw.epilog185
  %and191 = lshr i32 %conv114, 9
  %114 = and i32 %and191, 4
  %115 = xor i32 %114, 4
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %add.ptr, align 1
  %118 = and i8 %117, 15
  %and.i = zext i8 %118 to i32
  %119 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and.i, label %if.then189.if.then209_crit_edge [
    i32 11, label %if.then189.if.end215_crit_edge
    i32 15, label %sw.bb1.i
    i32 10, label %sw.bb3.i
    i32 14, label %sw.bb5.i
    i32 9, label %sw.bb7.i
    i32 13, label %sw.bb9.i
    i32 8, label %sw.bb11.i
    i32 12, label %sw.bb13.i
  ]

if.then189.if.end215_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

if.then189.if.then209_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then209

sw.bb1.i:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add2.i = or i32 %115, 1
  br label %if.end215

sw.bb3.i:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add4.i = or i32 %115, 2
  br label %if.end215

sw.bb5.i:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add6.i = or i32 %115, 3
  br label %if.end215

sw.bb7.i:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i = add nuw nsw i32 %115, 4
  br label %if.end215

sw.bb9.i:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add10.i = add nuw nsw i32 %115, 5
  br label %if.end215

sw.bb11.i:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add12.i = add nuw nsw i32 %115, 6
  br label %if.end215

sw.bb13.i:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %add14.i = add nuw nsw i32 %115, 7
  br label %if.end215

if.else198:                                       ; preds = %sw.epilog185
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %add.ptr, align 1
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %121, label %if.else198.if.then209_crit_edge [
    i8 10, label %if.else198.if.end215_crit_edge
    i8 20, label %sw.bb1.i419
    i8 55, label %sw.bb2.i
    i8 110, label %sw.bb3.i420
  ]

if.else198.if.end215_crit_edge:                   ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

if.else198.if.then209_crit_edge:                  ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then209

sw.bb1.i419:                                      ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

sw.bb2.i:                                         ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

sw.bb3.i420:                                      ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

if.then209:                                       ; preds = %if.else198.if.then209_crit_edge, %if.then189.if.then209_crit_edge
  %wl210 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %123 = ptrtoint ptr %wl210 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wl210, align 4
  %filter_flags = getelementptr inbounds %struct.b43_wl, ptr %124, i32 0, i32 10
  %125 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %filter_flags, align 4
  %and211 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.then209.drop_crit_edge, label %if.then209.if.end215_crit_edge

if.then209.if.end215_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

if.then209.drop_crit_edge:                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end215:                                        ; preds = %if.then209.if.end215_crit_edge, %sw.bb3.i420, %sw.bb2.i, %sw.bb1.i419, %if.else198.if.end215_crit_edge, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %if.then189.if.end215_crit_edge
  %rate_idx.0440 = phi i32 [ -1, %if.then209.if.end215_crit_edge ], [ 0, %if.else198.if.end215_crit_edge ], [ 1, %sw.bb1.i419 ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i420 ], [ %115, %if.then189.if.end215_crit_edge ], [ %add2.i, %sw.bb1.i ], [ %add4.i, %sw.bb3.i ], [ %add6.i, %sw.bb5.i ], [ %add8.i, %sw.bb7.i ], [ %add10.i, %sw.bb9.i ], [ %add12.i, %sw.bb11.i ], [ %add14.i, %sw.bb13.i ]
  %conv216 = trunc i32 %rate_idx.0440 to i8
  %rate_idx217 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %127 = ptrtoint ptr %rate_idx217 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv216, ptr %rate_idx217, align 1
  %128 = trunc i16 %3 to i8
  %129 = lshr i8 %128, 5
  %130 = and i8 %129, 1
  %antenna = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 12
  %131 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %antenna, align 1
  %132 = and i16 %52, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %132)
  %cmp.i423 = icmp eq i16 %132, -32768
  br i1 %cmp.i423, label %if.end215.if.then232_crit_edge, label %lor.lhs.false228

if.end215.if.then232_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then232

lor.lhs.false228:                                 ; preds = %if.end215
  %wl229 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %133 = ptrtoint ptr %wl229 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wl229, align 4
  %radiotap_enabled = getelementptr inbounds %struct.b43_wl, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %radiotap_enabled to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %radiotap_enabled, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool230.not = icmp eq i8 %136, 0
  br i1 %tobool230.not, label %lor.lhs.false228.if.end251_crit_edge, label %lor.lhs.false228.if.then232_crit_edge

lor.lhs.false228.if.then232_crit_edge:            ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then232

lor.lhs.false228.if.end251_crit_edge:             ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

if.then232:                                       ; preds = %lor.lhs.false228.if.then232_crit_edge, %if.end215.if.then232_crit_edge
  call void @b43_tsf_read(ptr noundef %dev, ptr noundef nonnull %status) #7
  %137 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %status, align 8
  %conv235 = trunc i64 %138 to i32
  %and237 = and i64 %138, -65536
  %conv239 = zext i16 %mactime.0432 to i64
  %add241 = or i64 %and237, %conv239
  %conv242 = and i32 %conv235, 65535
  %conv243 = zext i16 %mactime.0432 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv242, i32 %conv243)
  %cmp244.not = icmp ugt i32 %conv242, %conv243
  %sub = add i64 %add241, -65536
  %spec.select = select i1 %cmp244.not, i64 %add241, i64 %sub
  %139 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %spec.select, ptr %status, align 8
  %flag249 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %140 = ptrtoint ptr %flag249 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flag249, align 8
  %or250 = or i32 %141, 128
  store i32 %or250, ptr %flag249, align 8
  br label %if.end251

if.end251:                                        ; preds = %if.then232, %lor.lhs.false228.if.end251_crit_edge
  %and253 = lshr i16 %chanstat.0436, 3
  %142 = and i16 %and253, 255
  %143 = zext i32 %and115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and115, label %do.end312 [
    i32 2, label %sw.bb258
    i32 4, label %if.end251.sw.bb280_crit_edge
    i32 5, label %if.end251.sw.bb280_crit_edge448
    i32 7, label %if.end251.sw.bb280_crit_edge449
  ]

if.end251.sw.bb280_crit_edge449:                  ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280

if.end251.sw.bb280_crit_edge448:                  ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280

if.end251.sw.bb280_crit_edge:                     ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb280

sw.bb258:                                         ; preds = %if.end251
  %band = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %144 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %band, align 4
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 4
  %145 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 507, i16 %146)
  %cmp261 = icmp ugt i16 %146, 507
  br i1 %cmp261, label %if.then263, label %if.else269

if.then263:                                       ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #9
  %conv264 = zext i16 %142 to i32
  %call.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv264, i32 noundef 0) #7
  %div.i = udiv i32 %call.i, 1000
  %conv268 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %147 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %147)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv268, 3
  %bf.clear = and i16 %bf.load, 7
  br label %sw.epilog326

if.else269:                                       ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #9
  %freq273 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %148 = ptrtoint ptr %freq273 to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load274 = load i16, ptr %freq273, align 4
  %narrow = shl nuw nsw i16 %142, 3
  %bf.shl276 = add nuw nsw i16 %narrow, 19200
  %bf.clear277 = and i16 %bf.load274, 7
  br label %sw.epilog326

sw.bb280:                                         ; preds = %if.end251.sw.bb280_crit_edge, %if.end251.sw.bb280_crit_edge448, %if.end251.sw.bb280_crit_edge449
  %and282 = lshr i16 %chanstat.0436, 11
  %149 = trunc i16 %and282 to i8
  %150 = and i8 %149, 1
  %151 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %150, ptr %151, align 4
  %conv289 = zext i16 %142 to i32
  %conv291 = zext i8 %150 to i32
  %call.i424 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv289, i32 noundef %conv291) #7
  %div.i425 = udiv i32 %call.i424, 1000
  %conv293 = trunc i32 %div.i425 to i16
  %freq294 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %153 = ptrtoint ptr %freq294 to i32
  call void @__asan_load2_noabort(i32 %153)
  %bf.load295 = load i16, ptr %freq294, align 4
  %bf.shl297 = shl i16 %conv293, 3
  %bf.clear298 = and i16 %bf.load295, 7
  br label %sw.epilog326

do.end312:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 802, i32 noundef 9, ptr noundef null) #7
  br label %drop

sw.epilog326:                                     ; preds = %sw.bb280, %if.else269, %if.then263
  %bf.clear.sink = phi i16 [ %bf.clear, %if.then263 ], [ %bf.shl276, %if.else269 ], [ %bf.clear298, %sw.bb280 ]
  %bf.shl.sink = phi i16 [ %bf.shl, %if.then263 ], [ %bf.clear277, %if.else269 ], [ %bf.shl297, %sw.bb280 ]
  %freq.sink = phi ptr [ %freq, %if.then263 ], [ %freq273, %if.else269 ], [ %freq294, %sw.bb280 ]
  %bf.set = or i16 %bf.shl.sink, %bf.clear.sink
  %154 = ptrtoint ptr %freq.sink to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %bf.set, ptr %freq.sink, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %155 = call ptr @memcpy(ptr %cb.i, ptr %status, i32 48)
  %wl328 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %156 = ptrtoint ptr %wl328 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wl328, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  call fastcc void @local_bh_disable() #7
  call void @ieee80211_rx_napi(ptr noundef %159, ptr noundef null, ptr noundef %skb, ptr noundef null) #7
  call fastcc void @local_bh_enable() #7
  %rx_count = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 30
  %160 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rx_count, align 4
  %inc329 = add i32 %161, 1
  store i32 %inc329, ptr %rx_count, align 4
  br label %cleanup330

drop:                                             ; preds = %do.end312, %if.then209.drop_crit_edge, %cleanup, %if.then53, %if.then40, %if.end26.drop_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup330

cleanup330:                                       ; preds = %drop, %sw.epilog326
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %status) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_tsf_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_handle_txstatus(ptr noundef %dev, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_debugfs_log_txstat(ptr noundef %dev, ptr noundef %status) #7
  %intermediate = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 7
  %0 = ptrtoint ptr %intermediate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %intermediate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %for_ampdu = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 8
  %2 = ptrtoint ptr %for_ampdu to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %for_ampdu, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  %acked = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 9
  %4 = ptrtoint ptr %acked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %acked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %ieee_stats = getelementptr inbounds %struct.b43_wl, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %ieee_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ieee_stats, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %ieee_stats, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %rts_count = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 4
  %10 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rts_count, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %11, label %if.else [
    i8 0, label %if.end6.if.end19_crit_edge
    i8 15, label %if.then11
  ]

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %wl12 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %wl12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl12, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.b43_wl, ptr %14, i32 0, i32 11, i32 1
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %wl15 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %wl15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wl15, align 4
  %dot11RTSSuccessCount = getelementptr inbounds %struct.b43_wl, ptr %16, i32 0, i32 11, i32 3
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else, %if.then11
  %dot11RTSFailureCount.sink37 = phi ptr [ %dot11RTSFailureCount, %if.then11 ], [ %dot11RTSSuccessCount, %if.else ]
  %17 = ptrtoint ptr %dot11RTSFailureCount.sink37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dot11RTSFailureCount.sink37, align 4
  %inc14 = add i32 %18, 1
  store i32 %inc14, ptr %dot11RTSFailureCount.sink37, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.end6.if.end19_crit_edge
  %__using_pio_transfers.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 12
  %19 = ptrtoint ptr %__using_pio_transfers.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %__using_pio_transfers.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not = icmp eq i8 %20, 0
  br i1 %tobool.i.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43_pio_handle_txstatus(ptr noundef %dev, ptr noundef %status) #7
  br label %if.end22

if.else21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43_dma_handle_txstatus(ptr noundef %dev, ptr noundef %status) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  tail call void @b43_phy_txpower_check(ptr noundef %dev, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %if.end22, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_debugfs_log_txstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_pio_handle_txstatus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_dma_handle_txstatus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_txpower_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @b43_fill_txstatus_report(ptr nocapture noundef readonly %dev, ptr nocapture noundef %report, ptr nocapture noundef readonly %status) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %report, i32 0, i32 2
  %count = getelementptr %struct.ieee80211_tx_rate, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.clear.i = and i16 %bf.load, 2047
  store i16 %bf.clear.i, ptr %count, align 1
  %count.1.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.ieee80211_tx_info, ptr %report, i32 0, i32 2, i32 1, i32 2
  %4 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.ieee80211_tx_info, ptr %report, i32 0, i32 2, i32 1, i32 4
  %5 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %acked = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 9
  %6 = ptrtoint ptr %acked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %acked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %9, 512
  %10 = ptrtoint ptr %report to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %report, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %frame_success.0.off0 = phi i1 [ true, %if.then ], [ %tobool2.not, %if.else ]
  %frame_count = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 3
  %11 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %frame_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %if.then7, label %if.else12

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %bf.load11 = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load11, 2047
  store i16 %bf.clear, ptr %count, align 1
  br label %if.end73

if.else12:                                        ; preds = %if.end4
  %rts_count = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 4
  %14 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rts_count, align 2
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %short_frame_max_tx_count, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %21)
  %cmp15 = icmp ugt i8 %15, %21
  br i1 %cmp15, label %if.then17, label %if.else32

if.then17:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load21 = load i16, ptr %count, align 1
  %bf.clear22 = and i16 %bf.load21, 2047
  store i16 %bf.clear22, ptr %count, align 1
  %23 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %frame_count, align 1
  %bf.value = zext i8 %24 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.set31 = or i16 %bf.shl, %bf.clear.1.i
  %25 = ptrtoint ptr %count.1.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %bf.set31, ptr %count.1.i, align 1
  br label %if.end73

if.else32:                                        ; preds = %if.else12
  %26 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr, i16 %26)
  %cmp35 = icmp ult i16 %bf.lshr, %26
  %27 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load42 = load i16, ptr %count, align 1
  br i1 %cmp35, label %if.then37, label %if.else58

if.then37:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %bf.shl44 = and i16 %bf.load, -2048
  %bf.clear45 = and i16 %bf.load42, 2047
  %bf.set46 = or i16 %bf.clear45, %bf.shl44
  %28 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %bf.set46, ptr %count, align 1
  %29 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %frame_count, align 1
  %conv48 = zext i8 %30 to i16
  %sub = sub nsw i16 %conv48, %bf.lshr
  %bf.shl55 = shl i16 %sub, 11
  %bf.set57 = or i16 %bf.shl55, %bf.clear.1.i
  %31 = ptrtoint ptr %count.1.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %bf.set57, ptr %count.1.i, align 1
  br label %if.end73

if.else58:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %bf.shl66 = shl i16 %26, 11
  %bf.clear67 = and i16 %bf.load42, 2047
  %bf.set68 = or i16 %bf.clear67, %bf.shl66
  %32 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %bf.set68, ptr %count, align 1
  %arrayidx70 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %arrayidx70, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.else58, %if.then37, %if.then17, %if.then7
  ret i1 %frame_success.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_tx_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio_transfers.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %__using_pio_transfers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio_transfers.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43_pio_tx_suspend(ptr noundef %dev) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43_dma_tx_suspend(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_pio_tx_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_dma_tx_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_tx_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio_transfers.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %__using_pio_transfers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio_transfers.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43_pio_tx_resume(ptr noundef %dev) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43_dma_tx_resume(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_pio_tx_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_dma_tx_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p1k_iv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/xmit.c", i32 108, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/xmit.c", i32 682, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/xmit.c", i32 689, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/xmit.c", i32 711, i32 12}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @b43_tx_legacy_rate_phy_ctl, !12, !"b43_tx_legacy_rate_phy_ctl", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43/xmit.c", i32 22, i32 54}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i8 0, i8 2}
