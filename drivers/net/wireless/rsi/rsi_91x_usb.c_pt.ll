; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_usb.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.rsi_host_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsi_mod_ops = type { ptr, ptr, ptr }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.rsi_91x_usbdev = type { ptr, %struct.rsi_thread, i8, ptr, ptr, [2 x %struct.rx_usb_ctrl_block], ptr, [8 x i16], [8 x i8], [8 x i16], [8 x i8], i32, i8, %struct.sk_buff_head }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.rx_usb_ctrl_block = type { ptr, ptr, ptr, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { [8 x i8] }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
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

@__param_str_dev_oper_mode = internal constant [22 x i8] c"rsi_usb.dev_oper_mode\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@dev_oper_mode = internal global { i16, [30 x i8] } { i16 13, [30 x i8] zeroinitializer }, align 32
@__param_dev_oper_mode = internal constant %struct.kernel_param { ptr @__param_str_dev_oper_mode, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_oper_mode } }, section "__param", align 4
@__UNIQUE_ID_dev_oper_modetype353 = internal constant [38 x i8] c"rsi_usb.parmtype=dev_oper_mode:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_oper_mode354 = internal constant [255 x i8] c"rsi_usb.parm=dev_oper_mode:1[Wi-Fi alone], 4[BT classic alone], 8[BT LE alone], 12[BT classic + BT LE alone], 5[Wi-Fi STA + BT classic], 9[Wi-Fi STA + BT LE], 13[Wi-Fi STA + BT classic + BT LE], 6[Wi-Fi AP + BT classic], 14[Wi-Fi AP + BT classic + BT LE]\00", section ".modinfo", align 1
@__initcall__kmod_rsi_usb__359_930_rsi_driver_init6 = internal global ptr @rsi_driver_init, section ".initcall6.init", align 4
@rsi_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @rsi_probe, ptr @rsi_disconnect, ptr null, ptr @rsi_suspend, ptr @rsi_resume, ptr null, ptr null, ptr null, ptr @rsi_dev_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rsi_driver_exit = internal global ptr @rsi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author360 = internal constant [35 x i8] c"rsi_usb.author=Redpine Signals Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [53 x i8] c"rsi_usb.description=Common USB layer for RSI drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [38 x i8] c"rsi_usb.firmware=rs9113_wlan_qspi.rps\00", section ".modinfo", align 1
@__UNIQUE_ID_version363 = internal constant [20 x i8] c"rsi_usb.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rsi_usb\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file364 = internal constant [46 x i8] c"rsi_usb.file=drivers/net/wireless/rsi/rsi_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license365 = internal constant [29 x i8] c"rsi_usb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RSI-USB WLAN\00", [19 x i8] zeroinitializer }, align 32
@rsi_dev_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5656, i16 -28397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5656, i16 -28394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Init function called\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rsi_probe = private unnamed_addr constant [10 x i8] c"rsi_probe\00", align 1
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to init os intf ops\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to init usb interface\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Initialized os intf ops\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: 9113 module detected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: 9116 module detected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unsupported RSI device id 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Loading firmware...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed in device init\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Device Init Done\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed in probe...Exiting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to init RX handle\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_host_intf_ops = internal global { %struct.rsi_host_intf_ops, [56 x i8] } { %struct.rsi_host_intf_ops { ptr null, ptr @rsi_usb_host_intf_write_pkt, ptr null, ptr @rsi_usb_read_register_multiple, ptr @rsi_usb_write_register_multiple, ptr @rsi_usb_master_reg_read, ptr @rsi_usb_master_reg_write, ptr @rsi_usb_load_data_master_write, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Enabled the interface\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rsi_init_usb_interface = private unnamed_addr constant [23 x i8] c"rsi_init_usb_interface\00", align 1
@rsi_find_bulk_in_and_out_endpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 150, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing wlan bulk endpoints\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rsi_find_bulk_in_and_out_endpoints\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/rsi/rsi_91x_usb.c\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsi_find_bulk_in_and_out_endpoints._entry_ptr = internal global ptr @rsi_find_bulk_in_and_out_endpoints._entry, section ".printk_index", align 4
@rsi_find_bulk_in_and_out_endpoints._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.19, i32 156, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing bt bulk-in endpoint\0A\00", [35 x i8] zeroinitializer }, align 32
@rsi_find_bulk_in_and_out_endpoints._entry_ptr.24 = internal global ptr @rsi_find_bulk_in_and_out_endpoints._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed alloc rx urb[%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RX-Thread\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to init rx thrd\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rsi_usb_init_rx = private unnamed_addr constant [16 x i8] c"rsi_usb_init_rx\00", align 1
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rsi_init_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pevent->event_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Card write failed with error code :%10d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Reg read failed with error code :%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Reg write failed with error code :%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Reg write failed with error code :%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rsi_usb_reg_write = private unnamed_addr constant [18 x i8] c"rsi_usb_reg_write\00", align 1
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"num_blocks: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: loading block: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rsi_usb_load_data_master_write = private unnamed_addr constant [31 x i8] c"rsi_usb_load_data_master_write\00", align 1
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Written Last Block in Address 0x%x Successfully\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Reg read failed with error code :%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rsi_usb_reg_read = private unnamed_addr constant [17 x i8] c"rsi_usb_reg_read\00", align 1
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed in urb submission\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rsi_rx_urb_submit = private unnamed_addr constant [18 x i8] c"rsi_rx_urb_submit\00", align 1
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Invalid packet length = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_rx_done_handler = private unnamed_addr constant [20 x i8] c"rsi_rx_done_handler\00", align 1
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Max RX packets reached\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed in urb submission\00", [35 x i8] zeroinitializer }, align 32
@rsi_bt_ops = external dso_local local_unnamed_addr constant %struct.rsi_mod_ops, align 4
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Deinitialization completed\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rsi_disconnect = private unnamed_addr constant [15 x i8] c"rsi_disconnect\00", align 1
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Resetting Card...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Disabling firmware watchdog timer failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Reset card done\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Reset card failed\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 37139, i64 37142]
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"dev_oper_mode\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 26, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"rsi_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 919, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 936, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 920, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"rsi_dev_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 913, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 793, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 797, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 805, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 810, i32 20 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 813, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 816, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 819, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 834, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 837, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 841, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 862, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 646, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"usb_host_intf_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 545, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 665, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 150, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 156, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 586, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 595, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 596, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 1984, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 30, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/rsi/rsi_common.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 66, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 87, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 65, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 388, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 438, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 251, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 514, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 524, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 539, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 202, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 355, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 283, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 288, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 299, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 896, i32 21 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 710, i32 21 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 722, i32 21 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 768, i32 21 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [42 x i8] c"../drivers/net/wireless/rsi/rsi_91x_usb.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 772, i32 20 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_dev_oper_mode354, ptr @__UNIQUE_ID_dev_oper_modetype353, ptr @__UNIQUE_ID_file364, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_license365, ptr @__UNIQUE_ID_version363, ptr @__exitcall_rsi_driver_exit, ptr @__initcall__kmod_rsi_usb__359_930_rsi_driver_init6, ptr @__modver_attr, ptr @__param_dev_oper_mode, ptr @rsi_driver_exit, ptr @rsi_find_bulk_in_and_out_endpoints._entry, ptr @rsi_find_bulk_in_and_out_endpoints._entry.22, ptr @rsi_find_bulk_in_and_out_endpoints._entry_ptr, ptr @rsi_find_bulk_in_and_out_endpoints._entry_ptr.24, ptr @dev_oper_mode, ptr @rsi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rsi_dev_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @usb_host_intf_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @skb_queue_head_init.__key, ptr @.str.28, ptr @rsi_init_event.__key, ptr @.str.29, ptr @.str.30, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_oper_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_dev_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_host_intf_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_find_bulk_in_and_out_endpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_find_bulk_in_and_out_endpoints._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_init_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rsi_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rsi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @rsi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_probe(ptr noundef %pfunction, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rsi_probe) #10
  %0 = load i16, ptr @dev_oper_mode, align 2
  %call = tail call ptr @rsi_91x_init(i16 noundef zeroext %0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %rsi_host_intf = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %rsi_host_intf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %rsi_host_intf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 288) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %rsi_dev1.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %rsi_dev1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %rsi_dev1.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %pfunction, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %usbdev.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %usbdev.i, align 4
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %call7.i.i.i, align 8
  %cur_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %pfunction, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting.i.i, align 4
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bNumEndpoints.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp107.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp107.not.i.i, label %if.end.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %endpoint2.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %9, i32 0, i32 3
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end36.i.i
  %inc43.i.i = add nuw nsw i32 %ii.0108.i.i, 1
  %12 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i = zext i8 %13 to i32
  %cmp.i.i = icmp ult i32 %inc43.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %bout_found.0110.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %bout_found.1.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %bin_found.0109.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %bin_found.1.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %ii.0108.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc43.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %endpoint2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endpoint2.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.usb_host_endpoint, ptr %15, i32 %ii.0108.i.i
  %arrayidx4.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 8, i32 %bin_found.0109.i.i
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool6.not.i.i = icmp sgt i8 %19, -1
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp10.i.i = icmp eq i8 %22, 2
  br i1 %cmp10.i.i, label %if.then.i.i, label %land.lhs.true7.i.i.if.end.i.i_crit_edge

land.lhs.true7.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %arrayidx12.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 7, i32 %bin_found.0109.i.i
  %25 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx12.i.i, align 2
  %26 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i.i, align 1
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx4.i.i, align 1
  %inc.i.i = add nsw i32 %bin_found.0109.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true7.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %bin_found.1.i.i = phi i32 [ %bin_found.0109.i.i, %for.body.i.i.if.end.i.i_crit_edge ], [ %inc.i.i, %if.then.i.i ], [ %bin_found.0109.i.i, %land.lhs.true7.i.i.if.end.i.i_crit_edge ], [ %bin_found.0109.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %arrayidx16.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 10, i32 %bout_found.0110.i.i
  %29 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx16.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %if.end.i.i.if.end36.i.i_crit_edge

if.end.i.i.if.end36.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

land.lhs.true18.i.i:                              ; preds = %if.end.i.i
  %bEndpointAddress19.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %bEndpointAddress19.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEndpointAddress19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool22.not.i.i = icmp sgt i8 %32, -1
  br i1 %tobool22.not.i.i, label %land.lhs.true23.i.i, label %land.lhs.true18.i.i.if.end36.i.i_crit_edge

land.lhs.true18.i.i.if.end36.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

land.lhs.true23.i.i:                              ; preds = %land.lhs.true18.i.i
  %bmAttributes24.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %bmAttributes24.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bmAttributes24.i.i, align 1
  %35 = and i8 %34, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp27.i.i = icmp eq i8 %35, 2
  br i1 %cmp27.i.i, label %if.then29.i.i, label %land.lhs.true23.i.i.if.end36.i.i_crit_edge

land.lhs.true23.i.i.if.end36.i.i_crit_edge:       ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize30.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %wMaxPacketSize30.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wMaxPacketSize30.i.i, align 1
  %38 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %32, ptr %arrayidx16.i.i, align 1
  %arrayidx34.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 9, i32 %bout_found.0110.i.i
  %39 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %37, ptr %arrayidx34.i.i, align 2
  %inc35.i.i = add nsw i32 %bout_found.0110.i.i, 1
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then29.i.i, %land.lhs.true23.i.i.if.end36.i.i_crit_edge, %land.lhs.true18.i.i.if.end36.i.i_crit_edge, %if.end.i.i.if.end36.i.i_crit_edge
  %bout_found.1.i.i = phi i32 [ %bout_found.0110.i.i, %if.end.i.i.if.end36.i.i_crit_edge ], [ %bout_found.0110.i.i, %land.lhs.true18.i.i.if.end36.i.i_crit_edge ], [ %inc35.i.i, %if.then29.i.i ], [ %bout_found.0110.i.i, %land.lhs.true23.i.i.if.end36.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bin_found.1.i.i)
  %cmp37.i.i = icmp sgt i32 %bin_found.1.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bout_found.1.i.i)
  %cmp39.i.i = icmp sgt i32 %bout_found.1.i.i, 7
  %or.cond.i.i = select i1 %cmp37.i.i, i1 true, i1 %cmp39.i.i
  br i1 %or.cond.i.i, label %if.end36.i.i.for.end.i.i_crit_edge, label %for.cond.i.i

if.end36.i.i.for.end.i.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end36.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %bulkin_endpoint_addr44.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %bulkin_endpoint_addr44.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bulkin_endpoint_addr44.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool47.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool47.not.i.i, label %for.end.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge, label %land.lhs.true48.i.i

for.end.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_find_bulk_in_and_out_endpoints.exit.i

land.lhs.true48.i.i:                              ; preds = %for.end.i.i
  %bulkout_endpoint_addr49.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %bulkout_endpoint_addr49.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bulkout_endpoint_addr49.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool52.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool52.not.i.i, label %land.lhs.true48.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge, label %if.end55.i.i

land.lhs.true48.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge: ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_find_bulk_in_and_out_endpoints.exit.i

if.end55.i.i:                                     ; preds = %land.lhs.true48.i.i
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call, align 4
  %coex_mode.i.i = getelementptr inbounds %struct.rsi_common, ptr %45, i32 0, i32 45
  %46 = ptrtoint ptr %coex_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %coex_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp57.i.i = icmp ugt i8 %47, 1
  br i1 %cmp57.i.i, label %if.then59.i.i, label %if.end55.i.i.if.end6.i_crit_edge

if.end55.i.i.if.end6.i_crit_edge:                 ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then59.i.i:                                    ; preds = %if.end55.i.i
  %arrayidx61.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx61.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool62.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool62.not.i.i, label %if.then59.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge, label %if.then59.i.i.if.end6.i_crit_edge

if.then59.i.i.if.end6.i_crit_edge:                ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then59.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge: ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_find_bulk_in_and_out_endpoints.exit.i

rsi_find_bulk_in_and_out_endpoints.exit.i:        ; preds = %if.then59.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge, %land.lhs.true48.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge, %for.end.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge
  %.str.23.sink.i.i = phi ptr [ @.str.17, %for.end.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge ], [ @.str.17, %land.lhs.true48.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge ], [ @.str.23, %if.then59.i.i.rsi_find_bulk_in_and_out_endpoints.exit.i_crit_edge ]
  %dev67.i.i = getelementptr inbounds %struct.usb_interface, ptr %pfunction, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67.i.i, ptr noundef nonnull %.str.23.sink.i.i) #14
  br label %if.then3

if.end6.i:                                        ; preds = %if.then59.i.i.if.end6.i_crit_edge, %if.end55.i.i.if.end6.i_crit_edge
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %pfunction, i32 0, i32 7
  %device.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 6
  %50 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev.i, ptr %device.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %pfunction, i32 0, i32 7, i32 8
  %51 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 2048) #13
  %tx_buffer.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %tx_buffer.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.if.then3_crit_edge, label %if.end11.i

if.end6.i.if.then3_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end11.i:                                       ; preds = %if.end6.i
  %54 = ptrtoint ptr %rsi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rsi_dev1.i, align 4
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  %coex_mode.i42.i = getelementptr inbounds %struct.rsi_common, ptr %57, i32 0, i32 45
  %58 = ptrtoint ptr %coex_mode.i42.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %coex_mode.i42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i43.i = icmp ugt i8 %59, 1
  %conv2.i.i = select i1 %cmp.i43.i, i32 2, i32 1
  br label %for.body.i45.i

for.body.i45.i:                                   ; preds = %if.end.i48.i.for.body.i45.i_crit_edge, %if.end11.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end11.i ], [ %indvars.iv.next.i.i, %if.end.i48.i.for.body.i45.i_crit_edge ]
  %call.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %rx_urb.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 5, i32 %indvars.iv.i.i, i32 1
  %60 = ptrtoint ptr %rx_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i, ptr %rx_urb.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i44.i, label %if.then.i46.i, label %if.end.i48.i

if.then.i46.i:                                    ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv.i.i) #10
  br label %err.i.i

if.end.i48.i:                                     ; preds = %for.body.i45.i
  %arrayidx.i47.i = getelementptr %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 5, i32 %indvars.iv.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %ep_num.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 5, i32 %indvars.iv.i.i, i32 3
  %61 = trunc i32 %indvars.iv.next.i.i to i8
  %62 = ptrtoint ptr %ep_num.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ep_num.i.i, align 4
  %63 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %55, ptr %arrayidx.i47.i, align 4
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %conv2.i.i
  br i1 %exitcond.not.i.i, label %for.end.i49.i, label %if.end.i48.i.for.body.i45.i_crit_edge

if.end.i48.i.for.body.i45.i_crit_edge:            ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45.i

for.end.i49.i:                                    ; preds = %if.end.i48.i
  %rx_q.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 13
  %lock.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %64 = ptrtoint ptr %rx_q.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rx_q.i.i, ptr %rx_q.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 13, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rx_q.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 13, i32 1
  %66 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %event.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i.i, i32 noundef 4) #10
  %67 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %event.i.i, align 4
  %event_queue.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 3, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %event_queue.i.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @rsi_init_event.__key) #10
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call, align 4
  %completion.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %completion.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %completion.i.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #10
  %thread_done.i.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 4
  %call.i.i.i51.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i.i.i, i32 noundef 4) #10
  %71 = ptrtoint ptr %thread_done.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %thread_done.i.i.i, align 4
  %call.i.i.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rsi_usb_rx_thread, ptr noundef %69, i32 noundef -1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26) #10
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %rsi_create_kthread.exit.i.i, label %if.end4

rsi_create_kthread.exit.i.i:                      ; preds = %for.end.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i.i.i, ptr %72, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rsi_usb_init_rx) #10
  br label %err.i.i

err.i.i:                                          ; preds = %rsi_create_kthread.exit.i.i, %if.then.i46.i
  %rx_urb21.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 5, i32 0, i32 1
  %74 = ptrtoint ptr %rx_urb21.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_urb21.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %75) #10
  %76 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call, align 4
  %coex_mode23.i.i = getelementptr inbounds %struct.rsi_common, ptr %77, i32 0, i32 45
  %78 = ptrtoint ptr %coex_mode23.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %coex_mode23.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp25.i.i = icmp ugt i8 %79, 1
  br i1 %cmp25.i.i, label %if.then27.i.i, label %err.i.i.if.then14.i_crit_edge

err.i.i.if.then14.i_crit_edge:                    ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then27.i.i:                                    ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_urb30.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 5, i32 1, i32 1
  %80 = ptrtoint ptr %rx_urb30.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_urb30.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %81) #10
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.then27.i.i, %err.i.i.if.then14.i_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #10
  %82 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_buffer.i, align 4
  tail call void @kfree(ptr noundef %83) #10
  br label %if.then3

if.then3:                                         ; preds = %if.then14.i, %if.end6.i.if.then3_crit_edge, %rsi_find_bulk_in_and_out_endpoints.exit.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end6.i.if.then3_crit_edge ], [ -22, %rsi_find_bulk_in_and_out_endpoints.exit.i ], [ -12, %if.then14.i ], [ -12, %if.end.if.then3_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rsi_probe) #10
  br label %err

if.end4:                                          ; preds = %for.end.i49.i
  %call2.i.i.i = tail call i32 @wake_up_process(ptr noundef %call.i.i.i) #10
  %84 = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %55, i32 0, i32 1, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i.i.i, ptr %84, align 4
  %tx_blk_size.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %call7.i.i.i, i32 0, i32 11
  %86 = ptrtoint ptr %tx_blk_size.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 252, ptr %tx_blk_size.i, align 8
  %block_size.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 9
  %87 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 252, ptr %block_size.i, align 4
  %check_hw_queue_status.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 26
  %88 = ptrtoint ptr %check_hw_queue_status.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @rsi_usb_check_queue_status, ptr %check_hw_queue_status.i, align 4
  %determine_event_timeout.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 27
  %89 = ptrtoint ptr %determine_event_timeout.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @rsi_usb_event_timeout, ptr %determine_event_timeout.i, align 4
  %90 = ptrtoint ptr %rsi_host_intf to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %rsi_host_intf, align 4
  %host_intf_ops.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 25
  %91 = ptrtoint ptr %host_intf_ops.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @usb_host_intf_ops, ptr %host_intf_ops.i, align 4
  %num_debugfs_entries.i = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 15
  %92 = ptrtoint ptr %num_debugfs_entries.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 3, ptr %num_debugfs_entries.i, align 4
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rsi_init_usb_interface) #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rsi_probe) #10
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %93 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %idProduct, align 4
  %95 = zext i16 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values)
  switch i16 %94, label %if.else13 [
    i16 -28397, label %if.end4.if.end17_crit_edge
    i16 -28394, label %if.then11
  ]

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %94 to i32
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.rsi_probe, i32 noundef %conv) #10
  br label %err1

if.end17:                                         ; preds = %if.then11, %if.end4.if.end17_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %if.then11 ], [ @.str.8, %if.end4.if.end17_crit_edge ]
  %.sink = phi i32 [ 1, %if.then11 ], [ 0, %if.end4.if.end17_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull %.str.9.sink, ptr noundef nonnull @__func__.rsi_probe) #10
  %device_model12 = getelementptr inbounds %struct.rsi_hw, ptr %call, i32 0, i32 1
  %96 = ptrtoint ptr %device_model12 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.sink, ptr %device_model12, align 4
  %97 = ptrtoint ptr %rsi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rsi_dev1.i, align 4
  %usbdev = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %usbdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i69 = icmp eq ptr %call7.i.i68, null
  br i1 %tobool.not.i69, label %if.end17.err1_crit_edge, label %if.end3.i

if.end17.err1_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end3.i:                                        ; preds = %if.end17
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %100, align 8
  %shl.i.i = shl i32 %103, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or5.i, i8 noundef zeroext 21, i8 noundef zeroext -64, i16 noundef zeroext 16645, i16 noundef zeroext 18, ptr noundef nonnull %call7.i.i68, i16 noundef zeroext 2, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp15.i = icmp slt i32 %call9.i, 0
  br i1 %cmp15.i, label %rsi_usb_reg_read.exit.thread78, label %if.else22

rsi_usb_reg_read.exit.thread78:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.rsi_usb_reg_read, i32 noundef %call9.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i68) #10
  br label %err1

if.else22:                                        ; preds = %if.end3.i
  %104 = ptrtoint ptr %call7.i.i68 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %call7.i.i68, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i68) #10
  %106 = and i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool26.not = icmp eq i8 %106, 0
  br i1 %tobool26.not, label %if.then27, label %if.else22.if.end32_crit_edge

if.else22.if.end32_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %if.else22
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.11) #10
  %call28 = tail call i32 @rsi_hal_device_init(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rsi_probe) #10
  br label %err1

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rsi_probe) #10
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.else22.if.end32_crit_edge
  %call33 = tail call fastcc i32 @rsi_rx_urb_submit(ptr noundef nonnull %call, i8 noundef zeroext 1, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.err1_crit_edge

if.end32.err1_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end36:                                         ; preds = %if.end32
  %107 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %108, i32 0, i32 45
  %109 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp38 = icmp ugt i8 %110, 1
  br i1 %cmp38, label %if.then40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  %call41 = tail call fastcc i32 @rsi_rx_urb_submit(ptr noundef nonnull %call, i8 noundef zeroext 2, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.cleanup_crit_edge, label %err_kill_wlan_urb

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_kill_wlan_urb:                                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %rsi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rsi_dev1.i, align 4
  %rx_urb.i = getelementptr %struct.rsi_91x_usbdev, ptr %112, i32 0, i32 5, i32 0, i32 1
  %113 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %114) #10
  br label %err1

err1:                                             ; preds = %err_kill_wlan_urb, %if.end32.err1_crit_edge, %if.then30, %rsi_usb_reg_read.exit.thread78, %if.end17.err1_crit_edge, %if.else13
  %status.0 = phi i32 [ %call33, %if.end32.err1_crit_edge ], [ %call41, %err_kill_wlan_urb ], [ %call28, %if.then30 ], [ -19, %if.else13 ], [ %call9.i, %rsi_usb_reg_read.exit.thread78 ], [ -12, %if.end17.err1_crit_edge ]
  tail call fastcc void @rsi_deinit_usb_interface(ptr noundef nonnull %call)
  br label %err

err:                                              ; preds = %err1, %if.then3
  %status.1 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ %status.0, %err1 ]
  tail call void @rsi_91x_deinit(ptr noundef nonnull %call) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %entry.cleanup.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %err ], [ @.str.5, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %status.1, %err ], [ -12, %entry.cleanup.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull %.str.14.sink, ptr noundef nonnull @__func__.rsi_probe) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then40.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_disconnect(ptr nocapture noundef readonly %pfunction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pfunction, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rsi_mac80211_detach(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %bt_adapter = getelementptr inbounds %struct.rsi_common, ptr %3, i32 0, i32 78
  %6 = ptrtoint ptr %bt_adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_adapter, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.rsi_mod_ops, ptr @rsi_bt_ops, i32 0, i32 1), align 4
  tail call void %8(ptr noundef nonnull %7) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %bt_adapter8 = getelementptr inbounds %struct.rsi_common, ptr %10, i32 0, i32 78
  %11 = ptrtoint ptr %bt_adapter8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bt_adapter8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %coex_mode11 = getelementptr inbounds %struct.rsi_common, ptr %13, i32 0, i32 45
  %14 = ptrtoint ptr %coex_mode11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %coex_mode11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp13 = icmp ugt i8 %15, 1
  br i1 %cmp13, label %if.then15, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rsi_dev.i, align 4
  %rx_urb.i = getelementptr %struct.rsi_91x_usbdev, ptr %17, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9.if.end16_crit_edge
  %rsi_dev.i29 = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %rsi_dev.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsi_dev.i29, align 4
  %rx_urb.i30 = getelementptr %struct.rsi_91x_usbdev, ptr %21, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %rx_urb.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_urb.i30, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.45) #10
  %call.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 570427460, i32 noundef 14, i16 noundef zeroext 4) #10
  tail call void @msleep(i32 noundef 100) #10
  %call1.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1090846780, i32 noundef 105, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.46) #10
  br label %fail.i

if.end.i:                                         ; preds = %if.end16
  %device_model.i = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %device_model.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp2.not.i = icmp eq i32 %25, 1
  br i1 %cmp2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266118, i32 noundef 23296, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.fail.i_crit_edge, label %if.end.i.i

if.then3.i.fail.i_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end.i.i:                                       ; preds = %if.then3.i
  %call3.i.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266116, i32 noundef 2, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.fail.i_crit_edge, label %if.end7.i.i

if.end.i.i.fail.i_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266112, i32 noundef 832, i16 noundef zeroext 2) #10
  %call11.i.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266114, i32 noundef 159, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %if.end7.i.i.fail.i_crit_edge, label %if.end7.i

if.end7.i.i.fail.i_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end7.i:                                        ; preds = %if.end7.i.i
  tail call void @msleep(i32 noundef 20) #10
  %call.i1.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266118, i32 noundef 23360, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp.i2.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp.i2.i, label %if.end7.i.fail.i_crit_edge, label %if.end.i5.i

if.end7.i.fail.i_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end.i5.i:                                      ; preds = %if.end7.i
  %call3.i3.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266116, i32 noundef 0, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3.i)
  %cmp4.i4.i = icmp slt i32 %call3.i3.i, 0
  br i1 %cmp4.i4.i, label %if.end.i5.i.fail.i_crit_edge, label %if.end7.i9.i

if.end.i5.i.fail.i_crit_edge:                     ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end7.i9.i:                                     ; preds = %if.end.i5.i
  %call8.i6.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266112, i32 noundef 832, i16 noundef zeroext 2) #10
  %call11.i7.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266114, i32 noundef 159, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i7.i)
  %cmp12.i8.i = icmp slt i32 %call11.i7.i, 0
  br i1 %cmp12.i8.i, label %if.end7.i9.i.fail.i_crit_edge, label %if.end11.i

if.end7.i9.i.fail.i_crit_edge:                    ; preds = %if.end7.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end11.i:                                       ; preds = %if.end7.i9.i
  tail call void @msleep(i32 noundef 20) #10
  %call.i13.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266118, i32 noundef 23424, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp.i14.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp.i14.i, label %if.end11.i.fail.i_crit_edge, label %if.end.i17.i

if.end11.i.fail.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end.i17.i:                                     ; preds = %if.end11.i
  %call3.i15.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266116, i32 noundef 50, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i15.i)
  %cmp4.i16.i = icmp slt i32 %call3.i15.i, 0
  br i1 %cmp4.i16.i, label %if.end.i17.i.fail.i_crit_edge, label %if.end7.i21.i

if.end.i17.i.fail.i_crit_edge:                    ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end7.i21.i:                                    ; preds = %if.end.i17.i
  %call8.i18.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266112, i32 noundef 832, i16 noundef zeroext 2) #10
  %call11.i19.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266114, i32 noundef 159, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i19.i)
  %cmp12.i20.i = icmp slt i32 %call11.i19.i, 0
  br i1 %cmp12.i20.i, label %if.end7.i21.i.fail.i_crit_edge, label %if.end15.i

if.end7.i21.i.fail.i_crit_edge:                   ; preds = %if.end7.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end15.i:                                       ; preds = %if.end7.i21.i
  tail call void @msleep(i32 noundef 20) #10
  %call.i25.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266118, i32 noundef 23488, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.i26.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp.i26.i, label %if.end15.i.fail.i_crit_edge, label %if.end.i29.i

if.end15.i.fail.i_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end.i29.i:                                     ; preds = %if.end15.i
  %call3.i27.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266116, i32 noundef 0, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i27.i)
  %cmp4.i28.i = icmp slt i32 %call3.i27.i, 0
  br i1 %cmp4.i28.i, label %if.end.i29.i.fail.i_crit_edge, label %if.end7.i33.i

if.end.i29.i.fail.i_crit_edge:                    ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end7.i33.i:                                    ; preds = %if.end.i29.i
  %call8.i30.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266112, i32 noundef 832, i16 noundef zeroext 2) #10
  %call11.i31.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266114, i32 noundef 159, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i31.i)
  %cmp12.i32.i = icmp slt i32 %call11.i31.i, 0
  br i1 %cmp12.i32.i, label %if.end7.i33.i.fail.i_crit_edge, label %if.end19.i

if.end7.i33.i.fail.i_crit_edge:                   ; preds = %if.end7.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end19.i:                                       ; preds = %if.end7.i33.i
  tail call void @msleep(i32 noundef 20) #10
  %call.i37.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266118, i32 noundef 23562, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp.i38.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp.i38.i, label %if.end19.i.fail.i_crit_edge, label %if.end.i41.i

if.end19.i.fail.i_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end.i41.i:                                     ; preds = %if.end19.i
  %call3.i39.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266116, i32 noundef 43010, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i39.i)
  %cmp4.i40.i = icmp slt i32 %call3.i39.i, 0
  br i1 %cmp4.i40.i, label %if.end.i41.i.fail.i_crit_edge, label %if.end7.i45.i

if.end.i41.i.fail.i_crit_edge:                    ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end7.i45.i:                                    ; preds = %if.end.i41.i
  %call8.i42.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266112, i32 noundef 832, i16 noundef zeroext 2) #10
  %call11.i43.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1074266114, i32 noundef 159, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i43.i)
  %cmp12.i44.i = icmp slt i32 %call11.i43.i, 0
  br i1 %cmp12.i44.i, label %if.end7.i45.i.fail.i_crit_edge, label %usb_ulp_read_write.exit48.i

if.end7.i45.i.fail.i_crit_edge:                   ; preds = %if.end7.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

usb_ulp_read_write.exit48.i:                      ; preds = %if.end7.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 20) #10
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end.i
  %call24.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1093665536, i32 noundef 5, i16 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.else.i.fail.i_crit_edge, label %if.end27.i

if.else.i.fail.i_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end27.i:                                       ; preds = %if.else.i
  %call28.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1093665540, i32 noundef 4, i16 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end27.i.fail.i_crit_edge, label %if.end31.i

if.end27.i.fail.i_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end31.i:                                       ; preds = %if.end27.i
  %call32.i = tail call i32 @rsi_usb_master_reg_write(ptr noundef nonnull %1, i32 noundef 1093665552, i32 noundef 11141121, i16 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end31.i.fail.i_crit_edge, label %if.end31.i.if.end36.i_crit_edge

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end31.i.fail.i_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end36.i:                                       ; preds = %if.end31.i.if.end36.i_crit_edge, %usb_ulp_read_write.exit48.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.47) #10
  br label %rsi_reset_card.exit

fail.i:                                           ; preds = %if.end31.i.fail.i_crit_edge, %if.end27.i.fail.i_crit_edge, %if.else.i.fail.i_crit_edge, %if.end7.i45.i.fail.i_crit_edge, %if.end.i41.i.fail.i_crit_edge, %if.end19.i.fail.i_crit_edge, %if.end7.i33.i.fail.i_crit_edge, %if.end.i29.i.fail.i_crit_edge, %if.end15.i.fail.i_crit_edge, %if.end7.i21.i.fail.i_crit_edge, %if.end.i17.i.fail.i_crit_edge, %if.end11.i.fail.i_crit_edge, %if.end7.i9.i.fail.i_crit_edge, %if.end.i5.i.fail.i_crit_edge, %if.end7.i.fail.i_crit_edge, %if.end7.i.i.fail.i_crit_edge, %if.end.i.i.fail.i_crit_edge, %if.then3.i.fail.i_crit_edge, %if.then.i
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.48) #10
  br label %rsi_reset_card.exit

rsi_reset_card.exit:                              ; preds = %fail.i, %if.end36.i
  tail call fastcc void @rsi_deinit_usb_interface(ptr noundef nonnull %1)
  tail call void @rsi_91x_deinit(ptr noundef nonnull %1) #10
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.rsi_disconnect) #10
  br label %cleanup

cleanup:                                          ; preds = %rsi_reset_card.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_resume(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsi_91x_init(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_usb_reg_read(ptr noundef %usbdev, i32 noundef %reg, ptr nocapture noundef writeonly %value, i16 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len)
  %cmp = icmp ugt i16 %len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usbdev, align 8
  %shl.i = shl i32 %2, 8
  %or5 = or i32 %shl.i, -2147483520
  %shr = lshr i32 %reg, 16
  %conv6 = trunc i32 %shr to i16
  %conv8 = trunc i32 %reg to i16
  %call9 = tail call i32 @usb_control_msg(ptr noundef %usbdev, i32 noundef %or5, i8 noundef zeroext 21, i8 noundef zeroext -64, i16 noundef zeroext %conv6, i16 noundef zeroext %conv8, ptr noundef nonnull %call7.i, i16 noundef zeroext %len, i32 noundef 5000) #10
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call7.i, align 8
  %conv10 = zext i8 %4 to i16
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 1
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i16
  %shl = shl nuw i16 %conv12, 8
  %or13 = or i16 %shl, %conv10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %or13, ptr %value, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp15 = icmp slt i32 %call9, 0
  br i1 %cmp15, label %if.then17, label %if.end3.if.end18_crit_edge

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.rsi_usb_reg_read, i32 noundef %call9) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end3.if.end18_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_hal_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsi_rx_urb_submit(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %ep_num, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %conv = zext i8 %ep_num to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 5, i32 %sub
  %rx_urb = getelementptr %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 5, i32 %sub, i32 1
  %2 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_urb, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 3000, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 64
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %7, i32 64
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2936) #10
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %conv3 = and i32 %10, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp.not = icmp eq i32 %conv3, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef %conv3) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %transfer_buffer, align 4
  %rx_skb = getelementptr %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 5, i32 %sub, i32 2
  %14 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %rx_skb, align 4
  %usbdev = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usbdev, align 4
  %arrayidx14 = getelementptr %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 8, i32 %sub
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %shl.i = shl i32 %20, 8
  %shl1.i = shl nuw nsw i32 %conv15, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or17 = or i32 %or.i, -1073741696
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or17, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rsi_rx_done_handler, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %context4.i, align 4
  %call19 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef %mem_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end9.cleanup_crit_edge, label %if.then21

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.rsi_rx_urb_submit) #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.then21 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_deinit_usb_interface(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %thread_done.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 1, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %thread_done.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done.i, ptr %thread_done.i, i32 1, ptr elementtype(i32) %thread_done.i) #10, !srcloc !150
  %event.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 1, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 1, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %task.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %5) #10
  %rx_urb = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #10
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %9, i32 0, i32 45
  %10 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp ugt i8 %11, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_urb4 = getelementptr %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 5, i32 1, i32 1
  %12 = ptrtoint ptr %rx_urb4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_urb4, align 4
  tail call void @usb_free_urb(ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_buffer = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_buffer, align 4
  tail call void @kfree(ptr noundef %15) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_91x_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_usb_check_queue_status(ptr nocapture noundef readnone %adapter, i8 noundef zeroext %q_num) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_usb_event_timeout(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_usb_rx_thread(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_usb_host_intf_write_pkt(ptr noundef readonly %adapter, ptr nocapture noundef readonly %pkt, i32 noundef %len) #2 align 64 {
entry:
  %transfer.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %switch = icmp ne i8 %2, 64
  %3 = and i8 %1, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp ne i8 %3, 0
  %tobool.not.i = icmp eq ptr %adapter, null
  br i1 %tobool.not.i, label %entry.rsi_write_multiple.exit_crit_edge, label %if.end3.i

entry.rsi_write_multiple.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_write_multiple.exit

if.end3.i:                                        ; preds = %entry
  %rsi_dev.i = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %4 = ptrtoint ptr %rsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsi_dev.i, align 4
  %write_fail.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %write_fail.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_fail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.rsi_write_multiple.exit_crit_edge

if.end3.i.rsi_write_multiple.exit_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_write_multiple.exit

if.end6.i:                                        ; preds = %if.end3.i
  %tx_buffer.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %tx_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_buffer.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transfer.i.i) #10
  %not. = and i1 %switch, %cmp4
  %sub.i.i = zext i1 %not. to i32
  %arrayidx.i.i = getelementptr %struct.rsi_91x_usbdev, ptr %5, i32 0, i32 10, i32 %sub.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv1.i.i = zext i8 %11 to i32
  %conv2.i.i = and i32 %len, 65535
  %add.i.i = add nuw nsw i32 %conv2.i.i, 128
  %12 = call ptr @memset(ptr %9, i32 0, i32 %add.i.i)
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 128
  %13 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %pkt, i32 %conv2.i.i)
  %conv7.i.i = and i32 %add.i.i, 65535
  %14 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7.i.i, ptr %transfer.i.i, align 4
  %usbdev.i.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %usbdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usbdev.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i.i = shl i32 %18, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv1.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef %16, i32 noundef %or.i.i, ptr noundef %9, i32 noundef %conv7.i.i, ptr noundef nonnull %transfer.i.i, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6.i.rsi_usb_card_write.exit.i_crit_edge

if.end6.i.rsi_usb_card_write.exit.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_usb_card_write.exit.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %call10.i.i) #10
  %19 = ptrtoint ptr %write_fail.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %write_fail.i, align 4
  br label %rsi_usb_card_write.exit.i

rsi_usb_card_write.exit.i:                        ; preds = %if.then.i.i, %if.end6.i.rsi_usb_card_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transfer.i.i) #10
  br label %rsi_write_multiple.exit

rsi_write_multiple.exit:                          ; preds = %rsi_usb_card_write.exit.i, %if.end3.i.rsi_write_multiple.exit_crit_edge, %entry.rsi_write_multiple.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i.i, %rsi_usb_card_write.exit.i ], [ -19, %entry.rsi_write_multiple.exit_crit_edge ], [ -100, %if.end3.i.rsi_write_multiple.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_usb_read_register_multiple(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %data, i16 noundef zeroext %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not = icmp eq i32 %addr, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %tobool4.not49 = icmp eq i16 %count, 0
  br i1 %tobool4.not49, label %while.cond.preheader.cleanup.sink.split_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %usbdev = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %count.addr.052 = phi i16 [ %count, %while.body.lr.ph ], [ %sub, %if.end20.while.body_crit_edge ]
  %data.addr.051 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end20.while.body_crit_edge ]
  %addr.addr.050 = phi i32 [ %addr, %while.body.lr.ph ], [ %add, %if.end20.while.body_crit_edge ]
  %3 = tail call i16 @llvm.umin.i16(i16 %count.addr.052, i16 4096)
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or12 = or i32 %shl.i, -2147483520
  %shr = lshr i32 %addr.addr.050, 16
  %conv13 = trunc i32 %shr to i16
  %conv15 = trunc i32 %addr.addr.050 to i16
  %call16 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or12, i8 noundef zeroext 21, i8 noundef zeroext -64, i16 noundef zeroext %conv13, i16 noundef zeroext %conv15, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %3, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %call16) #10
  br label %cleanup.sink.split

if.end20:                                         ; preds = %while.body
  %conv21 = zext i16 %3 to i32
  %8 = call ptr @memcpy(ptr %data.addr.051, ptr %call7.i.i, i32 %conv21)
  %sub = sub i16 %count.addr.052, %3
  %add.ptr = getelementptr i8, ptr %data.addr.051, i32 %conv21
  %add = add i32 %addr.addr.050, %conv21
  %tobool4.not = icmp eq i16 %sub, 0
  br i1 %tobool4.not, label %if.end20.cleanup.sink.split_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20.cleanup.sink.split_crit_edge, %if.then19, %while.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call16, %if.then19 ], [ 0, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %if.end20.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_usb_write_register_multiple(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr nocapture noundef readonly %data, i16 noundef zeroext %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %tobool1.not44 = icmp eq i16 %count, 0
  br i1 %tobool1.not44, label %while.cond.preheader.cleanup.sink.split_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %usbdev = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %count.addr.047 = phi i16 [ %count, %while.body.lr.ph ], [ %sub, %if.end17.while.body_crit_edge ]
  %data.addr.046 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end17.while.body_crit_edge ]
  %addr.addr.045 = phi i32 [ %addr, %while.body.lr.ph ], [ %add, %if.end17.while.body_crit_edge ]
  %3 = tail call i16 @llvm.umin.i16(i16 %count.addr.047, i16 4096)
  %conv7 = zext i16 %3 to i32
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %data.addr.046, i32 %conv7)
  %5 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usbdev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %shr = lshr i32 %addr.addr.045, 16
  %conv10 = trunc i32 %shr to i16
  %conv12 = trunc i32 %addr.addr.045 to i16
  %call13 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or, i8 noundef zeroext 22, i8 noundef zeroext 64, i16 noundef zeroext %conv10, i16 noundef zeroext %conv12, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %3, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %call13) #10
  br label %cleanup.sink.split

if.end17:                                         ; preds = %while.body
  %sub = sub i16 %count.addr.047, %3
  %add.ptr = getelementptr i8, ptr %data.addr.046, i32 %conv7
  %add = add i32 %addr.addr.045, %conv7
  %tobool1.not = icmp eq i16 %sub, 0
  br i1 %tobool1.not, label %if.end17.cleanup.sink.split_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17.cleanup.sink.split_crit_edge, %if.then16, %while.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call13, %if.then16 ], [ 0, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %if.end17.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_usb_master_reg_read(ptr nocapture noundef readonly %adapter, i32 noundef %reg, ptr nocapture noundef writeonly %value, i16 noundef zeroext %len) #2 align 64 {
entry:
  %temp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %usbdev1 = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usbdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp) #10
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %temp, align 2, !annotation !151
  %call = call fastcc i32 @rsi_usb_reg_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %temp, i16 noundef zeroext %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %temp, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_usb_master_reg_write(ptr nocapture noundef readonly %adapter, i32 noundef %reg, i32 noundef %value, i16 noundef zeroext %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsi_dev = getelementptr inbounds %struct.rsi_hw, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %rsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsi_dev, align 4
  %usbdev1 = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usbdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %len)
  %cmp.i = icmp ugt i16 %len, 4
  br i1 %cmp.i, label %entry.rsi_usb_reg_write.exit_crit_edge, label %if.end.i

entry.rsi_usb_reg_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_usb_reg_write.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.i.rsi_usb_reg_write.exit_crit_edge, label %if.end3.i

if.end.i.rsi_usb_reg_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsi_usb_reg_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %value) #10
  %conv4.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4.i, ptr %call7.i.i, align 8
  %and5.i = lshr i32 %5, 8
  %conv6.i = trunc i32 %and5.i to i8
  %arrayidx7.i = getelementptr i8, ptr %call7.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %and8.i = lshr i32 %5, 16
  %conv10.i = trunc i32 %and8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %call7.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10.i, ptr %arrayidx11.i, align 2
  %shr13.i = lshr i32 %5, 24
  %conv14.i = trunc i32 %shr13.i to i8
  %arrayidx15.i = getelementptr i8, ptr %call7.i.i, i32 3
  %9 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %12 = tail call i32 @llvm.bswap.i32(i32 %reg) #10
  %shr18.i = lshr i32 %12, 16
  %conv19.i = trunc i32 %shr18.i to i16
  %conv21.i = trunc i32 %12 to i16
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 22, i8 noundef zeroext 64, i16 noundef zeroext %conv19.i, i16 noundef zeroext %conv21.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %len, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.end3.i.if.end26.i_crit_edge

if.end3.i.if.end26.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.rsi_usb_reg_write, i32 noundef %call22.i) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end3.i.if.end26.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %rsi_usb_reg_write.exit

rsi_usb_reg_write.exit:                           ; preds = %if.end26.i, %if.end.i.rsi_usb_reg_write.exit_crit_edge, %entry.rsi_usb_reg_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call22.i, %if.end26.i ], [ -22, %entry.rsi_usb_reg_write.exit_crit_edge ], [ -12, %if.end.i.rsi_usb_reg_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_usb_load_data_master_write(ptr nocapture noundef readonly %adapter, i32 noundef %base_address, i32 noundef %instructions_sz, i16 noundef zeroext %block_size, ptr nocapture noundef readonly %ta_firmware) #2 align 64 {
entry:
  %temp_buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %temp_buf) #10
  %0 = call ptr @memset(ptr %temp_buf, i32 255, i32 256)
  %conv = zext i16 %block_size to i32
  %div = udiv i32 %instructions_sz, %conv
  %conv2 = and i32 %div, 65535
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %conv2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp60.not = icmp eq i32 %conv2, 0
  br i1 %cmp60.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cur_indx.062 = phi i32 [ %add11, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %base_address.addr.061 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ %base_address, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ta_firmware, i32 %cur_indx.062
  %1 = call ptr @memcpy(ptr %temp_buf, ptr %add.ptr, i32 %conv)
  %call = call i32 @rsi_usb_write_register_multiple(ptr noundef %adapter, i32 noundef %base_address.addr.061, ptr noundef nonnull %temp_buf, i16 noundef zeroext %block_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.rsi_usb_load_data_master_write, i32 noundef %i.063) #10
  %add = add i32 %base_address.addr.061, %conv
  %inc = add nuw nsw i32 %i.063, 1
  %add11 = add nuw i32 %cur_indx.062, %conv
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %base_address.addr.0.lcssa = phi i32 [ %base_address, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ]
  %cur_indx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add11, %if.end.for.end_crit_edge ]
  %2 = mul i32 %div, %conv
  %rem.decomposed = sub i32 %instructions_sz, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %for.end
  %add.ptr17 = getelementptr i8, ptr %ta_firmware, i32 %cur_indx.0.lcssa
  %3 = sub nsw i32 %conv, %rem.decomposed
  %4 = getelementptr i8, ptr %temp_buf, i32 %rem.decomposed
  %5 = call ptr @memset(ptr %4, i32 0, i32 %3)
  %6 = call ptr @memcpy(ptr %temp_buf, ptr %add.ptr17, i32 %rem.decomposed)
  %conv23 = trunc i32 %rem.decomposed to i16
  %call24 = call i32 @rsi_usb_write_register_multiple(ptr noundef %adapter, i32 noundef %base_address.addr.0.lcssa, ptr noundef nonnull %temp_buf, i16 noundef zeroext %conv23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then13.cleanup_crit_edge, label %if.end28

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %cur_indx.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then13.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then13.cleanup_crit_edge ], [ 0, %if.end28 ], [ 0, %for.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %temp_buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_rx_done_handler(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rx_skb = getelementptr inbounds %struct.rx_usb_ctrl_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %5) #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end6.if.then10_crit_edge, label %lor.lhs.false

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end6
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9 = icmp ugt i32 %9, %11
  br i1 %cmp9, label %lor.lhs.false.if.then10_crit_edge, label %if.end12

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.rsi_rx_done_handler, i32 noundef %9) #10
  br label %out

if.end12:                                         ; preds = %lor.lhs.false
  %qlen.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %3, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %13)
  %cmp13 = icmp ugt i32 %13, 63
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.42) #10
  br label %out

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %rx_q = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %3, i32 0, i32 13
  tail call void @skb_trim(ptr noundef nonnull %5, i32 noundef %9) #10
  %14 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_skb, align 4
  tail call void @skb_queue_tail(ptr noundef %rx_q, ptr noundef %15) #10
  %event = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %3, i32 0, i32 1, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #10
  %16 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %event, align 4
  %event_queue.i = getelementptr inbounds %struct.rsi_91x_usbdev, ptr %3, i32 0, i32 1, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %out

out:                                              ; preds = %if.end15, %if.then14, %if.then10
  %tobool24.not = phi i1 [ true, %if.end15 ], [ false, %if.then14 ], [ false, %if.then10 ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %ep_num = getelementptr inbounds %struct.rx_usb_ctrl_block, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ep_num, align 4
  %call20 = tail call fastcc i32 @rsi_rx_urb_submit(ptr noundef %18, i8 noundef zeroext %20, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %out.if.end23_crit_edge, label %if.then22

out.if.end23_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rsi_rx_done_handler) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %out.if.end23_crit_edge
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb, align 4
  tail call void @consume_skb(ptr noundef %22) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then25, %if.then3
  %23 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_mac80211_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !85, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__param_dev_oper_mode, !1, !"__param_dev_oper_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_dev_oper_modetype353, !1, !"__UNIQUE_ID_dev_oper_modetype353", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev_oper_mode354, !4, !"__UNIQUE_ID_dev_oper_mode354", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 28, i32 1}
!5 = !{ptr @__initcall__kmod_rsi_usb__359_930_rsi_driver_init6, !6, !"__initcall__kmod_rsi_usb__359_930_rsi_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 930, i32 1}
!7 = !{ptr @__exitcall_rsi_driver_exit, !6, !"__exitcall_rsi_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author360, !9, !"__UNIQUE_ID_author360", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 932, i32 1}
!10 = !{ptr @__UNIQUE_ID_description361, !11, !"__UNIQUE_ID_description361", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 933, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware362, !13, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 935, i32 1}
!14 = !{ptr @__UNIQUE_ID_version363, !15, !"__UNIQUE_ID_version363", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 936, i32 1}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_file364, !21, !"__UNIQUE_ID_file364", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 937, i32 1}
!22 = !{ptr @__UNIQUE_ID_license365, !21, !"__UNIQUE_ID_license365", i1 false, i1 false}
!23 = !{ptr @__param_str_dev_oper_mode, !1, !"__param_str_dev_oper_mode", i1 false, i1 false}
!24 = !{ptr @dev_oper_mode, !25, !"dev_oper_mode", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 26, i32 12}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 920, i32 16}
!28 = !{ptr @rsi_driver, !29, !"rsi_driver", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 919, i32 26}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 793, i32 21}
!32 = !{ptr @__func__.rsi_probe, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 793, i32 51}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 797, i32 21}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 805, i32 21}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 810, i32 20}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 813, i32 22}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 816, i32 22}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 819, i32 21}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 834, i32 22}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 837, i32 22}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 841, i32 22}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 862, i32 20}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 646, i32 21}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 665, i32 21}
!58 = !{ptr @__func__.rsi_init_usb_interface, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 665, i32 52}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 150, i32 3}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rsi_find_bulk_in_and_out_endpoints._entry, !61, !"_entry", i1 false, i1 false}
!67 = !{ptr @rsi_find_bulk_in_and_out_endpoints._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 156, i32 4}
!70 = !{ptr @rsi_find_bulk_in_and_out_endpoints._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rsi_find_bulk_in_and_out_endpoints._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 586, i32 22}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 595, i32 30}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 596, i32 21}
!78 = !{ptr @__func__.rsi_usb_init_rx, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 596, i32 53}
!80 = !{ptr @skb_queue_head_init.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rsi_init_event.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 30, i32 2}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 66, i32 17}
!88 = !{ptr @init_completion.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/completion.h", i32 87, i32 2}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @usb_host_intf_ops, !92, !"usb_host_intf_ops", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 545, i32 33}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 65, i32 4}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 388, i32 5}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 438, i32 5}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 251, i32 4}
!101 = !{ptr @__func__.rsi_usb_reg_write, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 252, i32 4}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 514, i32 21}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 524, i32 22}
!107 = !{ptr @__func__.rsi_usb_load_data_master_write, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 524, i32 49}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 539, i32 4}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 202, i32 4}
!113 = !{ptr @__func__.rsi_usb_reg_read, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 203, i32 4}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 355, i32 21}
!117 = !{ptr @__func__.rsi_rx_urb_submit, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 355, i32 55}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 283, i32 22}
!121 = !{ptr @__func__.rsi_rx_done_handler, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 284, i32 4}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 288, i32 22}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 299, i32 21}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 896, i32 21}
!129 = !{ptr @__func__.rsi_disconnect, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 896, i32 57}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 710, i32 21}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 722, i32 21}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 768, i32 21}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 772, i32 20}
!139 = !{ptr @rsi_dev_table, !140, !"rsi_dev_table", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/rsi/rsi_91x_usb.c", i32 913, i32 35}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2148362779, i64 2148362805, i64 2148362834, i64 2148362868, i64 2148362899, i64 2148362922}
!151 = !{!"auto-init"}
