; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/carl9170/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/carl9170/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { i8, i8, i8, i8 }
%struct.ar9170 = type { %struct.ath_common, ptr, %struct.mutex, i32, %struct.spinlock, i32, i8, ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i8, %struct.completion, %struct.completion, %struct.anon.130, [1 x %struct.ieee80211_iface_limit], [1 x %struct.ieee80211_iface_combination], %struct.work_struct, %struct.work_struct, i32, [4 x i32], [4 x i32], i8, i8, %struct.atomic_t, %struct.list_head, i32, i32, [7 x %struct.carl9170_vif], %struct.spinlock, i32, i32, ptr, i32, i64, i8, i8, i64, i32, i32, i32, i8, i32, ptr, i32, [4 x i32], i32, i32, i8, i8, %struct.anon.134, %struct.delayed_work, ptr, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.delayed_work, [2 x %struct.carl9170_led], %struct.spinlock, [4 x %struct.carl9170_tx_queue_stats], [5 x %struct.ieee80211_tx_queue_params], %struct.completion, i32, i32, ptr, %struct.spinlock, %struct.completion, %union.anon.135, i32, i32, i32, i32, %struct.ar9170_eeprom, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], %struct.delayed_work, i32, i8, %struct.work_struct, %struct.spinlock, ptr, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, %struct.spinlock, ptr, %struct.atomic_t, %struct.atomic_t, %struct.ar9170_rx_head, i8, ptr, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.anon.142, %struct.carl9170_debug, ptr, %struct.work_struct, %struct.anon.144, %struct.anon.145 }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.carl9170_vif_info = type { %struct.list_head, i8, i32, ptr, i8 }
%struct.carl9170_rsp = type { %struct.carl9170_cmd_head, %union.anon.140 }
%struct.carl9170_cmd_head = type { %union.anon.136 }
%union.anon.136 = type { i32 }
%union.anon.140 = type <{ %struct.carl9170_tsf_rsp, [52 x i8] }>
%struct.carl9170_tsf_rsp = type { %union.anon.141 }
%union.anon.141 = type { i64 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ar9170_stream = type { i16, i16, [0 x i8] }
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
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ar9170_rx_macstatus = type { i8, i8, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.149 }
%union.anon.149 = type { %struct.anon.155, [16 x i8] }
%struct.anon.155 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_tim_ie = type { i8, i8, i8, [1 x i8] }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.carl9170_bar_list_entry = type { %struct.list_head, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct._carl9170_tx_superframe = type { %struct._carl9170_tx_superdesc, %struct._ar9170_tx_hwdesc, [0 x i8] }
%struct._carl9170_tx_superdesc = type { i16, i8, i8, i8, i8, i8, i8, [4 x i8], [3 x i32] }
%struct._ar9170_tx_hwdesc = type { i16, i16, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@carl9170_handle_command_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FW: received over-/undersized event %x (%d, but should be %d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"carl9170_handle_command_response\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/carl9170/rx.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@carl9170_handle_command_response._entry_ptr = internal global ptr @carl9170_handle_command_response._entry, section ".printk_index", align 4
@carl9170_handle_command_response.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"carl9170\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dump:\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@carl9170_handle_command_response.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FW: HD %d\0A\00", [21 x i8] zeroinitializer }, align 32
@carl9170_handle_command_response.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FW:\00", [28 x i8] zeroinitializer }, align 32
@carl9170_handle_command_response._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 258, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"FW: RADAR! Please report this incident to linux-wireless@vger.kernel.org !\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@carl9170_handle_command_response._entry_ptr.13 = internal global ptr @carl9170_handle_command_response._entry.10, section ".printk_index", align 4
@carl9170_handle_command_response._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FW: received unhandled event %x\0A\00", [63 x i8] zeroinitializer }, align 32
@carl9170_handle_command_response._entry_ptr.16 = internal global ptr @carl9170_handle_command_response._entry.14, section ".printk_index", align 4
@carl9170_handle_command_response.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@carl9170_cmd_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 138, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"received invalid command response:got %d, instead of %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"carl9170_cmd_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@carl9170_cmd_callback._entry_ptr = internal global ptr @carl9170_cmd_callback._entry, section ".printk_index", align 4
@carl9170_cmd_callback.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"carl9170 cmd:\00", [18 x i8] zeroinitializer }, align 32
@carl9170_cmd_callback.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"carl9170 rsp:\00", [18 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@carl9170_get_main_vif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ath/carl9170/carl9170.h\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERR:\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUG:\00", [27 x i8] zeroinitializer }, align 32
@carl9170_dbg_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 70, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FW: %.*s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"carl9170_dbg_message\00", [43 x i8] zeroinitializer }, align 32
@carl9170_dbg_message._entry_ptr = internal global ptr @carl9170_dbg_message._entry, section ".printk_index", align 4
@carl9170_rx_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"missing tag!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"carl9170_rx_stream\00", [45 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry_ptr = internal global ptr @carl9170_rx_stream._entry, section ".printk_index", align 4
@carl9170_rx_stream._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 913, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"possible multi stream corruption!\0A\00", [61 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry_ptr.35 = internal global ptr @carl9170_rx_stream._entry.33, section ".printk_index", align 4
@carl9170_rx_stream._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 949, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"double rx stream corruption!\0A\00", [34 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry_ptr.38 = internal global ptr @carl9170_rx_stream._entry.36, section ".printk_index", align 4
@carl9170_rx_stream._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 975, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d bytes of unprocessed data left in rx stream!\0A\00", [47 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry_ptr.41 = internal global ptr @carl9170_rx_stream._entry.39, section ".printk_index", align 4
@carl9170_rx_stream._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 986, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"damaged RX stream data [want:%d, data:%d, rx:%d, pending:%d ]\0A\00", [33 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry_ptr.44 = internal global ptr @carl9170_rx_stream._entry.42, section ".printk_index", align 4
@carl9170_rx_stream.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.2, ptr @.str.45, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxbuf:\00", [25 x i8] zeroinitializer }, align 32
@carl9170_rx_stream.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.2, ptr @.str.46, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stream:\00", [24 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.2, i32 997, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"please check your hardware and cables, if you see this message frequently.\0A\00", [52 x i8] zeroinitializer }, align 32
@carl9170_rx_stream._entry_ptr.49 = internal global ptr @carl9170_rx_stream._entry.47, section ".printk_index", align 4
@carl9170_rx_untie_cmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 848, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"malformed firmware trap:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"carl9170_rx_untie_cmds\00", [41 x i8] zeroinitializer }, align 32
@carl9170_rx_untie_cmds._entry_ptr = internal global ptr @carl9170_rx_untie_cmds._entry, section ".printk_index", align 4
@carl9170_rx_untie_cmds.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxcmd:\00", [25 x i8] zeroinitializer }, align 32
@carl9170_check_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lost %d command responses/traps! w:%d g:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"carl9170_check_sequence\00", [40 x i8] zeroinitializer }, align 32
@carl9170_check_sequence._entry_ptr = internal global ptr @carl9170_check_sequence._entry, section ".printk_index", align 4
@carl9170_rx_untie_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"plcp info is clipped.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"carl9170_rx_untie_data\00", [41 x i8] zeroinitializer }, align 32
@carl9170_rx_untie_data._entry_ptr = internal global ptr @carl9170_rx_untie_data._entry, section ".printk_index", align 4
@carl9170_rx_untie_data._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 764, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"frame tail is clipped.\0A\00", [40 x i8] zeroinitializer }, align 32
@carl9170_rx_untie_data._entry_ptr.59 = internal global ptr @carl9170_rx_untie_data._entry.57, section ".printk_index", align 4
@carl9170_rx_untie_data._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 778, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rx stream does not start with a first_mpdu frame tag.\0A\00", [41 x i8] zeroinitializer }, align 32
@carl9170_rx_untie_data._entry_ptr.62 = internal global ptr @carl9170_rx_untie_data._entry.60, section ".printk_index", align 4
@carl9170_rx_mac_status.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"carl9170_rx_mac_status\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"received frame with suspicious error code (%#x).\0A\00", [46 x i8] zeroinitializer }, align 32
@carl9170_rx_mac_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid plcp cck rate (%x).\0A\00", [35 x i8] zeroinitializer }, align 32
@carl9170_rx_mac_status._entry_ptr = internal global ptr @carl9170_rx_mac_status._entry, section ".printk_index", align 4
@carl9170_rx_mac_status._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.63, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid plcp ofdm rate (%x).\0A\00", [34 x i8] zeroinitializer }, align 32
@carl9170_rx_mac_status._entry_ptr.68 = internal global ptr @carl9170_rx_mac_status._entry.66, section ".printk_index", align 4
@carl9170_ps_beacon.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@carl9170_ba_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.carl9170_rx_mac_status = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\06\04\02\00\07\05\03\01", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 192, i64 193, i64 194, i64 195, i64 198, i64 202, i64 204, i64 205, i64 206, i64 207]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 16, i64 33792, i64 37888, i64 53248, i64 54272]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 20, i64 55, i64 110]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 175, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 179, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 248, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 249, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 257, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 282, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 137, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 139, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 141, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 695, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/ath/carl9170/carl9170.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 650, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 723, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 55, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 63, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 70, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 901, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 911, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 948, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 974, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 984, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 989, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 993, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 996, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 848, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 849, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 118, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 742, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 763, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 777, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 346, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 377, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [42 x i8] c"../drivers/net/wireless/ath/carl9170/rx.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 414, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant [36 x i8] c"switch.table.carl9170_rx_mac_status\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @carl9170_check_sequence._entry, ptr @carl9170_check_sequence._entry_ptr, ptr @carl9170_cmd_callback._entry, ptr @carl9170_cmd_callback._entry_ptr, ptr @carl9170_dbg_message._entry, ptr @carl9170_dbg_message._entry_ptr, ptr @carl9170_handle_command_response._entry, ptr @carl9170_handle_command_response._entry.10, ptr @carl9170_handle_command_response._entry.14, ptr @carl9170_handle_command_response._entry_ptr, ptr @carl9170_handle_command_response._entry_ptr.13, ptr @carl9170_handle_command_response._entry_ptr.16, ptr @carl9170_rx_mac_status._entry, ptr @carl9170_rx_mac_status._entry.66, ptr @carl9170_rx_mac_status._entry_ptr, ptr @carl9170_rx_mac_status._entry_ptr.68, ptr @carl9170_rx_stream._entry, ptr @carl9170_rx_stream._entry.33, ptr @carl9170_rx_stream._entry.36, ptr @carl9170_rx_stream._entry.39, ptr @carl9170_rx_stream._entry.42, ptr @carl9170_rx_stream._entry.47, ptr @carl9170_rx_stream._entry_ptr, ptr @carl9170_rx_stream._entry_ptr.35, ptr @carl9170_rx_stream._entry_ptr.38, ptr @carl9170_rx_stream._entry_ptr.41, ptr @carl9170_rx_stream._entry_ptr.44, ptr @carl9170_rx_stream._entry_ptr.49, ptr @carl9170_rx_untie_cmds._entry, ptr @carl9170_rx_untie_cmds._entry_ptr, ptr @carl9170_rx_untie_data._entry, ptr @carl9170_rx_untie_data._entry.57, ptr @carl9170_rx_untie_data._entry.60, ptr @carl9170_rx_untie_data._entry_ptr, ptr @carl9170_rx_untie_data._entry_ptr.59, ptr @carl9170_rx_untie_data._entry_ptr.62, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @switch.table.carl9170_rx_mac_status], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_handle_command_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_handle_command_response._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_handle_command_response._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_cmd_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_dbg_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_stream._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_stream._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_stream._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_stream._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_stream._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_untie_cmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_check_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_untie_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_untie_data._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_untie_data._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_mac_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carl9170_rx_mac_status._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.carl9170_rx_mac_status to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_handle_command_response(ptr noundef %ar, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.anon.137, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd1, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp.not = icmp eq i32 %and, 192
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %and6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.then7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @carl9170_cmd_callback(ptr noundef %ar, i32 noundef %len, ptr noundef %buf)
  br label %cleanup

if.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 4
  %conv11 = zext i8 %3 to i32
  %sub = add i32 %len, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv11)
  %cmp12.not = icmp eq i32 %sub, %conv11
  br i1 %cmp12.not, label %if.end40, label %if.then16, !prof !145

if.then16:                                        ; preds = %if.end8
  %call = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then16.cleanup_crit_edge, label %do.end

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  %8 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd1, align 1
  %conv21 = zext i8 %9 to i32
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 4
  %conv24 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %sub) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_handle_command_response, %if.then35)) #8
          to label %cleanup [label %if.then35], !srcloc !146

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext true) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end8
  %12 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end139 [
    i8 -64, label %sw.bb
    i8 -63, label %sw.bb51
    i8 -62, label %if.end40.cleanup_crit_edge
    i8 -61, label %if.end40.cleanup_crit_edge244
    i8 -58, label %sw.bb52
    i8 -54, label %sw.bb53
    i8 -52, label %do.body56
    i8 -51, label %sw.bb94
    i8 -50, label %sw.bb105
    i8 -49, label %sw.bb135
  ]

if.end40.cleanup_crit_edge244:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end40
  %13 = tail call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %sw.bb.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb.rcu_read_lock.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb.rcu_read_lock.exit_crit_edge
  %call.i214 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %land.lhs.true.i217, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i217:                               ; preds = %rcu_read_lock.exit
  %call1.i216 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216)
  %tobool2.not.i = icmp eq i32 %call1.i216, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i217.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i217.do.end.i_crit_edge:            ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i217
  %.b27.i = load i1, ptr @carl9170_get_main_vif.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i218

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i218:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @carl9170_get_main_vif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 650, ptr noundef nonnull @.str.25) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i218, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i217.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %cvif.0.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %cvif.0.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %cvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cvif.0.i = load volatile ptr, ptr %cvif.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cvif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then46_crit_edge, label %for.body.i

for.cond.i.if.then46_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

for.body.i:                                       ; preds = %for.cond.i
  %active.i = getelementptr inbounds %struct.carl9170_vif_info, ptr %cvif.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active.i, align 4, !range !148
  %tobool10.not.i = icmp eq i8 %19, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %carl9170_get_main_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

carl9170_get_main_vif.exit:                       ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %cvif.0.i, i32 -848
  %tobool45.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool45.not, label %carl9170_get_main_vif.exit.if.then46_crit_edge, label %if.end47

carl9170_get_main_vif.exit.if.then46_crit_edge:   ; preds = %carl9170_get_main_vif.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %carl9170_get_main_vif.exit.if.then46_crit_edge, %for.cond.i.if.then46_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end47:                                         ; preds = %carl9170_get_main_vif.exit
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %21, label %if.end47.sw.epilog_crit_edge [
    i32 2, label %sw.bb48
    i32 3, label %if.end47.sw.bb49_crit_edge
    i32 1, label %if.end47.sw.bb49_crit_edge245
    i32 7, label %if.end47.sw.bb49_crit_edge246
  ]

if.end47.sw.bb49_crit_edge246:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

if.end47.sw.bb49_crit_edge245:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

if.end47.sw.bb49_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @carl9170_handle_ps(ptr noundef %ar, ptr noundef %buf)
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end47.sw.bb49_crit_edge, %if.end47.sw.bb49_crit_edge245, %if.end47.sw.bb49_crit_edge246
  %call50 = tail call i32 @carl9170_update_beacon(ptr noundef %ar, i1 noundef zeroext true) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb48, %if.end47.sw.epilog_crit_edge
  %call.i220 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i220, label %sw.epilog.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i223

sw.epilog.rcu_read_unlock.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i223:                               ; preds = %sw.epilog
  %call1.i221 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i221)
  %tobool.not.i222 = icmp eq i32 %call1.i221, 0
  br i1 %tobool.not.i222, label %land.lhs.true.i223.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i225

land.lhs.true.i223.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i223
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i225:                              ; preds = %land.lhs.true.i223
  %.b4.i224 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i224, label %land.lhs.true2.i225.rcu_read_unlock.exit_crit_edge, label %if.then.i226

land.lhs.true2.i225.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i225
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i226:                                     ; preds = %land.lhs.true2.i225
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i226, %land.lhs.true2.i225.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i223.rcu_read_unlock.exit_crit_edge, %sw.epilog.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %23 = tail call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i.i.i.i.i227 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i227 to ptr
  %preempt_count.i.i.i.i228 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i228, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i228, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

sw.bb51:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @carl9170_tx_process_status(ptr noundef %ar, ptr noundef %buf) #8
  br label %cleanup

sw.bb52:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @carl9170_restart(ptr noundef %ar, i32 noundef 3) #8
  br label %cleanup

sw.bb53:                                          ; preds = %if.end40
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp ugt i8 %3, 3
  br i1 %cmp.i, label %if.then.i230, label %sw.bb53.do.end.i231_crit_edge

sw.bb53.do.end.i231_crit_edge:                    ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i231

if.then.i230:                                     ; preds = %sw.bb53
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr, ptr noundef nonnull dereferenceable(3) @.str.27, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp1.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i230.if.end7.i_crit_edge

if.then.i230.if.end7.i_crit_edge:                 ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #10
  %err_counter.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 7
  %27 = ptrtoint ptr %err_counter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err_counter.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %err_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp5.i = icmp ugt i32 %inc.i, 3
  %spec.select25.i = select i1 %cmp5.i, i32 2, i32 0
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.then.i230.if.end7.i_crit_edge
  %restart.0.i = phi i1 [ false, %if.then.i230.if.end7.i_crit_edge ], [ %cmp5.i, %if.then2.i ]
  %reason.0.i = phi i32 [ 0, %if.then.i230.if.end7.i_crit_edge ], [ %spec.select25.i, %if.then2.i ]
  %bcmp24.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr, ptr noundef nonnull dereferenceable(3) @.str.28, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24.i)
  %cmp9.i = icmp eq i32 %bcmp24.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.do.end.i231_crit_edge

if.end7.i.do.end.i231_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i231

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %bug_counter.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 8
  %29 = ptrtoint ptr %bug_counter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bug_counter.i, align 8
  %inc12.i = add i32 %30, 1
  store i32 %inc12.i, ptr %bug_counter.i, align 8
  br label %do.end.i231

do.end.i231:                                      ; preds = %if.then10.i, %if.end7.i.do.end.i231_crit_edge, %sw.bb53.do.end.i231_crit_edge
  %restart.1.off0.i = phi i1 [ true, %if.then10.i ], [ %restart.0.i, %if.end7.i.do.end.i231_crit_edge ], [ false, %sw.bb53.do.end.i231_crit_edge ]
  %reason.1.i = phi i32 [ 1, %if.then10.i ], [ %reason.0.i, %if.end7.i.do.end.i231_crit_edge ], [ 0, %sw.bb53.do.end.i231_crit_edge ]
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %31 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv11, ptr noundef %add.ptr) #11
  br i1 %restart.1.off0.i, label %if.then15.i, label %do.end.i231.cleanup_crit_edge

do.end.i231.cleanup_crit_edge:                    ; preds = %do.end.i231
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.i:                                      ; preds = %do.end.i231
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @carl9170_restart(ptr noundef %ar, i32 noundef %reason.1.i) #8
  br label %cleanup

do.body56:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_handle_command_response, %if.then68)) #8
          to label %do.body76 [label %if.then68], !srcloc !146

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %hw69 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %35 = ptrtoint ptr %hw69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw69, align 4
  %wiphy70 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy70, align 8
  %dev71 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @carl9170_handle_command_response.__UNIQUE_ID_ddebug358, ptr noundef %dev71, ptr noundef nonnull @.str.8, i32 noundef %conv11) #8
  br label %do.body76

do.body76:                                        ; preds = %if.then68, %do.body56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_handle_command_response, %if.then88)) #8
          to label %cleanup [label %if.then88], !srcloc !146

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr89 = getelementptr i8, ptr %buf, i32 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr89, i32 noundef %conv11, i1 noundef zeroext true) #8
  br label %cleanup

sw.bb94:                                          ; preds = %if.end40
  %call95 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %sw.bb94.cleanup_crit_edge, label %do.end101

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end101:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  %hw102 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %39 = ptrtoint ptr %hw102 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw102, align 4
  %wiphy103 = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy103, align 8
  %dev104 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev104, ptr noundef nonnull @.str.11) #11
  br label %cleanup

sw.bb105:                                         ; preds = %if.end40
  %wps = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 117
  %pbc = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 117, i32 1
  %43 = ptrtoint ptr %pbc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pbc, align 4
  %tobool106.not = icmp eq ptr %44, null
  br i1 %tobool106.not, label %sw.bb105.cleanup_crit_edge, label %if.then107

sw.bb105.cleanup_crit_edge:                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then107:                                       ; preds = %sw.bb105
  %45 = getelementptr inbounds %struct.carl9170_rsp, ptr %buf, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %and108 = lshr i32 %47, 26
  %and108.lobit204 = and i32 %and108, 1
  %48 = ptrtoint ptr %wps to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wps, align 8, !range !148
  %50 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and108.lobit204, i32 %50)
  %cmp120.not = icmp eq i32 %and108.lobit204, %50
  br i1 %cmp120.not, label %if.then107.cleanup_crit_edge, label %if.then122

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then122:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %51 = trunc i32 %and108.lobit204 to i8
  %52 = ptrtoint ptr %wps to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %wps, align 8
  tail call void @input_event(ptr noundef nonnull %44, i32 noundef 1, i32 noundef 529, i32 noundef %and108.lobit204) #8
  %53 = ptrtoint ptr %pbc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pbc, align 4
  tail call void @input_event(ptr noundef %54, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

sw.bb135:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %fw_boot_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 25
  tail call void @complete(ptr noundef %fw_boot_wait) #8
  br label %cleanup

do.end139:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %hw140 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %55 = ptrtoint ptr %hw140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw140, align 4
  %wiphy141 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy141 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy141, align 8
  %dev142 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142, ptr noundef nonnull @.str.15, i32 noundef %conv) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_handle_command_response, %if.then158)) #8
          to label %cleanup [label %if.then158], !srcloc !146

if.then158:                                       ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then158, %do.end139, %sw.bb135, %if.then122, %if.then107.cleanup_crit_edge, %sw.bb105.cleanup_crit_edge, %do.end101, %sw.bb94.cleanup_crit_edge, %if.then88, %do.body76, %if.then15.i, %do.end.i231.cleanup_crit_edge, %sw.bb52, %sw.bb51, %rcu_read_unlock.exit, %if.then46, %if.end40.cleanup_crit_edge, %if.end40.cleanup_crit_edge244, %if.then35, %do.end, %if.then16.cleanup_crit_edge, %if.then7, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_cmd_callback(ptr noundef %ar, i32 noundef %len, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %readlen = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 79
  %0 = ptrtoint ptr %readlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %readlen, align 8
  %sub = add i32 %len, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp.not = icmp eq i32 %1, %sub
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %do.end, !prof !145

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 7
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %sub, i32 noundef %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_cmd_callback.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_cmd_callback, %if.then12)) #8
          to label %do.body15 [label %if.then12], !srcloc !146

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 83
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %7 = add i8 %6, 4
  %8 = and i8 %7, 63
  %and = zext i8 %8 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %4, i32 noundef %and, i1 noundef zeroext true) #8
  br label %do.body15

do.body15:                                        ; preds = %if.then12, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_cmd_callback.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_cmd_callback, %if.then27)) #8
          to label %do.end29 [label %if.then27], !srcloc !146

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %buffer, i32 noundef %len, i1 noundef zeroext true) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then27, %do.body15
  tail call void @carl9170_restart(ptr noundef %ar, i32 noundef 9) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %entry.if.end30_crit_edge
  %cmd_lock = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 81
  tail call void @_raw_spin_lock(ptr noundef %cmd_lock) #8
  %readbuf = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 80
  %9 = ptrtoint ptr %readbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %readbuf, align 4
  %tobool31.not = icmp eq ptr %10, null
  br i1 %tobool31.not, label %if.end30.if.end40_crit_edge, label %if.then32

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp33 = icmp ugt i32 %len, 3
  br i1 %cmp33, label %if.then35, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %buffer, i32 4
  %11 = call ptr @memcpy(ptr %10, ptr %add.ptr, i32 %sub)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then32.if.end38_crit_edge
  %12 = ptrtoint ptr %readbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %readbuf, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.end30.if.end40_crit_edge
  %cmd_wait = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 82
  tail call void @complete(ptr noundef %cmd_wait) #8
  tail call void @_raw_spin_unlock(ptr noundef %cmd_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %0 = tail call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_handle_ps(ptr nocapture noundef %ar, ptr nocapture noundef readonly %rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.carl9170_rsp, ptr %rsp, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %frombool = zext i1 %cmp to i8
  %state2 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 6
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state2, align 8, !range !148
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp5.not = icmp eq i8 %5, %frombool
  br i1 %cmp5.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last_action = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 2
  %7 = ptrtoint ptr %last_action to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_action, align 8
  %sub = sub i32 %6, %8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  %sleep_ms = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 4
  %9 = ptrtoint ptr %sleep_ms to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %sleep_ms, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_action12 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 2
  %11 = ptrtoint ptr %last_action12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_action12, align 8
  %12 = ptrtoint ptr %state2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %state2, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @carl9170_update_beacon(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_tx_process_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @carl9170_rx(ptr noundef %ar, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 11
  %0 = ptrtoint ptr %rx_stream to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_stream, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @carl9170_rx_stream(ptr noundef %ar, ptr noundef %buf, i32 noundef %len)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__carl9170_rx(ptr noundef %ar, ptr noundef %buf, i32 noundef %len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_rx_stream(ptr noundef %ar, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp205 = icmp ugt i32 %len, 3
  br i1 %cmp205, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %entry.while.body_crit_edge
  %tlen.0207 = phi i32 [ %sub61, %if.end58.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %tbuf.0206 = phi ptr [ %add.ptr, %if.end58.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %tbuf.0206 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tbuf.0206, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %add = add nuw nsw i32 %conv, 3
  %and = and i32 %add, 131068
  %tag = getelementptr inbounds %struct.ar9170_stream, ptr %tbuf.0206, i32 0, i32 1
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %4)
  %cmp2.not = icmp eq i16 %4, 78
  br i1 %cmp2.not, label %if.end35, label %if.then

if.then:                                          ; preds = %while.body
  %rx_failover_missing = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 113
  %5 = ptrtoint ptr %rx_failover_missing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_failover_missing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then
  %call = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.if.end_crit_edge, label %do.end

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4.if.end_crit_edge
  tail call fastcc void @__carl9170_rx(ptr noundef %ar, ptr noundef %tbuf.0206, i32 noundef %tlen.0207)
  br label %common.ret

if.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %tlen.0207)
  %cmp9 = icmp ugt i32 %6, %tlen.0207
  br i1 %cmp9, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.err_silent_crit_edge, label %do.end17

if.then11.err_silent_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_silent

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %hw18 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %11 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw18, align 4
  %wiphy19 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy19, align 8
  %dev20 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.34) #11
  br label %do.end77

if.end21:                                         ; preds = %if.end7
  %rx_failover = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 112
  %15 = ptrtoint ptr %rx_failover to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_failover, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %16, i32 noundef %tlen.0207) #8
  %17 = call ptr @memcpy(ptr %call.i, ptr %tbuf.0206, i32 %tlen.0207)
  %18 = ptrtoint ptr %rx_failover_missing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_failover_missing, align 8
  %sub = sub i32 %19, %tlen.0207
  store i32 %sub, ptr %rx_failover_missing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 1
  br i1 %cmp25, label %if.then27, label %if.end21.common.ret_crit_edge

if.end21.common.ret_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %common.ret

common.ret:                                       ; preds = %if.then123, %err_silent.common.ret_crit_edge, %while.end.common.ret_crit_edge, %if.end53, %if.then27, %if.end21.common.ret_crit_edge, %if.end
  ret void

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %rx_failover_missing to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx_failover_missing, align 8
  %21 = ptrtoint ptr %rx_failover to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_failover, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %len31 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len31, align 4
  tail call fastcc void @carl9170_rx_stream(ptr noundef %ar, ptr noundef %24, i32 noundef %26)
  %27 = ptrtoint ptr %rx_failover to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_failover, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %tail.i, align 8
  %32 = load ptr, ptr %rx_failover, align 4
  tail call void @skb_trim(ptr noundef %32, i32 noundef 0) #8
  br label %common.ret

if.end35:                                         ; preds = %while.body
  %sub36 = add i32 %tlen.0207, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub36)
  %cmp37 = icmp ugt i32 %and, %sub36
  br i1 %cmp37, label %if.then39, label %if.end58

if.then39:                                        ; preds = %if.end35
  %rx_failover_missing40 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 113
  %33 = ptrtoint ptr %rx_failover_missing40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_failover_missing40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool41.not = icmp eq i32 %34, 0
  br i1 %tobool41.not, label %if.end53, label %if.then42

if.then42:                                        ; preds = %if.then39
  %call43 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.err_silent_crit_edge, label %do.end48

if.then42.err_silent_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_silent

do.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %hw49 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %35 = ptrtoint ptr %hw49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw49, align 4
  %wiphy50 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy50, align 8
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.37) #11
  br label %do.end77

if.end53:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %rx_failover54 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 112
  %39 = ptrtoint ptr %rx_failover54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_failover54, align 4
  %call.i189 = tail call ptr @skb_put(ptr noundef %40, i32 noundef %tlen.0207) #8
  %41 = call ptr @memcpy(ptr %call.i189, ptr %tbuf.0206, i32 %tlen.0207)
  %sub56 = sub i32 %conv, %tlen.0207
  %42 = ptrtoint ptr %rx_failover_missing40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub56, ptr %rx_failover_missing40, align 8
  br label %common.ret

if.end58:                                         ; preds = %if.end35
  %payload = getelementptr inbounds %struct.ar9170_stream, ptr %tbuf.0206, i32 0, i32 2
  tail call fastcc void @__carl9170_rx(ptr noundef %ar, ptr noundef %payload, i32 noundef %conv)
  %add59 = add nuw nsw i32 %and, 4
  %add.ptr = getelementptr i8, ptr %tbuf.0206, i32 %add59
  %sub61 = sub i32 %tlen.0207, %add59
  %cmp = icmp ugt i32 %sub61, 3
  br i1 %cmp, label %if.end58.while.body_crit_edge, label %if.end58.while.end_crit_edge

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %entry.while.end_crit_edge
  %clen.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %conv, %if.end58.while.end_crit_edge ]
  %wlen.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %and, %if.end58.while.end_crit_edge ]
  %tlen.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %sub61, %if.end58.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tlen.0.lcssa)
  %tobool62.not = icmp eq i32 %tlen.0.lcssa, 0
  br i1 %tobool62.not, label %while.end.common.ret_crit_edge, label %if.then63

while.end.common.ret_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %common.ret

if.then63:                                        ; preds = %while.end
  %call64 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.do.end77_crit_edge, label %do.end69

if.then63.do.end77_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %hw70 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %43 = ptrtoint ptr %hw70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw70, align 4
  %wiphy71 = getelementptr inbounds %struct.ieee80211_hw, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wiphy71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy71, align 8
  %dev72 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.40, i32 noundef %tlen.0.lcssa) #11
  br label %do.end77

do.end77:                                         ; preds = %do.end69, %if.then63.do.end77_crit_edge, %do.end48, %do.end17
  %tlen.0196 = phi i32 [ %tlen.0207, %do.end17 ], [ %tlen.0207, %do.end48 ], [ %tlen.0.lcssa, %do.end69 ], [ %tlen.0.lcssa, %if.then63.do.end77_crit_edge ]
  %clen.1 = phi i32 [ %conv, %do.end17 ], [ %conv, %do.end48 ], [ %clen.0.lcssa, %do.end69 ], [ %clen.0.lcssa, %if.then63.do.end77_crit_edge ]
  %wlen.1 = phi i32 [ %and, %do.end17 ], [ %and, %do.end48 ], [ %wlen.0.lcssa, %do.end69 ], [ %wlen.0.lcssa, %if.then63.do.end77_crit_edge ]
  %hw78 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %47 = ptrtoint ptr %hw78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw78, align 4
  %wiphy79 = getelementptr inbounds %struct.ieee80211_hw, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wiphy79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wiphy79, align 8
  %dev80 = getelementptr inbounds %struct.wiphy, ptr %50, i32 0, i32 56
  %rx_failover_missing81 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 113
  %51 = ptrtoint ptr %rx_failover_missing81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_failover_missing81, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.43, i32 noundef %clen.1, i32 noundef %wlen.1, i32 noundef %tlen.0196, i32 noundef %52) #11
  %53 = ptrtoint ptr %rx_failover_missing81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_failover_missing81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool83.not = icmp eq i32 %54, 0
  br i1 %tobool83.not, label %do.end77.do.body99_crit_edge, label %do.body85

do.end77.do.body99_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body99

do.body85:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_rx_stream.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_rx_stream, %if.then90)) #8
          to label %do.body99 [label %if.then90], !srcloc !146

if.then90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %rx_failover91 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 112
  %55 = ptrtoint ptr %rx_failover91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_failover91, align 4
  %data92 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %data92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data92, align 4
  %len94 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 6
  %59 = ptrtoint ptr %len94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len94, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.45, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %58, i32 noundef %60, i1 noundef zeroext true) #8
  br label %do.body99

do.body99:                                        ; preds = %if.then90, %do.body85, %do.end77.do.body99_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_rx_stream.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_rx_stream, %if.then111)) #8
          to label %do.end117 [label %if.then111], !srcloc !146

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.46, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext true) #8
  br label %do.end117

do.end117:                                        ; preds = %if.then111, %do.body99
  %61 = ptrtoint ptr %hw78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw78, align 4
  %wiphy119 = getelementptr inbounds %struct.ieee80211_hw, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wiphy119 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wiphy119, align 8
  %dev120 = getelementptr inbounds %struct.wiphy, ptr %64, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120, ptr noundef nonnull @.str.48) #11
  br label %err_silent

err_silent:                                       ; preds = %do.end117, %if.then42.err_silent_crit_edge, %if.then11.err_silent_crit_edge
  %rx_failover_missing121 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 113
  %65 = ptrtoint ptr %rx_failover_missing121 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_failover_missing121, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool122.not = icmp eq i32 %66, 0
  br i1 %tobool122.not, label %err_silent.common.ret_crit_edge, label %if.then123

err_silent.common.ret_crit_edge:                  ; preds = %err_silent
  call void @__sanitizer_cov_trace_pc() #10
  br label %common.ret

if.then123:                                       ; preds = %err_silent
  call void @__sanitizer_cov_trace_pc() #10
  %rx_failover124 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 112
  %67 = ptrtoint ptr %rx_failover124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_failover124, align 4
  %data.i190 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 19
  %69 = ptrtoint ptr %data.i190 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i190, align 4
  %tail.i191 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 16
  %71 = ptrtoint ptr %tail.i191 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %tail.i191, align 8
  %72 = load ptr, ptr %rx_failover124, align 4
  tail call void @skb_trim(ptr noundef %72, i32 noundef 0) #8
  %73 = ptrtoint ptr %rx_failover_missing121 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %rx_failover_missing121, align 8
  br label %common.ret
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__carl9170_rx(ptr noundef %ar, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %status.i = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp36 = icmp ugt i32 %len, 2
  br i1 %cmp36, label %land.lhs.true2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp3 = icmp eq i8 %1, -1
  br i1 %cmp3, label %land.rhs, label %land.lhs.true2.while.end_crit_edge

land.lhs.true2.while.end_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true2
  %arrayidx5 = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp7 = icmp eq i8 %3, -1
  br i1 %cmp7, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub = add i32 %len, -2
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp ugt i32 %sub, 2
  br i1 %cmp, label %land.lhs.true2.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true2.1:                                 ; preds = %while.body
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp3.1 = icmp eq i8 %5, -1
  br i1 %cmp3.1, label %land.rhs.1, label %land.lhs.true2.1.while.end_crit_edge

land.lhs.true2.1.while.end_crit_edge:             ; preds = %land.lhs.true2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.1:                                       ; preds = %land.lhs.true2.1
  %arrayidx5.1 = getelementptr i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp7.1 = icmp eq i8 %7, -1
  br i1 %cmp7.1, label %while.body.1, label %land.rhs.1.while.end_crit_edge

land.rhs.1.while.end_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.1:                                     ; preds = %land.rhs.1
  %sub.1 = add i32 %len, -4
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.1)
  %cmp.1 = icmp ugt i32 %sub.1, 2
  br i1 %cmp.1, label %land.lhs.true2.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true2.2:                                 ; preds = %while.body.1
  %8 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp3.2 = icmp eq i8 %9, -1
  br i1 %cmp3.2, label %land.rhs.2, label %land.lhs.true2.2.while.end_crit_edge

land.lhs.true2.2.while.end_crit_edge:             ; preds = %land.lhs.true2.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.2:                                       ; preds = %land.lhs.true2.2
  %arrayidx5.2 = getelementptr i8, ptr %buf, i32 5
  %10 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp7.2 = icmp eq i8 %11, -1
  br i1 %cmp7.2, label %while.body.2, label %land.rhs.2.while.end_crit_edge

land.rhs.2.while.end_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.2:                                     ; preds = %land.rhs.2
  %sub.2 = add i32 %len, -6
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.2)
  %cmp.2 = icmp ugt i32 %sub.2, 2
  br i1 %cmp.2, label %land.lhs.true2.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true2.3:                                 ; preds = %while.body.2
  %12 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp3.3 = icmp eq i8 %13, -1
  br i1 %cmp3.3, label %land.rhs.3, label %land.lhs.true2.3.while.end_crit_edge

land.lhs.true2.3.while.end_crit_edge:             ; preds = %land.lhs.true2.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.3:                                       ; preds = %land.lhs.true2.3
  %arrayidx5.3 = getelementptr i8, ptr %buf, i32 7
  %14 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp7.3 = icmp eq i8 %15, -1
  br i1 %cmp7.3, label %while.body.3, label %land.rhs.3.while.end_crit_edge

land.rhs.3.while.end_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.3:                                     ; preds = %land.rhs.3
  %sub.3 = add i32 %len, -8
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.3)
  %cmp.3 = icmp ugt i32 %sub.3, 2
  br i1 %cmp.3, label %land.lhs.true2.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true2.4:                                 ; preds = %while.body.3
  %16 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp3.4 = icmp eq i8 %17, -1
  br i1 %cmp3.4, label %land.rhs.4, label %land.lhs.true2.4.while.end_crit_edge

land.lhs.true2.4.while.end_crit_edge:             ; preds = %land.lhs.true2.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.4:                                       ; preds = %land.lhs.true2.4
  %arrayidx5.4 = getelementptr i8, ptr %buf, i32 9
  %18 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp7.4 = icmp eq i8 %19, -1
  br i1 %cmp7.4, label %while.body.4, label %land.rhs.4.while.end_crit_edge

land.rhs.4.while.end_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.4:                                     ; preds = %land.rhs.4
  %sub.4 = add i32 %len, -10
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.4)
  %cmp.4 = icmp ugt i32 %sub.4, 2
  br i1 %cmp.4, label %land.lhs.true2.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true2.5:                                 ; preds = %while.body.4
  %20 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp3.5 = icmp eq i8 %21, -1
  br i1 %cmp3.5, label %land.rhs.5, label %land.lhs.true2.5.while.end_crit_edge

land.lhs.true2.5.while.end_crit_edge:             ; preds = %land.lhs.true2.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.5:                                       ; preds = %land.lhs.true2.5
  %arrayidx5.5 = getelementptr i8, ptr %buf, i32 11
  %22 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp7.5 = icmp eq i8 %23, -1
  br i1 %cmp7.5, label %while.body.5, label %land.rhs.5.while.end_crit_edge

land.rhs.5.while.end_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.5:                                     ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #10
  %sub.5 = add i32 %len, -12
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 12
  br label %while.end

while.end:                                        ; preds = %while.body.5, %land.rhs.5.while.end_crit_edge, %land.lhs.true2.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %land.rhs.4.while.end_crit_edge, %land.lhs.true2.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %land.rhs.3.while.end_crit_edge, %land.lhs.true2.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %land.rhs.2.while.end_crit_edge, %land.lhs.true2.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %land.rhs.1.while.end_crit_edge, %land.lhs.true2.1.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.lhs.true2.while.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %land.rhs.while.end_crit_edge ], [ %buf, %land.lhs.true2.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ], [ %add.ptr, %land.lhs.true2.1.while.end_crit_edge ], [ %add.ptr, %land.rhs.1.while.end_crit_edge ], [ %add.ptr.1, %while.body.1.while.end_crit_edge ], [ %add.ptr.1, %land.lhs.true2.2.while.end_crit_edge ], [ %add.ptr.1, %land.rhs.2.while.end_crit_edge ], [ %add.ptr.2, %while.body.2.while.end_crit_edge ], [ %add.ptr.2, %land.lhs.true2.3.while.end_crit_edge ], [ %add.ptr.2, %land.rhs.3.while.end_crit_edge ], [ %add.ptr.3, %while.body.3.while.end_crit_edge ], [ %add.ptr.3, %land.lhs.true2.4.while.end_crit_edge ], [ %add.ptr.3, %land.rhs.4.while.end_crit_edge ], [ %add.ptr.4, %while.body.4.while.end_crit_edge ], [ %add.ptr.4, %land.lhs.true2.5.while.end_crit_edge ], [ %add.ptr.4, %land.rhs.5.while.end_crit_edge ], [ %add.ptr.5, %while.body.5 ]
  %len.addr.0.lcssa = phi i32 [ %len, %land.rhs.while.end_crit_edge ], [ %len, %land.lhs.true2.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ], [ %sub, %land.lhs.true2.1.while.end_crit_edge ], [ %sub, %land.rhs.1.while.end_crit_edge ], [ %sub.1, %while.body.1.while.end_crit_edge ], [ %sub.1, %land.lhs.true2.2.while.end_crit_edge ], [ %sub.1, %land.rhs.2.while.end_crit_edge ], [ %sub.2, %while.body.2.while.end_crit_edge ], [ %sub.2, %land.lhs.true2.3.while.end_crit_edge ], [ %sub.2, %land.rhs.3.while.end_crit_edge ], [ %sub.3, %while.body.3.while.end_crit_edge ], [ %sub.3, %land.lhs.true2.4.while.end_crit_edge ], [ %sub.3, %land.rhs.4.while.end_crit_edge ], [ %sub.4, %while.body.4.while.end_crit_edge ], [ %sub.4, %land.lhs.true2.5.while.end_crit_edge ], [ %sub.4, %land.rhs.5.while.end_crit_edge ], [ %sub.5, %while.body.5 ]
  %cmp12 = phi i1 [ false, %land.rhs.while.end_crit_edge ], [ false, %land.lhs.true2.while.end_crit_edge ], [ false, %while.body.while.end_crit_edge ], [ false, %land.lhs.true2.1.while.end_crit_edge ], [ false, %land.rhs.1.while.end_crit_edge ], [ false, %while.body.1.while.end_crit_edge ], [ false, %land.lhs.true2.2.while.end_crit_edge ], [ false, %land.rhs.2.while.end_crit_edge ], [ false, %while.body.2.while.end_crit_edge ], [ false, %land.lhs.true2.3.while.end_crit_edge ], [ false, %land.rhs.3.while.end_crit_edge ], [ false, %while.body.3.while.end_crit_edge ], [ false, %land.lhs.true2.4.while.end_crit_edge ], [ false, %land.rhs.4.while.end_crit_edge ], [ false, %while.body.4.while.end_crit_edge ], [ false, %land.lhs.true2.5.while.end_crit_edge ], [ false, %land.rhs.5.while.end_crit_edge ], [ true, %while.body.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.0.lcssa)
  %cmp9 = icmp ult i32 %len.addr.0.lcssa, 4
  br i1 %cmp9, label %while.end.cleanup_crit_edge, label %if.end, !prof !150

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.end
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @carl9170_rx_untie_cmds(ptr noundef %ar, ptr noundef %buf.addr.0.lcssa, i32 noundef %len.addr.0.lcssa)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %status.i) #8
  %state.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 3
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i = icmp ugt i32 %25, 2
  br i1 %cmp.i, label %if.end4.i, label %if.else.carl9170_rx_untie_data.exit_crit_edge

if.else.carl9170_rx_untie_data.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_rx_untie_data.exit

if.end4.i:                                        ; preds = %if.else
  %26 = call ptr @memset(ptr %status.i, i32 0, i32 48)
  %sub.i = add i32 %len.addr.0.lcssa, -4
  %add.ptr.i = getelementptr i8, ptr %buf.addr.0.lcssa, i32 %sub.i
  %status5.i = getelementptr inbounds %struct.ar9170_rx_macstatus, ptr %add.ptr.i, i32 0, i32 3
  %27 = ptrtoint ptr %status5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status5.i, align 1
  %29 = lshr i8 %28, 4
  %30 = and i8 %29, 3
  %31 = zext i8 %30 to i32
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %31, label %if.end4.unreachabledefault.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb21.i
    i32 3, label %if.end4.i.sw.bb45.i_crit_edge
    i32 0, label %sw.bb69.i
  ]

if.end4.i.sw.bb45.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45.i

sw.bb.i:                                          ; preds = %if.end4.i
  %ampdu_ref.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 114
  %33 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ampdu_ref.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %ampdu_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %sub.i, 11
  br i1 %cmp6.i, label %if.then14.i, label %if.else.i, !prof !145

if.then14.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_plcp.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 110
  %35 = call ptr @memcpy(ptr %rx_plcp.i, ptr %buf.addr.0.lcssa, i32 12)
  %sub15.i = add i32 %len.addr.0.lcssa, -16
  %add.ptr16.i = getelementptr i8, ptr %buf.addr.0.lcssa, i32 12
  %rx_has_plcp.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 111
  %36 = ptrtoint ptr %rx_has_plcp.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %rx_has_plcp.i, align 8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  %call.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.else.i.drop.i_crit_edge, label %if.else.i.drop.sink.split.i_crit_edge

if.else.i.drop.sink.split.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.sink.split.i

if.else.i.drop.i_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.i

sw.bb21.i:                                        ; preds = %if.end4.i
  %flag.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status.i, i32 0, i32 4
  %37 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %38, 8192
  store i32 %or.i, ptr %flag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i)
  %cmp22.i = icmp ugt i32 %sub.i, 19
  br i1 %cmp22.i, label %if.then30.i, label %if.else33.i, !prof !145

if.then30.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub31.i = add i32 %len.addr.0.lcssa, -24
  %add.ptr32.i = getelementptr i8, ptr %buf.addr.0.lcssa, i32 %sub31.i
  br label %sw.bb45.i

if.else33.i:                                      ; preds = %sw.bb21.i
  %call34.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.else33.i.drop.i_crit_edge, label %if.else33.i.drop.sink.split.i_crit_edge

if.else33.i.drop.sink.split.i_crit_edge:          ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.sink.split.i

if.else33.i.drop.i_crit_edge:                     ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.i

sw.bb45.i:                                        ; preds = %if.then30.i, %if.end4.i.sw.bb45.i_crit_edge
  %phy.0.i = phi ptr [ null, %if.end4.i.sw.bb45.i_crit_edge ], [ %add.ptr32.i, %if.then30.i ]
  %mpdu_len.0.i = phi i32 [ %sub.i, %if.end4.i.sw.bb45.i_crit_edge ], [ %sub31.i, %if.then30.i ]
  %rx_has_plcp46.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 111
  %39 = ptrtoint ptr %rx_has_plcp46.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rx_has_plcp46.i, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool47.not.i = icmp eq i8 %40, 0
  br i1 %tobool47.not.i, label %if.then56.i, label %if.end67.i, !prof !150

if.then56.i:                                      ; preds = %sw.bb45.i
  %call57.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then56.i.carl9170_rx_untie_data.exit_crit_edge, label %if.then56.i.drop.sink.split.i_crit_edge

if.then56.i.drop.sink.split.i_crit_edge:          ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.sink.split.i

if.then56.i.carl9170_rx_untie_data.exit_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_rx_untie_data.exit

if.end67.i:                                       ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_plcp68.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 110
  br label %sw.epilog.i

sw.bb69.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub71.i = add i32 %len.addr.0.lcssa, -36
  %add.ptr72.i = getelementptr i8, ptr %buf.addr.0.lcssa, i32 12
  %add.ptr73.i = getelementptr i8, ptr %add.ptr72.i, i32 %sub71.i
  br label %sw.epilog.i

if.end4.unreachabledefault.i:                     ; preds = %if.end4.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb69.i, %if.end67.i, %if.then14.i
  %buf.addr.0.i = phi ptr [ %add.ptr72.i, %sw.bb69.i ], [ %buf.addr.0.lcssa, %if.end67.i ], [ %add.ptr16.i, %if.then14.i ]
  %head.0.i = phi ptr [ %buf.addr.0.lcssa, %sw.bb69.i ], [ %rx_plcp68.i, %if.end67.i ], [ %buf.addr.0.lcssa, %if.then14.i ]
  %phy.1.i = phi ptr [ %add.ptr73.i, %sw.bb69.i ], [ %phy.0.i, %if.end67.i ], [ null, %if.then14.i ]
  %mpdu_len.1.i = phi i32 [ %sub71.i, %sw.bb69.i ], [ %mpdu_len.0.i, %if.end67.i ], [ %sub15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mpdu_len.1.i)
  %cmp80.i = icmp slt i32 %mpdu_len.1.i, 14
  br i1 %cmp80.i, label %sw.epilog.i.drop.i_crit_edge, label %if.end89.i, !prof !150

sw.epilog.i.drop.i_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.i

if.end89.i:                                       ; preds = %sw.epilog.i
  %call90.i = call fastcc i32 @carl9170_rx_mac_status(ptr noundef %ar, ptr noundef %head.0.i, ptr noundef %add.ptr.i, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end99.i, label %if.end89.i.drop.i_crit_edge, !prof !145

if.end89.i.drop.i_crit_edge:                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.i

if.end99.i:                                       ; preds = %if.end89.i
  %41 = and i8 %28, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i.i = icmp eq i8 %41, 0
  br i1 %cmp.i.i, label %if.end99.i.if.end102.i_crit_edge, label %if.end.i.i

if.end99.i.if.end102.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end.i.i:                                       ; preds = %if.end99.i
  %flag.i.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status.i, i32 0, i32 4
  %42 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flag.i.i, align 8
  %or.i.i = or i32 %43, 4608
  store i32 %or.i.i, ptr %flag.i.i, align 8
  %ampdu_ref.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 114
  %44 = ptrtoint ptr %ampdu_ref.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ampdu_ref.i.i, align 4
  %ampdu_reference.i.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status.i, i32 0, i32 3
  %46 = ptrtoint ptr %ampdu_reference.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ampdu_reference.i.i, align 4
  %47 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %buf.addr.0.i, align 2
  %49 = and i16 %48, -13312
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %49)
  %50 = icmp eq i16 %49, -30720
  br i1 %50, label %if.end.i.i.if.end102.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.end102.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %51 = and i16 %48, -1024
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %51, label %if.end6.i.i.drop.i_crit_edge [
    i16 -11264, label %if.end6.i.i.if.end102.i_crit_edge
    i16 -27648, label %if.end6.i.i.if.end102.i_crit_edge83
    i16 -31744, label %if.end6.i.i.if.end102.i_crit_edge84
    i16 -12288, label %if.end6.i.i.if.end102.i_crit_edge85
  ]

if.end6.i.i.if.end102.i_crit_edge85:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end6.i.i.if.end102.i_crit_edge84:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end6.i.i.if.end102.i_crit_edge83:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end6.i.i.if.end102.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end6.i.i.drop.i_crit_edge:                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.i

if.end102.i:                                      ; preds = %if.end6.i.i.if.end102.i_crit_edge, %if.end6.i.i.if.end102.i_crit_edge83, %if.end6.i.i.if.end102.i_crit_edge84, %if.end6.i.i.if.end102.i_crit_edge85, %if.end.i.i.if.end102.i_crit_edge, %if.end99.i.if.end102.i_crit_edge
  %tobool103.not.i = icmp eq ptr %phy.1.i, null
  br i1 %tobool103.not.i, label %if.else105.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.end102.i
  %antenna.i.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status.i, i32 0, i32 12
  %53 = ptrtoint ptr %phy.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %phy.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %54)
  %cmp1.not.i.i = icmp eq i8 %54, -128
  br i1 %cmp1.not.i.i, label %if.then104.i.for.inc.i.i_crit_edge, label %if.then.i.i

if.then104.i.for.inc.i.i_crit_edge:               ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %antenna.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %antenna.i.i, align 1
  %conv4.i.i = or i8 %56, 1
  store i8 %conv4.i.i, ptr %antenna.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %if.then104.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr [7 x i8], ptr %phy.1.i, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %58)
  %cmp1.not.1.i.i = icmp eq i8 %58, -128
  br i1 %cmp1.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %antenna.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %antenna.i.i, align 1
  %conv4.1.i.i = or i8 %60, 2
  store i8 %conv4.1.i.i, ptr %antenna.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr [7 x i8], ptr %phy.1.i, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %62)
  %cmp1.not.2.i.i = icmp eq i8 %62, -128
  br i1 %cmp1.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %antenna.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %antenna.i.i, align 1
  %conv4.2.i.i = or i8 %64, 4
  store i8 %conv4.2.i.i, ptr %antenna.i.i, align 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %65 = ptrtoint ptr %phy.1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %phy.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %tobool.not.i.i = icmp sgt i8 %66, -1
  br i1 %tobool.not.i.i, label %for.inc.2.i.i.for.inc19.i.i_crit_edge, label %if.then11.i.i

for.inc.2.i.i.for.inc19.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i.i

if.then11.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = sub i8 0, %66
  %and15.i.i = and i8 %add.i.i, 127
  %67 = ptrtoint ptr %phy.1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and15.i.i, ptr %phy.1.i, align 1
  br label %for.inc19.i.i

for.inc19.i.i:                                    ; preds = %if.then11.i.i, %for.inc.2.i.i.for.inc19.i.i_crit_edge
  %68 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %tobool.not.1.i.i = icmp sgt i8 %69, -1
  br i1 %tobool.not.1.i.i, label %for.inc19.i.i.for.inc19.1.i.i_crit_edge, label %if.then11.1.i.i

for.inc19.i.i.for.inc19.1.i.i_crit_edge:          ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.1.i.i

if.then11.1.i.i:                                  ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.1.i.i = sub i8 0, %69
  %and15.1.i.i = and i8 %add.1.i.i, 127
  %70 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %and15.1.i.i, ptr %arrayidx.1.i.i, align 1
  br label %for.inc19.1.i.i

for.inc19.1.i.i:                                  ; preds = %if.then11.1.i.i, %for.inc19.i.i.for.inc19.1.i.i_crit_edge
  %71 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %tobool.not.2.i.i = icmp sgt i8 %72, -1
  br i1 %tobool.not.2.i.i, label %for.inc19.1.i.i.for.inc19.2.i.i_crit_edge, label %if.then11.2.i.i

for.inc19.1.i.i.for.inc19.2.i.i_crit_edge:        ; preds = %for.inc19.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.2.i.i

if.then11.2.i.i:                                  ; preds = %for.inc19.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.2.i.i = sub i8 0, %72
  %and15.2.i.i = and i8 %add.2.i.i, 127
  %73 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %and15.2.i.i, ptr %arrayidx.2.i.i, align 1
  br label %for.inc19.2.i.i

for.inc19.2.i.i:                                  ; preds = %if.then11.2.i.i, %for.inc19.1.i.i.for.inc19.2.i.i_crit_edge
  %arrayidx9.3.i.i = getelementptr [7 x i8], ptr %phy.1.i, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx9.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %tobool.not.3.i.i = icmp sgt i8 %75, -1
  br i1 %tobool.not.3.i.i, label %for.inc19.2.i.i.for.inc19.3.i.i_crit_edge, label %if.then11.3.i.i

for.inc19.2.i.i.for.inc19.3.i.i_crit_edge:        ; preds = %for.inc19.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.3.i.i

if.then11.3.i.i:                                  ; preds = %for.inc19.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.3.i.i = sub i8 0, %75
  %and15.3.i.i = and i8 %add.3.i.i, 127
  %76 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %and15.3.i.i, ptr %arrayidx9.3.i.i, align 1
  br label %for.inc19.3.i.i

for.inc19.3.i.i:                                  ; preds = %if.then11.3.i.i, %for.inc19.2.i.i.for.inc19.3.i.i_crit_edge
  %arrayidx9.4.i.i = getelementptr [7 x i8], ptr %phy.1.i, i32 0, i32 4
  %77 = ptrtoint ptr %arrayidx9.4.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx9.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %tobool.not.4.i.i = icmp sgt i8 %78, -1
  br i1 %tobool.not.4.i.i, label %for.inc19.3.i.i.for.inc19.4.i.i_crit_edge, label %if.then11.4.i.i

for.inc19.3.i.i.for.inc19.4.i.i_crit_edge:        ; preds = %for.inc19.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.4.i.i

if.then11.4.i.i:                                  ; preds = %for.inc19.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.4.i.i = sub i8 0, %78
  %and15.4.i.i = and i8 %add.4.i.i, 127
  %79 = ptrtoint ptr %arrayidx9.4.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %and15.4.i.i, ptr %arrayidx9.4.i.i, align 1
  br label %for.inc19.4.i.i

for.inc19.4.i.i:                                  ; preds = %if.then11.4.i.i, %for.inc19.3.i.i.for.inc19.4.i.i_crit_edge
  %arrayidx9.5.i.i = getelementptr [7 x i8], ptr %phy.1.i, i32 0, i32 5
  %80 = ptrtoint ptr %arrayidx9.5.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx9.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %81)
  %tobool.not.5.i.i = icmp sgt i8 %81, -1
  br i1 %tobool.not.5.i.i, label %for.inc19.4.i.i.for.inc19.5.i.i_crit_edge, label %if.then11.5.i.i

for.inc19.4.i.i.for.inc19.5.i.i_crit_edge:        ; preds = %for.inc19.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.5.i.i

if.then11.5.i.i:                                  ; preds = %for.inc19.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.5.i.i = sub i8 0, %81
  %and15.5.i.i = and i8 %add.5.i.i, 127
  %82 = ptrtoint ptr %arrayidx9.5.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %and15.5.i.i, ptr %arrayidx9.5.i.i, align 1
  br label %for.inc19.5.i.i

for.inc19.5.i.i:                                  ; preds = %if.then11.5.i.i, %for.inc19.4.i.i.for.inc19.5.i.i_crit_edge
  %arrayidx9.6.i.i = getelementptr [7 x i8], ptr %phy.1.i, i32 0, i32 6
  %83 = ptrtoint ptr %arrayidx9.6.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx9.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %tobool.not.6.i.i = icmp sgt i8 %84, -1
  br i1 %tobool.not.6.i.i, label %for.inc19.5.i.i.carl9170_rx_phy_status.exit.i_crit_edge, label %if.then11.6.i.i

for.inc19.5.i.i.carl9170_rx_phy_status.exit.i_crit_edge: ; preds = %for.inc19.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_rx_phy_status.exit.i

if.then11.6.i.i:                                  ; preds = %for.inc19.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.6.i.i = sub i8 0, %84
  %and15.6.i.i = and i8 %add.6.i.i, 127
  %85 = ptrtoint ptr %arrayidx9.6.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %and15.6.i.i, ptr %arrayidx9.6.i.i, align 1
  br label %carl9170_rx_phy_status.exit.i

carl9170_rx_phy_status.exit.i:                    ; preds = %if.then11.6.i.i, %for.inc19.5.i.i.carl9170_rx_phy_status.exit.i_crit_edge
  %noise.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 57
  %86 = ptrtoint ptr %noise.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %noise.i.i, align 4
  %88 = ptrtoint ptr %arrayidx9.6.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx9.6.i.i, align 1
  %90 = trunc i32 %87 to i8
  %conv25.i.i = add i8 %89, %90
  %signal.i.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status.i, i32 0, i32 13
  %91 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv25.i.i, ptr %signal.i.i, align 2
  br label %if.end108.i

if.else105.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag106.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status.i, i32 0, i32 4
  %92 = ptrtoint ptr %flag106.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flag106.i, align 8
  %or107.i = or i32 %93, 256
  store i32 %or107.i, ptr %flag106.i, align 8
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.else105.i, %carl9170_rx_phy_status.exit.i
  %hw.i.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %94 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw.i.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %and.i.i.i = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end108.i.carl9170_ps_beacon.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !145

if.end108.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %mpdu_len.1.i)
  %cmp.i.i.i = icmp ult i32 %mpdu_len.1.i, 45
  br i1 %cmp.i.i.i, label %if.end.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %call.i.i.i = call zeroext i1 @ath_is_mybeacon(ptr noundef %ar, ptr noundef %buf.addr.0.i) #8
  br i1 %call.i.i.i, label %lor.lhs.false.i.i.i, label %if.end6.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge

if.end6.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end6.i.i.i
  %curaid.i.i.i = getelementptr inbounds %struct.ath_common, ptr %ar, i32 0, i32 8
  %98 = ptrtoint ptr %curaid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %curaid.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool7.not.i.i.i = icmp eq i16 %99, 0
  br i1 %tobool7.not.i.i.i, label %lor.lhs.false.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, label %if.end9.i.i.i

lor.lhs.false.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end9.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %ps.i.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121
  %last_beacon.i.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 1
  %101 = ptrtoint ptr %last_beacon.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %last_beacon.i.i.i, align 4
  %sub.i.i.i = add nsw i32 %mpdu_len.1.i, -4
  %variable.i.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %buf.addr.0.i, i32 0, i32 6, i32 1, i32 2
  %add.ptr.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i, i32 %sub.i.i.i
  %cmp1.i.i.i.i = icmp ult ptr %variable.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.i.i.i.i, label %if.end9.i.i.i.while.body.i.i.i.i_crit_edge, label %if.end9.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge

if.end9.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end9.i.i.i.while.body.i.i.i.i_crit_edge:       ; preds = %if.end9.i.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end9.i.i.i.while.body.i.i.i.i_crit_edge
  %pos.02.i.i.i.i = phi ptr [ %add.ptr14.i.i.i.i, %if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %variable.i.i.i.i, %if.end9.i.i.i.while.body.i.i.i.i_crit_edge ]
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %pos.02.i.i.i.i, i32 2
  %arrayidx.i.i.i.i = getelementptr i8, ptr %pos.02.i.i.i.i, i32 1
  %102 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %103 to i32
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 %conv.i.i.i.i
  %cmp3.i.i.i.i = icmp ugt ptr %add.ptr2.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %while.body.i.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, label %if.end.i.i.i.i

while.body.i.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i.i
  %104 = ptrtoint ptr %pos.02.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pos.02.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %105)
  %cmp8.i.i.i.i = icmp eq i8 %105, 5
  br i1 %cmp8.i.i.i.i, label %carl9170_find_ie.exit.i.i.i, label %if.end11.i.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 2
  %add.ptr14.i.i.i.i = getelementptr i8, ptr %pos.02.i.i.i.i, i32 %add.i.i.i.i
  %cmp.i.i.i.i = icmp ult ptr %add.ptr14.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge, label %if.end11.i.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge

if.end11.i.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end11.i.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i.i

carl9170_find_ie.exit.i.i.i:                      ; preds = %if.end.i.i.i.i
  %tobool11.not.i.i.i = icmp eq ptr %pos.02.i.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %103)
  %cmp14.i.i.i = icmp ult i8 %103, 4
  %or.cond.i.i = select i1 %tobool11.not.i.i.i, i1 true, i1 %cmp14.i.i.i
  br i1 %or.cond.i.i, label %carl9170_find_ie.exit.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, label %if.end17.i.i.i

carl9170_find_ie.exit.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge: ; preds = %carl9170_find_ie.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ps_beacon.exit.i.i

if.end17.i.i.i:                                   ; preds = %carl9170_find_ie.exit.i.i.i
  %106 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw.i.i.i, align 4
  %ps_dtim_period.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %ps_dtim_period.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ps_dtim_period.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool22.not.i.i.i = icmp eq i8 %109, 0
  br i1 %tobool22.not.i.i.i, label %land.rhs.i.i.i, label %if.then71.critedge.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end17.i.i.i
  %.b128.i.i.i = load i1, ptr @carl9170_ps_beacon.__already_done, align 1
  br i1 %.b128.i.i.i, label %land.rhs.i.i.i.if.end79.i.i.i_crit_edge, label %if.then40.i.i.i, !prof !145

land.rhs.i.i.i.if.end79.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i.i.i

if.then40.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @carl9170_ps_beacon.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 551, i32 noundef 9, ptr noundef null) #8
  br label %if.end79.i.i.i

if.then71.critedge.i.i.i:                         ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %add.ptr1.i.i.i.i, align 1
  %conv72.i.i.i = zext i8 %111 to i16
  %sub73.i.i.i = add nsw i16 %conv72.i.i.i, -1
  %rem.rhs.trunc.i.i.i = zext i8 %109 to i16
  %rem132.i.i.i = srem i16 %sub73.i.i.i, %rem.rhs.trunc.i.i.i
  %rem.sext.i.i.i = sext i16 %rem132.i.i.i to i32
  %112 = ptrtoint ptr %ps.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %rem.sext.i.i.i, ptr %ps.i.i.i, align 8
  br label %if.end79.i.i.i

if.end79.i.i.i:                                   ; preds = %if.then71.critedge.i.i.i, %if.then40.i.i.i, %land.rhs.i.i.i.if.end79.i.i.i_crit_edge
  %tobool.not.i21.i.i = icmp eq ptr %add.ptr1.i.i.i.i, null
  br i1 %tobool.not.i21.i.i, label %if.end79.i.i.i.ieee80211_check_tim.exit.i.i_crit_edge, label %if.end.i25.i.i, !prof !150

if.end79.i.i.i.ieee80211_check_tim.exit.i.i_crit_edge: ; preds = %if.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_check_tim.exit.i.i

if.end.i25.i.i:                                   ; preds = %if.end79.i.i.i
  %113 = ptrtoint ptr %curaid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %curaid.i.i.i, align 2
  %div52.i.i.i = lshr i16 %114, 3
  %115 = trunc i16 %114 to i8
  %and9.i.i.i = and i8 %115, 7
  %shl.i.i.i = shl nuw i8 1, %and9.i.i.i
  %bitmap_ctrl.i24.i.i = getelementptr i8, ptr %pos.02.i.i.i.i, i32 4
  %116 = ptrtoint ptr %bitmap_ctrl.i24.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bitmap_ctrl.i24.i.i, align 1
  %118 = and i8 %117, -2
  %119 = and i16 %div52.i.i.i, 255
  %120 = zext i8 %118 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %120)
  %cmp19.i.i.i = icmp ult i16 %119, %120
  br i1 %cmp19.i.i.i, label %if.end.i25.i.i.ieee80211_check_tim.exit.i.i_crit_edge, label %lor.lhs.false.i27.i.i

if.end.i25.i.i.ieee80211_check_tim.exit.i.i_crit_edge: ; preds = %if.end.i25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_check_tim.exit.i.i

lor.lhs.false.i27.i.i:                            ; preds = %if.end.i25.i.i
  %add.i.i.i = add i8 %103, -4
  %sub.i26.i.i = add i8 %add.i.i.i, %118
  %121 = zext i8 %sub.i26.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %121)
  %cmp23.i.i.i = icmp ugt i16 %119, %121
  br i1 %cmp23.i.i.i, label %lor.lhs.false.i27.i.i.ieee80211_check_tim.exit.i.i_crit_edge, label %if.end26.i.i.i

lor.lhs.false.i27.i.i.ieee80211_check_tim.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_check_tim.exit.i.i

if.end26.i.i.i:                                   ; preds = %lor.lhs.false.i27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = trunc i16 %div52.i.i.i to i8
  %conv30.i.i.i = sub i8 %122, %118
  %idxprom.i.i.i = zext i8 %conv30.i.i.i to i32
  %arrayidx.i28.i.i = getelementptr %struct.ieee80211_tim_ie, ptr %add.ptr1.i.i.i.i, i32 0, i32 3, i32 %idxprom.i.i.i
  %123 = ptrtoint ptr %arrayidx.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i28.i.i, align 1
  %and3353.i.i.i = and i8 %124, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3353.i.i.i)
  %tobool34.i.i.i = icmp ne i8 %and3353.i.i.i, 0
  br label %ieee80211_check_tim.exit.i.i

ieee80211_check_tim.exit.i.i:                     ; preds = %if.end26.i.i.i, %lor.lhs.false.i27.i.i.ieee80211_check_tim.exit.i.i_crit_edge, %if.end.i25.i.i.ieee80211_check_tim.exit.i.i_crit_edge, %if.end79.i.i.i.ieee80211_check_tim.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %tobool34.i.i.i, %if.end26.i.i.i ], [ false, %if.end79.i.i.i.ieee80211_check_tim.exit.i.i_crit_edge ], [ false, %lor.lhs.false.i27.i.i.ieee80211_check_tim.exit.i.i_crit_edge ], [ false, %if.end.i25.i.i.ieee80211_check_tim.exit.i.i_crit_edge ]
  %bitmap_ctrl.i.i.i = getelementptr i8, ptr %pos.02.i.i.i.i, i32 4
  %125 = ptrtoint ptr %bitmap_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bitmap_ctrl.i.i.i, align 1
  %127 = and i8 %126, 1
  %128 = zext i8 %127 to i32
  %conv92.i.i.i = zext i1 %retval.0.i.i.i to i32
  %or.i.i.i = or i32 %128, %conv92.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %tobool93.not.i.i.i = icmp eq i32 %or.i.i.i, 0
  %off_override.i.i.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 121, i32 5
  %129 = ptrtoint ptr %off_override.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %off_override.i.i.i, align 4
  br i1 %tobool93.not.i.i.i, label %if.then96.i.i.i, label %if.else.i.i.i

if.then96.i.i.i:                                  ; preds = %ieee80211_check_tim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and98.i.i.i = and i32 %130, -3
  %131 = ptrtoint ptr %off_override.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and98.i.i.i, ptr %off_override.i.i.i, align 4
  call void @carl9170_ps_check(ptr noundef %ar) #8
  br label %carl9170_ps_beacon.exit.i.i

if.else.i.i.i:                                    ; preds = %ieee80211_check_tim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or101.i.i.i = or i32 %130, 2
  %132 = ptrtoint ptr %off_override.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or101.i.i.i, ptr %off_override.i.i.i, align 4
  br label %carl9170_ps_beacon.exit.i.i

carl9170_ps_beacon.exit.i.i:                      ; preds = %if.else.i.i.i, %if.then96.i.i.i, %carl9170_find_ie.exit.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %if.end11.i.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %while.body.i.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %if.end9.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %if.end6.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %if.end.i.i.i.carl9170_ps_beacon.exit.i.i_crit_edge, %if.end108.i.carl9170_ps_beacon.exit.i.i_crit_edge
  %133 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %buf.addr.0.i, align 1
  %135 = and i16 %134, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27648, i16 %135)
  %cmp.i.i10.i.i = icmp eq i16 %135, -27648
  br i1 %cmp.i.i10.i.i, label %if.end.i12.i.i, label %carl9170_ps_beacon.exit.i.i.carl9170_ba_check.exit.i.i_crit_edge, !prof !150

carl9170_ps_beacon.exit.i.i.carl9170_ba_check.exit.i.i_crit_edge: ; preds = %carl9170_ps_beacon.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ba_check.exit.i.i

if.end.i12.i.i:                                   ; preds = %carl9170_ps_beacon.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mpdu_len.1.i)
  %cmp.i11.i.i = icmp ult i32 %mpdu_len.1.i, 25
  br i1 %cmp.i11.i.i, label %if.end.i12.i.i.carl9170_ba_check.exit.i.i_crit_edge, label %if.end5.i.i.i

if.end.i12.i.i.carl9170_ba_check.exit.i.i_crit_edge: ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %carl9170_ba_check.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i12.i.i
  %control.i.i.i = getelementptr inbounds %struct.ieee80211_bar, ptr %buf.addr.0.i, i32 0, i32 4
  %136 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %control.i.i.i, align 1
  %138 = lshr i16 %137, 4
  %trunc.i.i.i = trunc i16 %138 to i3
  %139 = zext i3 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.72)
  switch i3 %trunc.i.i.i, label %lor.rhs.i.i.i [
    i3 0, label %if.end5.i.i.i.cond.end48.i.i.i_crit_edge
    i3 3, label %if.end5.i.i.i.cond.end48.i.i.i_crit_edge86
    i3 1, label %cond.end48.fold.split.i.i.i
    i3 2, label %cond.end48.fold.split151.i.i.i
    i3 -4, label %if.end5.i.i.i.lor.end.i.i.i_crit_edge
  ]

if.end5.i.i.i.lor.end.i.i.i_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end.i.i.i

if.end5.i.i.i.cond.end48.i.i.i_crit_edge86:       ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end48.i.i.i

if.end5.i.i.i.cond.end48.i.i.i_crit_edge:         ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end48.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = and i16 %137, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %140)
  %cmp45.i.i.i = icmp eq i16 %140, 80
  %phi.cast.i.i.i = zext i1 %cmp45.i.i.i to i32
  br label %lor.end.i.i.i

lor.end.i.i.i:                                    ; preds = %lor.rhs.i.i.i, %if.end5.i.i.i.lor.end.i.i.i_crit_edge
  %141 = phi i32 [ %phi.cast.i.i.i, %lor.rhs.i.i.i ], [ 1, %if.end5.i.i.i.lor.end.i.i.i_crit_edge ]
  br label %cond.end48.i.i.i

cond.end48.fold.split.i.i.i:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end48.i.i.i

cond.end48.fold.split151.i.i.i:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end48.i.i.i

cond.end48.i.i.i:                                 ; preds = %cond.end48.fold.split151.i.i.i, %cond.end48.fold.split.i.i.i, %lor.end.i.i.i, %if.end5.i.i.i.cond.end48.i.i.i_crit_edge, %if.end5.i.i.i.cond.end48.i.i.i_crit_edge86
  %cond49.i.i.i = phi i32 [ 2, %if.end5.i.i.i.cond.end48.i.i.i_crit_edge ], [ %141, %lor.end.i.i.i ], [ 2, %if.end5.i.i.i.cond.end48.i.i.i_crit_edge86 ], [ 3, %cond.end48.fold.split.i.i.i ], [ 3, %cond.end48.fold.split151.i.i.i ]
  %142 = call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i.i.i.i.i.i.i.i = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %145, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i.i, label %cond.end48.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

cond.end48.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %cond.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %cond.end48.i.i.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #8
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %cond.end48.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %call50.i.i.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge:  ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call52.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i.i)
  %tobool53.not.i.i.i = icmp eq i32 %call52.i.i.i, 0
  br i1 %tobool53.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true54.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

land.lhs.true54.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b150.i.i.i = load i1, ptr @carl9170_ba_check.__warned, align 1
  br i1 %.b150.i.i.i, label %land.lhs.true54.i.i.i.do.end.i.i.i_crit_edge, label %if.then56.i.i.i

land.lhs.true54.i.i.i.do.end.i.i.i_crit_edge:     ; preds = %land.lhs.true54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

if.then56.i.i.i:                                  ; preds = %land.lhs.true54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @carl9170_ba_check.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 590, ptr noundef nonnull @.str.25) #8
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then56.i.i.i, %land.lhs.true54.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 115, i32 %cond49.i.i.i
  %146 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %entry1.0163.i.i.i = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %cmp64.not164.i.i.i = icmp eq ptr %entry1.0163.i.i.i, %arrayidx.i.i.i
  br i1 %cmp64.not164.i.i.i, label %do.end.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

do.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %do.end.i.i.i
  %start_seq_num.i.i.i = getelementptr inbounds %struct.ieee80211_bar, ptr %buf.addr.0.i, i32 0, i32 5
  %147 = ptrtoint ptr %start_seq_num.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %start_seq_num.i.i.i, align 1
  %ra.i.i.i = getelementptr inbounds %struct.ieee80211_bar, ptr %buf.addr.0.i, i32 0, i32 2
  %add.ptr.i.i.i.i.i = getelementptr %struct.ieee80211_bar, ptr %buf.addr.0.i, i32 0, i32 2, i32 4
  %ta87.i.i.i = getelementptr inbounds %struct.ieee80211_bar, ptr %buf.addr.0.i, i32 0, i32 3
  %add.ptr.i.i153.i.i.i = getelementptr %struct.ieee80211_bar, ptr %buf.addr.0.i, i32 0, i32 3, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %entry1.0165.i.i.i = phi ptr [ %entry1.0163.i.i.i, %for.body.lr.ph.i.i.i ], [ %entry1.0.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ]
  %skb.i.i.i = getelementptr inbounds %struct.carl9170_bar_list_entry, ptr %entry1.0165.i.i.i, i32 0, i32 2
  %149 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %skb.i.i.i, align 4
  %data66.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 19
  %151 = ptrtoint ptr %data66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data66.i.i.i, align 4
  %frame_data.i.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %152, i32 0, i32 2
  %start_seq_num68.i.i.i = getelementptr inbounds %struct.ieee80211_bar, ptr %frame_data.i.i.i, i32 0, i32 5
  %153 = ptrtoint ptr %start_seq_num68.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %start_seq_num68.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %148, i16 %154)
  %cmp70.i.i.i = icmp eq i16 %148, %154
  br i1 %cmp70.i.i.i, label %land.lhs.true72.i.i.i, label %for.body.i.i.i.cleanup.i.i.i_crit_edge

for.body.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

land.lhs.true72.i.i.i:                            ; preds = %for.body.i.i.i
  %155 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %control.i.i.i, align 1
  %control76.i.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %152, i32 1, i32 0, i32 8, i32 1
  %157 = ptrtoint ptr %control76.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %control76.i.i.i, align 1
  %159 = xor i16 %158, %156
  %160 = and i16 %159, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %cmp79.i.i.i = icmp eq i16 %160, 0
  br i1 %cmp79.i.i.i, label %land.lhs.true81.i.i.i, label %land.lhs.true72.i.i.i.cleanup.i.i.i_crit_edge

land.lhs.true72.i.i.i.cleanup.i.i.i_crit_edge:    ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

land.lhs.true81.i.i.i:                            ; preds = %land.lhs.true72.i.i.i
  %ta.i.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %152, i32 1, i32 0, i32 7, i32 2
  %161 = ptrtoint ptr %ra.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ra.i.i.i, align 4
  %163 = ptrtoint ptr %ta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ta.i.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %164, %162
  %165 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %ta.i.i.i, i32 4
  %167 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %168, %166
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true86.i.i.i, label %land.lhs.true81.i.i.i.cleanup.i.i.i_crit_edge

land.lhs.true81.i.i.i.cleanup.i.i.i_crit_edge:    ; preds = %land.lhs.true81.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

land.lhs.true86.i.i.i:                            ; preds = %land.lhs.true81.i.i.i
  %ra89.i.i.i = getelementptr inbounds %struct._carl9170_tx_superframe, ptr %152, i32 1, i32 0, i32 3
  %169 = ptrtoint ptr %ta87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ta87.i.i.i, align 4
  %171 = ptrtoint ptr %ra89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ra89.i.i.i, align 4
  %xor.i.i152.i.i.i = xor i32 %172, %170
  %173 = ptrtoint ptr %add.ptr.i.i153.i.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr.i.i153.i.i.i, align 2
  %add.ptr1.i.i154.i.i.i = getelementptr %struct._carl9170_tx_superframe, ptr %152, i32 1, i32 0, i32 7
  %175 = ptrtoint ptr %add.ptr1.i.i154.i.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %add.ptr1.i.i154.i.i.i, align 2
  %xor37.i.i155.i.i.i = xor i16 %176, %174
  %xor3.i.i156.i.i.i = zext i16 %xor37.i.i155.i.i.i to i32
  %or.i.i157.i.i.i = or i32 %xor.i.i152.i.i.i, %xor3.i.i156.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i157.i.i.i)
  %cmp.i.i158.i.i.i = icmp eq i32 %or.i.i157.i.i.i, 0
  br i1 %cmp.i.i158.i.i.i, label %if.then93.i.i.i, label %land.lhs.true86.i.i.i.cleanup.i.i.i_crit_edge

land.lhs.true86.i.i.i.cleanup.i.i.i_crit_edge:    ; preds = %land.lhs.true86.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

if.then93.i.i.i:                                  ; preds = %land.lhs.true86.i.i.i
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 3
  %177 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cb.i.i.i.i, align 8
  %or.i13.i.i = or i32 %178, 512
  store i32 %or.i13.i.i, ptr %cb.i.i.i.i, align 8
  %arrayidx95.i.i.i = getelementptr %struct.ar9170, ptr %ar, i32 0, i32 116, i32 %cond49.i.i.i
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx95.i.i.i) #8
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0165.i.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then93.i.i.i.list_del_rcu.exit.i.i.i_crit_edge

if.then93.i.i.i.list_del_rcu.exit.i.i.i_crit_edge: ; preds = %if.then93.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_rcu.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then93.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0165.i.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %181 = ptrtoint ptr %entry1.0165.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %entry1.0165.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %180, ptr %prev1.i.i.i.i.i.i, align 4
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %182, ptr %180, align 4
  br label %list_del_rcu.exit.i.i.i

list_del_rcu.exit.i.i.i:                          ; preds = %if.end.i.i.i.i.i, %if.then93.i.i.i.list_del_rcu.exit.i.i.i_crit_edge
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0165.i.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx95.i.i.i) #8
  %tobool100.not.i.i.i = icmp eq ptr %entry1.0165.i.i.i, null
  br i1 %tobool100.not.i.i.i, label %list_del_rcu.exit.i.i.i.for.end.i.i.i_crit_edge, label %do.end104.i.i.i

list_del_rcu.exit.i.i.i.for.end.i.i.i_crit_edge:  ; preds = %list_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

do.end104.i.i.i:                                  ; preds = %list_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i.i = getelementptr inbounds %struct.carl9170_bar_list_entry, ptr %entry1.0165.i.i.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %head.i.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br label %for.end.i.i.i

cleanup.i.i.i:                                    ; preds = %land.lhs.true86.i.i.i.cleanup.i.i.i_crit_edge, %land.lhs.true81.i.i.i.cleanup.i.i.i_crit_edge, %land.lhs.true72.i.i.i.cleanup.i.i.i_crit_edge, %for.body.i.i.i.cleanup.i.i.i_crit_edge
  %186 = ptrtoint ptr %entry1.0165.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %entry1.0.i.i.i = load volatile ptr, ptr %entry1.0165.i.i.i, align 4
  %cmp64.not.i.i.i = icmp eq ptr %entry1.0.i.i.i, %arrayidx.i.i.i
  br i1 %cmp64.not.i.i.i, label %cleanup.i.i.i.for.end.i.i.i_crit_edge, label %cleanup.i.i.i.for.body.i.i.i_crit_edge

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

cleanup.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %cleanup.i.i.i.for.end.i.i.i_crit_edge, %do.end104.i.i.i, %list_del_rcu.exit.i.i.i.for.end.i.i.i_crit_edge, %do.end.i.i.i.for.end.i.i.i_crit_edge
  %call.i30.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i30.i.i, label %for.end.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i32.i.i

for.end.i.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i32.i.i:                            ; preds = %for.end.i.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i32.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i32.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i32.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i33.i.i

land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i33.i.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i33.i.i, %land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i32.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end.i.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %187 = call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i.i.i.i.i.i.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %190, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %carl9170_ba_check.exit.i.i

carl9170_ba_check.exit.i.i:                       ; preds = %rcu_read_unlock.exit.i.i, %if.end.i12.i.i.carl9170_ba_check.exit.i.i_crit_edge, %carl9170_ps_beacon.exit.i.i.carl9170_ba_check.exit.i.i_crit_edge
  %191 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %buf.addr.0.i, align 2
  %193 = and i16 %192, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %193)
  %cmp.i.i14.i.i = icmp eq i16 %193, -30720
  %194 = and i16 %192, 3
  br i1 %cmp.i.i14.i.i, label %if.then.i.i.i, label %carl9170_ba_check.exit.i.i.if.end4.i.i.i_crit_edge

carl9170_ba_check.exit.i.i.if.end4.i.i.i_crit_edge: ; preds = %carl9170_ba_check.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %carl9170_ba_check.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %194)
  %cmp.i.i.i15.i.i = icmp eq i16 %194, 3
  %retval.0.v.i.i.i.i = select i1 %cmp.i.i.i15.i.i, i32 30, i32 24
  %retval.0.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i, i32 %retval.0.v.i.i.i.i
  %195 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %retval.0.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %196)
  %tobool.not.i16.i.i = icmp sgt i8 %196, -1
  %spec.select.i.i.i = select i1 %tobool.not.i16.i.i, i32 2, i32 4
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i, %carl9170_ba_check.exit.i.i.if.end4.i.i.i_crit_edge
  %reserved.1.i.i.i = phi i32 [ %spec.select.i.i.i, %if.then.i.i.i ], [ 0, %carl9170_ba_check.exit.i.i.if.end4.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %194)
  %cmp.i33.i.i.i = icmp eq i16 %194, 3
  %add8.i.i.i = add nuw nsw i32 %reserved.1.i.i.i, 2
  %spec.select32.i.i.i = select i1 %cmp.i33.i.i.i, i32 %add8.i.i.i, i32 %reserved.1.i.i.i
  %and10.i.i.i = and i32 %spec.select32.i.i.i, 2
  %add11.i.i.i = or i32 %and10.i.i.i, 32
  %add12.i.i.i = add i32 %add11.i.i.i, %mpdu_len.1.i
  %call.i.i.i17.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add12.i.i.i, i32 noundef 2592) #8
  %tobool14.not.i.i.i = icmp eq ptr %call.i.i.i17.i.i, null
  br i1 %tobool14.not.i.i.i, label %if.end4.i.i.i.drop.i_crit_edge, label %carl9170_handle_mpdu.exit.thread.i, !prof !150

if.end4.i.i.i.drop.i_crit_edge:                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop.i

carl9170_handle_mpdu.exit.thread.i:               ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i17.i.i, i32 0, i32 19
  %197 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %198, i32 %add11.i.i.i
  store ptr %add.ptr.i.i18.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i17.i.i, i32 0, i32 16
  %199 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i19.i.i = getelementptr i8, ptr %200, i32 %add11.i.i.i
  store ptr %add.ptr1.i.i19.i.i, ptr %tail.i.i.i.i, align 8
  %call.i.i20.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i17.i.i, i32 noundef %mpdu_len.1.i) #8
  %201 = call ptr @memcpy(ptr %call.i.i20.i.i, ptr %buf.addr.0.i, i32 %mpdu_len.1.i)
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i17.i.i, i32 0, i32 3
  %202 = call ptr @memcpy(ptr %cb.i.i.i, ptr %status.i, i32 48)
  %203 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hw.i.i.i, align 4
  call void @ieee80211_rx_napi(ptr noundef %204, ptr noundef null, ptr noundef nonnull %call.i.i.i17.i.i, ptr noundef null) #8
  br label %carl9170_rx_untie_data.exit

drop.sink.split.i:                                ; preds = %if.then56.i.drop.sink.split.i_crit_edge, %if.else33.i.drop.sink.split.i_crit_edge, %if.else.i.drop.sink.split.i_crit_edge
  %.str.58.sink.i = phi ptr [ @.str.55, %if.else.i.drop.sink.split.i_crit_edge ], [ @.str.58, %if.else33.i.drop.sink.split.i_crit_edge ], [ @.str.61, %if.then56.i.drop.sink.split.i_crit_edge ]
  %hw40.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %205 = ptrtoint ptr %hw40.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw40.i, align 4
  %wiphy41.i = getelementptr inbounds %struct.ieee80211_hw, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %wiphy41.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %wiphy41.i, align 8
  %dev42.i = getelementptr inbounds %struct.wiphy, ptr %208, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i, ptr noundef nonnull %.str.58.sink.i) #11
  br label %drop.i

drop.i:                                           ; preds = %drop.sink.split.i, %if.end4.i.i.i.drop.i_crit_edge, %if.end6.i.i.drop.i_crit_edge, %if.end89.i.drop.i_crit_edge, %sw.epilog.i.drop.i_crit_edge, %if.else33.i.drop.i_crit_edge, %if.else.i.drop.i_crit_edge
  %rx_dropped.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 87
  %209 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %rx_dropped.i, align 8
  %inc113.i = add i32 %210, 1
  store i32 %inc113.i, ptr %rx_dropped.i, align 8
  br label %carl9170_rx_untie_data.exit

carl9170_rx_untie_data.exit:                      ; preds = %drop.i, %carl9170_handle_mpdu.exit.thread.i, %if.then56.i.carl9170_rx_untie_data.exit_crit_edge, %if.else.carl9170_rx_untie_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %status.i) #8
  br label %cleanup

cleanup:                                          ; preds = %carl9170_rx_untie_data.exit, %if.then14, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @carl9170_rx_untie_cmds(ptr noundef %ar, ptr noundef %respbuf, i32 noundef %resplen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resplen)
  %cmp60.not = icmp eq i32 %resplen, 0
  br i1 %cmp60.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cmd_seq.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 78
  %cmd_bufs14.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 26, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %while.body.lr.ph
  %i.061 = phi i32 [ 0, %while.body.lr.ph ], [ %add1, %if.end9.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %respbuf, i32 %i.061
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %1 to i32
  %add = add i32 %i.061, 4
  %add1 = add i32 %add, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %resplen)
  %cmp2 = icmp ugt i32 %add1, %resplen
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end, !prof !150

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %seq = getelementptr inbounds %struct.anon.137, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seq, align 2
  %conv6 = zext i8 %3 to i32
  %4 = ptrtoint ptr %cmd_seq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp slt i32 %5, -1
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp slt i32 %5, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %cmd_seq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv6, ptr %cmd_seq.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %7 = ptrtoint ptr %cmd_seq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv6)
  %cmp7.not.i = icmp eq i32 %8, %conv6
  br i1 %cmp7.not.i, label %if.end11.i, label %carl9170_check_sequence.exit

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %conv6, 1
  %9 = ptrtoint ptr %cmd_bufs14.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_bufs14.i, align 8
  %rem15.i = urem i32 %add.i, %10
  %11 = ptrtoint ptr %cmd_seq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem15.i, ptr %cmd_seq.i, align 4
  br label %if.end9

carl9170_check_sequence.exit:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.le = zext i8 %3 to i32
  %sub.i = sub i32 %conv6.le, %8
  %12 = ptrtoint ptr %cmd_bufs14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_bufs14.i, align 8
  %rem.i = urem i32 %sub.i, %13
  %hw.i = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %rem.i, i32 noundef %8, i32 noundef %conv6.le) #11
  tail call void @carl9170_restart(ptr noundef %ar, i32 noundef 8) #8
  br label %while.end

if.end9:                                          ; preds = %if.end11.i, %if.end.if.end9_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 4
  %conv12 = zext i8 %19 to i32
  %add13 = add nuw nsw i32 %conv12, 4
  tail call void @carl9170_handle_command_response(ptr noundef %ar, ptr noundef %arrayidx, i32 noundef %add13)
  %cmp = icmp ult i32 %add1, %resplen
  br i1 %cmp, label %if.end9.while.body_crit_edge, label %if.end9.while.end_crit_edge

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %carl9170_check_sequence.exit, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %i.1 = phi i32 [ %add1, %carl9170_check_sequence.exit ], [ 0, %entry.while.end_crit_edge ], [ %add1, %while.body.while.end_crit_edge ], [ %add1, %if.end9.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %resplen)
  %cmp14.not = icmp eq i32 %i.1, %resplen
  br i1 %cmp14.not, label %while.end.cleanup_crit_edge, label %if.then22, !prof !145

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %while.end
  %call23 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_rx_untie_cmds.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_rx_untie_cmds, %if.then36)) #8
          to label %cleanup [label %if.then36], !srcloc !146

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.52, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %respbuf, i32 noundef %resplen, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.end, %if.then22.cleanup_crit_edge, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @carl9170_rx_mac_status(ptr nocapture noundef %ar, ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %mac, ptr noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %error4 = getelementptr inbounds %struct.ar9170_rx_macstatus, ptr %mac, i32 0, i32 2
  %0 = ptrtoint ptr %error4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %error4, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %sniffer_enabled = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 53
  %2 = ptrtoint ptr %sniffer_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sniffer_enabled, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and9 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %if.then11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end7
  %filter_state = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 51
  %4 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filter_state, align 4
  %and12 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flag, align 8
  %or = or i32 %7, 64
  store i32 %or, ptr %flag, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end7.if.end16_crit_edge
  %and18 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end28_crit_edge, label %if.then20

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.end16
  %tx_fcs_errors = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 86
  %8 = ptrtoint ptr %tx_fcs_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_fcs_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_fcs_errors, align 4
  %filter_state21 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 51
  %10 = ptrtoint ptr %filter_state21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter_state21, align 4
  %and22 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then20.cleanup_crit_edge, label %if.end25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %flag26 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %12 = ptrtoint ptr %flag26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flag26, align 8
  %or27 = or i32 %13, 32
  store i32 %or27, ptr %flag26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end16.if.end28_crit_edge
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac, align 1
  %16 = lshr i8 %15, 4
  %17 = and i8 %16, 12
  %DAidx.i = getelementptr inbounds %struct.ar9170_rx_macstatus, ptr %mac, i32 0, i32 1
  %18 = ptrtoint ptr %DAidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %DAidx.i, align 1
  %20 = lshr i8 %19, 6
  %or6.i = or i8 %17, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool31.not = icmp slt i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or6.i)
  %cmp.not = icmp eq i8 %or6.i, 0
  %or.cond = or i1 %tobool31.not, %cmp.not
  br i1 %or.cond, label %if.end28.if.end48_crit_edge, label %if.then34

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %or6.i)
  %cmp36 = icmp ne i8 %or6.i, 2
  %and40 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond274 = select i1 %cmp36, i1 true, i1 %tobool41.not
  br i1 %or.cond274, label %if.then34.if.end45_crit_edge, label %if.then42

if.then34.if.end45_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %flag43 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %21 = ptrtoint ptr %flag43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flag43, align 8
  %or44 = or i32 %22, 1
  store i32 %or44, ptr %flag43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then34.if.end45_crit_edge
  %flag46 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %23 = ptrtoint ptr %flag46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flag46, align 8
  %or47 = or i32 %24, 2
  store i32 %or47, ptr %flag46, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.end28.if.end48_crit_edge
  %and50 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end56_crit_edge, label %land.lhs.true52

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true52:                                  ; preds = %if.end48
  %sniffer_enabled53 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 53
  %25 = ptrtoint ptr %sniffer_enabled53 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sniffer_enabled53, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool54.not = icmp eq i8 %26, 0
  br i1 %tobool54.not, label %land.lhs.true52.cleanup_crit_edge, label %land.lhs.true52.if.end56_crit_edge

land.lhs.true52.if.end56_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true52.if.end56_crit_edge, %if.end48.if.end56_crit_edge
  %and58 = and i8 %1, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and58)
  %tobool60.not = icmp eq i8 %and58, 0
  br i1 %tobool60.not, label %if.end82, label %if.then63, !prof !145

if.then63:                                        ; preds = %if.end56
  %call64 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.cleanup_crit_edge, label %do.body67

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @carl9170_rx_mac_status.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@carl9170_rx_mac_status, %if.then76)) #8
          to label %cleanup [label %if.then76], !srcloc !146

if.then76:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %conv77 = zext i8 %and58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @carl9170_rx_mac_status.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %conv77) #8
  br label %cleanup

if.end82:                                         ; preds = %if.end56
  %channel = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 55
  %31 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channel, align 4
  %tobool83.not = icmp eq ptr %32, null
  br i1 %tobool83.not, label %if.end82.if.end88_crit_edge, label %if.then84

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %conv85 = trunc i32 %34 to i8
  %band86 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %35 = ptrtoint ptr %band86 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv85, ptr %band86, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %center_freq, align 4
  %conv87 = trunc i32 %37 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %38 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv87, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %freq, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end82.if.end88_crit_edge
  %status89 = getelementptr inbounds %struct.ar9170_rx_macstatus, ptr %mac, i32 0, i32 3
  %39 = ptrtoint ptr %status89 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status89, align 1
  %conv90 = zext i8 %40 to i32
  %and91 = and i32 %conv90, 3
  %41 = zext i32 %and91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %and91, label %if.end88.unreachabledefault [
    i32 0, label %sw.bb
    i32 3, label %if.end88.sw.bb122_crit_edge
    i32 1, label %if.end88.sw.bb122_crit_edge276
    i32 2, label %sw.bb167
  ]

if.end88.sw.bb122_crit_edge276:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb122

if.end88.sw.bb122_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb122

sw.bb:                                            ; preds = %if.end88
  %and94 = and i32 %conv90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %sw.bb.if.end100_crit_edge, label %if.then96

sw.bb.if.end100_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then96:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %42 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enc_flags, align 2
  %44 = or i8 %43, 1
  store i8 %44, ptr %enc_flags, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %sw.bb.if.end100_crit_edge
  %45 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %head, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %46, label %sw.default [
    i8 10, label %sw.bb102
    i8 20, label %sw.bb103
    i8 55, label %sw.bb105
    i8 110, label %sw.bb107
  ]

sw.bb102:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %48 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %rate_idx, align 1
  br label %cleanup

sw.bb103:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %rate_idx104 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %49 = ptrtoint ptr %rate_idx104 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %rate_idx104, align 1
  br label %cleanup

sw.bb105:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %rate_idx106 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %50 = ptrtoint ptr %rate_idx106 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %rate_idx106, align 1
  br label %cleanup

sw.bb107:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %rate_idx108 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %51 = ptrtoint ptr %rate_idx108 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %rate_idx108, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end100
  %call109 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %sw.default.cleanup_crit_edge, label %do.end114

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end114:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %hw115 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %52 = ptrtoint ptr %hw115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw115, align 4
  %wiphy116 = getelementptr inbounds %struct.ieee80211_hw, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wiphy116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy116, align 8
  %dev117 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  %56 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %head, align 1
  %conv120 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.65, i32 noundef %conv120) #11
  br label %cleanup

sw.bb122:                                         ; preds = %if.end88.sw.bb122_crit_edge, %if.end88.sw.bb122_crit_edge276
  %58 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %head, align 1
  %60 = and i8 %59, 15
  %and126 = zext i8 %60 to i32
  %switch.tableidx = add nsw i32 %and126, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %61 = icmp ult i32 %switch.tableidx, 8
  br i1 %61, label %switch.lookup, label %sw.default143

sw.default143:                                    ; preds = %sw.bb122
  %call144 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %sw.default143.cleanup_crit_edge, label %do.end149

sw.default143.cleanup_crit_edge:                  ; preds = %sw.default143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end149:                                        ; preds = %sw.default143
  call void @__sanitizer_cov_trace_pc() #10
  %hw150 = getelementptr inbounds %struct.ar9170, ptr %ar, i32 0, i32 1
  %62 = ptrtoint ptr %hw150 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw150, align 4
  %wiphy151 = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wiphy151 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wiphy151, align 8
  %dev152 = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 56
  %66 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %head, align 1
  %conv155 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev152, ptr noundef nonnull @.str.67, i32 noundef %conv155) #11
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb122
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.carl9170_rx_mac_status, i32 0, i32 %switch.tableidx
  %68 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %68)
  %switch.load = load i8, ptr %switch.gep, align 1
  %rate_idx142 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %69 = ptrtoint ptr %rate_idx142 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %switch.load, ptr %rate_idx142, align 1
  %band158 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %70 = ptrtoint ptr %band158 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %band158, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp160 = icmp eq i8 %71, 0
  br i1 %cmp160, label %if.then162, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then162:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %rate_idx163 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %72 = ptrtoint ptr %rate_idx163 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rate_idx163, align 1
  %add = add i8 %73, 4
  store i8 %add, ptr %rate_idx163, align 1
  br label %cleanup

sw.bb167:                                         ; preds = %if.end88
  %arrayidx169 = getelementptr [12 x i8], ptr %head, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %tobool172.not = icmp sgt i8 %75, -1
  br i1 %tobool172.not, label %sw.bb167.if.end177_crit_edge, label %if.then173

sw.bb167.if.end177_crit_edge:                     ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then173:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #10
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 7
  %76 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %bf.load174 = load i16, ptr %bw, align 1
  %bf.clear175 = and i16 %bf.load174, -14337
  %bf.set176 = or i16 %bf.clear175, 6144
  store i16 %bf.set176, ptr %bw, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %sw.bb167.if.end177_crit_edge
  %arrayidx179 = getelementptr [12 x i8], ptr %head, i32 0, i32 6
  %77 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx179, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %tobool182.not = icmp sgt i8 %78, -1
  br i1 %tobool182.not, label %if.end177.if.end188_crit_edge, label %if.then183

if.end177.if.end188_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then183:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  %enc_flags184 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %79 = ptrtoint ptr %enc_flags184 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %enc_flags184, align 2
  %81 = or i8 %80, 4
  store i8 %81, ptr %enc_flags184, align 2
  br label %if.end188

if.end188:                                        ; preds = %if.then183, %if.end177.if.end188_crit_edge
  %82 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx169, align 1
  %84 = and i8 %83, 127
  %85 = tail call i8 @llvm.umin.i8(i8 %84, i8 75)
  %rate_idx204 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %86 = ptrtoint ptr %rate_idx204 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %rate_idx204, align 1
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 7
  %87 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %bf.load205 = load i16, ptr %encoding, align 1
  %bf.clear206 = and i16 %bf.load205, 16383
  %bf.set207 = or i16 %bf.clear206, 16384
  store i16 %bf.set207, ptr %encoding, align 1
  br label %cleanup

if.end88.unreachabledefault:                      ; preds = %if.end88
  unreachable

cleanup:                                          ; preds = %if.end188, %if.then162, %switch.lookup.cleanup_crit_edge, %do.end149, %sw.default143.cleanup_crit_edge, %do.end114, %sw.default.cleanup_crit_edge, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb102, %if.then76, %do.body67, %if.then63.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ -61, %land.lhs.true52.cleanup_crit_edge ], [ -22, %if.then76 ], [ -22, %if.then63.cleanup_crit_edge ], [ -22, %do.end114 ], [ -22, %sw.default.cleanup_crit_edge ], [ -22, %do.end149 ], [ -22, %sw.default143.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then162 ], [ 0, %sw.bb102 ], [ 0, %sw.bb103 ], [ 0, %sw.bb105 ], [ 0, %sw.bb107 ], [ 0, %if.end188 ], [ -22, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_mybeacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @carl9170_ps_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 175, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @carl9170_handle_command_response._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @carl9170_handle_command_response._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 179, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug357, !9, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 248, i32 3}
!15 = !{ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug358, !14, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 249, i32 3}
!18 = !{ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug359, !17, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 257, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @carl9170_handle_command_response._entry.10, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @carl9170_handle_command_response._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 282, i32 3}
!26 = !{ptr @carl9170_handle_command_response._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @carl9170_handle_command_response._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @carl9170_handle_command_response.__UNIQUE_ID_ddebug360, !29, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 284, i32 3}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 137, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @carl9170_cmd_callback._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @carl9170_cmd_callback._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 139, i32 3}
!38 = !{ptr @carl9170_cmd_callback.__UNIQUE_ID_ddebug355, !37, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 141, i32 3}
!41 = !{ptr @carl9170_cmd_callback.__UNIQUE_ID_ddebug356, !40, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/carl9170/carl9170.h", i32 650, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 55, i32 19}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 63, i32 19}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 70, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @carl9170_dbg_message._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @carl9170_dbg_message._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 901, i32 6}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @carl9170_rx_stream._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @carl9170_rx_stream._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 911, i32 6}
!69 = !{ptr @carl9170_rx_stream._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @carl9170_rx_stream._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 948, i32 6}
!73 = !{ptr @carl9170_rx_stream._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @carl9170_rx_stream._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 974, i32 4}
!77 = !{ptr @carl9170_rx_stream._entry.39, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @carl9170_rx_stream._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 984, i32 2}
!81 = !{ptr @carl9170_rx_stream._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @carl9170_rx_stream._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 989, i32 3}
!85 = !{ptr @carl9170_rx_stream.__UNIQUE_ID_ddebug373, !84, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 993, i32 2}
!88 = !{ptr @carl9170_rx_stream.__UNIQUE_ID_ddebug374, !87, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 996, i32 2}
!91 = !{ptr @carl9170_rx_stream._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @carl9170_rx_stream._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 848, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @carl9170_rx_untie_cmds._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @carl9170_rx_untie_cmds._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 849, i32 3}
!100 = !{ptr @carl9170_rx_untie_cmds.__UNIQUE_ID_ddebug372, !99, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 118, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @carl9170_check_sequence._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @carl9170_check_sequence._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 742, i32 5}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @carl9170_rx_untie_data._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @carl9170_rx_untie_data._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 763, i32 5}
!113 = !{ptr @carl9170_rx_untie_data._entry.57, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @carl9170_rx_untie_data._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 777, i32 4}
!117 = !{ptr @carl9170_rx_untie_data._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @carl9170_rx_untie_data._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 346, i32 4}
!121 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @carl9170_rx_mac_status.__UNIQUE_ID_ddebug363, !120, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 377, i32 5}
!125 = !{ptr @carl9170_rx_mac_status._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @carl9170_rx_mac_status._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 414, i32 5}
!129 = !{ptr @carl9170_rx_mac_status._entry.66, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @carl9170_rx_mac_status._entry_ptr.68, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 551, i32 7}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/carl9170/rx.c", i32 590, i32 2}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2148223940, i64 2148223945, i64 2148223958, i64 2148224002, i64 2148224036, i64 2148224057}
!147 = !{i64 2149940085}
!148 = !{i8 0, i8 2}
!149 = !{i64 2149940351}
!150 = !{!"branch_weights", i32 1, i32 2000}
