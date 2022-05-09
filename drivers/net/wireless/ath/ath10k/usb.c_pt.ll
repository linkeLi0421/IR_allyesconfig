; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/usb.c"
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
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
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
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.msa_region = type { i32, i32, ptr }
%struct.anon.140 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.141, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.145, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.147, %struct.anon.150, %struct.anon.160, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.141 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.142, i32, i32, i32, i32, i32, %struct.anon.143, %struct.anon.144, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.142 = type { ptr }
%struct.anon.143 = type { ptr, i32 }
%struct.anon.144 = type { i32 }
%struct.anon.145 = type { %union.anon.146, [0 x %struct.htt_tx_done] }
%union.anon.146 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.147 = type { i32, %union.anon.148, i32 }
%union.anon.148 = type { ptr }
%struct.anon.150 = type { i32, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.anon.160 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.186 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.187 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.anon.188 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.193 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.194 = type { ptr }
%struct.anon.195 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.anon.197 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_usb = type { %struct.spinlock, ptr, ptr, [8 x %struct.ath10k_usb_pipe], ptr, ptr, ptr }
%struct.ath10k_usb_pipe = type { %struct.list_head, %struct.usb_anchor, i32, i32, i32, i32, i32, i8, i8, ptr, i16, %struct.work_struct, %struct.sk_buff_head, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.ath10k_hif_sg_item = type { i16, ptr, ptr, i32, i16 }
%struct.ath10k_urb_context = type { %struct.list_head, ptr, ptr, ptr }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ath10k_usb_ctrl_diag_cmd_read = type { i32, i32 }
%struct.ath10k_usb_ctrl_diag_cmd_write = type { i32, i32, i32, i32 }
%struct.ath10k_htc_hdr = type { i8, i8, i16, %union.anon.152, %union.anon.153, %union.anon.154 }
%union.anon.152 = type { i8 }
%union.anon.153 = type { i8 }
%union.anon.154 = type { i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }

@__initcall__kmod_ath10k_usb__408_1100_ath10k_usb_driver_init6 = internal global ptr @ath10k_usb_driver_init, section ".initcall6.init", align 4
@ath10k_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ath10k_usb_probe, ptr @ath10k_usb_remove, ptr null, ptr @ath10k_usb_pm_suspend, ptr @ath10k_usb_pm_resume, ptr null, ptr null, ptr null, ptr @ath10k_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ath10k_usb_driver_exit = internal global ptr @ath10k_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author409 = internal constant [47 x i8] c"ath10k_usb.author=Atheros Communications, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description410 = internal constant [85 x i8] c"ath10k_usb.description=Driver support for Qualcomm Atheros 802.11ac WLAN USB devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file411 = internal constant [59 x i8] c"ath10k_usb.file=drivers/net/wireless/ath/ath10k/ath10k_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license412 = internal constant [32 x i8] c"ath10k_usb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath10k_usb\00", [21 x i8] zeroinitializer }, align 32
@ath10k_usb_ids = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5041, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ath10k_usb_hif_ops = internal constant { %struct.ath10k_hif_ops, [44 x i8] } { %struct.ath10k_hif_ops { ptr @ath10k_usb_hif_tx_sg, ptr @ath10k_usb_hif_diag_read, ptr @ath10k_usb_hif_diag_write, ptr @ath10k_usb_bmi_exchange_msg, ptr @ath10k_usb_hif_start, ptr @ath10k_usb_hif_stop, ptr null, ptr null, ptr @ath10k_usb_hif_map_service_to_pipe, ptr @ath10k_usb_hif_get_default_pipe, ptr null, ptr @ath10k_usb_hif_get_free_queue_number, ptr null, ptr null, ptr @ath10k_usb_hif_power_up, ptr @ath10k_usb_hif_power_down, ptr @ath10k_usb_hif_suspend, ptr @ath10k_usb_hif_resume, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ath10k_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate core\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath10k_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/usb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath10k_usb_probe._entry_ptr = internal global ptr @ath10k_usb_probe._entry, section ".printk_index", align 4
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"usb new func vendor 0x%04x product 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register driver core: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Warning: ath10k USB support is incomplete, don't expect anything to work!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"usb bulk transmit failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pipe: %d, failed:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to submit usb control message: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read usb control message: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to send the bmi data to the device: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to read the bmi data from the device: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"usb bulk recv submit %d 0x%x ep 0x%2.2x len %d buf 0x%pK\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb bulk recv failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"usb recv pipe %d stat %d len %d urb 0x%pK\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usb recv pipe %d ep 0x%2.2x failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@ath10k_usb_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ar_usb->cs_lock\00", [47 x i8] zeroinitializer }, align 32
@ath10k_usb_create.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&pipe->io_complete_work)\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ep %d is not connected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"zero length frame received, firmware crashed?\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"malformed frame received, firmware crashed?\0A\00", [51 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usb setting up pipes using interface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"usb %s bulk ep 0x%2.2x maxpktsz %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb %s int ep 0x%2.2x maxpktsz %d interval %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"usb %s isoc ep 0x%2.2x maxpktsz %d interval %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"usb alloc resources lpipe %d hpipe 0x%x urbs %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"usb free resources lpipe %d hpipe 0x%x urbs %d avail %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"usb urb leak lpipe %d hpipe 0x%x urbs %d avail %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 256, i64 768]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"ath10k_usb_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1089, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1100, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"ath10k_usb_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1082, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"ath10k_usb_hif_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 720, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 991, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 999, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1018, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1023, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 443, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 190, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 497, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 531, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 644, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 656, i32 9 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 232, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 242, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 133, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 150, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 934, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 940, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 307, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 313, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 318, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1984, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 825, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 832, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 839, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 848, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 807, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1367, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1368, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 92, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/usb.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 98, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author409, ptr @__UNIQUE_ID_description410, ptr @__UNIQUE_ID_file411, ptr @__UNIQUE_ID_license412, ptr @__exitcall_ath10k_usb_driver_exit, ptr @__initcall__kmod_ath10k_usb__408_1100_ath10k_usb_driver_init6, ptr @ath10k_usb_driver_exit, ptr @ath10k_usb_probe._entry, ptr @ath10k_usb_probe._entry_ptr, ptr @ath10k_usb_driver, ptr @.str, ptr @ath10k_usb_ids, ptr @ath10k_usb_hif_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ath10k_usb_create.__key, ptr @.str.19, ptr @ath10k_usb_create.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @skb_queue_head_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @init_usb_anchor.__key, ptr @.str.33, ptr @init_usb_anchor.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_usb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_usb_hif_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_usb_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_usb_create.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ath10k_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @ath10k_usb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %bus_params = alloca %struct.ath10k_bus_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bus_params) #11
  %2 = call ptr @memset(ptr %bus_params, i32 0, i32 12)
  %call2 = tail call ptr @ath10k_core_create(i32 noundef 2112, ptr noundef %1, i32 noundef 3, i32 noundef 5, ptr noundef nonnull @ath10k_usb_hif_ops) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #11
  %idVendor = getelementptr i8, ptr %1, i32 936
  %3 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idVendor, align 8
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %6 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv6 = zext i16 %8 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_probe, %if.then11)) #11
          to label %do.end14 [label %if.then11], !srcloc !97

if.then11:                                        ; preds = %lor.lhs.false, %if.end.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef nonnull %call2, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv6) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %lor.lhs.false
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %call2, i32 0, i32 142
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -128
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %drv_priv.i, ptr %driver_data.i.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %drv_priv.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @ath10k_usb_create.__key, i16 noundef signext 3) #11
  %udev.i = getelementptr inbounds %struct.ath10k, ptr %call2, i32 0, i32 143, i32 44
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %udev.i, align 4
  %interface3.i = getelementptr inbounds %struct.ath10k, ptr %call2, i32 1
  %14 = ptrtoint ptr %interface3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %interface, ptr %interface3.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end14
  %i.049.i = phi i32 [ 0, %do.end14 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %io_complete_work.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 11
  tail call void @__init_work(ptr noundef %io_complete_work.i, i32 noundef 0) #11
  %15 = ptrtoint ptr %io_complete_work.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %io_complete_work.i, align 4
  %lockdep_map.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @ath10k_usb_create.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 11, i32 1
  %16 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 11, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 11, i32 2
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ath10k_usb_io_comp_work, ptr %func.i, align 4
  %io_comp_queue.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 12
  %lock.i.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %19 = ptrtoint ptr %io_comp_queue.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %io_comp_queue.i, ptr %io_comp_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.65, ptr %io_comp_queue.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %io_comp_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %i.049.i, i32 12, i32 1
  %21 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 16) #15
  %diag_cmd_buffer.i = getelementptr inbounds %struct.ath10k, ptr %call2, i32 1, i32 42, i32 1, i32 1, i32 14, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %diag_cmd_buffer.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %diag_cmd_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.i.ath10k_usb_create.exit_crit_edge, label %if.end.i

for.end.i.ath10k_usb_create.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_create.exit

if.end.i:                                         ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i48.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 4) #15
  %diag_resp_buffer.i = getelementptr inbounds %struct.ath10k, ptr %call2, i32 1, i32 42, i32 1, i32 1, i32 14, i32 1
  %25 = ptrtoint ptr %diag_resp_buffer.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i48.i, ptr %diag_resp_buffer.i, align 4
  %tobool16.not.i = icmp eq ptr %call7.i.i48.i, null
  br i1 %tobool16.not.i, label %if.end.i.ath10k_usb_create.exit_crit_edge, label %if.end18.i

if.end.i.ath10k_usb_create.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_create.exit

if.end18.i:                                       ; preds = %if.end.i
  %call19.i = tail call fastcc i32 @ath10k_usb_setup_pipe_resources(ptr noundef nonnull %call2, ptr noundef %interface) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end19, label %if.end18.i.ath10k_usb_create.exit_crit_edge

if.end18.i.ath10k_usb_create.exit_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_create.exit

ath10k_usb_create.exit:                           ; preds = %if.end18.i.ath10k_usb_create.exit_crit_edge, %if.end.i.ath10k_usb_create.exit_crit_edge, %for.end.i.ath10k_usb_create.exit_crit_edge
  %ret.0.i = phi i32 [ %call19.i, %if.end18.i.ath10k_usb_create.exit_crit_edge ], [ -12, %for.end.i.ath10k_usb_create.exit_crit_edge ], [ -12, %if.end.i.ath10k_usb_create.exit_crit_edge ]
  tail call fastcc void @ath10k_usb_destroy(ptr noundef nonnull %call2) #11
  br label %err

if.end19:                                         ; preds = %if.end18.i
  %ar20 = getelementptr inbounds %struct.ath10k, ptr %call2, i32 1, i32 42, i32 1, i32 1, i32 14, i32 2
  %26 = ptrtoint ptr %ar20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call2, ptr %ar20, align 4
  %dev_id = getelementptr inbounds %struct.ath10k, ptr %call2, i32 0, i32 7
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %8, ptr %dev_id, align 8
  %id22 = getelementptr inbounds %struct.ath10k, ptr %call2, i32 0, i32 50
  %28 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %id22, align 4
  %device = getelementptr inbounds %struct.ath10k, ptr %call2, i32 0, i32 50, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv6, ptr %device, align 4
  %dev_type = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 1
  %30 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %dev_type, align 4
  %31 = ptrtoint ptr %bus_params to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bus_params, align 4
  %call24 = call i32 @ath10k_core_register(ptr noundef nonnull %call2, ptr noundef nonnull %bus_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef nonnull %call2, ptr noundef nonnull @.str.7, i32 noundef %call24) #11
  call fastcc void @ath10k_usb_destroy(ptr noundef nonnull %call2)
  br label %err

if.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef nonnull %call2, ptr noundef nonnull @.str.8) #11
  br label %cleanup

err:                                              ; preds = %if.then26, %ath10k_usb_create.exit
  %ret.0 = phi i32 [ %ret.0.i, %ath10k_usb_create.exit ], [ %call24, %if.then26 ]
  call void @ath10k_core_destroy(ptr noundef nonnull %call2) #11
  call void @usb_put_dev(ptr noundef %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end27, %do.end
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end27 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bus_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_remove(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ar = getelementptr inbounds %struct.ath10k_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  tail call void @ath10k_core_unregister(ptr noundef %3) #11
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 4
  tail call fastcc void @ath10k_usb_destroy(ptr noundef %5)
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #11
  %8 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar, align 4
  tail call void @ath10k_core_destroy(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_pm_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ar = getelementptr inbounds %struct.ath10k_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  tail call fastcc void @ath10k_usb_flush_all(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_pm_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ar1 = getelementptr inbounds %struct.ath10k_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %arrayidx = getelementptr %struct.ath10k_usb, ptr %1, i32 0, i32 3, i32 5
  tail call fastcc void @ath10k_usb_post_recv_transfers(ptr noundef %3, ptr noundef %arrayidx)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_core_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_usb_destroy(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_usb_flush_all(ptr noundef %ar)
  %arrayidx.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 1
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.i) #11
  %arrayidx.1.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 22, i32 1
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.1.i) #11
  %arrayidx.2.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 2, i32 4
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.2.i) #11
  %arrayidx.3.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 4, i32 10
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.3.i) #11
  %arrayidx.4.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 35, i32 1, i32 0, i32 4, i32 1
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.4.i) #11
  %arrayidx.5.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 3, i32 1, i32 0, i32 4, i32 3
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.5.i) #11
  %arrayidx.6.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.6.i) #11
  %arrayidx.7.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 0, i32 3
  tail call fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx.7.i) #11
  %interface = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %diag_cmd_buffer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 1, i32 14, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %diag_cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %diag_cmd_buffer, align 4
  tail call void @kfree(ptr noundef %4) #11
  %diag_resp_buffer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 1, i32 14, i32 1
  %5 = ptrtoint ptr %diag_resp_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %diag_resp_buffer, align 4
  tail call void @kfree(ptr noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_hif_tx_sg(ptr noundef %ar, i8 noundef zeroext %pipe_id, ptr nocapture noundef readonly %items, i32 noundef %n_items) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %idxprom = zext i8 %pipe_id to i32
  %arrayidx = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_items)
  %cmp71 = icmp sgt i32 %n_items, 0
  br i1 %cmp71, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ar_usb.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom, i32 9
  %urb_cnt.i = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom, i32 3
  %udev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  %usb_pipe_handle = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom, i32 5
  %max_packet_size = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom, i32 10
  %urb_submitted = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end20.for.body_crit_edge ]
  %0 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %do.body1.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.i:                                       ; preds = %for.body
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i = icmp eq ptr %3, %arrayidx
  br i1 %cmp.i.not.i, label %do.body1.i.cleanup.sink.split_crit_edge, label %if.then8.i

do.body1.i.cleanup.sink.split_crit_edge:          ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then8.i:                                       ; preds = %do.body1.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge

if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_alloc_urb_from_pipe.exit

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %ath10k_usb_alloc_urb_from_pipe.exit

ath10k_usb_alloc_urb_from_pipe.exit:              ; preds = %if.end.i.i.i, %if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %urb_cnt.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %urb_cnt.i, align 4
  %14 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call3.i) #11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, label %if.end

ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge: ; preds = %ath10k_usb_alloc_urb_from_pipe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ath10k_usb_alloc_urb_from_pipe.exit
  %transfer_context = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.072, i32 1
  %16 = ptrtoint ptr %transfer_context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transfer_context, align 4
  %skb3 = getelementptr inbounds %struct.ath10k_urb_context, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %skb3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %skb3, align 4
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.err_free_urb_to_pipe_crit_edge, label %if.end7

if.end.err_free_urb_to_pipe_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_urb_to_pipe

if.end7:                                          ; preds = %if.end
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 4
  %21 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb_pipe_handle, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %20, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %22, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ath10k_usb_transmit_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %context4.i, align 4
  %33 = load i32, ptr %len, align 4
  %34 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_packet_size, align 4
  %conv = zext i16 %35 to i32
  %rem = urem i32 %33, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool9.not = icmp eq i32 %rem, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 13
  %36 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %transfer_flags, align 4
  %or = or i32 %37, 64
  store i32 %or, ptr %transfer_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %urb_submitted) #11
  %call12 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %38 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %do.body.if.then18_crit_edge

do.body.if.then18_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_hif_tx_sg, %if.then18)) #11
          to label %do.end [label %if.then18], !srcloc !97

if.then18:                                        ; preds = %lor.lhs.false, %do.body.if.then18_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 524288, ptr noundef nonnull @.str.9, i32 noundef %call12) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %lor.lhs.false
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #11
  br label %err_free_urb_to_pipe

if.end20:                                         ; preds = %if.end11
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #11
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %n_items
  br i1 %exitcond.not, label %if.end20.cleanup_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_urb_to_pipe:                             ; preds = %do.end, %if.end.err_free_urb_to_pipe_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.err_free_urb_to_pipe_crit_edge ]
  %prev.i.i85 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %pipe21 = getelementptr inbounds %struct.ath10k_urb_context, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %pipe21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pipe21, align 4
  %ar_usb.i51 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %ar_usb.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ar_usb.i51, align 4
  %tobool.not.i52 = icmp eq ptr %42, null
  br i1 %tobool.not.i52, label %err_free_urb_to_pipe.cleanup_crit_edge, label %do.body1.i56

err_free_urb_to_pipe.cleanup_crit_edge:           ; preds = %err_free_urb_to_pipe
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.i56:                                     ; preds = %err_free_urb_to_pipe
  %call3.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %42) #11
  %urb_cnt.i54 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %urb_cnt.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %urb_cnt.i54, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %urb_cnt.i54, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  %call.i.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %40, ptr noundef %46) #11
  br i1 %call.i.i.i55, label %if.end.i.i.i57, label %do.body1.i56.cleanup.sink.split_crit_edge

do.body1.i56.cleanup.sink.split_crit_edge:        ; preds = %do.body1.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.i.i57:                                   ; preds = %do.body1.i56
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %3, align 4
  %49 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %40, ptr %prev.i.i85, align 4
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %3, ptr %40, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i57, %do.body1.i56.cleanup.sink.split_crit_edge, %do.body1.i.cleanup.sink.split_crit_edge
  %ar_usb.i51.sink = phi ptr [ %ar_usb.i51, %if.end.i.i.i57 ], [ %ar_usb.i51, %do.body1.i56.cleanup.sink.split_crit_edge ], [ %ar_usb.i, %do.body1.i.cleanup.sink.split_crit_edge ]
  %call3.i53.sink = phi i32 [ %call3.i53, %if.end.i.i.i57 ], [ %call3.i53, %do.body1.i56.cleanup.sink.split_crit_edge ], [ %call3.i, %do.body1.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %if.end.i.i.i57 ], [ %ret.0, %do.body1.i56.cleanup.sink.split_crit_edge ], [ -12, %do.body1.i.cleanup.sink.split_crit_edge ]
  %51 = ptrtoint ptr %ar_usb.i51.sink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ar_usb.i51.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %call3.i53.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err_free_urb_to_pipe.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_urb_to_pipe.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end20.cleanup_crit_edge ], [ -12, %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_hif_diag_read(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef writeonly %buf, i32 noundef %buf_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buf_len)
  %cmp = icmp ult i32 %buf_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %diag_cmd_buffer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 1, i32 14, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %diag_cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %diag_cmd_buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %address)
  %address2 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_read, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %address2 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %address2, align 1
  %diag_resp_buffer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 1, i32 14, i32 1
  %5 = ptrtoint ptr %diag_resp_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %diag_resp_buffer, align 4
  %call1.i.i = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 8, i32 noundef 3264) #11
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end3.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end
  %udev.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  %7 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call1.i.i, i16 noundef zeroext 8, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %ath10k_usb_submit_ctrl_out.exit.i, label %if.end.i

ath10k_usb_submit_ctrl_out.exit.i:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.11, i32 noundef %call6.i.i) #11
  br label %ath10k_usb_ctrl_msg_exchange.exit.thread27

if.end.i:                                         ; preds = %if.end3.i.i
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #11
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.if.end8_crit_edge, label %kmalloc.exit.i.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

kmalloc.exit.i.i:                                 ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4) #15
  %tobool.not.i3.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i3.i, label %kmalloc.exit.i.i.cleanup_crit_edge, label %if.end3.i8.i

kmalloc.exit.i.i.cleanup_crit_edge:               ; preds = %kmalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i8.i:                                     ; preds = %kmalloc.exit.i.i
  %12 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i6.i = shl i32 %15, 8
  %or6.i.i = or i32 %shl.i.i6.i, -2147483520
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or6.i.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4, i32 noundef 2000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %ath10k_usb_submit_ctrl_in.exit.i, label %ath10k_usb_ctrl_msg_exchange.exit

ath10k_usb_submit_ctrl_in.exit.i:                 ; preds = %if.end3.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call7.i.i) #11
  br label %ath10k_usb_ctrl_msg_exchange.exit.thread27

ath10k_usb_ctrl_msg_exchange.exit.thread27:       ; preds = %ath10k_usb_submit_ctrl_in.exit.i, %ath10k_usb_submit_ctrl_out.exit.i
  %buf.0.i.sink.i.ph = phi ptr [ %call7.i.i.i, %ath10k_usb_submit_ctrl_in.exit.i ], [ %call1.i.i, %ath10k_usb_submit_ctrl_out.exit.i ]
  %retval.0.ph.i.ph = phi i32 [ %call7.i.i, %ath10k_usb_submit_ctrl_in.exit.i ], [ %call6.i.i, %ath10k_usb_submit_ctrl_out.exit.i ]
  tail call void @kfree(ptr noundef nonnull %buf.0.i.sink.i.ph) #11
  br label %cleanup

ath10k_usb_ctrl_msg_exchange.exit:                ; preds = %if.end3.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i.i, align 8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %6, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end8

if.end8:                                          ; preds = %ath10k_usb_ctrl_msg_exchange.exit, %if.end.i.if.end8_crit_edge
  %19 = ptrtoint ptr %diag_resp_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %diag_resp_buffer, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %20, align 1
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %ath10k_usb_ctrl_msg_exchange.exit.thread27, %kmalloc.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph.i.ph, %ath10k_usb_ctrl_msg_exchange.exit.thread27 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %kmalloc.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_hif_diag_write(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef readonly %data, i32 noundef %nbytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nbytes)
  %cmp.not = icmp eq i32 %nbytes, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %diag_cmd_buffer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 1, i32 14, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %diag_cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %diag_cmd_buffer, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 16777216, ptr %1, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %address)
  %address2 = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_write, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %address2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %address2, align 1
  %value = getelementptr inbounds %struct.ath10k_usb_ctrl_diag_cmd_write, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %data, align 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %value, align 1
  %call1.i.i = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 16, i32 noundef 3264) #11
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end3.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end
  %udev.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  %10 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call1.i.i, i16 noundef zeroext 16, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %ath10k_usb_submit_ctrl_out.exit.i, label %if.end3.i.i.cleanup.sink.split_crit_edge

if.end3.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

ath10k_usb_submit_ctrl_out.exit.i:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.11, i32 noundef %call6.i.i) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ath10k_usb_submit_ctrl_out.exit.i, %if.end3.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call6.i.i, %ath10k_usb_submit_ctrl_out.exit.i ], [ 0, %if.end3.i.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_bmi_exchange_msg(ptr noundef %ar, ptr noundef %req, i32 noundef %req_len, ptr noundef writeonly %resp, ptr nocapture noundef readonly %resp_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_len)
  %cmp.not.i = icmp eq i32 %req_len, 0
  br i1 %cmp.not.i, label %if.then.if.end3.i_crit_edge, label %if.then.i

if.then.if.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull %req, i32 noundef %req_len, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i.if.then2_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then.i.if.then2_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.then.if.end3.i_crit_edge
  %buf.0.i = phi ptr [ %call1.i, %if.then.i.if.end3.i_crit_edge ], [ null, %if.then.if.end3.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  %0 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i32 %req_len to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.0.i, i16 noundef zeroext %conv.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %ath10k_usb_submit_ctrl_out.exit, label %ath10k_usb_submit_ctrl_out.exit.thread35

ath10k_usb_submit_ctrl_out.exit.thread35:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %buf.0.i) #11
  br label %if.end3

ath10k_usb_submit_ctrl_out.exit:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.11, i32 noundef %call6.i) #11
  tail call void @kfree(ptr noundef %buf.0.i) #11
  br label %if.then2

if.then2:                                         ; preds = %ath10k_usb_submit_ctrl_out.exit, %if.then.i.if.then2_crit_edge
  %retval.0.i34 = phi i32 [ %call6.i, %ath10k_usb_submit_ctrl_out.exit ], [ -12, %if.then.i.if.then2_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i34) #11
  br label %cleanup

if.end3:                                          ; preds = %ath10k_usb_submit_ctrl_out.exit.thread35, %entry.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %resp, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %4 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i21 = icmp eq i32 %5, 0
  br i1 %cmp.not.i21, label %if.then5.if.end3.i28_crit_edge, label %if.end8.i.i

if.then5.if.end3.i28_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i28

if.end8.i.i:                                      ; preds = %if.then5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #16
  %tobool.not.i23 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i23, label %if.end8.i.i.if.then8_crit_edge, label %if.end8.i.i.if.end3.i28_crit_edge

if.end8.i.i.if.end3.i28_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i28

if.end8.i.i.if.then8_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end3.i28:                                      ; preds = %if.end8.i.i.if.end3.i28_crit_edge, %if.then5.if.end3.i28_crit_edge
  %buf.0.i24 = phi ptr [ %call9.i.i, %if.end8.i.i.if.end3.i28_crit_edge ], [ null, %if.then5.if.end3.i28_crit_edge ]
  %udev.i25 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  %6 = ptrtoint ptr %udev.i25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i25, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i26 = shl i32 %9, 8
  %or6.i = or i32 %shl.i.i26, -2147483520
  %conv.i27 = trunc i32 %5 to i16
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or6.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.0.i24, i16 noundef zeroext %conv.i27, i32 noundef 2000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %ath10k_usb_submit_ctrl_in.exit, label %ath10k_usb_submit_ctrl_in.exit.thread41

ath10k_usb_submit_ctrl_in.exit.thread41:          ; preds = %if.end3.i28
  call void @__sanitizer_cov_trace_pc() #13
  %10 = call ptr @memcpy(ptr %resp, ptr %buf.0.i24, i32 %5)
  tail call void @kfree(ptr noundef %buf.0.i24) #11
  br label %cleanup

ath10k_usb_submit_ctrl_in.exit:                   ; preds = %if.end3.i28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call7.i) #11
  tail call void @kfree(ptr noundef %buf.0.i24) #11
  br label %if.then8

if.then8:                                         ; preds = %ath10k_usb_submit_ctrl_in.exit, %if.end8.i.i.if.then8_crit_edge
  %retval.0.i3140 = phi i32 [ %call7.i, %ath10k_usb_submit_ctrl_in.exit ], [ -12, %if.end8.i.i.if.then8_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i3140) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %ath10k_usb_submit_ctrl_in.exit.thread41, %if.end3.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ %retval.0.i34, %if.then2 ], [ %retval.0.i3140, %if.then8 ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %ath10k_usb_submit_ctrl_in.exit.thread41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_usb_hif_start(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 3, i32 1, i32 0, i32 4, i32 3
  %urb_cnt_thresh.i = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6
  %0 = ptrtoint ptr %urb_cnt_thresh.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %urb_cnt_thresh.i, align 4
  tail call fastcc void @ath10k_usb_post_recv_transfers(ptr noundef %ar, ptr noundef %arrayidx.i) #11
  %urb_alloc = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 14
  %1 = ptrtoint ptr %urb_alloc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %urb_alloc, align 4
  %div8 = lshr i32 %2, 1
  %urb_cnt_thresh = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %urb_cnt_thresh to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div8, ptr %urb_cnt_thresh, align 4
  %urb_alloc.1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 0, i32 7, i32 1, i32 3
  %4 = ptrtoint ptr %urb_alloc.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %urb_alloc.1, align 4
  %div8.1 = lshr i32 %5, 1
  %urb_cnt_thresh.1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 0, i32 7, i32 2, i32 1
  %6 = ptrtoint ptr %urb_cnt_thresh.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div8.1, ptr %urb_cnt_thresh.1, align 4
  %urb_alloc.2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 3, i32 6
  %7 = ptrtoint ptr %urb_alloc.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %urb_alloc.2, align 4
  %div8.2 = lshr i32 %8, 1
  %urb_cnt_thresh.2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 3, i32 6, i32 2
  %9 = ptrtoint ptr %urb_cnt_thresh.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div8.2, ptr %urb_cnt_thresh.2, align 4
  %urb_alloc.3 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 5
  %10 = ptrtoint ptr %urb_alloc.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %urb_alloc.3, align 4
  %div8.3 = lshr i32 %11, 1
  %urb_cnt_thresh.3 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 6
  %12 = ptrtoint ptr %urb_cnt_thresh.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div8.3, ptr %urb_cnt_thresh.3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_hif_stop(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_usb_flush_all(ptr noundef %ar)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ath10k_usb_hif_map_service_to_pipe(ptr nocapture noundef readnone %ar, i16 noundef zeroext %svc_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %svc_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %svc_id, label %entry.return_crit_edge [
    i16 1, label %entry.sw.epilog_crit_edge
    i16 256, label %entry.sw.epilog_crit_edge4
    i16 768, label %sw.bb1
  ]

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge4
  %storemerge = phi i8 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge4 ]
  %1 = ptrtoint ptr %ul_pipe to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %storemerge, ptr %ul_pipe, align 1
  %2 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %dl_pipe, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ath10k_usb_hif_get_default_pipe(ptr nocapture noundef readnone %ar, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ul_pipe to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ul_pipe, align 1
  %1 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %dl_pipe, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath10k_usb_hif_get_free_queue_number(ptr nocapture noundef readonly %ar, i8 noundef zeroext %pipe_id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %idxprom = zext i8 %pipe_id to i32
  %urb_cnt = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %idxprom, i32 3
  %0 = ptrtoint ptr %urb_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urb_cnt, align 4
  %conv = trunc i32 %1 to i16
  ret i16 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_usb_hif_power_up(ptr nocapture noundef readnone %ar, i32 noundef %fw_mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_hif_power_down(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_usb_flush_all(ptr noundef %ar)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_usb_hif_suspend(ptr nocapture noundef readnone %ar) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_usb_hif_resume(ptr nocapture noundef readnone %ar) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_transmit_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pipe1 = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %ar_usb = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar_usb, align 4
  %ar2 = getelementptr inbounds %struct.ath10k_usb, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ar2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar2, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then3_crit_edge

do.body.if.then3_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_transmit_complete, %if.then3)) #11
          to label %if.end5 [label %if.then3], !srcloc !97

if.then3:                                         ; preds = %lor.lhs.false, %do.body.if.then3_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %logical_pipe_num = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %7, i32 noundef 524288, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %14) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %lor.lhs.false, %entry.if.end5_crit_edge
  %skb6 = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb6, align 4
  store ptr null, ptr %skb6, align 4
  %17 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe1, align 4
  %ar_usb.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end5.ath10k_usb_free_urb_to_pipe.exit_crit_edge, label %do.body1.i

if.end5.ath10k_usb_free_urb_to_pipe.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_free_urb_to_pipe.exit

do.body1.i:                                       ; preds = %if.end5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %20) #11
  %urb_cnt.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %urb_cnt.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %urb_cnt.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %18, ptr noundef %24) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_add.exit.i_crit_edge

do.body1.i.list_add.exit.i_crit_edge:             ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %1, ptr %18, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.body1.i.list_add.exit.i_crit_edge
  %29 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call3.i) #11
  br label %ath10k_usb_free_urb_to_pipe.exit

ath10k_usb_free_urb_to_pipe.exit:                 ; preds = %list_add.exit.i, %if.end5.ath10k_usb_free_urb_to_pipe.exit_crit_edge
  %io_comp_queue = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 12
  tail call void @skb_queue_tail(ptr noundef %io_comp_queue, ptr noundef %16) #11
  %io_complete_work = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %io_complete_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_usb_post_recv_transfers(ptr noundef %ar, ptr noundef %recv_pipe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %recv_pipe, i32 0, i32 9
  %0 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i75 = icmp eq ptr %1, null
  br i1 %tobool.not.i75, label %entry.cleanup_crit_edge, label %do.body1.i.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.i.lr.ph:                                 ; preds = %entry
  %urb_cnt.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %recv_pipe, i32 0, i32 3
  %usb_pipe_handle = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %recv_pipe, i32 0, i32 5
  %logical_pipe_num = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %recv_pipe, i32 0, i32 8
  %ep_address = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %recv_pipe, i32 0, i32 7
  %urb_submitted = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %recv_pipe, i32 0, i32 1
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end31.do.body1.i_crit_edge, %do.body1.i.lr.ph
  %2 = phi ptr [ %1, %do.body1.i.lr.ph ], [ %45, %if.end31.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %2) #11
  %3 = ptrtoint ptr %recv_pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %recv_pipe, align 4
  %cmp.i.not.i = icmp eq ptr %4, %recv_pipe
  br i1 %cmp.i.not.i, label %do.body1.i.cleanup.sink.split_crit_edge, label %if.then8.i

do.body1.i.cleanup.sink.split_crit_edge:          ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then8.i:                                       ; preds = %do.body1.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge

if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_alloc_urb_from_pipe.exit

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %ath10k_usb_alloc_urb_from_pipe.exit

ath10k_usb_alloc_urb_from_pipe.exit:              ; preds = %if.end.i.i.i, %if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %urb_cnt.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %urb_cnt.i, align 4
  %15 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call3.i) #11
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, label %if.end

ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge: ; preds = %ath10k_usb_alloc_urb_from_pipe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ath10k_usb_alloc_urb_from_pipe.exit
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 4096, i32 noundef 2592) #11
  %skb = getelementptr inbounds %struct.ath10k_urb_context, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %skb, align 4
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.err_crit_edge, label %if.end5

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err_crit_edge, label %if.end9

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end9:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar_usb.i, align 4
  %udev = getelementptr inbounds %struct.ath10k_usb, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev, align 4
  %22 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_pipe_handle, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 8
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %29 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 28
  %32 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ath10k_usb_recv_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 27
  %33 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %4, ptr %context4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %34 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end9.if.then13_crit_edge

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_post_recv_transfers, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !97

if.then13:                                        ; preds = %lor.lhs.false, %if.end9.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %36 to i32
  %37 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usb_pipe_handle, align 4
  %39 = ptrtoint ptr %ep_address to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ep_address, align 4
  %conv15 = zext i8 %40 to i32
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 524288, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %38, i32 noundef %conv15, i32 noundef 4096, ptr noundef %42) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %lor.lhs.false
  tail call void @usb_anchor_urb(ptr noundef nonnull %call6, ptr noundef %urb_submitted) #11
  %call18 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call6, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end31, label %do.body21

do.body21:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %43 = load i32, ptr @ath10k_debug_mask, align 4
  %and22 = and i32 %43, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %do.body21.if.then27_crit_edge

do.body21.if.then27_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false24:                                  ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_post_recv_transfers, %if.then27)) #11
          to label %do.end30 [label %if.then27], !srcloc !97

if.then27:                                        ; preds = %lor.lhs.false24, %do.body21.if.then27_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 524288, ptr noundef nonnull @.str.16, i32 noundef %call18) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %lor.lhs.false24
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call6) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call6) #11
  br label %err

if.end31:                                         ; preds = %do.end
  tail call void @usb_free_urb(ptr noundef nonnull %call6) #11
  %44 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end31.cleanup_crit_edge, label %if.end31.do.body1.i_crit_edge

if.end31.do.body1.i_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %do.end30, %if.end5.err_crit_edge, %if.end.err_crit_edge
  %prev.i.i94 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %46 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %47) #11
  %48 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %skb, align 4
  %pipe.i = getelementptr inbounds %struct.ath10k_urb_context, ptr %4, i32 0, i32 1
  %49 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pipe.i, align 4
  %ar_usb.i.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ar_usb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %err.cleanup_crit_edge, label %do.body1.i.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %err
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %52) #11
  %urb_cnt.i.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %urb_cnt.i.i, align 4
  %inc.i.i = add i32 %54, 1
  store i32 %inc.i.i, ptr %urb_cnt.i.i, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %4, ptr noundef %50, ptr noundef %56) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body1.i.i.cleanup.sink.split_crit_edge

do.body1.i.i.cleanup.sink.split_crit_edge:        ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.i.i.i:                                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %4, ptr %prev1.i.i.i.i57, align 4
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %4, align 4
  %59 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %50, ptr %prev.i.i94, align 4
  %60 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %4, ptr %50, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i.i, %do.body1.i.i.cleanup.sink.split_crit_edge, %do.body1.i.cleanup.sink.split_crit_edge
  %ar_usb.i.i.sink = phi ptr [ %ar_usb.i.i, %if.end.i.i.i.i ], [ %ar_usb.i.i, %do.body1.i.i.cleanup.sink.split_crit_edge ], [ %ar_usb.i, %do.body1.i.cleanup.sink.split_crit_edge ]
  %call3.i.i.sink = phi i32 [ %call3.i.i, %if.end.i.i.i.i ], [ %call3.i.i, %do.body1.i.i.cleanup.sink.split_crit_edge ], [ %call3.i, %do.body1.i.cleanup.sink.split_crit_edge ]
  %61 = ptrtoint ptr %ar_usb.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ar_usb.i.i.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %call3.i.i.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_recv_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pipe1 = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %ar_usb = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar_usb, align 4
  %ar2 = getelementptr inbounds %struct.ath10k_usb, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ar2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %8 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_recv_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %logical_pipe_num = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %10 to i32
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status3, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %7, i32 noundef 524288, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %12, i32 noundef %14, ptr noundef %urb) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %status4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status4, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %16, label %do.body8 [
    i32 0, label %if.end22
    i32 -104, label %do.end.if.end38.critedge_crit_edge
    i32 -2, label %do.end.if.end38.critedge_crit_edge128
    i32 -108, label %do.end.if.end38.critedge_crit_edge129
  ]

do.end.if.end38.critedge_crit_edge129:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.critedge

do.end.if.end38.critedge_crit_edge128:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.critedge

do.end.if.end38.critedge_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.critedge

do.body8:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %18 = load i32, ptr @ath10k_debug_mask, align 4
  %and9 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %do.body8.if.then14_crit_edge

do.body8.if.then14_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false11:                                  ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_recv_complete, %if.then14)) #11
          to label %if.end38.critedge62 [label %if.then14], !srcloc !97

if.then14:                                        ; preds = %lor.lhs.false11, %do.body8.if.then14_crit_edge
  %logical_pipe_num15 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %logical_pipe_num15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %logical_pipe_num15, align 1
  %conv16 = zext i8 %20 to i32
  %ep_address = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %ep_address to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep_address, align 4
  %conv17 = zext i8 %22 to i32
  %23 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status4, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %7, i32 noundef 524288, ptr noundef nonnull @.str.18, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %24) #11
  %skb.i = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %26) #11
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %skb.i, align 4
  %28 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ar_usb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then14.if.end38_crit_edge, label %do.body1.i.i

if.then14.if.end38_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body1.i.i:                                     ; preds = %if.then14
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %31) #11
  %urb_cnt.i.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %urb_cnt.i.i, align 4
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %urb_cnt.i.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %29, ptr noundef %35) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body1.i.i.list_add.exit.i.i_crit_edge

do.body1.i.i.list_add.exit.i.i_crit_edge:         ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %1, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %29, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %1, ptr %29, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.body1.i.i.list_add.exit.i.i_crit_edge
  %40 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ar_usb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %call3.i.i) #11
  br label %if.end38

if.end22:                                         ; preds = %do.end
  %actual_length23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %42 = ptrtoint ptr %actual_length23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual_length23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp24 = icmp eq i32 %43, 0
  %skb.i81 = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %skb.i81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb.i81, align 4
  br i1 %cmp24, label %land.lhs.true.critedge, label %if.end27

if.end27:                                         ; preds = %if.end22
  %46 = ptrtoint ptr %skb.i81 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %skb.i81, align 4
  %47 = ptrtoint ptr %actual_length23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_length23, align 4
  %call31 = tail call ptr @skb_put(ptr noundef %45, i32 noundef %48) #11
  %io_comp_queue = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 12
  tail call void @skb_queue_tail(ptr noundef %io_comp_queue, ptr noundef %45) #11
  %io_complete_work = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %io_complete_work) #11
  %50 = ptrtoint ptr %skb.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb.i81, align 4
  tail call void @consume_skb(ptr noundef %51) #11
  %52 = ptrtoint ptr %skb.i81 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %skb.i81, align 4
  %53 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i69 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %ar_usb.i.i69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ar_usb.i.i69, align 4
  %tobool.not.i.i70 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i70, label %if.end27.land.lhs.true_crit_edge, label %do.body1.i.i75

if.end27.land.lhs.true_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.body1.i.i75:                                   ; preds = %if.end27
  %call3.i.i71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %56) #11
  %urb_cnt.i.i72 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %urb_cnt.i.i72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %urb_cnt.i.i72, align 4
  %inc.i.i73 = add i32 %58, 1
  store i32 %inc.i.i73, ptr %urb_cnt.i.i72, align 4
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  %call.i.i.i.i74 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %54, ptr noundef %60) #11
  br i1 %call.i.i.i.i74, label %do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge, label %do.body1.i.i75.land.lhs.true.sink.split_crit_edge

do.body1.i.i75.land.lhs.true.sink.split_crit_edge: ; preds = %do.body1.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.sink.split

do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge: ; preds = %do.body1.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.sink.split.sink.split

land.lhs.true.critedge:                           ; preds = %if.end22
  tail call void @consume_skb(ptr noundef %45) #11
  %61 = ptrtoint ptr %skb.i81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %skb.i81, align 4
  %62 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i83 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %ar_usb.i.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ar_usb.i.i83, align 4
  %tobool.not.i.i84 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i84, label %land.lhs.true.critedge.land.lhs.true_crit_edge, label %do.body1.i.i89

land.lhs.true.critedge.land.lhs.true_crit_edge:   ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.body1.i.i89:                                   ; preds = %land.lhs.true.critedge
  %call3.i.i85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %65) #11
  %urb_cnt.i.i86 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %urb_cnt.i.i86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %urb_cnt.i.i86, align 4
  %inc.i.i87 = add i32 %67, 1
  store i32 %inc.i.i87, ptr %urb_cnt.i.i86, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 4
  %call.i.i.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %63, ptr noundef %69) #11
  br i1 %call.i.i.i.i88, label %do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge, label %do.body1.i.i89.land.lhs.true.sink.split_crit_edge

do.body1.i.i89.land.lhs.true.sink.split_crit_edge: ; preds = %do.body1.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.sink.split

do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge: ; preds = %do.body1.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.sink.split.sink.split

land.lhs.true.sink.split.sink.split:              ; preds = %do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge, %do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge
  %.sink127 = phi ptr [ %60, %do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge ], [ %69, %do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge ]
  %.sink125 = phi ptr [ %54, %do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge ], [ %63, %do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge ]
  %ar_usb.i.i83.sink.ph = phi ptr [ %ar_usb.i.i69, %do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge ], [ %ar_usb.i.i83, %do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge ]
  %call3.i.i85.sink.ph = phi i32 [ %call3.i.i71, %do.body1.i.i75.land.lhs.true.sink.split.sink.split_crit_edge ], [ %call3.i.i85, %do.body1.i.i89.land.lhs.true.sink.split.sink.split_crit_edge ]
  %prev1.i.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %.sink127, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %1, ptr %prev1.i.i.i.i90, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.sink127, ptr %1, align 4
  %prev3.i.i.i.i91 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.sink125, ptr %prev3.i.i.i.i91, align 4
  %73 = ptrtoint ptr %.sink125 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %1, ptr %.sink125, align 4
  br label %land.lhs.true.sink.split

land.lhs.true.sink.split:                         ; preds = %land.lhs.true.sink.split.sink.split, %do.body1.i.i89.land.lhs.true.sink.split_crit_edge, %do.body1.i.i75.land.lhs.true.sink.split_crit_edge
  %ar_usb.i.i83.sink = phi ptr [ %ar_usb.i.i69, %do.body1.i.i75.land.lhs.true.sink.split_crit_edge ], [ %ar_usb.i.i83, %do.body1.i.i89.land.lhs.true.sink.split_crit_edge ], [ %ar_usb.i.i83.sink.ph, %land.lhs.true.sink.split.sink.split ]
  %call3.i.i85.sink = phi i32 [ %call3.i.i71, %do.body1.i.i75.land.lhs.true.sink.split_crit_edge ], [ %call3.i.i85, %do.body1.i.i89.land.lhs.true.sink.split_crit_edge ], [ %call3.i.i85.sink.ph, %land.lhs.true.sink.split.sink.split ]
  %74 = ptrtoint ptr %ar_usb.i.i83.sink to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ar_usb.i.i83.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %call3.i.i85.sink) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %land.lhs.true.critedge.land.lhs.true_crit_edge, %if.end27.land.lhs.true_crit_edge
  %urb_cnt = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 3
  %76 = ptrtoint ptr %urb_cnt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %urb_cnt, align 4
  %urb_cnt_thresh = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %3, i32 0, i32 4
  %78 = ptrtoint ptr %urb_cnt_thresh to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %urb_cnt_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp35.not = icmp ult i32 %77, %79
  br i1 %cmp35.not, label %land.lhs.true.if.end38_crit_edge, label %if.then37

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ath10k_usb_post_recv_transfers(ptr noundef %7, ptr noundef %3)
  br label %if.end38

if.end38.critedge:                                ; preds = %do.end.if.end38.critedge_crit_edge, %do.end.if.end38.critedge_crit_edge128, %do.end.if.end38.critedge_crit_edge129
  %skb.i95 = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 2
  %80 = ptrtoint ptr %skb.i95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb.i95, align 4
  tail call void @consume_skb(ptr noundef %81) #11
  %82 = ptrtoint ptr %skb.i95 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %skb.i95, align 4
  %83 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i97 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %ar_usb.i.i97 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ar_usb.i.i97, align 4
  %tobool.not.i.i98 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i98, label %if.end38.critedge.if.end38_crit_edge, label %do.body1.i.i103

if.end38.critedge.if.end38_crit_edge:             ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body1.i.i103:                                  ; preds = %if.end38.critedge
  %call3.i.i99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %86) #11
  %urb_cnt.i.i100 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %84, i32 0, i32 3
  %87 = ptrtoint ptr %urb_cnt.i.i100 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %urb_cnt.i.i100, align 4
  %inc.i.i101 = add i32 %88, 1
  store i32 %inc.i.i101, ptr %urb_cnt.i.i100, align 4
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %84, align 4
  %call.i.i.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %84, ptr noundef %90) #11
  br i1 %call.i.i.i.i102, label %if.end.i.i.i.i106, label %do.body1.i.i103.list_add.exit.i.i107_crit_edge

do.body1.i.i103.list_add.exit.i.i107_crit_edge:   ; preds = %do.body1.i.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i.i107

if.end.i.i.i.i106:                                ; preds = %do.body1.i.i103
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %1, ptr %prev1.i.i.i.i104, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %90, ptr %1, align 4
  %prev3.i.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %84, ptr %prev3.i.i.i.i105, align 4
  %94 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %1, ptr %84, align 4
  br label %list_add.exit.i.i107

list_add.exit.i.i107:                             ; preds = %if.end.i.i.i.i106, %do.body1.i.i103.list_add.exit.i.i107_crit_edge
  %95 = ptrtoint ptr %ar_usb.i.i97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ar_usb.i.i97, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %96, i32 noundef %call3.i.i99) #11
  br label %if.end38

if.end38.critedge62:                              ; preds = %lor.lhs.false11
  %skb.i109 = getelementptr inbounds %struct.ath10k_urb_context, ptr %1, i32 0, i32 2
  %97 = ptrtoint ptr %skb.i109 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %skb.i109, align 4
  tail call void @consume_skb(ptr noundef %98) #11
  %99 = ptrtoint ptr %skb.i109 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %skb.i109, align 4
  %100 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i111 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %ar_usb.i.i111 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ar_usb.i.i111, align 4
  %tobool.not.i.i112 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i112, label %if.end38.critedge62.if.end38_crit_edge, label %do.body1.i.i117

if.end38.critedge62.if.end38_crit_edge:           ; preds = %if.end38.critedge62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body1.i.i117:                                  ; preds = %if.end38.critedge62
  %call3.i.i113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %103) #11
  %urb_cnt.i.i114 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %101, i32 0, i32 3
  %104 = ptrtoint ptr %urb_cnt.i.i114 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %urb_cnt.i.i114, align 4
  %inc.i.i115 = add i32 %105, 1
  store i32 %inc.i.i115, ptr %urb_cnt.i.i114, align 4
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %101, align 4
  %call.i.i.i.i116 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %101, ptr noundef %107) #11
  br i1 %call.i.i.i.i116, label %if.end.i.i.i.i120, label %do.body1.i.i117.list_add.exit.i.i121_crit_edge

do.body1.i.i117.list_add.exit.i.i121_crit_edge:   ; preds = %do.body1.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i.i121

if.end.i.i.i.i120:                                ; preds = %do.body1.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %1, ptr %prev1.i.i.i.i118, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %107, ptr %1, align 4
  %prev3.i.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %101, ptr %prev3.i.i.i.i119, align 4
  %111 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %1, ptr %101, align 4
  br label %list_add.exit.i.i121

list_add.exit.i.i121:                             ; preds = %if.end.i.i.i.i120, %do.body1.i.i117.list_add.exit.i.i121_crit_edge
  %112 = ptrtoint ptr %ar_usb.i.i111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ar_usb.i.i111, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %113, i32 noundef %call3.i.i113) #11
  br label %if.end38

if.end38:                                         ; preds = %list_add.exit.i.i121, %if.end38.critedge62.if.end38_crit_edge, %list_add.exit.i.i107, %if.end38.critedge.if.end38_crit_edge, %if.then37, %land.lhs.true.if.end38_crit_edge, %list_add.exit.i.i, %if.then14.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_usb_flush_all(ptr noundef %ar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %ar_usb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted) #11
  %io_complete_work = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 16
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %ar_usb1.1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 0, i32 10
  %2 = ptrtoint ptr %ar_usb1.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar_usb1.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 22, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.1) #11
  %io_complete_work.1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 1, i32 1
  %call6.1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %ar_usb1.2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 3, i32 7, i32 1, i32 7
  %4 = ptrtoint ptr %ar_usb1.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar_usb1.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 2, i32 5, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.2) #11
  %io_complete_work.2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 3, i32 8
  %call6.2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %ar_usb1.3 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 10
  %6 = ptrtoint ptr %ar_usb1.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar_usb1.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.3 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.3) #11
  %io_complete_work.3 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 12
  %call6.3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.3) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %ar_usb1.4 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 1, i32 1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %ar_usb1.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar_usb1.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.4 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 35, i32 1, i32 0, i32 4, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.4) #11
  %io_complete_work.4 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 1, i32 1, i32 0, i32 4, i32 7
  %call6.4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.4) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %ar_usb1.5 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 7
  %10 = ptrtoint ptr %ar_usb1.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar_usb1.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.5 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 3, i32 1, i32 0, i32 4, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.5) #11
  %io_complete_work.5 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 9
  %call6.5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.5) #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %ar_usb1.6 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 10
  %12 = ptrtoint ptr %ar_usb1.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar_usb1.6, align 4
  %tobool.not.6 = icmp eq ptr %13, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.6 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.6) #11
  %io_complete_work.6 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 10, i32 2
  %call6.6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.6) #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %ar_usb1.7 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 0, i32 14, i32 2, i32 0, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %ar_usb1.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ar_usb1.7, align 4
  %tobool.not.7 = icmp eq ptr %15, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %urb_submitted.7 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 0, i32 3, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.7) #11
  %io_complete_work.7 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 42, i32 1, i32 1, i32 1
  %call6.7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %io_complete_work.7) #11
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_usb_io_comp_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb, align 4
  %ar1 = getelementptr inbounds %struct.ath10k_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1, align 4
  %io_comp_queue = getelementptr i8, ptr %work, i32 44
  %call8 = tail call ptr @skb_dequeue(ptr noundef %io_comp_queue) #11
  %tobool.not9 = icmp eq ptr %call8, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %flags = getelementptr i8, ptr %work, i32 -16
  %htc1.i = getelementptr inbounds %struct.ath10k, ptr %3, i32 0, i32 42
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call10 = phi ptr [ %call8, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %data.i7 = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 19
  %6 = ptrtoint ptr %data.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i7, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i.i = zext i8 %9 to i32
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.ath10k, ptr %3, i32 0, i32 42, i32 1, i32 %conv.i.i
  tail call void @ath10k_htc_notify_tx_completion(ptr noundef %arrayidx.i, ptr noundef nonnull %call10) #11
  br label %if.end

if.else:                                          ; preds = %while.body
  %service_id.i = getelementptr %struct.ath10k, ptr %3, i32 0, i32 42, i32 1, i32 %conv.i.i, i32 2
  %10 = ptrtoint ptr %service_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %conv.i.i) #11
  br label %out_free_skb.i

if.end.i:                                         ; preds = %if.else
  %len.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.23) #11
  br label %out_free_skb.i

if.end4.i:                                        ; preds = %if.end.i
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #11
  %conv.i = zext i16 %14 to i32
  %15 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv5.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv5.i)
  %cmp6.i = icmp ult i32 %conv.i, %conv5.i
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.24) #11
  br label %out_free_skb.i

if.end9.i:                                        ; preds = %if.end4.i
  %flags.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags.i, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not.i = icmp eq i8 %20, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end28.i_crit_edge, label %if.then12.i

if.end9.i.if.end28.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then12.i:                                      ; preds = %if.end9.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %idx.neg.i = sub nsw i32 0, %conv5.i
  %add.ptr17.i = getelementptr i8, ptr %add.ptr15.i, i32 %idx.neg.i
  %call19.i = tail call i32 @ath10k_htc_process_trailer(ptr noundef %htc1.i, ptr noundef %add.ptr17.i, i32 noundef %conv5.i, i32 noundef %conv.i.i, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.then12.i.out_free_skb.i_crit_edge

if.then12.i.out_free_skb.i_crit_edge:             ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_skb.i

if.end22.i:                                       ; preds = %if.then12.i
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #11
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %15, align 4
  %26 = zext i8 %25 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %26)
  %cmp.i.i = icmp eq i16 %23, %26
  br i1 %cmp.i.i, label %if.end22.i.out_free_skb.i_crit_edge, label %if.end25.i

if.end22.i.out_free_skb.i_crit_edge:              ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_skb.i

if.end25.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %len26.i = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 6
  %27 = ptrtoint ptr %len26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len26.i, align 4
  %conv27.i = zext i8 %25 to i32
  %sub.i = sub i32 %28, %conv27.i
  tail call void @skb_trim(ptr noundef nonnull %call10, i32 noundef %sub.i) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end25.i, %if.end9.i.if.end28.i_crit_edge
  %call29.i = tail call ptr @skb_pull(ptr noundef nonnull %call10, i32 noundef 8) #11
  %ep_rx_complete.i = getelementptr %struct.ath10k, ptr %3, i32 0, i32 42, i32 1, i32 %conv.i.i, i32 3, i32 1
  %29 = ptrtoint ptr %ep_rx_complete.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep_rx_complete.i, align 4
  tail call void %30(ptr noundef %3, ptr noundef nonnull %call10) #11
  br label %if.end

out_free_skb.i:                                   ; preds = %if.end22.i.out_free_skb.i_crit_edge, %if.then12.i.out_free_skb.i_crit_edge, %if.then8.i, %if.then3.i, %if.then.i
  tail call void @consume_skb(ptr noundef nonnull %call10) #11
  br label %if.end

if.end:                                           ; preds = %out_free_skb.i, %if.end28.i, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %io_comp_queue) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_usb_setup_pipe_resources(ptr noundef %ar, ptr nocapture noundef readonly %interface) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_setup_pipe_resources, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !97

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.26) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp296.not = icmp eq i8 %4, 0
  br i1 %cmp296.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %endpoint3 = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %udev165 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0297 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %endpoint3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endpoint3, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %6, i32 %i.0297
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %7 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmAttributes, align 1
  %trunc = trunc i8 %8 to i2
  %9 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i2 %trunc, label %for.body.if.end82_crit_edge [
    i2 -2, label %do.body10
    i2 -1, label %do.body32
    i2 1, label %do.body59
  ]

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.body10:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %do.body10.if.then16_crit_edge

do.body10.if.then16_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

lor.lhs.false13:                                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_setup_pipe_resources, %if.then16)) #11
          to label %if.end82 [label %if.then16], !srcloc !97

if.then16:                                        ; preds = %lor.lhs.false13, %do.body10.if.then16_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress, align 1
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond = select i1 %tobool19.not, ptr @.str.29, ptr @.str.28
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wMaxPacketSize, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv22 = zext i16 %15 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond, i32 noundef %conv17, i32 noundef %conv22) #11
  br label %if.end82

do.body32:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %16 = load i32, ptr @ath10k_debug_mask, align 4
  %and33 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %do.body32.if.then38_crit_edge

do.body32.if.then38_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false35:                                  ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_setup_pipe_resources, %if.then38)) #11
          to label %if.end82 [label %if.then38], !srcloc !97

if.then38:                                        ; preds = %lor.lhs.false35, %do.body32.if.then38_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %bEndpointAddress39 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %bEndpointAddress39 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress39, align 1
  %conv40 = zext i8 %18 to i32
  %and41 = and i32 %conv40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond43 = select i1 %tobool42.not, ptr @.str.29, ptr @.str.28
  %wMaxPacketSize46 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize46 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize46, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv47 = zext i16 %21 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %22 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterval, align 1
  %conv48 = zext i8 %23 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond43, i32 noundef %conv40, i32 noundef %conv47, i32 noundef %conv48) #11
  br label %if.end82

do.body59:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %24 = load i32, ptr @ath10k_debug_mask, align 4
  %and60 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %do.body59.if.then65_crit_edge

do.body59.if.then65_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

lor.lhs.false62:                                  ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_setup_pipe_resources, %if.then65)) #11
          to label %if.end82 [label %if.then65], !srcloc !97

if.then65:                                        ; preds = %lor.lhs.false62, %do.body59.if.then65_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %bEndpointAddress66 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress66 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress66, align 1
  %conv67 = zext i8 %26 to i32
  %and68 = and i32 %conv67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.29, ptr @.str.28
  %wMaxPacketSize73 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %27 = ptrtoint ptr %wMaxPacketSize73 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxPacketSize73, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv74 = zext i16 %29 to i32
  %bInterval75 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %30 = ptrtoint ptr %bInterval75 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bInterval75, align 1
  %conv76 = zext i8 %31 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond70, i32 noundef %conv67, i32 noundef %conv74, i32 noundef %conv76) #11
  br label %if.end82

if.end82:                                         ; preds = %if.then65, %lor.lhs.false62, %if.then38, %lor.lhs.false35, %if.then16, %lor.lhs.false13, %for.body.if.end82_crit_edge
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %32 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wMaxPacketSize.i, align 1
  %34 = and i16 %33, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp84 = icmp eq i16 %34, 0
  br i1 %cmp84, label %if.end82.for.inc_crit_edge, label %if.end87

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end87:                                         ; preds = %if.end82
  %bEndpointAddress88 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %35 = ptrtoint ptr %bEndpointAddress88 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress88, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %36, label %if.end87.for.inc_crit_edge [
    i8 -127, label %if.end87.if.end94_crit_edge
    i8 -126, label %sw.bb1.i
    i8 -124, label %sw.bb2.i
    i8 -125, label %sw.bb3.i
    i8 1, label %sw.bb4.i
    i8 2, label %sw.bb5.i
    i8 3, label %sw.bb6.i
    i8 4, label %sw.bb7.i
  ]

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.end87.for.inc_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb1.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

sw.bb2.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

sw.bb3.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

sw.bb4.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

sw.bb5.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

sw.bb6.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

sw.bb7.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.end94:                                         ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end87.if.end94_crit_edge
  %pipe_num.0.ph.i = phi i8 [ 5, %sw.bb1.i ], [ 7, %sw.bb2.i ], [ 6, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ 1, %sw.bb5.i ], [ 2, %sw.bb6.i ], [ 3, %sw.bb7.i ], [ 4, %if.end87.if.end94_crit_edge ]
  %conv90 = zext i8 %pipe_num.0.ph.i to i32
  %arrayidx95 = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90
  %ar_usb96 = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 9
  %38 = ptrtoint ptr %ar_usb96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ar_usb96, align 4
  %tobool97.not = icmp eq ptr %39, null
  br i1 %tobool97.not, label %if.end99, label %if.end94.for.inc_crit_edge

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end99:                                         ; preds = %if.end94
  %40 = ptrtoint ptr %ar_usb96 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %drv_priv.i, ptr %ar_usb96, align 4
  %logical_pipe_num = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 8
  %41 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %pipe_num.0.ph.i, ptr %logical_pipe_num, align 1
  %42 = ptrtoint ptr %bEndpointAddress88 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bEndpointAddress88, align 1
  %ep_address = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 7
  %44 = ptrtoint ptr %ep_address to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %ep_address, align 4
  %45 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %wMaxPacketSize.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %max_packet_size = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 10
  %48 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %max_packet_size, align 4
  %49 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bmAttributes, align 1
  %trunc294 = trunc i8 %50 to i2
  %51 = zext i2 %trunc294 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.41)
  switch i2 %trunc294, label %if.end99.if.end182_crit_edge [
    i2 -2, label %if.then108
    i2 -1, label %if.then132
    i2 1, label %if.then159
  ]

if.end99.if.end182_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

if.then108:                                       ; preds = %if.end99
  %conv110 = zext i8 %43 to i32
  %and111 = and i32 %conv110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %52 = ptrtoint ptr %udev165 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev165, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i272 = shl i32 %55, 8
  %shl1.i273 = shl nuw nsw i32 %conv110, 15
  %or.i274 = or i32 %shl1.i273, %shl.i272
  br i1 %tobool112.not, label %if.else118, label %if.then113

if.then113:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %or117 = or i32 %or.i274, -1073741696
  br label %if.end182.sink.split

if.else118:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %or123 = or i32 %or.i274, -1073741824
  br label %if.end182.sink.split

if.then132:                                       ; preds = %if.end99
  %conv134 = zext i8 %43 to i32
  %and135 = and i32 %conv134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %56 = ptrtoint ptr %udev165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev165, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i278 = shl i32 %59, 8
  %shl1.i279 = shl nuw nsw i32 %conv134, 15
  %or.i280 = or i32 %shl1.i279, %shl.i278
  br i1 %tobool136.not, label %if.else145, label %if.then137

if.then137:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  %or143 = or i32 %or.i280, 1073741952
  br label %if.end182.sink.split

if.else145:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  %or150 = or i32 %or.i280, 1073741824
  br label %if.end182.sink.split

if.then159:                                       ; preds = %if.end99
  %conv161 = zext i8 %43 to i32
  %and162 = and i32 %conv161, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  %60 = ptrtoint ptr %udev165 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udev165, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %shl.i284 = shl i32 %63, 8
  %shl1.i285 = shl nuw nsw i32 %conv161, 15
  br i1 %tobool163.not, label %if.else172, label %if.then164

if.then164:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  %or.i283 = or i32 %shl1.i285, %shl.i284
  %or170 = or i32 %or.i283, 128
  br label %if.end182.sink.split

if.else172:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  %or.i286 = or i32 %shl.i284, %shl1.i285
  br label %if.end182.sink.split

if.end182.sink.split:                             ; preds = %if.else172, %if.then164, %if.else145, %if.then137, %if.else118, %if.then113
  %or150.sink = phi i32 [ %or150, %if.else145 ], [ %or143, %if.then137 ], [ %or170, %if.then164 ], [ %or.i286, %if.else172 ], [ %or117, %if.then113 ], [ %or123, %if.else118 ]
  %usb_pipe_handle151 = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 5
  %64 = ptrtoint ptr %usb_pipe_handle151 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or150.sink, ptr %usb_pipe_handle151, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.end182.sink.split, %if.end99.if.end182_crit_edge
  %ep_desc = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 13
  %65 = ptrtoint ptr %ep_desc to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx, ptr %ep_desc, align 4
  %66 = ptrtoint ptr %ep_address to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ep_address, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %tobool186.not = icmp sgt i8 %67, -1
  br i1 %tobool186.not, label %if.then187, label %if.end182.if.end189_crit_edge

if.end182.if.end189_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then187:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr %struct.ath10k_usb, ptr %drv_priv.i, i32 0, i32 3, i32 %conv90, i32 6
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %or188 = or i32 %69, 1
  store i32 %or188, ptr %flags, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.end182.if.end189_crit_edge
  %call190 = tail call fastcc i32 @ath10k_usb_alloc_pipe_resources(ptr noundef %ar, ptr noundef %arrayidx95, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end189.for.inc_crit_edge, label %if.end189.cleanup_crit_edge

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end189.for.inc_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end189.for.inc_crit_edge, %if.end94.for.inc_crit_edge, %if.end87.for.inc_crit_edge, %if.end82.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0297, 1
  %70 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %71 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end189.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call190, %if.end189.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_notify_tx_completion(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htc_process_trailer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_usb_alloc_pipe_resources(ptr noundef %ar, ptr noundef %pipe, i32 noundef %urb_cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %pipe, ptr %pipe, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pipe, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pipe, ptr %prev.i, align 4
  %urb_submitted = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 1, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 104)
  %4 = ptrtoint ptr %urb_submitted to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %urb_submitted, ptr %urb_submitted, align 4
  %prev.i.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %urb_submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_usb_anchor.__key.34, i16 noundef signext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %urb_cnt)
  %cmp20 = icmp sgt i32 %urb_cnt, 0
  br i1 %cmp20, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %urb_alloc = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 2
  %ar_usb.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 9
  %urb_cnt.i = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ath10k_usb_free_urb_to_pipe.exit.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc2, %ath10k_usb_free_urb_to_pipe.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %pipe1 = getelementptr inbounds %struct.ath10k_urb_context, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pipe1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pipe, ptr %pipe1, align 8
  %8 = ptrtoint ptr %urb_alloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urb_alloc, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %urb_alloc, align 4
  %10 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.ath10k_usb_free_urb_to_pipe.exit_crit_edge, label %do.body1.i

if.end.ath10k_usb_free_urb_to_pipe.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_free_urb_to_pipe.exit

do.body1.i:                                       ; preds = %if.end
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #11
  %12 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %urb_cnt.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %urb_cnt.i, align 4
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %pipe, ptr noundef %15) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_add.exit.i_crit_edge

do.body1.i.list_add.exit.i_crit_edge:             ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pipe, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %pipe, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.body1.i.list_add.exit.i_crit_edge
  %20 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call3.i) #11
  br label %ath10k_usb_free_urb_to_pipe.exit

ath10k_usb_free_urb_to_pipe.exit:                 ; preds = %list_add.exit.i, %if.end.ath10k_usb_free_urb_to_pipe.exit_crit_edge
  %inc2 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc2, %urb_cnt
  br i1 %exitcond.not, label %ath10k_usb_free_urb_to_pipe.exit.do.body_crit_edge, label %ath10k_usb_free_urb_to_pipe.exit.for.body_crit_edge

ath10k_usb_free_urb_to_pipe.exit.for.body_crit_edge: ; preds = %ath10k_usb_free_urb_to_pipe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

ath10k_usb_free_urb_to_pipe.exit.do.body_crit_edge: ; preds = %ath10k_usb_free_urb_to_pipe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %ath10k_usb_free_urb_to_pipe.exit.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %22 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %22, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_alloc_pipe_resources, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !97

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %logical_pipe_num = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 8
  %23 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %24 to i32
  %usb_pipe_handle = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 5
  %25 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_pipe_handle, align 4
  %urb_alloc6 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 2
  %27 = ptrtoint ptr %urb_alloc6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %urb_alloc6, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %26, i32 noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %lor.lhs.false, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %lor.lhs.false ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_usb_free_pipe_resources(ptr noundef %ar, ptr noundef %pipe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 9
  %0 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_free_pipe_resources, %if.then2)) #11
          to label %do.end [label %if.then2], !srcloc !97

if.then2:                                         ; preds = %lor.lhs.false, %do.body.if.then2_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %logical_pipe_num = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 8
  %3 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %4 to i32
  %usb_pipe_handle = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 5
  %5 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_pipe_handle, align 4
  %urb_alloc = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 2
  %7 = ptrtoint ptr %urb_alloc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %urb_alloc, align 4
  %urb_cnt = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 3
  %9 = ptrtoint ptr %urb_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %urb_cnt, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %6, i32 noundef %8, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then2, %lor.lhs.false
  %urb_alloc4 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 2
  %11 = ptrtoint ptr %urb_alloc4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %urb_alloc4, align 4
  %urb_cnt5 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 3
  %13 = ptrtoint ptr %urb_cnt5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %urb_cnt5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not = icmp eq i32 %12, %14
  br i1 %cmp.not, label %do.end.if.end23_crit_edge, label %do.body8

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.body8:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %15 = load i32, ptr @ath10k_debug_mask, align 4
  %and9 = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %do.body8.if.then14_crit_edge

do.body8.if.then14_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false11:                                  ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_usb_free_pipe_resources, %if.then14)) #11
          to label %if.end23 [label %if.then14], !srcloc !97

if.then14:                                        ; preds = %lor.lhs.false11, %do.body8.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  %logical_pipe_num15 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 8
  %16 = ptrtoint ptr %logical_pipe_num15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %logical_pipe_num15, align 1
  %conv16 = zext i8 %17 to i32
  %usb_pipe_handle17 = getelementptr inbounds %struct.ath10k_usb_pipe, ptr %pipe, i32 0, i32 5
  %18 = ptrtoint ptr %usb_pipe_handle17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_pipe_handle17, align 4
  %20 = ptrtoint ptr %urb_alloc4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %urb_alloc4, align 4
  %22 = ptrtoint ptr %urb_cnt5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %urb_cnt5, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 262144, ptr noundef nonnull @.str.37, i32 noundef %conv16, i32 noundef %19, i32 noundef %21, i32 noundef %23) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %lor.lhs.false11, %do.end.if.end23_crit_edge
  %24 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ar_usb, align 4
  %tobool.not.i51 = icmp eq ptr %25, null
  br i1 %tobool.not.i51, label %if.end23.cleanup_crit_edge, label %if.end23.do.body1.i_crit_edge

if.end23.do.body1.i_crit_edge:                    ; preds = %if.end23
  br label %do.body1.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1.i:                                       ; preds = %if.end27.do.body1.i_crit_edge, %if.end23.do.body1.i_crit_edge
  %26 = phi ptr [ %44, %if.end27.do.body1.i_crit_edge ], [ %25, %if.end23.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %26) #11
  %27 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pipe, align 4
  %cmp.i.not.i = icmp eq ptr %28, %pipe
  br i1 %cmp.i.not.i, label %ath10k_usb_alloc_urb_from_pipe.exit.thread48, label %if.then8.i

ath10k_usb_alloc_urb_from_pipe.exit.thread48:     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar_usb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call3.i) #11
  br label %cleanup

if.then8.i:                                       ; preds = %do.body1.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge

if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath10k_usb_alloc_urb_from_pipe.exit

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %ath10k_usb_alloc_urb_from_pipe.exit

ath10k_usb_alloc_urb_from_pipe.exit:              ; preds = %if.end.i.i.i, %if.then8.i.ath10k_usb_alloc_urb_from_pipe.exit_crit_edge
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %urb_cnt5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %urb_cnt5, align 4
  %dec.i = add i32 %40, -1
  store i32 %dec.i, ptr %urb_cnt5, align 4
  %41 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ar_usb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call3.i) #11
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, label %if.end27

ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge: ; preds = %ath10k_usb_alloc_urb_from_pipe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %ath10k_usb_alloc_urb_from_pipe.exit
  tail call void @kfree(ptr noundef nonnull %28) #11
  %43 = ptrtoint ptr %ar_usb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ar_usb, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end27.cleanup_crit_edge, label %if.end27.do.body1.i_crit_edge

if.end27.do.body1.i_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %ath10k_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, %ath10k_usb_alloc_urb_from_pipe.exit.thread48, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !57, !59, !61, !63, !64, !66, !68, !69, !70, !72, !74, !76, !78, !79, !81, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ath10k_usb__408_1100_ath10k_usb_driver_init6, !1, !"__initcall__kmod_ath10k_usb__408_1100_ath10k_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1100, i32 1}
!2 = !{ptr @__exitcall_ath10k_usb_driver_exit, !1, !"__exitcall_ath10k_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author409, !4, !"__UNIQUE_ID_author409", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1102, i32 1}
!5 = !{ptr @__UNIQUE_ID_description410, !6, !"__UNIQUE_ID_description410", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1103, i32 1}
!7 = !{ptr @__UNIQUE_ID_file411, !8, !"__UNIQUE_ID_file411", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1104, i32 1}
!9 = !{ptr @__UNIQUE_ID_license412, !8, !"__UNIQUE_ID_license412", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ath10k_usb_driver, !12, !"ath10k_usb_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1089, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 991, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ath10k_usb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ath10k_usb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 999, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1018, i32 19}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1023, i32 18}
!27 = !{ptr @ath10k_usb_hif_ops, !28, !"ath10k_usb_hif_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 720, i32 36}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 443, i32 4}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 190, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 497, i32 19}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 531, i32 19}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 644, i32 9}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 656, i32 9}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 232, i32 3}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 242, i32 4}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 133, i32 2}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 150, i32 4}
!49 = !{ptr @ath10k_usb_create.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 934, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ath10k_usb_create.__key.20, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 940, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 307, i32 19}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 313, i32 19}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 318, i32 19}
!61 = !{ptr @skb_queue_head_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 825, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 832, i32 4}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 839, i32 4}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 848, i32 4}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 807, i32 2}
!76 = !{ptr @init_usb_anchor.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @init_usb_anchor.__key.34, !80, !"__key", i1 false, i1 false}
!80 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 92, i32 2}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 98, i32 3}
!86 = !{ptr @ath10k_usb_ids, !87, !"ath10k_usb_ids", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath10k/usb.c", i32 1082, i32 29}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148978864, i64 2148978869, i64 2148978882, i64 2148978926, i64 2148978960, i64 2148978981}
