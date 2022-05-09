; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.anon.130 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.carl9170_vif = type { i32, ptr }
%struct.anon.134 = type { i64, i64, i64, i64, i64 }
%struct.carl9170_led = type { ptr, %struct.led_classdev, [32 x i8], i32, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.carl9170_tx_queue_stats = type { i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.135 = type { [16 x i32] }
%struct.ar9170_eeprom = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, [33 x i8], [64 x i8], [2 x %struct.ar9170_eeprom_modal], [8 x i8], [4 x i8], [2 x [8 x %struct.ar9170_calibration_data_per_freq]], [2 x [4 x %struct.ar9170_calibration_data_per_freq]], [8 x %struct.ar9170_calibration_target_power_legacy], [8 x %struct.ar9170_calibration_target_power_ht], [8 x %struct.ar9170_calibration_target_power_ht], [3 x %struct.ar9170_calibration_target_power_legacy], [4 x %struct.ar9170_calibration_target_power_legacy], [4 x %struct.ar9170_calibration_target_power_ht], [4 x %struct.ar9170_calibration_target_power_ht], [24 x i8], [24 x %struct.ar9170_calctl_data], i8, i16 }>
%struct.ar9170_eeprom_modal = type <{ [2 x i32], i32, [2 x i8], i8, [2 x i8], [2 x i8], i8, i8, [2 x i8], i8, i8, i8, i8, [2 x i8], i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, [22 x i8], [5 x %struct.spur_channel] }>
%struct.spur_channel = type { i16, i8, i8 }
%struct.ar9170_calibration_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.ar9170_calibration_target_power_legacy = type { i8, [4 x i8] }
%struct.ar9170_calibration_target_power_ht = type { i8, [8 x i8] }
%struct.ar9170_calctl_data = type { [2 x [8 x %struct.ar9170_calctl_edges]] }
%struct.ar9170_calctl_edges = type { i8, i8 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.ar9170_rx_head = type { [12 x i8] }
%struct.anon.142 = type { i8, ptr, [32 x i8], [32 x i8] }
%struct.carl9170_debug = type { %struct.ath_stats, [64 x %struct.carl9170_debug_mem_rbe], %struct.mutex, i32, i32, %struct.delayed_work }
%struct.ath_stats = type { [3 x i32], [3 x i32], [8 x i32], [8 x i32], [6 x i32], [6 x i32], [12 x i32], [6 x i32], [2 x i32] }
%struct.carl9170_debug_mem_rbe = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.145 = type { %struct.hwrng, i8, [31 x i8], [30 x i16], i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.carl9170fw_desc_head = type { [4 x i8], i16, i8, i8 }
%struct.carl9170fw_motd_desc = type { %struct.carl9170fw_desc_head, i32, [24 x i8], [20 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.carl9170fw_chk_desc = type { %struct.carl9170fw_desc_head, i32, i32 }
%struct.carl9170fw_otus_desc = type { %struct.carl9170fw_desc_head, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.carl9170fw_txsq_desc = type { %struct.carl9170fw_desc_head, i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/carl9170/fw.c\00", [57 x i8] zeroinitializer }, align 32
@carl9170_parse_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported firmware.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"carl9170_parse_firmware\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_parse_firmware._entry_ptr = internal global ptr @carl9170_parse_firmware._entry, section ".printk_index", align 4
@carl9170_parse_firmware._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"damaged firmware (%d).\0A\00", [40 x i8] zeroinitializer }, align 32
@carl9170_parse_firmware._entry_ptr.7 = internal global ptr @carl9170_parse_firmware._entry.5, section ".printk_index", align 4
@carl9170_parse_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse firmware (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@carl9170_parse_firmware._entry_ptr.10 = internal global ptr @carl9170_parse_firmware._entry.8, section ".printk_index", align 4
@carl9170_find_fw_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"firmware size is out of bound.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"carl9170_find_fw_desc\00", [42 x i8] zeroinitializer }, align 32
@carl9170_find_fw_desc._entry_ptr = internal global ptr @carl9170_find_fw_desc._entry, section ".printk_index", align 4
@otus_magic = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OTAR", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LAST\00", [27 x i8] zeroinitializer }, align 32
@carl9170_fw_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 91, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"driver   API: %s 2%03d-%02d-%02d [%d-%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"carl9170_fw_info\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@carl9170_fw_info._entry_ptr = internal global ptr @carl9170_fw_info._entry, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.9.9\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOTD\00", [27 x i8] zeroinitializer }, align 32
@carl9170_fw_info._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str, i32 106, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware API: %.*s 2%03d-%02d-%02d\0A\00", [60 x i8] zeroinitializer }, align 32
@carl9170_fw_info._entry_ptr.21 = internal global ptr @carl9170_fw_info._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OTAR\00", [27 x i8] zeroinitializer }, align 32
@carl9170_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid firmware descriptor format detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"carl9170_fw\00", [20 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr = internal global ptr @carl9170_fw._entry, section ".printk_index", align 4
@carl9170_fw._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported firmware api version.\0A\00", [61 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr.27 = internal global ptr @carl9170_fw._entry.25, section ".printk_index", align 4
@carl9170_fw._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"firmware does support mandatory features.\0A\00", [53 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr.30 = internal global ptr @carl9170_fw._entry.28, section ".printk_index", align 4
@carl9170_fw._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str, i32 266, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"driver does not support all firmware features.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr.34 = internal global ptr @carl9170_fw._entry.31, section ".printk_index", align 4
@carl9170_fw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str, i32 271, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"crypto offloading is disabled by firmware.\0A\00", [52 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr.37 = internal global ptr @carl9170_fw._entry.35, section ".printk_index", align 4
@carl9170_fw._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str, i32 280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"firmware does not provide mandatory interfaces.\0A\00", [47 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr.40 = internal global ptr @carl9170_fw._entry.38, section ".printk_index", align 4
@carl9170_fw._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.24, ptr @.str, i32 329, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"firmware shows obvious signs of malicious tampering.\0A\00", [42 x i8] zeroinitializer }, align 32
@carl9170_fw._entry_ptr.43 = internal global ptr @carl9170_fw._entry.41, section ".printk_index", align 4
@carl9170_fw_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to find compatible firmware descriptor.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"carl9170_fw_checksum\00", [43 x i8] zeroinitializer }, align 32
@carl9170_fw_checksum._entry_ptr = internal global ptr @carl9170_fw_checksum._entry, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CHK\00\00", [27 x i8] zeroinitializer }, align 32
@carl9170_fw_checksum._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str, i32 158, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unprotected firmware image.\0A\00", [35 x i8] zeroinitializer }, align 32
@carl9170_fw_checksum._entry_ptr.49 = internal global ptr @carl9170_fw_checksum._entry.47, section ".printk_index", align 4
@carl9170_fw_checksum._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fw checksum test failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@carl9170_fw_checksum._entry_ptr.52 = internal global ptr @carl9170_fw_checksum._entry.50, section ".printk_index", align 4
@carl9170_fw_checksum._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"descriptor check failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@carl9170_fw_checksum._entry_ptr.55 = internal global ptr @carl9170_fw_checksum._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TXSQ\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 401, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 407, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 415, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 425, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 371, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"otus_magic\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 18, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 70, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 88, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 93, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 102, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 233, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 243, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 252, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 258, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 265, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 270, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 279, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 328, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 149, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 154, i32 39 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 158, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 176, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 182, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [42 x i8] c"../drivers/net/wireless/ath/carl9170/fw.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 192, i32 40 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @carl9170_find_fw_desc._entry, ptr @carl9170_find_fw_desc._entry_ptr, ptr @carl9170_fw._entry, ptr @carl9170_fw._entry.25, ptr @carl9170_fw._entry.28, ptr @carl9170_fw._entry.31, ptr @carl9170_fw._entry.35, ptr @carl9170_fw._entry.38, ptr @carl9170_fw._entry.41, ptr @carl9170_fw._entry_ptr, ptr @carl9170_fw._entry_ptr.27, ptr @carl9170_fw._entry_ptr.30, ptr @carl9170_fw._entry_ptr.34, ptr @carl9170_fw._entry_ptr.37, ptr @carl9170_fw._entry_ptr.40, ptr @carl9170_fw._entry_ptr.43, ptr @carl9170_fw_checksum._entry, ptr @carl9170_fw_checksum._entry.47, ptr @carl9170_fw_checksum._entry.50, ptr @carl9170_fw_checksum._entry.53, ptr @carl9170_fw_checksum._entry_ptr, ptr @carl9170_fw_checksum._entry_ptr.49, ptr @carl9170_fw_checksum._entry_ptr.52, ptr @carl9170_fw_checksum._entry_ptr.55, ptr @carl9170_fw_info._entry, ptr @carl9170_fw_info._entry.19, ptr @carl9170_fw_info._entry_ptr, ptr @carl9170_fw_info._entry_ptr.21, ptr @carl9170_parse_firmware._entry, ptr @carl9170_parse_firmware._entry.5, ptr @carl9170_parse_firmware._entry.8, ptr @carl9170_parse_firmware._entry_ptr, ptr @carl9170_parse_firmware._entry_ptr.10, ptr @carl9170_parse_firmware._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @otus_magic, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_parse_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_parse_firmware._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_parse_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_find_fw_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otus_magic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw_info._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw_checksum._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw_checksum._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_fw_checksum._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_parse_firmware(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26
  %fw2 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 1
  %0 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !101

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 401, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = add i32 %5, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16353, i32 %6)
  %7 = icmp ult i32 %6, 16353
  br i1 %7, label %while.cond.preheader.i, label %do.end.i

while.cond.preheader.i:                           ; preds = %if.end25
  %sub.i = add nsw i32 %5, -8
  %8 = add nsw i32 %5, -1
  br label %while.cond.i

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %9 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #12
  br label %do.end30

while.cond.i:                                     ; preds = %if.end11.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %scan.0.i = phi i32 [ %inc.i, %if.end11.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  %found.0.i = phi i32 [ %found.1.i, %if.end11.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %scan.0.i, i32 %sub.i)
  %exitcond.not.i = icmp eq i32 %scan.0.i, %sub.i
  br i1 %exitcond.not.i, label %while.cond.i.do.end30_crit_edge, label %while.body.i

while.cond.i.do.end30_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

while.body.i:                                     ; preds = %while.cond.i
  %arrayidx.i = getelementptr i8, ptr %3, i32 %scan.0.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr [4 x i8], ptr @otus_magic, i32 0, i32 %found.0.i
  %13 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp3.i = icmp eq i8 %12, %14
  %inc6.i = add i32 %found.0.i, 1
  %found.1.i = select i1 %cmp3.i, i32 %inc6.i, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %scan.0.i, i32 %8)
  %exitcond49.not.i = icmp eq i32 %scan.0.i, %8
  br i1 %exitcond49.not.i, label %while.end.i, label %if.end11.i

if.end11.i:                                       ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %scan.0.i, 1
  %cmp12.i = icmp eq i32 %found.1.i, 4
  br i1 %cmp12.i, label %if.end11.i.carl9170_find_fw_desc.exit_crit_edge, label %if.end11.i.while.cond.i_crit_edge

if.end11.i.while.cond.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end11.i.carl9170_find_fw_desc.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_find_fw_desc.exit

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %found.1.i)
  %cmp16.not.i = icmp eq i32 %found.1.i, 4
  br i1 %cmp16.not.i, label %while.end.i.carl9170_find_fw_desc.exit_crit_edge, label %while.end.i.do.end30_crit_edge

while.end.i.do.end30_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

while.end.i.carl9170_find_fw_desc.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_find_fw_desc.exit

carl9170_find_fw_desc.exit:                       ; preds = %while.end.i.carl9170_find_fw_desc.exit_crit_edge, %if.end11.i.carl9170_find_fw_desc.exit_crit_edge
  %scan.047.i = phi i32 [ %8, %while.end.i.carl9170_find_fw_desc.exit_crit_edge ], [ %scan.0.i, %if.end11.i.carl9170_find_fw_desc.exit_crit_edge ]
  %sub20.i = add i32 %scan.047.i, -3
  %arrayidx21.i = getelementptr i8, ptr %3, i32 %sub20.i
  %tobool26.not = icmp eq ptr %arrayidx21.i, null
  br i1 %tobool26.not, label %carl9170_find_fw_desc.exit.do.end30_crit_edge, label %if.end31

carl9170_find_fw_desc.exit.do.end30_crit_edge:    ; preds = %carl9170_find_fw_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end30:                                         ; preds = %carl9170_find_fw_desc.exit.do.end30_crit_edge, %while.end.i.do.end30_crit_edge, %while.cond.i.do.end30_crit_edge, %do.end.i
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end31:                                         ; preds = %carl9170_find_fw_desc.exit
  %17 = ptrtoint ptr %arrayidx21.i to i32
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  %sub.neg = sub i32 %20, %17
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %sub34 = add i32 %sub.neg, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub34)
  %cmp.i = icmp ult i32 %sub34, 8
  br i1 %cmp.i, label %if.end31.do.end40_crit_edge, label %if.end.i

if.end31.do.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end.i:                                         ; preds = %if.end31
  %23 = tail call i32 @llvm.umin.i32(i32 %sub34, i32 8192) #9
  %add.i = add i32 %23, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp22.i = icmp ugt i32 %add.i, %17
  br i1 %cmp22.i, label %if.end.i.while.body.i82_crit_edge, label %if.end.i.do.end40_crit_edge

if.end.i.do.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end.i.while.body.i82_crit_edge:                ; preds = %if.end.i
  br label %while.body.i82

while.body.i82:                                   ; preds = %if.end21.i.while.body.i82_crit_edge, %if.end.i.while.body.i82_crit_edge
  %pos_addr.05.i = phi i32 [ %add15.i, %if.end21.i.while.body.i82_crit_edge ], [ %17, %if.end.i.while.body.i82_crit_edge ]
  %pos.04.i = phi ptr [ %39, %if.end21.i.while.body.i82_crit_edge ], [ %arrayidx21.i, %if.end.i.while.body.i82_crit_edge ]
  %max_len.addr.03.i = phi i32 [ %sub.i84, %if.end21.i.while.body.i82_crit_edge ], [ %23, %if.end.i.while.body.i82_crit_edge ]
  %add3.i = add i32 %pos_addr.05.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %add.i)
  %cmp4.i = icmp ugt i32 %add3.i, %add.i
  br i1 %cmp4.i, label %while.body.i82.do.end40_crit_edge, label %if.end6.i

while.body.i82.do.end40_crit_edge:                ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end6.i:                                        ; preds = %while.body.i82
  %length.i = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %pos.04.i, i32 0, i32 1
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %length.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %conv.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %26)
  %cmp7.i = icmp ult i16 %26, 8
  br i1 %cmp7.i, label %if.end6.i.do.end40_crit_edge, label %if.end10.i

if.end6.i.do.end40_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.addr.03.i, i32 %conv.i)
  %cmp11.i = icmp ult i32 %max_len.addr.03.i, %conv.i
  br i1 %cmp11.i, label %if.end10.i.do.end40_crit_edge, label %if.end14.i

if.end10.i.do.end40_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end14.i:                                       ; preds = %if.end10.i
  %add15.i = add i32 %pos_addr.05.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add.i)
  %cmp16.i = icmp ugt i32 %add15.i, %add.i
  br i1 %cmp16.i, label %if.end14.i.do.end40_crit_edge, label %if.end19.i83

if.end14.i.do.end40_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end19.i83:                                     ; preds = %if.end14.i
  %27 = ptrtoint ptr %pos.04.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos.04.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %28)
  %cmp.i.i = icmp eq i8 %28, 76
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end19.i83.if.end21.i_crit_edge

if.end19.i83.if.end21.i_crit_edge:                ; preds = %if.end19.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true.i.i:                                ; preds = %if.end19.i83
  %arrayidx7.i.i = getelementptr [4 x i8], ptr %pos.04.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %30)
  %cmp9.i.i = icmp eq i8 %30, 65
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true.i.i.if.end21.i_crit_edge

land.lhs.true.i.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx15.i.i = getelementptr [4 x i8], ptr %pos.04.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %32)
  %cmp17.i.i = icmp eq i8 %32, 83
  br i1 %cmp17.i.i, label %land.lhs.true19.i.i, label %land.lhs.true11.i.i.if.end21.i_crit_edge

land.lhs.true11.i.i.if.end21.i_crit_edge:         ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true11.i.i
  %arrayidx23.i.i = getelementptr [4 x i8], ptr %pos.04.i, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx23.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %34)
  %cmp25.i.i = icmp eq i8 %34, 84
  br i1 %cmp25.i.i, label %land.lhs.true27.i.i, label %land.lhs.true19.i.i.if.end21.i_crit_edge

land.lhs.true19.i.i.if.end21.i_crit_edge:         ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true19.i.i
  %cur_ver.i.i = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %pos.04.i, i32 0, i32 3
  %35 = ptrtoint ptr %cur_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cur_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp30.i.i = icmp ult i8 %36, 2
  br i1 %cmp30.i.i, label %land.lhs.true27.i.i.if.end21.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true27.i.i.if.end21.i_crit_edge:         ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true27.i.i
  %min_ver.i.i = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %pos.04.i, i32 0, i32 2
  %37 = ptrtoint ptr %min_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %min_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp34.i.i = icmp ugt i8 %38, 2
  br i1 %cmp34.i.i, label %lor.lhs.false.i.i.if.end21.i_crit_edge, label %if.end43

lor.lhs.false.i.i.if.end21.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %lor.lhs.false.i.i.if.end21.i_crit_edge, %land.lhs.true27.i.i.if.end21.i_crit_edge, %land.lhs.true19.i.i.if.end21.i_crit_edge, %land.lhs.true11.i.i.if.end21.i_crit_edge, %land.lhs.true.i.i.if.end21.i_crit_edge, %if.end19.i83.if.end21.i_crit_edge
  %39 = inttoptr i32 %add15.i to ptr
  %sub.i84 = sub i32 %max_len.addr.03.i, %conv.i
  %cmp2.i = icmp ult i32 %add15.i, %add.i
  br i1 %cmp2.i, label %if.end21.i.while.body.i82_crit_edge, label %if.end21.i.do.end40_crit_edge

if.end21.i.do.end40_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end21.i.while.body.i82_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i82

do.end40:                                         ; preds = %if.end21.i.do.end40_crit_edge, %if.end14.i.do.end40_crit_edge, %if.end10.i.do.end40_crit_edge, %if.end6.i.do.end40_crit_edge, %while.body.i82.do.end40_crit_edge, %if.end.i.do.end40_crit_edge, %if.end31.do.end40_crit_edge
  %retval.0.i85.ph = phi i32 [ -22, %if.end.i.do.end40_crit_edge ], [ -61, %if.end31.do.end40_crit_edge ], [ -7, %while.body.i82.do.end40_crit_edge ], [ -74, %if.end6.i.do.end40_crit_edge ], [ -75, %if.end10.i.do.end40_crit_edge ], [ -90, %if.end14.i.do.end40_crit_edge ], [ -22, %if.end21.i.do.end40_crit_edge ]
  %udev41 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %40 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev41, align 4
  %dev42 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i85.ph) #12
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false.i.i
  %42 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx21.i, ptr %fw1, align 8
  %udev.i86 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %43 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev.i86, align 4
  %dev.i87 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i87, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef 16, i32 noundef 2, i32 noundef 15, i32 noundef 1, i32 noundef 1) #12
  %call.i = tail call fastcc ptr @carl9170_fw_find_desc(ptr noundef %ar, ptr noundef nonnull @.str.18, i32 noundef 56, i8 noundef zeroext 2) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end43.carl9170_fw_info.exit_crit_edge, label %if.then.i

if.end43.carl9170_fw_info.exit_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_fw_info.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %release.i = getelementptr inbounds %struct.carl9170fw_motd_desc, ptr %call.i, i32 0, i32 3
  %call1.i = tail call i32 @strnlen(ptr noundef %release.i, i32 noundef 20) #13
  %fw_year_month_day.i = getelementptr inbounds %struct.carl9170fw_motd_desc, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %fw_year_month_day.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %fw_year_month_day.i, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %udev.i86, align 4
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %div.i = udiv i32 %47, 372
  %add.i88 = add nuw nsw i32 %div.i, 10
  %.frozen = freeze i32 %47
  %div9.i = udiv i32 %.frozen, 31
  %rem.i = urem i32 %div9.i, 12
  %add10.i = add nuw nsw i32 %rem.i, 1
  %50 = mul i32 %div9.i, 31
  %rem11.i.decomposed = sub i32 %.frozen, %50
  %add12.i = add nuw nsw i32 %rem11.i.decomposed, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6.i, ptr noundef nonnull @.str.20, i32 noundef %call1.i, ptr noundef %release.i, i32 noundef %add.i88, i32 noundef %add10.i, i32 noundef %add12.i) #12
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %51 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wiphy.i, align 8
  %fw_version.i = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 38
  %call16.i = tail call i32 @strlcpy(ptr noundef %fw_version.i, ptr noundef %release.i, i32 noundef 32) #9
  br label %carl9170_fw_info.exit

carl9170_fw_info.exit:                            ; preds = %if.then.i, %if.end43.carl9170_fw_info.exit_crit_edge
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  %call.i.i = tail call fastcc ptr @carl9170_fw_find_desc(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef 8, i8 noundef zeroext 2) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %carl9170_fw_info.exit.do.end52_crit_edge, label %if.end.i.i

carl9170_fw_info.exit.do.end52_crit_edge:         ; preds = %carl9170_fw_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.end.i.i:                                       ; preds = %carl9170_fw_info.exit
  %call1.i.i = tail call fastcc ptr @carl9170_fw_find_desc(ptr noundef %ar, ptr noundef nonnull @.str.22, i32 noundef 32, i8 noundef zeroext 7) #9
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end52.sink.split_crit_edge, label %if.end4.i.i

if.end.i.i.do.end52.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = tail call fastcc ptr @carl9170_fw_find_desc(ptr noundef %ar, ptr noundef nonnull @.str.46, i32 noundef 16, i8 noundef zeroext 2) #9
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %do.end10.i.i, label %if.end13.i.i

do.end10.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev.i86, align 4
  %dev12.i.i = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12.i.i, ptr noundef nonnull @.str.48) #12
  br label %if.end.i91

if.end13.i.i:                                     ; preds = %if.end4.i.i
  %61 = ptrtoint ptr %call5.i.i to i32
  %62 = ptrtoint ptr %call1.i.i to i32
  %sub.i.i = sub i32 %61, %62
  %63 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %58) #9
  %64 = ptrtoint ptr %call.i.i to i32
  %add.i.i = add i32 %64, 8
  %sub14.i.i = sub i32 %add.i.i, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14.i.i, i32 %58)
  %cmp15.i.i = icmp ult i32 %sub14.i.i, %58
  %sub17.i.i = select i1 %cmp15.i.i, i32 %sub14.i.i, i32 0
  %len.addr.0.i.i = sub i32 %58, %sub17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len.addr.0.i.i)
  %cmp19.i.i = icmp ult i32 %len.addr.0.i.i, 256
  br i1 %cmp19.i.i, label %if.end13.i.i.do.end52_crit_edge, label %if.end21.i.i

if.end13.i.i.do.end52_crit_edge:                  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %call22.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %56, i32 noundef %len.addr.0.i.i) #14
  %65 = tail call i32 @llvm.bswap.i32(i32 %call22.i.i) #9
  %fw_crc32.i.i = getelementptr inbounds %struct.carl9170fw_chk_desc, ptr %call5.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %fw_crc32.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %fw_crc32.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp23.not.i.i = icmp eq i32 %65, %67
  br i1 %cmp23.not.i.i, label %if.end30.i.i, label %if.end21.i.i.do.end52.sink.split_crit_edge

if.end21.i.i.do.end52.sink.split_crit_edge:       ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end30.i.i:                                     ; preds = %if.end21.i.i
  %call31.i.i = tail call i32 @crc32_le(i32 noundef %call22.i.i, ptr noundef nonnull %call1.i.i, i32 noundef %63) #14
  %68 = tail call i32 @llvm.bswap.i32(i32 %call31.i.i) #9
  %hdr_crc32.i.i = getelementptr inbounds %struct.carl9170fw_chk_desc, ptr %call5.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %hdr_crc32.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %hdr_crc32.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp32.not.i.i = icmp eq i32 %68, %70
  br i1 %cmp32.not.i.i, label %if.end30.i.i.if.end.i91_crit_edge, label %if.end30.i.i.do.end52.sink.split_crit_edge

if.end30.i.i.do.end52.sink.split_crit_edge:       ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end30.i.i.if.end.i91_crit_edge:                ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i91

if.end.i91:                                       ; preds = %if.end30.i.i.if.end.i91_crit_edge, %do.end10.i.i
  %call1.i90 = tail call fastcc ptr @carl9170_fw_find_desc(ptr noundef %ar, ptr noundef nonnull @.str.22, i32 noundef 32, i8 noundef zeroext 7) #9
  %tobool2.not.i = icmp eq ptr %call1.i90, null
  br i1 %tobool2.not.i, label %if.end.i91.do.end52_crit_edge, label %if.end4.i

if.end.i91.do.end52_crit_edge:                    ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.end4.i:                                        ; preds = %if.end.i91
  %feature_set.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 1
  %71 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %feature_set.i, align 1
  %73 = and i32 %72, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i = icmp eq i32 %73, 0
  br i1 %tobool.i.not.i, label %if.end4.i.do.end52.sink.split_crit_edge, label %if.end7.i

if.end4.i.do.end52.sink.split_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end7.i:                                        ; preds = %if.end4.i
  %api_ver.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 10
  %74 = ptrtoint ptr %api_ver.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %api_ver.i, align 1
  %conv.i95 = zext i8 %75 to i32
  %api_version.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 5
  %76 = ptrtoint ptr %api_version.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv.i95, ptr %api_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cond.i = icmp eq i8 %75, 1
  br i1 %cond.i, label %if.end21.i96, label %if.end7.i.do.end52.sink.split_crit_edge

if.end7.i.do.end52.sink.split_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end21.i96:                                     ; preds = %if.end7.i
  %77 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %feature_set.i, align 1
  %79 = and i32 %78, -1073479680
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147221504, i32 %79)
  %80 = icmp eq i32 %79, -2147221504
  br i1 %80, label %cond.end48.i, label %if.end21.i96.do.end52.sink.split_crit_edge

if.end21.i96.do.end52.sink.split_crit_edge:       ; preds = %if.end21.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

cond.end48.i:                                     ; preds = %if.end21.i96
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %82 = tail call i32 @llvm.ctlz.i32(i32 %81, i1 true) #9, !range !102
  %cond49.i = xor i32 %82, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond49.i)
  %cmp50.i = icmp ugt i32 %cond49.i, 19
  br i1 %cmp50.i, label %do.end55.i, label %cond.end48.i.if.end58.i_crit_edge

cond.end48.i.if.end58.i_crit_edge:                ; preds = %cond.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

do.end55.i:                                       ; preds = %cond.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %udev.i86, align 4
  %dev57.i = getelementptr inbounds %struct.usb_device, ptr %84, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57.i, ptr noundef nonnull @.str.32) #12
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end55.i, %cond.end48.i.if.end58.i_crit_edge
  %85 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %feature_set.i, align 1
  %87 = and i32 %86, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i339.not.i = icmp eq i32 %87, 0
  br i1 %tobool.i339.not.i, label %do.end64.i, label %if.end58.i.if.end68.i_crit_edge

if.end58.i.if.end68.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

do.end64.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %udev.i86, align 4
  %dev66.i = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev66.i, ptr noundef nonnull @.str.36) #12
  %disable_offload_fw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 20
  %90 = ptrtoint ptr %disable_offload_fw.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %disable_offload_fw.i, align 1
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end64.i, %if.end58.i.if.end68.i_crit_edge
  %91 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %feature_set.i, align 1
  %93 = and i32 %92, 9437184
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437184, i32 %93)
  %94 = icmp eq i32 %93, 9437184
  br i1 %94, label %if.then75.i, label %if.end68.i.if.end76.i_crit_edge

if.end68.i.if.end76.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then75.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i97 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %95 = ptrtoint ptr %hw.i97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw.i97, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i = or i32 %98, 256
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then75.i, %if.end68.i.if.end76.i_crit_edge
  %99 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %feature_set.i, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  %and.i344.i = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i344.i)
  %tobool.i345.not.i = icmp eq i32 %and.i344.i, 0
  br i1 %tobool.i345.not.i, label %if.end76.i.do.end52.sink.split_crit_edge, label %if.end85.i

if.end76.i.do.end52.sink.split_crit_edge:         ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end85.i:                                       ; preds = %if.end76.i
  %and.i346.i = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i346.i)
  %tobool.i347.not.i = icmp eq i32 %and.i346.i, 0
  br i1 %tobool.i347.not.i, label %if.end85.i.if.end93.i_crit_edge, label %if.then88.i

if.end85.i.if.end93.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93.i

if.then88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  %miniboot_size.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 5
  %102 = ptrtoint ptr %miniboot_size.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %miniboot_size.i, align 1
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #9
  %conv89.i = zext i16 %104 to i32
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then88.i, %if.end85.i.if.end93.i_crit_edge
  %conv89.sink.i = phi i32 [ %conv89.i, %if.then88.i ], [ 0, %if.end85.i.if.end93.i_crit_edge ]
  %105 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 2
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv89.sink.i, ptr %105, align 8
  %107 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %feature_set.i, align 1
  %109 = and i32 %108, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i349.not.i = icmp eq i32 %109, 0
  br i1 %tobool.i349.not.i, label %if.end93.i.if.end99.i_crit_edge, label %if.then96.i

if.end93.i.if.end99.i_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.i

if.then96.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw97.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %110 = ptrtoint ptr %hw97.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw97.i, align 4
  %extra_tx_headroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %extra_tx_headroom.i, align 4
  %add.i98 = add i32 %113, 4
  store i32 %add.i98, ptr %extra_tx_headroom.i, align 4
  %tx_stream.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 12
  %114 = ptrtoint ptr %tx_stream.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %tx_stream.i, align 1
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %if.end93.i.if.end99.i_crit_edge
  %115 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %feature_set.i, align 1
  %117 = and i32 %116, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.i351.not.i = icmp eq i32 %117, 0
  br i1 %tobool.i351.not.i, label %if.end99.i.if.end104.i_crit_edge, label %if.then102.i

if.end99.i.if.end104.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_stream.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 11
  %118 = ptrtoint ptr %rx_stream.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %rx_stream.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then102.i, %if.end99.i.if.end104.i_crit_edge
  %119 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %feature_set.i, align 1
  %121 = and i32 %120, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.i353.not.i = icmp eq i32 %121, 0
  br i1 %tobool.i353.not.i, label %if.end104.i.if.end109.i_crit_edge, label %if.then107.i

if.end104.i.if.end109.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_filter.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 13
  %122 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %rx_filter.i, align 2
  %rx_filter_caps.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 52
  %123 = ptrtoint ptr %rx_filter_caps.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 236, ptr %rx_filter_caps.i, align 8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then107.i, %if.end104.i.if.end109.i_crit_edge
  %124 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %feature_set.i, align 1
  %126 = and i32 %125, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i355.not.i = icmp eq i32 %126, 0
  br i1 %tobool.i355.not.i, label %if.end109.i.if.end114.i_crit_edge, label %if.then112.i

if.end109.i.if.end114.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i

if.then112.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_counters.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 14
  %127 = ptrtoint ptr %hw_counters.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %hw_counters.i, align 1
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then112.i, %if.end109.i.if.end114.i_crit_edge
  %128 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %feature_set.i, align 1
  %130 = and i32 %129, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.i357.not.i = icmp eq i32 %130, 0
  br i1 %tobool.i357.not.i, label %if.end114.i.if.end121.i_crit_edge, label %if.then117.i

if.end114.i.if.end121.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.then117.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %udev.i86, align 4
  %dev119.i = getelementptr inbounds %struct.usb_device, ptr %132, i32 0, i32 15
  %call120.i = tail call i32 @device_set_wakeup_enable(ptr noundef %dev119.i, i1 noundef zeroext true) #9
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then117.i, %if.end114.i.if.end121.i_crit_edge
  %133 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %feature_set.i, align 1
  %135 = and i32 %134, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.i359.not.i = icmp eq i32 %135, 0
  br i1 %tobool.i359.not.i, label %if.end121.i.if.end126.i_crit_edge, label %if.then124.i

if.end121.i.if.end126.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then124.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  %ba_filter.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 19
  %136 = ptrtoint ptr %ba_filter.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %ba_filter.i, align 8
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then124.i, %if.end121.i.if.end126.i_crit_edge
  %vif_num.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 11
  %137 = ptrtoint ptr %vif_num.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %vif_num.i, align 1
  %conv127.i = zext i8 %138 to i32
  %vif_num129.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 6
  %139 = ptrtoint ptr %vif_num129.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv127.i, ptr %vif_num129.i, align 8
  %cmd_bufs.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 9
  %140 = ptrtoint ptr %cmd_bufs.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %cmd_bufs.i, align 1
  %conv130.i = zext i8 %141 to i32
  %cmd_bufs132.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 4
  %142 = ptrtoint ptr %cmd_bufs132.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv130.i, ptr %cmd_bufs132.i, align 8
  %fw_address.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 2
  %143 = ptrtoint ptr %fw_address.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %fw_address.i, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #9
  %address.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 3
  %146 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %address.i, align 4
  %rx_max_frame_len.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 7
  %147 = ptrtoint ptr %rx_max_frame_len.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %rx_max_frame_len.i, align 1
  %149 = tail call i16 @llvm.bswap.i16(i16 %148) #9
  %conv134.i = zext i16 %149 to i32
  %rx_size.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 17
  %150 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv134.i, ptr %rx_size.i, align 8
  %tx_descs.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 8
  %151 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %tx_descs.i, align 1
  %153 = tail call i8 @llvm.umin.i8(i8 %152, i8 -2) #9
  %cond142.i = zext i8 %153 to i32
  %mem_blocks.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 15
  %154 = ptrtoint ptr %mem_blocks.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %cond142.i, ptr %mem_blocks.i, align 8
  %mem_free_blocks.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 108
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem_free_blocks.i, i32 noundef 4) #9
  %155 = ptrtoint ptr %mem_free_blocks.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 %cond142.i, ptr %mem_free_blocks.i, align 4
  %tx_frag_len.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 6
  %156 = ptrtoint ptr %tx_frag_len.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %tx_frag_len.i, align 1
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #9
  %conv146.i = zext i16 %158 to i32
  %mem_block_size.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 16
  %159 = ptrtoint ptr %mem_block_size.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv146.i, ptr %mem_block_size.i, align 4
  %160 = ptrtoint ptr %vif_num129.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vif_num129.i, align 8
  %162 = add i32 %161, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %162)
  %163 = icmp ult i32 %162, -6
  br i1 %163, label %if.end126.i.do.end52.sink.split_crit_edge, label %lor.lhs.false156.i

if.end126.i.do.end52.sink.split_crit_edge:        ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

lor.lhs.false156.i:                               ; preds = %if.end126.i
  %164 = ptrtoint ptr %mem_blocks.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mem_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %165)
  %cmp159.i = icmp ult i32 %165, 16
  br i1 %cmp159.i, label %lor.lhs.false156.i.do.end52.sink.split_crit_edge, label %lor.lhs.false161.i

lor.lhs.false156.i.do.end52.sink.split_crit_edge: ; preds = %lor.lhs.false156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

lor.lhs.false161.i:                               ; preds = %lor.lhs.false156.i
  %166 = ptrtoint ptr %cmd_bufs132.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cmd_bufs132.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool164.not.i = icmp eq i32 %167, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %158)
  %cmp168.i = icmp ult i16 %158, 64
  %or.cond328.i = select i1 %tobool164.not.i, i1 true, i1 %cmp168.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %158)
  %cmp173.i = icmp ugt i16 %158, 512
  %or.cond329.i = select i1 %or.cond328.i, i1 true, i1 %cmp173.i
  br i1 %or.cond329.i, label %lor.lhs.false161.i.do.end52.sink.split_crit_edge, label %lor.lhs.false175.i

lor.lhs.false161.i.do.end52.sink.split_crit_edge: ; preds = %lor.lhs.false161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

lor.lhs.false175.i:                               ; preds = %lor.lhs.false161.i
  %168 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rx_size.i, align 8
  %170 = add i32 %169, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28673, i32 %170)
  %171 = icmp ult i32 %170, -28673
  br i1 %171, label %lor.lhs.false175.i.do.end52.sink.split_crit_edge, label %lor.lhs.false185.i

lor.lhs.false175.i.do.end52.sink.split_crit_edge: ; preds = %lor.lhs.false175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

lor.lhs.false185.i:                               ; preds = %lor.lhs.false175.i
  %172 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %address.i, align 4
  %174 = add i32 %173, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %174)
  %175 = icmp ult i32 %174, 98304
  %176 = and i32 %173, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %176)
  %177 = icmp eq i32 %176, 2097152
  %retval.0.i360.i = or i1 %175, %177
  br i1 %retval.0.i360.i, label %if.end195.i, label %lor.lhs.false185.i.do.end52.sink.split_crit_edge

lor.lhs.false185.i.do.end52.sink.split_crit_edge: ; preds = %lor.lhs.false185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.sink.split

if.end195.i:                                      ; preds = %lor.lhs.false185.i
  %bcn_addr.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 3
  %178 = ptrtoint ptr %bcn_addr.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %bcn_addr.i, align 1
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #9
  %beacon_addr.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 9
  %181 = ptrtoint ptr %beacon_addr.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %beacon_addr.i, align 4
  %bcn_len.i = getelementptr inbounds %struct.carl9170fw_otus_desc, ptr %call1.i90, i32 0, i32 4
  %182 = ptrtoint ptr %bcn_len.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %bcn_len.i, align 1
  %184 = tail call i16 @llvm.bswap.i16(i16 %183) #9
  %conv197.i = zext i16 %184 to i32
  %beacon_max_len.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 10
  %185 = ptrtoint ptr %beacon_max_len.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv197.i, ptr %beacon_max_len.i, align 8
  %186 = add i32 %180, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %186)
  %187 = icmp ult i32 %186, 98304
  call void @__sanitizer_cov_trace_const_cmp2(i16 479, i16 %184)
  %cmp206.i = icmp ugt i16 %184, 479
  %or.cond374.i = select i1 %187, i1 %cmp206.i, i1 false
  br i1 %or.cond374.i, label %if.then208.i, label %if.end195.i.if.end222.i_crit_edge

if.end195.i.if.end222.i_crit_edge:                ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222.i

if.then208.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw209.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %188 = ptrtoint ptr %hw209.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw209.i, align 4
  %wiphy.i99 = getelementptr inbounds %struct.ieee80211_hw, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %wiphy.i99 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wiphy.i99, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %191, i32 0, i32 9
  %192 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %interface_modes.i, align 4
  %194 = or i16 %193, 2
  store i16 %194, ptr %interface_modes.i, align 4
  %195 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %feature_set.i, align 1
  %197 = and i32 %196, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.i362.not.i = icmp eq i32 %197, 0
  %spec.select.i = select i1 %tobool.i362.not.i, i16 260, i16 396
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.then208.i, %if.end195.i.if.end222.i_crit_edge
  %if_comb_types.0.i = phi i16 [ 260, %if.end195.i.if.end222.i_crit_edge ], [ %spec.select.i, %if.then208.i ]
  %198 = ptrtoint ptr %vif_num129.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %vif_num129.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %199)
  %cmp.i.i100 = icmp ult i32 %199, 2
  br i1 %cmp.i.i100, label %if.end222.i.carl9170_fw_set_if_combinations.exit.i_crit_edge, label %if.end.i363.i

if.end222.i.carl9170_fw_set_if_combinations.exit.i_crit_edge: ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_fw_set_if_combinations.exit.i

if.end.i363.i:                                    ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %199 to i16
  %if_comb_limits.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 27
  %200 = ptrtoint ptr %if_comb_limits.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv.i.i, ptr %if_comb_limits.i.i, align 4
  %types.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 27, i32 0, i32 1
  %201 = ptrtoint ptr %types.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %if_comb_types.0.i, ptr %types.i.i, align 2
  %if_combs.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 28
  %num_different_channels.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 28, i32 0, i32 1
  %202 = ptrtoint ptr %num_different_channels.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %num_different_channels.i.i, align 4
  %max_interfaces.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 28, i32 0, i32 2
  %203 = ptrtoint ptr %max_interfaces.i.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.i.i, ptr %max_interfaces.i.i, align 8
  %204 = ptrtoint ptr %if_combs.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %if_comb_limits.i.i, ptr %if_combs.i.i, align 8
  %n_limits.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 28, i32 0, i32 3
  %205 = ptrtoint ptr %n_limits.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %n_limits.i.i, align 2
  %hw.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %206 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %wiphy.i.i, align 8
  %iface_combinations.i.i = getelementptr inbounds %struct.wiphy, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %iface_combinations.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %if_combs.i.i, ptr %iface_combinations.i.i, align 16
  %211 = load ptr, ptr %hw.i.i, align 4
  %wiphy19.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %wiphy19.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wiphy19.i.i, align 8
  %n_iface_combinations.i.i = getelementptr inbounds %struct.wiphy, ptr %213, i32 0, i32 6
  %214 = ptrtoint ptr %n_iface_combinations.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %n_iface_combinations.i.i, align 4
  br label %carl9170_fw_set_if_combinations.exit.i

carl9170_fw_set_if_combinations.exit.i:           ; preds = %if.end.i363.i, %if.end222.i.carl9170_fw_set_if_combinations.exit.i_crit_edge
  %hw224.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %215 = ptrtoint ptr %hw224.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hw224.i, align 4
  %wiphy225.i = getelementptr inbounds %struct.ieee80211_hw, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %wiphy225.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %wiphy225.i, align 8
  %interface_modes226.i = getelementptr inbounds %struct.wiphy, ptr %218, i32 0, i32 9
  %219 = ptrtoint ptr %interface_modes226.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %interface_modes226.i, align 4
  %or228327.i = or i16 %220, %if_comb_types.0.i
  store i16 %or228327.i, ptr %interface_modes226.i, align 4
  %221 = load ptr, ptr %hw224.i, align 4
  %wiphy231.i = getelementptr inbounds %struct.ieee80211_hw, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %wiphy231.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %wiphy231.i, align 8
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %223, i32 0, i32 11
  %224 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %225, -17
  store i32 %and.i, ptr %flags.i, align 32
  %226 = load ptr, ptr %hw224.i, align 4
  %wiphy233.i = getelementptr inbounds %struct.ieee80211_hw, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %wiphy233.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %wiphy233.i, align 8
  %flags234.i = getelementptr inbounds %struct.wiphy, ptr %228, i32 0, i32 11
  %229 = ptrtoint ptr %flags234.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %flags234.i, align 32
  %or235.i = or i32 %230, 2130176
  store i32 %or235.i, ptr %flags234.i, align 32
  %call.i364.i = tail call fastcc ptr @carl9170_fw_find_desc(ptr noundef %ar, ptr noundef nonnull @.str.56, i32 noundef 12, i8 noundef zeroext 1) #9
  %tobool.not.i365.i = icmp eq ptr %call.i364.i, null
  br i1 %tobool.not.i365.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %carl9170_fw_set_if_combinations.exit.i
  %seq_table_addr.i.i = getelementptr inbounds %struct.carl9170fw_txsq_desc, ptr %call.i364.i, i32 0, i32 1
  %231 = ptrtoint ptr %seq_table_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %seq_table_addr.i.i, align 1
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #9
  %tx_seq_table.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 18
  %234 = ptrtoint ptr %tx_seq_table.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %tx_seq_table.i.i, align 4
  %235 = add i32 %233, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %235)
  %236 = icmp ult i32 %235, 98304
  %237 = and i32 %233, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %237)
  %238 = icmp eq i32 %237, 2097152
  %retval.0.i.i.i = or i1 %236, %238
  br i1 %retval.0.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.end52_crit_edge

if.then.i.i.do.end52_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %carl9170_fw_set_if_combinations.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_seq_table6.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 18
  %239 = ptrtoint ptr %tx_seq_table6.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %tx_seq_table6.i.i, align 4
  br label %cleanup

do.end52.sink.split:                              ; preds = %lor.lhs.false185.i.do.end52.sink.split_crit_edge, %lor.lhs.false175.i.do.end52.sink.split_crit_edge, %lor.lhs.false161.i.do.end52.sink.split_crit_edge, %lor.lhs.false156.i.do.end52.sink.split_crit_edge, %if.end126.i.do.end52.sink.split_crit_edge, %if.end76.i.do.end52.sink.split_crit_edge, %if.end21.i96.do.end52.sink.split_crit_edge, %if.end7.i.do.end52.sink.split_crit_edge, %if.end4.i.do.end52.sink.split_crit_edge, %if.end30.i.i.do.end52.sink.split_crit_edge, %if.end21.i.i.do.end52.sink.split_crit_edge, %if.end.i.i.do.end52.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.44, %if.end.i.i.do.end52.sink.split_crit_edge ], [ @.str.51, %if.end21.i.i.do.end52.sink.split_crit_edge ], [ @.str.54, %if.end30.i.i.do.end52.sink.split_crit_edge ], [ @.str.23, %if.end4.i.do.end52.sink.split_crit_edge ], [ @.str.26, %if.end7.i.do.end52.sink.split_crit_edge ], [ @.str.29, %if.end21.i96.do.end52.sink.split_crit_edge ], [ @.str.39, %if.end76.i.do.end52.sink.split_crit_edge ], [ @.str.42, %lor.lhs.false185.i.do.end52.sink.split_crit_edge ], [ @.str.42, %lor.lhs.false175.i.do.end52.sink.split_crit_edge ], [ @.str.42, %lor.lhs.false161.i.do.end52.sink.split_crit_edge ], [ @.str.42, %lor.lhs.false156.i.do.end52.sink.split_crit_edge ], [ @.str.42, %if.end126.i.do.end52.sink.split_crit_edge ]
  %retval.0.i101.ph.ph = phi i32 [ -61, %if.end.i.i.do.end52.sink.split_crit_edge ], [ -8, %if.end21.i.i.do.end52.sink.split_crit_edge ], [ -22, %if.end30.i.i.do.end52.sink.split_crit_edge ], [ -22, %if.end4.i.do.end52.sink.split_crit_edge ], [ -22, %if.end7.i.do.end52.sink.split_crit_edge ], [ -125, %if.end21.i96.do.end52.sink.split_crit_edge ], [ -22, %if.end76.i.do.end52.sink.split_crit_edge ], [ -22, %lor.lhs.false185.i.do.end52.sink.split_crit_edge ], [ -22, %lor.lhs.false175.i.do.end52.sink.split_crit_edge ], [ -22, %lor.lhs.false161.i.do.end52.sink.split_crit_edge ], [ -22, %lor.lhs.false156.i.do.end52.sink.split_crit_edge ], [ -22, %if.end126.i.do.end52.sink.split_crit_edge ]
  %240 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %udev.i86, align 4
  %dev20.i = getelementptr inbounds %struct.usb_device, ptr %241, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull %.str.26.sink) #12
  br label %do.end52

do.end52:                                         ; preds = %do.end52.sink.split, %if.then.i.i.do.end52_crit_edge, %if.end.i91.do.end52_crit_edge, %if.end13.i.i.do.end52_crit_edge, %carl9170_fw_info.exit.do.end52_crit_edge
  %retval.0.i101.ph = phi i32 [ -22, %carl9170_fw_info.exit.do.end52_crit_edge ], [ -5, %if.end13.i.i.do.end52_crit_edge ], [ -22, %if.then.i.i.do.end52_crit_edge ], [ -61, %if.end.i91.do.end52_crit_edge ], [ %retval.0.i101.ph.ph, %do.end52.sink.split ]
  %242 = ptrtoint ptr %udev.i86 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %udev.i86, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %243, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i101.ph) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.else.i.i, %if.then.i.i.cleanup_crit_edge, %do.end40, %do.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i85.ph, %do.end40 ], [ %retval.0.i101.ph, %do.end52 ], [ -61, %do.end30 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @carl9170_fw_find_desc(ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %descid, i32 noundef %len, i8 noundef zeroext %compatible_revision) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %bcmp55 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.13, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55)
  %tobool.not56 = icmp eq i32 %bcmp55, 0
  %.pre = trunc i32 %len to i16
  br i1 %tobool.not56, label %entry.for.end_crit_edge, label %land.lhs.true.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.lr.ph:                              ; preds = %entry
  %arrayidx4.i = getelementptr i8, ptr %descid, i32 1
  %arrayidx12.i = getelementptr i8, ptr %descid, i32 2
  %arrayidx20.i = getelementptr i8, ptr %descid, i32 3
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %iter.057 = phi ptr [ %1, %land.lhs.true.lr.ph ], [ %28, %for.inc.land.lhs.true_crit_edge ]
  %length = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %iter.057, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %length, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = add i16 %4, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8184, i16 %5)
  %6 = icmp ult i16 %5, 8184
  br i1 %6, label %for.body, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %descid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %descid, align 1
  %9 = ptrtoint ptr %iter.057 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iter.057, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp.i = icmp eq i8 %8, %10
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx7.i = getelementptr [4 x i8], ptr %iter.057, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp9.i = icmp eq i8 %12, %14
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx15.i = getelementptr [4 x i8], ptr %iter.057, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp17.i = icmp eq i8 %16, %18
  br i1 %cmp17.i, label %land.lhs.true19.i, label %land.lhs.true11.i.for.inc_crit_edge

land.lhs.true11.i.for.inc_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true19.i:                                ; preds = %land.lhs.true11.i
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx23.i = getelementptr [4 x i8], ptr %iter.057, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp25.i = icmp eq i8 %20, %22
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true19.i.for.inc_crit_edge

land.lhs.true19.i.for.inc_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true27.i:                                ; preds = %land.lhs.true19.i
  %cur_ver.i = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %iter.057, i32 0, i32 3
  %23 = ptrtoint ptr %cur_ver.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cur_ver.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %compatible_revision)
  %cmp30.i = icmp ult i8 %24, %compatible_revision
  br i1 %cmp30.i, label %land.lhs.true27.i.for.inc_crit_edge, label %lor.lhs.false.i

land.lhs.true27.i.for.inc_crit_edge:              ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %land.lhs.true27.i
  %min_ver.i = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %iter.057, i32 0, i32 2
  %25 = ptrtoint ptr %min_ver.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %min_ver.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %compatible_revision)
  %cmp34.i = icmp ugt i8 %26, %compatible_revision
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %.pre)
  %cmp39.not.i = icmp ult i16 %4, %.pre
  %or.cond53 = select i1 %cmp34.i, i1 true, i1 %cmp39.not.i
  br i1 %or.cond53, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.i.for.inc_crit_edge, %land.lhs.true27.i.for.inc_crit_edge, %land.lhs.true19.i.for.inc_crit_edge, %land.lhs.true11.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %iter.057 to i32
  %conv9 = zext i16 %4 to i32
  %add = add i32 %conv9, %27
  %28 = inttoptr i32 %add to ptr
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %28, ptr noundef nonnull dereferenceable(4) @.str.13, i32 4) #15
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.end.loopexit.split.loop.exit, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end.loopexit.split.loop.exit:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %29 = inttoptr i32 %add to ptr
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %iter.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %29, %for.end.loopexit.split.loop.exit ], [ %iter.057, %land.lhs.true.for.end_crit_edge ]
  %30 = ptrtoint ptr %descid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %descid, align 1
  %32 = ptrtoint ptr %iter.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iter.0.lcssa, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp.i26 = icmp eq i8 %31, %33
  br i1 %cmp.i26, label %land.lhs.true.i30, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i30:                                ; preds = %for.end
  %arrayidx4.i27 = getelementptr i8, ptr %descid, i32 1
  %34 = ptrtoint ptr %arrayidx4.i27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx4.i27, align 1
  %arrayidx7.i28 = getelementptr [4 x i8], ptr %iter.0.lcssa, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx7.i28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.i28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp9.i29 = icmp eq i8 %35, %37
  br i1 %cmp9.i29, label %land.lhs.true11.i34, label %land.lhs.true.i30.cleanup_crit_edge

land.lhs.true.i30.cleanup_crit_edge:              ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true11.i34:                              ; preds = %land.lhs.true.i30
  %arrayidx12.i31 = getelementptr i8, ptr %descid, i32 2
  %38 = ptrtoint ptr %arrayidx12.i31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx12.i31, align 1
  %arrayidx15.i32 = getelementptr [4 x i8], ptr %iter.0.lcssa, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx15.i32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx15.i32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp17.i33 = icmp eq i8 %39, %41
  br i1 %cmp17.i33, label %land.lhs.true19.i38, label %land.lhs.true11.i34.cleanup_crit_edge

land.lhs.true11.i34.cleanup_crit_edge:            ; preds = %land.lhs.true11.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true19.i38:                              ; preds = %land.lhs.true11.i34
  %arrayidx20.i35 = getelementptr i8, ptr %descid, i32 3
  %42 = ptrtoint ptr %arrayidx20.i35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx20.i35, align 1
  %arrayidx23.i36 = getelementptr [4 x i8], ptr %iter.0.lcssa, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx23.i36 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx23.i36, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp25.i37 = icmp eq i8 %43, %45
  br i1 %cmp25.i37, label %land.lhs.true27.i41, label %land.lhs.true19.i38.cleanup_crit_edge

land.lhs.true19.i38.cleanup_crit_edge:            ; preds = %land.lhs.true19.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true27.i41:                              ; preds = %land.lhs.true19.i38
  %cur_ver.i39 = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %iter.0.lcssa, i32 0, i32 3
  %46 = ptrtoint ptr %cur_ver.i39 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cur_ver.i39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %compatible_revision)
  %cmp30.i40 = icmp ult i8 %47, %compatible_revision
  br i1 %cmp30.i40, label %land.lhs.true27.i41.cleanup_crit_edge, label %lor.lhs.false.i44

land.lhs.true27.i41.cleanup_crit_edge:            ; preds = %land.lhs.true27.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i44:                                ; preds = %land.lhs.true27.i41
  %min_ver.i42 = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %iter.0.lcssa, i32 0, i32 2
  %48 = ptrtoint ptr %min_ver.i42 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %min_ver.i42, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %compatible_revision)
  %cmp34.i43 = icmp ugt i8 %49, %compatible_revision
  br i1 %cmp34.i43, label %lor.lhs.false.i44.cleanup_crit_edge, label %land.lhs.true36.i47

lor.lhs.false.i44.cleanup_crit_edge:              ; preds = %lor.lhs.false.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true36.i47:                              ; preds = %lor.lhs.false.i44
  call void @__sanitizer_cov_trace_pc() #11
  %length.i45 = getelementptr inbounds %struct.carl9170fw_desc_head, ptr %iter.0.lcssa, i32 0, i32 1
  %50 = ptrtoint ptr %length.i45 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %length.i45, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %.pre)
  %cmp39.not.i46 = icmp ult i16 %52, %.pre
  %spec.select = select i1 %cmp39.not.i46, ptr null, ptr %iter.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true36.i47, %lor.lhs.false.i44.cleanup_crit_edge, %land.lhs.true27.i41.cleanup_crit_edge, %land.lhs.true19.i38.cleanup_crit_edge, %land.lhs.true11.i34.cleanup_crit_edge, %land.lhs.true.i30.cleanup_crit_edge, %for.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end.cleanup_crit_edge ], [ null, %land.lhs.true.i30.cleanup_crit_edge ], [ null, %land.lhs.true11.i34.cleanup_crit_edge ], [ null, %land.lhs.true19.i38.cleanup_crit_edge ], [ null, %land.lhs.true27.i41.cleanup_crit_edge ], [ null, %lor.lhs.false.i44.cleanup_crit_edge ], [ %spec.select, %land.lhs.true36.i47 ], [ %iter.057, %lor.lhs.false.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 401, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 407, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @carl9170_parse_firmware._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @carl9170_parse_firmware._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 415, i32 3}
!11 = !{ptr @carl9170_parse_firmware._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @carl9170_parse_firmware._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 425, i32 3}
!15 = !{ptr @carl9170_parse_firmware._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @carl9170_parse_firmware._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 371, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @carl9170_find_fw_desc._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @carl9170_find_fw_desc._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @otus_magic, !23, !"otus_magic", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 18, i32 17}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 70, i32 32}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 88, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @carl9170_fw_info._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @carl9170_fw_info._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 93, i32 40}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 102, i32 3}
!37 = !{ptr @carl9170_fw_info._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @carl9170_fw_info._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 233, i32 40}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 243, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @carl9170_fw._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @carl9170_fw._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 252, i32 3}
!48 = !{ptr @carl9170_fw._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @carl9170_fw._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 258, i32 3}
!52 = !{ptr @carl9170_fw._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @carl9170_fw._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 265, i32 3}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @carl9170_fw._entry.31, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @carl9170_fw._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 270, i32 3}
!61 = !{ptr @carl9170_fw._entry.35, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @carl9170_fw._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 279, i32 3}
!65 = !{ptr @carl9170_fw._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @carl9170_fw._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 328, i32 3}
!69 = !{ptr @carl9170_fw._entry.41, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @carl9170_fw._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 149, i32 3}
!73 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @carl9170_fw_checksum._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @carl9170_fw_checksum._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 154, i32 39}
!78 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 158, i32 3}
!80 = !{ptr @carl9170_fw_checksum._entry.47, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @carl9170_fw_checksum._entry_ptr.49, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 176, i32 3}
!84 = !{ptr @carl9170_fw_checksum._entry.50, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @carl9170_fw_checksum._entry_ptr.52, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 182, i32 3}
!88 = !{ptr @carl9170_fw_checksum._entry.53, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @carl9170_fw_checksum._entry_ptr.55, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/carl9170/fw.c", i32 192, i32 40}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i32 0, i32 33}
