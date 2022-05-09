; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.anon.137 = type { i8, i8, i8, i8 }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }

@__UNIQUE_ID_author355 = internal constant [58 x i8] c"carl9170.author=Johannes Berg <johannes@sipsolutions.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [62 x i8] c"carl9170.author=Christian Lamparter <chunkeey@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [57 x i8] c"carl9170.file=drivers/net/wireless/ath/carl9170/carl9170\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [21 x i8] c"carl9170.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [57 x i8] c"carl9170.description=Atheros AR9170 802.11n USB wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [32 x i8] c"carl9170.firmware=carl9170-1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_alias361 = internal constant [25 x i8] c"carl9170.alias=ar9170usb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias362 = internal constant [25 x i8] c"carl9170.alias=arusb_lnx\00", section ".modinfo", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/carl9170/usb.c\00", [56 x i8] zeroinitializer }, align 32
@carl9170_exec_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 697, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no command feedback received (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"carl9170_exec_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_exec_cmd._entry_ptr = internal global ptr @carl9170_exec_cmd._entry, section ".printk_index", align 4
@carl9170_exec_cmd.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.6, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"carl9170\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"carl9170 cmd: \00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@carl9170_usb_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 775, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kill pending tx urbs.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"carl9170_usb_stop\00", [46 x i8] zeroinitializer }, align 32
@carl9170_usb_stop._entry_ptr = internal global ptr @carl9170_usb_stop._entry, section ".printk_index", align 4
@__initcall__kmod_carl9170__366_1192_carl9170_driver_init6 = internal global ptr @carl9170_driver_init, section ".initcall6.init", align 4
@carl9170_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.5, ptr @carl9170_usb_probe, ptr @carl9170_usb_disconnect, ptr null, ptr @carl9170_usb_suspend, ptr @carl9170_usb_resume, ptr @carl9170_usb_resume, ptr null, ptr null, ptr @carl9170_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 48 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_carl9170_driver_exit = internal global ptr @carl9170_driver_exit, section ".exitcall.exit", align 4
@carl9170_usb_cmd_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_usb_cmd_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"submit cmd cb failed (%d).\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"carl9170_usb_cmd_complete\00", [38 x i8] zeroinitializer }, align 32
@carl9170_usb_cmd_complete._entry_ptr = internal global ptr @carl9170_usb_cmd_complete._entry, section ".printk_index", align 4
@carl9170_usb_cmd_complete._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"submit cmd failed (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@carl9170_usb_cmd_complete._entry_ptr.14 = internal global ptr @carl9170_usb_cmd_complete._entry.12, section ".printk_index", align 4
@carl9170_usb_tx_data_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_usb_tx_data_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx failed (%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"carl9170_usb_tx_data_complete\00", [34 x i8] zeroinitializer }, align 32
@carl9170_usb_tx_data_complete._entry_ptr = internal global ptr @carl9170_usb_tx_data_complete._entry, section ".printk_index", align 4
@carl9170_usb_submit_data_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx submit failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"carl9170_usb_submit_data_urb\00", [35 x i8] zeroinitializer }, align 32
@carl9170_usb_submit_data_urb._entry_ptr = internal global ptr @carl9170_usb_submit_data_urb._entry, section ".printk_index", align 4
@carl9170_usb_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware upload failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"carl9170_usb_load_firmware\00", [37 x i8] zeroinitializer }, align 32
@carl9170_usb_load_firmware._entry_ptr = internal global ptr @carl9170_usb_load_firmware._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@carl9170_usb_cancel_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 591, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stuck tx urbs!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"carl9170_usb_cancel_urbs\00", [39 x i8] zeroinitializer }, align 32
@carl9170_usb_cancel_urbs._entry_ptr = internal global ptr @carl9170_usb_cancel_urbs._entry, section ".printk_index", align 4
@carl9170_usb_ids = internal constant { [29 x %struct.usb_device_id], [168 x i8] } { [29 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3315, i16 -28304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3315, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -13618, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 15376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 14857, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 14863, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2766, i16 4641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5173, i16 2052, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5173, i16 806, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13335, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 38, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -2782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 21252, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1033, i16 585, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1033, i16 692, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1404, i16 -31743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1404, i16 -31742, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5736, i16 4608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 -28304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"carl9170-1.fw\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@carl9170_usb_firmware_step2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 1032, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware not found.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"carl9170_usb_firmware_step2\00", [36 x i8] zeroinitializer }, align 32
@carl9170_usb_firmware_step2._entry_ptr = internal global ptr @carl9170_usb_firmware_step2._entry, section ".printk_index", align 4
@carl9170_usb_rx_irq_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_usb_rx_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 615, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 696, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 700, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 775, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"carl9170_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1178, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 270, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 274, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 200, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 150, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 862, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 591, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"carl9170_usb_ids\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 67, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1097, i32 48 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1367, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1368, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 87, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [43 x i8] c"../drivers/net/wireless/ath/carl9170/usb.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1032, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias361, ptr @__UNIQUE_ID_alias362, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_license358, ptr @__exitcall_carl9170_driver_exit, ptr @__initcall__kmod_carl9170__366_1192_carl9170_driver_init6, ptr @carl9170_driver_exit, ptr @carl9170_exec_cmd._entry, ptr @carl9170_exec_cmd._entry_ptr, ptr @carl9170_usb_cancel_urbs._entry, ptr @carl9170_usb_cancel_urbs._entry_ptr, ptr @carl9170_usb_cmd_complete._entry, ptr @carl9170_usb_cmd_complete._entry.12, ptr @carl9170_usb_cmd_complete._entry_ptr, ptr @carl9170_usb_cmd_complete._entry_ptr.14, ptr @carl9170_usb_firmware_step2._entry, ptr @carl9170_usb_firmware_step2._entry_ptr, ptr @carl9170_usb_load_firmware._entry, ptr @carl9170_usb_load_firmware._entry_ptr, ptr @carl9170_usb_stop._entry, ptr @carl9170_usb_stop._entry_ptr, ptr @carl9170_usb_submit_data_urb._entry, ptr @carl9170_usb_submit_data_urb._entry_ptr, ptr @carl9170_usb_tx_data_complete._entry, ptr @carl9170_usb_tx_data_complete._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @carl9170_driver, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @carl9170_usb_ids, ptr @.str.23, ptr @init_usb_anchor.__key, ptr @.str.24, ptr @init_usb_anchor.__key.25, ptr @.str.26, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_exec_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_cmd_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_cmd_complete._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_tx_data_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_submit_data_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_cancel_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_ids to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_usb_firmware_step2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_usb_handle_tx_err(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_err = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 15
  %call5 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err) #9
  %tobool.not6 = icmp eq ptr %call5, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call7 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call5, %entry.while.body_crit_edge ]
  %context = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %1) #9
  tail call void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %1) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #9
  %call = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_drop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_callback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef %cmd, i1 noundef zeroext %free_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.err_free_crit_edge, label %if.end

entry.err_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %3)
  %cmp1 = icmp ugt i8 %3, 60
  br i1 %cmp1, label %do.end, label %if.end25, !prof !103

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef null) #9
  br label %err_free

if.end25:                                         ; preds = %if.end
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end25.err_free_crit_edge, label %if.end28

if.end25.err_free_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end28:                                         ; preds = %if.end25
  %usb_ep_cmd_is_bulk = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 23
  %4 = ptrtoint ptr %usb_ep_cmd_is_bulk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usb_ep_cmd_is_bulk, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool29.not = icmp eq i8 %5, 0
  %udev36 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %6 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev36, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i75 = shl i32 %9, 8
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %shl.i75, -1073610752
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %transfer_buffer3.i, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %or39 = or i32 %shl.i75, 1073872896
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd, align 4
  %dev1.i77 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i77 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %dev1.i77, align 4
  %pipe2.i78 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or39, ptr %pipe2.i78, align 4
  %transfer_buffer3.i79 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i79 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd, ptr %transfer_buffer3.i79, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 25
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %20, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 23
  %22 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then30
  %add.sink.in.in = phi i8 [ %16, %if.else ], [ %11, %if.then30 ]
  %add.sink.in = zext i8 %add.sink.in.in to i32
  %add.sink = add nuw nsw i32 %add.sink.in, 4
  %23 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.sink, ptr %23, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @carl9170_usb_cmd_complete, ptr %25, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ar, ptr %27, align 4
  br i1 %free_buf, label %if.then46, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %29 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %transfer_flags, align 4
  %or47 = or i32 %30, 256
  store i32 %or47, ptr %transfer_flags, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44.if.end48_crit_edge
  %tx_cmd = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 14
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %tx_cmd) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call) #9
  %call49 = tail call fastcc i32 @carl9170_usb_submit_cmd_urb(ptr noundef %ar)
  br label %cleanup

err_free:                                         ; preds = %if.end25.err_free_crit_edge, %do.end, %entry.err_free_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ -1, %entry.err_free_crit_edge ], [ -12, %if.end25.err_free_crit_edge ]
  br i1 %free_buf, label %if.then51, label %err_free.cleanup_crit_edge

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %err_free.cleanup_crit_edge, %if.end48
  %retval.0 = phi i32 [ %call49, %if.end48 ], [ %err.0, %if.then51 ], [ %err.0, %err_free.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_cmd_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b70 = load i1, ptr @carl9170_usb_cmd_complete.__already_done, align 1
  br i1 %.b70, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !105

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_usb_cmd_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end39:                                         ; preds = %entry
  %tx_cmd_urbs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urbs, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urbs, ptr %tx_cmd_urbs, i32 1, ptr elementtype(i32) %tx_cmd_urbs) #9, !srcloc !106
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.epilog.thread
    i32 -2, label %if.end39.cleanup_crit_edge
    i32 -104, label %if.end39.cleanup_crit_edge78
    i32 -19, label %if.end39.cleanup_crit_edge79
    i32 -108, label %if.end39.cleanup_crit_edge80
  ]

if.end39.cleanup_crit_edge80:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge79:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge78:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end39
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %if.end42

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.thread:                                 ; preds = %if.end39
  %state73 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state73 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not74 = icmp eq i32 %9, 0
  br i1 %cmp.not74, label %sw.epilog.thread.cleanup_crit_edge, label %sw.epilog.thread.if.end48_crit_edge

sw.epilog.thread.if.end48_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.epilog.thread.cleanup_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool43.not = icmp eq i32 %4, 0
  br i1 %tobool43.not, label %if.end42.if.end48_crit_edge, label %do.end47

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %4) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end42.if.end48_crit_edge, %sw.epilog.thread.if.end48_crit_edge
  %call = tail call fastcc i32 @carl9170_usb_submit_cmd_urb(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool49.not = icmp eq i32 %call, 0
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %do.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %udev54 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %udev54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev54, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.13, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end48.cleanup_crit_edge, %sw.epilog.thread.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end39.cleanup_crit_edge78, %if.end39.cleanup_crit_edge79, %if.end39.cleanup_crit_edge80, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_usb_submit_cmd_urb(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_cmd_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urbs, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urbs, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urbs, ptr %tx_cmd_urbs, i32 1, ptr elementtype(i32) %tx_cmd_urbs) #9, !srcloc !108
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urbs, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urbs, ptr %tx_cmd_urbs, i32 1, ptr elementtype(i32) %tx_cmd_urbs) #9, !srcloc !106
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_cmd = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 14
  %call2 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_cmd) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urbs, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urbs, ptr %tx_cmd_urbs, i32 1, ptr elementtype(i32) %tx_cmd_urbs) #9, !srcloc !106
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %tx_anch) #9
  %call6 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then10, !prof !105

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call2) #9
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_cmd_urbs, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cmd_urbs, ptr %tx_cmd_urbs, i32 1, ptr elementtype(i32) %tx_cmd_urbs) #9, !srcloc !106
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call6, %if.end12 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_exec_cmd(ptr noundef %ar, i32 noundef %cmd, i32 noundef %plen, ptr noundef readonly %payload, i32 noundef %outlen, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %cmd, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 662) #9
  br label %if.end5

if.end5:                                          ; preds = %do.body, %if.end.if.end5_crit_edge
  %conv = trunc i32 %plen to i8
  %2 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 83
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %2, align 4
  %conv6 = trunc i32 %cmd to i8
  %cmd8 = getelementptr inbounds %struct.anon.137, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %cmd8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plen)
  %tobool9.not = icmp eq i32 %plen, 0
  br i1 %tobool9.not, label %if.end5.if.end14_crit_edge, label %land.lhs.true

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  %5 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 83, i32 0, i32 1
  %cmp10.not = icmp eq ptr %5, %payload
  br i1 %cmp10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then12

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr %5, ptr %payload, i32 %plen)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %cmd_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 81
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #9
  %readbuf = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 80
  %7 = ptrtoint ptr %readbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %out, ptr %readbuf, align 4
  %readlen = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 79
  %8 = ptrtoint ptr %readlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %outlen, ptr %readlen, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #9
  %cmd_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 82
  %9 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd_wait, align 4
  %call = tail call i32 @__carl9170_exec_cmd(ptr noundef %ar, ptr noundef %2, i1 noundef zeroext false)
  br i1 %tobool.not, label %if.then18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  %call20 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_wait, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then18.err_unbuf_crit_edge, label %if.end24

if.then18.err_unbuf_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unbuf

if.end24:                                         ; preds = %if.then18
  %10 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %readlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %outlen)
  %cmp26.not = icmp eq i32 %11, %outlen
  br i1 %cmp26.not, label %if.end24.cleanup_crit_edge, label %if.end24.err_unbuf_crit_edge

if.end24.err_unbuf_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unbuf

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_unbuf:                                        ; preds = %if.end24.err_unbuf_crit_edge, %if.then18.err_unbuf_crit_edge
  %err.0 = phi i32 [ -110, %if.then18.err_unbuf_crit_edge ], [ -90, %if.end24.err_unbuf_crit_edge ]
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp32 = icmp ugt i32 %13, 2
  br i1 %cmp32, label %do.end37, label %err_unbuf.if.end47_crit_edge

err_unbuf.if.end47_crit_edge:                     ; preds = %err_unbuf
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end37:                                         ; preds = %err_unbuf
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %err.0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_exec_cmd.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_exec_cmd, %if.then43)) #9
          to label %do.end46 [label %if.then43], !srcloc !110

if.then43:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %plen, 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %2, i32 noundef %add, i1 noundef zeroext true) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.end37
  tail call void @carl9170_restart(ptr noundef %ar, i32 noundef 6) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %err_unbuf.if.end47_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #9
  %16 = ptrtoint ptr %readbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %readbuf, align 4
  %17 = ptrtoint ptr %readlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %readlen, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end47 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_restart(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_usb_tx(ptr noundef %ar, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.end, label %entry.err_drop_crit_edge

entry.err_drop_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_drop

if.end:                                           ; preds = %entry
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.err_drop_crit_edge, label %if.end2

if.end.err_drop_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_drop

if.end2:                                          ; preds = %if.end
  %tx_stream3 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 12
  %2 = ptrtoint ptr %tx_stream3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_stream3, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %data8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data8, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len7, align 4
  %add = add i32 %7, 4
  %conv = trunc i32 %add to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr, align 4
  %tag = getelementptr i8, ptr %5, i32 -2
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 32361, ptr %tag, align 2
  br label %if.end10

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %data.0 = phi ptr [ %add.ptr, %if.then5 ], [ %5, %if.else ]
  %len.0 = phi i32 [ %add, %if.then5 ], [ %12, %if.else ]
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i = shl i32 %16, 8
  %or = or i32 %shl.i, -1073709056
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.0, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len.0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @carl9170_usb_tx_data_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %23 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_flags, align 4
  %or13 = or i32 %24, 64
  store i32 %or13, ptr %transfer_flags, align 4
  %tx_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 12
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %tx_wait) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call) #9
  tail call fastcc void @carl9170_usb_submit_data_urb(ptr noundef %ar)
  br label %cleanup

err_drop:                                         ; preds = %if.end.err_drop_crit_edge, %entry.err_drop_crit_edge
  tail call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %skb) #9
  tail call void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %err_drop, %if.end10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_tx_data_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef 0) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b76 = load i1, ptr @carl9170_usb_tx_data_complete.__already_done, align 1
  br i1 %.b76, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !105

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_usb_tx_data_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #9
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %5, i32 noundef 1) #9
  br label %cleanup

if.end40:                                         ; preds = %entry
  %tx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %3, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_anch_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_anch_urbs, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_anch_urbs, ptr %tx_anch_urbs, i32 1, ptr elementtype(i32) %tx_anch_urbs) #9, !srcloc !106
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %if.end40.sw.bb42_crit_edge
    i32 -104, label %if.end40.sw.bb42_crit_edge78
    i32 -19, label %if.end40.sw.bb42_crit_edge79
    i32 -108, label %if.end40.sw.bb42_crit_edge80
  ]

if.end40.sw.bb42_crit_edge80:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

if.end40.sw.bb42_crit_edge79:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

if.end40.sw.bb42_crit_edge78:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

if.end40.sw.bb42_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

sw.bb:                                            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %context41 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %10 = ptrtoint ptr %context41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context41, align 4
  tail call void @carl9170_tx_callback(ptr noundef nonnull %3, ptr noundef %11) #9
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end40.sw.bb42_crit_edge, %if.end40.sw.bb42_crit_edge78, %if.end40.sw.bb42_crit_edge79, %if.end40.sw.bb42_crit_edge80
  %tx_err = getelementptr inbounds %struct.ar9170, ptr %3, i32 0, i32 15
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %tx_err) #9
  br label %cleanup

sw.default:                                       ; preds = %if.end40
  %call43 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.default.if.end51_crit_edge, label %do.end48

sw.default.if.end51_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end48:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.ar9170, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.15, i32 noundef %15) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %sw.default.if.end51_crit_edge
  %tx_err52 = getelementptr inbounds %struct.ar9170, ptr %3, i32 0, i32 15
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %tx_err52) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end51, %sw.bb
  %state = getelementptr inbounds %struct.ar9170, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp ugt i32 %17, 2
  br i1 %cmp, label %if.then59, label %sw.epilog.cleanup_crit_edge, !prof !105

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @carl9170_usb_submit_data_urb(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %sw.epilog.cleanup_crit_edge, %sw.bb42, %if.then39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_usb_submit_data_urb(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_anch_urbs, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %tx_anch_urbs, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_anch_urbs, ptr %tx_anch_urbs, i32 1, ptr elementtype(i32) %tx_anch_urbs) #9, !srcloc !108
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 8
  br i1 %cmp, label %entry.err_acc_crit_edge, label %if.end

entry.err_acc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_acc

if.end:                                           ; preds = %entry
  %tx_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 12
  %call1 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_wait) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.err_acc_crit_edge, label %if.end3

if.end.err_acc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_acc

if.end3:                                          ; preds = %if.end
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1, ptr noundef %tx_anch) #9
  %call4 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13.thread, label %if.then8, !prof !105

if.end13.thread:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_urb(ptr noundef nonnull %call1) #9
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  %call9 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %do.end

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %status = getelementptr inbounds %struct.urb, ptr %call1, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %4) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then8.if.end13_crit_edge
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call1) #9
  %tx_err = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 15
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1, ptr noundef %tx_err) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call1) #9
  br label %err_acc

err_acc:                                          ; preds = %if.end13, %if.end.err_acc_crit_edge, %entry.err_acc_crit_edge
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_anch_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_anch_urbs, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_anch_urbs, ptr %tx_anch_urbs, i32 1, ptr elementtype(i32) %tx_anch_urbs) #9, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %err_acc, %if.end13.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_usb_stop(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #9
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5.not.i = icmp ult i32 %1, 2
  br i1 %cmp5.not.i, label %entry.carl9170_set_state_when.exit_crit_edge, label %if.then.i

entry.carl9170_set_state_when.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_set_state_when.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state.i, align 4
  br label %carl9170_set_state_when.exit

carl9170_set_state_when.exit:                     ; preds = %if.then.i, %entry.carl9170_set_state_when.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #9
  %call = tail call fastcc i32 @carl9170_usb_flush(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %carl9170_set_state_when.exit.if.end_crit_edge, label %do.end

carl9170_set_state_when.exit.if.end_crit_edge:    ; preds = %carl9170_set_state_when.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %carl9170_set_state_when.exit
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %carl9170_set_state_when.exit.if.end_crit_edge
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_poison_anchored_urbs(ptr noundef %tx_anch) #9
  %tx_err.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 15
  %call5.i = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err.i) #9
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end.carl9170_usb_handle_tx_err.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.carl9170_usb_handle_tx_err.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_handle_tx_err.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end.while.body.i_crit_edge ]
  %context.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 27
  %5 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context.i, align 4
  tail call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %6) #9
  tail call void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %6) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call7.i) #9
  %call.i = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_handle_tx_err.exit

carl9170_usb_handle_tx_err.exit:                  ; preds = %while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge, %if.end.carl9170_usb_handle_tx_err.exit_crit_edge
  %cmd_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 81
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #9
  %readlen = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 79
  %7 = ptrtoint ptr %readlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %readlen, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #9
  %cmd_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 82
  tail call void @complete(ptr noundef %cmd_wait) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_usb_flush(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 12
  %call16 = tail call ptr @usb_get_from_anchor(ptr noundef %tx_wait) #9
  %tobool.not17 = icmp eq ptr %call16, null
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call18 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call16, %entry.while.body_crit_edge ]
  %context = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %1) #9
  tail call void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %1) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call18) #9
  %call = tail call ptr @usb_get_from_anchor(ptr noundef %tx_wait) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_cmd = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 14
  %call1 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %tx_cmd, i32 noundef 1000) #9
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  %call2 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %tx_anch, i32 noundef 1000) #9
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anch) #9
  %tx_err.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 15
  %call5.i = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err.i) #9
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %while.end.carl9170_usb_handle_tx_err.exit_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.carl9170_usb_handle_tx_err.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_handle_tx_err.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %while.end.while.body.i_crit_edge ]
  %context.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 27
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  tail call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %3) #9
  tail call void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %3) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call7.i) #9
  %call.i = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_handle_tx_err.exit

carl9170_usb_handle_tx_err.exit:                  ; preds = %while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge, %while.end.carl9170_usb_handle_tx_err.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %4 = select i1 %cmp3, i1 true, i1 %cmp
  %err.1 = select i1 %4, i32 -110, i32 0
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_usb_open(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_unpoison_anchored_urbs(ptr noundef %tx_anch) #9
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #9
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not.i = icmp eq i32 %1, 0
  br i1 %cmp5.not.i, label %entry.carl9170_set_state_when.exit_crit_edge, label %if.then.i

entry.carl9170_set_state_when.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_set_state_when.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state.i, align 4
  br label %carl9170_set_state_when.exit

carl9170_set_state_when.exit:                     ; preds = %if.then.i, %entry.carl9170_set_state_when.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unpoison_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @carl9170_usb_restart(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 8
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %condition = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %condition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_seq = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 78
  %4 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2, ptr %cmd_seq, align 4
  %call = tail call i32 @carl9170_reboot(ptr noundef %ar) #9
  tail call void @carl9170_usb_stop(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end2:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 16, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end2.tasklet_schedule.exit_crit_edge

if.end2.tasklet_schedule.exit_crit_edge:          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %usb_tasklet = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 16
  tail call void @__tasklet_schedule(ptr noundef %usb_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end2.tasklet_schedule.exit_crit_edge
  tail call void @msleep(i32 noundef 1100) #9
  %tx_anch.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_unpoison_anchored_urbs(ptr noundef %tx_anch.i) #9
  %state_lock.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i.i) #9
  %state.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp5.not.i.i, label %tasklet_schedule.exit.carl9170_usb_open.exit_crit_edge, label %if.then.i.i

tasklet_schedule.exit.carl9170_usb_open.exit_crit_edge: ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_open.exit

if.then.i.i:                                      ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %state.i.i, align 4
  br label %carl9170_usb_open.exit

carl9170_usb_open.exit:                           ; preds = %if.then.i.i, %tasklet_schedule.exit.carl9170_usb_open.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i.i, i32 noundef %call2.i.i) #9
  %call7 = tail call fastcc i32 @carl9170_usb_load_firmware(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %carl9170_usb_open.exit.cleanup_crit_edge, label %carl9170_usb_open.exit.err_out_crit_edge

carl9170_usb_open.exit.err_out_crit_edge:         ; preds = %carl9170_usb_open.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

carl9170_usb_open.exit.cleanup_crit_edge:         ; preds = %carl9170_usb_open.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_out:                                          ; preds = %carl9170_usb_open.exit.err_out_crit_edge, %if.end.err_out_crit_edge
  %err.0 = phi i32 [ %call, %if.end.err_out_crit_edge ], [ %call7, %carl9170_usb_open.exit.err_out_crit_edge ]
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef %ar)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %carl9170_usb_open.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %carl9170_usb_open.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_reboot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_usb_load_firmware(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %fw1 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 1
  %1 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %offset = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 8
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool9.not72 = icmp eq i32 %sub, 0
  br i1 %tobool9.not72, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %data2 = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data2, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %6
  %address = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 3
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %addr.075 = phi i32 [ %10, %while.body.lr.ph ], [ %add, %if.end17.while.body_crit_edge ]
  %len.074 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub18, %if.end17.while.body_crit_edge ]
  %data.073 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr19, %if.end17.while.body_crit_edge ]
  %11 = tail call i32 @llvm.umin.i32(i32 %len.074, i32 4096)
  %12 = call ptr @memcpy(ptr %call7.i, ptr %data.073, i32 %11)
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i = shl i32 %16, 8
  %or = or i32 %shl.i, -2147483648
  %shr = lshr i32 %addr.075, 8
  %conv = trunc i32 %shr to i16
  %conv12 = trunc i32 %11 to i16
  %call13 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or, i8 noundef zeroext 48, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv12, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %do.end

if.end17:                                         ; preds = %while.body
  %sub18 = sub i32 %len.074, %11
  %add.ptr19 = getelementptr i8, ptr %data.073, i32 %11
  %add = add i32 %addr.075, %11
  %tobool9.not = icmp eq i32 %sub18, 0
  br i1 %tobool9.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  %udev20 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %17 = ptrtoint ptr %udev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev20, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i71 = shl i32 %20, 8
  %or23 = or i32 %shl.i71, -2147483648
  %call24 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or23, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 200) #9
  %fw_boot_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 25
  %call25 = tail call i32 @wait_for_completion_timeout(ptr noundef %fw_boot_wait, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %while.end.do.end_crit_edge, label %if.end29

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end29:                                         ; preds = %while.end
  %call30 = tail call i32 @carl9170_echo_test(ptr noundef %ar, i32 noundef 1242628387) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.do.end_crit_edge

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_seq = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 78
  %21 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %cmd_seq, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end29.do.end_crit_edge, %while.end.do.end_crit_edge, %if.then16, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call13, %if.then16 ], [ %call30, %if.end29.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ], [ -110, %while.end.do.end_crit_edge ]
  %udev34 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %22 = ptrtoint ptr %udev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev34, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %err.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end33
  %retval.0 = phi i32 [ %err.0, %do.end ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_usb_cancel_urbs(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #9
  %state.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #9
  %call = tail call fastcc i32 @carl9170_usb_flush(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_poison_anchored_urbs(ptr noundef %tx_anch) #9
  %tx_err.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 15
  %call5.i = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err.i) #9
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end.carl9170_usb_handle_tx_err.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.carl9170_usb_handle_tx_err.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_handle_tx_err.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end.while.body.i_crit_edge ]
  %context.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 27
  %3 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context.i, align 4
  tail call void @carl9170_tx_drop(ptr noundef %ar, ptr noundef %4) #9
  tail call void @carl9170_tx_callback(ptr noundef %ar, ptr noundef %4) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call7.i) #9
  %call.i = tail call ptr @usb_get_from_anchor(ptr noundef %tx_err.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_handle_tx_err.exit

carl9170_usb_handle_tx_err.exit:                  ; preds = %while.body.i.carl9170_usb_handle_tx_err.exit_crit_edge, %if.end.carl9170_usb_handle_tx_err.exit_crit_edge
  %rx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 9
  tail call void @usb_poison_anchored_urbs(ptr noundef %rx_anch) #9
  %usb_tasklet = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 16
  tail call void @tasklet_kill(ptr noundef %usb_tasklet) #9
  %rx_work = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 10
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %rx_work) #9
  %rx_pool = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 11
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %rx_pool) #9
  %tx_cmd = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 14
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %tx_cmd) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_usb_reset(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef %ar)
  tail call void @carl9170_usb_stop(ptr noundef %ar)
  %intf = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 8
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  tail call void @usb_queue_reset_device(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @carl9170_driver, ptr noundef null, ptr noundef nonnull @.str.5) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @carl9170_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_echo_test(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_scuttle_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @carl9170_alloc(i32 noundef 8624) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i82 = getelementptr i8, ptr %4, i32 -128
  %udev8 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 7
  %5 = ptrtoint ptr %udev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i82, ptr %udev8, align 4
  %intf9 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 8
  %6 = ptrtoint ptr %intf9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %intf, ptr %intf9, align 8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %7 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_info, align 4
  %features = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 22
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %features, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %10 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints106 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bNumEndpoints106 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumEndpoints106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp108.not = icmp eq i8 %13, 0
  br i1 %cmp108.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %usb_ep_cmd_is_bulk = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %14 = phi ptr [ %11, %for.body.lr.ph ], [ %25, %for.inc.for.body_crit_edge ]
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %16, i32 %i.0109
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress.i, align 1
  %19 = and i8 %18, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %.not = icmp eq i8 %19, 4
  br i1 %.not, label %land.lhs.true18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true18:                                  ; preds = %for.body
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp20 = icmp eq i8 %22, 2
  br i1 %cmp20, label %if.then22, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %usb_ep_cmd_is_bulk to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %usb_ep_cmd_is_bulk, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %24 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %hw = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 1
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56, i32 1
  %33 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %parent.i.i, align 8
  %rx_anch = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 9
  %34 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 9, i32 1
  %35 = call ptr @memset(ptr %34, i32 0, i32 104)
  %36 = ptrtoint ptr %rx_anch to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %rx_anch, ptr %rx_anch, align 4
  %prev.i.i = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 9, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %rx_anch, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %34, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %rx_pool = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 11
  %38 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 11, i32 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 104)
  %40 = ptrtoint ptr %rx_pool to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %rx_pool, ptr %rx_pool, align 4
  %prev.i.i85 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 11, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rx_pool, ptr %prev.i.i85, align 4
  tail call void @__init_waitqueue_head(ptr noundef %38, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i87 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i87, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %rx_work = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 10
  %42 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 10, i32 1
  %43 = call ptr @memset(ptr %42, i32 0, i32 104)
  %44 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %rx_work, ptr %rx_work, align 4
  %prev.i.i88 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 10, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rx_work, ptr %prev.i.i88, align 4
  tail call void @__init_waitqueue_head(ptr noundef %42, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i90 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i90, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %tx_wait = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 12
  %46 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 12, i32 1
  %47 = call ptr @memset(ptr %46, i32 0, i32 104)
  %48 = ptrtoint ptr %tx_wait to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %tx_wait, ptr %tx_wait, align 4
  %prev.i.i91 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 12, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i91 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_wait, ptr %prev.i.i91, align 4
  tail call void @__init_waitqueue_head(ptr noundef %46, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i93 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i93, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %tx_anch = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 13
  %50 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 13, i32 1
  %51 = call ptr @memset(ptr %50, i32 0, i32 104)
  %52 = ptrtoint ptr %tx_anch to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %tx_anch, ptr %tx_anch, align 4
  %prev.i.i94 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 13, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %tx_anch, ptr %prev.i.i94, align 4
  tail call void @__init_waitqueue_head(ptr noundef %50, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i96 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i96, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %tx_cmd = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 14
  %54 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 14, i32 1
  %55 = call ptr @memset(ptr %54, i32 0, i32 104)
  %56 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %tx_cmd, ptr %tx_cmd, align 4
  %prev.i.i97 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 14, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i97 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx_cmd, ptr %prev.i.i97, align 4
  tail call void @__init_waitqueue_head(ptr noundef %54, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i99 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i99, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %tx_err = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 15
  %58 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 15, i32 1
  %59 = call ptr @memset(ptr %58, i32 0, i32 104)
  %60 = ptrtoint ptr %tx_err to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %tx_err, ptr %tx_err, align 4
  %prev.i.i100 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 15, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx_err, ptr %prev.i.i100, align 4
  tail call void @__init_waitqueue_head(ptr noundef %58, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i102 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 15, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i102, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key.25, i16 noundef signext 3) #9
  %cmd_wait = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 82
  %62 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %cmd_wait, align 4
  %wait.i103 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 82, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i103, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #9
  %fw_boot_wait = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 25
  %63 = ptrtoint ptr %fw_boot_wait to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %fw_boot_wait, align 4
  %wait.i104 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i104, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #9
  %fw_load_wait = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 24
  %64 = ptrtoint ptr %fw_load_wait to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %fw_load_wait, align 4
  %wait.i105 = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i105, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #9
  %usb_tasklet = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 16
  tail call void @tasklet_setup(ptr noundef %usb_tasklet, ptr noundef nonnull @carl9170_usb_tasklet) #9
  %tx_cmd_urbs = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cmd_urbs, i32 noundef 4) #9
  %65 = ptrtoint ptr %tx_cmd_urbs to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %tx_cmd_urbs, align 4
  %tx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 18
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_anch_urbs, i32 noundef 4) #9
  %66 = ptrtoint ptr %tx_anch_urbs to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %tx_anch_urbs, align 4
  %rx_work_urbs = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 20
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_work_urbs, i32 noundef 4) #9
  %67 = ptrtoint ptr %rx_work_urbs to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %rx_work_urbs, align 4
  %rx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 19
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  %68 = ptrtoint ptr %rx_anch_urbs to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %rx_anch_urbs, align 4
  %rx_pool_urbs = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 21
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pool_urbs, i32 noundef 4) #9
  %69 = ptrtoint ptr %rx_pool_urbs to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 0, ptr %rx_pool_urbs, align 4
  %call24 = tail call ptr @usb_get_intf(ptr noundef %intf) #9
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #9
  %state.i.i = getelementptr inbounds %struct.ar9170, ptr %call2, i32 0, i32 3
  %70 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %state.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #9
  %71 = ptrtoint ptr %udev8 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev8, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  %call27 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef %dev26, i32 noundef 3264, ptr noundef %call2, ptr noundef nonnull @carl9170_usb_firmware_step2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.end.cleanup_crit_edge, label %if.then29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_put_intf(ptr noundef %intf) #9
  tail call void @carl9170_free(ptr noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %for.end.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call1, %entry.cleanup_crit_edge ], [ %call27, %if.then29 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1110, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %fw_load_wait = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 24
  tail call void @wait_for_completion(ptr noundef %fw_load_wait) #9
  %state = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end23.if.end26_crit_edge, label %if.then24

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @carl9170_reboot(ptr noundef nonnull %1) #9
  tail call void @carl9170_usb_stop(ptr noundef nonnull %1)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end23.if.end26_crit_edge
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef nonnull %1)
  tail call void @carl9170_unregister(ptr noundef nonnull %1) #9
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %fw1.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26, i32 1
  %5 = ptrtoint ptr %fw1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end26.carl9170_release_firmware.exit_crit_edge, label %if.then.i

if.end26.carl9170_release_firmware.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_release_firmware.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %fw.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 26
  tail call void @release_firmware(ptr noundef nonnull %6) #9
  %7 = call ptr @memset(ptr %fw.i, i32 0, i32 68)
  br label %carl9170_release_firmware.exit

carl9170_release_firmware.exit:                   ; preds = %if.then.i, %if.end26.carl9170_release_firmware.exit_crit_edge
  tail call void @carl9170_free(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %carl9170_release_firmware.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_usb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carl9170_usb_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_anch = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 9
  tail call void @usb_unpoison_anchored_urbs(ptr noundef %rx_anch) #9
  %state_lock.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #9
  %state.i.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %call2.i) #9
  tail call void @msleep(i32 noundef 1100) #9
  %call1 = tail call fastcc i32 @carl9170_usb_init_device(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_unrx

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_unrx:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %err_unrx, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_unrx ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @carl9170_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1812
  %state = getelementptr i8, ptr %t, i32 -848
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_work.i = getelementptr i8, ptr %t, i32 -672
  %rx_work_urbs.i = getelementptr i8, ptr %t, i32 36
  %rx_pool.i = getelementptr i8, ptr %t, i32 -560
  %rx_pool_urbs.i = getelementptr i8, ptr %t, i32 40
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %if.end
  %i.017.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end3.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @usb_get_from_anchor(ptr noundef %rx_work.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.carl9170_usb_rx_work.exit_crit_edge, label %if.end.i

for.body.i.carl9170_usb_rx_work.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_rx_work.exit

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_work_urbs.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_work_urbs.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_work_urbs.i, ptr %rx_work_urbs.i, i32 1, ptr elementtype(i32) %rx_work_urbs.i) #9, !srcloc !106
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.i = icmp eq i32 %4, 0
  br i1 %cmp1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length.i, align 4
  tail call void @carl9170_rx(ptr noundef %add.ptr, ptr noundef %6, i32 noundef %8) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_pool.i) #9
  %call.i.i16.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pool_urbs.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_pool_urbs.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pool_urbs.i, ptr %rx_pool_urbs.i, i32 1, ptr elementtype(i32) %rx_pool_urbs.i) #9, !srcloc !111
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  %call4.i = tail call fastcc i32 @carl9170_usb_submit_rx_urb(ptr noundef %add.ptr, i32 noundef 2592) #9
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end3.i.carl9170_usb_rx_work.exit_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end3.i.carl9170_usb_rx_work.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_rx_work.exit

carl9170_usb_rx_work.exit:                        ; preds = %if.end3.i.carl9170_usb_rx_work.exit_crit_edge, %for.body.i.carl9170_usb_rx_work.exit_crit_edge
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2 = icmp ugt i32 %11, 2
  br i1 %cmp2, label %if.then3, label %carl9170_usb_rx_work.exit.cleanup_crit_edge

carl9170_usb_rx_work.exit.cleanup_crit_edge:      ; preds = %carl9170_usb_rx_work.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %carl9170_usb_rx_work.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @carl9170_tx_scheduler(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %carl9170_usb_rx_work.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_firmware_step2(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %fw2 = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 26, i32 1
  %0 = ptrtoint ptr %fw2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fw, ptr %fw2, align 4
  %intf1.i = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 8
  %1 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf1.i, align 8
  %call.i = tail call i32 @carl9170_parse_firmware(ptr noundef %context) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.err_freefw.i_crit_edge

if.then.err_freefw.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_freefw.i

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call fastcc i32 @carl9170_usb_init_device(ptr noundef %context) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err_freefw.i_crit_edge

if.end.i.err_freefw.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_freefw.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @carl9170_register(ptr noundef %context) #9
  tail call void @carl9170_usb_stop(ptr noundef %context) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %err_unrx.i

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_load_wait.i = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 24
  tail call void @complete(ptr noundef %fw_load_wait.i) #9
  br label %cleanup

err_unrx.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef %context) #9
  br label %err_freefw.i

err_freefw.i:                                     ; preds = %err_unrx.i, %if.end.i.err_freefw.i_crit_edge, %if.then.err_freefw.i_crit_edge
  %3 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %err_freefw.i.carl9170_release_firmware.exit.i_crit_edge, label %if.then.i.i

err_freefw.i.carl9170_release_firmware.exit.i_crit_edge: ; preds = %err_freefw.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_release_firmware.exit.i

if.then.i.i:                                      ; preds = %err_freefw.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw.i.i = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 26
  tail call void @release_firmware(ptr noundef nonnull %4) #9
  %5 = call ptr @memset(ptr %fw.i.i, i32 0, i32 68)
  br label %carl9170_release_firmware.exit.i

carl9170_release_firmware.exit.i:                 ; preds = %if.then.i.i, %err_freefw.i.carl9170_release_firmware.exit.i_crit_edge
  %6 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf1.i, align 8
  %udev2.i.i = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 7
  %8 = ptrtoint ptr %udev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev2.i.i, align 4
  %fw_load_wait.i.i = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 24
  tail call void @complete(ptr noundef %fw_load_wait.i.i) #9
  %mutex.i.i.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #9
  tail call void @usb_driver_release_interface(ptr noundef nonnull @carl9170_driver, ptr noundef %7) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 7
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #12
  %intf1.i7 = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 8
  %12 = ptrtoint ptr %intf1.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf1.i7, align 8
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %fw_load_wait.i8 = getelementptr inbounds %struct.ar9170, ptr %context, i32 0, i32 24
  tail call void @complete(ptr noundef %fw_load_wait.i8) #9
  %mutex.i.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #9
  tail call void @usb_driver_release_interface(ptr noundef nonnull @carl9170_driver, ptr noundef %13) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %carl9170_release_firmware.exit.i, %if.end9.i
  %.sink = phi ptr [ %13, %do.end ], [ %7, %carl9170_release_firmware.exit.i ], [ %2, %if.end9.i ]
  tail call void @usb_put_intf(ptr noundef %.sink) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_rx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_usb_submit_rx_urb(ptr noundef %ar, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 19
  %call.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  %0 = ptrtoint ptr %rx_anch_urbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rx_anch_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp25 = icmp slt i32 %1, 16
  br i1 %cmp25, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_pool = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 11
  %rx_anch = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 9
  %rx_pool_urbs = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %land.rhs.lr.ph
  %inc29 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %if.end10.while.body_crit_edge ]
  %call2 = tail call ptr @usb_get_from_anchor(ptr noundef %rx_pool) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.if.end10_crit_edge, label %if.then

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %while.body
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %rx_anch) #9
  %call3 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef %gfp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then7, !prof !105

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call2) #9
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %rx_pool) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pool_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_pool_urbs, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pool_urbs, ptr %rx_pool_urbs, i32 1, ptr elementtype(i32) %rx_pool_urbs) #9, !srcloc !106
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_anch_urbs, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_anch_urbs, ptr %rx_anch_urbs, i32 1, ptr elementtype(i32) %rx_anch_urbs) #9, !srcloc !111
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  tail call void @usb_free_urb(ptr noundef nonnull %call2) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end, %while.body.if.end10_crit_edge
  %err.1 = phi i32 [ %call3, %if.end ], [ -28, %while.body.if.end10_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  %4 = ptrtoint ptr %rx_anch_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rx_anch_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp = icmp sgt i32 %5, 15
  %inc = add nuw nsw i32 %inc29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc29)
  %exitcond.not = icmp eq i32 %inc29, 16
  %or.cond = select i1 %cmp, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %err.1, %if.end10.while.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_parse_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_usb_init_device(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_seq = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 78
  %0 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2, ptr %cmd_seq, align 4
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge, label %if.end.i

entry.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_send_rx_irq_urb.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge, label %if.end4.i

if.end.i.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_send_rx_irq_urb.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %udev.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or7.i = or i32 %shl.i.i, 1073840256
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or7.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %10 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @carl9170_usb_rx_irq_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %11 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ar, ptr %context4.i.i, align 4
  %12 = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %12, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 23
  %14 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %start_frame.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_flags.i, align 4
  %or8.i = or i32 %16, 256
  store i32 %or8.i, ptr %transfer_flags.i, align 4
  %rx_anch.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_anch.i) #9
  %call9.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end, label %if.then11.i

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #9
  br label %carl9170_usb_send_rx_irq_urb.exit.thread

carl9170_usb_send_rx_irq_urb.exit.thread:         ; preds = %if.then11.i, %if.end.i.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge, %entry.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -12, %entry.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge ], [ -12, %if.end.i.carl9170_usb_send_rx_irq_urb.exit.thread_crit_edge ], [ %call9.i, %if.then11.i ]
  tail call void @usb_free_urb(ptr noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  %rx_size.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 17
  %rx_pool.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 11
  %rx_pool_urbs.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 21
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i26.if.end8.i.i.i_crit_edge, %if.end
  %i.022.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i26.if.end8.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %rx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_size.i.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge, label %if.end.i.i

if.end8.i.i.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_init_rx_bulk_urbs.exit

if.end.i.i:                                       ; preds = %if.end8.i.i.i
  %call1.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i26

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %carl9170_usb_init_rx_bulk_urbs.exit

if.end.i26:                                       ; preds = %if.end.i.i
  %19 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i = shl i32 %22, 8
  %or7.i.i = or i32 %shl.i.i.i, -1073676160
  %23 = ptrtoint ptr %rx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_size.i.i, align 8
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %20, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or7.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i.i, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @carl9170_usb_rx_complete, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ar, ptr %context4.i.i.i, align 4
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_flags.i.i, align 4
  %or10.i.i = or i32 %32, 256
  store i32 %or10.i.i, ptr %transfer_flags.i.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1.i.i, ptr noundef %rx_pool.i) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pool_urbs.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_pool_urbs.i, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pool_urbs.i, ptr %rx_pool_urbs.i, i32 1, ptr elementtype(i32) %rx_pool_urbs.i) #9, !srcloc !111
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i.i) #9
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i26.if.end8.i.i.i_crit_edge

if.end.i26.if.end8.i.i.i_crit_edge:               ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

for.end.i:                                        ; preds = %if.end.i26
  %call1.i = tail call fastcc i32 @carl9170_usb_submit_rx_urb(ptr noundef %ar, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i27 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i27, label %if.end4.i28, label %for.end.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge

for.end.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_init_rx_bulk_urbs.exit

if.end4.i28:                                      ; preds = %for.end.i
  %state_lock.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i.i) #9
  %state.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %34 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp5.not.i.i, label %if.end4.i28.if.end4_crit_edge, label %if.then.i.i

if.end4.i28.if.end4_crit_edge:                    ; preds = %if.end4.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then.i.i:                                      ; preds = %if.end4.i28
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %state.i.i, align 4
  br label %if.end4

carl9170_usb_init_rx_bulk_urbs.exit:              ; preds = %for.end.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge, %if.then3.i.i, %if.end8.i.i.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge
  %err.0.i29 = phi i32 [ %call1.i, %for.end.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge ], [ -12, %if.then3.i.i ], [ -12, %if.end8.i.i.i.carl9170_usb_init_rx_bulk_urbs.exit_crit_edge ]
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %rx_pool.i) #9
  %rx_work.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 10
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %rx_work.i) #9
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_anch.i) #9
  br label %err_unrx

if.end4:                                          ; preds = %if.then.i.i, %if.end4.i28.if.end4_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i.i, i32 noundef %call2.i.i) #9
  %tx_anch.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 13
  tail call void @usb_unpoison_anchored_urbs(ptr noundef %tx_anch.i) #9
  %call2.i.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i.i) #9
  %37 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp5.not.i.i34 = icmp eq i32 %38, 0
  br i1 %cmp5.not.i.i34, label %if.end4.carl9170_usb_open.exit_crit_edge, label %if.then.i.i35

if.end4.carl9170_usb_open.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %carl9170_usb_open.exit

if.then.i.i35:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %state.i.i, align 4
  br label %carl9170_usb_open.exit

carl9170_usb_open.exit:                           ; preds = %if.then.i.i35, %if.end4.carl9170_usb_open.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i.i, i32 noundef %call2.i.i32) #9
  %mutex = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call9 = tail call fastcc i32 @carl9170_usb_load_firmware(ptr noundef %ar)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %carl9170_usb_open.exit.cleanup_crit_edge, label %err_stop

carl9170_usb_open.exit.cleanup_crit_edge:         ; preds = %carl9170_usb_open.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_stop:                                         ; preds = %carl9170_usb_open.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @carl9170_usb_stop(ptr noundef %ar)
  br label %err_unrx

err_unrx:                                         ; preds = %err_stop, %carl9170_usb_init_rx_bulk_urbs.exit
  %err.0 = phi i32 [ %err.0.i29, %carl9170_usb_init_rx_bulk_urbs.exit ], [ %call9, %err_stop ]
  tail call fastcc void @carl9170_usb_cancel_urbs(ptr noundef %ar)
  br label %cleanup

cleanup:                                          ; preds = %err_unrx, %carl9170_usb_open.exit.cleanup_crit_edge, %carl9170_usb_send_rx_irq_urb.exit.thread
  %retval.0 = phi i32 [ 0, %carl9170_usb_open.exit.cleanup_crit_edge ], [ %err.0, %err_unrx ], [ %err.0.i.ph, %carl9170_usb_send_rx_irq_urb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_rx_irq_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @carl9170_usb_rx_irq_complete.__already_done, align 1
  br i1 %.b59, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !105

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_usb_rx_irq_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end39:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %if.end39.resubmit_crit_edge [
    i32 0, label %sw.epilog
    i32 -2, label %if.end39.cleanup_crit_edge
    i32 -104, label %if.end39.cleanup_crit_edge61
    i32 -19, label %if.end39.cleanup_crit_edge62
    i32 -108, label %if.end39.cleanup_crit_edge63
  ]

if.end39.cleanup_crit_edge63:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge62:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge61:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.resubmit_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

sw.epilog:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  tail call void @carl9170_handle_command_response(ptr noundef nonnull %1, ptr noundef %6, i32 noundef %8) #9
  br label %resubmit

resubmit:                                         ; preds = %sw.epilog, %if.end39.resubmit_crit_edge
  %rx_anch = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_anch) #9
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %resubmit.cleanup_crit_edge, label %if.then47, !prof !105

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef %urb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %resubmit.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end39.cleanup_crit_edge61, %if.end39.cleanup_crit_edge62, %if.end39.cleanup_crit_edge63, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_handle_command_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @carl9170_usb_rx_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b72 = load i1, ptr @carl9170_usb_rx_complete.__already_done, align 1
  br i1 %.b72, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !105

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @carl9170_usb_rx_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end39:                                         ; preds = %entry
  %rx_anch_urbs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_anch_urbs, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_anch_urbs, ptr %rx_anch_urbs, i32 1, ptr elementtype(i32) %rx_anch_urbs) #9, !srcloc !106
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %if.end39.cleanup_crit_edge
    i32 -104, label %if.end39.cleanup_crit_edge77
    i32 -19, label %if.end39.cleanup_crit_edge78
    i32 -108, label %if.end39.cleanup_crit_edge79
  ]

if.end39.cleanup_crit_edge79:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge78:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge77:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %rx_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_work) #9
  %rx_work_urbs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 20
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_work_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_work_urbs, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_work_urbs, ptr %rx_work_urbs, i32 1, ptr elementtype(i32) %rx_work_urbs) #9, !srcloc !111
  br label %sw.epilog

sw.default:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %rx_pool = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 11
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_pool) #9
  %rx_pool_urbs = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 21
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_pool_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_pool_urbs, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_pool_urbs, ptr %rx_pool_urbs, i32 1, ptr elementtype(i32) %rx_pool_urbs) #9, !srcloc !111
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %call = tail call fastcc i32 @carl9170_usb_submit_rx_urb(ptr noundef nonnull %1, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp eq i32 %call, 0
  br i1 %tobool41.not, label %if.else, label %if.then48, !prof !105

if.then48:                                        ; preds = %sw.epilog
  %usb_tasklet = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 16
  tail call fastcc void @tasklet_hi_schedule(ptr noundef %usb_tasklet)
  %call.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_anch_urbs, i32 noundef 4) #9
  %8 = ptrtoint ptr %rx_anch_urbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %rx_anch_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then51, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %ping_work = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 30
  tail call void @ieee80211_queue_work(ptr noundef %11, ptr noundef %ping_work) #9
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %state.i = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 16, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %usb_tasklet53 = getelementptr inbounds %struct.ar9170, ptr %1, i32 0, i32 16
  tail call void @__tasklet_hi_schedule(ptr noundef %usb_tasklet53) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else.cleanup_crit_edge, %if.then51, %if.then48.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end39.cleanup_crit_edge77, %if.end39.cleanup_crit_edge78, %if.end39.cleanup_crit_edge79, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_hi_schedule(ptr noundef %t) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__tasklet_hi_schedule(ptr noundef %t) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__UNIQUE_ID_author355, !1, !"__UNIQUE_ID_author355", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_author356, !3, !"__UNIQUE_ID_author356", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_file357, !5, !"__UNIQUE_ID_file357", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 54, i32 1}
!6 = !{ptr @__UNIQUE_ID_license358, !5, !"__UNIQUE_ID_license358", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description359, !8, !"__UNIQUE_ID_description359", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 55, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware360, !10, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 56, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias361, !12, !"__UNIQUE_ID_alias361", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 57, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias362, !14, !"__UNIQUE_ID_alias362", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 58, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 615, i32 6}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 696, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @carl9170_exec_cmd._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @carl9170_exec_cmd._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 700, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @carl9170_exec_cmd.__UNIQUE_ID_ddebug363, !25, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 775, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @carl9170_usb_stop._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @carl9170_usb_stop._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_carl9170__366_1192_carl9170_driver_init6, !35, !"__initcall__kmod_carl9170__366_1192_carl9170_driver_init6", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 1192, i32 1}
!36 = !{ptr @__exitcall_carl9170_driver_exit, !35, !"__exitcall_carl9170_driver_exit", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 244, i32 6}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 270, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @carl9170_usb_cmd_complete._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @carl9170_usb_cmd_complete._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 274, i32 3}
!46 = !{ptr @carl9170_usb_cmd_complete._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @carl9170_usb_cmd_complete._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 171, i32 6}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 200, i32 4}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @carl9170_usb_tx_data_complete._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @carl9170_usb_tx_data_complete._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 150, i32 4}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @carl9170_usb_submit_data_urb._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @carl9170_usb_submit_data_urb._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 862, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @carl9170_usb_load_firmware._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @carl9170_usb_load_firmware._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 591, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @carl9170_usb_cancel_urbs._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @carl9170_usb_cancel_urbs._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @carl9170_driver, !71, !"carl9170_driver", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 1178, i32 26}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 1097, i32 48}
!74 = !{ptr @init_usb_anchor.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_usb_anchor.__key.25, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @init_completion.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../include/linux/completion.h", i32 87, i32 2}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 1032, i32 2}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @carl9170_usb_firmware_step2._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @carl9170_usb_firmware_step2._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 281, i32 6}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 403, i32 6}
!92 = !{ptr @carl9170_usb_ids, !93, !"carl9170_usb_ids", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/carl9170/usb.c", i32 67, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i8 0, i8 2}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2148367443, i64 2148367469, i64 2148367498, i64 2148367532, i64 2148367563, i64 2148367586}
!107 = !{i64 2148450413}
!108 = !{i64 2148365698, i64 2148365730, i64 2148365759, i64 2148365793, i64 2148365824, i64 2148365847}
!109 = !{i64 2148450642}
!110 = !{i64 2148978355, i64 2148978360, i64 2148978373, i64 2148978417, i64 2148978451, i64 2148978472}
!111 = !{i64 2148364978, i64 2148365004, i64 2148365033, i64 2148365067, i64 2148365098, i64 2148365121}
