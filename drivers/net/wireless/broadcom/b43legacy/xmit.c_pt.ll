; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/xmit.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.148 }
%union.anon.148 = type { %struct.anon.152, [32 x i8] }
%struct.anon.152 = type { i64 }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.134, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.131, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.132, %struct.anon.133, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.131 = type { i8, i16, i16 }
%struct.anon.132 = type { i16, i16, i16, i16 }
%struct.anon.133 = type { i16 }
%union.anon.134 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.135, i32 }
%union.anon.135 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.127, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.127 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.126, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.126 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.b43legacy_txhdr_fw3 = type <{ i32, i16, i16, i16, [16 x i8], [6 x i8], i16, %struct.b43legacy_plcp_hdr4, i16, %struct.b43legacy_plcp_hdr4, i16, [2 x i8], i16, i16, %struct.b43legacy_plcp_hdr6, [18 x i8], %struct.b43legacy_plcp_hdr6 }>
%struct.b43legacy_plcp_hdr4 = type { %union.anon }
%union.anon = type { i32 }
%struct.b43legacy_plcp_hdr6 = type { %union.anon.155 }
%union.anon.155 = type <{ i32, [2 x i8] }>
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.b43legacy_rxhdr_fw3 = type { i16, [2 x i8], i16, i8, i8, [2 x i8], i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.136, %struct.spinlock, i32, %union.anon.137, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.139, %struct.anon.140, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.139 = type { i8, i8, i8, i8 }
%struct.anon.140 = type { %struct.anon.141, %struct.anon.142 }
%struct.anon.141 = type { i8, i8, i8, i8, i8 }
%struct.anon.142 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.143, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.143 = type { ptr }
%struct.b43legacy_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.b43legacy_hwtxstatus = type { [4 x i8], i16, i8, i8, [2 x i8], i16, i8, [1 x i8] }

@b43legacy_plcp_get_ratecode_cck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016b43legacy: Test (%s) failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"b43legacy_plcp_get_ratecode_cck\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/broadcom/b43legacy/xmit.c\00", [49 x i8] zeroinitializer }, align 32
@b43legacy_plcp_get_ratecode_cck._entry_ptr = internal global ptr @b43legacy_plcp_get_ratecode_cck._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@b43legacy_plcp_get_ratecode_ofdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"b43legacy_plcp_get_ratecode_ofdm\00", [63 x i8] zeroinitializer }, align 32
@b43legacy_plcp_get_ratecode_ofdm._entry_ptr = internal global ptr @b43legacy_plcp_get_ratecode_ofdm._entry, section ".printk_index", align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: Packet size underrun (1)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: Packet size underrun (2)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX: Packet size underrun3\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX: Packet size underrun4\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unexpected value for chanstat (0x%X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX: Packet dropped\0A\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@b43legacy_calc_fallback_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"b43legacy_calc_fallback_rate\00", [35 x i8] zeroinitializer }, align 32
@b43legacy_calc_fallback_rate._entry_ptr = internal global ptr @b43legacy_calc_fallback_rate._entry, section ".printk_index", align 4
@b43legacy_plcp_get_bitrate_idx_ofdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"b43legacy_plcp_get_bitrate_idx_ofdm\00", [60 x i8] zeroinitializer }, align 32
@b43legacy_plcp_get_bitrate_idx_ofdm._entry_ptr = internal global ptr @b43legacy_plcp_get_bitrate_idx_ofdm._entry, section ".printk_index", align 4
@b43legacy_plcp_get_bitrate_idx_cck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"b43legacy_plcp_get_bitrate_idx_cck\00", [61 x i8] zeroinitializer }, align 32
@b43legacy_plcp_get_bitrate_idx_cck._entry_ptr = internal global ptr @b43legacy_plcp_get_bitrate_idx_cck._entry, section ".printk_index", align 4
@switch.table.b43legacy_rx = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A\08\06\04\0B\09\07\05", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 8, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.16 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.20 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 8272, i64 8288]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 15]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 15]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 83, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 107, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 453, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 460, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 489, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 505, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 559, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 569, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 2737, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 170, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 67, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [50 x i8] c"../drivers/net/wireless/broadcom/b43legacy/xmit.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 39, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"switch.table.b43legacy_rx\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @b43legacy_calc_fallback_rate._entry, ptr @b43legacy_calc_fallback_rate._entry_ptr, ptr @b43legacy_plcp_get_bitrate_idx_cck._entry, ptr @b43legacy_plcp_get_bitrate_idx_cck._entry_ptr, ptr @b43legacy_plcp_get_bitrate_idx_ofdm._entry, ptr @b43legacy_plcp_get_bitrate_idx_ofdm._entry_ptr, ptr @b43legacy_plcp_get_ratecode_cck._entry, ptr @b43legacy_plcp_get_ratecode_cck._entry_ptr, ptr @b43legacy_plcp_get_ratecode_ofdm._entry, ptr @b43legacy_plcp_get_ratecode_ofdm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.b43legacy_rx], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_plcp_get_ratecode_cck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_plcp_get_ratecode_ofdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_calc_fallback_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_plcp_get_bitrate_idx_ofdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_plcp_get_bitrate_idx_cck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43legacy_rx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext %bitrate) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i8 [ 110, %sw.bb3 ], [ 55, %sw.bb2 ], [ 20, %sw.bb1 ], [ 10, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext %bitrate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

return:                                           ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i8 [ 12, %sw.bb7 ], [ 8, %sw.bb6 ], [ 13, %sw.bb5 ], [ 9, %sw.bb4 ], [ 14, %sw.bb3 ], [ 10, %sw.bb2 ], [ 15, %sw.bb1 ], [ 11, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_generate_plcp_hdr(ptr nocapture noundef %plcp, i16 noundef zeroext %octets, i8 noundef zeroext %bitrate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %bitrate, label %do.end.i [
    i8 2, label %entry.if.else_crit_edge
    i8 4, label %entry.if.else_crit_edge82
    i8 11, label %entry.if.else_crit_edge83
    i8 22, label %entry.if.else_crit_edge84
    i8 12, label %entry.b43legacy_plcp_get_ratecode_ofdm.exit_crit_edge
    i8 18, label %sw.bb1.i
    i8 24, label %sw.bb2.i
    i8 36, label %sw.bb3.i
    i8 48, label %sw.bb4.i
    i8 72, label %sw.bb5.i
    i8 96, label %sw.bb6.i
    i8 108, label %sw.bb7.i
  ]

entry.b43legacy_plcp_get_ratecode_ofdm.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

entry.if.else_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_ofdm.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

b43legacy_plcp_get_ratecode_ofdm.exit:            ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.b43legacy_plcp_get_ratecode_ofdm.exit_crit_edge
  %retval.0.i = phi i8 [ 12, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 13, %sw.bb5.i ], [ 9, %sw.bb4.i ], [ 14, %sw.bb3.i ], [ 10, %sw.bb2.i ], [ 15, %sw.bb1.i ], [ 11, %entry.b43legacy_plcp_get_ratecode_ofdm.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %octets)
  %tobool4.not = icmp ult i16 %octets, 4096
  br i1 %tobool4.not, label %b43legacy_plcp_get_ratecode_ofdm.exit.if.end_crit_edge, label %do.end, !prof !49

b43legacy_plcp_get_ratecode_ofdm.exit.if.end_crit_edge: ; preds = %b43legacy_plcp_get_ratecode_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %b43legacy_plcp_get_ratecode_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 121, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %b43legacy_plcp_get_ratecode_ofdm.exit.if.end_crit_edge
  %shl = shl i16 %octets, 5
  %conv26 = zext i8 %retval.0.i to i16
  %or = or i16 %shl, %conv26
  %conv28 = zext i16 %or to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv28)
  %2 = ptrtoint ptr %plcp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %plcp, align 4
  br label %if.end55

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge82, %entry.if.else_crit_edge83, %entry.if.else_crit_edge84
  %conv = zext i8 %bitrate to i32
  %conv29 = zext i16 %octets to i32
  %mul = shl nuw nsw i32 %conv29, 4
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %mul.frozen, %conv
  %3 = mul i32 %div, %conv
  %rem.decomposed = sub i32 %mul.frozen, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %if.else.if.end50_crit_edge, label %if.then35

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then35:                                        ; preds = %if.else
  %inc = add nuw nsw i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %bitrate)
  %cmp37 = icmp eq i8 %bitrate, 22
  br i1 %cmp37, label %land.lhs.true, label %if.then35.if.end50_crit_edge

if.then35.if.end50_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then35
  %mul40 = shl nuw nsw i32 %conv29, 3
  %rem41 = urem i32 %mul40, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem41)
  %cmp42 = icmp ult i32 %rem41, 4
  br i1 %cmp42, label %if.end50.thread, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %plcp, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -124, ptr %arrayidx, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %6 = lshr i32 %5, 16
  %7 = ptrtoint ptr %plcp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %plcp, align 4
  %or5281 = or i32 %8, %6
  store i32 %or5281, ptr %plcp, align 4
  br label %sw.bb3.i75

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.then35.if.end50_crit_edge, %if.else.if.end50_crit_edge
  %plen.0 = phi i32 [ %inc, %land.lhs.true.if.end50_crit_edge ], [ %inc, %if.then35.if.end50_crit_edge ], [ %div, %if.else.if.end50_crit_edge ]
  %arrayidx46 = getelementptr i8, ptr %plcp, i32 1
  %9 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx46, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %plen.0)
  %11 = lshr i32 %10, 16
  %12 = ptrtoint ptr %plcp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %plcp, align 4
  %or52 = or i32 %11, %13
  store i32 %or52, ptr %plcp, align 4
  %14 = zext i8 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %bitrate, label %do.end.i77 [
    i8 2, label %if.end50.b43legacy_plcp_get_ratecode_cck.exit_crit_edge
    i8 4, label %sw.bb1.i73
    i8 11, label %sw.bb2.i74
    i8 22, label %if.end50.sw.bb3.i75_crit_edge
  ]

if.end50.sw.bb3.i75_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i75

if.end50.b43legacy_plcp_get_ratecode_cck.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_cck.exit

sw.bb1.i73:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_cck.exit

sw.bb2.i74:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_plcp_get_ratecode_cck.exit

sw.bb3.i75:                                       ; preds = %if.end50.sw.bb3.i75_crit_edge, %if.end50.thread
  br label %b43legacy_plcp_get_ratecode_cck.exit

do.end.i77:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

b43legacy_plcp_get_ratecode_cck.exit:             ; preds = %sw.bb3.i75, %sw.bb2.i74, %sw.bb1.i73, %if.end50.b43legacy_plcp_get_ratecode_cck.exit_crit_edge
  %retval.0.i78 = phi i8 [ 110, %sw.bb3.i75 ], [ 55, %sw.bb2.i74 ], [ 20, %sw.bb1.i73 ], [ 10, %if.end50.b43legacy_plcp_get_ratecode_cck.exit_crit_edge ]
  %15 = ptrtoint ptr %plcp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i78, ptr %plcp, align 1
  br label %if.end55

if.end55:                                         ; preds = %b43legacy_plcp_get_ratecode_cck.exit, %if.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_generate_txhdr(ptr nocapture noundef readonly %dev, ptr noundef %txhdr, ptr noundef %fragment_data, i32 noundef %fragment_len, ptr noundef %info, i16 noundef zeroext %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %hw_key.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %1 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_key.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %3 = call ptr @memset(ptr %txhdr, i32 0, i32 82)
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i = icmp slt i8 %5, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b49.i.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i, label %land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge, label %if.then.i.i, !prof !49

land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_tx_rate.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2737, i32 noundef 9, ptr noundef null) #7
  br label %ieee80211_get_tx_rate.exit.i

if.end39.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl.i, align 4
  %hw.i = getelementptr inbounds %struct.b43legacy_wl, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i.i, align 8
  %band.i.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 29
  %arrayidx40.i.i = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 %bf.lshr.i.i
  %13 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx40.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitrates.i.i, align 4
  %idxprom51.i.i = zext i8 %5 to i32
  %arrayidx44.i.i = getelementptr %struct.ieee80211_rate, ptr %16, i32 %idxprom51.i.i
  br label %ieee80211_get_tx_rate.exit.i

ieee80211_get_tx_rate.exit.i:                     ; preds = %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx44.i.i, %if.end39.i.i ], [ null, %if.then.i.i ], [ null, %land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge ]
  %hw_value.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hw_value.i, align 2
  %conv.i = trunc i16 %18 to i8
  %conv.mask.i = and i16 %18, 255
  %19 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %conv.i, label %lor.rhs.i.i.i [
    i8 2, label %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge
    i8 4, label %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge1
    i8 11, label %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge2
  ]

ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge2: ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit.i

ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge1: ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit.i

ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge: ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit.i

lor.rhs.i.i.i:                                    ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %conv.mask.i)
  %cmp4.i.i.i = icmp ne i16 %conv.mask.i, 22
  %phi.cast.i = zext i1 %cmp4.i.i.i to i16
  %phi.bo.i = or i16 %phi.cast.i, 768
  br label %b43legacy_is_ofdm_rate.exit.i

b43legacy_is_ofdm_rate.exit.i:                    ; preds = %lor.rhs.i.i.i, %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge, %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge1, %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge2
  %20 = phi i16 [ 768, %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge ], [ %phi.bo.i, %lor.rhs.i.i.i ], [ 768, %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge1 ], [ 768, %ieee80211_get_tx_rate.exit.i.b43legacy_is_ofdm_rate.exit.i_crit_edge2 ]
  %arrayidx.i.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i349.i = icmp slt i8 %22, 0
  br i1 %cmp.i349.i, label %b43legacy_is_ofdm_rate.exit.i.ieee80211_get_alt_retry_rate.exit.i_crit_edge, label %if.end.i.i

b43legacy_is_ofdm_rate.exit.i.ieee80211_get_alt_retry_rate.exit.i_crit_edge: ; preds = %b43legacy_is_ofdm_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_alt_retry_rate.exit.i

if.end.i.i:                                       ; preds = %b43legacy_is_ofdm_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl.i, align 4
  %hw5.i = getelementptr inbounds %struct.b43legacy_wl, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %hw5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw5.i, align 4
  %conv1.i.i = zext i8 %22 to i32
  %wiphy.i350.i = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy.i350.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy.i350.i, align 8
  %band.i351.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %band.i351.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i352.i = load i32, ptr %band.i351.i, align 4
  %bf.lshr.i353.i = lshr i32 %bf.load.i352.i, 29
  %arrayidx3.i.i = getelementptr %struct.wiphy, ptr %28, i32 0, i32 53, i32 %bf.lshr.i353.i
  %30 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3.i.i, align 4
  %bitrates.i354.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bitrates.i354.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitrates.i354.i, align 4
  %arrayidx8.i.i = getelementptr %struct.ieee80211_rate, ptr %33, i32 %conv1.i.i
  br label %ieee80211_get_alt_retry_rate.exit.i

ieee80211_get_alt_retry_rate.exit.i:              ; preds = %if.end.i.i, %b43legacy_is_ofdm_rate.exit.i.ieee80211_get_alt_retry_rate.exit.i_crit_edge
  %retval.0.i355.i = phi ptr [ %arrayidx8.i.i, %if.end.i.i ], [ null, %b43legacy_is_ofdm_rate.exit.i.ieee80211_get_alt_retry_rate.exit.i_crit_edge ]
  %tobool7.not.i = icmp eq ptr %retval.0.i355.i, null
  %spec.select.i = select i1 %tobool7.not.i, ptr %retval.0.i.i, ptr %retval.0.i355.i
  %hw_value8.i = getelementptr inbounds %struct.ieee80211_rate, ptr %spec.select.i, i32 0, i32 2
  %34 = ptrtoint ptr %hw_value8.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hw_value8.i, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %35, label %lor.rhs.i.i358.i [
    i16 2, label %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge
    i16 4, label %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge3
    i16 11, label %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge4
  ]

ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge4: ; preds = %ieee80211_get_alt_retry_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit359.i

ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge3: ; preds = %ieee80211_get_alt_retry_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit359.i

ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge: ; preds = %ieee80211_get_alt_retry_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit359.i

lor.rhs.i.i358.i:                                 ; preds = %ieee80211_get_alt_retry_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %35)
  %cmp4.i.i356.i = icmp ne i16 %35, 22
  %phi.cast.i357.i = zext i1 %cmp4.i.i356.i to i32
  br label %b43legacy_is_ofdm_rate.exit359.i

b43legacy_is_ofdm_rate.exit359.i:                 ; preds = %lor.rhs.i.i358.i, %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge, %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge3, %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge4
  %37 = phi i32 [ 0, %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge ], [ %phi.cast.i357.i, %lor.rhs.i.i358.i ], [ 0, %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge3 ], [ 0, %ieee80211_get_alt_retry_rate.exit.i.b43legacy_is_ofdm_rate.exit359.i_crit_edge4 ]
  %38 = ptrtoint ptr %fragment_data to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fragment_data, align 2
  %mac_frame_ctl.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 1
  %40 = ptrtoint ptr %mac_frame_ctl.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %mac_frame_ctl.i, align 1
  %tx_receiver.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 5
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %fragment_data, i32 0, i32 2
  %41 = call ptr @memcpy(ptr %tx_receiver.i, ptr %addr1.i, i32 6)
  %42 = ptrtoint ptr %hw_value8.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hw_value8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %conv.mask.i)
  %cmp.i = icmp eq i16 %43, %conv.mask.i
  br i1 %cmp.i, label %b43legacy_is_ofdm_rate.exit359.i.if.then.i_crit_edge, label %lor.lhs.false.i

b43legacy_is_ofdm_rate.exit359.i.if.then.i_crit_edge: ; preds = %b43legacy_is_ofdm_rate.exit359.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %b43legacy_is_ofdm_rate.exit359.i
  %duration_id.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %fragment_data, i32 0, i32 1
  %44 = ptrtoint ptr %duration_id.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %duration_id.i, align 2
  %46 = and i16 %45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool17.not.i = icmp ne i16 %46, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp21.i = icmp eq i16 %45, 0
  %or.cond.i = or i1 %cmp21.i, %tobool17.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %b43legacy_is_ofdm_rate.exit359.i.if.then.i_crit_edge
  %duration_id23.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %fragment_data, i32 0, i32 1
  %47 = ptrtoint ptr %duration_id23.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %duration_id23.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wl.i, align 4
  %hw25.i = getelementptr inbounds %struct.b43legacy_wl, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %hw25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw25.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %53 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vif.i, align 8
  %band.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %55 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %call26.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %52, ptr noundef %54, i32 noundef %bf.lshr.i, i32 noundef %fragment_len, ptr noundef %spec.select.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call26.sink.i = phi i16 [ %call26.i, %if.else.i ], [ %48, %if.then.i ]
  %dur_fb27.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 10
  %56 = ptrtoint ptr %dur_fb27.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %call26.sink.i, ptr %dur_fb27.i, align 1
  %add.i = add i32 %fragment_len, 4
  br i1 %tobool.not.i, label %if.end.i.if.end90.i_crit_edge, label %if.then29.i

if.end.i.if.end90.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then29.i:                                      ; preds = %if.end.i
  %57 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_key.i, align 4
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hw_key_idx.i, align 2
  %conv31.i = zext i8 %60 to i32
  %max_nr_keys.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 26
  %61 = ptrtoint ptr %max_nr_keys.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_nr_keys.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp33.not.i = icmp ult i8 %60, %62
  br i1 %cmp33.not.i, label %if.then29.i.if.end52.i_crit_edge, label %do.end.i, !prof !49

if.then29.i.if.end52.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

do.end.i:                                         ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end.i, %if.then29.i.if.end52.i_crit_edge
  %enabled.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 27, i32 %conv31.i, i32 1
  %63 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enabled.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool60.not.i = icmp eq i8 %64, 0
  br i1 %tobool60.not.i, label %if.end52.i.generate_txhdr_fw3.exit_crit_edge, label %cleanup.i

if.end52.i.generate_txhdr_fw3.exit_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generate_txhdr_fw3.exit

cleanup.i:                                        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_key.i, align 4
  %icv_len.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %icv_len.i, align 4
  %conv63.i = zext i8 %68 to i32
  %add64.i = add i32 %add.i, %conv63.i
  %rev.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 4
  %69 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 351, i16 %70)
  %cmp.i.i.i = icmp ult i16 %70, 351
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp.i360.i = icmp ugt i8 %60, 3
  %or.cond.i.i = and i1 %cmp.i360.i, %cmp.i.i.i
  %sub.i.i = add i8 %60, -4
  %firmware_kidx.0.i.i = select i1 %or.cond.i.i, i8 %sub.i.i, i8 %60
  %conv66.i = zext i8 %firmware_kidx.0.i.i to i32
  %shl.i = shl nuw nsw i32 %conv66.i, 20
  %algorithm.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 27, i32 %conv31.i, i32 2
  %71 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %algorithm.i, align 1
  %conv68.i = zext i8 %72 to i32
  %shl69.i = shl nuw nsw i32 %conv68.i, 16
  %and70.i = and i32 %shl69.i, 458752
  %or71.i = or i32 %shl.i, %and70.i
  %73 = ptrtoint ptr %fragment_data to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fragment_data, align 2
  %call73.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %74) #11
  %iv_len75.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %66, i32 0, i32 3
  %75 = ptrtoint ptr %iv_len75.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iv_len75.i, align 1
  %77 = tail call i8 @llvm.umin.i8(i8 %76, i8 16) #7
  %cond83.i = zext i8 %77 to i32
  %iv.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 4
  %add.ptr.i = getelementptr i8, ptr %fragment_data, i32 %call73.i
  %78 = call ptr @memcpy(ptr %iv.i, ptr %add.ptr.i, i32 %cond83.i)
  br label %if.end90.i

if.end90.i:                                       ; preds = %cleanup.i, %if.end.i.if.end90.i_crit_edge
  %plcp_fragment_len.1.i = phi i32 [ %add64.i, %cleanup.i ], [ %add.i, %if.end.i.if.end90.i_crit_edge ]
  %mac_ctl.1.i = phi i32 [ %or71.i, %cleanup.i ], [ 0, %if.end.i.if.end90.i_crit_edge ]
  %plcp.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 16
  %conv91.i = trunc i32 %plcp_fragment_len.1.i to i16
  tail call void @b43legacy_generate_plcp_hdr(ptr noundef %plcp.i, i16 noundef zeroext %conv91.i, i8 noundef zeroext %conv.i) #7
  %plcp_fb.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 9
  %79 = ptrtoint ptr %hw_value8.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %hw_value8.i, align 2
  %conv94.i = trunc i16 %80 to i8
  tail call void @b43legacy_generate_plcp_hdr(ptr noundef %plcp_fb.i, i16 noundef zeroext %conv91.i, i8 noundef zeroext %conv94.i) #7
  %flags.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %0, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %bf.load103.i = load i16, ptr %flags.i, align 1
  %82 = shl i16 %bf.load103.i, 2
  %83 = and i16 %82, 16
  %84 = or i16 %83, %20
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %info, align 8
  %and118.i = lshr i32 %86, 2
  %87 = and i32 %and118.i, 1
  %88 = xor i32 %87, 1
  %and124.i = shl i32 %86, 3
  %89 = and i32 %and124.i, 16
  %and130.i = lshr i32 %86, 1
  %90 = and i32 %and130.i, 8
  %91 = or i32 %89, %mac_ctl.1.i
  %92 = or i32 %91, %90
  %93 = or i32 %92, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool135.not.i = icmp eq i32 %37, 0
  %or137.i = or i32 %93, 256
  %mac_ctl.5.i = select i1 %tobool135.not.i, i32 %93, i32 %or137.i
  %bf.clear142.i = and i16 %bf.load103.i, 2047
  %94 = and i16 %bf.load103.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool145.not.i = icmp eq i16 %94, 0
  br i1 %tobool145.not.i, label %lor.lhs.false146.i, label %if.end90.i.if.then156.i_crit_edge

if.end90.i.if.then156.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156.i

lor.lhs.false146.i:                               ; preds = %if.end90.i
  %bf.lshr149.i = lshr i16 %bf.load103.i, 11
  %95 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wl.i, align 4
  %hw152.i = getelementptr inbounds %struct.b43legacy_wl, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %hw152.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw152.i, align 4
  %long_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %long_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %long_frame_max_tx_count.i, align 1
  %101 = zext i8 %100 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr149.i, i16 %101)
  %cmp154.not.i = icmp ugt i16 %bf.lshr149.i, %101
  br i1 %cmp154.not.i, label %if.else167.i, label %lor.lhs.false146.i.if.then156.i_crit_edge

lor.lhs.false146.i.if.then156.i_crit_edge:        ; preds = %lor.lhs.false146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156.i

if.then156.i:                                     ; preds = %lor.lhs.false146.i.if.then156.i_crit_edge, %if.end90.i.if.then156.i_crit_edge
  %102 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wl.i, align 4
  %hw158.i = getelementptr inbounds %struct.b43legacy_wl, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %hw158.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw158.i, align 4
  %long_frame_max_tx_count160.i = getelementptr inbounds %struct.ieee80211_conf, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %long_frame_max_tx_count160.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %long_frame_max_tx_count160.i, align 1
  %bf.value.i = zext i8 %107 to i16
  %bf.shl.i = shl i16 %bf.value.i, 11
  %bf.set.i = or i16 %bf.shl.i, %bf.clear142.i
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %bf.set.i, ptr %flags.i, align 1
  %or166.i = or i32 %mac_ctl.5.i, 2
  br label %if.end179.i

if.else167.i:                                     ; preds = %lor.lhs.false146.i
  call void @__sanitizer_cov_trace_pc() #9
  %short_frame_max_tx_count.i = getelementptr inbounds %struct.ieee80211_conf, ptr %98, i32 0, i32 6
  %109 = ptrtoint ptr %short_frame_max_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %short_frame_max_tx_count.i, align 8
  %bf.value175.i = zext i8 %110 to i16
  %bf.shl176.i = shl i16 %bf.value175.i, 11
  %bf.set178.i = or i16 %bf.shl176.i, %bf.clear142.i
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %bf.set178.i, ptr %flags.i, align 1
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else167.i, %if.then156.i
  %mac_ctl.6.i = phi i32 [ %or166.i, %if.then156.i ], [ %mac_ctl.5.i, %if.else167.i ]
  %112 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %bf.load182.i = load i16, ptr %flags.i, align 1
  %113 = and i16 %bf.load182.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %if.end179.i.if.end237.i_crit_edge, label %if.then195.i

if.end179.i.if.end237.i_crit_edge:                ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237.i

if.then195.i:                                     ; preds = %if.end179.i
  %115 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wl.i, align 4
  %hw197.i = getelementptr inbounds %struct.b43legacy_wl, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %hw197.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw197.i, align 4
  %rts_cts_rate_idx.i.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 4
  %119 = ptrtoint ptr %rts_cts_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %rts_cts_rate_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp.i361.i = icmp slt i8 %120, 0
  br i1 %cmp.i361.i, label %if.then195.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge, label %if.end.i369.i

if.then195.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge: ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_rts_cts_rate.exit.i

if.end.i369.i:                                    ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i.i = zext i8 %120 to i32
  %wiphy.i362.i = getelementptr inbounds %struct.ieee80211_hw, ptr %118, i32 0, i32 1
  %121 = ptrtoint ptr %wiphy.i362.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wiphy.i362.i, align 8
  %band.i363.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %123 = ptrtoint ptr %band.i363.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load.i364.i = load i32, ptr %band.i363.i, align 4
  %bf.lshr.i365.i = lshr i32 %bf.load.i364.i, 29
  %arrayidx.i366.i = getelementptr %struct.wiphy, ptr %122, i32 0, i32 53, i32 %bf.lshr.i365.i
  %124 = ptrtoint ptr %arrayidx.i366.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i366.i, align 4
  %bitrates.i367.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %bitrates.i367.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bitrates.i367.i, align 4
  %arrayidx3.i368.i = getelementptr %struct.ieee80211_rate, ptr %127, i32 %conv6.i.i
  br label %ieee80211_get_rts_cts_rate.exit.i

ieee80211_get_rts_cts_rate.exit.i:                ; preds = %if.end.i369.i, %if.then195.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge
  %retval.0.i370.i = phi ptr [ %arrayidx3.i368.i, %if.end.i369.i ], [ null, %if.then195.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge ]
  %hw_value199.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i370.i, i32 0, i32 2
  %128 = ptrtoint ptr %hw_value199.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %hw_value199.i, align 2
  %conv201.i = trunc i16 %129 to i8
  %130 = zext i8 %conv201.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %conv201.i, label %do.end.i.i [
    i8 2, label %ieee80211_get_rts_cts_rate.exit.i._crit_edge
    i8 4, label %ieee80211_get_rts_cts_rate.exit.i._crit_edge5
    i8 11, label %sw.bb2.i.i
    i8 22, label %sw.bb3.i.i
    i8 12, label %sw.bb4.i.i
    i8 18, label %ieee80211_get_rts_cts_rate.exit.i.b43legacy_is_ofdm_rate.exit373.thread.i_crit_edge
    i8 24, label %sw.bb6.i.i
    i8 36, label %sw.bb7.i.i
    i8 48, label %sw.bb8.i.i
    i8 72, label %sw.bb9.i.i
    i8 96, label %sw.bb10.i.i
    i8 108, label %sw.bb11.i.i
  ]

ieee80211_get_rts_cts_rate.exit.i.b43legacy_is_ofdm_rate.exit373.thread.i_crit_edge: ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

ieee80211_get_rts_cts_rate.exit.i._crit_edge5:    ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %131

ieee80211_get_rts_cts_rate.exit.i._crit_edge:     ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %131

sw.bb2.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %131

sw.bb3.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %131

sw.bb4.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %131

sw.bb6.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

sw.bb7.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

sw.bb8.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

sw.bb9.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

sw.bb10.i.i:                                      ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

sw.bb11.i.i:                                      ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_is_ofdm_rate.exit373.thread.i

do.end.i.i:                                       ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

b43legacy_is_ofdm_rate.exit373.thread.i:          ; preds = %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %ieee80211_get_rts_cts_rate.exit.i.b43legacy_is_ofdm_rate.exit373.thread.i_crit_edge
  %retval.0.i371378.ph.i = phi i8 [ 96, %sw.bb11.i.i ], [ 72, %sw.bb10.i.i ], [ 48, %sw.bb9.i.i ], [ 36, %sw.bb8.i.i ], [ 24, %sw.bb7.i.i ], [ 18, %sw.bb6.i.i ], [ 12, %ieee80211_get_rts_cts_rate.exit.i.b43legacy_is_ofdm_rate.exit373.thread.i_crit_edge ]
  %or207387.i = or i32 %mac_ctl.6.i, 512
  br label %131

131:                                              ; preds = %b43legacy_is_ofdm_rate.exit373.thread.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %ieee80211_get_rts_cts_rate.exit.i._crit_edge, %ieee80211_get_rts_cts_rate.exit.i._crit_edge5
  %retval.0.i371378388.i = phi i8 [ %retval.0.i371378.ph.i, %b43legacy_is_ofdm_rate.exit373.thread.i ], [ 2, %ieee80211_get_rts_cts_rate.exit.i._crit_edge ], [ 2, %ieee80211_get_rts_cts_rate.exit.i._crit_edge5 ], [ 4, %sw.bb2.i.i ], [ 11, %sw.bb3.i.i ], [ 11, %sw.bb4.i.i ]
  %132 = phi i32 [ %or207387.i, %b43legacy_is_ofdm_rate.exit373.thread.i ], [ %mac_ctl.6.i, %ieee80211_get_rts_cts_rate.exit.i._crit_edge ], [ %mac_ctl.6.i, %ieee80211_get_rts_cts_rate.exit.i._crit_edge5 ], [ %mac_ctl.6.i, %sw.bb2.i.i ], [ %mac_ctl.6.i, %sw.bb3.i.i ], [ %mac_ctl.6.i, %sw.bb4.i.i ]
  %133 = and i16 %bf.load182.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool215.not.i = icmp eq i16 %133, 0
  %vif225.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %134 = ptrtoint ptr %vif225.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %vif225.i, align 8
  %rts_frame226.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 15
  br i1 %tobool215.not.i, label %if.else222.i, label %if.then216.i

if.then216.i:                                     ; preds = %131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_ctstoself_get(ptr noundef %118, ptr noundef %135, ptr noundef %fragment_data, i32 noundef %fragment_len, ptr noundef %info, ptr noundef %rts_frame226.i) #7
  br label %if.end229.i

if.else222.i:                                     ; preds = %131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_rts_get(ptr noundef %118, ptr noundef %135, ptr noundef %fragment_data, i32 noundef %fragment_len, ptr noundef %info, ptr noundef %rts_frame226.i) #7
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.else222.i, %if.then216.i
  %.sink.i = phi i32 [ 4, %if.else222.i ], [ 1024, %if.then216.i ]
  %len.0.i = phi i16 [ 20, %if.else222.i ], [ 14, %if.then216.i ]
  %or228.i = or i32 %.sink.i, %132
  %rts_plcp.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 14
  tail call void @b43legacy_generate_plcp_hdr(ptr noundef %rts_plcp.i, i16 noundef zeroext %len.0.i, i8 noundef zeroext %conv201.i) #7
  %rts_plcp_fb.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 7
  tail call void @b43legacy_generate_plcp_hdr(ptr noundef %rts_plcp_fb.i, i16 noundef zeroext %len.0.i, i8 noundef zeroext %retval.0.i371378388.i) #7
  %duration_id236.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 15, i32 2
  %136 = ptrtoint ptr %duration_id236.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %duration_id236.i, align 2
  %rts_dur_fb.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 8
  %138 = ptrtoint ptr %rts_dur_fb.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %137, ptr %rts_dur_fb.i, align 1
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.end229.i, %if.end179.i.if.end237.i_crit_edge
  %mac_ctl.9.i = phi i32 [ %or228.i, %if.end229.i ], [ %mac_ctl.6.i, %if.end179.i.if.end237.i_crit_edge ]
  %139 = tail call i16 @llvm.bswap.i16(i16 %cookie) #7
  %cookie238.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 12
  %140 = ptrtoint ptr %cookie238.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %139, ptr %cookie238.i, align 1
  %141 = tail call i32 @llvm.bswap.i32(i32 %mac_ctl.9.i) #7
  %142 = ptrtoint ptr %txhdr to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %141, ptr %txhdr, align 1
  %143 = tail call i16 @llvm.bswap.i16(i16 %84) #7
  %phy_ctl240.i = getelementptr inbounds %struct.b43legacy_txhdr_fw3, ptr %txhdr, i32 0, i32 3
  %144 = ptrtoint ptr %phy_ctl240.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 %143, ptr %phy_ctl240.i, align 1
  br label %generate_txhdr_fw3.exit

generate_txhdr_fw3.exit:                          ; preds = %if.end237.i, %if.end52.i.generate_txhdr_fw3.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end237.i ], [ -126, %if.end52.i.generate_txhdr_fw3.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_rx(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readonly %_rxhdr) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %status) #7
  %0 = call ptr @memset(ptr %status, i32 0, i32 48)
  %phy_status0 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %_rxhdr, i32 0, i32 2
  %1 = ptrtoint ptr %phy_status0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %phy_status0, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %phy_status3 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %_rxhdr, i32 0, i32 6
  %4 = ptrtoint ptr %phy_status3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %phy_status3, align 1
  %6 = shl i16 %5, 8
  %jssi1 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %_rxhdr, i32 0, i32 3
  %7 = ptrtoint ptr %jssi1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %jssi1, align 1
  %mac_status = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %_rxhdr, i32 0, i32 7
  %9 = ptrtoint ptr %mac_status to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %mac_status, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %11 to i32
  %mac_time = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %_rxhdr, i32 0, i32 8
  %12 = ptrtoint ptr %mac_time to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %mac_time, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %channel = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %_rxhdr, i32 0, i32 9
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %channel, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wl, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.b43legacy_wl, ptr %19, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dot11FCSErrorCount, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %dot11FCSErrorCount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = lshr i32 %conv, 1
  %22 = and i32 %and2, 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %add = add nuw nsw i32 %22, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp = icmp ult i32 %24, %add
  br i1 %cmp, label %if.then7, label %if.end9, !prof !52

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wl8 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %25 = ptrtoint ptr %wl8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wl8, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %26, ptr noundef nonnull @.str.5) #7
  br label %drop

if.end9:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %22
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #7
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %30)
  %cmp12 = icmp ult i32 %30, 14
  br i1 %cmp12, label %if.then20, label %if.end22, !prof !52

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %wl21 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %31 = ptrtoint ptr %wl21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wl21, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %32, ptr noundef nonnull @.str.6) #7
  br label %drop

if.end22:                                         ; preds = %if.end9
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  %37 = and i32 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %if.then28, label %if.end22.if.end147_crit_edge

if.end22.if.end147_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then28:                                        ; preds = %if.end22
  %and29 = lshr i16 %11, 5
  %39 = trunc i16 %and29 to i8
  %conv30 = and i8 %39, 63
  %rev.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 4
  %40 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 351, i16 %41)
  %cmp.i.i = icmp ult i16 %41, 351
  %add.i = add nuw nsw i8 %conv30, 4
  %raw_kidx.0.i = select i1 %cmp.i.i, i8 %add.i, i8 %conv30
  %conv32 = zext i8 %raw_kidx.0.i to i32
  %max_nr_keys = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 26
  %42 = ptrtoint ptr %max_nr_keys to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_nr_keys, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %raw_kidx.0.i, i8 %43)
  %cmp34.not = icmp ult i8 %raw_kidx.0.i, %43
  br i1 %cmp34.not, label %if.then28.if.end54_crit_edge, label %do.end, !prof !49

if.then28.if.end54_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end:                                           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef null) #7
  br label %if.end54

if.end54:                                         ; preds = %do.end, %if.then28.if.end54_crit_edge
  %algorithm = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 27, i32 %conv32, i32 2
  %44 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %algorithm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp62.not = icmp eq i8 %45, 0
  br i1 %cmp62.not, label %if.end54.if.end147_crit_edge, label %if.then64

if.end54.if.end147_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then64:                                        ; preds = %if.end54
  %46 = and i16 %36, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.i.not = icmp eq i16 %46, 0
  br i1 %cmp.i.not, label %do.end84, label %if.then64.if.end90_crit_edge, !prof !52

if.then64.if.end90_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.end84:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 483, i32 noundef 9, ptr noundef null) #7
  br label %if.end90

if.end90:                                         ; preds = %do.end84, %if.then64.if.end90_crit_edge
  %47 = and i16 %36, -65
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %34, align 2
  %call102 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %47) #11
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %add104 = add i32 %call102, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add104)
  %cmp105 = icmp ult i32 %50, %add104
  br i1 %cmp105, label %if.then113, label %if.end115, !prof !52

if.then113:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %wl114 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %51 = ptrtoint ptr %wl114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wl114, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %52, ptr noundef nonnull @.str.7) #7
  br label %drop

if.end115:                                        ; preds = %if.end90
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %arrayidx118 = getelementptr i8, ptr %54, i32 %add104
  %55 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx118, align 1
  %57 = and i8 %56, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool121.not = icmp eq i8 %57, 0
  %. = select i1 %tobool121.not, i32 4, i32 8
  %reass.add = shl nuw nsw i32 %., 1
  %add126 = add i32 %reass.add, %call102
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add126)
  %cmp127 = icmp ult i32 %50, %add126
  br i1 %cmp127, label %if.then135, label %if.end137, !prof !52

if.then135:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %wl136 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %58 = ptrtoint ptr %wl136 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wl136, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %59, ptr noundef nonnull @.str.8) #7
  br label %drop

if.end137:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr139 = getelementptr i8, ptr %54, i32 %.
  %60 = call ptr @memmove(ptr %add.ptr139, ptr %54, i32 %call102)
  %call141 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %.) #7
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %sub = sub i32 %62, %.
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #7
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %63 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flag, align 8
  %or = or i32 %64, 2
  store i32 %or, ptr %flag, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.end137, %if.end54.if.end147_crit_edge, %if.end22.if.end147_crit_edge
  %fctl.2 = phi i16 [ %36, %if.end22.if.end147_crit_edge ], [ %36, %if.end54.if.end147_crit_edge ], [ %47, %if.end137 ]
  %conv148 = zext i16 %3 to i32
  %and149 = and i32 %conv148, 1
  %65 = and i16 %6, 1024
  %radio_ver.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %66 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %radio_ver.i, align 4
  %68 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %67, label %sw.default.i [
    i16 8272, label %sw.bb.i
    i16 8288, label %sw.bb39.i
  ]

sw.bb.i:                                          ; preds = %if.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool.not.i = icmp eq i32 %and149, 0
  br i1 %tobool.not.i, label %if.else9.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i290 = icmp slt i8 %8, 0
  %sub.i = or i32 %conv2.i, 65280
  %spec.select.i = select i1 %cmp.i290, i32 %sub.i, i32 %conv2.i
  %69 = trunc i32 %spec.select.i to i16
  %div.lhs.trunc.i = mul i16 %69, 73
  %div95.i = sdiv i16 %div.lhs.trunc.i, 64
  %div.sext96.i = trunc i16 %div95.i to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool5.not.i = icmp eq i16 %65, 0
  %tmp.2.i.ph.v = select i1 %tobool5.not.i, i8 -3, i8 25
  %tmp.2.i.ph = add i8 %tmp.2.i.ph.v, %div.sext96.i
  %signal302 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 13
  %70 = ptrtoint ptr %signal302 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %tmp.2.i.ph, ptr %signal302, align 2
  br label %if.then158

if.else9.i:                                       ; preds = %sw.bb.i
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus.i, align 4
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_bus, ptr %74, i32 0, i32 22, i32 70
  %75 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %boardflags_lo.i, align 4
  %77 = and i16 %76, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool12.not.i = icmp eq i16 %77, 0
  br i1 %tobool12.not.i, label %if.else24.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = tail call i8 @llvm.umin.i8(i8 %8, i8 63) #7
  %idxprom.i = zext i8 %78 to i32
  %arrayidx.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 38, i32 %idxprom.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i, align 1
  %conv19.i = sext i8 %80 to i16
  %sub20.i = sub nsw i16 31, %conv19.i
  %mul21.i = mul nsw i16 %sub20.i, -131
  %div2294.i = sdiv i16 %mul21.i, 128
  %narrow.i = add nsw i16 %div2294.i, -57
  %sub2397.i = zext i16 %narrow.i to i32
  br label %b43legacy_rssi_postprocess.exit.thread304

if.else24.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = zext i8 %8 to i32
  %sub26.i = sub nsw i32 31, %conv25.i
  %mul27.i = mul nsw i32 %sub26.i, -149
  %div28.i = sdiv i32 %mul27.i, 128
  %sub29.i = add nsw i32 %div28.i, -68
  br label %b43legacy_rssi_postprocess.exit.thread304

b43legacy_rssi_postprocess.exit.thread304:        ; preds = %if.else24.i, %if.then13.i
  %tmp.1.i = phi i32 [ %sub2397.i, %if.then13.i ], [ %sub29.i, %if.else24.i ]
  %type.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp32.i = icmp ne i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool34.not.i = icmp eq i16 %65, 0
  %or.cond.i = or i1 %tobool34.not.i, %cmp32.i
  %add36.i = add nsw i32 %tmp.1.i, 25
  %spec.select91.i = select i1 %or.cond.i, i32 %tmp.1.i, i32 %add36.i
  %conv59.i306 = trunc i32 %spec.select91.i to i8
  %signal307 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 13
  %83 = ptrtoint ptr %signal307 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv59.i306, ptr %signal307, align 2
  br label %if.else160

sw.bb39.i:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  %conv40.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp41.i = icmp slt i8 %8, 0
  %sub45.i = or i32 %conv40.i, -256
  %spec.select92.i = select i1 %cmp41.i, i32 %sub45.i, i32 %conv40.i
  br label %b43legacy_rssi_postprocess.exit

sw.default.i:                                     ; preds = %if.end147
  %and151 = and i32 %conv148, 16384
  %conv49.i = zext i8 %8 to i16
  %84 = mul nuw nsw i16 %conv49.i, 103
  %mul51.i = add nsw i16 %84, -1133
  %div5293.i = sdiv i16 %mul51.i, 64
  %div52.sext98.i = zext i16 %div5293.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool53.not.i = icmp eq i32 %and151, 0
  br i1 %tobool53.not.i, label %if.else56.i, label %if.then54.i

if.then54.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub55.i = add nsw i32 %div52.sext98.i, -109
  br label %b43legacy_rssi_postprocess.exit

if.else56.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub57.i = add nsw i32 %div52.sext98.i, -83
  br label %b43legacy_rssi_postprocess.exit

b43legacy_rssi_postprocess.exit:                  ; preds = %if.else56.i, %if.then54.i, %sw.bb39.i
  %tmp.2.i = phi i32 [ %sub55.i, %if.then54.i ], [ %sub57.i, %if.else56.i ], [ %spec.select92.i, %sw.bb39.i ]
  %conv59.i = trunc i32 %tmp.2.i to i8
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 13
  %85 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv59.i, ptr %signal, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool157.not = icmp eq i32 %and149, 0
  br i1 %tobool157.not, label %b43legacy_rssi_postprocess.exit.if.else160_crit_edge, label %b43legacy_rssi_postprocess.exit.if.then158_crit_edge

b43legacy_rssi_postprocess.exit.if.then158_crit_edge: ; preds = %b43legacy_rssi_postprocess.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then158

b43legacy_rssi_postprocess.exit.if.else160_crit_edge: ; preds = %b43legacy_rssi_postprocess.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

if.then158:                                       ; preds = %b43legacy_rssi_postprocess.exit.if.then158_crit_edge, %if.then.i
  %86 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr, align 1
  %88 = and i8 %87, 15
  %and.i = zext i8 %88 to i32
  %switch.tableidx = add nsw i32 %and.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %89 = icmp ult i32 %switch.tableidx, 8
  br i1 %89, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 67, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

if.else160:                                       ; preds = %b43legacy_rssi_postprocess.exit.if.else160_crit_edge, %b43legacy_rssi_postprocess.exit.thread304
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr, align 1
  %92 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %91, label %do.end.i294 [
    i8 10, label %if.else160.if.end163_crit_edge
    i8 20, label %sw.bb1.i
    i8 55, label %sw.bb2.i292
    i8 110, label %sw.bb3.i
  ]

if.else160.if.end163_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

sw.bb1.i:                                         ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

sw.bb2.i292:                                      ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

sw.bb3.i:                                         ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

do.end.i294:                                      ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  %call.i293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

switch.lookup:                                    ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.b43legacy_rx, i32 0, i32 %switch.tableidx
  %93 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %93)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end163

if.end163:                                        ; preds = %switch.lookup, %sw.bb3.i, %sw.bb2.i292, %sw.bb1.i, %if.else160.if.end163_crit_edge
  %retval.0.i295.sink = phi i8 [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i292 ], [ 1, %sw.bb1.i ], [ 0, %if.else160.if.end163_crit_edge ], [ %switch.load, %switch.lookup ]
  %rate_idx162 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %94 = ptrtoint ptr %rate_idx162 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %retval.0.i295.sink, ptr %rate_idx162, align 1
  %95 = trunc i16 %3 to i8
  %96 = lshr i8 %95, 5
  %97 = and i8 %96, 1
  %antenna = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 12
  %98 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %antenna, align 1
  %99 = and i16 %fctl.2, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %99)
  %cmp.i296 = icmp eq i16 %99, -32768
  br i1 %cmp.i296, label %if.end163.if.then177_crit_edge, label %lor.lhs.false

if.end163.if.then177_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then177

lor.lhs.false:                                    ; preds = %if.end163
  %wl174 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %100 = ptrtoint ptr %wl174 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wl174, align 4
  %radiotap_enabled = getelementptr inbounds %struct.b43legacy_wl, ptr %101, i32 0, i32 18
  %102 = ptrtoint ptr %radiotap_enabled to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %radiotap_enabled, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool175.not = icmp eq i8 %103, 0
  br i1 %tobool175.not, label %lor.lhs.false.if.end197_crit_edge, label %lor.lhs.false.if.then177_crit_edge

lor.lhs.false.if.then177_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then177

lor.lhs.false.if.end197_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

if.then177:                                       ; preds = %lor.lhs.false.if.then177_crit_edge, %if.end163.if.then177_crit_edge
  call void @b43legacy_tsf_read(ptr noundef %dev, ptr noundef nonnull %status) #7
  %104 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %status, align 8
  %conv180 = trunc i64 %105 to i32
  %and182 = and i64 %105, -65536
  %conv184 = zext i16 %14 to i64
  %add186 = or i64 %and182, %conv184
  %conv187 = and i32 %conv180, 65535
  %conv188 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv187, i32 %conv188)
  %cmp189.not = icmp ugt i32 %conv187, %conv188
  %sub193 = add i64 %add186, -65536
  %spec.select = select i1 %cmp189.not, i64 %add186, i64 %sub193
  %106 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %spec.select, ptr %status, align 8
  %flag195 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %107 = ptrtoint ptr %flag195 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flag195, align 8
  %or196 = or i32 %108, 128
  store i32 %or196, ptr %flag195, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then177, %lor.lhs.false.if.end197_crit_edge
  %conv198 = zext i16 %17 to i32
  %and203 = and i32 %conv198, 3
  %and203.off = add nsw i32 %and203, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and203.off)
  %switch289 = icmp ult i32 %and203.off, 2
  br i1 %switch289, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  %band = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %109 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %band, align 4
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %110 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load = load i16, ptr %freq, align 4
  %111 = shl i16 %17, 1
  %narrow = and i16 %111, 2040
  %bf.shl = add nuw nsw i16 %narrow, 19200
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %freq, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %112 = call ptr @memcpy(ptr %cb.i, ptr %status, i32 48)
  %wl210 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %113 = ptrtoint ptr %wl210 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wl210, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw, align 4
  call void @ieee80211_rx_irqsafe(ptr noundef %116, ptr noundef %skb) #7
  br label %cleanup212

sw.default:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  %wl207 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %117 = ptrtoint ptr %wl207 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wl207, align 4
  call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %118, ptr noundef nonnull @.str.9, i32 noundef %conv198) #7
  br label %drop

drop:                                             ; preds = %sw.default, %if.then135, %if.then113, %if.then20, %if.then7
  %wl211 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %119 = ptrtoint ptr %wl211 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wl211, align 4
  call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %120, ptr noundef nonnull @.str.10) #7
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup212

cleanup212:                                       ; preds = %drop, %sw.bb
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %status) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacydbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_tsf_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacywarn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_handle_txstatus(ptr noundef %dev, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43legacy_debugfs_log_txstat(ptr noundef %dev, ptr noundef %status) #7
  %intermediate = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 7
  %0 = ptrtoint ptr %intermediate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %intermediate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end:                                           ; preds = %entry
  %for_ampdu = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 8
  %2 = ptrtoint ptr %for_ampdu to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %for_ampdu, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end3:                                          ; preds = %if.end
  %acked = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 9
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
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %ieee_stats = getelementptr inbounds %struct.b43legacy_wl, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %ieee_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ieee_stats, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %ieee_stats, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %rts_count = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 4
  %10 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rts_count, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %11, label %if.else [
    i8 0, label %if.end6.if.end19_crit_edge
    i8 15, label %if.then11
  ]

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %wl12 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %wl12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl12, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.b43legacy_wl, ptr %14, i32 0, i32 12, i32 1
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %wl15 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %wl15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wl15, align 4
  %dot11RTSSuccessCount = getelementptr inbounds %struct.b43legacy_wl, ptr %16, i32 0, i32 12, i32 3
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
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %__using_pio.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not = icmp eq i8 %20, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_pio_handle_txstatus(ptr noundef %dev, ptr noundef %status) #7
  br label %if.end23

if.else22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_dma_handle_txstatus(ptr noundef %dev, ptr noundef %status) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21, %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_debugfs_log_txstat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_pio_handle_txstatus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_dma_handle_txstatus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_handle_hwtxstatus(ptr noundef %dev, ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca %struct.b43legacy_txstatus, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %status) #7
  %0 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 1
  %1 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 2
  %2 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 3
  %3 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 4
  %4 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 5
  %5 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 6
  %6 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 7
  %7 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 8
  %8 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 9
  %cookie = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %cookie to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %cookie, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %status, align 2
  %seq = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %hw, i32 0, i32 5
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %seq, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %0, align 2
  %phy_stat = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %hw, i32 0, i32 6
  %17 = ptrtoint ptr %phy_stat to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phy_stat, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %1, align 2
  %count = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %hw, i32 0, i32 3
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %count, align 1
  %22 = lshr i8 %21, 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %2, align 1
  %24 = and i8 %21, 15
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %3, align 2
  %flags = getelementptr inbounds %struct.b43legacy_hwtxstatus, ptr %hw, i32 0, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 1
  %shl = shl i8 %27, 1
  %and10 = lshr i8 %shl, 2
  %28 = and i8 %and10, 7
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %4, align 1
  %and14.lobit = lshr i8 %shl, 7
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and14.lobit, ptr %5, align 2
  %and18 = lshr i8 %shl, 6
  %and18.lobit = and i8 %and18, 1
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %and18.lobit, ptr %6, align 1
  %and26 = lshr i8 %shl, 5
  %and26.lobit = and i8 %and26, 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %and26.lobit, ptr %7, align 2
  %33 = and i8 %27, 1
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %8, align 1
  call void @b43legacy_debugfs_log_txstat(ptr noundef %dev, ptr noundef nonnull %status) #7
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.b43legacy_handle_txstatus.exit_crit_edge

entry.b43legacy_handle_txstatus.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_handle_txstatus.exit

if.end.i:                                         ; preds = %entry
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i = icmp eq i8 %38, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.b43legacy_handle_txstatus.exit_crit_edge

if.end.i.b43legacy_handle_txstatus.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_handle_txstatus.exit

if.end3.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool4.not.i = icmp eq i8 %40, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end3.i.if.end6.i_crit_edge

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wl.i, align 4
  %ieee_stats.i = getelementptr inbounds %struct.b43legacy_wl, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %ieee_stats.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ieee_stats.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %ieee_stats.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %3, align 2
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %46, label %if.else.i [
    i8 0, label %if.end6.i.if.end19.i_crit_edge
    i8 15, label %if.then11.i
  ]

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %wl12.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %48 = ptrtoint ptr %wl12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wl12.i, align 4
  %dot11RTSFailureCount.i = getelementptr inbounds %struct.b43legacy_wl, ptr %49, i32 0, i32 12, i32 1
  br label %if.end19.sink.split.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %wl15.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %50 = ptrtoint ptr %wl15.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wl15.i, align 4
  %dot11RTSSuccessCount.i = getelementptr inbounds %struct.b43legacy_wl, ptr %51, i32 0, i32 12, i32 3
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else.i, %if.then11.i
  %dot11RTSFailureCount.sink37.i = phi ptr [ %dot11RTSFailureCount.i, %if.then11.i ], [ %dot11RTSSuccessCount.i, %if.else.i ]
  %52 = ptrtoint ptr %dot11RTSFailureCount.sink37.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dot11RTSFailureCount.sink37.i, align 4
  %inc14.i = add i32 %53, 1
  store i32 %inc14.i, ptr %dot11RTSFailureCount.sink37.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.end6.i.if.end19.i_crit_edge
  %__using_pio.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %54 = ptrtoint ptr %__using_pio.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %__using_pio.i.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool20.not.i = icmp eq i8 %55, 0
  br i1 %tobool20.not.i, label %if.else22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @b43legacy_pio_handle_txstatus(ptr noundef %dev, ptr noundef nonnull %status) #7
  br label %b43legacy_handle_txstatus.exit

if.else22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @b43legacy_dma_handle_txstatus(ptr noundef %dev, ptr noundef nonnull %status) #7
  br label %b43legacy_handle_txstatus.exit

b43legacy_handle_txstatus.exit:                   ; preds = %if.else22.i, %if.then21.i, %if.end.i.b43legacy_handle_txstatus.exit_crit_edge, %entry.b43legacy_handle_txstatus.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %status) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_tx_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_pio_freeze_txqueues(ptr noundef %dev) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_dma_tx_suspend(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_pio_freeze_txqueues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_dma_tx_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_tx_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_pio_thaw_txqueues(ptr noundef %dev) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_dma_tx_resume(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_pio_thaw_txqueues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_dma_tx_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @b43legacy_qos_init(ptr nocapture noundef %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ctstoself_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rts_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 83, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @b43legacy_plcp_get_ratecode_cck._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @b43legacy_plcp_get_ratecode_cck._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 107, i32 2}
!9 = !{ptr @b43legacy_plcp_get_ratecode_ofdm._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @b43legacy_plcp_get_ratecode_ofdm._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 453, i32 25}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 460, i32 25}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 489, i32 27}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 505, i32 27}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 559, i32 26}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 569, i32 24}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 170, i32 2}
!28 = !{ptr @b43legacy_calc_fallback_rate._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @b43legacy_calc_fallback_rate._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 67, i32 2}
!32 = !{ptr @b43legacy_plcp_get_bitrate_idx_ofdm._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @b43legacy_plcp_get_bitrate_idx_ofdm._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43legacy/xmit.c", i32 39, i32 2}
!36 = !{ptr @b43legacy_plcp_get_bitrate_idx_cck._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @b43legacy_plcp_get_bitrate_idx_cck._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2158249203, i64 2158249713, i64 2158249240, i64 2158249296, i64 2158249330, i64 2158249354, i64 2158249395, i64 2158249416, i64 2158249444, i64 2158249478}
!48 = !{i64 2158252609, i64 2158253120, i64 2158252646, i64 2158252702, i64 2158252736, i64 2158252760, i64 2158252801, i64 2158252822, i64 2158252850, i64 2158252884}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i8 0, i8 2}
!51 = !{i64 2158256814, i64 2158257325, i64 2158256851, i64 2158256907, i64 2158256941, i64 2158256965, i64 2158257006, i64 2158257027, i64 2158257055, i64 2158257089}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2158245815, i64 2158246325, i64 2158245852, i64 2158245908, i64 2158245942, i64 2158245966, i64 2158246007, i64 2158246028, i64 2158246056, i64 2158246090}
!54 = !{i64 2158242437, i64 2158242947, i64 2158242474, i64 2158242530, i64 2158242564, i64 2158242588, i64 2158242629, i64 2158242650, i64 2158242678, i64 2158242712}
