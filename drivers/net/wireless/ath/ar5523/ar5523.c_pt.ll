; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ar5523/ar5523.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ar5523/ar5523.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ar5523_fwblock = type { i32, i32, i32, i32, i32, [123 x i32] }
%struct.firmware = type { i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ar5523 = type { ptr, ptr, i32, %struct.mutex, ptr, %struct.ar5523_tx_cmd, %struct.delayed_work, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x %struct.ar5523_rx_data], %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.work_struct, i32, [16 x i8], [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, ptr }
%struct.ar5523_tx_cmd = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion }
%struct.ar5523_rx_data = type { %struct.list_head, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ar5523_cmd_host_available = type { i32, i32, i32, i32 }
%struct.ar5523_cmd_ledsteady = type { i32, i32 }
%struct.ar5523_cmd_rx_filter = type { i32, i32 }
%struct.ar5523_write_mac = type { i32, i32, [32 x i8] }
%struct.ar5523_cmd_set_associd = type <{ i32, i32, i32, i32, [6 x i8] }>
%struct.ar5523_cmd_rates = type <{ i32, i32, i32, %struct.ar5523_cmd_rateset }>
%struct.ar5523_cmd_rateset = type { i8, [32 x i8] }
%struct.ar5523_cmd_create_connection = type <{ i32, i32, i32, %struct.ar5523_cmd_connection_attr }>
%struct.ar5523_cmd_connection_attr = type <{ i32, %struct.ar5523_cmd_rateset, i32 }>
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ar5523_cmd_txq_setup = type { i32, i32, %struct.ar5523_cmd_txq_attr }
%struct.ar5523_cmd_txq_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ar5523_cmd_reset = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ar5523_cmd_hdr = type { i32, i32, i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ar5523_tx_data = type { %struct.list_head, ptr, ptr }
%struct.ar5523_chunk = type { i8, i8, i16 }
%struct.ar5523_tx_desc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ar5523_rx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ar5523__406_1798_ar5523_driver_init6 = internal global ptr @ar5523_driver_init, section ".initcall6.init", align 4
@ar5523_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ar5523_probe, ptr @ar5523_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar5523_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ar5523_driver_exit = internal global ptr @ar5523_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file407 = internal constant [51 x i8] c"ar5523.file=drivers/net/wireless/ath/ar5523/ar5523\00", section ".modinfo", align 1
@__UNIQUE_ID_license408 = internal constant [28 x i8] c"ar5523.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware409 = internal constant [27 x i8] c"ar5523.firmware=ar5523.bin\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ar5523\00", [25 x i8] zeroinitializer }, align 32
@ar5523_id_table = internal constant { [57 x %struct.usb_device_id], [328 x i8] } { [57 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5772, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5772, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3315, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3315, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3315, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3315, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3470, i16 30721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3470, i16 30722, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3470, i16 30737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3470, i16 30738, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 8193, i16 14848, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 8193, i16 14849, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 8193, i16 14850, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 14851, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8193, i16 14852, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 8193, i16 14853, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 2001, i16 14855, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 14856, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5776, i16 1810, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1811, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5776, i16 1808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1809, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4763, i16 5643, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4763, i16 5644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5803, i16 30721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5803, i16 30722, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5803, i16 30737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 5803, i16 30738, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3470, i16 30722, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3470, i16 30723, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2118, i16 17152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2118, i16 17153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 2118, i16 16976, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 16977, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2118, i16 24320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 24321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2106, i16 17670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 17671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5502, i16 12294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5502, i16 12805, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 5502, i16 12806, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 5173, i16 2086, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5173, i16 2087, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5173, i16 2088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 5173, i16 2089, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3294, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4997, i16 16976, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4997, i16 16977, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4997, i16 24320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4997, i16 24321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4997, i16 24322, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4997, i16 24323, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [328 x i8] zeroinitializer }, align 32
@ar5523_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @ar5523_tx, ptr @ar5523_start, ptr @ar5523_stop, ptr null, ptr null, ptr null, ptr @ar5523_add_interface, ptr null, ptr @ar5523_remove_interface, ptr @ar5523_hwconfig, ptr @ar5523_bss_info_changed, ptr null, ptr null, ptr null, ptr @ar5523_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar5523_set_rts_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar5523_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@ar5523_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ar->mutex\00", [21 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&ar->stat_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&ar->stat_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&ar->tx_wd_timer)\00", [45 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ar->tx_wd_work)\00", [61 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&ar->tx_work)\00", [32 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ar->tx_data_list_lock\00", [41 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ar->tx_flush_waitq\00", [44 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&ar->rx_refill_work)\00", [57 x i8] zeroinitializer }, align 32
@ar5523_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ar->rx_data_list_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ar5523_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 1625, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Could not create wq\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ar5523_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ar5523/ar5523.c\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr = internal global ptr @ar5523_probe._entry, section ".printk_index", align 4
@ar5523_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.23, i32 1631, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not allocate rx buffers\0A\00", [33 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.28 = internal global ptr @ar5523_probe._entry.26, section ".printk_index", align 4
@ar5523_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.23, i32 1637, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not allocate rx command buffers\0A\00", [57 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.31 = internal global ptr @ar5523_probe._entry.29, section ".printk_index", align 4
@ar5523_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.23, i32 1643, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not allocate tx command buffers\0A\00", [57 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.34 = internal global ptr @ar5523_probe._entry.32, section ".printk_index", align 4
@ar5523_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.23, i32 1649, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to submit rx cmd\0A\00", [39 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.37 = internal global ptr @ar5523_probe._entry.35, section ".printk_index", align 4
@ar5523_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.23, i32 1658, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not initialize adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.40 = internal global ptr @ar5523_probe._entry.38, section ".printk_index", align 4
@ar5523_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.22, ptr @.str.23, i32 1664, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get caps from adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.43 = internal global ptr @ar5523_probe._entry.41, section ".printk_index", align 4
@ar5523_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.22, ptr @.str.23, i32 1670, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.45 = internal global ptr @ar5523_probe._entry.44, section ".printk_index", align 4
@ar5523_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.22, ptr @.str.23, i32 1676, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not get device status\0A\00", [35 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.48 = internal global ptr @ar5523_probe._entry.46, section ".printk_index", align 4
@ar5523_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.22, ptr @.str.23, i32 1681, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC/BBP AR5523, RF AR%c112\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.52 = internal global ptr @ar5523_probe._entry.49, section ".printk_index", align 4
@ar5523_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.23, i32 1702, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not register device\0A\00", [37 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.55 = internal global ptr @ar5523_probe._entry.53, section ".printk_index", align 4
@ar5523_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.22, ptr @.str.23, i32 1706, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Found and initialized AR5523 device\0A\00", [59 x i8] zeroinitializer }, align 32
@ar5523_probe._entry_ptr.58 = internal global ptr @ar5523_probe._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ar5523.bin\00", [21 x i8] zeroinitializer }, align 32
@ar5523_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.23, i32 1499, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no firmware found: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar5523_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@ar5523_load_firmware._entry_ptr = internal global ptr @ar5523_load_firmware._entry, section ".printk_index", align 4
@ar5523_load_firmware._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.23, i32 1533, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not send firmware block info\0A\00", [60 x i8] zeroinitializer }, align 32
@ar5523_load_firmware._entry_ptr.64 = internal global ptr @ar5523_load_firmware._entry.62, section ".printk_index", align 4
@ar5523_load_firmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.23, i32 1544, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not send firmware block data\0A\00", [60 x i8] zeroinitializer }, align 32
@ar5523_load_firmware._entry_ptr.67 = internal global ptr @ar5523_load_firmware._entry.65, section ".printk_index", align 4
@ar5523_load_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.23, i32 1554, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not read firmware answer\0A\00", [32 x i8] zeroinitializer }, align 32
@ar5523_load_firmware._entry_ptr.70 = internal global ptr @ar5523_load_firmware._entry.68, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ar5523_tx.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.23, ptr @.str.72, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ar5523_tx\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx called\0A\00", [21 x i8] zeroinitializer }, align 32
@ar5523_tx.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.23, ptr @.str.73, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx queue full\0A\00", [17 x i8] zeroinitializer }, align 32
@ar5523_tx.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.23, ptr @.str.74, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stop queues (tot %d pend %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@ar5523_start.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.23, ptr @.str.76, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ar5523_start\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start called\0A\00", [18 x i8] zeroinitializer }, align 32
@ar5523_start.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.23, ptr @.str.77, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not start target, error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ar5523_start.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.23, ptr @.str.78, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WDCMSG_TARGET_START returns handle: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@ar5523_start.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.23, ptr @.str.79, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start OK\0A\00", [22 x i8] zeroinitializer }, align 32
@ar5523_cmd.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.23, ptr @.str.81, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ar5523_cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do cmd %02x\0A\00", [19 x i8] zeroinitializer }, align 32
@ar5523_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.23, i32 278, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not send command 0x%x, error=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ar5523_cmd._entry_ptr = internal global ptr @ar5523_cmd._entry, section ".printk_index", align 4
@ar5523_cmd._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.80, ptr @.str.23, i32 285, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"timeout waiting for command %02x reply\0A\00", [56 x i8] zeroinitializer }, align 32
@ar5523_cmd._entry_ptr.85 = internal global ptr @ar5523_cmd._entry.83, section ".printk_index", align 4
@ar5523_cmd_tx_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.23, i32 232, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to TX command. Status = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ar5523_cmd_tx_cb\00", [47 x i8] zeroinitializer }, align 32
@ar5523_cmd_tx_cb._entry_ptr = internal global ptr @ar5523_cmd_tx_cb._entry, section ".printk_index", align 4
@ar5523_config_multi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.23, i32 336, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"could not write %d bytes to register 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ar5523_config_multi\00", [44 x i8] zeroinitializer }, align 32
@ar5523_config_multi._entry_ptr = internal global ptr @ar5523_config_multi._entry, section ".printk_index", align 4
@ar5523_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.23, i32 317, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not write register 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar5523_config\00", [18 x i8] zeroinitializer }, align 32
@ar5523_config._entry_ptr = internal global ptr @ar5523_config._entry, section ".printk_index", align 4
@ar5523_switch_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.23, i32 499, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set chan, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ar5523_switch_chan\00", [45 x i8] zeroinitializer }, align 32
@ar5523_switch_chan._entry_ptr = internal global ptr @ar5523_switch_chan._entry, section ".printk_index", align 4
@ar5523_switch_chan._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.23, i32 507, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not reset Tx queues, error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ar5523_switch_chan._entry_ptr.96 = internal global ptr @ar5523_switch_chan._entry.94, section ".printk_index", align 4
@ar5523_switch_chan._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.23, i32 513, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not init wme, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ar5523_switch_chan._entry_ptr.99 = internal global ptr @ar5523_switch_chan._entry.97, section ".printk_index", align 4
@ar5523_set_chan.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.23, ptr @.str.101, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ar5523_set_chan\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set chan flags 0x%x freq %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ar5523_reset_tx_queues.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.23, ptr @.str.103, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ar5523_reset_tx_queues\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resetting Tx queue\0A\00", [44 x i8] zeroinitializer }, align 32
@ar5523_queue_init.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.23, ptr @.str.105, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_queue_init\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting up Tx queue\0A\00", [43 x i8] zeroinitializer }, align 32
@ar5523_set_rxfilter.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.23, ptr @.str.107, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ar5523_set_rxfilter\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"setting Rx filter=0x%x flags=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@ar5523_set_ledsteady.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.23, ptr @.str.109, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar5523_set_ledsteady\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set %s led %s (steady)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"activity\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@ar5523_stop.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.23, ptr @.str.115, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ar5523_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop called\0A\00", [19 x i8] zeroinitializer }, align 32
@ar5523_add_interface.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.23, ptr @.str.117, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar5523_add_interface\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"add interface called\0A\00", [42 x i8] zeroinitializer }, align 32
@ar5523_add_interface.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.23, ptr @.str.118, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid add_interface\0A\00", [41 x i8] zeroinitializer }, align 32
@ar5523_remove_interface.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.23, ptr @.str.120, i8 1, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ar5523_remove_interface\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"remove interface called\0A\00", [39 x i8] zeroinitializer }, align 32
@ar5523_hwconfig.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.23, ptr @.str.122, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ar5523_hwconfig\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config called\0A\00", [17 x i8] zeroinitializer }, align 32
@ar5523_hwconfig.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.23, ptr @.str.123, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Do channel switch\0A\00", [45 x i8] zeroinitializer }, align 32
@ar5523_flush_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.23, i32 934, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"flush timeout (tot %d pend %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ar5523_flush_tx\00", [16 x i8] zeroinitializer }, align 32
@ar5523_flush_tx._entry_ptr = internal global ptr @ar5523_flush_tx._entry, section ".printk_index", align 4
@ar5523_tx_work_locked.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.23, ptr @.str.127, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ar5523_tx_work_locked\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ar5523_tx_work_locked.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.23, ptr @.str.128, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX Frame (%d pending)\0A\00", [41 x i8] zeroinitializer }, align 32
@ar5523_tx_work_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.126, ptr @.str.23, i32 875, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d when submitting tx urb\0A\00", [63 x i8] zeroinitializer }, align 32
@ar5523_tx_work_locked._entry_ptr = internal global ptr @ar5523_tx_work_locked._entry, section ".printk_index", align 4
@ar5523_data_tx_cb.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.23, ptr @.str.131, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_data_tx_cb\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data tx urb completed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ar5523_data_tx_cb.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.23, ptr @.str.132, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: urb status: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ar5523_data_tx_pkt_put.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.23, ptr @.str.134, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ar5523_data_tx_pkt_put\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"restart tx queue\0A\00", [46 x i8] zeroinitializer }, align 32
@ar5523_bss_info_changed.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.23, ptr @.str.136, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ar5523_bss_info_changed\00", [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bss_info_changed called\0A\00", [39 x i8] zeroinitializer }, align 32
@ar5523_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.23, i32 1290, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not create connection\0A\00", [35 x i8] zeroinitializer }, align 32
@ar5523_bss_info_changed._entry_ptr = internal global ptr @ar5523_bss_info_changed._entry, section ".printk_index", align 4
@ar5523_bss_info_changed._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.135, ptr @.str.23, i32 1296, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not set negotiated rate set\0A\00", [61 x i8] zeroinitializer }, align 32
@ar5523_bss_info_changed._entry_ptr.140 = internal global ptr @ar5523_bss_info_changed._entry.138, section ".printk_index", align 4
@ar5523_bss_info_changed._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.135, ptr @.str.23, i32 1302, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not set association\0A\00", [37 x i8] zeroinitializer }, align 32
@ar5523_bss_info_changed._entry_ptr.143 = internal global ptr @ar5523_bss_info_changed._entry.141, section ".printk_index", align 4
@ar5523_create_rateset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.23, i32 1198, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"STA not found. Cannot set rates\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ar5523_create_rateset\00", [42 x i8] zeroinitializer }, align 32
@ar5523_create_rateset._entry_ptr = internal global ptr @ar5523_create_rateset._entry, section ".printk_index", align 4
@ar5523_create_rateset.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.23, ptr @.str.146, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sta rate_set = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ar5523_create_rateset.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.23, ptr @.str.147, i8 1, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Considering rate %d : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ar5523_get_wlan_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.23, i32 1160, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STA not found!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar5523_get_wlan_mode\00", [43 x i8] zeroinitializer }, align 32
@ar5523_get_wlan_mode._entry_ptr = internal global ptr @ar5523_get_wlan_mode._entry, section ".printk_index", align 4
@ar5523_configure_filter.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.23, ptr @.str.151, i8 1, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ar5523_configure_filter\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"configure_filter called\0A\00", [39 x i8] zeroinitializer }, align 32
@ar5523_set_rts_threshold.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.152, ptr @.str.23, ptr @.str.153, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ar5523_set_rts_threshold\00", [39 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set_rts_threshold called\0A\00", [38 x i8] zeroinitializer }, align 32
@ar5523_flush.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.23, ptr @.str.155, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ar5523_flush\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flush called\0A\00", [18 x i8] zeroinitializer }, align 32
@ar5523_stat_work.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.23, ptr @.str.127, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ar5523_stat_work\00", [47 x i8] zeroinitializer }, align 32
@ar5523_stat_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.156, ptr @.str.23, i32 984, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not query stats, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ar5523_stat_work._entry_ptr = internal global ptr @ar5523_stat_work._entry, section ".printk_index", align 4
@ar5523_tx_wd_timer.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.158, ptr @.str.23, ptr @.str.159, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ar5523_tx_wd_timer\00", [45 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TX watchdog timer triggered\0A\00", [35 x i8] zeroinitializer }, align 32
@ar5523_tx_wd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.23, i32 916, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX queue stuck (tot %d pend %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_tx_wd_work\00", [46 x i8] zeroinitializer }, align 32
@ar5523_tx_wd_work._entry_ptr = internal global ptr @ar5523_tx_wd_work._entry, section ".printk_index", align 4
@ar5523_tx_wd_work._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.23, i32 918, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Will restart dongle.\0A\00", [42 x i8] zeroinitializer }, align 32
@ar5523_tx_wd_work._entry_ptr.164 = internal global ptr @ar5523_tx_wd_work._entry.162, section ".printk_index", align 4
@ar5523_tx_work.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.23, ptr @.str.127, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ar5523_tx_work\00", [17 x i8] zeroinitializer }, align 32
@ar5523_rx_refill_work.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.23, ptr @.str.127, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ar5523_rx_refill_work\00", [42 x i8] zeroinitializer }, align 32
@ar5523_rx_refill_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.166, ptr @.str.23, i32 642, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not allocate rx skbuff\0A\00", [34 x i8] zeroinitializer }, align 32
@ar5523_rx_refill_work._entry_ptr = internal global ptr @ar5523_rx_refill_work._entry, section ".printk_index", align 4
@ar5523_rx_refill_work._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.166, ptr @.str.23, i32 660, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Err sending rx data urb %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ar5523_rx_refill_work._entry_ptr.170 = internal global ptr @ar5523_rx_refill_work._entry.168, section ".printk_index", align 4
@ar5523_data_rx_cb.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.23, ptr @.str.127, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_data_rx_cb\00", [46 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.171, ptr @.str.23, i32 545, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: USB err: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb._entry_ptr = internal global ptr @ar5523_data_rx_cb._entry, section ".printk_index", align 4
@ar5523_data_rx_cb._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.171, ptr @.str.23, i32 550, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RX: wrong xfer size (usblen=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb._entry_ptr.175 = internal global ptr @ar5523_data_rx_cb._entry.173, section ".printk_index", align 4
@ar5523_data_rx_cb.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.23, ptr @.str.176, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RX: No final flag. s: %d f: %02x l: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.23, ptr @.str.177, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX: Bad descriptor (len=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.23, ptr @.str.178, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX: rxlen is 0\0A\00", [16 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.23, ptr @.str.179, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bad RX status (0x%x len = %d). Skip\0A\00", [59 x i8] zeroinitializer }, align 32
@ar5523_data_rx_cb.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.23, ptr @.str.180, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"eek, alignment workaround activated\0A\00", [59 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ar5523_submit_rx_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.23, i32 216, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d when submitting rx urb\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar5523_submit_rx_cmd\00", [43 x i8] zeroinitializer }, align 32
@ar5523_submit_rx_cmd._entry_ptr = internal global ptr @ar5523_submit_rx_cmd._entry, section ".printk_index", align 4
@ar5523_cmd_rx_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.23, i32 102, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX USB error %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ar5523_cmd_rx_cb\00", [47 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry_ptr = internal global ptr @ar5523_cmd_rx_cb._entry, section ".printk_index", align 4
@ar5523_cmd_rx_cb._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.23, i32 107, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX USB to short.\0A\00", [46 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry_ptr.188 = internal global ptr @ar5523_cmd_rx_cb._entry.186, section ".printk_index", align 4
@ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.23, ptr @.str.189, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s code %02x priv %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.185, ptr @.str.23, i32 122, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unexpected command id: %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry_ptr.192 = internal global ptr @ar5523_cmd_rx_cb._entry.190, section ".printk_index", align 4
@ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.23, ptr @.str.193, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WDCMSG_DEVICE_AVAIL\0A\00", [43 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.23, ptr @.str.194, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WDCMSG_SEND_COMPLETE: %d pending\0A\00", [62 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.23, ptr @.str.195, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected WDCMSG_SEND_COMPLETE\0A\00", [63 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.185, ptr @.str.23, i32 153, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid reply to WDCMSG_TARGET_START\00", [59 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry_ptr.198 = internal global ptr @ar5523_cmd_rx_cb._entry.196, section ".printk_index", align 4
@ar5523_cmd_rx_cb._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.185, ptr @.str.23, i32 157, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected WDCMSG_TARGET_START reply\00", [59 x i8] zeroinitializer }, align 32
@ar5523_cmd_rx_cb._entry_ptr.201 = internal global ptr @ar5523_cmd_rx_cb._entry.199, section ".printk_index", align 4
@ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.23, ptr @.str.202, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WDCMSG_STATS_UPDATE\0A\00", [43 x i8] zeroinitializer }, align 32
@ar5523_read_reply.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.203, ptr @.str.23, ptr @.str.204, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_read_reply\00", [46 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Code = %d len = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ar5523_read_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.23, i32 78, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"olen too small %d < %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ar5523_read_reply._entry_ptr = internal global ptr @ar5523_read_reply._entry, section ".printk_index", align 4
@ar5523_get_max_rxsz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.23, i32 1414, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read max RX size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ar5523_get_max_rxsz\00", [44 x i8] zeroinitializer }, align 32
@ar5523_get_max_rxsz._entry_ptr = internal global ptr @ar5523_get_max_rxsz._entry, section ".printk_index", align 4
@ar5523_get_max_rxsz._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.23, i32 1422, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Bad rxbufsz from device. Using %d instead\0A\00", [53 x i8] zeroinitializer }, align 32
@ar5523_get_max_rxsz._entry_ptr.210 = internal global ptr @ar5523_get_max_rxsz._entry.208, section ".printk_index", align 4
@ar5523_get_max_rxsz.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.207, ptr @.str.23, ptr @.str.211, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Max RX buf size: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ar5523_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.23, i32 350, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not read EEPROM offset 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_get_status\00", [46 x i8] zeroinitializer }, align 32
@ar5523_get_status._entry_ptr = internal global ptr @ar5523_get_status._entry, section ".printk_index", align 4
@ar5523_get_devcap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 384, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cap: %s=0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_get_devcap\00", [46 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr = internal global ptr @ar5523_get_devcap._entry, section ".printk_index", align 4
@.str.216 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAP_TARGET_VERSION\00", [45 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 385, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.218 = internal global ptr @ar5523_get_devcap._entry.217, section ".printk_index", align 4
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CAP_TARGET_REVISION\00", [44 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 386, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.221 = internal global ptr @ar5523_get_devcap._entry.220, section ".printk_index", align 4
@.str.222 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CAP_MAC_VERSION\00", [16 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 387, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.224 = internal global ptr @ar5523_get_devcap._entry.223, section ".printk_index", align 4
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CAP_MAC_REVISION\00", [47 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 388, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.227 = internal global ptr @ar5523_get_devcap._entry.226, section ".printk_index", align 4
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CAP_PHY_REVISION\00", [47 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 389, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.230 = internal global ptr @ar5523_get_devcap._entry.229, section ".printk_index", align 4
@.str.231 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CAP_ANALOG_5GHz_REVISION\00", [39 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 390, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.233 = internal global ptr @ar5523_get_devcap._entry.232, section ".printk_index", align 4
@.str.234 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CAP_ANALOG_2GHz_REVISION\00", [39 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 392, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.236 = internal global ptr @ar5523_get_devcap._entry.235, section ".printk_index", align 4
@.str.237 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CAP_REG_DOMAIN\00", [17 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 393, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.239 = internal global ptr @ar5523_get_devcap._entry.238, section ".printk_index", align 4
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CAP_REG_CAP_BITS\00", [47 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 394, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.242 = internal global ptr @ar5523_get_devcap._entry.241, section ".printk_index", align 4
@.str.243 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAP_WIRELESS_MODES\00", [45 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 395, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.245 = internal global ptr @ar5523_get_devcap._entry.244, section ".printk_index", align 4
@.str.246 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CAP_CHAN_SPREAD_SUPPORT\00", [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 396, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.248 = internal global ptr @ar5523_get_devcap._entry.247, section ".printk_index", align 4
@.str.249 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CAP_COMPRESS_SUPPORT\00", [43 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 397, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.251 = internal global ptr @ar5523_get_devcap._entry.250, section ".printk_index", align 4
@.str.252 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CAP_BURST_SUPPORT\00", [46 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 398, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.254 = internal global ptr @ar5523_get_devcap._entry.253, section ".printk_index", align 4
@.str.255 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CAP_FAST_FRAMES_SUPPORT\00", [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 399, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.257 = internal global ptr @ar5523_get_devcap._entry.256, section ".printk_index", align 4
@.str.258 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CAP_CHAP_TUNING_SUPPORT\00", [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 400, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.260 = internal global ptr @ar5523_get_devcap._entry.259, section ".printk_index", align 4
@.str.261 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAP_TURBOG_SUPPORT\00", [45 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 401, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.263 = internal global ptr @ar5523_get_devcap._entry.262, section ".printk_index", align 4
@.str.264 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CAP_TURBO_PRIME_SUPPORT\00", [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 402, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.266 = internal global ptr @ar5523_get_devcap._entry.265, section ".printk_index", align 4
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CAP_DEVICE_TYPE\00", [16 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 403, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.269 = internal global ptr @ar5523_get_devcap._entry.268, section ".printk_index", align 4
@.str.270 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CAP_WME_SUPPORT\00", [16 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 404, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.272 = internal global ptr @ar5523_get_devcap._entry.271, section ".printk_index", align 4
@.str.273 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CAP_TOTAL_QUEUES\00", [47 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 405, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.275 = internal global ptr @ar5523_get_devcap._entry.274, section ".printk_index", align 4
@.str.276 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CAP_CONNECTION_ID_MAX\00", [42 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 407, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.278 = internal global ptr @ar5523_get_devcap._entry.277, section ".printk_index", align 4
@.str.279 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CAP_LOW_5GHZ_CHAN\00", [46 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 408, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.281 = internal global ptr @ar5523_get_devcap._entry.280, section ".printk_index", align 4
@.str.282 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAP_HIGH_5GHZ_CHAN\00", [45 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 409, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.284 = internal global ptr @ar5523_get_devcap._entry.283, section ".printk_index", align 4
@.str.285 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CAP_LOW_2GHZ_CHAN\00", [46 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 410, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.287 = internal global ptr @ar5523_get_devcap._entry.286, section ".printk_index", align 4
@.str.288 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAP_HIGH_2GHZ_CHAN\00", [45 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 411, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.290 = internal global ptr @ar5523_get_devcap._entry.289, section ".printk_index", align 4
@.str.291 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CAP_TWICE_ANTENNAGAIN_5G\00", [39 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 412, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.293 = internal global ptr @ar5523_get_devcap._entry.292, section ".printk_index", align 4
@.str.294 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CAP_TWICE_ANTENNAGAIN_2G\00", [39 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 414, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.296 = internal global ptr @ar5523_get_devcap._entry.295, section ".printk_index", align 4
@.str.297 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAP_CIPHER_AES_CCM\00", [45 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 415, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.299 = internal global ptr @ar5523_get_devcap._entry.298, section ".printk_index", align 4
@.str.300 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CAP_CIPHER_TKIP\00", [16 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.23, i32 416, ptr @.str.51, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@ar5523_get_devcap._entry_ptr.302 = internal global ptr @ar5523_get_devcap._entry.301, section ".printk_index", align 4
@.str.303 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAP_MIC_TKIP\00", [19 x i8] zeroinitializer }, align 32
@ar5523_get_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.305, ptr @.str.23, i32 364, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not read capability %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ar5523_get_capability\00", [42 x i8] zeroinitializer }, align 32
@ar5523_get_capability._entry_ptr = internal global ptr @ar5523_get_capability._entry, section ".printk_index", align 4
@ar5523_get_devstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.307, ptr @.str.23, i32 1388, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read MAC address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar5523_get_devstatus\00", [43 x i8] zeroinitializer }, align 32
@ar5523_get_devstatus._entry_ptr = internal global ptr @ar5523_get_devstatus._entry, section ".printk_index", align 4
@ar5523_get_devstatus._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.307, ptr @.str.23, i32 1397, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not read device serial number\0A\00", [59 x i8] zeroinitializer }, align 32
@ar5523_get_devstatus._entry_ptr.310 = internal global ptr @ar5523_get_devstatus._entry.308, section ".printk_index", align 4
@ar5523_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@ar5523_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], [48 x i8] zeroinitializer }, align 32
@ar5523_disconnect.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.311, ptr @.str.23, ptr @.str.312, i8 1, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.311 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ar5523_disconnect\00", [46 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"detaching\0A\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.313 = internal global [10 x i64] [i64 8, i64 16, i64 60, i64 90, i64 120, i64 180, i64 240, i64 360, i64 480, i64 540]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.316 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.318 = private unnamed_addr constant [14 x i8] c"ar5523_driver\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1791, i32 26 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1798, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"ar5523_id_table\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1756, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant [11 x i8] c"ar5523_ops\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1354, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1604, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1606, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1607, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1608, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1609, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1612, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1615, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1618, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1621, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1623, i32 11 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1625, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1631, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1637, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1643, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1649, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1658, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1664, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1670, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1676, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1680, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1702, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1706, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1497, i32 28 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1498, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1532, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1543, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1553, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 776, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 778, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 779, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 998, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1027, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1030, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1051, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 269, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 277, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 284, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 231, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 335, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 317, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 499, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 506, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 513, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 469, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 450, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 479, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 441, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 427, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1062, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1108, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1111, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1130, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1138, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1141, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 932, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 807, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 870, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 874, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 749, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 756, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 735, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1281, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1290, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1296, i32 4 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1302, i32 4 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1198, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1203, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1208, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1160, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1334, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1085, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1099, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 975, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 984, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 901, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 914, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 918, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 891, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 627, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 642, i32 4 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 659, i32 5 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 540, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 544, i32 4 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 550, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 558, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 570, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 576, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 581, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 591, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.859 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 87, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 215, i32 4 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 102, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 107, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 111, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 121, i32 4 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 129, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 136, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 139, i32 4 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 153, i32 4 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 157, i32 4 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 167, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 61, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 77, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1414, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1421, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1426, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 350, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 384, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 385, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 386, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 387, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 388, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 389, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 390, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 392, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 393, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 394, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 395, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 396, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 397, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 398, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 399, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 400, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 401, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 402, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 403, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 404, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 405, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 407, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 408, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 409, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 410, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 411, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 412, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 414, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 415, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 416, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 364, i32 3 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1388, i32 3 }
@___asan_gen_.1161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1397, i32 3 }
@___asan_gen_.1167 = private unnamed_addr constant [16 x i8] c"ar5523_channels\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1449, i32 39 }
@___asan_gen_.1170 = private unnamed_addr constant [13 x i8] c"ar5523_rates\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1434, i32 36 }
@___asan_gen_.1176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1177 = private constant [44 x i8] c"../drivers/net/wireless/ath/ar5523/ar5523.c\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1177, i32 1730, i32 2 }
@llvm.compiler.used = appending global [374 x ptr] [ptr @__UNIQUE_ID_file407, ptr @__UNIQUE_ID_firmware409, ptr @__UNIQUE_ID_license408, ptr @__exitcall_ar5523_driver_exit, ptr @__initcall__kmod_ar5523__406_1798_ar5523_driver_init6, ptr @ar5523_bss_info_changed._entry, ptr @ar5523_bss_info_changed._entry.138, ptr @ar5523_bss_info_changed._entry.141, ptr @ar5523_bss_info_changed._entry_ptr, ptr @ar5523_bss_info_changed._entry_ptr.140, ptr @ar5523_bss_info_changed._entry_ptr.143, ptr @ar5523_cmd._entry, ptr @ar5523_cmd._entry.83, ptr @ar5523_cmd._entry_ptr, ptr @ar5523_cmd._entry_ptr.85, ptr @ar5523_cmd_rx_cb._entry, ptr @ar5523_cmd_rx_cb._entry.186, ptr @ar5523_cmd_rx_cb._entry.190, ptr @ar5523_cmd_rx_cb._entry.196, ptr @ar5523_cmd_rx_cb._entry.199, ptr @ar5523_cmd_rx_cb._entry_ptr, ptr @ar5523_cmd_rx_cb._entry_ptr.188, ptr @ar5523_cmd_rx_cb._entry_ptr.192, ptr @ar5523_cmd_rx_cb._entry_ptr.198, ptr @ar5523_cmd_rx_cb._entry_ptr.201, ptr @ar5523_cmd_tx_cb._entry, ptr @ar5523_cmd_tx_cb._entry_ptr, ptr @ar5523_config._entry, ptr @ar5523_config._entry_ptr, ptr @ar5523_config_multi._entry, ptr @ar5523_config_multi._entry_ptr, ptr @ar5523_create_rateset._entry, ptr @ar5523_create_rateset._entry_ptr, ptr @ar5523_data_rx_cb._entry, ptr @ar5523_data_rx_cb._entry.173, ptr @ar5523_data_rx_cb._entry_ptr, ptr @ar5523_data_rx_cb._entry_ptr.175, ptr @ar5523_driver_exit, ptr @ar5523_flush_tx._entry, ptr @ar5523_flush_tx._entry_ptr, ptr @ar5523_get_capability._entry, ptr @ar5523_get_capability._entry_ptr, ptr @ar5523_get_devcap._entry, ptr @ar5523_get_devcap._entry.217, ptr @ar5523_get_devcap._entry.220, ptr @ar5523_get_devcap._entry.223, ptr @ar5523_get_devcap._entry.226, ptr @ar5523_get_devcap._entry.229, ptr @ar5523_get_devcap._entry.232, ptr @ar5523_get_devcap._entry.235, ptr @ar5523_get_devcap._entry.238, ptr @ar5523_get_devcap._entry.241, ptr @ar5523_get_devcap._entry.244, ptr @ar5523_get_devcap._entry.247, ptr @ar5523_get_devcap._entry.250, ptr @ar5523_get_devcap._entry.253, ptr @ar5523_get_devcap._entry.256, ptr @ar5523_get_devcap._entry.259, ptr @ar5523_get_devcap._entry.262, ptr @ar5523_get_devcap._entry.265, ptr @ar5523_get_devcap._entry.268, ptr @ar5523_get_devcap._entry.271, ptr @ar5523_get_devcap._entry.274, ptr @ar5523_get_devcap._entry.277, ptr @ar5523_get_devcap._entry.280, ptr @ar5523_get_devcap._entry.283, ptr @ar5523_get_devcap._entry.286, ptr @ar5523_get_devcap._entry.289, ptr @ar5523_get_devcap._entry.292, ptr @ar5523_get_devcap._entry.295, ptr @ar5523_get_devcap._entry.298, ptr @ar5523_get_devcap._entry.301, ptr @ar5523_get_devcap._entry_ptr, ptr @ar5523_get_devcap._entry_ptr.218, ptr @ar5523_get_devcap._entry_ptr.221, ptr @ar5523_get_devcap._entry_ptr.224, ptr @ar5523_get_devcap._entry_ptr.227, ptr @ar5523_get_devcap._entry_ptr.230, ptr @ar5523_get_devcap._entry_ptr.233, ptr @ar5523_get_devcap._entry_ptr.236, ptr @ar5523_get_devcap._entry_ptr.239, ptr @ar5523_get_devcap._entry_ptr.242, ptr @ar5523_get_devcap._entry_ptr.245, ptr @ar5523_get_devcap._entry_ptr.248, ptr @ar5523_get_devcap._entry_ptr.251, ptr @ar5523_get_devcap._entry_ptr.254, ptr @ar5523_get_devcap._entry_ptr.257, ptr @ar5523_get_devcap._entry_ptr.260, ptr @ar5523_get_devcap._entry_ptr.263, ptr @ar5523_get_devcap._entry_ptr.266, ptr @ar5523_get_devcap._entry_ptr.269, ptr @ar5523_get_devcap._entry_ptr.272, ptr @ar5523_get_devcap._entry_ptr.275, ptr @ar5523_get_devcap._entry_ptr.278, ptr @ar5523_get_devcap._entry_ptr.281, ptr @ar5523_get_devcap._entry_ptr.284, ptr @ar5523_get_devcap._entry_ptr.287, ptr @ar5523_get_devcap._entry_ptr.290, ptr @ar5523_get_devcap._entry_ptr.293, ptr @ar5523_get_devcap._entry_ptr.296, ptr @ar5523_get_devcap._entry_ptr.299, ptr @ar5523_get_devcap._entry_ptr.302, ptr @ar5523_get_devstatus._entry, ptr @ar5523_get_devstatus._entry.308, ptr @ar5523_get_devstatus._entry_ptr, ptr @ar5523_get_devstatus._entry_ptr.310, ptr @ar5523_get_max_rxsz._entry, ptr @ar5523_get_max_rxsz._entry.208, ptr @ar5523_get_max_rxsz._entry_ptr, ptr @ar5523_get_max_rxsz._entry_ptr.210, ptr @ar5523_get_status._entry, ptr @ar5523_get_status._entry_ptr, ptr @ar5523_get_wlan_mode._entry, ptr @ar5523_get_wlan_mode._entry_ptr, ptr @ar5523_load_firmware._entry, ptr @ar5523_load_firmware._entry.62, ptr @ar5523_load_firmware._entry.65, ptr @ar5523_load_firmware._entry.68, ptr @ar5523_load_firmware._entry_ptr, ptr @ar5523_load_firmware._entry_ptr.64, ptr @ar5523_load_firmware._entry_ptr.67, ptr @ar5523_load_firmware._entry_ptr.70, ptr @ar5523_probe._entry, ptr @ar5523_probe._entry.26, ptr @ar5523_probe._entry.29, ptr @ar5523_probe._entry.32, ptr @ar5523_probe._entry.35, ptr @ar5523_probe._entry.38, ptr @ar5523_probe._entry.41, ptr @ar5523_probe._entry.44, ptr @ar5523_probe._entry.46, ptr @ar5523_probe._entry.49, ptr @ar5523_probe._entry.53, ptr @ar5523_probe._entry.56, ptr @ar5523_probe._entry_ptr, ptr @ar5523_probe._entry_ptr.28, ptr @ar5523_probe._entry_ptr.31, ptr @ar5523_probe._entry_ptr.34, ptr @ar5523_probe._entry_ptr.37, ptr @ar5523_probe._entry_ptr.40, ptr @ar5523_probe._entry_ptr.43, ptr @ar5523_probe._entry_ptr.45, ptr @ar5523_probe._entry_ptr.48, ptr @ar5523_probe._entry_ptr.52, ptr @ar5523_probe._entry_ptr.55, ptr @ar5523_probe._entry_ptr.58, ptr @ar5523_read_reply._entry, ptr @ar5523_read_reply._entry_ptr, ptr @ar5523_rx_refill_work._entry, ptr @ar5523_rx_refill_work._entry.168, ptr @ar5523_rx_refill_work._entry_ptr, ptr @ar5523_rx_refill_work._entry_ptr.170, ptr @ar5523_stat_work._entry, ptr @ar5523_stat_work._entry_ptr, ptr @ar5523_submit_rx_cmd._entry, ptr @ar5523_submit_rx_cmd._entry_ptr, ptr @ar5523_switch_chan._entry, ptr @ar5523_switch_chan._entry.94, ptr @ar5523_switch_chan._entry.97, ptr @ar5523_switch_chan._entry_ptr, ptr @ar5523_switch_chan._entry_ptr.96, ptr @ar5523_switch_chan._entry_ptr.99, ptr @ar5523_tx_wd_work._entry, ptr @ar5523_tx_wd_work._entry.162, ptr @ar5523_tx_wd_work._entry_ptr, ptr @ar5523_tx_wd_work._entry_ptr.164, ptr @ar5523_tx_work_locked._entry, ptr @ar5523_tx_work_locked._entry_ptr, ptr @ar5523_driver, ptr @.str, ptr @ar5523_id_table, ptr @ar5523_ops, ptr @ar5523_probe.__key, ptr @.str.1, ptr @ar5523_probe.__key.2, ptr @.str.3, ptr @ar5523_probe.__key.4, ptr @.str.5, ptr @ar5523_probe.__key.6, ptr @.str.7, ptr @ar5523_probe.__key.8, ptr @.str.9, ptr @ar5523_probe.__key.10, ptr @.str.11, ptr @ar5523_probe.__key.12, ptr @.str.13, ptr @ar5523_probe.__key.14, ptr @.str.15, ptr @ar5523_probe.__key.16, ptr @.str.17, ptr @ar5523_probe.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @init_completion.__key, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.300, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.309, ptr @ar5523_channels, ptr @ar5523_rates, ptr @.str.311, ptr @.str.312], section "llvm.metadata"
@0 = internal global [287 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_id_table to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_load_firmware._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_load_firmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_load_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd_tx_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_config_multi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_switch_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_switch_chan._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_switch_chan._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_flush_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_tx_work_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_bss_info_changed._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_bss_info_changed._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_create_rateset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_wlan_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_stat_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_tx_wd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_tx_wd_work._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_rx_refill_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_rx_refill_work._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_data_rx_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_data_rx_cb._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_submit_rx_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd_rx_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd_rx_cb._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd_rx_cb._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd_rx_cb._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_cmd_rx_cb._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_read_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_max_rxsz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_max_rxsz._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devcap._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_get_devstatus._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar5523_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5523_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ar5523_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @ar5523_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5523_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %foolen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #8
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !579
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %foolen.i) #8
  %5 = ptrtoint ptr %foolen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %foolen.i, align 4, !annotation !579
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.59, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59) #11
  br label %ar5523_load_firmware.exit

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 512) #12
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.out.i_crit_edge, label %if.end6.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i93.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 512) #12
  %tobool8.not.i = icmp eq ptr %call7.i93.i, null
  br i1 %tobool8.not.i, label %if.end6.i.out_free_txblock.i_crit_edge, label %if.end10.i

if.end6.i.out_free_txblock.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_txblock.i

if.end10.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i94.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 2048) #12
  %tobool12.not.i = icmp eq ptr %call7.i94.i, null
  br i1 %tobool12.not.i, label %if.end10.i.out_free_rxblock.i_crit_edge, label %if.end14.i

if.end10.i.out_free_rxblock.i_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_rxblock.i

if.end14.i:                                       ; preds = %if.end10.i
  %9 = call ptr @memset(ptr %call7.i.i, i32 0, i32 512)
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %total.i = getelementptr inbounds %struct.ar5523_fwblock, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %total.i, align 8
  %16 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp106.i = icmp sgt i32 %16, 0
  br i1 %cmp106.i, label %while.body.lr.ph.i, label %if.end14.i.out_free_fwbuf.i_crit_edge

if.end14.i.out_free_fwbuf.i_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_fwbuf.i

while.body.lr.ph.i:                               ; preds = %if.end14.i
  %remain.i = getelementptr inbounds %struct.ar5523_fwblock, ptr %call7.i.i, i32 0, i32 3
  %len17.i = getelementptr inbounds %struct.ar5523_fwblock, ptr %call7.i.i, i32 0, i32 1
  br label %while.body.i

while.cond.i:                                     ; preds = %if.end36.i
  %add.i = add i32 %17, %offset.0108.i
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.out_free_fwbuf.i_crit_edge

while.cond.i.out_free_fwbuf.i_crit_edge:          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_fwbuf.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %offset.0108.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %while.cond.i.while.body.i_crit_edge ]
  %len.0107.i = phi i32 [ %16, %while.body.lr.ph.i ], [ %sub.i, %while.cond.i.while.body.i_crit_edge ]
  %17 = call i32 @llvm.umin.i32(i32 %len.0107.i, i32 2048) #8
  %sub.i = sub nsw i32 %len.0107.i, %17
  %18 = ptrtoint ptr %remain.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %remain.i, align 4
  %19 = ptrtoint ptr %len17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %len17.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %call19.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, ptr noundef nonnull %call7.i.i, i32 noundef 512, ptr noundef nonnull %foolen.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end26.i, label %while.body.i.out_free_fwbuf.sink.split.i_crit_edge

while.body.i.out_free_fwbuf.sink.split.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_fwbuf.sink.split.i

if.end26.i:                                       ; preds = %while.body.i
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i392 = getelementptr i8, ptr %25, i32 %offset.0108.i
  %26 = call ptr @memcpy(ptr %call7.i94.i, ptr %add.ptr.i392, i32 %17)
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 8
  %shl.i95.i = shl i32 %28, 8
  %or28.i = or i32 %shl.i95.i, -1073676288
  %call29.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or28.i, ptr noundef nonnull %call7.i94.i, i32 noundef %17, ptr noundef nonnull %foolen.i, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %if.end26.i.out_free_fwbuf.sink.split.i_crit_edge

if.end26.i.out_free_fwbuf.sink.split.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_fwbuf.sink.split.i

if.end36.i:                                       ; preds = %if.end26.i
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 8
  %shl.i97.i = shl i32 %30, 8
  %or39.i = or i32 %shl.i97.i, -1069514624
  %call40.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or39.i, ptr noundef nonnull %call7.i93.i, i32 noundef 512, ptr noundef nonnull %foolen.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %while.cond.i, label %if.end36.i.out_free_fwbuf.sink.split.i_crit_edge

if.end36.i.out_free_fwbuf.sink.split.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_fwbuf.sink.split.i

out_free_fwbuf.sink.split.i:                      ; preds = %if.end36.i.out_free_fwbuf.sink.split.i_crit_edge, %if.end26.i.out_free_fwbuf.sink.split.i_crit_edge, %while.body.i.out_free_fwbuf.sink.split.i_crit_edge
  %.str.69.sink.i = phi ptr [ @.str.63, %while.body.i.out_free_fwbuf.sink.split.i_crit_edge ], [ @.str.66, %if.end26.i.out_free_fwbuf.sink.split.i_crit_edge ], [ @.str.69, %if.end36.i.out_free_fwbuf.sink.split.i_crit_edge ]
  %error.1.ph.i = phi i32 [ %call19.i, %while.body.i.out_free_fwbuf.sink.split.i_crit_edge ], [ %call29.i, %if.end26.i.out_free_fwbuf.sink.split.i_crit_edge ], [ %call40.i, %if.end36.i.out_free_fwbuf.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.69.sink.i) #11
  br label %out_free_fwbuf.i

out_free_fwbuf.i:                                 ; preds = %out_free_fwbuf.sink.split.i, %while.cond.i.out_free_fwbuf.i_crit_edge, %if.end14.i.out_free_fwbuf.i_crit_edge
  %error.1.i = phi i32 [ -6, %if.end14.i.out_free_fwbuf.i_crit_edge ], [ %error.1.ph.i, %out_free_fwbuf.sink.split.i ], [ -6, %while.cond.i.out_free_fwbuf.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i94.i) #8
  br label %out_free_rxblock.i

out_free_rxblock.i:                               ; preds = %out_free_fwbuf.i, %if.end10.i.out_free_rxblock.i_crit_edge
  %error.2.i = phi i32 [ %error.1.i, %out_free_fwbuf.i ], [ -6, %if.end10.i.out_free_rxblock.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i93.i) #8
  br label %out_free_txblock.i

out_free_txblock.i:                               ; preds = %out_free_rxblock.i, %if.end6.i.out_free_txblock.i_crit_edge
  %error.3.i = phi i32 [ %error.2.i, %out_free_rxblock.i ], [ -6, %if.end6.i.out_free_txblock.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out.i

out.i:                                            ; preds = %out_free_txblock.i, %if.end.i.out.i_crit_edge
  %error.4.i = phi i32 [ %error.3.i, %out_free_txblock.i ], [ -6, %if.end.i.out.i_crit_edge ]
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %32) #8
  br label %ar5523_load_firmware.exit

ar5523_load_firmware.exit:                        ; preds = %out.i, %do.end.i
  %retval.0.i = phi i32 [ -2, %do.end.i ], [ %error.4.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %foolen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i393 = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 2028, ptr noundef nonnull @ar5523_ops, ptr noundef null) #8
  %tobool3.not = icmp eq ptr %call.i393, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i393, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56, i32 1
  %35 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev6, ptr %parent.i.i, align 8
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i393, i32 0, i32 3
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %hw7 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %hw7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i393, ptr %hw7, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i, ptr %37, align 4
  %mutex = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @ar5523_probe.__key) #8
  %stat_work = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 6
  tail call void @__init_work(ptr noundef %stat_work, i32 noundef 0) #8
  %40 = ptrtoint ptr %stat_work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %stat_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @ar5523_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry17 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 6, i32 0, i32 1
  %41 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 6, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 6, i32 0, i32 2
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ar5523_stat_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @ar5523_probe.__key.4) #8
  %tx_wd_timer = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %tx_wd_timer, ptr noundef nonnull @ar5523_tx_wd_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @ar5523_probe.__key.6) #8
  %tx_wd_work = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 8
  tail call void @__init_work(ptr noundef %tx_wd_work, i32 noundef 0) #8
  %44 = ptrtoint ptr %tx_wd_work to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %tx_wd_work, align 4
  %lockdep_map37 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map37, ptr noundef nonnull @.str.9, ptr noundef nonnull @ar5523_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry39 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i394 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 8, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i394 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry39, ptr %prev.i394, align 4
  %func41 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ar5523_tx_wd_work, ptr %func41, align 4
  %tx_work = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 9
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #8
  %48 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map50 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map50, ptr noundef nonnull @.str.11, ptr noundef nonnull @ar5523_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry52 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry52, ptr %entry52, align 4
  %prev.i395 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 9, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i395 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry52, ptr %prev.i395, align 4
  %func54 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 9, i32 2
  %51 = ptrtoint ptr %func54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ar5523_tx_work, ptr %func54, align 4
  %tx_queue_pending = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 10
  %52 = ptrtoint ptr %tx_queue_pending to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %tx_queue_pending, ptr %tx_queue_pending, align 4
  %prev.i396 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %prev.i396 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %tx_queue_pending, ptr %prev.i396, align 4
  %tx_queue_submitted = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 11
  %54 = ptrtoint ptr %tx_queue_submitted to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %tx_queue_submitted, ptr %tx_queue_submitted, align 4
  %prev.i397 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 11, i32 1
  %55 = ptrtoint ptr %prev.i397 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tx_queue_submitted, ptr %prev.i397, align 4
  %tx_data_list_lock = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %tx_data_list_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ar5523_probe.__key.12, i16 noundef signext 3) #8
  %tx_nr_total = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_total, i32 noundef 4) #8
  %56 = ptrtoint ptr %tx_nr_total to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %tx_nr_total, align 4
  %tx_nr_pending = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 15
  %call.i.i372 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %57 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %tx_nr_pending, align 4
  %tx_flush_waitq = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %tx_flush_waitq, ptr noundef nonnull @.str.15, ptr noundef nonnull @ar5523_probe.__key.14) #8
  %rx_data_free_cnt = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 22
  %call.i.i373 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_free_cnt, i32 noundef 4) #8
  %58 = ptrtoint ptr %rx_data_free_cnt to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %rx_data_free_cnt, align 4
  %rx_refill_work = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 23
  tail call void @__init_work(ptr noundef %rx_refill_work, i32 noundef 0) #8
  %59 = ptrtoint ptr %rx_refill_work to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -64, ptr %rx_refill_work, align 4
  %lockdep_map70 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.17, ptr noundef nonnull @ar5523_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry72 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 23, i32 1
  %60 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i398 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 23, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i398 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %entry72, ptr %prev.i398, align 4
  %func74 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 23, i32 2
  %62 = ptrtoint ptr %func74 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ar5523_rx_refill_work, ptr %func74, align 4
  %rx_data_free = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 20
  %63 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %rx_data_free, ptr %rx_data_free, align 4
  %prev.i399 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 20, i32 1
  %64 = ptrtoint ptr %prev.i399 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rx_data_free, ptr %prev.i399, align 4
  %rx_data_used = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 21
  %65 = ptrtoint ptr %rx_data_used to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %rx_data_used, ptr %rx_data_used, align 4
  %prev.i400 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 21, i32 1
  %66 = ptrtoint ptr %prev.i400 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %rx_data_used, ptr %prev.i400, align 4
  %rx_data_list_lock = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %rx_data_list_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @ar5523_probe.__key.18, i16 noundef signext 3) #8
  %call81 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.20, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str) #8
  %wq = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 4
  %67 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call81, ptr %wq, align 4
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %do.body85, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

do.body85:                                        ; preds = %if.end5
  %flags = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags, align 4
  %70 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool87.not = icmp eq i32 %70, 0
  br i1 %tobool87.not, label %do.end91, label %do.body85.out_free_ar_crit_edge

do.body85.out_free_ar_crit_edge:                  ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ar

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %37, align 4
  %dev93 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.21) #11
  br label %out_free_ar

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %ar1.i = getelementptr %struct.ar5523, ptr %37, i32 0, i32 18, i32 %i.016.i, i32 1
  %73 = ptrtoint ptr %ar1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %37, ptr %ar1.i, align 4
  %call.i401 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %urb.i = getelementptr %struct.ar5523, ptr %37, i32 0, i32 18, i32 %i.016.i, i32 2
  %74 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i401, ptr %urb.i, align 4
  %tobool.not.i402 = icmp eq ptr %call.i401, null
  br i1 %tobool.not.i402, label %err.i, label %if.end.i403

if.end.i403:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ar5523, ptr %37, i32 0, i32 18, i32 %i.016.i
  %75 = ptrtoint ptr %prev.i399 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i399, align 4
  %call.i.i13.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %76, ptr noundef %rx_data_free) #8
  br i1 %call.i.i13.i, label %if.end.i.i.i, label %if.end.i403.for.inc.i_crit_edge

if.end.i403.for.inc.i_crit_edge:                  ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %prev.i399 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx.i, ptr %prev.i399, align 4
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rx_data_free, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %arrayidx.i, ptr %76, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.end.i403.for.inc.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_free_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rx_data_free_cnt, i32 1, i32 3, i32 1) #8
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_free_cnt, ptr %rx_data_free_cnt, i32 1, ptr elementtype(i32) %rx_data_free_cnt) #8, !srcloc !580
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end114, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

err.i:                                            ; preds = %for.body.i
  tail call fastcc void @ar5523_cancel_rx_bufs(ptr noundef %37) #8
  %82 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %rx_data_free, align 4
  %cmp.i.not5.i.i = icmp eq ptr %83, %rx_data_free
  br i1 %cmp.i.not5.i.i, label %err.i.do.body101_crit_edge, label %err.i.while.body.i.i_crit_edge

err.i.while.body.i.i_crit_edge:                   ; preds = %err.i
  br label %while.body.i.i

err.i.do.body101_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body101

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %err.i.while.body.i.i_crit_edge
  %84 = phi ptr [ %96, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %83, %err.i.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i.i, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %urb.i.i = getelementptr inbounds %struct.ar5523_rx_data, ptr %84, i32 0, i32 2
  %93 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %94) #8
  %95 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %rx_data_free, align 4
  %cmp.i.not.i.i = icmp eq ptr %96, %rx_data_free
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.do.body101_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

list_del.exit.i.i.do.body101_crit_edge:           ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body101

do.body101:                                       ; preds = %list_del.exit.i.i.do.body101_crit_edge, %err.i.do.body101_crit_edge
  %flags102 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %97 = ptrtoint ptr %flags102 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flags102, align 4
  %99 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool104.not = icmp eq i32 %99, 0
  br i1 %tobool104.not, label %do.end108, label %do.body101.out_free_wq_crit_edge

do.body101.out_free_wq_crit_edge:                 ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_wq

do.end108:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %37, align 4
  %dev110 = getelementptr inbounds %struct.usb_device, ptr %101, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.27) #11
  br label %out_free_wq

if.end114:                                        ; preds = %for.inc.i
  %call.i405 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %rx_cmd_urb.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 17
  %102 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i405, ptr %rx_cmd_urb.i, align 4
  %tobool.not.i406 = icmp eq ptr %call.i405, null
  br i1 %tobool.not.i406, label %if.end114.do.body118_crit_edge, label %if.end.i407

if.end114.do.body118_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

if.end.i407:                                      ; preds = %if.end114
  %103 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %37, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i405, i32 0, i32 15
  %call3.i = tail call ptr @usb_alloc_coherent(ptr noundef %104, i32 noundef 1024, i32 noundef 3264, ptr noundef %transfer_dma.i) #8
  %rx_cmd_buf.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 16
  %105 = ptrtoint ptr %rx_cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call3.i, ptr %rx_cmd_buf.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end131

if.then6.i:                                       ; preds = %if.end.i407
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx_cmd_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %107) #8
  br label %do.body118

do.body118:                                       ; preds = %if.then6.i, %if.end114.do.body118_crit_edge
  %flags119 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %108 = ptrtoint ptr %flags119 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags119, align 4
  %110 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool121.not = icmp eq i32 %110, 0
  br i1 %tobool121.not, label %do.end125, label %do.body118.out_free_rx_bufs_crit_edge

do.body118.out_free_rx_bufs_crit_edge:            ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_rx_bufs

do.end125:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %37, align 4
  %dev127 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.30) #11
  br label %out_free_rx_bufs

if.end131:                                        ; preds = %if.end.i407
  %tx_cmd.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 5
  %113 = ptrtoint ptr %tx_cmd.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %37, ptr %tx_cmd.i, align 4
  %done.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 5, i32 7
  %114 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 5, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.181, ptr noundef nonnull @init_completion.__key) #8
  %call.i409 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %urb_tx.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 5, i32 1
  %115 = ptrtoint ptr %urb_tx.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i409, ptr %urb_tx.i, align 4
  %tobool.not.i410 = icmp eq ptr %call.i409, null
  br i1 %tobool.not.i410, label %if.end131.do.body135_crit_edge, label %if.end.i412

if.end131.do.body135_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135

if.end.i412:                                      ; preds = %if.end131
  %116 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %37, align 4
  %transfer_dma.i411 = getelementptr inbounds %struct.urb, ptr %call.i409, i32 0, i32 15
  %call4.i = tail call ptr @usb_alloc_coherent(ptr noundef %117, i32 noundef 1024, i32 noundef 3264, ptr noundef %transfer_dma.i411) #8
  %buf_tx.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 5, i32 2
  %118 = ptrtoint ptr %buf_tx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call4.i, ptr %buf_tx.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end148

if.then7.i:                                       ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %urb_tx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %urb_tx.i, align 4
  tail call void @usb_free_urb(ptr noundef %120) #8
  br label %do.body135

do.body135:                                       ; preds = %if.then7.i, %if.end131.do.body135_crit_edge
  %flags136 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %121 = ptrtoint ptr %flags136 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %flags136, align 4
  %123 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool138.not = icmp eq i32 %123, 0
  br i1 %tobool138.not, label %do.end142, label %do.body135.out_free_rx_cmd_crit_edge

do.body135.out_free_rx_cmd_crit_edge:             ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_rx_cmd

do.end142:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %37, align 4
  %dev144 = getelementptr inbounds %struct.usb_device, ptr %125, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev144, ptr noundef nonnull @.str.33) #11
  br label %out_free_rx_cmd

if.end148:                                        ; preds = %if.end.i412
  %call149 = tail call fastcc i32 @ar5523_submit_rx_cmd(ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end165, label %do.body152

do.body152:                                       ; preds = %if.end148
  %flags153 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %126 = ptrtoint ptr %flags153 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %flags153, align 4
  %128 = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool155.not = icmp eq i32 %128, 0
  br i1 %tobool155.not, label %do.end159, label %do.body152.out_free_tx_cmd_crit_edge

do.body152.out_free_tx_cmd_crit_edge:             ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_tx_cmd

do.end159:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %37, align 4
  %dev161 = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev161, ptr noundef nonnull @.str.36) #11
  br label %out_free_tx_cmd

if.end165:                                        ; preds = %if.end148
  %call166 = tail call fastcc i32 @ar5523_host_available(ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end182, label %do.body169

do.body169:                                       ; preds = %if.end165
  %flags170 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %131 = ptrtoint ptr %flags170 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %flags170, align 4
  %133 = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool172.not = icmp eq i32 %133, 0
  br i1 %tobool172.not, label %do.body169.out_cancel_rx_cmd.sink.split_crit_edge, label %do.body169.out_cancel_rx_cmd_crit_edge

do.body169.out_cancel_rx_cmd_crit_edge:           ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd

do.body169.out_cancel_rx_cmd.sink.split_crit_edge: ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd.sink.split

if.end182:                                        ; preds = %if.end165
  %call183 = tail call fastcc i32 @ar5523_get_max_rxsz(ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end199, label %do.body186

do.body186:                                       ; preds = %if.end182
  %flags187 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %134 = ptrtoint ptr %flags187 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flags187, align 4
  %136 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool189.not = icmp eq i32 %136, 0
  br i1 %tobool189.not, label %do.body186.out_cancel_rx_cmd.sink.split_crit_edge, label %do.body186.out_cancel_rx_cmd_crit_edge

do.body186.out_cancel_rx_cmd_crit_edge:           ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd

do.body186.out_cancel_rx_cmd.sink.split_crit_edge: ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd.sink.split

if.end199:                                        ; preds = %if.end182
  %call200 = tail call fastcc i32 @ar5523_get_devcap(ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end216, label %do.body203

do.body203:                                       ; preds = %if.end199
  %flags204 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %137 = ptrtoint ptr %flags204 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %flags204, align 4
  %139 = and i32 %138, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool206.not = icmp eq i32 %139, 0
  br i1 %tobool206.not, label %do.body203.out_cancel_rx_cmd.sink.split_crit_edge, label %do.body203.out_cancel_rx_cmd_crit_edge

do.body203.out_cancel_rx_cmd_crit_edge:           ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd

do.body203.out_cancel_rx_cmd.sink.split_crit_edge: ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd.sink.split

if.end216:                                        ; preds = %if.end199
  %call217 = tail call fastcc i32 @ar5523_get_devstatus(ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp.not = icmp eq i32 %call217, 0
  br i1 %cmp.not, label %do.end235, label %do.body219

do.body219:                                       ; preds = %if.end216
  %flags220 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %140 = ptrtoint ptr %flags220 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %flags220, align 4
  %142 = and i32 %141, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool222.not = icmp eq i32 %142, 0
  br i1 %tobool222.not, label %do.body219.out_cancel_rx_cmd.sink.split_crit_edge, label %do.body219.out_cancel_rx_cmd_crit_edge

do.body219.out_cancel_rx_cmd_crit_edge:           ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd

do.body219.out_cancel_rx_cmd.sink.split_crit_edge: ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd.sink.split

do.end235:                                        ; preds = %if.end216
  %143 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %37, align 4
  %dev237 = getelementptr inbounds %struct.usb_device, ptr %144, i32 0, i32 15
  %145 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %driver_info, align 4
  %and239 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  %cond = select i1 %tobool240.not, i32 50, i32 53
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev237, ptr noundef nonnull @.str.50, i32 noundef %cond) #11
  %vif = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 29
  %147 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %vif, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i393, i32 0, i32 4
  %148 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i, align 4
  %or.i.i417 = or i32 %149, 19
  store i32 %or.i.i417, ptr %flags.i, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i393, i32 0, i32 5
  %150 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 32, ptr %extra_tx_headroom, align 4
  %151 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %wiphy.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %152, i32 0, i32 9
  %153 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 4, ptr %interface_modes, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i393, i32 0, i32 11
  %154 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1, ptr %queues, align 4
  %channels.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 26
  %155 = call ptr @memcpy(ptr %channels.i, ptr @ar5523_channels, i32 784)
  %rates.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 27
  %156 = call ptr @memcpy(ptr %rates.i, ptr @ar5523_rates, i32 144)
  %band.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 28
  %band4.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 28, i32 2
  %157 = ptrtoint ptr %band4.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %band4.i, align 4
  %158 = ptrtoint ptr %band.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %channels.i, ptr %band.i, align 4
  %n_channels.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 28, i32 3
  %159 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 14, ptr %n_channels.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 28, i32 1
  %160 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %rates.i, ptr %bitrates.i, align 4
  %n_bitrates.i = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 28, i32 4
  %161 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 12, ptr %n_bitrates.i, align 4
  %162 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw7, align 4
  %wiphy.i418 = getelementptr inbounds %struct.ieee80211_hw, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %wiphy.i418 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wiphy.i418, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %165, i32 0, i32 53
  %166 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %band.i, ptr %bands.i, align 16
  %167 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i419 = getelementptr %struct.wiphy, ptr %167, i32 0, i32 14, i32 1
  %168 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i419, align 1
  %170 = or i8 %169, 32
  store i8 %170, ptr %arrayidx.i419, align 1
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %171 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call.i393, ptr %driver_data.i.i, align 4
  %call246 = tail call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i393) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %do.end265, label %do.body249

do.body249:                                       ; preds = %do.end235
  %flags250 = getelementptr inbounds %struct.ar5523, ptr %37, i32 0, i32 2
  %172 = ptrtoint ptr %flags250 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %flags250, align 4
  %174 = and i32 %173, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool252.not = icmp eq i32 %174, 0
  br i1 %tobool252.not, label %do.body249.out_cancel_rx_cmd.sink.split_crit_edge, label %do.body249.out_cancel_rx_cmd_crit_edge

do.body249.out_cancel_rx_cmd_crit_edge:           ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd

do.body249.out_cancel_rx_cmd.sink.split_crit_edge: ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel_rx_cmd.sink.split

do.end265:                                        ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %37, align 4
  %dev267 = getelementptr inbounds %struct.usb_device, ptr %176, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev267, ptr noundef nonnull @.str.57) #11
  br label %cleanup

out_cancel_rx_cmd.sink.split:                     ; preds = %do.body249.out_cancel_rx_cmd.sink.split_crit_edge, %do.body219.out_cancel_rx_cmd.sink.split_crit_edge, %do.body203.out_cancel_rx_cmd.sink.split_crit_edge, %do.body186.out_cancel_rx_cmd.sink.split_crit_edge, %do.body169.out_cancel_rx_cmd.sink.split_crit_edge
  %.str.54.sink = phi ptr [ @.str.39, %do.body169.out_cancel_rx_cmd.sink.split_crit_edge ], [ @.str.42, %do.body186.out_cancel_rx_cmd.sink.split_crit_edge ], [ @.str.42, %do.body203.out_cancel_rx_cmd.sink.split_crit_edge ], [ @.str.47, %do.body219.out_cancel_rx_cmd.sink.split_crit_edge ], [ @.str.54, %do.body249.out_cancel_rx_cmd.sink.split_crit_edge ]
  %error.0.ph = phi i32 [ %call166, %do.body169.out_cancel_rx_cmd.sink.split_crit_edge ], [ %call183, %do.body186.out_cancel_rx_cmd.sink.split_crit_edge ], [ %call200, %do.body203.out_cancel_rx_cmd.sink.split_crit_edge ], [ %call217, %do.body219.out_cancel_rx_cmd.sink.split_crit_edge ], [ %call246, %do.body249.out_cancel_rx_cmd.sink.split_crit_edge ]
  %177 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %37, align 4
  %dev258 = getelementptr inbounds %struct.usb_device, ptr %178, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev258, ptr noundef nonnull %.str.54.sink) #11
  br label %out_cancel_rx_cmd

out_cancel_rx_cmd:                                ; preds = %out_cancel_rx_cmd.sink.split, %do.body249.out_cancel_rx_cmd_crit_edge, %do.body219.out_cancel_rx_cmd_crit_edge, %do.body203.out_cancel_rx_cmd_crit_edge, %do.body186.out_cancel_rx_cmd_crit_edge, %do.body169.out_cancel_rx_cmd_crit_edge
  %error.0 = phi i32 [ %call166, %do.body169.out_cancel_rx_cmd_crit_edge ], [ %call183, %do.body186.out_cancel_rx_cmd_crit_edge ], [ %call200, %do.body203.out_cancel_rx_cmd_crit_edge ], [ %call217, %do.body219.out_cancel_rx_cmd_crit_edge ], [ %call246, %do.body249.out_cancel_rx_cmd_crit_edge ], [ %error.0.ph, %out_cancel_rx_cmd.sink.split ]
  %179 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rx_cmd_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %180) #8
  br label %out_free_tx_cmd

out_free_tx_cmd:                                  ; preds = %out_cancel_rx_cmd, %do.end159, %do.body152.out_free_tx_cmd_crit_edge
  %error.1 = phi i32 [ %call149, %do.body152.out_free_tx_cmd_crit_edge ], [ %call149, %do.end159 ], [ %error.0, %out_cancel_rx_cmd ]
  tail call fastcc void @ar5523_free_tx_cmd(ptr noundef %37)
  br label %out_free_rx_cmd

out_free_rx_cmd:                                  ; preds = %out_free_tx_cmd, %do.end142, %do.body135.out_free_rx_cmd_crit_edge
  %error.2 = phi i32 [ -12, %do.body135.out_free_rx_cmd_crit_edge ], [ -12, %do.end142 ], [ %error.1, %out_free_tx_cmd ]
  %181 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %37, align 4
  %183 = ptrtoint ptr %rx_cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rx_cmd_buf.i, align 4
  %185 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rx_cmd_urb.i, align 4
  %transfer_dma.i423 = getelementptr inbounds %struct.urb, ptr %186, i32 0, i32 15
  %187 = ptrtoint ptr %transfer_dma.i423 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %transfer_dma.i423, align 4
  tail call void @usb_free_coherent(ptr noundef %182, i32 noundef 1024, ptr noundef %184, i32 noundef %188) #8
  %189 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rx_cmd_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %190) #8
  br label %out_free_rx_bufs

out_free_rx_bufs:                                 ; preds = %out_free_rx_cmd, %do.end125, %do.body118.out_free_rx_bufs_crit_edge
  %error.3 = phi i32 [ -12, %do.body118.out_free_rx_bufs_crit_edge ], [ -12, %do.end125 ], [ %error.2, %out_free_rx_cmd ]
  tail call fastcc void @ar5523_cancel_rx_bufs(ptr noundef %37) #8
  %191 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile ptr, ptr %rx_data_free, align 4
  %cmp.i.not5.i = icmp eq ptr %192, %rx_data_free
  br i1 %cmp.i.not5.i, label %out_free_rx_bufs.out_free_wq_crit_edge, label %out_free_rx_bufs.while.body.i426_crit_edge

out_free_rx_bufs.while.body.i426_crit_edge:       ; preds = %out_free_rx_bufs
  br label %while.body.i426

out_free_rx_bufs.out_free_wq_crit_edge:           ; preds = %out_free_rx_bufs
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_wq

while.body.i426:                                  ; preds = %list_del.exit.i.while.body.i426_crit_edge, %out_free_rx_bufs.while.body.i426_crit_edge
  %193 = phi ptr [ %205, %list_del.exit.i.while.body.i426_crit_edge ], [ %192, %out_free_rx_bufs.while.body.i426_crit_edge ]
  %call.i.i.i425 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %193) #8
  br i1 %call.i.i.i425, label %if.end.i.i.i428, label %while.body.i426.list_del.exit.i_crit_edge

while.body.i426.list_del.exit.i_crit_edge:        ; preds = %while.body.i426
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i428:                                  ; preds = %while.body.i426
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i427 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %prev.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %prev.i.i.i427, align 4
  %196 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %193, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %195, ptr %prev1.i.i.i.i, align 4
  %199 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %197, ptr %195, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i428, %while.body.i426.list_del.exit.i_crit_edge
  %200 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr inttoptr (i32 256 to ptr), ptr %193, align 4
  %prev.i.i429 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  %201 = ptrtoint ptr %prev.i.i429 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i429, align 4
  %urb.i430 = getelementptr inbounds %struct.ar5523_rx_data, ptr %193, i32 0, i32 2
  %202 = ptrtoint ptr %urb.i430 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %urb.i430, align 4
  tail call void @usb_free_urb(ptr noundef %203) #8
  %204 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile ptr, ptr %rx_data_free, align 4
  %cmp.i.not.i = icmp eq ptr %205, %rx_data_free
  br i1 %cmp.i.not.i, label %list_del.exit.i.out_free_wq_crit_edge, label %list_del.exit.i.while.body.i426_crit_edge

list_del.exit.i.while.body.i426_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i426

list_del.exit.i.out_free_wq_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_wq

out_free_wq:                                      ; preds = %list_del.exit.i.out_free_wq_crit_edge, %out_free_rx_bufs.out_free_wq_crit_edge, %do.end108, %do.body101.out_free_wq_crit_edge
  %error.4 = phi i32 [ -12, %do.body101.out_free_wq_crit_edge ], [ -12, %do.end108 ], [ %error.3, %out_free_rx_bufs.out_free_wq_crit_edge ], [ %error.3, %list_del.exit.i.out_free_wq_crit_edge ]
  %206 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %207) #8
  br label %out_free_ar

out_free_ar:                                      ; preds = %out_free_wq, %do.end91, %do.body85.out_free_ar_crit_edge
  %error.5 = phi i32 [ %error.4, %out_free_wq ], [ -12, %do.body85.out_free_ar_crit_edge ], [ -12, %do.end91 ]
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i393) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_ar, %do.end265, %if.end.cleanup_crit_edge, %ar5523_load_firmware.exit
  %retval.0 = phi i32 [ %retval.0.i, %ar5523_load_firmware.exit ], [ 0, %do.end265 ], [ %error.5, %out_free_ar ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_disconnect.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_disconnect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_disconnect.__UNIQUE_ID_ddebug405, ptr noundef %dev4, ptr noundef nonnull @.str.312) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #8
  %rx_cmd_urb.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_cmd_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %buf_tx.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %buf_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf_tx.i, align 4
  %urb_tx.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %urb_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb_tx.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 1024, ptr noundef %11, i32 noundef %15) #8
  %16 = ptrtoint ptr %urb_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb_tx.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %rx_cmd_buf.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 16
  %20 = ptrtoint ptr %rx_cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_cmd_buf.i, align 4
  %22 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_cmd_urb.i, align 4
  %transfer_dma.i15 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %transfer_dma.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transfer_dma.i15, align 4
  tail call void @usb_free_coherent(ptr noundef %19, i32 noundef 1024, ptr noundef %21, i32 noundef %25) #8
  %26 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_cmd_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %27) #8
  tail call fastcc void @ar5523_cancel_rx_bufs(ptr noundef %3) #8
  %rx_data_free.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 20
  %28 = ptrtoint ptr %rx_data_free.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rx_data_free.i, align 4
  %cmp.i.not5.i = icmp eq ptr %29, %rx_data_free.i
  br i1 %cmp.i.not5.i, label %do.end.ar5523_free_rx_bufs.exit_crit_edge, label %do.end.while.body.i_crit_edge

do.end.while.body.i_crit_edge:                    ; preds = %do.end
  br label %while.body.i

do.end.ar5523_free_rx_bufs.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_free_rx_bufs.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.end.while.body.i_crit_edge
  %30 = phi ptr [ %42, %list_del.exit.i.while.body.i_crit_edge ], [ %29, %do.end.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %urb.i = getelementptr inbounds %struct.ar5523_rx_data, ptr %30, i32 0, i32 2
  %39 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %40) #8
  %41 = ptrtoint ptr %rx_data_free.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %rx_data_free.i, align 4
  %cmp.i.not.i = icmp eq ptr %42, %rx_data_free.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.ar5523_free_rx_bufs.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del.exit.i.ar5523_free_rx_bufs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_free_rx_bufs.exit

ar5523_free_rx_bufs.exit:                         ; preds = %list_del.exit.i.ar5523_free_rx_bufs.exit_crit_edge, %do.end.ar5523_free_rx_bufs.exit_crit_edge
  %wq = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %44) #8
  tail call void @ieee80211_free_hw(ptr noundef %1) #8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_stat_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_stat_work.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_stat_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_stat_work.__UNIQUE_ID_ddebug383, ptr noundef %dev4, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.156) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr i8, ptr %work, i32 -180
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @ar5523_cmd(ptr noundef %add.ptr, i32 noundef 7, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %do.end.if.end20_crit_edge, label %do.body8

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body8:                                         ; preds = %do.end
  %flags = getelementptr i8, ptr %work, i32 -184
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %do.end14, label %do.body8.if.end20_crit_edge

do.body8.if.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %dev16 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.157, i32 noundef %call.i) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %do.body8.if.end20_crit_edge, %do.end.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %hw = getelementptr i8, ptr %work, i32 -188
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %8, ptr noundef %work, i32 noundef 100) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_tx_wd_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx_wd_timer.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx_wd_timer, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %t, i32 -292
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx_wd_timer.__UNIQUE_ID_ddebug382, ptr noundef %dev4, ptr noundef nonnull @.str.159) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr i8, ptr %t, i32 -288
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %tx_wd_work = getelementptr i8, ptr %t, i32 48
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %tx_wd_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_tx_wd_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -340
  %mutex = getelementptr i8, ptr %work, i32 -328
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %flags = getelementptr i8, ptr %work, i32 -332
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %tx_nr_total = getelementptr i8, ptr %work, i32 200
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_total, i32 noundef 4) #8
  %5 = ptrtoint ptr %tx_nr_total to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %tx_nr_total, align 4
  %tx_nr_pending = getelementptr i8, ptr %work, i32 204
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %7 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tx_nr_pending, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.160, i32 noundef %6, i32 noundef %8) #11
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %do.end14, label %do.body7.do.end19_crit_edge

do.body7.do.end19_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end14:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev16 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.163) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body7.do.end19_crit_edge
  %call.i = tail call fastcc i32 @ar5523_cmd(ptr noundef %add.ptr, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_tx_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -384
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx_work.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx_work.__UNIQUE_ID_ddebug381, ptr noundef %dev4, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.165) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr i8, ptr %work, i32 -372
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call fastcc void @ar5523_tx_work_locked(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_rx_refill_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -940
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_rx_refill_work.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_rx_refill_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_rx_refill_work.__UNIQUE_ID_ddebug371, ptr noundef %dev4, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.166) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_data_list_lock = getelementptr i8, ptr %work, i32 -64
  %rx_data_free = getelementptr i8, ptr %work, i32 -20
  %rxbufsz = getelementptr i8, ptr %work, i32 44
  %rx_data_used = getelementptr i8, ptr %work, i32 -12
  %rx_data_free_cnt = getelementptr i8, ptr %work, i32 -4
  br label %do.body5

do.body5:                                         ; preds = %list_move.exit.do.body5_crit_edge, %do.end
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_data_list_lock) #8
  %2 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_data_free, align 4
  %cmp.i.not = icmp eq ptr %3, %rx_data_free
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_data_list_lock, i32 noundef %call10) #8
  %tobool21.not = icmp eq ptr %3, null
  %or.cond = or i1 %cmp.i.not, %tobool21.not
  br i1 %or.cond, label %do.body5.cleanup_crit_edge, label %if.end23

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %do.body5
  %4 = ptrtoint ptr %rxbufsz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxbufsz, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %5, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %skb = getelementptr inbounds %struct.ar5523_rx_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %skb, align 4
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %do.body28, label %if.end41

do.body28:                                        ; preds = %if.end23
  %flags29 = getelementptr i8, ptr %work, i32 -932
  %7 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags29, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool31.not = icmp eq i32 %9, 0
  br i1 %tobool31.not, label %do.end35, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.167) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end23
  %urb = getelementptr inbounds %struct.ar5523_rx_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i = shl i32 %17, 8
  %or45 = or i32 %shl.i, -1069481856
  %data47 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data47, align 4
  %20 = ptrtoint ptr %rxbufsz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxbufsz, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or45, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ar5523_data_rx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %context4.i, align 4
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_data_list_lock) #8
  %call.i.i126 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %3) #8
  br i1 %call.i.i126, label %if.end.i.i, label %if.end41.__list_del_entry.exit.i_crit_edge

if.end41.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end41.__list_del_entry.exit.i_crit_edge
  %34 = ptrtoint ptr %rx_data_used to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_data_used, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %rx_data_used, ptr noundef %35) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %prev1.i.i2.i, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rx_data_used, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %rx_data_used to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %3, ptr %rx_data_used, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_data_list_lock, i32 noundef %call58) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_free_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rx_data_free_cnt, i32 1, i32 3, i32 1) #8
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_free_cnt, ptr %rx_data_free_cnt, i32 1, ptr elementtype(i32) %rx_data_free_cnt) #8, !srcloc !582
  %41 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb, align 4
  %call65 = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 3264) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %list_move.exit.do.body5_crit_edge, label %if.then67

list_move.exit.do.body5_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

if.then67:                                        ; preds = %list_move.exit
  %skb.le = getelementptr inbounds %struct.ar5523_rx_data, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %skb.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb.le, align 4
  tail call void @kfree_skb_reason(ptr noundef %44, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call65)
  %cmp69.not = icmp eq i32 %call65, -19
  br i1 %cmp69.not, label %if.then67.if.end85_crit_edge, label %do.body72

if.then67.if.end85_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.body72:                                        ; preds = %if.then67
  %flags73 = getelementptr i8, ptr %work, i32 -932
  %45 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags73, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool75.not = icmp eq i32 %47, 0
  br i1 %tobool75.not, label %do.end79, label %do.body72.if.end85_crit_edge

do.body72.if.end85_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end79:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  %dev81 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.169, i32 noundef %call65) #11
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %do.body72.if.end85_crit_edge, %if.then67.if.end85_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_data_list_lock) #8
  %call.i.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %3) #8
  br i1 %call.i.i.i127, label %if.end.i.i.i128, label %if.end85.__list_del_entry.exit.i.i_crit_edge

if.end85.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i128:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i128, %if.end85.__list_del_entry.exit.i.i_crit_edge
  %56 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_data_free, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %rx_data_free, ptr noundef %57) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.ar5523_rx_data_put.exit_crit_edge

__list_del_entry.exit.i.i.ar5523_rx_data_put.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_rx_data_put.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %3, ptr %prev1.i.i2.i.i, align 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %3, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rx_data_free, ptr %prev3.i.i.i.i, align 4
  %61 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %3, ptr %rx_data_free, align 4
  br label %ar5523_rx_data_put.exit

ar5523_rx_data_put.exit:                          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.ar5523_rx_data_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_data_list_lock, i32 noundef %call2.i) #8
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_free_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rx_data_free_cnt, i32 1, i32 3, i32 1) #8
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_free_cnt, ptr %rx_data_free_cnt, i32 1, ptr elementtype(i32) %rx_data_free_cnt) #8, !srcloc !580
  br label %cleanup

cleanup:                                          ; preds = %ar5523_rx_data_put.exit, %do.end35, %do.body28.cleanup_crit_edge, %do.body5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_submit_rx_cmd(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_cmd_urb = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 17
  %0 = ptrtoint ptr %rx_cmd_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_cmd_urb, align 4
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or2 = or i32 %shl.i, -1069514624
  %rx_cmd_buf = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 16
  %6 = ptrtoint ptr %rx_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_cmd_buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or2, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ar5523_cmd_rx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ar, ptr %context4.i, align 4
  %14 = load ptr, ptr %rx_cmd_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_flags, align 4
  %or4 = or i32 %16, 4
  store i32 %or4, ptr %transfer_flags, align 4
  %17 = load ptr, ptr %rx_cmd_urb, align 4
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #8
  %18 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %do.body [
    i32 0, label %entry.cleanup_crit_edge
    i32 -19, label %entry.cleanup_crit_edge29
  ]

entry.cleanup_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ar, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.182, i32 noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge29
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_host_available(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  %setup = alloca %struct.ar5523_cmd_host_available, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %setup) #8
  %0 = getelementptr inbounds %struct.ar5523_cmd_host_available, ptr %setup, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ar5523_cmd_host_available, ptr %setup, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ar5523_cmd_host_available, ptr %setup, i32 0, i32 3
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %setup, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9999, ptr %2, align 4
  %call.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 1, ptr noundef nonnull %setup, i32 noundef 16, ptr noundef null, i32 noundef 0, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %setup) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_get_max_rxsz(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  %which_be.i = alloca i32, align 4
  %rxsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxsize) #8
  %0 = ptrtoint ptr %rxsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rxsize, align 4, !annotation !579
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %which_be.i) #8
  %1 = ptrtoint ptr %which_be.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %which_be.i, align 4
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 6, ptr noundef nonnull %which_be.i, i32 noundef 4, ptr noundef nonnull %rxsize, i32 noundef 4, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.do.body_crit_edge

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.212, i32 noundef 15) #11
  br label %do.body

do.body:                                          ; preds = %do.end.i, %do.body.i.do.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %which_be.i) #8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.206) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %which_be.i) #8
  %12 = ptrtoint ptr %rxsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxsize, align 4
  %rxbufsz = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 24
  %14 = ptrtoint ptr %rxbufsz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rxbufsz, align 4
  %15 = add i32 %13, -2001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2000, i32 %15)
  %16 = icmp ult i32 %15, -2000
  br i1 %16, label %do.body13, label %if.end7.do.body28_crit_edge

if.end7.do.body28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

do.body13:                                        ; preds = %if.end7
  %flags14 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %17 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags14, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %do.end20, label %do.body13.do.end25_crit_edge

do.body13.do.end25_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end20:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ar, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.209, i32 noundef 2000) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.body13.do.end25_crit_edge
  %22 = ptrtoint ptr %rxbufsz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2000, ptr %rxbufsz, align 4
  br label %do.body28

do.body28:                                        ; preds = %do.end25, %if.end7.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_get_max_rxsz.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_get_max_rxsz, %if.then33)) #8
          to label %cleanup [label %if.then33], !srcloc !581

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ar, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %rxbufsz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rxbufsz, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_get_max_rxsz.__UNIQUE_ID_ddebug400, ptr noundef %dev35, ptr noundef nonnull @.str.211, i32 noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body28, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxsize) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_get_devcap(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  %cap_be.i472 = alloca i32, align 4
  %val_be.i473 = alloca i32, align 4
  %cap_be.i = alloca i32, align 4
  %val_be.i = alloca i32, align 4
  %cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #8
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap, align 4, !annotation !579
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_be.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_be.i) #8
  %1 = ptrtoint ptr %val_be.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val_be.i, align 4, !annotation !579
  %2 = ptrtoint ptr %cap_be.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %cap_be.i, align 4
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull %cap_be.i, i32 noundef 4, ptr noundef nonnull %val_be.i, i32 noundef 4, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end, label %do.body.i

do.body.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.ar5523_get_capability.exit.thread_crit_edge

do.body.i.ar5523_get_capability.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_get_capability.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.304, i32 noundef 2) #11
  br label %ar5523_get_capability.exit.thread

ar5523_get_capability.exit.thread:                ; preds = %do.end.i, %do.body.i.ar5523_get_capability.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_be.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_be.i) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %val_be.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val_be.i, align 4
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cap, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_be.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_be.i) #8
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.216, i32 noundef %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_be.i472) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_be.i473) #8
  %13 = ptrtoint ptr %val_be.i473 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val_be.i473, align 4, !annotation !579
  %14 = ptrtoint ptr %cap_be.i472 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %cap_be.i472, align 4
  %call.i.i474 = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull %cap_be.i472, i32 noundef 4, ptr noundef nonnull %val_be.i473, i32 noundef 4, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i474)
  %cmp.not.i475 = icmp eq i32 %call.i.i474, 0
  br i1 %cmp.not.i475, label %do.end12, label %do.body.i478

do.body.i478:                                     ; preds = %do.end
  %flags.i476 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %15 = ptrtoint ptr %flags.i476 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i476, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i477 = icmp eq i32 %17, 0
  br i1 %tobool.not.i477, label %do.end.i480, label %do.body.i478.ar5523_get_capability.exit482.thread_crit_edge

do.body.i478.ar5523_get_capability.exit482.thread_crit_edge: ; preds = %do.body.i478
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_get_capability.exit482.thread

do.end.i480:                                      ; preds = %do.body.i478
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar, align 4
  %dev4.i479 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i479, ptr noundef nonnull @.str.304, i32 noundef 3) #11
  br label %ar5523_get_capability.exit482.thread

ar5523_get_capability.exit482.thread:             ; preds = %do.end.i480, %do.body.i478.ar5523_get_capability.exit482.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_be.i473) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_be.i472) #8
  br label %cleanup

do.end12:                                         ; preds = %do.end
  %20 = ptrtoint ptr %val_be.i473 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val_be.i473, align 4
  %22 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cap, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_be.i473) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_be.i472) #8
  %23 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ar, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.219, i32 noundef %21) #11
  %call18 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %do.end24, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %do.end12
  %25 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ar, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.222, i32 noundef %28) #11
  %call30 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 5, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %do.end36, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %do.end24
  %29 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.225, i32 noundef %32) #11
  %call42 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 6, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %do.end48, label %do.end36.cleanup_crit_edge

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end48:                                         ; preds = %do.end36
  %33 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ar, align 4
  %dev50 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.228, i32 noundef %36) #11
  %call54 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 7, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %do.end60, label %do.end48.cleanup_crit_edge

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end60:                                         ; preds = %do.end48
  %37 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ar, align 4
  %dev62 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.231, i32 noundef %40) #11
  %call66 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %do.end72, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end72:                                         ; preds = %do.end60
  %41 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ar, align 4
  %dev74 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.234, i32 noundef %44) #11
  %call78 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 10, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79.not = icmp eq i32 %call78, 0
  br i1 %cmp79.not, label %do.end84, label %do.end72.cleanup_crit_edge

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end84:                                         ; preds = %do.end72
  %45 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ar, align 4
  %dev86 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.237, i32 noundef %48) #11
  %call90 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 12, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %do.end96, label %do.end84.cleanup_crit_edge

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end96:                                         ; preds = %do.end84
  %49 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ar, align 4
  %dev98 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev98, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.240, i32 noundef %52) #11
  %call102 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 13, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %do.end108, label %do.end96.cleanup_crit_edge

do.end96.cleanup_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end108:                                        ; preds = %do.end96
  %53 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ar, align 4
  %dev110 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev110, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.243, i32 noundef %56) #11
  %call114 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 14, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %do.end120, label %do.end108.cleanup_crit_edge

do.end108.cleanup_crit_edge:                      ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end120:                                        ; preds = %do.end108
  %57 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ar, align 4
  %dev122 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev122, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.246, i32 noundef %60) #11
  %call126 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 16, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127.not = icmp eq i32 %call126, 0
  br i1 %cmp127.not, label %do.end132, label %do.end120.cleanup_crit_edge

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end132:                                        ; preds = %do.end120
  %61 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ar, align 4
  %dev134 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev134, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.249, i32 noundef %64) #11
  %call138 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 17, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139.not = icmp eq i32 %call138, 0
  br i1 %cmp139.not, label %do.end144, label %do.end132.cleanup_crit_edge

do.end132.cleanup_crit_edge:                      ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end144:                                        ; preds = %do.end132
  %65 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ar, align 4
  %dev146 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev146, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.252, i32 noundef %68) #11
  %call150 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 18, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %do.end156, label %do.end144.cleanup_crit_edge

do.end144.cleanup_crit_edge:                      ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end156:                                        ; preds = %do.end144
  %69 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ar, align 4
  %dev158 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  %71 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev158, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.255, i32 noundef %72) #11
  %call162 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 19, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %cmp163.not = icmp eq i32 %call162, 0
  br i1 %cmp163.not, label %do.end168, label %do.end156.cleanup_crit_edge

do.end156.cleanup_crit_edge:                      ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end168:                                        ; preds = %do.end156
  %73 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ar, align 4
  %dev170 = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev170, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.258, i32 noundef %76) #11
  %call174 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 20, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175.not = icmp eq i32 %call174, 0
  br i1 %cmp175.not, label %do.end180, label %do.end168.cleanup_crit_edge

do.end168.cleanup_crit_edge:                      ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end180:                                        ; preds = %do.end168
  %77 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ar, align 4
  %dev182 = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev182, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.261, i32 noundef %80) #11
  %call186 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 21, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187.not = icmp eq i32 %call186, 0
  br i1 %cmp187.not, label %do.end192, label %do.end180.cleanup_crit_edge

do.end180.cleanup_crit_edge:                      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end192:                                        ; preds = %do.end180
  %81 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ar, align 4
  %dev194 = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev194, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.264, i32 noundef %84) #11
  %call198 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 22, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199.not = icmp eq i32 %call198, 0
  br i1 %cmp199.not, label %do.end204, label %do.end192.cleanup_crit_edge

do.end192.cleanup_crit_edge:                      ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end204:                                        ; preds = %do.end192
  %85 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ar, align 4
  %dev206 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev206, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.267, i32 noundef %88) #11
  %call210 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 24, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211.not = icmp eq i32 %call210, 0
  br i1 %cmp211.not, label %do.end216, label %do.end204.cleanup_crit_edge

do.end204.cleanup_crit_edge:                      ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end216:                                        ; preds = %do.end204
  %89 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ar, align 4
  %dev218 = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev218, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.270, i32 noundef %92) #11
  %call222 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 25, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223.not = icmp eq i32 %call222, 0
  br i1 %cmp223.not, label %do.end228, label %do.end216.cleanup_crit_edge

do.end216.cleanup_crit_edge:                      ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end228:                                        ; preds = %do.end216
  %93 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ar, align 4
  %dev230 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 15
  %95 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev230, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.273, i32 noundef %96) #11
  %call234 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 26, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235.not = icmp eq i32 %call234, 0
  br i1 %cmp235.not, label %do.end240, label %do.end228.cleanup_crit_edge

do.end228.cleanup_crit_edge:                      ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end240:                                        ; preds = %do.end228
  %97 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ar, align 4
  %dev242 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 15
  %99 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev242, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.276, i32 noundef %100) #11
  %call246 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 27, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %cmp247.not = icmp eq i32 %call246, 0
  br i1 %cmp247.not, label %do.end252, label %do.end240.cleanup_crit_edge

do.end240.cleanup_crit_edge:                      ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end252:                                        ; preds = %do.end240
  %101 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ar, align 4
  %dev254 = getelementptr inbounds %struct.usb_device, ptr %102, i32 0, i32 15
  %103 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev254, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.279, i32 noundef %104) #11
  %call258 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 28, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259.not = icmp eq i32 %call258, 0
  br i1 %cmp259.not, label %do.end264, label %do.end252.cleanup_crit_edge

do.end252.cleanup_crit_edge:                      ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end264:                                        ; preds = %do.end252
  %105 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ar, align 4
  %dev266 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev266, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.282, i32 noundef %108) #11
  %call270 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 29, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %cmp271.not = icmp eq i32 %call270, 0
  br i1 %cmp271.not, label %do.end276, label %do.end264.cleanup_crit_edge

do.end264.cleanup_crit_edge:                      ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end276:                                        ; preds = %do.end264
  %109 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ar, align 4
  %dev278 = getelementptr inbounds %struct.usb_device, ptr %110, i32 0, i32 15
  %111 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev278, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.285, i32 noundef %112) #11
  %call282 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 30, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %cmp283.not = icmp eq i32 %call282, 0
  br i1 %cmp283.not, label %do.end288, label %do.end276.cleanup_crit_edge

do.end276.cleanup_crit_edge:                      ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end288:                                        ; preds = %do.end276
  %113 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ar, align 4
  %dev290 = getelementptr inbounds %struct.usb_device, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev290, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.288, i32 noundef %116) #11
  %call294 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 38, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %cmp295.not = icmp eq i32 %call294, 0
  br i1 %cmp295.not, label %do.end300, label %do.end288.cleanup_crit_edge

do.end288.cleanup_crit_edge:                      ; preds = %do.end288
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end300:                                        ; preds = %do.end288
  %117 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ar, align 4
  %dev302 = getelementptr inbounds %struct.usb_device, ptr %118, i32 0, i32 15
  %119 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev302, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.291, i32 noundef %120) #11
  %call306 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 39, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %cmp307.not = icmp eq i32 %call306, 0
  br i1 %cmp307.not, label %do.end312, label %do.end300.cleanup_crit_edge

do.end300.cleanup_crit_edge:                      ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end312:                                        ; preds = %do.end300
  %121 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ar, align 4
  %dev314 = getelementptr inbounds %struct.usb_device, ptr %122, i32 0, i32 15
  %123 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev314, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.294, i32 noundef %124) #11
  %call318 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 35, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %cmp319.not = icmp eq i32 %call318, 0
  br i1 %cmp319.not, label %do.end324, label %do.end312.cleanup_crit_edge

do.end312.cleanup_crit_edge:                      ; preds = %do.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end324:                                        ; preds = %do.end312
  %125 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ar, align 4
  %dev326 = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 15
  %127 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev326, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.297, i32 noundef %128) #11
  %call330 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 37, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %cmp331.not = icmp eq i32 %call330, 0
  br i1 %cmp331.not, label %do.end336, label %do.end324.cleanup_crit_edge

do.end324.cleanup_crit_edge:                      ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end336:                                        ; preds = %do.end324
  %129 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ar, align 4
  %dev338 = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  %131 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev338, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.300, i32 noundef %132) #11
  %call342 = call fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef 33, ptr noundef nonnull %cap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %cmp343.not = icmp eq i32 %call342, 0
  br i1 %cmp343.not, label %do.end348, label %do.end336.cleanup_crit_edge

do.end336.cleanup_crit_edge:                      ; preds = %do.end336
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end348:                                        ; preds = %do.end336
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ar, align 4
  %dev350 = getelementptr inbounds %struct.usb_device, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev350, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.303, i32 noundef %136) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end348, %do.end336.cleanup_crit_edge, %do.end324.cleanup_crit_edge, %do.end312.cleanup_crit_edge, %do.end300.cleanup_crit_edge, %do.end288.cleanup_crit_edge, %do.end276.cleanup_crit_edge, %do.end264.cleanup_crit_edge, %do.end252.cleanup_crit_edge, %do.end240.cleanup_crit_edge, %do.end228.cleanup_crit_edge, %do.end216.cleanup_crit_edge, %do.end204.cleanup_crit_edge, %do.end192.cleanup_crit_edge, %do.end180.cleanup_crit_edge, %do.end168.cleanup_crit_edge, %do.end156.cleanup_crit_edge, %do.end144.cleanup_crit_edge, %do.end132.cleanup_crit_edge, %do.end120.cleanup_crit_edge, %do.end108.cleanup_crit_edge, %do.end96.cleanup_crit_edge, %do.end84.cleanup_crit_edge, %do.end72.cleanup_crit_edge, %do.end60.cleanup_crit_edge, %do.end48.cleanup_crit_edge, %do.end36.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %ar5523_get_capability.exit482.thread, %ar5523_get_capability.exit.thread
  %retval.0 = phi i32 [ 0, %do.end348 ], [ %call18, %do.end12.cleanup_crit_edge ], [ %call30, %do.end24.cleanup_crit_edge ], [ %call42, %do.end36.cleanup_crit_edge ], [ %call54, %do.end48.cleanup_crit_edge ], [ %call66, %do.end60.cleanup_crit_edge ], [ %call78, %do.end72.cleanup_crit_edge ], [ %call90, %do.end84.cleanup_crit_edge ], [ %call102, %do.end96.cleanup_crit_edge ], [ %call114, %do.end108.cleanup_crit_edge ], [ %call126, %do.end120.cleanup_crit_edge ], [ %call138, %do.end132.cleanup_crit_edge ], [ %call150, %do.end144.cleanup_crit_edge ], [ %call162, %do.end156.cleanup_crit_edge ], [ %call174, %do.end168.cleanup_crit_edge ], [ %call186, %do.end180.cleanup_crit_edge ], [ %call198, %do.end192.cleanup_crit_edge ], [ %call210, %do.end204.cleanup_crit_edge ], [ %call222, %do.end216.cleanup_crit_edge ], [ %call234, %do.end228.cleanup_crit_edge ], [ %call246, %do.end240.cleanup_crit_edge ], [ %call258, %do.end252.cleanup_crit_edge ], [ %call270, %do.end264.cleanup_crit_edge ], [ %call282, %do.end276.cleanup_crit_edge ], [ %call294, %do.end288.cleanup_crit_edge ], [ %call306, %do.end300.cleanup_crit_edge ], [ %call318, %do.end312.cleanup_crit_edge ], [ %call330, %do.end324.cleanup_crit_edge ], [ %call342, %do.end336.cleanup_crit_edge ], [ %call.i.i, %ar5523_get_capability.exit.thread ], [ %call.i.i474, %ar5523_get_capability.exit482.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_get_devstatus(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  %which_be.i40 = alloca i32, align 4
  %which_be.i = alloca i32, align 4
  %macaddr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %macaddr) #8
  %0 = call ptr @memset(ptr %macaddr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %which_be.i) #8
  %1 = ptrtoint ptr %which_be.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %which_be.i, align 4
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 6, ptr noundef nonnull %which_be.i, i32 noundef 4, ptr noundef nonnull %macaddr, i32 noundef 6, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end8, label %do.body.i

do.body.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.do.body_crit_edge

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.212, i32 noundef 11) #11
  br label %do.body

do.body:                                          ; preds = %do.end.i, %do.body.i.do.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %which_be.i) #8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.306) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %which_be.i) #8
  %hw = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %perm_addr.i, ptr %macaddr, i32 6)
  %serial = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %which_be.i40) #8
  %17 = ptrtoint ptr %which_be.i40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 14, ptr %which_be.i40, align 4
  %call.i.i41 = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 6, ptr noundef nonnull %which_be.i40, i32 noundef 4, ptr noundef %serial, i32 noundef 16, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.not.i42 = icmp eq i32 %call.i.i41, 0
  br i1 %cmp.not.i42, label %ar5523_get_status.exit48, label %do.body.i45

do.body.i45:                                      ; preds = %if.end8
  %flags.i43 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %18 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i43, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i44 = icmp eq i32 %20, 0
  br i1 %tobool.not.i44, label %do.end.i47, label %do.body.i45.do.body13_crit_edge

do.body.i45.do.body13_crit_edge:                  ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

do.end.i47:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ar, align 4
  %dev4.i46 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i46, ptr noundef nonnull @.str.212, i32 noundef 14) #11
  br label %do.body13

ar5523_get_status.exit48:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %which_be.i40) #8
  br label %cleanup

do.body13:                                        ; preds = %do.end.i47, %do.body.i45.do.body13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %which_be.i40) #8
  %23 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i43, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not = icmp eq i32 %25, 0
  br i1 %tobool16.not, label %do.end20, label %do.body13.cleanup_crit_edge

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.309) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.body13.cleanup_crit_edge, %ar5523_get_status.exit48, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i, %do.body.cleanup_crit_edge ], [ %call.i.i41, %do.end20 ], [ %call.i.i41, %do.body13.cleanup_crit_edge ], [ 0, %ar5523_get_status.exit48 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %macaddr) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_free_tx_cmd(ptr nocapture noundef readonly %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 4
  %buf_tx = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %buf_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_tx, align 4
  %urb_tx = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %urb_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb_tx, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %1, i32 noundef 1024, ptr noundef %3, i32 noundef %7) #8
  %8 = ptrtoint ptr %urb_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_tx, align 4
  tail call void @usb_free_urb(ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_tx(ptr noundef %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx.__UNIQUE_ID_ddebug375, ptr noundef %dev4, ptr noundef nonnull @.str.72) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_nr_total = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_total, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !583
  tail call void @llvm.prefetch.p0(ptr %tx_nr_total, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_nr_total, ptr %tx_nr_total, i32 1, ptr elementtype(i32) %tx_nr_total) #8, !srcloc !584
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !585
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 7
  br i1 %cmp, label %do.body7, label %do.end.do.body48_crit_edge

do.end.do.body48_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx, %if.then19)) #8
          to label %do.body25 [label %if.then19], !srcloc !581

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx.__UNIQUE_ID_ddebug376, ptr noundef %dev21, ptr noundef nonnull @.str.73) #8
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx, %if.then37)) #8
          to label %do.end45 [label %if.then37], !srcloc !581

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %call.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_total, i32 noundef 4) #8
  %9 = ptrtoint ptr %tx_nr_total to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tx_nr_total, align 4
  %tx_nr_pending = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 15
  %call.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %11 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tx_nr_pending, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx.__UNIQUE_ID_ddebug377, ptr noundef %dev39, ptr noundef nonnull @.str.74, i32 noundef %10, i32 noundef %12) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then37, %do.body25
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #8
  br label %do.body48

do.body48:                                        ; preds = %do.end45, %do.end.do.body48_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %tx_data_list_lock = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 12
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_data_list_lock) #8
  %tx_queue_pending = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i78 = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %15, ptr noundef %tx_queue_pending) #8
  br i1 %call.i.i78, label %if.end.i.i, label %do.body48.list_add_tail.exit_crit_edge

do.body48.list_add_tail.exit_crit_edge:           ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tx_queue_pending, ptr %13, align 4
  %prev3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %13, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body48.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_data_list_lock, i32 noundef %call52) #8
  %hw58 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %hw58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw58, align 4
  %tx_work = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 9
  tail call void @ieee80211_queue_work(ptr noundef %21, ptr noundef %tx_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5523_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %led.i = alloca %struct.ar5523_cmd_ledsteady, align 4
  %rxfilter.i273 = alloca %struct.ar5523_cmd_rx_filter, align 4
  %rxfilter.i = alloca %struct.ar5523_cmd_rx_filter, align 4
  %write.i255 = alloca %struct.ar5523_write_mac, align 4
  %write.i244 = alloca %struct.ar5523_write_mac, align 4
  %write.i233 = alloca %struct.ar5523_write_mac, align 4
  %write.i222 = alloca %struct.ar5523_write_mac, align 4
  %write.i211 = alloca %struct.ar5523_write_mac, align 4
  %write.i200 = alloca %struct.ar5523_write_mac, align 4
  %write.i189 = alloca %struct.ar5523_write_mac, align 4
  %write.i178 = alloca %struct.ar5523_write_mac, align 4
  %write.i167 = alloca %struct.ar5523_write_mac, align 4
  %write.i156 = alloca %struct.ar5523_write_mac, align 4
  %write.i145 = alloca %struct.ar5523_write_mac, align 4
  %write.i134 = alloca %struct.ar5523_write_mac, align 4
  %write.i128 = alloca %struct.ar5523_write_mac, align 4
  %write.i = alloca %struct.ar5523_write_mac, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_start.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_start.__UNIQUE_ID_ddebug384, ptr noundef %dev3, ptr noundef nonnull @.str.76) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call.i = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %val, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %hw5 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw5, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i) #8
  %9 = getelementptr inbounds i8, ptr %write.i, i32 12
  %10 = call ptr @memset(ptr %9, i32 255, i32 28)
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 19, ptr %write.i, align 4
  %len2.i = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i, i32 0, i32 1
  %12 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %len2.i, align 4
  %data3.i = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %data3.i, ptr %perm_addr, i32 6)
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i, i32 noundef 14, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4.not.i, label %do.end.ar5523_config_multi.exit_crit_edge, label %do.body.i

do.end.ar5523_config_multi.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config_multi.exit

do.body.i:                                        ; preds = %do.end
  %flags.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.ar5523_config_multi.exit_crit_edge

do.body.i.ar5523_config_multi.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config_multi.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.88, i32 noundef 6, i32 noundef 19) #11
  br label %ar5523_config_multi.exit

ar5523_config_multi.exit:                         ; preds = %do.end.i, %do.body.i.ar5523_config_multi.exit_crit_edge, %do.end.ar5523_config_multi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i128) #8
  %19 = getelementptr inbounds i8, ptr %write.i128, i32 12
  %20 = call ptr @memset(ptr %19, i32 255, i32 28)
  %21 = ptrtoint ptr %write.i128 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %write.i128, align 4
  %len.i = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i128, i32 0, i32 1
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i128, i32 0, i32 2
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %data.i, align 4
  %call.i.i129 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i128, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %cmp.not.i = icmp eq i32 %call.i.i129, 0
  br i1 %cmp.not.i, label %ar5523_config_multi.exit.ar5523_config.exit_crit_edge, label %do.body.i132

ar5523_config_multi.exit.ar5523_config.exit_crit_edge: ; preds = %ar5523_config_multi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit

do.body.i132:                                     ; preds = %ar5523_config_multi.exit
  %flags.i130 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %flags.i130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i130, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i131 = icmp eq i32 %26, 0
  br i1 %tobool.not.i131, label %do.end.i133, label %do.body.i132.ar5523_config.exit_crit_edge

do.body.i132.ar5523_config.exit_crit_edge:        ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit

do.end.i133:                                      ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.90, i32 noundef 2) #11
  br label %ar5523_config.exit

ar5523_config.exit:                               ; preds = %do.end.i133, %do.body.i132.ar5523_config.exit_crit_edge, %ar5523_config_multi.exit.ar5523_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i128) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i134) #8
  %29 = getelementptr inbounds i8, ptr %write.i134, i32 12
  %30 = call ptr @memset(ptr %29, i32 255, i32 28)
  %31 = ptrtoint ptr %write.i134 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 24, ptr %write.i134, align 4
  %len.i135 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i134, i32 0, i32 1
  %32 = ptrtoint ptr %len.i135 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %len.i135, align 4
  %data.i136 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i134, i32 0, i32 2
  %33 = ptrtoint ptr %data.i136 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %data.i136, align 4
  %call.i.i137 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i134, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137)
  %cmp.not.i138 = icmp eq i32 %call.i.i137, 0
  br i1 %cmp.not.i138, label %ar5523_config.exit.ar5523_config.exit144_crit_edge, label %do.body.i141

ar5523_config.exit.ar5523_config.exit144_crit_edge: ; preds = %ar5523_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit144

do.body.i141:                                     ; preds = %ar5523_config.exit
  %flags.i139 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i139, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i140 = icmp eq i32 %36, 0
  br i1 %tobool.not.i140, label %do.end.i143, label %do.body.i141.ar5523_config.exit144_crit_edge

do.body.i141.ar5523_config.exit144_crit_edge:     ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit144

do.end.i143:                                      ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %dev5.i142 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i142, ptr noundef nonnull @.str.90, i32 noundef 24) #11
  br label %ar5523_config.exit144

ar5523_config.exit144:                            ; preds = %do.end.i143, %do.body.i141.ar5523_config.exit144_crit_edge, %ar5523_config.exit.ar5523_config.exit144_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i134) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i145) #8
  %39 = getelementptr inbounds i8, ptr %write.i145, i32 12
  %40 = call ptr @memset(ptr %39, i32 255, i32 28)
  %41 = ptrtoint ptr %write.i145 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 13, ptr %write.i145, align 4
  %len.i146 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i145, i32 0, i32 1
  %42 = ptrtoint ptr %len.i146 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %len.i146, align 4
  %data.i147 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i145, i32 0, i32 2
  %43 = ptrtoint ptr %data.i147 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 63, ptr %data.i147, align 4
  %call.i.i148 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i145, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %cmp.not.i149 = icmp eq i32 %call.i.i148, 0
  br i1 %cmp.not.i149, label %ar5523_config.exit144.ar5523_config.exit155_crit_edge, label %do.body.i152

ar5523_config.exit144.ar5523_config.exit155_crit_edge: ; preds = %ar5523_config.exit144
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit155

do.body.i152:                                     ; preds = %ar5523_config.exit144
  %flags.i150 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %flags.i150 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i150, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i151 = icmp eq i32 %46, 0
  br i1 %tobool.not.i151, label %do.end.i154, label %do.body.i152.ar5523_config.exit155_crit_edge

do.body.i152.ar5523_config.exit155_crit_edge:     ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit155

do.end.i154:                                      ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %dev5.i153 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i153, ptr noundef nonnull @.str.90, i32 noundef 13) #11
  br label %ar5523_config.exit155

ar5523_config.exit155:                            ; preds = %do.end.i154, %do.body.i152.ar5523_config.exit155_crit_edge, %ar5523_config.exit144.ar5523_config.exit155_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i145) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i156) #8
  %49 = getelementptr inbounds i8, ptr %write.i156, i32 12
  %50 = call ptr @memset(ptr %49, i32 255, i32 28)
  %51 = ptrtoint ptr %write.i156 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %write.i156, align 4
  %len.i157 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i156, i32 0, i32 1
  %52 = ptrtoint ptr %len.i157 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %len.i157, align 4
  %data.i158 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i156, i32 0, i32 2
  %53 = ptrtoint ptr %data.i158 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %data.i158, align 4
  %call.i.i159 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i156, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %cmp.not.i160 = icmp eq i32 %call.i.i159, 0
  br i1 %cmp.not.i160, label %ar5523_config.exit155.ar5523_config.exit166_crit_edge, label %do.body.i163

ar5523_config.exit155.ar5523_config.exit166_crit_edge: ; preds = %ar5523_config.exit155
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit166

do.body.i163:                                     ; preds = %ar5523_config.exit155
  %flags.i161 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %flags.i161 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i161, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i162 = icmp eq i32 %56, 0
  br i1 %tobool.not.i162, label %do.end.i165, label %do.body.i163.ar5523_config.exit166_crit_edge

do.body.i163.ar5523_config.exit166_crit_edge:     ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit166

do.end.i165:                                      ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %dev5.i164 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i164, ptr noundef nonnull @.str.90, i32 noundef 16) #11
  br label %ar5523_config.exit166

ar5523_config.exit166:                            ; preds = %do.end.i165, %do.body.i163.ar5523_config.exit166_crit_edge, %ar5523_config.exit155.ar5523_config.exit166_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i156) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i167) #8
  %59 = getelementptr inbounds i8, ptr %write.i167, i32 12
  %60 = call ptr @memset(ptr %59, i32 255, i32 28)
  %61 = ptrtoint ptr %write.i167 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 18, ptr %write.i167, align 4
  %len.i168 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i167, i32 0, i32 1
  %62 = ptrtoint ptr %len.i168 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %len.i168, align 4
  %data.i169 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i167, i32 0, i32 2
  %63 = ptrtoint ptr %data.i169 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %data.i169, align 4
  %call.i.i170 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i167, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %cmp.not.i171 = icmp eq i32 %call.i.i170, 0
  br i1 %cmp.not.i171, label %ar5523_config.exit166.ar5523_config.exit177_crit_edge, label %do.body.i174

ar5523_config.exit166.ar5523_config.exit177_crit_edge: ; preds = %ar5523_config.exit166
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit177

do.body.i174:                                     ; preds = %ar5523_config.exit166
  %flags.i172 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %flags.i172 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags.i172, align 4
  %66 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i173 = icmp eq i32 %66, 0
  br i1 %tobool.not.i173, label %do.end.i176, label %do.body.i174.ar5523_config.exit177_crit_edge

do.body.i174.ar5523_config.exit177_crit_edge:     ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit177

do.end.i176:                                      ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %dev5.i175 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i175, ptr noundef nonnull @.str.90, i32 noundef 18) #11
  br label %ar5523_config.exit177

ar5523_config.exit177:                            ; preds = %do.end.i176, %do.body.i174.ar5523_config.exit177_crit_edge, %ar5523_config.exit166.ar5523_config.exit177_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i167) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i178) #8
  %69 = getelementptr inbounds i8, ptr %write.i178, i32 12
  %70 = call ptr @memset(ptr %69, i32 255, i32 28)
  %71 = ptrtoint ptr %write.i178 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 25, ptr %write.i178, align 4
  %len.i179 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i178, i32 0, i32 1
  %72 = ptrtoint ptr %len.i179 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %len.i179, align 4
  %data.i180 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i178, i32 0, i32 2
  %73 = ptrtoint ptr %data.i180 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %data.i180, align 4
  %call.i.i181 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i178, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %cmp.not.i182 = icmp eq i32 %call.i.i181, 0
  br i1 %cmp.not.i182, label %ar5523_config.exit177.ar5523_config.exit188_crit_edge, label %do.body.i185

ar5523_config.exit177.ar5523_config.exit188_crit_edge: ; preds = %ar5523_config.exit177
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit188

do.body.i185:                                     ; preds = %ar5523_config.exit177
  %flags.i183 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %flags.i183 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i183, align 4
  %76 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i184 = icmp eq i32 %76, 0
  br i1 %tobool.not.i184, label %do.end.i187, label %do.body.i185.ar5523_config.exit188_crit_edge

do.body.i185.ar5523_config.exit188_crit_edge:     ; preds = %do.body.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit188

do.end.i187:                                      ; preds = %do.body.i185
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %dev5.i186 = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i186, ptr noundef nonnull @.str.90, i32 noundef 25) #11
  br label %ar5523_config.exit188

ar5523_config.exit188:                            ; preds = %do.end.i187, %do.body.i185.ar5523_config.exit188_crit_edge, %ar5523_config.exit177.ar5523_config.exit188_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i178) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i189) #8
  %79 = getelementptr inbounds i8, ptr %write.i189, i32 12
  %80 = call ptr @memset(ptr %79, i32 255, i32 28)
  %81 = ptrtoint ptr %write.i189 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 26, ptr %write.i189, align 4
  %len.i190 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i189, i32 0, i32 1
  %82 = ptrtoint ptr %len.i190 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %len.i190, align 4
  %data.i191 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i189, i32 0, i32 2
  %83 = ptrtoint ptr %data.i191 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 60, ptr %data.i191, align 4
  %call.i.i192 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i189, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %cmp.not.i193 = icmp eq i32 %call.i.i192, 0
  br i1 %cmp.not.i193, label %ar5523_config.exit188.ar5523_config.exit199_crit_edge, label %do.body.i196

ar5523_config.exit188.ar5523_config.exit199_crit_edge: ; preds = %ar5523_config.exit188
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit199

do.body.i196:                                     ; preds = %ar5523_config.exit188
  %flags.i194 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags.i194, align 4
  %86 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i195 = icmp eq i32 %86, 0
  br i1 %tobool.not.i195, label %do.end.i198, label %do.body.i196.ar5523_config.exit199_crit_edge

do.body.i196.ar5523_config.exit199_crit_edge:     ; preds = %do.body.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit199

do.end.i198:                                      ; preds = %do.body.i196
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %dev5.i197 = getelementptr inbounds %struct.usb_device, ptr %88, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i197, ptr noundef nonnull @.str.90, i32 noundef 26) #11
  br label %ar5523_config.exit199

ar5523_config.exit199:                            ; preds = %do.end.i198, %do.body.i196.ar5523_config.exit199_crit_edge, %ar5523_config.exit188.ar5523_config.exit199_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i189) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i200) #8
  %89 = getelementptr inbounds i8, ptr %write.i200, i32 12
  %90 = call ptr @memset(ptr %89, i32 255, i32 28)
  %91 = ptrtoint ptr %write.i200 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 27, ptr %write.i200, align 4
  %len.i201 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i200, i32 0, i32 1
  %92 = ptrtoint ptr %len.i201 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %len.i201, align 4
  %data.i202 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i200, i32 0, i32 2
  %93 = ptrtoint ptr %data.i202 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 60, ptr %data.i202, align 4
  %call.i.i203 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i200, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i203)
  %cmp.not.i204 = icmp eq i32 %call.i.i203, 0
  br i1 %cmp.not.i204, label %ar5523_config.exit199.ar5523_config.exit210_crit_edge, label %do.body.i207

ar5523_config.exit199.ar5523_config.exit210_crit_edge: ; preds = %ar5523_config.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit210

do.body.i207:                                     ; preds = %ar5523_config.exit199
  %flags.i205 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags.i205, align 4
  %96 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i206 = icmp eq i32 %96, 0
  br i1 %tobool.not.i206, label %do.end.i209, label %do.body.i207.ar5523_config.exit210_crit_edge

do.body.i207.ar5523_config.exit210_crit_edge:     ; preds = %do.body.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit210

do.end.i209:                                      ; preds = %do.body.i207
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %dev5.i208 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i208, ptr noundef nonnull @.str.90, i32 noundef 27) #11
  br label %ar5523_config.exit210

ar5523_config.exit210:                            ; preds = %do.end.i209, %do.body.i207.ar5523_config.exit210_crit_edge, %ar5523_config.exit199.ar5523_config.exit210_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i200) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i211) #8
  %99 = getelementptr inbounds i8, ptr %write.i211, i32 12
  %100 = call ptr @memset(ptr %99, i32 255, i32 28)
  %101 = ptrtoint ptr %write.i211 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 28, ptr %write.i211, align 4
  %len.i212 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i211, i32 0, i32 1
  %102 = ptrtoint ptr %len.i212 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %len.i212, align 4
  %data.i213 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i211, i32 0, i32 2
  %103 = ptrtoint ptr %data.i213 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %data.i213, align 4
  %call.i.i214 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i211, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %cmp.not.i215 = icmp eq i32 %call.i.i214, 0
  br i1 %cmp.not.i215, label %ar5523_config.exit210.ar5523_config.exit221_crit_edge, label %do.body.i218

ar5523_config.exit210.ar5523_config.exit221_crit_edge: ; preds = %ar5523_config.exit210
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit221

do.body.i218:                                     ; preds = %ar5523_config.exit210
  %flags.i216 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %104 = ptrtoint ptr %flags.i216 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %flags.i216, align 4
  %106 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i217 = icmp eq i32 %106, 0
  br i1 %tobool.not.i217, label %do.end.i220, label %do.body.i218.ar5523_config.exit221_crit_edge

do.body.i218.ar5523_config.exit221_crit_edge:     ; preds = %do.body.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit221

do.end.i220:                                      ; preds = %do.body.i218
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %dev5.i219 = getelementptr inbounds %struct.usb_device, ptr %108, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i219, ptr noundef nonnull @.str.90, i32 noundef 28) #11
  br label %ar5523_config.exit221

ar5523_config.exit221:                            ; preds = %do.end.i220, %do.body.i218.ar5523_config.exit221_crit_edge, %ar5523_config.exit210.ar5523_config.exit221_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i211) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i222) #8
  %109 = getelementptr inbounds i8, ptr %write.i222, i32 12
  %110 = call ptr @memset(ptr %109, i32 255, i32 28)
  %111 = ptrtoint ptr %write.i222 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 30, ptr %write.i222, align 4
  %len.i223 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i222, i32 0, i32 1
  %112 = ptrtoint ptr %len.i223 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %len.i223, align 4
  %data.i224 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i222, i32 0, i32 2
  %113 = ptrtoint ptr %data.i224 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %data.i224, align 4
  %call.i.i225 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i222, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i225)
  %cmp.not.i226 = icmp eq i32 %call.i.i225, 0
  br i1 %cmp.not.i226, label %ar5523_config.exit221.ar5523_config.exit232_crit_edge, label %do.body.i229

ar5523_config.exit221.ar5523_config.exit232_crit_edge: ; preds = %ar5523_config.exit221
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit232

do.body.i229:                                     ; preds = %ar5523_config.exit221
  %flags.i227 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %114 = ptrtoint ptr %flags.i227 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags.i227, align 4
  %116 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i228 = icmp eq i32 %116, 0
  br i1 %tobool.not.i228, label %do.end.i231, label %do.body.i229.ar5523_config.exit232_crit_edge

do.body.i229.ar5523_config.exit232_crit_edge:     ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit232

do.end.i231:                                      ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %dev5.i230 = getelementptr inbounds %struct.usb_device, ptr %118, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i230, ptr noundef nonnull @.str.90, i32 noundef 30) #11
  br label %ar5523_config.exit232

ar5523_config.exit232:                            ; preds = %do.end.i231, %do.body.i229.ar5523_config.exit232_crit_edge, %ar5523_config.exit221.ar5523_config.exit232_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i222) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i233) #8
  %119 = getelementptr inbounds i8, ptr %write.i233, i32 12
  %120 = call ptr @memset(ptr %119, i32 255, i32 28)
  %121 = ptrtoint ptr %write.i233 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 31, ptr %write.i233, align 4
  %len.i234 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i233, i32 0, i32 1
  %122 = ptrtoint ptr %len.i234 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %len.i234, align 4
  %data.i235 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i233, i32 0, i32 2
  %123 = ptrtoint ptr %data.i235 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 3, ptr %data.i235, align 4
  %call.i.i236 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i233, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i236)
  %cmp.not.i237 = icmp eq i32 %call.i.i236, 0
  br i1 %cmp.not.i237, label %ar5523_config.exit232.ar5523_config.exit243_crit_edge, label %do.body.i240

ar5523_config.exit232.ar5523_config.exit243_crit_edge: ; preds = %ar5523_config.exit232
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit243

do.body.i240:                                     ; preds = %ar5523_config.exit232
  %flags.i238 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %124 = ptrtoint ptr %flags.i238 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %flags.i238, align 4
  %126 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i239 = icmp eq i32 %126, 0
  br i1 %tobool.not.i239, label %do.end.i242, label %do.body.i240.ar5523_config.exit243_crit_edge

do.body.i240.ar5523_config.exit243_crit_edge:     ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit243

do.end.i242:                                      ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %dev5.i241 = getelementptr inbounds %struct.usb_device, ptr %128, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i241, ptr noundef nonnull @.str.90, i32 noundef 31) #11
  br label %ar5523_config.exit243

ar5523_config.exit243:                            ; preds = %do.end.i242, %do.body.i240.ar5523_config.exit243_crit_edge, %ar5523_config.exit232.ar5523_config.exit243_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i233) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i244) #8
  %129 = getelementptr inbounds i8, ptr %write.i244, i32 12
  %130 = call ptr @memset(ptr %129, i32 255, i32 28)
  %131 = ptrtoint ptr %write.i244 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 11, ptr %write.i244, align 4
  %len.i245 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i244, i32 0, i32 1
  %132 = ptrtoint ptr %len.i245 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %len.i245, align 4
  %data.i246 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i244, i32 0, i32 2
  %133 = ptrtoint ptr %data.i246 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %data.i246, align 4
  %call.i.i247 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i244, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i247)
  %cmp.not.i248 = icmp eq i32 %call.i.i247, 0
  br i1 %cmp.not.i248, label %ar5523_config.exit243.ar5523_config.exit254_crit_edge, label %do.body.i251

ar5523_config.exit243.ar5523_config.exit254_crit_edge: ; preds = %ar5523_config.exit243
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit254

do.body.i251:                                     ; preds = %ar5523_config.exit243
  %flags.i249 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %134 = ptrtoint ptr %flags.i249 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flags.i249, align 4
  %136 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i250 = icmp eq i32 %136, 0
  br i1 %tobool.not.i250, label %do.end.i253, label %do.body.i251.ar5523_config.exit254_crit_edge

do.body.i251.ar5523_config.exit254_crit_edge:     ; preds = %do.body.i251
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit254

do.end.i253:                                      ; preds = %do.body.i251
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %dev5.i252 = getelementptr inbounds %struct.usb_device, ptr %138, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i252, ptr noundef nonnull @.str.90, i32 noundef 11) #11
  br label %ar5523_config.exit254

ar5523_config.exit254:                            ; preds = %do.end.i253, %do.body.i251.ar5523_config.exit254_crit_edge, %ar5523_config.exit243.ar5523_config.exit254_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i244) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i255) #8
  %139 = getelementptr inbounds i8, ptr %write.i255, i32 12
  %140 = call ptr @memset(ptr %139, i32 255, i32 28)
  %141 = ptrtoint ptr %write.i255 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 15, ptr %write.i255, align 4
  %len.i256 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i255, i32 0, i32 1
  %142 = ptrtoint ptr %len.i256 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %len.i256, align 4
  %data.i257 = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i255, i32 0, i32 2
  %143 = ptrtoint ptr %data.i257 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 2, ptr %data.i257, align 4
  %call.i.i258 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i255, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp.not.i259 = icmp eq i32 %call.i.i258, 0
  br i1 %cmp.not.i259, label %ar5523_config.exit254.ar5523_config.exit265_crit_edge, label %do.body.i262

ar5523_config.exit254.ar5523_config.exit265_crit_edge: ; preds = %ar5523_config.exit254
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit265

do.body.i262:                                     ; preds = %ar5523_config.exit254
  %flags.i260 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %144 = ptrtoint ptr %flags.i260 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %flags.i260, align 4
  %146 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i261 = icmp eq i32 %146, 0
  br i1 %tobool.not.i261, label %do.end.i264, label %do.body.i262.ar5523_config.exit265_crit_edge

do.body.i262.ar5523_config.exit265_crit_edge:     ; preds = %do.body.i262
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit265

do.end.i264:                                      ; preds = %do.body.i262
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %dev5.i263 = getelementptr inbounds %struct.usb_device, ptr %148, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i263, ptr noundef nonnull @.str.90, i32 noundef 15) #11
  br label %ar5523_config.exit265

ar5523_config.exit265:                            ; preds = %do.end.i264, %do.body.i262.ar5523_config.exit265_crit_edge, %ar5523_config.exit254.ar5523_config.exit265_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i255) #8
  %call.i266 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef nonnull %val, i32 noundef 4, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool21.not = icmp eq i32 %call.i266, 0
  br i1 %tobool21.not, label %do.body42, label %do.body23

do.body23:                                        ; preds = %ar5523_config.exit265
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_start.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then35)) #8
          to label %err [label %if.then35], !srcloc !581

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %150, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_start.__UNIQUE_ID_ddebug385, ptr noundef %dev37, ptr noundef nonnull @.str.77, i32 noundef %call.i266) #8
  br label %err

do.body42:                                        ; preds = %ar5523_config.exit265
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_start.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then54)) #8
          to label %do.end59 [label %if.then54], !srcloc !581

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %dev56 = getelementptr inbounds %struct.usb_device, ptr %152, i32 0, i32 15
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_start.__UNIQUE_ID_ddebug386, ptr noundef %dev56, ptr noundef nonnull @.str.78, i32 noundef %154) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  call fastcc void @ar5523_switch_chan(ptr noundef %1)
  %155 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %val, align 4
  %call.i267 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %val, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %call.i268 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 28, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %flags = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  %wq = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 4
  %156 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wq, align 4
  %rx_refill_work = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 23
  %call.i269 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %157, ptr noundef %rx_refill_work) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rxfilter.i) #8
  %158 = getelementptr inbounds %struct.ar5523_cmd_rx_filter, ptr %rxfilter.i, i32 0, i32 1
  %159 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %rxfilter.i, align 4
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %158, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then.i)) #8
          to label %ar5523_set_rxfilter.exit [label %if.then.i], !srcloc !581

if.then.i:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %dev5.i270 = getelementptr inbounds %struct.usb_device, ptr %162, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, ptr noundef %dev5.i270, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef 0) #8
  br label %ar5523_set_rxfilter.exit

ar5523_set_rxfilter.exit:                         ; preds = %if.then.i, %do.end59
  %call.i.i271 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 51, ptr noundef nonnull %rxfilter.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rxfilter.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rxfilter.i273) #8
  %163 = getelementptr inbounds %struct.ar5523_cmd_rx_filter, ptr %rxfilter.i273, i32 0, i32 1
  %164 = ptrtoint ptr %rxfilter.i273 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 23, ptr %rxfilter.i273, align 4
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %163, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then.i275)) #8
          to label %ar5523_set_rxfilter.exit278 [label %if.then.i275], !srcloc !581

if.then.i275:                                     ; preds = %ar5523_set_rxfilter.exit
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %dev5.i274 = getelementptr inbounds %struct.usb_device, ptr %167, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, ptr noundef %dev5.i274, ptr noundef nonnull @.str.107, i32 noundef 23, i32 noundef 1) #8
  br label %ar5523_set_rxfilter.exit278

ar5523_set_rxfilter.exit278:                      ; preds = %if.then.i275, %ar5523_set_rxfilter.exit
  %call.i.i276 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 51, ptr noundef nonnull %rxfilter.i273, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rxfilter.i273) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %led.i) #8
  %168 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, ptr %led.i, i32 0, i32 1
  %169 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %led.i, align 4
  %170 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %168, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then.i280)) #8
          to label %ar5523_set_ledsteady.exit [label %if.then.i280], !srcloc !581

if.then.i280:                                     ; preds = %ar5523_set_rxfilter.exit278
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %dev5.i279 = getelementptr inbounds %struct.usb_device, ptr %172, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, ptr noundef %dev5.i279, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112) #8
  br label %ar5523_set_ledsteady.exit

ar5523_set_ledsteady.exit:                        ; preds = %if.then.i280, %ar5523_set_rxfilter.exit278
  %call.i.i281 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %led.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_start.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_start, %if.then79)) #8
          to label %err [label %if.then79], !srcloc !581

if.then79:                                        ; preds = %ar5523_set_ledsteady.exit
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %dev81 = getelementptr inbounds %struct.usb_device, ptr %174, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_start.__UNIQUE_ID_ddebug387, ptr noundef %dev81, ptr noundef nonnull @.str.79) #8
  br label %err

err:                                              ; preds = %if.then79, %ar5523_set_ledsteady.exit, %if.then35, %do.body23
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %call.i266
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %led.i23 = alloca %struct.ar5523_cmd_ledsteady, align 4
  %led.i = alloca %struct.ar5523_cmd_ledsteady, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_stop.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_stop, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_stop.__UNIQUE_ID_ddebug388, ptr noundef %dev3, ptr noundef nonnull @.str.115) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat_work = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 6
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work) #8
  %mutex = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %flags = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %led.i) #8
  %4 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, ptr %led.i, i32 0, i32 1
  %5 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %led.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_stop, %if.then.i)) #8
          to label %ar5523_set_ledsteady.exit [label %if.then.i], !srcloc !581

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, ptr noundef %dev5.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.113) #8
  br label %ar5523_set_ledsteady.exit

ar5523_set_ledsteady.exit:                        ; preds = %if.then.i, %do.end
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %led.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %led.i23) #8
  %9 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, ptr %led.i23, i32 0, i32 1
  %10 = ptrtoint ptr %led.i23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %led.i23, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_stop, %if.then.i25)) #8
          to label %ar5523_set_ledsteady.exit27 [label %if.then.i25], !srcloc !581

if.then.i25:                                      ; preds = %ar5523_set_ledsteady.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev5.i24 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, ptr noundef %dev5.i24, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.113) #8
  br label %ar5523_set_ledsteady.exit27

ar5523_set_ledsteady.exit27:                      ; preds = %if.then.i25, %ar5523_set_ledsteady.exit
  %call.i.i26 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %led.i23, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led.i23) #8
  %call.i = tail call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 9, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tx_wd_timer = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 7
  %call8 = tail call i32 @del_timer_sync(ptr noundef %tx_wd_timer) #8
  %tx_wd_work = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 8
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_wd_work) #8
  %rx_refill_work = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 23
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_refill_work) #8
  tail call fastcc void @ar5523_cancel_rx_bufs(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5523_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_add_interface.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_add_interface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_add_interface.__UNIQUE_ID_ddebug391, ptr noundef %dev3, ptr noundef nonnull @.str.117) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vif4 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %vif4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_add_interface.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_add_interface, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !581

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_add_interface.__UNIQUE_ID_ddebug392, ptr noundef %dev21, ptr noundef nonnull @.str.118) #8
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cond = icmp eq i32 %9, 2
  br i1 %cond, label %sw.bb, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %vif4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vif, ptr %vif4, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end25.cleanup_crit_edge, %if.then19, %do.body7
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %if.then19 ], [ -95, %if.end25.cleanup_crit_edge ], [ -95, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_remove_interface.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_remove_interface, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_remove_interface.__UNIQUE_ID_ddebug393, ptr noundef %dev3, ptr noundef nonnull @.str.120) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vif4 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %vif4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vif4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5523_hwconfig(ptr nocapture noundef readonly %hw, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_hwconfig.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_hwconfig, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_hwconfig.__UNIQUE_ID_ddebug394, ptr noundef %dev3, ptr noundef nonnull @.str.122) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %and = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end25_crit_edge, label %do.body6

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_hwconfig.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_hwconfig, %if.then18)) #8
          to label %do.end23 [label %if.then18], !srcloc !581

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_hwconfig.__UNIQUE_ID_ddebug395, ptr noundef %dev20, ptr noundef nonnull @.str.123) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  tail call fastcc void @ar5523_flush_tx(ptr noundef %1)
  tail call fastcc void @ar5523_switch_chan(ptr noundef %1)
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %do.end.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_bss_info_changed(ptr noundef %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %bss, i32 noundef %changed) #2 align 64 {
entry:
  %led.i = alloca %struct.ar5523_cmd_ledsteady, align 4
  %associd.i = alloca %struct.ar5523_cmd_set_associd, align 4
  %rates.i = alloca %struct.ar5523_cmd_rates, align 4
  %create.i = alloca %struct.ar5523_cmd_create_connection, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_bss_info_changed.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_bss_info_changed, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_bss_info_changed.__UNIQUE_ID_ddebug398, ptr noundef %dev3, ptr noundef nonnull @.str.136) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.out_unlock_crit_edge, label %if.end6

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end6:                                          ; preds = %do.end
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss, i32 0, i32 10
  %4 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %assoc, align 1, !range !586
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %create.i) #8
  %6 = getelementptr inbounds i8, ptr %create.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %create.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %create.i, align 4
  %bssid.i = getelementptr inbounds %struct.ar5523_cmd_create_connection, ptr %create.i, i32 0, i32 1
  %9 = ptrtoint ptr %bssid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bssid.i, align 4
  %size.i = getelementptr inbounds %struct.ar5523_cmd_create_connection, ptr %create.i, i32 0, i32 2
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 33, ptr %size.i, align 4
  %rateset.i = getelementptr inbounds %struct.ar5523_cmd_create_connection, ptr %create.i, i32 0, i32 3, i32 1
  call fastcc void @ar5523_create_rateset(ptr noundef %1, ptr noundef %bss, ptr noundef %rateset.i, i1 noundef zeroext false) #8
  %hw.i.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy.i.i, align 8
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chandef.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %14, i32 0, i32 53, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %vif.i.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vif.i.i, align 4
  %23 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bss, align 8
  %call.i.i = tail call ptr @ieee80211_find_sta(ptr noundef %22, ptr noundef %24) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev3.i.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i.i, ptr noundef nonnull @.str.148) #11
  br label %ar5523_create_connection.exit

if.end.i.i:                                       ; preds = %if.then8
  %n_bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %20, i32 0, i32 4
  %27 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_bitrates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp27.i.i = icmp sgt i32 %28, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.ar5523_create_connection.exit_crit_edge

if.end.i.i.ar5523_create_connection.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %29 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw.i.i, align 4
  %chandef6.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %chandef6.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chandef6.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %arrayidx9.i.i = getelementptr [6 x i32], ptr %call.i.i, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %20, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end13.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sta_rate_set.030.i.i = phi i32 [ %36, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %bit.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %sta_rate_set.030.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %for.body.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

for.body.i.i.if.end13.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %for.body.i.i
  %37 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitrates.i.i, align 4
  %bitrate.i.i = getelementptr %struct.ieee80211_rate, ptr %38, i32 %bit.028.i.i, i32 1
  %39 = ptrtoint ptr %bitrate.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bitrate.i.i, align 4
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.313)
  switch i16 %40, label %if.then11.i.i.if.end13.i.i_crit_edge [
    i16 60, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge
    i16 90, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge100
    i16 120, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge101
    i16 180, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge102
    i16 240, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge103
    i16 360, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge104
    i16 480, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge105
    i16 540, label %if.then11.i.i.ar5523_create_connection.exit_crit_edge106
  ]

if.then11.i.i.ar5523_create_connection.exit_crit_edge106: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge105: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge104: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge103: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge102: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge101: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge100: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.ar5523_create_connection.exit_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

if.then11.i.i.if.end13.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i.if.end13.i.i_crit_edge, %for.body.i.i.if.end13.i.i_crit_edge
  %shr.i.i = lshr i32 %sta_rate_set.030.i.i, 1
  %inc.i.i = add nuw nsw i32 %bit.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %28
  br i1 %exitcond.not.i.i, label %if.end13.i.i.ar5523_create_connection.exit_crit_edge, label %if.end13.i.i.for.body.i.i_crit_edge

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end13.i.i.ar5523_create_connection.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_create_connection.exit

ar5523_create_connection.exit:                    ; preds = %if.end13.i.i.ar5523_create_connection.exit_crit_edge, %if.then11.i.i.ar5523_create_connection.exit_crit_edge, %if.then11.i.i.ar5523_create_connection.exit_crit_edge100, %if.then11.i.i.ar5523_create_connection.exit_crit_edge101, %if.then11.i.i.ar5523_create_connection.exit_crit_edge102, %if.then11.i.i.ar5523_create_connection.exit_crit_edge103, %if.then11.i.i.ar5523_create_connection.exit_crit_edge104, %if.then11.i.i.ar5523_create_connection.exit_crit_edge105, %if.then11.i.i.ar5523_create_connection.exit_crit_edge106, %if.end.i.i.ar5523_create_connection.exit_crit_edge, %do.end.i.i
  %retval.3.i.i = phi i32 [ 1, %do.end.i.i ], [ 1, %if.end.i.i.ar5523_create_connection.exit_crit_edge ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge100 ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge101 ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge102 ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge103 ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge104 ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge105 ], [ 3, %if.then11.i.i.ar5523_create_connection.exit_crit_edge106 ], [ 1, %if.end13.i.i.ar5523_create_connection.exit_crit_edge ]
  %wlanmode.i = getelementptr inbounds %struct.ar5523_cmd_create_connection, ptr %create.i, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %wlanmode.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %retval.3.i.i, ptr %wlanmode.i, align 1
  %call.i1.i = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %create.i, i32 noundef 53, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %create.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool10.not = icmp eq i32 %call.i1.i, 0
  br i1 %tobool10.not, label %if.end24, label %do.body12

do.body12:                                        ; preds = %ar5523_create_connection.exit
  %flags = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool14.not = icmp eq i32 %45, 0
  br i1 %tobool14.not, label %do.end18, label %do.body12.out_unlock_crit_edge

do.body12.out_unlock_crit_edge:                   ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.137) #11
  br label %out_unlock

if.end24:                                         ; preds = %ar5523_create_connection.exit
  call void @llvm.lifetime.start.p0(i64 45, ptr nonnull %rates.i) #8
  %48 = getelementptr inbounds i8, ptr %rates.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 41)
  %50 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %rates.i, align 4
  %size.i94 = getelementptr inbounds %struct.ar5523_cmd_rates, ptr %rates.i, i32 0, i32 2
  %51 = ptrtoint ptr %size.i94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 33, ptr %size.i94, align 4
  %rateset.i95 = getelementptr inbounds %struct.ar5523_cmd_rates, ptr %rates.i, i32 0, i32 3
  call fastcc void @ar5523_create_rateset(ptr noundef %1, ptr noundef %bss, ptr noundef %rateset.i95, i1 noundef zeroext true) #8
  %call.i.i96 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 39, ptr noundef nonnull %rates.i, i32 noundef 45, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 45, ptr nonnull %rates.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %tobool26.not = icmp eq i32 %call.i.i96, 0
  br i1 %tobool26.not, label %if.end41, label %do.body28

do.body28:                                        ; preds = %if.end24
  %flags29 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags29, align 4
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool31.not = icmp eq i32 %54, 0
  br i1 %tobool31.not, label %do.end35, label %do.body28.out_unlock_crit_edge

do.body28.out_unlock_crit_edge:                   ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end35:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.139) #11
  br label %out_unlock

if.end41:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %associd.i) #8
  %57 = getelementptr inbounds %struct.ar5523_cmd_set_associd, ptr %associd.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.ar5523_cmd_set_associd, ptr %associd.i, i32 0, i32 2
  %59 = getelementptr inbounds %struct.ar5523_cmd_set_associd, ptr %associd.i, i32 0, i32 4
  %aid.i = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss, i32 0, i32 13
  %60 = call ptr @memset(ptr %associd.i, i32 0, i32 16)
  %61 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %aid.i, align 2
  %conv.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv.i, ptr %57, align 4
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 59, ptr %58, align 4
  %65 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bss, align 8
  %67 = call ptr @memcpy(ptr %59, ptr %66, i32 6)
  %call.i.i97 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 34, ptr noundef nonnull %associd.i, i32 noundef 22, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %associd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool43.not = icmp eq i32 %call.i.i97, 0
  br i1 %tobool43.not, label %if.end58, label %do.body45

do.body45:                                        ; preds = %if.end41
  %flags46 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags46, align 4
  %70 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool48.not = icmp eq i32 %70, 0
  br i1 %tobool48.not, label %do.end52, label %do.body45.out_unlock_crit_edge

do.body45.out_unlock_crit_edge:                   ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end52:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.142) #11
  br label %out_unlock

if.end58:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ar5523_set_ledsteady(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  %flags60 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags60) #8
  %stat_work = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 6
  tail call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %stat_work, i32 noundef 100) #8
  br label %out_unlock

if.else:                                          ; preds = %if.end6
  %stat_work61 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 6
  %call62 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %stat_work61) #8
  %flags63 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags63) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %led.i) #8
  %73 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, ptr %led.i, i32 0, i32 1
  %74 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %led.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %73, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_bss_info_changed, %if.then.i)) #8
          to label %ar5523_set_ledsteady.exit [label %if.then.i], !srcloc !581

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, ptr noundef %dev5.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.113) #8
  br label %ar5523_set_ledsteady.exit

ar5523_set_ledsteady.exit:                        ; preds = %if.then.i, %if.else
  %call.i.i98 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %led.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led.i) #8
  br label %out_unlock

out_unlock:                                       ; preds = %ar5523_set_ledsteady.exit, %if.end58, %do.end52, %do.body45.out_unlock_crit_edge, %do.end35, %do.body28.out_unlock_crit_edge, %do.end18, %do.body12.out_unlock_crit_edge, %do.end.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #2 align 64 {
entry:
  %rxfilter.i13 = alloca %struct.ar5523_cmd_rx_filter, align 4
  %rxfilter.i = alloca %struct.ar5523_cmd_rx_filter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_configure_filter.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_configure_filter, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_configure_filter.__UNIQUE_ID_ddebug399, ptr noundef %dev3, ptr noundef nonnull @.str.151) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call fastcc void @ar5523_flush_tx(ptr noundef %1)
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_flags, align 4
  %and = and i32 %5, 70
  store i32 %and, ptr %total_flags, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rxfilter.i) #8
  %6 = getelementptr inbounds %struct.ar5523_cmd_rx_filter, ptr %rxfilter.i, i32 0, i32 1
  %7 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rxfilter.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_configure_filter, %if.then.i)) #8
          to label %ar5523_set_rxfilter.exit [label %if.then.i], !srcloc !581

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, ptr noundef %dev5.i, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef 0) #8
  br label %ar5523_set_rxfilter.exit

ar5523_set_rxfilter.exit:                         ; preds = %if.then.i, %do.end
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 51, ptr noundef nonnull %rxfilter.i, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rxfilter.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rxfilter.i13) #8
  %11 = getelementptr inbounds %struct.ar5523_cmd_rx_filter, ptr %rxfilter.i13, i32 0, i32 1
  %12 = ptrtoint ptr %rxfilter.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 55, ptr %rxfilter.i13, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_configure_filter, %if.then.i15)) #8
          to label %ar5523_set_rxfilter.exit17 [label %if.then.i15], !srcloc !581

if.then.i15:                                      ; preds = %ar5523_set_rxfilter.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev5.i14 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, ptr noundef %dev5.i14, ptr noundef nonnull @.str.107, i32 noundef 55, i32 noundef 1) #8
  br label %ar5523_set_rxfilter.exit17

ar5523_set_rxfilter.exit17:                       ; preds = %if.then.i15, %ar5523_set_rxfilter.exit
  %call.i.i16 = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 51, ptr noundef nonnull %rxfilter.i13, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rxfilter.i13) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar5523_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #2 align 64 {
entry:
  %write.i = alloca %struct.ar5523_write_mac, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_rts_threshold.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_set_rts_threshold, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_rts_threshold.__UNIQUE_ID_ddebug389, ptr noundef %dev3, ptr noundef nonnull @.str.153) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %write.i) #8
  %4 = getelementptr inbounds i8, ptr %write.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %write.i, align 4
  %len.i = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i, i32 0, i32 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.ar5523_write_mac, ptr %write.i, i32 0, i32 2
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %value, ptr %data.i, align 4
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %write.i, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.ar5523_config.exit_crit_edge, label %do.body.i

do.end.ar5523_config.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit

do.body.i:                                        ; preds = %do.end
  %flags.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.ar5523_config.exit_crit_edge

do.body.i.ar5523_config.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_config.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.90, i32 noundef 8) #11
  br label %ar5523_config.exit

ar5523_config.exit:                               ; preds = %do.end.i, %do.body.i.ar5523_config.exit_crit_edge, %do.end.ar5523_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %write.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_flush.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_flush, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_flush.__UNIQUE_ID_ddebug390, ptr noundef %dev4, ptr noundef nonnull @.str.155) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @ar5523_flush_tx(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_switch_chan(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  %qinfo.i = alloca %struct.ar5523_cmd_txq_setup, align 4
  %qid.i = alloca i32, align 4
  %reset.i = alloca %struct.ar5523_cmd_reset, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %reset.i) #8
  %2 = getelementptr inbounds %struct.ar5523_cmd_reset, ptr %reset.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ar5523_cmd_reset, ptr %reset.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ar5523_cmd_reset, ptr %reset.i, i32 0, i32 5
  %5 = getelementptr inbounds %struct.ar5523_cmd_reset, ptr %reset.i, i32 0, i32 6
  %6 = getelementptr inbounds i8, ptr %reset.i, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5120, ptr %reset.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_chan.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_switch_chan, %if.then.i)) #8
          to label %ar5523_set_chan.exit [label %if.then.i], !srcloc !581

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ar, align 4
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef.i, align 4
  %center_freq10.i = getelementptr inbounds %struct.ieee80211_channel, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %center_freq10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %center_freq10.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_chan.__UNIQUE_ID_ddebug363, ptr noundef %dev6.i, ptr noundef nonnull @.str.101, i32 noundef 5120, i32 noundef %22) #8
  br label %ar5523_set_chan.exit

ar5523_set_chan.exit:                             ; preds = %if.then.i, %entry
  %call.i.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 53, ptr noundef nonnull %reset.i, i32 noundef 28, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %reset.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %ar5523_set_chan.exit
  %flags = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not = icmp eq i32 %25, 0
  br i1 %tobool2.not, label %do.end, label %do.body.out_err_crit_edge

do.body.out_err_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.92, i32 noundef %call.i.i) #11
  br label %out_err

if.end8:                                          ; preds = %ar5523_set_chan.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qid.i) #8
  %28 = ptrtoint ptr %qid.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qid.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_reset_tx_queues.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_switch_chan, %if.then.i5)) #8
          to label %ar5523_reset_tx_queues.exit [label %if.then.i5], !srcloc !581

if.then.i5:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar, align 4
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_reset_tx_queues.__UNIQUE_ID_ddebug362, ptr noundef %dev3.i, ptr noundef nonnull @.str.103) #8
  br label %ar5523_reset_tx_queues.exit

ar5523_reset_tx_queues.exit:                      ; preds = %if.then.i5, %if.end8
  %call.i.i6 = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 59, ptr noundef nonnull %qid.i, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %tobool10.not = icmp eq i32 %call.i.i6, 0
  br i1 %tobool10.not, label %if.end25, label %do.body12

do.body12:                                        ; preds = %ar5523_reset_tx_queues.exit
  %flags13 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %31 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags13, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not = icmp eq i32 %33, 0
  br i1 %tobool15.not, label %do.end19, label %do.body12.out_err_crit_edge

do.body12.out_err_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.end19:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ar, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.95, i32 noundef %call.i.i6) #11
  br label %out_err

if.end25:                                         ; preds = %ar5523_reset_tx_queues.exit
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %qinfo.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_queue_init.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_switch_chan, %if.then.i8)) #8
          to label %ar5523_queue_init.exit [label %if.then.i8], !srcloc !581

if.then.i8:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ar, align 4
  %dev3.i7 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_queue_init.__UNIQUE_ID_ddebug364, ptr noundef %dev3.i7, ptr noundef nonnull @.str.105) #8
  br label %ar5523_queue_init.exit

ar5523_queue_init.exit:                           ; preds = %if.then.i8, %if.end25
  %38 = ptrtoint ptr %qinfo.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %qinfo.i, align 4
  %len.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 1
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 28, ptr %len.i, align 4
  %attr.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2
  %40 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %attr.i, align 4
  %aifs.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %aifs.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %aifs.i, align 4
  %logcwmin.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %logcwmin.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %logcwmin.i, align 4
  %logcwmax.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %logcwmax.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 10, ptr %logcwmax.i, align 4
  %bursttime.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %bursttime.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %bursttime.i, align 4
  %mode.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %mode.i, align 4
  %qflags.i = getelementptr inbounds %struct.ar5523_cmd_txq_setup, ptr %qinfo.i, i32 0, i32 2, i32 6
  %46 = ptrtoint ptr %qflags.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %qflags.i, align 4
  %call.i.i9 = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 58, ptr noundef nonnull %qinfo.i, i32 noundef 36, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %qinfo.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool27.not = icmp eq i32 %call.i.i9, 0
  br i1 %tobool27.not, label %ar5523_queue_init.exit.out_err_crit_edge, label %do.body29

ar5523_queue_init.exit.out_err_crit_edge:         ; preds = %ar5523_queue_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.body29:                                        ; preds = %ar5523_queue_init.exit
  %flags30 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %47 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags30, align 4
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool32.not = icmp eq i32 %49, 0
  br i1 %tobool32.not, label %do.end36, label %do.body29.out_err_crit_edge

do.body29.out_err_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.end36:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ar, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.98, i32 noundef %call.i.i9) #11
  br label %out_err

out_err:                                          ; preds = %do.end36, %do.body29.out_err_crit_edge, %ar5523_queue_init.exit.out_err_crit_edge, %do.end19, %do.body12.out_err_crit_edge, %do.end, %do.body.out_err_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_set_ledsteady(ptr noundef %ar, i32 noundef %lednum, i32 noundef %ledmode) unnamed_addr #2 align 64 {
entry:
  %led = alloca %struct.ar5523_cmd_ledsteady, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %led) #8
  %0 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, ptr %led, i32 0, i32 1
  %1 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %lednum, ptr %led, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ledmode, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_set_ledsteady, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lednum)
  %cmp = icmp eq i32 %lednum, 0
  %cond = select i1 %cmp, ptr @.str.110, ptr @.str.111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ledmode)
  %tobool6.not = icmp eq i32 %ledmode, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.113, ptr @.str.112
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, ptr noundef %dev5, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond, ptr noundef nonnull %cond7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 24, ptr noundef nonnull %led, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef %code, ptr nocapture noundef readonly %idata, i32 noundef %ilen, ptr noundef %odata, i32 noundef %olen, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_cmd = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5
  %add1 = add i32 %ilen, 35
  %and = and i32 %add1, -4
  %buf_tx = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %buf_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_tx, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %1, align 4
  %code2 = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %code, ptr %code2, align 4
  %priv = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %priv, align 4
  %and3 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %magic = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %magic, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ilen)
  %tobool4.not = icmp eq i32 %ilen, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.ar5523_cmd_hdr, ptr %1, i32 1
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %idata, i32 %ilen)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %odata7 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %odata7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %odata, ptr %odata7, align 4
  %olen8 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %olen8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %olen, ptr %olen8, align 4
  %flags9 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_cmd.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_cmd, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !581

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_cmd.__UNIQUE_ID_ddebug359, ptr noundef %dev14, ptr noundef nonnull @.str.81, i32 noundef %code) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end6
  %urb_tx = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %urb_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_tx, align 4
  %16 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ar, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or = or i32 %shl.i, -1073709056
  %20 = ptrtoint ptr %buf_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf_tx, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ar5523_cmd_tx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tx_cmd, ptr %context4.i, align 4
  %28 = load ptr, ptr %urb_tx, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %transfer_flags, align 4
  %or21 = or i32 %30, 4
  store i32 %or21, ptr %transfer_flags, align 4
  %31 = load ptr, ptr %urb_tx, align 4
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end39, label %do.body26

do.body26:                                        ; preds = %do.end
  %flags27 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %32 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags27, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool29.not = icmp eq i32 %34, 0
  br i1 %tobool29.not, label %do.end33, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ar, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.82, i32 noundef %code, i32 noundef %call23) #11
  br label %cleanup

if.end39:                                         ; preds = %do.end
  %done = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 7
  %call40 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.if.end57_crit_edge

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then42:                                        ; preds = %if.end39
  %37 = ptrtoint ptr %odata7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %odata7, align 4
  %flags45 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %38 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags45, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool47.not = icmp eq i32 %40, 0
  br i1 %tobool47.not, label %do.end51, label %if.then42.do.end56_crit_edge

if.then42.do.end56_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end51:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ar, align 4
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.84, i32 noundef %code) #11
  br label %do.end56

do.end56:                                         ; preds = %do.end51, %if.then42.do.end56_crit_edge
  %res = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 6
  %43 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -110, ptr %res, align 4
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end39.if.end57_crit_edge
  %res58 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 5, i32 6
  %44 = ptrtoint ptr %res58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %res58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end33, %do.body26.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %if.end57 ], [ %call23, %do.end33 ], [ %call23, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_cmd_tx_cb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %do.end, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.86, i32 noundef %5) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  br label %cleanup.sink.split

if.end10:                                         ; preds = %entry
  %flags11 = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags11, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10.cleanup.sink.split_crit_edge, %do.end8
  %.sink = phi i32 [ %12, %do.end8 ], [ 0, %if.end10.cleanup.sink.split_crit_edge ]
  %res14 = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %res14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %res14, align 4
  %done15 = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %done15) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_cancel_rx_bufs(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data_list_lock = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 19
  %call328 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_data_list_lock) #8
  %rx_data_used = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 21
  %0 = ptrtoint ptr %rx_data_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_data_used, align 4
  %cmp.i.not29 = icmp eq ptr %1, %rx_data_used
  br i1 %cmp.i.not29, label %entry.if.end.thread_crit_edge, label %if.end.lr.ph

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.lr.ph:                                     ; preds = %entry
  %rx_data_free = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 20
  %rx_data_free_cnt = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 22
  br label %if.end

if.end.thread:                                    ; preds = %list_move.exit.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %call3.lcssa = phi i32 [ %call328, %entry.if.end.thread_crit_edge ], [ %call3, %list_move.exit.if.end.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_data_list_lock, i32 noundef %call3.lcssa) #8
  br label %do.end14

if.end:                                           ; preds = %list_move.exit.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %19, %list_move.exit.if.end_crit_edge ]
  %call330 = phi i32 [ %call328, %if.end.lr.ph ], [ %call3, %list_move.exit.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_data_list_lock, i32 noundef %call330) #8
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %if.end.do.end14_crit_edge, label %if.end11

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end11:                                         ; preds = %if.end
  %urb = getelementptr inbounds %struct.ar5523_rx_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #8
  %call.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %2) #8
  br i1 %call.i.i23, label %if.end.i.i, label %if.end11.__list_del_entry.exit.i_crit_edge

if.end11.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end11.__list_del_entry.exit.i_crit_edge
  %11 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_data_free, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %2, ptr noundef %rx_data_free, ptr noundef %12) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %2, ptr %prev1.i.i2.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_data_free, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %rx_data_free to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %2, ptr %rx_data_free, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_free_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rx_data_free_cnt, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_free_cnt, ptr %rx_data_free_cnt, i32 1, ptr elementtype(i32) %rx_data_free_cnt) #8, !srcloc !580
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_data_list_lock) #8
  %18 = ptrtoint ptr %rx_data_used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %rx_data_used, align 4
  %cmp.i.not = icmp eq ptr %19, %rx_data_used
  br i1 %cmp.i.not, label %list_move.exit.if.end.thread_crit_edge, label %list_move.exit.if.end_crit_edge

list_move.exit.if.end_crit_edge:                  ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

list_move.exit.if.end.thread_crit_edge:           ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

do.end14:                                         ; preds = %if.end.do.end14_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_flush_tx(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ar5523_tx_work_locked(ptr noundef %ar)
  %flags = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end60_crit_edge

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 931) #8
  %tx_nr_pending = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %3 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %tx_nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end.if.end60_crit_edge, label %if.then14

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %tx_flush_waitq = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 13
  %call1689 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %call.i.i7890 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %6 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tx_nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not91 = icmp eq i32 %7, 0
  br i1 %tobool20.not91, label %if.end41.thread, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  br label %cleanup

if.end41.thread:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %tx_flush_waitq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end60

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %__ret15.192 = phi i32 [ %__ret15.1, %cleanup.cleanup_crit_edge ], [ 300, %if.then14.cleanup_crit_edge ]
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret15.192) #8
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %call.i.i78 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %8 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %tx_nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool25.not = icmp eq i32 %call38, 0
  %10 = select i1 %tobool20.not, i1 %tobool25.not, i1 false
  %__ret15.1 = select i1 %10, i32 1, i32 %call38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %tobool31.not = icmp eq i32 %__ret15.1, 0
  %11 = select i1 %tobool20.not, i1 true, i1 %tobool31.not
  br i1 %11, label %if.end41, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %phi.cmp = icmp eq i32 %__ret15.1, 0
  call void @finish_wait(ptr noundef %tx_flush_waitq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %do.body45, label %if.end41.if.end60_crit_edge

if.end41.if.end60_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.body45:                                        ; preds = %if.end41
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool48.not = icmp eq i32 %14, 0
  br i1 %tobool48.not, label %do.end52, label %do.body45.if.end60_crit_edge

do.body45.if.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end52:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ar, align 4
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  %tx_nr_total = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 14
  %call.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_total, i32 noundef 4) #8
  %17 = ptrtoint ptr %tx_nr_total to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_nr_total, align 4
  %call.i.i82 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %19 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %tx_nr_pending, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.124, i32 noundef %18, i32 noundef %20) #11
  br label %if.end60

if.end60:                                         ; preds = %do.end52, %do.body45.if.end60_crit_edge, %if.end41.if.end60_crit_edge, %if.end41.thread, %if.end.if.end60_crit_edge, %entry.if.end60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_tx_work_locked(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx_work_locked.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx_work_locked, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx_work_locked.__UNIQUE_ID_ddebug379, ptr noundef %dev4, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.126) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %tx_data_list_lock = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 12
  %call12216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_data_list_lock) #8
  %tx_queue_pending = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 10
  %2 = ptrtoint ptr %tx_queue_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tx_queue_pending, align 4
  %cmp.i.not217 = icmp eq ptr %3, %tx_queue_pending
  br i1 %cmp.i.not217, label %do.end6.if.end21.thread_crit_edge, label %if.then19.lr.ph

do.end6.if.end21.thread_crit_edge:                ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread

if.then19.lr.ph:                                  ; preds = %do.end6
  %flags43 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %tx_queue_submitted = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 11
  %prev.i200 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 11, i32 1
  %tx_wd_timer = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 7
  %tx_nr_pending = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 15
  %hw131 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 1
  br label %if.then19

if.end21.thread:                                  ; preds = %do.cond133.if.end21.thread_crit_edge, %do.end6.if.end21.thread_crit_edge
  %call12.lcssa = phi i32 [ %call12216, %do.end6.if.end21.thread_crit_edge ], [ %call12, %do.cond133.if.end21.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_data_list_lock, i32 noundef %call12.lcssa) #8
  br label %do.end134

if.then19:                                        ; preds = %do.cond133.if.then19_crit_edge, %if.then19.lr.ph
  %4 = phi ptr [ %3, %if.then19.lr.ph ], [ %81, %do.cond133.if.then19_crit_edge ]
  %call12218 = phi i32 [ %call12216, %if.then19.lr.ph ], [ %call12, %do.cond133.if.then19_crit_edge ]
  %call.i.i199 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i199, label %if.end.i.i, label %if.then19.if.end21_crit_edge

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.i, %if.then19.if.end21_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_data_list_lock, i32 noundef %call12218) #8
  %tobool23.not = icmp eq ptr %4, null
  br i1 %tobool23.not, label %if.end21.do.end134_crit_edge, label %if.end25

if.end21.do.end134_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134

if.end25:                                         ; preds = %if.end21
  %add.ptr29 = getelementptr i8, ptr %4, i32 -32
  %len = getelementptr i8, ptr %4, i32 52
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call30 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end25.do.cond133.sink.split_crit_edge, label %if.end33

if.end25.do.cond133.sink.split_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond133.sink.split

if.end33:                                         ; preds = %if.end25
  %add.ptr = getelementptr i8, ptr %4, i32 -8
  %ar34 = getelementptr inbounds %struct.ar5523_tx_data, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %ar34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ar, ptr %ar34, align 4
  %urb35 = getelementptr inbounds %struct.ar5523_tx_data, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %urb35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call30, ptr %urb35, align 4
  %call36 = tail call ptr @skb_push(ptr noundef %add.ptr29, i32 noundef 28) #8
  %call37 = tail call ptr @skb_push(ptr noundef %add.ptr29, i32 noundef 4) #8
  %17 = ptrtoint ptr %call37 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %call37, align 1
  %flags38 = getelementptr inbounds %struct.ar5523_chunk, ptr %call37, i32 0, i32 1
  %18 = ptrtoint ptr %flags38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %flags38, align 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %conv40 = trunc i32 %20 to i16
  %length = getelementptr inbounds %struct.ar5523_chunk, ptr %call37, i32 0, i32 2
  %21 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %conv40, ptr %length, align 1
  %22 = load i32, ptr %len, align 4
  %23 = ptrtoint ptr %call36 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %call36, align 1
  %msgid = getelementptr inbounds %struct.ar5523_tx_desc, ptr %call36, i32 0, i32 1
  %24 = ptrtoint ptr %msgid to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 2, ptr %msgid, align 1
  %buflen = getelementptr inbounds %struct.ar5523_tx_desc, ptr %call36, i32 0, i32 6
  %25 = ptrtoint ptr %buflen to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %14, ptr %buflen, align 1
  %type = getelementptr inbounds %struct.ar5523_tx_desc, ptr %call36, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 15, ptr %type, align 1
  %flags42 = getelementptr inbounds %struct.ar5523_tx_desc, ptr %call36, i32 0, i32 5
  %27 = ptrtoint ptr %flags42 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 16777216, ptr %flags42, align 1
  %28 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags43, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool45.not = icmp eq i32 %30, 0
  %spec.select = select i1 %tobool45.not, i32 -1, i32 2
  %31 = getelementptr inbounds %struct.ar5523_tx_desc, ptr %call36, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %spec.select, ptr %31, align 1
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr, align 8
  %and = lshr i32 %34, 25
  %35 = and i32 %and, 16
  %txqid54 = getelementptr inbounds %struct.ar5523_tx_desc, ptr %call36, i32 0, i32 3
  %36 = ptrtoint ptr %txqid54 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %txqid54, align 1
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 13
  %37 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 64, ptr %transfer_flags, align 4
  %38 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ar, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i = shl i32 %41, 8
  %or58 = or i32 %shl.i, -1073676288
  %data59 = getelementptr i8, ptr %4, i32 148
  %42 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data59, align 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %39, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or58, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 14
  %48 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %43, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %45, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 28
  %50 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ar5523_data_tx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call30, i32 0, i32 27
  %51 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr29, ptr %context4.i, align 4
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_data_list_lock) #8
  %52 = ptrtoint ptr %prev.i200 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i200, align 4
  %call.i.i201 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %4, ptr noundef %53, ptr noundef %tx_queue_submitted) #8
  br i1 %call.i.i201, label %if.end.i.i202, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i202:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %prev.i200 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %4, ptr %prev.i200, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tx_queue_submitted, ptr %4, align 4
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %4, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i202, %if.end33.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_data_list_lock, i32 noundef %call70) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %58, 200
  %call77 = tail call i32 @mod_timer(ptr noundef %tx_wd_timer, i32 noundef %add) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_nr_pending, i32 1, i32 3, i32 1) #8
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_nr_pending, ptr %tx_nr_pending, i32 1, ptr elementtype(i32) %tx_nr_pending) #8, !srcloc !580
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_tx_work_locked.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_tx_work_locked, %if.then90)) #8
          to label %do.end97 [label %if.then90], !srcloc !581

if.then90:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ar, align 4
  %dev92 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  %call.i.i195 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %62 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %tx_nr_pending, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_tx_work_locked.__UNIQUE_ID_ddebug380, ptr noundef %dev92, ptr noundef nonnull @.str.128, i32 noundef %63) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then90, %list_add_tail.exit
  %call98 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call30, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.end97.do.cond133_crit_edge, label %do.body101

do.end97.do.cond133_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond133

do.body101:                                       ; preds = %do.end97
  %64 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags43, align 4
  %66 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool104.not = icmp eq i32 %66, 0
  br i1 %tobool104.not, label %do.end108, label %do.body101.do.body115_crit_edge

do.body101.do.body115_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body115

do.end108:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ar, align 4
  %dev110 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.129, i32 noundef %call98) #11
  br label %do.body115

do.body115:                                       ; preds = %do.end108, %do.body101.do.body115_crit_edge
  %call123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_data_list_lock) #8
  %call.i.i203 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %4) #8
  br i1 %call.i.i203, label %if.end.i.i206, label %do.body115.list_del.exit208_crit_edge

do.body115.list_del.exit208_crit_edge:            ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit208

if.end.i.i206:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %4, align 4
  %prev1.i.i.i205 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i205, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit208

list_del.exit208:                                 ; preds = %if.end.i.i206, %do.body115.list_del.exit208_crit_edge
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_data_list_lock, i32 noundef %call123) #8
  %call.i.i198 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_nr_pending, i32 1, i32 3, i32 1) #8
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_nr_pending, ptr %tx_nr_pending, i32 1, ptr elementtype(i32) %tx_nr_pending) #8, !srcloc !582
  tail call fastcc void @ar5523_data_tx_pkt_put(ptr noundef %ar)
  tail call void @usb_free_urb(ptr noundef nonnull %call30) #8
  br label %do.cond133.sink.split

do.cond133.sink.split:                            ; preds = %list_del.exit208, %if.end25.do.cond133.sink.split_crit_edge
  %78 = ptrtoint ptr %hw131 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw131, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %79, ptr noundef %add.ptr29) #8
  br label %do.cond133

do.cond133:                                       ; preds = %do.cond133.sink.split, %do.end97.do.cond133_crit_edge
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_data_list_lock) #8
  %80 = ptrtoint ptr %tx_queue_pending to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %tx_queue_pending, align 4
  %cmp.i.not = icmp eq ptr %81, %tx_queue_pending
  br i1 %cmp.i.not, label %do.cond133.if.end21.thread_crit_edge, label %do.cond133.if.then19_crit_edge

do.cond133.if.then19_crit_edge:                   ; preds = %do.cond133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

do.cond133.if.end21.thread_crit_edge:             ; preds = %do.cond133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread

do.end134:                                        ; preds = %if.end21.do.end134_crit_edge, %if.end21.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_data_tx_cb(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %ar1 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_tx_cb.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_tx_cb, %if.then)) #8
          to label %do.body7 [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_tx_cb.__UNIQUE_ID_ddebug373, ptr noundef %dev5, ptr noundef nonnull @.str.131, i32 noundef %8) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %tx_data_list_lock = getelementptr inbounds %struct.ar5523, ptr %4, i32 0, i32 12
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_data_list_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body7.list_del.exit_crit_edge

do.body7.list_del.exit_crit_edge:                 ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body7.list_del.exit_crit_edge
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_data_list_lock, i32 noundef %call10) #8
  %status16 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %17 = ptrtoint ptr %status16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.else, label %do.body19

do.body19:                                        ; preds = %list_del.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_tx_cb.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_tx_cb, %if.then31)) #8
          to label %do.end37 [label %if.then31], !srcloc !581

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %status16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_tx_cb.__UNIQUE_ID_ddebug374, ptr noundef %dev33, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef %22) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call fastcc void @ar5523_data_tx_pkt_put(ptr noundef %4)
  %hw = getelementptr inbounds %struct.ar5523, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %24, ptr noundef %1) #8
  br label %if.end40

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 32) #8
  %hw39 = getelementptr inbounds %struct.ar5523, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %hw39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw39, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %26, ptr noundef %1) #8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %do.end37
  tail call void @usb_free_urb(ptr noundef %urb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_data_tx_pkt_put(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_nr_total = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_total, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tx_nr_total, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_nr_total, ptr %tx_nr_total, i32 1, ptr elementtype(i32) %tx_nr_total) #8, !srcloc !582
  %tx_nr_pending = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 15
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !587
  tail call void @llvm.prefetch.p0(ptr %tx_nr_pending, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_nr_pending, ptr %tx_nr_pending, i32 1, ptr elementtype(i32) %tx_nr_pending) #8, !srcloc !588
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !589
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_wd_timer = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 7
  %call1 = tail call i32 @del_timer(ptr noundef %tx_wd_timer) #8
  %tx_flush_waitq = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %tx_flush_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_total, i32 noundef 4) #8
  %2 = ptrtoint ptr %tx_nr_total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_nr_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %do.body, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_tx_pkt_put.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_tx_pkt_put, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !581

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_tx_pkt_put.__UNIQUE_ID_ddebug372, ptr noundef %dev10, ptr noundef nonnull @.str.134) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %hw = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %7) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_create_rateset(ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %bss_conf, ptr nocapture noundef writeonly %rs, i1 noundef zeroext %basic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 29
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %2 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bss_conf, align 8
  %call = tail call ptr @ieee80211_find_sta(ptr noundef %1, ptr noundef %3) #8
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 24
  %4 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %basic_rates, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.144) #11
  br label %do.body4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx = getelementptr [6 x i32], ptr %call, i32 0, i32 %13
  br label %do.body4

do.body4:                                         ; preds = %if.else, %do.end
  %sta_rate_set.0.in = phi ptr [ %arrayidx, %if.else ], [ %basic_rates, %do.end ]
  %14 = ptrtoint ptr %sta_rate_set.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %sta_rate_set.0 = load i32, ptr %sta_rate_set.0.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_create_rateset.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_create_rateset, %if.then10)) #8
          to label %do.end15 [label %if.then10], !srcloc !581

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ar, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_create_rateset.__UNIQUE_ID_ddebug396, ptr noundef %dev12, ptr noundef nonnull @.str.146, i32 noundef %sta_rate_set.0) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body4
  %hw16 = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 1
  %17 = ptrtoint ptr %hw16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw16, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 8
  %chandef19 = getelementptr inbounds %struct.ieee80211_conf, ptr %18, i32 0, i32 7
  %21 = ptrtoint ptr %chandef19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chandef19, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %arrayidx22 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 %24
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx22, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp112 = icmp sgt i32 %28, 0
  br i1 %cmp112, label %do.body23.lr.ph, label %do.end15.for.end_crit_edge

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body23.lr.ph:                                  ; preds = %do.end15
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %26, i32 0, i32 1
  br label %do.body23

do.body23:                                        ; preds = %if.end78.do.body23_crit_edge, %do.body23.lr.ph
  %bit.0116 = phi i32 [ 0, %do.body23.lr.ph ], [ %inc80, %if.end78.do.body23_crit_edge ]
  %i.0115 = phi i32 [ 0, %do.body23.lr.ph ], [ %i.1, %if.end78.do.body23_crit_edge ]
  %basic_rate_set.0114 = phi i32 [ %5, %do.body23.lr.ph ], [ %shr79, %if.end78.do.body23_crit_edge ]
  %sta_rate_set.1113 = phi i32 [ %sta_rate_set.0, %do.body23.lr.ph ], [ %shr, %if.end78.do.body23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0115)
  %cmp24 = icmp sgt i32 %i.0115, 31
  br i1 %cmp24, label %do.body32, label %do.body41, !prof !590

do.body32:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ar5523/ar5523.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1207, 0\0A.popsection", ""() #8, !srcloc !591
  unreachable

do.body41:                                        ; preds = %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_create_rateset.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_create_rateset, %if.then53)) #8
          to label %do.end59 [label %if.then53], !srcloc !581

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %32, i32 %bit.0116, i32 2
  %33 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %34 to i32
  %and = and i32 %sta_rate_set.1113, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_create_rateset.__UNIQUE_ID_ddebug397, ptr noundef %dev55, ptr noundef nonnull @.str.147, i32 noundef %conv, i32 noundef %and) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body41
  %and60 = and i32 %sta_rate_set.1113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.end59.if.end78_crit_edge, label %if.then62

do.end59.if.end78_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then62:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bitrates, align 4
  %hw_value65 = getelementptr %struct.ieee80211_rate, ptr %36, i32 %bit.0116, i32 2
  %37 = ptrtoint ptr %hw_value65 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hw_value65, align 2
  %conv66 = trunc i16 %38 to i8
  %arrayidx67 = getelementptr %struct.ar5523_cmd_rateset, ptr %rs, i32 0, i32 1, i32 %i.0115
  %and68 = and i32 %basic_rate_set.0114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp ne i32 %and68, 0
  %39 = and i1 %tobool69.not, %basic
  %conv76 = or i8 %conv66, -128
  %spec.select = select i1 %39, i8 %conv76, i8 %conv66
  %40 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %spec.select, ptr %arrayidx67, align 1
  %inc = add nsw i32 %i.0115, 1
  br label %if.end78

if.end78:                                         ; preds = %if.then62, %do.end59.if.end78_crit_edge
  %i.1 = phi i32 [ %inc, %if.then62 ], [ %i.0115, %do.end59.if.end78_crit_edge ]
  %shr = lshr i32 %sta_rate_set.1113, 1
  %shr79 = lshr i32 %basic_rate_set.0114, 1
  %inc80 = add nuw nsw i32 %bit.0116, 1
  %41 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_bitrates, align 4
  %cmp = icmp slt i32 %inc80, %42
  br i1 %cmp, label %if.end78.do.body23_crit_edge, label %if.end78.for.end_crit_edge

if.end78.for.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end78.do.body23_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

for.end:                                          ; preds = %if.end78.for.end_crit_edge, %do.end15.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end15.for.end_crit_edge ], [ %i.1, %if.end78.for.end_crit_edge ]
  %conv81 = trunc i32 %i.0.lcssa to i8
  %43 = ptrtoint ptr %rs to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv81, ptr %rs, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_data_rx_cb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ar1 = getelementptr inbounds %struct.ar5523_rx_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %hw2 = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_rx_cb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !581

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_rx_cb.__UNIQUE_ID_ddebug365, ptr noundef %dev5, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.171) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %11, label %do.body10 [
    i32 0, label %if.end24
    i32 -108, label %do.end.skip_crit_edge
  ]

do.end.skip_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.body10:                                        ; preds = %do.end
  %flags = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %do.end16, label %do.body10.skip_crit_edge

do.body10.skip_crit_edge:                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %11) #11
  br label %skip

if.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %7)
  %cmp25 = icmp ult i32 %7, 84
  br i1 %cmp25, label %do.body27, label %if.end40

do.body27:                                        ; preds = %if.end24
  %flags28 = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags28, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %do.end34, label %do.body27.skip_crit_edge

do.body27.skip_crit_edge:                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.end34:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.174, i32 noundef %7) #11
  br label %skip

if.end40:                                         ; preds = %if.end24
  %skb = getelementptr inbounds %struct.ar5523_rx_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data41, align 4
  %flags42 = getelementptr inbounds %struct.ar5523_chunk, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %flags42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags42, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp43 = icmp eq i8 %29, 0
  br i1 %cmp43, label %if.end40.do.body49_crit_edge, label %lor.lhs.false

if.end40.do.body49_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

lor.lhs.false:                                    ; preds = %if.end40
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp46.not = icmp eq i8 %31, 0
  br i1 %cmp46.not, label %if.end72, label %lor.lhs.false.do.body49_crit_edge

lor.lhs.false.do.body49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.body49:                                        ; preds = %lor.lhs.false.do.body49_crit_edge, %if.end40.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_rx_cb, %if.then61)) #8
          to label %skip [label %if.then61], !srcloc !581

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %dev63 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %26, align 1
  %conv65 = zext i8 %35 to i32
  %36 = ptrtoint ptr %flags42 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags42, align 1
  %conv67 = zext i8 %37 to i32
  %length = getelementptr inbounds %struct.ar5523_chunk, ptr %26, i32 0, i32 2
  %38 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %length, align 1
  %conv68 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_rx_cb.__UNIQUE_ID_ddebug366, ptr noundef %dev63, ptr noundef nonnull @.str.176, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv68) #8
  br label %skip

if.end72:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %26, i32 %7
  %add.ptr75 = getelementptr i8, ptr %add.ptr, i32 -64
  %40 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr75, align 1
  %rxbufsz = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 24
  %42 = ptrtoint ptr %rxbufsz to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rxbufsz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp76 = icmp ugt i32 %41, %43
  br i1 %cmp76, label %do.body79, label %if.end98

do.body79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_rx_cb, %if.then91)) #8
          to label %skip [label %if.then91], !srcloc !581

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %dev93 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %add.ptr75, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_rx_cb.__UNIQUE_ID_ddebug367, ptr noundef %dev93, ptr noundef nonnull @.str.177, i32 noundef %47) #8
  br label %skip

if.end98:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool99.not = icmp eq i32 %41, 0
  br i1 %tobool99.not, label %do.body101, label %if.end119

do.body101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_rx_cb, %if.then113)) #8
          to label %skip [label %if.then113], !srcloc !581

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %dev115 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_rx_cb.__UNIQUE_ID_ddebug368, ptr noundef %dev115, ptr noundef nonnull @.str.178) #8
  br label %skip

if.end119:                                        ; preds = %if.end98
  %status120 = getelementptr inbounds %struct.ar5523_rx_desc, ptr %add.ptr75, i32 0, i32 3
  %50 = ptrtoint ptr %status120 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %status120, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp121.not = icmp eq i32 %51, 0
  br i1 %cmp121.not, label %if.end144, label %do.body124

do.body124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_rx_cb, %if.then136)) #8
          to label %skip [label %if.then136], !srcloc !581

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %dev138 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %status120 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %status120, align 1
  %56 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %add.ptr75, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_rx_cb.__UNIQUE_ID_ddebug369, ptr noundef %dev138, ptr noundef nonnull @.str.179, i32 noundef %55, i32 noundef %57) #8
  br label %skip

if.end144:                                        ; preds = %if.end119
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  %58 = ptrtoint ptr %data41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %data41, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %60, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %61 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skb, align 4
  %sub = add i32 %41, -64
  %call147 = tail call ptr @skb_put(ptr noundef %62, i32 noundef %sub) #8
  %63 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb, align 4
  %call149 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %64) #8
  %and150 = and i32 %call149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %cmp151 = icmp eq i32 %and150, 0
  br i1 %cmp151, label %if.end144.if.end183_crit_edge, label %do.body154

if.end144.if.end183_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

do.body154:                                       ; preds = %if.end144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_data_rx_cb, %if.then166)) #8
          to label %do.end171 [label %if.then166], !srcloc !581

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %dev168 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_data_rx_cb.__UNIQUE_ID_ddebug370, ptr noundef %dev168, ptr noundef nonnull @.str.180) #8
  br label %do.end171

do.end171:                                        ; preds = %if.then166, %do.body154
  %add = add i32 %call149, 3
  %and172 = and i32 %add, -4
  %sub173 = sub i32 %and172, %call149
  %67 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb, align 4
  %data175 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 19
  %69 = ptrtoint ptr %data175 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data175, align 4
  %add.ptr176 = getelementptr i8, ptr %70, i32 %sub173
  %71 = call ptr @memmove(ptr %add.ptr176, ptr %70, i32 %call149)
  %72 = load ptr, ptr %skb, align 4
  %call180 = tail call ptr @skb_pull(ptr noundef %72, i32 noundef %sub173) #8
  %73 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skb, align 4
  %call182 = tail call ptr @skb_put(ptr noundef %74, i32 noundef %sub173) #8
  br label %if.end183

if.end183:                                        ; preds = %do.end171, %if.end144.if.end183_crit_edge
  %75 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3
  %77 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %channel = getelementptr inbounds %struct.ar5523_rx_desc, ptr %add.ptr75, i32 0, i32 10
  %78 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %channel, align 1
  %conv186 = trunc i32 %79 to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 28
  %bf.shl = shl i16 %conv186, 3
  %80 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %bf.shl, ptr %freq, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %5, i32 0, i32 7
  %81 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chandef, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %conv187 = trunc i32 %84 to i8
  %band188 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 36
  %85 = ptrtoint ptr %band188 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv187, ptr %band188, align 4
  %rssi = getelementptr inbounds %struct.ar5523_rx_desc, ptr %add.ptr75, i32 0, i32 9
  %86 = ptrtoint ptr %rssi to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %rssi, align 1
  %88 = trunc i32 %87 to i8
  %conv190 = add i8 %88, -95
  %signal = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 38
  %89 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv190, ptr %signal, align 2
  %90 = load ptr, ptr %skb, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %5, ptr noundef %90) #8
  %91 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %skb, align 4
  br label %skip

skip:                                             ; preds = %if.end183, %if.then136, %do.body124, %if.then113, %do.body101, %if.then91, %do.body79, %if.then61, %do.body49, %do.end34, %do.body27.skip_crit_edge, %do.end16, %do.body10.skip_crit_edge, %do.end.skip_crit_edge
  %skb193 = getelementptr inbounds %struct.ar5523_rx_data, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %skb193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skb193, align 4
  %tobool194.not = icmp eq ptr %93, null
  br i1 %tobool194.not, label %skip.if.end198_crit_edge, label %if.then195

skip.if.end198_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.then195:                                       ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %93, i32 noundef 1) #8
  %94 = ptrtoint ptr %skb193 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %skb193, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %skip.if.end198_crit_edge
  %rx_data_list_lock.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_data_list_lock.i) #8
  %rx_data_free.i = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end198.__list_del_entry.exit.i.i_crit_edge

if.end198.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i, align 4
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end198.__list_del_entry.exit.i.i_crit_edge
  %101 = ptrtoint ptr %rx_data_free.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_data_free.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %rx_data_free.i, ptr noundef %102) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.ar5523_rx_data_put.exit_crit_edge

__list_del_entry.exit.i.i.ar5523_rx_data_put.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar5523_rx_data_put.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %1, ptr %prev1.i.i2.i.i, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %1, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %rx_data_free.i, ptr %prev3.i.i.i.i, align 4
  %106 = ptrtoint ptr %rx_data_free.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %1, ptr %rx_data_free.i, align 4
  br label %ar5523_rx_data_put.exit

ar5523_rx_data_put.exit:                          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.ar5523_rx_data_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_data_list_lock.i, i32 noundef %call2.i) #8
  %rx_data_free_cnt = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_data_free_cnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !583
  tail call void @llvm.prefetch.p0(ptr %rx_data_free_cnt, i32 1, i32 3, i32 1) #8
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_data_free_cnt, ptr %rx_data_free_cnt, i32 1, ptr elementtype(i32) %rx_data_free_cnt) #8, !srcloc !584
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %107, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !585
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %asmresult.i.i.i.i)
  %cmp200 = icmp sgt i32 %asmresult.i.i.i.i, 7
  br i1 %cmp200, label %land.lhs.true, label %ar5523_rx_data_put.exit.if.end207_crit_edge

ar5523_rx_data_put.exit.if.end207_crit_edge:      ; preds = %ar5523_rx_data_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

land.lhs.true:                                    ; preds = %ar5523_rx_data_put.exit
  %flags202 = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 2
  %108 = ptrtoint ptr %flags202 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags202, align 4
  %and1.i287 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i287)
  %tobool204.not = icmp eq i32 %and1.i287, 0
  br i1 %tobool204.not, label %land.lhs.true.if.end207_crit_edge, label %if.then205

land.lhs.true.if.end207_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

if.then205:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %wq = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 4
  %110 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wq, align 4
  %rx_refill_work = getelementptr inbounds %struct.ar5523, ptr %3, i32 0, i32 23
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %111, ptr noundef %rx_refill_work) #8
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %land.lhs.true.if.end207_crit_edge, %ar5523_rx_data_put.exit.if.end207_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar5523_cmd_rx_cb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tx_cmd = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5
  %rx_cmd_buf = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rx_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_cmd_buf, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %5, label %do.body [
    i32 0, label %if.end11
    i32 -108, label %entry.skip_crit_edge
  ]

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.body:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %do.end, label %do.body.skip_crit_edge

do.body.skip_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.184, i32 noundef %5) #11
  br label %skip

if.end11:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp12 = icmp ult i32 %13, 32
  br i1 %cmp12, label %do.body14, label %do.body28

do.body14:                                        ; preds = %if.end11
  %flags15 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags15, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %do.end21, label %do.body14.skip_crit_edge

do.body14.skip_crit_edge:                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.187) #11
  br label %skip

do.body28:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_cmd_rx_cb, %if.then33)) #8
          to label %do.end39 [label %if.then33], !srcloc !581

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %code36 = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %code36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code36, align 4
  %and = and i32 %22, 255
  %priv = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug354, ptr noundef %dev35, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.185, i32 noundef %and, i32 noundef %24) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %do.body28
  %code40 = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %code40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code40, align 4
  %and41 = and i32 %26, 255
  %trunc = trunc i32 %26 to i8
  %27 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.316)
  switch i8 %trunc, label %sw.default [
    i8 19, label %do.body60
    i8 20, label %do.body79
    i8 8, label %sw.bb122
    i8 17, label %do.body160
  ]

sw.default:                                       ; preds = %do.end39
  %priv42 = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %priv42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %priv42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp43.not = icmp eq i32 %29, 1
  br i1 %cmp43.not, label %if.end59, label %do.body45

do.body45:                                        ; preds = %sw.default
  %flags46 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags46, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool48.not = icmp eq i32 %32, 0
  br i1 %tobool48.not, label %do.end52, label %do.body45.skip_crit_edge

do.body45.skip_crit_edge:                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

do.end52:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.191, i32 noundef %and41) #11
  br label %skip

if.end59:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ar5523_read_reply(ptr noundef %1, ptr noundef %3, ptr noundef %tx_cmd)
  br label %skip

do.body60:                                        ; preds = %do.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_cmd_rx_cb, %if.then72)) #8
          to label %do.end77 [label %if.then72], !srcloc !581

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %dev74 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug355, ptr noundef %dev74, ptr noundef nonnull @.str.193) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then72, %do.body60
  %res = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %res, align 4
  %olen = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %olen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %olen, align 4
  %done = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 7
  tail call void @complete(ptr noundef %done) #8
  br label %skip

do.body79:                                        ; preds = %do.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_cmd_rx_cb, %if.then91)) #8
          to label %do.end97 [label %if.then91], !srcloc !581

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %dev93 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %tx_nr_pending = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_nr_pending, i32 noundef 4) #8
  %41 = ptrtoint ptr %tx_nr_pending to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %tx_nr_pending, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug356, ptr noundef %dev93, ptr noundef nonnull @.str.194, i32 noundef %42) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then91, %do.body79
  %flags98 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags98, align 4
  %and1.i236 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i236)
  %tobool100.not = icmp eq i32 %and1.i236, 0
  br i1 %tobool100.not, label %do.body102, label %if.else

do.body102:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_cmd_rx_cb, %if.then114)) #8
          to label %skip [label %if.then114], !srcloc !581

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev116 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug357, ptr noundef %dev116, ptr noundef nonnull @.str.195) #8
  br label %skip

if.else:                                          ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  %tx_wd_timer = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %47, 200
  %call120 = tail call i32 @mod_timer(ptr noundef %tx_wd_timer, i32 noundef %add) #8
  tail call fastcc void @ar5523_data_tx_pkt_put(ptr noundef %1)
  br label %skip

sw.bb122:                                         ; preds = %do.end39
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %49)
  %cmp123.not = icmp eq i32 %49, 36
  br i1 %cmp123.not, label %if.end138, label %do.body125

do.body125:                                       ; preds = %sw.bb122
  %flags126 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags126, align 4
  %52 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool128.not = icmp eq i32 %52, 0
  br i1 %tobool128.not, label %do.end132, label %do.body125.cleanup_crit_edge

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end132:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %dev134 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev134, ptr noundef nonnull @.str.197) #11
  br label %cleanup

if.end138:                                        ; preds = %sw.bb122
  %odata = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 3
  %55 = ptrtoint ptr %odata to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %odata, align 4
  %tobool139.not = icmp eq ptr %56, null
  br i1 %tobool139.not, label %do.body141, label %if.end154

do.body141:                                       ; preds = %if.end138
  %flags142 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %flags142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags142, align 4
  %59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool144.not = icmp eq i32 %59, 0
  br i1 %tobool144.not, label %do.end148, label %do.body141.cleanup_crit_edge

do.body141.cleanup_crit_edge:                     ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end148:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev150 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev150, ptr noundef nonnull @.str.200) #11
  br label %cleanup

if.end154:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.ar5523_cmd_hdr, ptr %3, i32 1
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr, align 4
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %56, align 1
  %olen156 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 4
  %65 = ptrtoint ptr %olen156 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %olen156, align 4
  %res157 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 6
  %66 = ptrtoint ptr %res157 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %res157, align 4
  %done158 = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 5, i32 7
  tail call void @complete(ptr noundef %done158) #8
  br label %skip

do.body160:                                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_cmd_rx_cb, %if.then172)) #8
          to label %skip [label %if.then172], !srcloc !581

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %dev174 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug358, ptr noundef %dev174, ptr noundef nonnull @.str.202) #8
  br label %skip

skip:                                             ; preds = %if.then172, %do.body160, %if.end154, %if.else, %if.then114, %do.body102, %do.end77, %if.end59, %do.end52, %do.body45.skip_crit_edge, %do.end21, %do.body14.skip_crit_edge, %do.end, %do.body.skip_crit_edge, %entry.skip_crit_edge
  %rx_cmd_urb.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 17
  %69 = ptrtoint ptr %rx_cmd_urb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_cmd_urb.i, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i = shl i32 %74, 8
  %or2.i = or i32 %shl.i.i, -1069514624
  %75 = ptrtoint ptr %rx_cmd_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_cmd_buf, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 8
  %77 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %72, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 10
  %78 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or2.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 14
  %79 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 19
  %80 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1024, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 28
  %81 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @ar5523_cmd_rx_cb, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 27
  %82 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %1, ptr %context4.i.i, align 4
  %83 = load ptr, ptr %rx_cmd_urb.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %transfer_flags.i, align 4
  %or4.i = or i32 %85, 4
  store i32 %or4.i, ptr %transfer_flags.i, align 4
  %86 = load ptr, ptr %rx_cmd_urb.i, align 4
  %call6.i = tail call i32 @usb_submit_urb(ptr noundef %86, i32 noundef 2592) #8
  %87 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %call6.i, label %do.body.i [
    i32 0, label %skip.cleanup_crit_edge
    i32 -19, label %skip.cleanup_crit_edge252
  ]

skip.cleanup_crit_edge252:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skip.cleanup_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %skip
  %flags.i = getelementptr inbounds %struct.ar5523, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flags.i, align 4
  %90 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool9.not.i = icmp eq i32 %90, 0
  br i1 %tobool9.not.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %92, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.182, i32 noundef %call6.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %skip.cleanup_crit_edge, %skip.cleanup_crit_edge252, %do.end148, %do.body141.cleanup_crit_edge, %do.end132, %do.body125.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar5523_read_reply(ptr noundef %ar, ptr nocapture noundef readonly %hdr, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %sub = add i32 %1, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %do.body17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 57, i32 noundef 9, ptr noundef null) #8
  br label %out

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ar5523_read_reply.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ar5523_read_reply, %if.then26)) #8
          to label %do.end30 [label %if.then26], !srcloc !581

if.then26:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %code = getelementptr inbounds %struct.ar5523_cmd_hdr, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %and = and i32 %5, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ar5523_read_reply.__UNIQUE_ID_ddebug353, ptr noundef %dev27, ptr noundef nonnull @.str.204, i32 noundef %and, i32 noundef %sub) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp31 = icmp ugt i32 %sub, 3
  br i1 %cmp31, label %if.then32, label %do.end30.if.end37_crit_edge

do.end30.if.end37_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.ar5523_cmd_hdr, ptr %hdr, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp34 = icmp eq i32 %7, 0
  %spec.store.select = select i1 %cmp34, i32 4, i32 %7
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %do.end30.if.end37_crit_edge
  %olen.0 = phi i32 [ %spec.store.select, %if.then32 ], [ 0, %do.end30.if.end37_crit_edge ]
  %odata = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %odata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %odata, align 4
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %if.end37.out_crit_edge, label %if.then39

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then39:                                        ; preds = %if.end37
  %olen40 = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %olen40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %olen40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %olen.0)
  %cmp41 = icmp slt i32 %11, %olen.0
  br i1 %cmp41, label %do.body43, label %if.else57

do.body43:                                        ; preds = %if.then39
  %flags = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool45.not = icmp eq i32 %14, 0
  br i1 %tobool45.not, label %do.end49, label %do.body43.do.end55_crit_edge

do.body43.do.end55_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ar, align 4
  %dev51 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.205, i32 noundef %11, i32 noundef %olen.0) #11
  br label %do.end55

do.end55:                                         ; preds = %do.end49, %do.body43.do.end55_crit_edge
  %17 = ptrtoint ptr %olen40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %olen40, align 4
  %res = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %cmd, i32 0, i32 6
  %18 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -75, ptr %res, align 4
  br label %out

if.else57:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %olen40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %olen.0, ptr %olen40, align 4
  %arrayidx60 = getelementptr %struct.ar5523_cmd_hdr, ptr %hdr, i32 1, i32 1
  %20 = call ptr @memcpy(ptr %9, ptr %arrayidx60, i32 %olen.0)
  %res61 = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %cmd, i32 0, i32 6
  %21 = ptrtoint ptr %res61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %res61, align 4
  br label %out

out:                                              ; preds = %if.else57, %do.end55, %if.end37.out_crit_edge, %do.end
  %done = getelementptr inbounds %struct.ar5523_tx_cmd, ptr %cmd, i32 0, i32 7
  tail call void @complete(ptr noundef %done) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ar5523_get_capability(ptr noundef %ar, i32 noundef %cap, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %cap_be = alloca i32, align 4
  %val_be = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_be) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_be) #8
  %0 = ptrtoint ptr %val_be to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_be, align 4, !annotation !579
  %1 = ptrtoint ptr %cap_be to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cap, ptr %cap_be, align 4
  %call.i = call fastcc i32 @ar5523_cmd(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull %cap_be, i32 noundef 4, ptr noundef nonnull %val_be, i32 noundef 4, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ar5523, ptr %ar, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.304, i32 noundef %cap) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %val_be to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val_be, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_be) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_be) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 287)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 287)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !345, !346, !348, !349, !351, !352, !354, !355, !357, !358, !360, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !377, !378, !379, !381, !382, !384, !385, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !412, !414, !415, !416, !418, !419, !421, !422, !423, !424, !426, !427, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522, !524, !525, !526, !528, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !548, !549, !550, !551, !553, !554, !555, !556, !558, !559, !560, !562, !564, !566, !567, !568}
!llvm.module.flags = !{!570, !571, !572, !573, !574, !575, !576, !577}
!llvm.ident = !{!578}

!0 = !{ptr @__initcall__kmod_ar5523__406_1798_ar5523_driver_init6, !1, !"__initcall__kmod_ar5523__406_1798_ar5523_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1798, i32 1}
!2 = !{ptr @__exitcall_ar5523_driver_exit, !1, !"__exitcall_ar5523_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file407, !4, !"__UNIQUE_ID_file407", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1800, i32 1}
!5 = !{ptr @__UNIQUE_ID_license408, !4, !"__UNIQUE_ID_license408", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_firmware409, !7, !"__UNIQUE_ID_firmware409", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1801, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ar5523_driver, !10, !"ar5523_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1791, i32 26}
!11 = !{ptr @ar5523_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1604, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ar5523_probe.__key.2, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1606, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ar5523_probe.__key.4, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ar5523_probe.__key.6, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1607, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ar5523_probe.__key.8, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1608, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ar5523_probe.__key.10, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1609, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ar5523_probe.__key.12, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1612, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ar5523_probe.__key.14, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1615, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ar5523_probe.__key.16, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1618, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ar5523_probe.__key.18, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1621, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1623, i32 11}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1625, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ar5523_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @ar5523_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1631, i32 3}
!52 = !{ptr @ar5523_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ar5523_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1637, i32 3}
!56 = !{ptr @ar5523_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ar5523_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1643, i32 3}
!60 = !{ptr @ar5523_probe._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ar5523_probe._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1649, i32 3}
!64 = !{ptr @ar5523_probe._entry.35, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ar5523_probe._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1658, i32 3}
!68 = !{ptr @ar5523_probe._entry.38, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ar5523_probe._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1664, i32 3}
!72 = !{ptr @ar5523_probe._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ar5523_probe._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ar5523_probe._entry.44, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1670, i32 3}
!76 = !{ptr @ar5523_probe._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1676, i32 3}
!79 = !{ptr @ar5523_probe._entry.46, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ar5523_probe._entry_ptr.48, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1680, i32 2}
!83 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ar5523_probe._entry.49, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @ar5523_probe._entry_ptr.52, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1702, i32 3}
!88 = !{ptr @ar5523_probe._entry.53, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ar5523_probe._entry_ptr.55, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1706, i32 2}
!92 = !{ptr @ar5523_probe._entry.56, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ar5523_probe._entry_ptr.58, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1497, i32 28}
!96 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1498, i32 3}
!98 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ar5523_load_firmware._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ar5523_load_firmware._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1532, i32 4}
!103 = !{ptr @ar5523_load_firmware._entry.62, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ar5523_load_firmware._entry_ptr.64, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1543, i32 4}
!107 = !{ptr @ar5523_load_firmware._entry.65, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ar5523_load_firmware._entry_ptr.67, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1553, i32 4}
!111 = !{ptr @ar5523_load_firmware._entry.68, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ar5523_load_firmware._entry_ptr.70, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ar5523_ops, !114, !"ar5523_ops", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1354, i32 35}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 776, i32 2}
!117 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ar5523_tx.__UNIQUE_ID_ddebug375, !116, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 778, i32 3}
!121 = !{ptr @ar5523_tx.__UNIQUE_ID_ddebug376, !120, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!122 = !{ptr @.str.74, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 779, i32 3}
!124 = !{ptr @ar5523_tx.__UNIQUE_ID_ddebug377, !123, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 998, i32 2}
!127 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ar5523_start.__UNIQUE_ID_ddebug384, !126, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!129 = !{ptr @.str.77, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1027, i32 3}
!131 = !{ptr @ar5523_start.__UNIQUE_ID_ddebug385, !130, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1030, i32 2}
!134 = !{ptr @ar5523_start.__UNIQUE_ID_ddebug386, !133, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!135 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1051, i32 2}
!137 = !{ptr @ar5523_start.__UNIQUE_ID_ddebug387, !136, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!138 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 269, i32 2}
!140 = !{ptr @.str.81, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ar5523_cmd.__UNIQUE_ID_ddebug359, !139, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!142 = !{ptr @.str.82, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 277, i32 3}
!144 = !{ptr @ar5523_cmd._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ar5523_cmd._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 284, i32 3}
!148 = !{ptr @ar5523_cmd._entry.83, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ar5523_cmd._entry_ptr.85, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 231, i32 3}
!152 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ar5523_cmd_tx_cb._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ar5523_cmd_tx_cb._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.88, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 335, i32 3}
!157 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ar5523_config_multi._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @ar5523_config_multi._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 317, i32 3}
!162 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ar5523_config._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @ar5523_config._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.92, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 499, i32 3}
!167 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ar5523_switch_chan._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ar5523_switch_chan._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 506, i32 3}
!172 = !{ptr @ar5523_switch_chan._entry.94, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ar5523_switch_chan._entry_ptr.96, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 513, i32 3}
!176 = !{ptr @ar5523_switch_chan._entry.97, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ar5523_switch_chan._entry_ptr.99, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.100, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 469, i32 2}
!180 = !{ptr @.str.101, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ar5523_set_chan.__UNIQUE_ID_ddebug363, !179, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 450, i32 2}
!184 = !{ptr @.str.103, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ar5523_reset_tx_queues.__UNIQUE_ID_ddebug362, !183, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!186 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 479, i32 2}
!188 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ar5523_queue_init.__UNIQUE_ID_ddebug364, !187, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!190 = !{ptr @.str.106, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 441, i32 2}
!192 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ar5523_set_rxfilter.__UNIQUE_ID_ddebug361, !191, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!194 = !{ptr @.str.108, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 427, i32 2}
!196 = !{ptr @.str.109, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ar5523_set_ledsteady.__UNIQUE_ID_ddebug360, !195, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!198 = !{ptr @.str.110, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.113, !195, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1062, i32 2}
!204 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @ar5523_stop.__UNIQUE_ID_ddebug388, !203, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!206 = !{ptr @.str.116, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1108, i32 2}
!208 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @ar5523_add_interface.__UNIQUE_ID_ddebug391, !207, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!210 = !{ptr @.str.118, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1111, i32 3}
!212 = !{ptr @ar5523_add_interface.__UNIQUE_ID_ddebug392, !211, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1130, i32 2}
!215 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @ar5523_remove_interface.__UNIQUE_ID_ddebug393, !214, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!217 = !{ptr @.str.121, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1138, i32 2}
!219 = !{ptr @.str.122, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @ar5523_hwconfig.__UNIQUE_ID_ddebug394, !218, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!221 = !{ptr @.str.123, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1141, i32 3}
!223 = !{ptr @ar5523_hwconfig.__UNIQUE_ID_ddebug395, !222, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!224 = !{ptr @.str.124, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 932, i32 3}
!226 = !{ptr @.str.125, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ar5523_flush_tx._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @ar5523_flush_tx._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.126, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 807, i32 2}
!231 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @ar5523_tx_work_locked.__UNIQUE_ID_ddebug379, !230, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!233 = !{ptr @.str.128, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 870, i32 3}
!235 = !{ptr @ar5523_tx_work_locked.__UNIQUE_ID_ddebug380, !234, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!236 = !{ptr @.str.129, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 874, i32 4}
!238 = !{ptr @ar5523_tx_work_locked._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @ar5523_tx_work_locked._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.130, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 749, i32 2}
!242 = !{ptr @.str.131, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @ar5523_data_tx_cb.__UNIQUE_ID_ddebug373, !241, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!244 = !{ptr @.str.132, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 756, i32 3}
!246 = !{ptr @ar5523_data_tx_cb.__UNIQUE_ID_ddebug374, !245, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!247 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 735, i32 3}
!249 = !{ptr @.str.134, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @ar5523_data_tx_pkt_put.__UNIQUE_ID_ddebug372, !248, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!251 = !{ptr @.str.135, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1281, i32 2}
!253 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @ar5523_bss_info_changed.__UNIQUE_ID_ddebug398, !252, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!255 = !{ptr @.str.137, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1290, i32 4}
!257 = !{ptr @ar5523_bss_info_changed._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @ar5523_bss_info_changed._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.139, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1296, i32 4}
!261 = !{ptr @ar5523_bss_info_changed._entry.138, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ar5523_bss_info_changed._entry_ptr.140, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.142, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1302, i32 4}
!265 = !{ptr @ar5523_bss_info_changed._entry.141, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ar5523_bss_info_changed._entry_ptr.143, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.144, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1198, i32 3}
!269 = !{ptr @.str.145, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @ar5523_create_rateset._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @ar5523_create_rateset._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.146, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1203, i32 2}
!274 = !{ptr @ar5523_create_rateset.__UNIQUE_ID_ddebug396, !273, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!275 = !{ptr @.str.147, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1208, i32 3}
!277 = !{ptr @ar5523_create_rateset.__UNIQUE_ID_ddebug397, !276, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!278 = !{ptr @.str.148, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1160, i32 3}
!280 = !{ptr @.str.149, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @ar5523_get_wlan_mode._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @ar5523_get_wlan_mode._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.150, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1334, i32 2}
!285 = !{ptr @.str.151, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @ar5523_configure_filter.__UNIQUE_ID_ddebug399, !284, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!287 = !{ptr @.str.152, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1085, i32 2}
!289 = !{ptr @.str.153, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @ar5523_set_rts_threshold.__UNIQUE_ID_ddebug389, !288, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!291 = !{ptr @.str.154, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1099, i32 2}
!293 = !{ptr @.str.155, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @ar5523_flush.__UNIQUE_ID_ddebug390, !292, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!295 = !{ptr @.str.156, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 975, i32 2}
!297 = !{ptr @ar5523_stat_work.__UNIQUE_ID_ddebug383, !296, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!298 = !{ptr @.str.157, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 984, i32 3}
!300 = !{ptr @ar5523_stat_work._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @ar5523_stat_work._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.158, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 901, i32 2}
!304 = !{ptr @.str.159, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @ar5523_tx_wd_timer.__UNIQUE_ID_ddebug382, !303, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!306 = !{ptr @.str.160, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 914, i32 2}
!308 = !{ptr @.str.161, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @ar5523_tx_wd_work._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @ar5523_tx_wd_work._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.163, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 918, i32 2}
!313 = !{ptr @ar5523_tx_wd_work._entry.162, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @ar5523_tx_wd_work._entry_ptr.164, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.165, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 891, i32 2}
!317 = !{ptr @ar5523_tx_work.__UNIQUE_ID_ddebug381, !316, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!318 = !{ptr @.str.166, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 627, i32 2}
!320 = !{ptr @ar5523_rx_refill_work.__UNIQUE_ID_ddebug371, !319, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!321 = !{ptr @.str.167, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 642, i32 4}
!323 = !{ptr @ar5523_rx_refill_work._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @ar5523_rx_refill_work._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.169, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 659, i32 5}
!327 = !{ptr @ar5523_rx_refill_work._entry.168, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @ar5523_rx_refill_work._entry_ptr.170, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.171, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 540, i32 2}
!331 = !{ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug365, !330, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!332 = !{ptr @.str.172, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 544, i32 4}
!334 = !{ptr @ar5523_data_rx_cb._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @ar5523_data_rx_cb._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.174, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 550, i32 3}
!338 = !{ptr @ar5523_data_rx_cb._entry.173, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @ar5523_data_rx_cb._entry_ptr.175, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.176, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 558, i32 3}
!342 = !{ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug366, !341, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!343 = !{ptr @.str.177, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 570, i32 3}
!345 = !{ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug367, !344, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!346 = !{ptr @.str.178, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 576, i32 3}
!348 = !{ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug368, !347, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!349 = !{ptr @.str.179, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 581, i32 3}
!351 = !{ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug369, !350, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!352 = !{ptr @.str.180, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 591, i32 3}
!354 = !{ptr @ar5523_data_rx_cb.__UNIQUE_ID_ddebug370, !353, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!355 = !{ptr @init_completion.__key, !356, !"__key", i1 false, i1 false}
!356 = !{!"../include/linux/completion.h", i32 87, i32 2}
!357 = !{ptr @.str.181, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.182, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 215, i32 4}
!360 = !{ptr @.str.183, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @ar5523_submit_rx_cmd._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @ar5523_submit_rx_cmd._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.184, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 102, i32 4}
!365 = !{ptr @.str.185, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @ar5523_cmd_rx_cb._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @ar5523_cmd_rx_cb._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.187, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 107, i32 3}
!370 = !{ptr @ar5523_cmd_rx_cb._entry.186, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @ar5523_cmd_rx_cb._entry_ptr.188, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.189, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 111, i32 2}
!374 = !{ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug354, !373, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!375 = !{ptr @.str.191, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 121, i32 4}
!377 = !{ptr @ar5523_cmd_rx_cb._entry.190, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @ar5523_cmd_rx_cb._entry_ptr.192, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.193, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 129, i32 3}
!381 = !{ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug355, !380, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!382 = !{ptr @.str.194, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 136, i32 3}
!384 = !{ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug356, !383, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!385 = !{ptr @.str.195, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 139, i32 4}
!387 = !{ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug357, !386, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!388 = !{ptr @.str.197, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 153, i32 4}
!390 = !{ptr @ar5523_cmd_rx_cb._entry.196, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @ar5523_cmd_rx_cb._entry_ptr.198, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.200, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 157, i32 4}
!394 = !{ptr @ar5523_cmd_rx_cb._entry.199, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @ar5523_cmd_rx_cb._entry_ptr.201, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.202, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 167, i32 3}
!398 = !{ptr @ar5523_cmd_rx_cb.__UNIQUE_ID_ddebug358, !397, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!399 = !{ptr @.str.203, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 61, i32 2}
!401 = !{ptr @.str.204, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @ar5523_read_reply.__UNIQUE_ID_ddebug353, !400, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!403 = !{ptr @.str.205, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 77, i32 4}
!405 = !{ptr @ar5523_read_reply._entry, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @ar5523_read_reply._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.206, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1414, i32 3}
!409 = !{ptr @.str.207, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @ar5523_get_max_rxsz._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @ar5523_get_max_rxsz._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.209, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1421, i32 3}
!414 = !{ptr @ar5523_get_max_rxsz._entry.208, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @ar5523_get_max_rxsz._entry_ptr.210, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.211, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1426, i32 2}
!418 = !{ptr @ar5523_get_max_rxsz.__UNIQUE_ID_ddebug400, !417, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!419 = !{ptr @.str.212, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 350, i32 3}
!421 = !{ptr @.str.213, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @ar5523_get_status._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @ar5523_get_status._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.214, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 384, i32 2}
!426 = !{ptr @.str.215, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @ar5523_get_devcap._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @ar5523_get_devcap._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.216, !425, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @ar5523_get_devcap._entry.217, !431, !"_entry", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 385, i32 2}
!432 = !{ptr @ar5523_get_devcap._entry_ptr.218, !431, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.219, !431, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @ar5523_get_devcap._entry.220, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 386, i32 2}
!436 = !{ptr @ar5523_get_devcap._entry_ptr.221, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.222, !435, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @ar5523_get_devcap._entry.223, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 387, i32 2}
!440 = !{ptr @ar5523_get_devcap._entry_ptr.224, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.225, !439, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @ar5523_get_devcap._entry.226, !443, !"_entry", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 388, i32 2}
!444 = !{ptr @ar5523_get_devcap._entry_ptr.227, !443, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.228, !443, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @ar5523_get_devcap._entry.229, !447, !"_entry", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 389, i32 2}
!448 = !{ptr @ar5523_get_devcap._entry_ptr.230, !447, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.231, !447, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @ar5523_get_devcap._entry.232, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 390, i32 2}
!452 = !{ptr @ar5523_get_devcap._entry_ptr.233, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.234, !451, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @ar5523_get_devcap._entry.235, !455, !"_entry", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 392, i32 2}
!456 = !{ptr @ar5523_get_devcap._entry_ptr.236, !455, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.237, !455, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @ar5523_get_devcap._entry.238, !459, !"_entry", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 393, i32 2}
!460 = !{ptr @ar5523_get_devcap._entry_ptr.239, !459, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.240, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @ar5523_get_devcap._entry.241, !463, !"_entry", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 394, i32 2}
!464 = !{ptr @ar5523_get_devcap._entry_ptr.242, !463, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.243, !463, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @ar5523_get_devcap._entry.244, !467, !"_entry", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 395, i32 2}
!468 = !{ptr @ar5523_get_devcap._entry_ptr.245, !467, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.246, !467, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @ar5523_get_devcap._entry.247, !471, !"_entry", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 396, i32 2}
!472 = !{ptr @ar5523_get_devcap._entry_ptr.248, !471, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.249, !471, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @ar5523_get_devcap._entry.250, !475, !"_entry", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 397, i32 2}
!476 = !{ptr @ar5523_get_devcap._entry_ptr.251, !475, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.252, !475, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @ar5523_get_devcap._entry.253, !479, !"_entry", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 398, i32 2}
!480 = !{ptr @ar5523_get_devcap._entry_ptr.254, !479, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.255, !479, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @ar5523_get_devcap._entry.256, !483, !"_entry", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 399, i32 2}
!484 = !{ptr @ar5523_get_devcap._entry_ptr.257, !483, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.258, !483, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @ar5523_get_devcap._entry.259, !487, !"_entry", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 400, i32 2}
!488 = !{ptr @ar5523_get_devcap._entry_ptr.260, !487, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.261, !487, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @ar5523_get_devcap._entry.262, !491, !"_entry", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 401, i32 2}
!492 = !{ptr @ar5523_get_devcap._entry_ptr.263, !491, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.264, !491, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @ar5523_get_devcap._entry.265, !495, !"_entry", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 402, i32 2}
!496 = !{ptr @ar5523_get_devcap._entry_ptr.266, !495, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.267, !495, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @ar5523_get_devcap._entry.268, !499, !"_entry", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 403, i32 2}
!500 = !{ptr @ar5523_get_devcap._entry_ptr.269, !499, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.270, !499, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @ar5523_get_devcap._entry.271, !503, !"_entry", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 404, i32 2}
!504 = !{ptr @ar5523_get_devcap._entry_ptr.272, !503, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.273, !503, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @ar5523_get_devcap._entry.274, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 405, i32 2}
!508 = !{ptr @ar5523_get_devcap._entry_ptr.275, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.276, !507, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @ar5523_get_devcap._entry.277, !511, !"_entry", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 407, i32 2}
!512 = !{ptr @ar5523_get_devcap._entry_ptr.278, !511, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.279, !511, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @ar5523_get_devcap._entry.280, !515, !"_entry", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 408, i32 2}
!516 = !{ptr @ar5523_get_devcap._entry_ptr.281, !515, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.282, !515, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @ar5523_get_devcap._entry.283, !519, !"_entry", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 409, i32 2}
!520 = !{ptr @ar5523_get_devcap._entry_ptr.284, !519, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.285, !519, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @ar5523_get_devcap._entry.286, !523, !"_entry", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 410, i32 2}
!524 = !{ptr @ar5523_get_devcap._entry_ptr.287, !523, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.288, !523, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @ar5523_get_devcap._entry.289, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 411, i32 2}
!528 = !{ptr @ar5523_get_devcap._entry_ptr.290, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.291, !527, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @ar5523_get_devcap._entry.292, !531, !"_entry", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 412, i32 2}
!532 = !{ptr @ar5523_get_devcap._entry_ptr.293, !531, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.294, !531, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @ar5523_get_devcap._entry.295, !535, !"_entry", i1 false, i1 false}
!535 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 414, i32 2}
!536 = !{ptr @ar5523_get_devcap._entry_ptr.296, !535, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.297, !535, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @ar5523_get_devcap._entry.298, !539, !"_entry", i1 false, i1 false}
!539 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 415, i32 2}
!540 = !{ptr @ar5523_get_devcap._entry_ptr.299, !539, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.300, !539, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @ar5523_get_devcap._entry.301, !543, !"_entry", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 416, i32 2}
!544 = !{ptr @ar5523_get_devcap._entry_ptr.302, !543, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.303, !543, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @.str.304, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 364, i32 3}
!548 = !{ptr @.str.305, !547, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @ar5523_get_capability._entry, !547, !"_entry", i1 false, i1 false}
!550 = !{ptr @ar5523_get_capability._entry_ptr, !547, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.306, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1388, i32 3}
!553 = !{ptr @.str.307, !552, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @ar5523_get_devstatus._entry, !552, !"_entry", i1 false, i1 false}
!555 = !{ptr @ar5523_get_devstatus._entry_ptr, !552, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.309, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1397, i32 3}
!558 = !{ptr @ar5523_get_devstatus._entry.308, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @ar5523_get_devstatus._entry_ptr.310, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @ar5523_channels, !561, !"ar5523_channels", i1 false, i1 false}
!561 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1449, i32 39}
!562 = !{ptr @ar5523_rates, !563, !"ar5523_rates", i1 false, i1 false}
!563 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1434, i32 36}
!564 = !{ptr @.str.311, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1730, i32 2}
!566 = !{ptr @.str.312, !565, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @ar5523_disconnect.__UNIQUE_ID_ddebug405, !565, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!568 = !{ptr @ar5523_id_table, !569, !"ar5523_id_table", i1 false, i1 false}
!569 = !{!"../drivers/net/wireless/ath/ar5523/ar5523.c", i32 1756, i32 35}
!570 = !{i32 1, !"wchar_size", i32 2}
!571 = !{i32 1, !"min_enum_size", i32 4}
!572 = !{i32 8, !"branch-target-enforcement", i32 0}
!573 = !{i32 8, !"sign-return-address", i32 0}
!574 = !{i32 8, !"sign-return-address-all", i32 0}
!575 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!576 = !{i32 7, !"uwtable", i32 1}
!577 = !{i32 7, !"frame-pointer", i32 2}
!578 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!579 = !{!"auto-init"}
!580 = !{i64 2148255550, i64 2148255576, i64 2148255605, i64 2148255639, i64 2148255670, i64 2148255693}
!581 = !{i64 2148737365, i64 2148737370, i64 2148737383, i64 2148737427, i64 2148737461, i64 2148737482}
!582 = !{i64 2148258015, i64 2148258041, i64 2148258070, i64 2148258104, i64 2148258135, i64 2148258158}
!583 = !{i64 2148340961}
!584 = !{i64 2148256270, i64 2148256302, i64 2148256331, i64 2148256365, i64 2148256396, i64 2148256419}
!585 = !{i64 2148341190}
!586 = !{i8 0, i8 2}
!587 = !{i64 2148344002}
!588 = !{i64 2148258735, i64 2148258767, i64 2148258796, i64 2148258830, i64 2148258861, i64 2148258884}
!589 = !{i64 2148344231}
!590 = !{!"branch_weights", i32 1, i32 2000}
!591 = !{i64 2157836084, i64 2157836590, i64 2157836121, i64 2157836177, i64 2157836211, i64 2157836235, i64 2157836276, i64 2157836297, i64 2157836325, i64 2157836359}
