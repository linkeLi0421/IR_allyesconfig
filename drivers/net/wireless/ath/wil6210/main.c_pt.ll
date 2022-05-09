; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.anon.128 = type <{ %struct.wmi_cmd_hdr, %struct.wmi_disconnect_event }>
%struct.wmi_cmd_hdr = type { i8, i8, i16, i32 }
%struct.wmi_disconnect_event = type { i16, [6 x i8], i8, i8, [0 x i8] }
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.125, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.125 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.124 = type { i64, i64, i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%union.anon.130 = type { %struct.bl_dedicated_registers_v1 }
%struct.bl_dedicated_registers_v1 = type { i32, i32, i16, i16, i32, [6 x i8], i8, i8, i16, i16, i32, i32, i32, [21 x i32], i32 }

@__param_str_debug_fw = internal constant [17 x i8] c"wil6210.debug_fw\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug_fw = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug_fw = internal constant %struct.kernel_param { ptr @__param_str_debug_fw, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @debug_fw } }, section "__param", align 4
@__UNIQUE_ID_debug_fwtype345 = internal constant [31 x i8] c"wil6210.parmtype=debug_fw:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_fw346 = internal constant [63 x i8] c"wil6210.parm=debug_fw: do not perform card reset. For FW debug\00", section ".modinfo", align 1
@__param_str_oob_mode = internal constant [17 x i8] c"wil6210.oob_mode\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@oob_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_oob_mode = internal constant %struct.kernel_param { ptr @__param_str_oob_mode, ptr null, ptr @param_ops_byte, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @oob_mode } }, section "__param", align 4
@__UNIQUE_ID_oob_modetype347 = internal constant [31 x i8] c"wil6210.parmtype=oob_mode:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_oob_mode348 = internal constant [97 x i8] c"wil6210.parm=oob_mode: enable out of the box (OOB) mode in FW, for diagnostics and certification\00", section ".modinfo", align 1
@__param_str_no_fw_recovery = internal constant [23 x i8] c"wil6210.no_fw_recovery\00", align 1
@no_fw_recovery = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_fw_recovery = internal constant %struct.kernel_param { ptr @__param_str_no_fw_recovery, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @no_fw_recovery } }, section "__param", align 4
@__UNIQUE_ID_no_fw_recoverytype349 = internal constant [37 x i8] c"wil6210.parmtype=no_fw_recovery:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_fw_recovery350 = internal constant [65 x i8] c"wil6210.parm=no_fw_recovery: disable automatic FW error recovery\00", section ".modinfo", align 1
@rx_ring_overflow_thrsh = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@__param_str_rx_ring_overflow_thrsh = internal constant [31 x i8] c"wil6210.rx_ring_overflow_thrsh\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@__param_rx_ring_overflow_thrsh = internal constant %struct.kernel_param { ptr @__param_str_rx_ring_overflow_thrsh, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @rx_ring_overflow_thrsh } }, section "__param", align 4
@__UNIQUE_ID_rx_ring_overflow_thrshtype351 = internal constant [47 x i8] c"wil6210.parmtype=rx_ring_overflow_thrsh:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_ring_overflow_thrsh352 = internal constant [80 x i8] c"wil6210.parm=rx_ring_overflow_thrsh: RX ring overflow threshold in descriptors.\00", section ".modinfo", align 1
@mtu_max = dso_local global { i32, [28 x i8] } { i32 1986, [28 x i8] zeroinitializer }, align 32
@__param_str_mtu_max = internal constant [16 x i8] c"wil6210.mtu_max\00", align 1
@mtu_max_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @mtu_max_set, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_mtu_max = internal constant %struct.kernel_param { ptr @__param_str_mtu_max, ptr null, ptr @mtu_max_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @mtu_max } }, section "__param", align 4
@__UNIQUE_ID_mtu_max353 = internal constant [37 x i8] c"wil6210.parm=mtu_max: Max MTU value.\00", section ".modinfo", align 1
@__param_str_rx_ring_order = internal constant [22 x i8] c"wil6210.rx_ring_order\00", align 1
@ring_order_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @ring_order_set, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@rx_ring_order = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_ring_order = internal constant %struct.kernel_param { ptr @__param_str_rx_ring_order, ptr null, ptr @ring_order_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @rx_ring_order } }, section "__param", align 4
@__UNIQUE_ID_rx_ring_order354 = internal constant [61 x i8] c"wil6210.parm=rx_ring_order: Rx ring order; size = 1 << order\00", section ".modinfo", align 1
@__param_str_tx_ring_order = internal constant [22 x i8] c"wil6210.tx_ring_order\00", align 1
@tx_ring_order = internal global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_tx_ring_order = internal constant %struct.kernel_param { ptr @__param_str_tx_ring_order, ptr null, ptr @ring_order_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @tx_ring_order } }, section "__param", align 4
@__UNIQUE_ID_tx_ring_order355 = internal constant [61 x i8] c"wil6210.parm=tx_ring_order: Tx ring order; size = 1 << order\00", section ".modinfo", align 1
@__param_str_bcast_ring_order = internal constant [25 x i8] c"wil6210.bcast_ring_order\00", align 1
@bcast_ring_order = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_bcast_ring_order = internal constant %struct.kernel_param { ptr @__param_str_bcast_ring_order, ptr null, ptr @ring_order_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @bcast_ring_order } }, section "__param", align 4
@__UNIQUE_ID_bcast_ring_order356 = internal constant [67 x i8] c"wil6210.parm=bcast_ring_order: Bcast ring order; size = 1 << order\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: disconnect error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wil_disconnect_worker = private unnamed_addr constant [22 x i8] c"wil_disconnect_worker\00", align 1
@wil_set_recovery_state.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_set_recovery_state\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/wil6210/main.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DBG[MISC]set_recovery_state: %d -> %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No connection pending\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.wil_ring_init_tx = private unnamed_addr constant [17 x i8] c"wil_ring_init_tx\00", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: No free vring found\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_ring_init_tx.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_ring_init_tx, ptr @.str.3, ptr @.str.7, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DBG[ WMI]Configure for connection CID %d MID %d ring %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: init TX for CID %d MID %d vring %d failed\0A\00", [49 x i8] zeroinitializer }, align 32
@wil_priv_init.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wil_priv_init\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[MISC]priv_init\0A\00", [44 x i8] zeroinitializer }, align 32
@wil_priv_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&wil->sta[i].tid_rx_lock\00", [39 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&wil->ring_tx_data[i].lock\00", [37 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wil->mutex\00", [20 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wil->vif_mutex\00", [16 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wil->wmi_mutex\00", [16 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wil->halp.lock\00", [16 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&wil->wmi_event_worker)\00", [54 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&wil->fw_error_worker)\00", [55 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wil->wmi_ev_lock\00", [46 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&wil->net_queue_lock\00", [43 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wil->eap_lock\00", [17 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&wil->wq\00", [23 x i8] zeroinitializer }, align 32
@wil_priv_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wil->mem_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil6210_wmi\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil6210_service\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@max_assoc_sta = external dso_local local_unnamed_addr global i32, align 4
@wil6210_disconnect.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil6210_disconnect\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[MISC]disconnecting\0A\00", [40 x i8] zeroinitializer }, align 32
@wil6210_disconnect_complete.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil6210_disconnect_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[MISC]got disconnect\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_priv_deinit.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_priv_deinit\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[MISC]priv_deinit\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: keep_radio_on_during_sleep (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.wil_refresh_fw_capabilities = private unnamed_addr constant [28 x i8] c"wil_refresh_fw_capabilities\00", align 1
@ftm_mode = external dso_local local_unnamed_addr global i8, align 1
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil6436_ftm.fw\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil6436.fw\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil6436.brd\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wil6210.brd\00", [20 x i8] zeroinitializer }, align 32
@__const.wil_abort_scan.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@wil_abort_scan.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_abort_scan\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]Abort scan_request 0x%p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: set_power_mgmt not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.wil_ps_update = private unnamed_addr constant [14 x i8] c"wil_ps_update\00", align 1
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: wmi_ps_dev_profile_cfg failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_clear_fw_log_addr.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_clear_fw_log_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DBG[MISC]Cleared FW and ucode log address\00", [54 x i8] zeroinitializer }, align 32
@wil_reset.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wil_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DBG[MISC]reset\0A\00", [16 x i8] zeroinitializer }, align 32
@wil_reset.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.58, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[MISC]Notify FW to set T_POWER_ON=0\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_reset.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.59, i8 1, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DBG[MISC]Notify FW on ext clock configuration\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: PRE_RESET platform notify failed, rc %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_reset.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.61, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]wil->status (0x%lx)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: secured boot is not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Use firmware <%s> + board <%s>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: wmi_echo failed, rc %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to restore vifs, rc %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: FW_RDY notify failed, rc %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wil_fw_error_recovery.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 1, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_fw_error_recovery\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[MISC]starting fw error recovery\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Reset already in progress\0A\00", [33 x i8] zeroinitializer }, align 32
@__wil_up.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 1, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"__wil_up\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[MISC]type: STATION\0A\00", [40 x i8] zeroinitializer }, align 32
@__wil_up.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.72, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]type: AP\0A\00", [45 x i8] zeroinitializer }, align 32
@__wil_up.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.73, i8 1, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[MISC]type: P2P_CLIENT\0A\00", [37 x i8] zeroinitializer }, align 32
@__wil_up.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.74, i8 1, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DBG[MISC]type: P2P_GO\0A\00", [41 x i8] zeroinitializer }, align 32
@__wil_up.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.75, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[MISC]type: Monitor\0A\00", [40 x i8] zeroinitializer }, align 32
@__wil_up.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.3, ptr @.str.76, i8 1, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[MISC]NAPI enable\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_up.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 1, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wil_up\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DBG[MISC]up\0A\00", [19 x i8] zeroinitializer }, align 32
@__wil_down.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 1, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__wil_down\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DBG[MISC]NAPI disable\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_down.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 1, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wil_down\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DBG[MISC]down\0A\00", [17 x i8] zeroinitializer }, align 32
@wil_halp_vote.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 1, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wil_halp_vote\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[ IRQ]halp_vote: start, HALP ref_cnt (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: HALP vote timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_halp_vote.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.3, ptr @.str.86, i8 1, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DBG[ IRQ]halp_vote: HALP vote completed after %d ms\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_halp_vote.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.3, ptr @.str.87, i8 1, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[ IRQ]halp_vote: end, HALP ref_cnt (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_halp_unvote.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 1, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_halp_unvote\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DBG[ IRQ]halp_unvote: start, HALP ref_cnt (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@wil_halp_unvote.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.3, ptr @.str.90, i8 1, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[ IRQ]HALP unvote\0A\00", [42 x i8] zeroinitializer }, align 32
@wil_halp_unvote.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.3, ptr @.str.91, i8 1, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[ IRQ]halp_unvote:end, HALP ref_cnt (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_ring_fini_tx.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_ring_fini_tx\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DBG[MISC]vring_fini_tx: id=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wil_fw_error_worker.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_fw_error_worker\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]fw error worker\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: No recovery - interface is down\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: too many recovery attempts (%d), giving up\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: fw error recovery requested (try %d)...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ... completed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: No recovery - unknown interface type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Interrupt, canceling recovery\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.wil_wait_for_recovery = private unnamed_addr constant [22 x i8] c"wil_wait_for_recovery\00", align 1
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Recovery cancelled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Proceed with recovery\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: disconnect bssid=%pM, reason=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__._wil6210_disconnect = private unnamed_addr constant [20 x i8] c"_wil6210_disconnect\00", align 1
@_wil6210_disconnect.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__._wil6210_disconnect, ptr @.str.3, ptr @.str.106, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]Disconnect %pM, CID=%d, reason=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@_wil6210_disconnect.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__._wil6210_disconnect, ptr @.str.3, ptr @.str.107, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[MISC]Disconnect all\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_disconnect_cid.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil_disconnect_cid\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DBG[MISC]disconnect_cid: CID %d, MID %d, status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: STA MID mismatch with VIF MID(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@disable_ap_sme = external dso_local local_unnamed_addr global i8, align 1
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: disconnect_complete: bssid=%pM, reason=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__._wil6210_disconnect_complete = private unnamed_addr constant [29 x i8] c"_wil6210_disconnect_complete\00", align 1
@_wil6210_disconnect_complete.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__._wil6210_disconnect_complete, ptr @.str.3, ptr @.str.112, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DBG[MISC]Disconnect complete %pM, CID=%d, reason=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@_wil6210_disconnect_complete.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__._wil6210_disconnect_complete, ptr @.str.3, ptr @.str.113, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]Disconnect complete all\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_disconnect_cid_complete.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.114, ptr @.str.3, ptr @.str.115, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil_disconnect_cid_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DBG[MISC]disconnect_cid_complete: CID %d, MID %d, status %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: BL assert code 0x%08x blink 0x%08x magic 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.wil_bl_crash_info = private unnamed_addr constant [18 x i8] c"wil_bl_crash_info\00", align 1
@wil_bl_crash_info.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_bl_crash_info, ptr @.str.3, ptr @.str.117, i8 1, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DBG[MISC]BL assert code 0x%08x blink 0x%08x magic 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_target_reset.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.118, ptr @.str.3, ptr @.str.119, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_target_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[MISC]Resetting \22%s\22...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: Xtal stabilization timeout\0ARGF_CAF_PLL_LOCK_STATUS = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: invalid boot config, signature_status %d otp_signature_err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.wil_wait_device_ready_talyn_mb = private unnamed_addr constant [31 x i8] c"wil_wait_device_ready_talyn_mb\00", align 1
@wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_wait_device_ready_talyn_mb, ptr @.str.3, ptr @.str.122, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"DBG[MISC]signature test done in %d usec, otp_hw 0x%x, boot_config %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: TO waiting for hw_section_done\0A\00", [60 x i8] zeroinitializer }, align 32
@wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_wait_device_ready_talyn_mb, ptr @.str.3, ptr @.str.124, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]HW section done in %d ms\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_wait_device_ready_talyn_mb, ptr @.str.3, ptr @.str.125, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]secured boot is %sabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_wait_device_ready_talyn_mb, ptr @.str.3, ptr @.str.128, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]Reset completed\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_wait_device_ready.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.129, ptr @.str.3, ptr @.str.128, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_wait_device_ready\00", [42 x i8] zeroinitializer }, align 32
@wil_wait_device_ready.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.129, ptr @.str.3, ptr @.str.130, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DBG[MISC]BL.ready 0x%08x => 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Reset not completed, bl.ready 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_wait_device_ready.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.129, ptr @.str.3, ptr @.str.132, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]Reset completed in %d ms\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: using OEM MAC %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.wil_get_otp_info = private unnamed_addr constant [17 x i8] c"wil_get_otp_info\00", align 1
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Invalid MAC %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Boot Loader struct v%d: MAC = %pM RF = 0x%08x bband = 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.wil_get_bl_info = private unnamed_addr constant [16 x i8] c"wil_get_bl_info\00", align 1
@.str.136 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Boot Loader build unknown for struct v0\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: Boot Loader struct v%d: MAC = %pM RF = 0x%04x (status 0x%04x) bband = 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Boot Loader build %d.%d.%d.%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: BL: Invalid MAC %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: RF communication error 0x%04x\00", [62 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: oob_mode to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.wil_set_oob_mode = private unnamed_addr constant [17 x i8] c"wil_set_oob_mode\00", align 1
@.str.142 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid oob_mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_bl_prepare_halt.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.143, ptr @.str.3, ptr @.str.144, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_bl_prepare_halt\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]old BL, skipping halt preparation\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_shutdown_bl.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.145, ptr @.str.3, ptr @.str.146, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_shutdown_bl\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DBG[MISC]BL is ready for halt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: BL did not report ready for halt\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_freeze_bl.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.3, ptr @.str.149, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wil_freeze_bl\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]invalid IVT entry found, skipping\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_freeze_bl.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.3, ptr @.str.150, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]BL freeze failed, PC=0x%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Firmware not ready\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.wil_wait_for_fw_ready = private unnamed_addr constant [22 x i8] c"wil_wait_for_fw_ready\00", align 1
@.str.152 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: FW ready after %d ms. HW version 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: fail to restore VIF %d type %d, rc %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.wil_restore_vifs = private unnamed_addr constant [17 x i8] c"wil_restore_vifs\00", align 1
@wil_collect_fw_info.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.154, ptr @.str.3, ptr @.str.155, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_collect_fw_info\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[MISC]FW retry_short: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@___asan_gen_.160 = private unnamed_addr constant [9 x i8] c"debug_fw\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 23, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"oob_mode\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 27, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"no_fw_recovery\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 32, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"rx_ring_overflow_thrsh\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 39, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant [8 x i8] c"mtu_max\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 47, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"mtu_max_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 65, i32 38 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"ring_order_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 94, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"rx_ring_order\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 73, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"tx_ring_order\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 74, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"bcast_ring_order\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 75, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 486, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 514, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 619, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 624, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 628, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 634, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 689, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 693, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 698, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 702, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 703, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 704, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 705, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 711, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 712, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 715, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 716, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 717, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 719, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 720, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 722, i32 16 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 726, i32 20 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 799, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 819, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 827, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1236, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1293, i32 45 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1294, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1303, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1305, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1467, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1502, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1508, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1585, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1600, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1621, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1626, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1634, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1665, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1706, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1713, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1756, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1771, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1784, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1801, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1804, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1840, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1844, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1848, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1852, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1856, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1867, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1881, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1903, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1921, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1958, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1968, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1973, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1979, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1994, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1999, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 2002, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 208, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 87, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 533, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 536, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 551, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 558, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 589, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 592, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 501, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 505, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 508, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 428, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 443, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 448, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 393, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 400, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 313, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 329, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 335, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 254, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1393, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1397, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1112, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1142, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1065, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1071, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1089, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1094, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1098, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1102, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 981, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 989, i32 5 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 994, i32 5 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1000, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1415, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1427, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1332, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1336, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1343, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1348, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1354, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1364, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 953, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 968, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 914, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 851, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 855, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 876, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 894, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1445, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1448, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1564, i32 5 }
@___asan_gen_.661 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.662 = private constant [43 x i8] c"../drivers/net/wireless/ath/wil6210/main.c\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1222, i32 3 }
@llvm.compiler.used = appending global [188 x ptr] [ptr @__UNIQUE_ID_bcast_ring_order356, ptr @__UNIQUE_ID_debug_fw346, ptr @__UNIQUE_ID_debug_fwtype345, ptr @__UNIQUE_ID_mtu_max353, ptr @__UNIQUE_ID_no_fw_recovery350, ptr @__UNIQUE_ID_no_fw_recoverytype349, ptr @__UNIQUE_ID_oob_mode348, ptr @__UNIQUE_ID_oob_modetype347, ptr @__UNIQUE_ID_rx_ring_order354, ptr @__UNIQUE_ID_rx_ring_overflow_thrsh352, ptr @__UNIQUE_ID_rx_ring_overflow_thrshtype351, ptr @__UNIQUE_ID_tx_ring_order355, ptr @__param_bcast_ring_order, ptr @__param_debug_fw, ptr @__param_mtu_max, ptr @__param_no_fw_recovery, ptr @__param_oob_mode, ptr @__param_rx_ring_order, ptr @__param_rx_ring_overflow_thrsh, ptr @__param_tx_ring_order, ptr @debug_fw, ptr @oob_mode, ptr @no_fw_recovery, ptr @rx_ring_overflow_thrsh, ptr @mtu_max, ptr @mtu_max_ops, ptr @ring_order_ops, ptr @rx_ring_order, ptr @tx_ring_order, ptr @bcast_ring_order, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @wil_priv_init.__key, ptr @.str.11, ptr @wil_priv_init.__key.12, ptr @.str.13, ptr @wil_priv_init.__key.14, ptr @.str.15, ptr @wil_priv_init.__key.16, ptr @.str.17, ptr @wil_priv_init.__key.18, ptr @.str.19, ptr @wil_priv_init.__key.20, ptr @.str.21, ptr @wil_priv_init.__key.22, ptr @.str.23, ptr @wil_priv_init.__key.24, ptr @.str.25, ptr @wil_priv_init.__key.26, ptr @.str.27, ptr @wil_priv_init.__key.28, ptr @.str.29, ptr @wil_priv_init.__key.30, ptr @.str.31, ptr @wil_priv_init.__key.32, ptr @.str.33, ptr @wil_priv_init.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @init_completion.__key, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_fw to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oob_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_fw_recovery to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ring_overflow_thrsh to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu_max_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_order_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ring_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_ring_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcast_ring_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_priv_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_memcpy_fromio_32(ptr nocapture noundef writeonly %dst, ptr noundef %src, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp10 = icmp ugt i32 %count, 3
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %s.013 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %src, %entry.for.body_crit_edge ]
  %d.012 = phi ptr [ %incdec.ptr1, %for.body.for.body_crit_edge ], [ %dst, %entry.for.body_crit_edge ]
  %count.addr.011 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %count, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %s.013, i32 1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.013) #12, !srcloc !412
  %incdec.ptr1 = getelementptr i32, ptr %d.012, i32 1
  %1 = ptrtoint ptr %d.012 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %d.012, align 4
  %sub = add i32 %count.addr.011, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %count, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %d.0.lcssa = phi ptr [ %dst, %entry.for.end_crit_edge ], [ %incdec.ptr1, %for.body.for.end_crit_edge ]
  %s.0.lcssa = phi ptr [ %src, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0.lcssa)
  %tobool.not = icmp eq i32 %count.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then, !prof !413

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %s.0.lcssa) #12, !srcloc !412
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp, align 4
  %4 = call ptr @memcpy(ptr %d.0.lcssa, ptr %tmp, i32 %count.addr.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_memcpy_toio_32(ptr noundef %dst, ptr nocapture noundef readonly %src, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp9 = icmp ugt i32 %count, 3
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %s.012 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %src, %entry.for.body_crit_edge ]
  %d.011 = phi ptr [ %incdec.ptr1, %for.body.for.body_crit_edge ], [ %dst, %entry.for.body_crit_edge ]
  %count.addr.010 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %count, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %s.012, i32 1
  %0 = ptrtoint ptr %s.012 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s.012, align 4
  %incdec.ptr1 = getelementptr i32, ptr %d.011, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %d.011, i32 %1) #12, !srcloc !414
  %sub = add i32 %count.addr.010, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %count, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %d.0.lcssa = phi ptr [ %dst, %entry.for.end_crit_edge ], [ %incdec.ptr1, %for.body.for.end_crit_edge ]
  %s.0.lcssa = phi ptr [ %src, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0.lcssa)
  %tobool.not = icmp eq i32 %count.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then, !prof !413

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp, align 4
  %3 = call ptr @memcpy(ptr %tmp, ptr %s.0.lcssa, i32 %count.addr.0.lcssa)
  %tmp.0.tmp.0.tmp.0. = load i32, ptr %tmp, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %d.0.lcssa, i32 %tmp.0.tmp.0.tmp.0.) #12, !srcloc !414
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_mem_access_lock(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  %call = tail call i32 @down_read_trylock(ptr noundef %mem_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @up_read(ptr noundef %mem_lock) #12
  br label %return

return:                                           ; preds = %if.then7, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then7 ], [ -16, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_mem_access_unlock(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  tail call void @up_read(ptr noundef %mem_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_disconnect_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %reply = alloca %struct.anon.128, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1160
  %wil1 = getelementptr i8, ptr %work, i32 -192
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %ndev2 = getelementptr i8, ptr %work, i32 -196
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %reply) #12
  %status = getelementptr i8, ptr %work, i32 -184
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %and1.i29 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i29)
  %tobool6.not = icmp eq i32 %and1.i29, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = call ptr @memset(ptr %reply, i32 0, i32 18)
  %mid = getelementptr i8, ptr %work, i32 -188
  %10 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mid, align 4
  %call9 = call i32 @wmi_call(ptr noundef %1, i16 noundef zeroext 3, i8 noundef zeroext %11, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 4099, ptr noundef nonnull %reply, i16 noundef zeroext 18, i32 noundef 2000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wil_disconnect_worker, i32 noundef %call9) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @wil_update_net_queues_bh(ptr noundef %1, ptr noundef %add.ptr, ptr noundef null, i1 noundef zeroext true) #12
  call void @netif_carrier_off(ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #12
  %12 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %14 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %16 = call ptr @memset(ptr %bssid2.i.i, i32 0, i32 24)
  call void @cfg80211_connect_done(ptr noundef %3, ptr noundef nonnull %params.i.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #12
  call void @_clear_bit(i32 noundef 0, ptr noundef %status) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %reply) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_call(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_update_net_queues_bh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_set_recovery_state(ptr noundef %wil, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_set_recovery_state.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_set_recovery_state, %if.then)) #12
          to label %do.end5 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %2 = ptrtoint ptr %recovery_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recovery_state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_set_recovery_state.__UNIQUE_ID_ddebug364, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %state) #12
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %recovery_state6 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %4 = ptrtoint ptr %recovery_state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recovery_state6, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef %state) #12
  %6 = ptrtoint ptr %recovery_state6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %state, ptr %recovery_state6, align 8
  %wq = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wil_is_recovery_blocked(ptr nocapture noundef readonly %wil) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @no_fw_recovery, align 1, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %1 = ptrtoint ptr %recovery_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %recovery_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %3 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_ring_init_tx(ptr noundef %vif, i32 noundef %cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid)
  %cmp = icmp slt i32 %cid, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wil_ring_init_tx) #12
  br label %out

if.end:                                           ; preds = %entry
  %use_enhanced_dma_hw.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %use_enhanced_dma_hw.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_enhanced_dma_hw.i.i, align 4, !range !416
  %4 = zext i8 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ %4, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %va.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.06.i, i32 1
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body6, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %if.then3, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.then3:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.wil_ring_init_tx) #12
  br label %out

do.body6:                                         ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_init_tx.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_init_tx, %if.then10)) #12
          to label %do.end13 [label %if.then10], !srcloc !415

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %9 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mid, align 4
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_init_tx.__UNIQUE_ID_ddebug366, ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %cid, i32 noundef %conv, i32 noundef %i.06.i) #12
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body6
  %mid14 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %11 = ptrtoint ptr %mid14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mid14, align 4
  %conv15 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %cid, i32 noundef %conv15, i32 noundef %i.06.i) #12
  %ring_init_tx = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 68, i32 1
  %13 = ptrtoint ptr %ring_init_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring_init_tx, align 4
  %15 = load i32, ptr @tx_ring_order, align 4
  %shl = shl nuw i32 1, %15
  %call18 = tail call i32 %14(ptr noundef %vif, i32 noundef %i.06.i, i32 noundef %shl, i32 noundef %cid, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end13.out_crit_edge, label %if.then20

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then20:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %mid14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid14, align 4
  %conv22 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_ring_init_tx, i32 noundef %cid, i32 noundef %conv22, i32 noundef %i.06.i) #12
  br label %out

out:                                              ; preds = %if.then20, %do.end13.out_crit_edge, %if.then3, %if.then
  %rc.0 = phi i32 [ -22, %if.then ], [ -22, %if.then3 ], [ %call18, %if.then20 ], [ 0, %do.end13.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_bcast_init(ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %bcast_ring = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 23
  %2 = ptrtoint ptr %bcast_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bcast_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %va = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %3, i32 1
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %use_enhanced_dma_hw.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 67
  %6 = ptrtoint ptr %use_enhanced_dma_hw.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_enhanced_dma_hw.i.i, align 4, !range !416
  %8 = zext i8 %7 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ %8, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %va.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 57, i32 %i.06.i, i32 1
  %9 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end4, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %for.body.i
  %11 = ptrtoint ptr %bcast_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.06.i, ptr %bcast_ring, align 4
  %ring_init_bcast = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 68, i32 3
  %12 = ptrtoint ptr %ring_init_bcast to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring_init_bcast, align 4
  %14 = load i32, ptr @bcast_ring_order, align 4
  %shl = shl nuw i32 1, %14
  %call6 = tail call i32 %13(ptr noundef %vif, i32 noundef %i.06.i, i32 noundef %shl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %bcast_ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %bcast_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call6, %if.then8 ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_bcast_fini(ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_ring = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 23
  %0 = ptrtoint ptr %bcast_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bcast_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %2 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wil1, align 8
  %4 = ptrtoint ptr %bcast_ring to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bcast_ring, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %3, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_ring_fini_tx(ptr noundef %wil, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %id
  %arrayidx1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %id
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !417

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 203, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %va = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 57, i32 %id, i32 1
  %1 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %va, align 4
  %tobool25.not = icmp eq ptr %2, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %do.body30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body30:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_ring_fini_tx.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_ring_fini_tx, %if.then40)) #12
          to label %do.end45 [label %if.then40], !srcloc !415

if.then40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_ring_fini_tx.__UNIQUE_ID_ddebug357, ptr noundef %4, ptr noundef nonnull @.str.93, i32 noundef %id) #12
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body30
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.93, i32 noundef %id) #12
  %lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %id, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx1, align 4
  %mid = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %id, i32 9
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %mid, align 2
  %enabled = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %id, i32 1
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %enabled, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  tail call void @arm_heavy_mb() #12
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool53.not = icmp eq i32 %10, 0
  br i1 %tobool53.not, label %do.end45.if.end55_crit_edge, label %if.then54

do.end45.if.end55_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %do.end45
  %state.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53, i32 1
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %if.then54.if.end55_crit_edge, label %if.then54.while.body.i_crit_edge

if.then54.while.body.i_crit_edge:                 ; preds = %if.then54
  br label %while.body.i

if.then54.if.end55_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then54.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #12
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end55_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.if.end55_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %while.body.i.if.end55_crit_edge, %if.then54.if.end55_crit_edge, %do.end45.if.end55_crit_edge
  %ring_fini_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 2
  %15 = ptrtoint ptr %ring_fini_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_fini_tx, align 8
  tail call void %16(ptr noundef %wil, ptr noundef %arrayidx) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_bcast_fini_all(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp211.not = icmp eq i8 %2, 0
  br i1 %cmp211.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %bcast_ring.i = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %bcast_ring.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bcast_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp slt i32 %6, 0
  br i1 %cmp.i, label %if.then.for.inc_crit_edge, label %if.end.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %wil1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wil1.i, align 8
  %9 = ptrtoint ptr %bcast_ring.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bcast_ring.i, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %8, i32 noundef %6) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_vifs, align 4
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp2 = icmp ugt i8 %12, 1
  br i1 %cmp2, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body.1
  %bcast_ring.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %bcast_ring.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bcast_ring.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.1 = icmp slt i32 %16, 0
  br i1 %cmp.i.1, label %if.then.1.for.inc.1_crit_edge, label %if.end.i.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.i.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %wil1.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wil1.i.1, align 8
  %19 = ptrtoint ptr %bcast_ring.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %bcast_ring.i.1, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %18, i32 noundef %16) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.i.1, %if.then.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %20 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_vifs, align 4
  %22 = tail call i8 @llvm.umin.i8(i8 %21, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp2.1 = icmp ugt i8 %22, 2
  br i1 %cmp2.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %24, null
  br i1 %tobool.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.body.2
  %bcast_ring.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %bcast_ring.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bcast_ring.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.2 = icmp slt i32 %26, 0
  br i1 %cmp.i.2, label %if.then.2.for.inc.2_crit_edge, label %if.end.i.2

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.i.2:                                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %wil1.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wil1.i.2, align 8
  %29 = ptrtoint ptr %bcast_ring.i.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %bcast_ring.i.2, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %28, i32 noundef %26) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.i.2, %if.then.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  %30 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_vifs, align 4
  %32 = tail call i8 @llvm.umin.i8(i8 %31, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp2.2 = icmp ugt i8 %32, 3
  br i1 %cmp2.2, label %for.body.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %34, null
  br i1 %tobool.not.3, label %for.body.3.for.end_crit_edge, label %if.then.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.3:                                        ; preds = %for.body.3
  %bcast_ring.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %bcast_ring.i.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bcast_ring.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.3 = icmp slt i32 %36, 0
  br i1 %cmp.i.3, label %if.then.3.for.end_crit_edge, label %if.end.i.3

if.then.3.for.end_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.3:                                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %wil1.i.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wil1.i.3, align 8
  %39 = ptrtoint ptr %bcast_ring.i.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %bcast_ring.i.3, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %38, i32 noundef %36) #12
  br label %for.end

for.end:                                          ; preds = %if.end.i.3, %if.then.3.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_priv_init(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_priv_init.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_priv_init, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_priv_init.__UNIQUE_ID_ddebug369, ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.10) #12
  %sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 63
  %2 = call ptr @memset(ptr %sta, i32 0, i32 17440)
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.end6
  %i.0160 = phi i32 [ 0, %do.end6 ], [ %inc, %do.body9.do.body9_crit_edge ]
  %tid_rx_lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.0160, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %tid_rx_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @wil_priv_init.__key, i16 noundef signext 3) #12
  %mid = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.0160, i32 1
  %3 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %mid, align 2
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.body9.do.body19_crit_edge, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.body9.do.body19_crit_edge:                     ; preds = %do.body9
  br label %do.body19

do.body19:                                        ; preds = %do.body19.do.body19_crit_edge, %do.body9.do.body19_crit_edge
  %i.1161 = phi i32 [ %inc27, %do.body19.do.body19_crit_edge ], [ 0, %do.body9.do.body19_crit_edge ]
  %lock = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 58, i32 %i.1161, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @wil_priv_init.__key.12, i16 noundef signext 3) #12
  %arrayidx24 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 62, i32 %i.1161
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %arrayidx24, align 2
  %inc27 = add nuw nsw i32 %i.1161, 1
  %exitcond162.not = icmp eq i32 %inc27, 24
  br i1 %exitcond162.not, label %do.body29, label %do.body19.do.body19_crit_edge

do.body19.do.body19_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

do.body29:                                        ; preds = %do.body19
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @wil_priv_init.__key.14) #12
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %vif_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @wil_priv_init.__key.16) #12
  %wmi_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 35
  tail call void @__mutex_init(ptr noundef %wmi_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @wil_priv_init.__key.18) #12
  %halp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89
  tail call void @__mutex_init(ptr noundef %halp, ptr noundef nonnull @.str.21, ptr noundef nonnull @wil_priv_init.__key.20) #12
  %wmi_ready = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 37
  %5 = ptrtoint ptr %wmi_ready to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wmi_ready, align 4
  %wait.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @init_completion.__key) #12
  %wmi_call = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 38
  %6 = ptrtoint ptr %wmi_call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wmi_call, align 4
  %wait.i155 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 38, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i155, ptr noundef nonnull @.str.94, ptr noundef nonnull @init_completion.__key) #12
  %comp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 2
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %comp, align 4
  %wait.i156 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i156, ptr noundef nonnull @.str.94, ptr noundef nonnull @init_completion.__key) #12
  %wmi_event_worker = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 45
  tail call void @__init_work(ptr noundef %wmi_event_worker, i32 noundef 0) #12
  %8 = ptrtoint ptr %wmi_event_worker to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %wmi_event_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 45, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @wil_priv_init.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry47 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 45, i32 1
  %9 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 45, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry47, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 45, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wmi_event_worker, ptr %func, align 4
  %fw_error_worker = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47
  tail call void @__init_work(ptr noundef %fw_error_worker, i32 noundef 0) #12
  %12 = ptrtoint ptr %fw_error_worker to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %fw_error_worker, align 4
  %lockdep_map57 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map57, ptr noundef nonnull @.str.25, ptr noundef nonnull @wil_priv_init.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry59 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47, i32 1
  %13 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i157 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry59, ptr %prev.i157, align 4
  %func61 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47, i32 2
  %15 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wil_fw_error_worker, ptr %func61, align 4
  %pending_wmi_ev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 48
  %16 = ptrtoint ptr %pending_wmi_ev to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pending_wmi_ev, ptr %pending_wmi_ev, align 4
  %prev.i158 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 48, i32 1
  %17 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pending_wmi_ev, ptr %prev.i158, align 4
  %wmi_ev_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 49
  tail call void @__raw_spin_lock_init(ptr noundef %wmi_ev_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @wil_priv_init.__key.26, i16 noundef signext 3) #12
  %net_queue_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 50
  tail call void @__raw_spin_lock_init(ptr noundef %net_queue_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @wil_priv_init.__key.28, i16 noundef signext 3) #12
  %eap_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 51
  tail call void @__raw_spin_lock_init(ptr noundef %eap_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @wil_priv_init.__key.30, i16 noundef signext 3) #12
  %wq = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.33, ptr noundef nonnull @wil_priv_init.__key.32) #12
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  tail call void @__init_rwsem(ptr noundef %mem_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @wil_priv_init.__key.34) #12
  %call82 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.37) #12
  %wmi_wq = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 44
  %18 = ptrtoint ptr %wmi_wq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call82, ptr %wmi_wq, align 16
  %tobool84.not = icmp eq ptr %call82, null
  br i1 %tobool84.not, label %do.body29.cleanup_crit_edge, label %if.end86

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end86:                                         ; preds = %do.body29
  %call87 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.38) #12
  %wq_service = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 46
  %19 = ptrtoint ptr %wq_service to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call87, ptr %wq_service, align 128
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %out_wmi_wq, label %if.end91

if.end91:                                         ; preds = %if.end86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_fw_recovery = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 20
  %21 = ptrtoint ptr %last_fw_recovery to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_fw_recovery, align 4
  %tx_interframe_timeout = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 31
  %22 = ptrtoint ptr %tx_interframe_timeout to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 13, ptr %tx_interframe_timeout, align 4
  %rx_interframe_timeout = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 33
  %23 = ptrtoint ptr %rx_interframe_timeout to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 13, ptr %rx_interframe_timeout, align 4
  %tx_max_burst_duration = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 30
  %24 = ptrtoint ptr %tx_max_burst_duration to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 500, ptr %tx_max_burst_duration, align 64
  %rx_max_burst_duration = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 32
  %25 = ptrtoint ptr %rx_max_burst_duration to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 500, ptr %rx_max_burst_duration, align 8
  %26 = load i16, ptr @rx_ring_overflow_thrsh, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp92 = icmp eq i16 %26, 0
  br i1 %cmp92, label %if.then94, label %if.end91.if.end95_crit_edge

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  store i16 128, ptr @rx_ring_overflow_thrsh, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91.if.end95_crit_edge
  %ps_profile = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 90
  %27 = ptrtoint ptr %ps_profile to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ps_profile, align 8
  %wakeup_trigger = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 77
  %28 = ptrtoint ptr %wakeup_trigger to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %wakeup_trigger, align 2
  %suspend_stats = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 78
  %29 = call ptr @memset(ptr %suspend_stats, i32 0, i32 40)
  %ring_idle_trsh = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 64
  %30 = ptrtoint ptr %ring_idle_trsh to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %ring_idle_trsh, align 8
  %reply_mid = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 41
  %31 = ptrtoint ptr %reply_mid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %reply_mid, align 4
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %32 = ptrtoint ptr %max_vifs to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %max_vifs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_assoc_sta to i32))
  %33 = load i32, ptr @max_assoc_sta, align 4
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %34 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_assoc_sta, align 8
  %num_rx_status_rings = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 60
  %35 = ptrtoint ptr %num_rx_status_rings to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %num_rx_status_rings, align 4
  %tx_status_ring_order = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 102
  %36 = ptrtoint ptr %tx_status_ring_order to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 14, ptr %tx_status_ring_order, align 4
  %rx_status_ring_order = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 101
  %37 = ptrtoint ptr %rx_status_ring_order to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %rx_status_ring_order, align 8
  %rx_buff_id_count = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 103
  %38 = ptrtoint ptr %rx_buff_id_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2600, ptr %rx_buff_id_count, align 32
  %amsdu_en = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 104
  %39 = ptrtoint ptr %amsdu_en to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %amsdu_en, align 4
  br label %cleanup

out_wmi_wq:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %wmi_wq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wmi_wq, align 16
  tail call void @destroy_workqueue(ptr noundef %41) #12
  br label %cleanup

cleanup:                                          ; preds = %out_wmi_wq, %if.end95, %do.body29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end95 ], [ -11, %out_wmi_wq ], [ -11, %do.body29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wmi_event_worker(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_fw_error_worker(ptr noundef %work) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -644
  %main_ndev = getelementptr i8, ptr %work, i32 -632
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_fw_error_worker.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_fw_error_worker, %if.then)) #12
          to label %do.end8 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_fw_error_worker.__UNIQUE_ID_ddebug365, ptr noundef %3, ptr noundef nonnull @.str.96) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.96) #12
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.end8.if.then13_crit_edge, label %lor.lhs.false

do.end8.if.then13_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.end8
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %do.end8.if.then13_crit_edge
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %add.ptr, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %6 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieee80211_ptr, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_fw_recovery = getelementptr i8, ptr %work, i32 -536
  %9 = ptrtoint ptr %last_fw_recovery to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_fw_recovery, align 4
  %add.neg = add i32 %8, -500
  %sub = sub i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %recovery_count = getelementptr i8, ptr %work, i32 -544
  br i1 %cmp, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %recovery_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recovery_count, align 4
  %inc = add i32 %12, 1
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %.sink = phi i32 [ %inc, %if.then16 ], [ 1, %if.end14.if.end18_crit_edge ]
  %13 = ptrtoint ptr %recovery_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %recovery_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.sink)
  %cmp20 = icmp ugt i32 %.sink, 5
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.95, i32 noundef %.sink) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %last_fw_recovery to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_fw_recovery, align 4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %add.ptr, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.95, i32 noundef %.sink) #12
  %16 = load i8, ptr @no_fw_recovery, align 1, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %recovery_state = getelementptr i8, ptr %work, i32 -540
  %17 = ptrtoint ptr %recovery_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %recovery_state, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 500) #12
  %recovery_state.i = getelementptr i8, ptr %work, i32 -540
  %18 = ptrtoint ptr %recovery_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %recovery_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 1
  br i1 %cmp.not.i, label %if.then.i, label %if.end28.if.end15.i_crit_edge

if.end28.if.end15.i_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %20 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %wq.i = getelementptr i8, ptr %work, i32 -532
  %call41.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %21 = ptrtoint ptr %recovery_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %recovery_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp6.not42.i = icmp eq i32 %22, 1
  br i1 %cmp6.not42.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.if.end11.thread37.i_crit_edge

if.then.i.if.end11.thread37.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.thread37.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call43.i = phi i32 [ %call.i, %cleanup.i.if.end.i_crit_edge ], [ %call41.i, %if.then.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.then14.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #12
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %23 = ptrtoint ptr %recovery_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %recovery_state.i, align 8
  %cmp6.not.i = icmp eq i32 %24, 1
  br i1 %cmp6.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.if.end11.thread37.i_crit_edge

cleanup.i.if.end11.thread37.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.thread37.i

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end11.thread37.i:                              ; preds = %cleanup.i.if.end11.thread37.i_crit_edge, %if.then.i.if.end11.thread37.i_crit_edge
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %25 = ptrtoint ptr %recovery_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %recovery_state.i, align 8
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.wil_wait_for_recovery) #12
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.thread37.i, %if.end28.if.end15.i_crit_edge
  %26 = phi i32 [ %.pr.i, %if.end11.thread37.i ], [ %19, %if.end28.if.end15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp17.not.i = icmp eq i32 %26, 2
  br i1 %cmp17.not.i, label %if.end32, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %add.ptr, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.wil_wait_for_recovery) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end15.i
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %add.ptr, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.wil_wait_for_recovery) #12
  call void @rtnl_lock() #12
  %mutex = getelementptr i8, ptr %work, i32 23612
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 1
  %27 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iftype, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %sw.default [
    i32 2, label %if.end32.sw.bb_crit_edge
    i32 8, label %if.end32.sw.bb_crit_edge81
    i32 6, label %if.end32.sw.bb_crit_edge82
    i32 3, label %if.end32.sw.bb35_crit_edge
    i32 9, label %if.end32.sw.bb35_crit_edge83
  ]

if.end32.sw.bb35_crit_edge83:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end32.sw.bb35_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.end32.sw.bb_crit_edge82:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end32.sw.bb_crit_edge81:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge81, %if.end32.sw.bb_crit_edge82
  %call33 = call i32 @__wil_down(ptr noundef %add.ptr)
  %call34 = call i32 @__wil_up(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end32.sw.bb35_crit_edge, %if.end32.sw.bb35_crit_edge83
  %30 = load i8, ptr @no_fw_recovery, align 1, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool36.not = icmp eq i8 %30, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end38:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 @__wil_down(ptr noundef %add.ptr)
  %call40 = call i32 @__wil_up(ptr noundef %add.ptr)
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @wil_cfg80211_ap_recovery(ptr noundef %add.ptr) #12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %add.ptr, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95) #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.95, i32 noundef %28) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end38, %sw.bb35.sw.epilog_crit_edge, %sw.bb
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @rtnl_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then18.i, %if.then14.i, %if.then21, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_bus_request(ptr nocapture noundef %wil, i32 noundef %kbps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_ops = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83
  %0 = ptrtoint ptr %platform_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bus_request_kbps = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 95
  %2 = ptrtoint ptr %bus_request_kbps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %kbps, ptr %bus_request_kbps, align 128
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %3 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_handle, align 8
  %call = tail call i32 %1(ptr noundef %4, i32 noundef %kbps) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_disconnect(ptr noundef %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_disconnect.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_disconnect, %if.then)) #12
          to label %do.end7 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_disconnect.__UNIQUE_ID_ddebug370, ptr noundef %3, ptr noundef nonnull @.str.40) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.40) #12
  %connect_timer = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 26
  %call10 = tail call i32 @del_timer_sync(ptr noundef %connect_timer) #12
  tail call fastcc void @_wil6210_disconnect(ptr noundef %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_wil6210_disconnect(ptr noundef %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !417

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wil4 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil4, align 8
  %ndev5 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev5, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 427) #12
  %conv = zext i16 %reason_code to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__._wil6210_disconnect, ptr noundef %bssid, i32 noundef %conv) #12
  %tobool9.not = icmp eq ptr %bssid, null
  br i1 %tobool9.not, label %if.end.do.body41_crit_edge, label %land.lhs.true

if.end.do.body41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %bssid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bssid, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 2
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %7, %5
  %add.ptr3.i = getelementptr i8, ptr %bssid, i32 4
  %8 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %land.lhs.true.do.body41_crit_edge, label %land.lhs.true10

land.lhs.true.do.body41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

land.lhs.true10:                                  ; preds = %land.lhs.true
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bssid, align 4
  %xor.i.i = xor i32 %15, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %17, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true10.do.body41_crit_edge, label %if.then12

land.lhs.true10.do.body41_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.then12:                                        ; preds = %land.lhs.true10
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %18 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mid, align 4
  %max_assoc_sta.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21.not.i = icmp eq i32 %21, 0
  br i1 %cmp21.not.i, label %if.then12.wil_find_cid.exit_crit_edge, label %if.then12.for.body.i_crit_edge

if.then12.for.body.i_crit_edge:                   ; preds = %if.then12
  br label %for.body.i

if.then12.wil_find_cid.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_cid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then12.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.022.i
  %mid1.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.022.i, i32 1
  %22 = ptrtoint ptr %mid1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mid1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %19)
  %cmp3.i = icmp eq i8 %23, %19
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %status.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.022.i, i32 2
  %24 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i = icmp eq i32 %25, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %xor.i.i102 = xor i32 %27, %15
  %add.ptr.i.i103 = getelementptr i8, ptr %arrayidx.i, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i103, align 2
  %xor37.i.i104 = xor i16 %29, %9
  %xor3.i.i105 = zext i16 %xor37.i.i104 to i32
  %or.i.i106 = or i32 %xor.i.i102, %xor3.i.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i106)
  %cmp.i.i107 = icmp eq i32 %or.i.i106, 0
  br i1 %cmp.i.i107, label %land.lhs.true9.i.wil_find_cid.exit_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true9.i.wil_find_cid.exit_crit_edge:     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_cid.exit

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.wil_find_cid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.wil_find_cid.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_cid.exit

wil_find_cid.exit:                                ; preds = %for.inc.i.wil_find_cid.exit_crit_edge, %land.lhs.true9.i.wil_find_cid.exit_crit_edge, %if.then12.wil_find_cid.exit_crit_edge
  %rc.0.i = phi i32 [ -2, %if.then12.wil_find_cid.exit_crit_edge ], [ -2, %for.inc.i.wil_find_cid.exit_crit_edge ], [ %i.022.i, %land.lhs.true9.i.wil_find_cid.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wil6210_disconnect.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wil6210_disconnect, %if.then25)) #12
          to label %do.end31 [label %if.then25], !srcloc !415

if.then25:                                        ; preds = %wil_find_cid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_wil6210_disconnect.__UNIQUE_ID_ddebug362, ptr noundef %31, ptr noundef nonnull @.str.106, ptr noundef nonnull %bssid, i32 noundef %rc.0.i, i32 noundef %conv) #12
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %wil_find_cid.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef nonnull %bssid, i32 noundef %rc.0.i, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0.i)
  %cmp.i108 = icmp sgt i32 %rc.0.i, -1
  br i1 %cmp.i108, label %wil_cid_valid.exit, label %do.end31.if.end64_crit_edge

do.end31.if.end64_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

wil_cid_valid.exit:                               ; preds = %do.end31
  %32 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %rc.0.i)
  %cmp1.i = icmp ugt i32 %33, %rc.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %rc.0.i)
  %cmp2.i = icmp ult i32 %rc.0.i, 20
  %spec.select.i = and i1 %cmp2.i, %cmp1.i
  br i1 %spec.select.i, label %if.then36, label %wil_cid_valid.exit.if.end64_crit_edge

wil_cid_valid.exit.if.end64_crit_edge:            ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then36:                                        ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_disconnect_cid(ptr noundef nonnull %vif, i32 noundef %rc.0.i, i16 noundef zeroext %reason_code)
  br label %if.end64

do.body41:                                        ; preds = %land.lhs.true10.do.body41_crit_edge, %land.lhs.true.do.body41_crit_edge, %if.end.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wil6210_disconnect.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wil6210_disconnect, %if.then53)) #12
          to label %do.end59 [label %if.then53], !srcloc !415

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev54 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %main_ndev54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %main_ndev54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_wil6210_disconnect.__UNIQUE_ID_ddebug363, ptr noundef %35, ptr noundef nonnull @.str.107) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body41
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.107) #12
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %36 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp113.not = icmp eq i32 %37, 0
  br i1 %cmp113.not, label %do.end59.if.end64_crit_edge, label %do.end59.for.body_crit_edge

do.end59.for.body_crit_edge:                      ; preds = %do.end59
  br label %for.body

do.end59.if.end64_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end59.for.body_crit_edge
  %cid.0114 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end59.for.body_crit_edge ]
  tail call fastcc void @wil_disconnect_cid(ptr noundef nonnull %vif, i32 noundef %cid.0114, i16 noundef zeroext %reason_code)
  %inc = add nuw i32 %cid.0114, 1
  %38 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end64_crit_edge

for.body.if.end64_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end64:                                         ; preds = %for.body.if.end64_crit_edge, %do.end59.if.end64_crit_edge, %if.then36, %wil_cid_valid.exit.if.end64_crit_edge, %do.end31.if.end64_crit_edge
  tail call fastcc void @_wil6210_disconnect_complete(ptr noundef nonnull %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code)
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_disconnect_complete(ptr noundef %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_disconnect_complete.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_disconnect_complete, %if.then)) #12
          to label %do.end7 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_disconnect_complete.__UNIQUE_ID_ddebug371, ptr noundef %3, ptr noundef nonnull @.str.42) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.42) #12
  %connect_timer = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 26
  %call10 = tail call i32 @del_timer_sync(ptr noundef %connect_timer) #12
  tail call fastcc void @_wil6210_disconnect_complete(ptr noundef %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_wil6210_disconnect_complete(ptr noundef %vif, ptr noundef %bssid, i16 noundef zeroext %reason_code) unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %ndev2 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 312) #12
  %conv = zext i16 %reason_code to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.111, ptr noundef nonnull @__func__._wil6210_disconnect_complete, ptr noundef %bssid, i32 noundef %conv) #12
  %tobool.not = icmp eq ptr %bssid, null
  br i1 %tobool.not, label %entry.do.body31_crit_edge, label %land.lhs.true

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %bssid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bssid, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 2
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %7, %5
  %add.ptr3.i = getelementptr i8, ptr %bssid, i32 4
  %8 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %land.lhs.true.do.body31_crit_edge, label %land.lhs.true7

land.lhs.true.do.body31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

land.lhs.true7:                                   ; preds = %land.lhs.true
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bssid, align 4
  %xor.i.i = xor i32 %15, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %17, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true7.do.body31_crit_edge, label %if.then

land.lhs.true7.do.body31_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

if.then:                                          ; preds = %land.lhs.true7
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %18 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mid, align 4
  %max_assoc_sta.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21.not.i = icmp eq i32 %21, 0
  br i1 %cmp21.not.i, label %if.then.wil_find_cid.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.wil_find_cid.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_cid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.022.i
  %mid1.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.022.i, i32 1
  %22 = ptrtoint ptr %mid1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mid1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %19)
  %cmp3.i = icmp eq i8 %23, %19
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %status.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.022.i, i32 2
  %24 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i = icmp eq i32 %25, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %xor.i.i148 = xor i32 %27, %15
  %add.ptr.i.i149 = getelementptr i8, ptr %arrayidx.i, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i149, align 2
  %xor37.i.i150 = xor i16 %29, %9
  %xor3.i.i151 = zext i16 %xor37.i.i150 to i32
  %or.i.i152 = or i32 %xor.i.i148, %xor3.i.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i152)
  %cmp.i.i153 = icmp eq i32 %or.i.i152, 0
  br i1 %cmp.i.i153, label %land.lhs.true9.i.wil_find_cid.exit_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true9.i.wil_find_cid.exit_crit_edge:     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_cid.exit

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.wil_find_cid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.wil_find_cid.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_find_cid.exit

wil_find_cid.exit:                                ; preds = %for.inc.i.wil_find_cid.exit_crit_edge, %land.lhs.true9.i.wil_find_cid.exit_crit_edge, %if.then.wil_find_cid.exit_crit_edge
  %rc.0.i = phi i32 [ -2, %if.then.wil_find_cid.exit_crit_edge ], [ -2, %for.inc.i.wil_find_cid.exit_crit_edge ], [ %i.022.i, %land.lhs.true9.i.wil_find_cid.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wil6210_disconnect_complete.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wil6210_disconnect_complete, %if.then17)) #12
          to label %do.end22 [label %if.then17], !srcloc !415

if.then17:                                        ; preds = %wil_find_cid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_wil6210_disconnect_complete.__UNIQUE_ID_ddebug359, ptr noundef %31, ptr noundef nonnull @.str.112, ptr noundef nonnull %bssid, i32 noundef %rc.0.i, i32 noundef %conv) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %wil_find_cid.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef nonnull %bssid, i32 noundef %rc.0.i, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0.i)
  %cmp.i154 = icmp sgt i32 %rc.0.i, -1
  br i1 %cmp.i154, label %wil_cid_valid.exit, label %do.end22.if.end53_crit_edge

do.end22.if.end53_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

wil_cid_valid.exit:                               ; preds = %do.end22
  %32 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %rc.0.i)
  %cmp1.i = icmp ugt i32 %33, %rc.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %rc.0.i)
  %cmp2.i = icmp ult i32 %rc.0.i, 20
  %spec.select.i = and i1 %cmp2.i, %cmp1.i
  br i1 %spec.select.i, label %if.then27, label %wil_cid_valid.exit.if.end53_crit_edge

wil_cid_valid.exit.if.end53_crit_edge:            ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then27:                                        ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_disconnect_cid_complete(ptr noundef %vif, i32 noundef %rc.0.i)
  br label %if.end53

do.body31:                                        ; preds = %land.lhs.true7.do.body31_crit_edge, %land.lhs.true.do.body31_crit_edge, %entry.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wil6210_disconnect_complete.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wil6210_disconnect_complete, %if.then43)) #12
          to label %do.end49 [label %if.then43], !srcloc !415

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev44 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %main_ndev44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %main_ndev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_wil6210_disconnect_complete.__UNIQUE_ID_ddebug360, ptr noundef %35, ptr noundef nonnull @.str.113) #12
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body31
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.113) #12
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %36 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp172.not = icmp eq i32 %37, 0
  br i1 %cmp172.not, label %do.end49.if.end53_crit_edge, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  br label %for.body

do.end49.if.end53_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end49.for.body_crit_edge
  %cid.0173 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end49.for.body_crit_edge ]
  tail call fastcc void @wil_disconnect_cid_complete(ptr noundef %vif, i32 noundef %cid.0173)
  %inc = add nuw i32 %cid.0173, 1
  %38 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_assoc_sta, align 8
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end53_crit_edge

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end53:                                         ; preds = %for.body.if.end53_crit_edge, %do.end49.if.end53_crit_edge, %if.then27, %wil_cid_valid.exit.if.end53_crit_edge, %do.end22.if.end53_crit_edge
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %40 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iftype, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %41, label %if.end53.sw.epilog_crit_edge [
    i32 2, label %if.end53.sw.bb_crit_edge
    i32 8, label %if.end53.sw.bb_crit_edge174
    i32 3, label %if.end53.sw.bb74_crit_edge
    i32 9, label %if.end53.sw.bb74_crit_edge175
  ]

if.end53.sw.bb74_crit_edge175:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74

if.end53.sw.bb74_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74

if.end53.sw.bb_crit_edge174:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end53.sw.bb_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end53.sw.bb_crit_edge, %if.end53.sw.bb_crit_edge174
  %bcast_ring.i = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 23
  %43 = ptrtoint ptr %bcast_ring.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bcast_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i157 = icmp slt i32 %44, 0
  br i1 %cmp.i157, label %sw.bb.wil_bcast_fini.exit_crit_edge, label %if.end.i

sw.bb.wil_bcast_fini.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wil1, align 8
  %47 = ptrtoint ptr %bcast_ring.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %bcast_ring.i, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %46, i32 noundef %44) #12
  br label %wil_bcast_fini.exit

wil_bcast_fini.exit:                              ; preds = %if.end.i, %sw.bb.wil_bcast_fini.exit_crit_edge
  tail call void @wil_update_net_queues_bh(ptr noundef %1, ptr noundef %vif, ptr noundef null, i1 noundef zeroext true) #12
  tail call void @netif_carrier_off(ptr noundef %3) #12
  %call54 = tail call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %1, ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br i1 %call54, label %wil_bcast_fini.exit.if.end56_crit_edge, label %if.then55

wil_bcast_fini.exit.if.end56_crit_edge:           ; preds = %wil_bcast_fini.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then55:                                        ; preds = %wil_bcast_fini.exit
  %platform_ops.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 83
  %48 = ptrtoint ptr %platform_ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_ops.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.then55.if.end56_crit_edge, label %if.then.i

if.then55.if.end56_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %bus_request_kbps.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 95
  %50 = ptrtoint ptr %bus_request_kbps.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128000, ptr %bus_request_kbps.i, align 128
  %platform_handle.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 82
  %51 = ptrtoint ptr %platform_handle.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %platform_handle.i, align 8
  %call.i = tail call i32 %49(ptr noundef %52, i32 noundef 128000) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then.i, %if.then55.if.end56_crit_edge, %wil_bcast_fini.exit.if.end56_crit_edge
  %status = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 4
  %call57 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %connected_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected_vifs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %connected_vifs, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %connected_vifs, ptr %connected_vifs, i32 1, ptr elementtype(i32) %connected_vifs) #12, !srcloc !419
  %locally_generated_disc = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 25
  %54 = ptrtoint ptr %locally_generated_disc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %locally_generated_disc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool60 = icmp ne i32 %55, 0
  tail call void @cfg80211_disconnected(ptr noundef %3, i16 noundef zeroext %reason_code, ptr noundef null, i32 noundef 0, i1 noundef zeroext %tobool60, i32 noundef 3264) #12
  %56 = ptrtoint ptr %locally_generated_disc to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %locally_generated_disc, align 4
  br label %if.end69

if.else62:                                        ; preds = %if.end56
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool66.not = icmp eq i32 %and1.i, 0
  br i1 %tobool66.not, label %if.else62.if.end69_crit_edge, label %if.then67

if.else62.if.end69_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then67:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #12
  %59 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %60 = call ptr @memset(ptr %59, i32 0, i32 24)
  %61 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %bssid, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %64 = call ptr @memset(ptr %bss3.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %3, ptr noundef nonnull %params.i.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #12
  %bss = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 24
  %65 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %bss, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.else62.if.end69_crit_edge, %if.then59
  call void @_clear_bit(i32 noundef 0, ptr noundef %status) #12
  call void @_clear_bit(i32 noundef 2, ptr noundef %status) #12
  %ptk_rekey_state = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 37
  %66 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %ptk_rekey_state, align 8
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end53.sw.bb74_crit_edge, %if.end53.sw.bb74_crit_edge175
  %mid75 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %67 = ptrtoint ptr %mid75 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mid75, align 4
  %max_assoc_sta.i159 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 26
  %69 = ptrtoint ptr %max_assoc_sta.i159 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_assoc_sta.i159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp14.not.i = icmp eq i32 %70, 0
  br i1 %cmp14.not.i, label %sw.bb74.if.then77_crit_edge, label %sw.bb74.for.body.i162_crit_edge

sw.bb74.for.body.i162_crit_edge:                  ; preds = %sw.bb74
  br label %for.body.i162

sw.bb74.if.then77_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77

for.body.i162:                                    ; preds = %for.inc.i168.for.body.i162_crit_edge, %sw.bb74.for.body.i162_crit_edge
  %cmp17.i = phi i1 [ %cmp.i166, %for.inc.i168.for.body.i162_crit_edge ], [ true, %sw.bb74.for.body.i162_crit_edge ]
  %i.015.i = phi i32 [ %inc.i165, %for.inc.i168.for.body.i162_crit_edge ], [ 0, %sw.bb74.for.body.i162_crit_edge ]
  %mid1.i160 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.015.i, i32 1
  %71 = ptrtoint ptr %mid1.i160 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mid1.i160, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %68)
  %cmp3.i161 = icmp eq i8 %72, %68
  br i1 %cmp3.i161, label %land.lhs.true.i164, label %for.body.i162.for.inc.i168_crit_edge

for.body.i162.for.inc.i168_crit_edge:             ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i168

land.lhs.true.i164:                               ; preds = %for.body.i162
  %status.i163 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %i.015.i, i32 2
  %73 = ptrtoint ptr %status.i163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status.i163, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp7.i = icmp eq i32 %74, 2
  br i1 %cmp7.i, label %land.lhs.true.i164.wil_vif_is_connected.exit_crit_edge, label %land.lhs.true.i164.for.inc.i168_crit_edge

land.lhs.true.i164.for.inc.i168_crit_edge:        ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i168

land.lhs.true.i164.wil_vif_is_connected.exit_crit_edge: ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_vif_is_connected.exit

for.inc.i168:                                     ; preds = %land.lhs.true.i164.for.inc.i168_crit_edge, %for.body.i162.for.inc.i168_crit_edge
  %inc.i165 = add nuw i32 %i.015.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i165, i32 %70)
  %cmp.i166 = icmp ult i32 %inc.i165, %70
  %exitcond.not.i167 = icmp eq i32 %inc.i165, %70
  br i1 %exitcond.not.i167, label %for.inc.i168.wil_vif_is_connected.exit_crit_edge, label %for.inc.i168.for.body.i162_crit_edge

for.inc.i168.for.body.i162_crit_edge:             ; preds = %for.inc.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i162

for.inc.i168.wil_vif_is_connected.exit_crit_edge: ; preds = %for.inc.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_vif_is_connected.exit

wil_vif_is_connected.exit:                        ; preds = %for.inc.i168.wil_vif_is_connected.exit_crit_edge, %land.lhs.true.i164.wil_vif_is_connected.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i166, %for.inc.i168.wil_vif_is_connected.exit_crit_edge ], [ %cmp17.i, %land.lhs.true.i164.wil_vif_is_connected.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %if.else85, label %wil_vif_is_connected.exit.if.then77_crit_edge

wil_vif_is_connected.exit.if.then77_crit_edge:    ; preds = %wil_vif_is_connected.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77

if.then77:                                        ; preds = %wil_vif_is_connected.exit.if.then77_crit_edge, %sw.bb74.if.then77_crit_edge
  tail call void @wil_update_net_queues_bh(ptr noundef %1, ptr noundef %vif, ptr noundef null, i1 noundef zeroext true) #12
  %status78 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 4
  %call80 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %status78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then77.sw.epilog_crit_edge, label %if.then82

if.then77.sw.epilog_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  %connected_vifs83 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 25
  %call.i.i146 = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected_vifs83, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %connected_vifs83, i32 1, i32 3, i32 1) #12
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %connected_vifs83, ptr %connected_vifs83, i32 1, ptr elementtype(i32) %connected_vifs83) #12, !srcloc !419
  br label %sw.epilog

if.else85:                                        ; preds = %wil_vif_is_connected.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_update_net_queues_bh(ptr noundef %1, ptr noundef %vif, ptr noundef null, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else85, %if.then82, %if.then77.sw.epilog_crit_edge, %if.end69, %if.end53.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_priv_deinit(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_priv_deinit.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_priv_deinit, %if.then)) #12
          to label %do.end5 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_priv_deinit.__UNIQUE_ID_ddebug372, ptr noundef %1, ptr noundef nonnull @.str.44) #12
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.44) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_set_recovery_state.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_priv_deinit, %if.then.i)) #12
          to label %wil_set_recovery_state.exit [label %if.then.i], !srcloc !415

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev.i, align 4
  %recovery_state.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %4 = ptrtoint ptr %recovery_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recovery_state.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_set_recovery_state.__UNIQUE_ID_ddebug364, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef 0) #12
  br label %wil_set_recovery_state.exit

wil_set_recovery_state.exit:                      ; preds = %if.then.i, %do.end5
  %recovery_state6.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %6 = ptrtoint ptr %recovery_state6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recovery_state6.i, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef 0) #12
  %8 = ptrtoint ptr %recovery_state6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %recovery_state6.i, align 8
  %wq.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %fw_error_worker = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %fw_error_worker) #12
  tail call void @wmi_event_flush(ptr noundef %wil) #12
  %wq_service = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 46
  %9 = ptrtoint ptr %wq_service to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq_service, align 128
  tail call void @destroy_workqueue(ptr noundef %10) #12
  %wmi_wq = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 44
  %11 = ptrtoint ptr %wmi_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wmi_wq, align 16
  tail call void @destroy_workqueue(ptr noundef %12) #12
  %brd_info = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 14
  %13 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %brd_info, align 4
  tail call void @kfree(ptr noundef %14) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wmi_event_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_refresh_fw_capabilities(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  %platform_capa = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 17
  %2 = ptrtoint ptr %platform_capa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %platform_capa, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %4 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_capabilities, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool4, %land.rhs ]
  %keep_radio_on_during_sleep = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 84
  %frombool = zext i1 %7 to i8
  %8 = ptrtoint ptr %keep_radio_on_during_sleep to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %keep_radio_on_during_sleep, align 8
  %conv = zext i1 %7 to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.wil_refresh_fw_capabilities, i32 noundef %conv) #12
  %fw_capabilities7 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %9 = ptrtoint ptr %fw_capabilities7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %fw_capabilities7, align 4
  %11 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  %spec.select95 = select i1 %tobool10.not, i32 2, i32 1
  %12 = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select95, ptr %12, align 8
  %14 = ptrtoint ptr %fw_capabilities7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fw_capabilities7, align 4
  %16 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %land.end.if.end17_crit_edge, label %if.then16

land.end.if.end17_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_sched_scan_reqs = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %max_sched_scan_reqs to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %max_sched_scan_reqs, align 1
  %max_sched_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %max_sched_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %max_sched_scan_ssids, align 2
  %max_match_sets = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %max_match_sets to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %max_match_sets, align 1
  %max_sched_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %max_sched_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1024, ptr %max_sched_scan_ie_len, align 2
  %max_sched_scan_plans = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %max_sched_scan_plans to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %max_sched_scan_plans, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.end.if.end17_crit_edge
  %22 = ptrtoint ptr %fw_capabilities7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %fw_capabilities7, align 4
  %24 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool21.not = icmp eq i32 %24, 0
  br i1 %tobool21.not, label %if.end17.if.end23_crit_edge, label %if.then22

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 32
  %or = or i32 %26, 1048576
  store i32 %or, ptr %flags, align 32
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17.if.end23_crit_edge
  %set_features = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83, i32 6
  %27 = ptrtoint ptr %set_features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_features, align 4
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %if.end23.if.end42_crit_edge, label %if.then25

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then25:                                        ; preds = %if.end23
  %29 = ptrtoint ptr %fw_capabilities7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %fw_capabilities7, align 4
  %31 = and i32 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool29.not = icmp eq i32 %31, 0
  br i1 %tobool29.not, label %if.then25.land.end35_crit_edge, label %land.rhs30

if.then25.land.end35_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end35

land.rhs30:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %platform_capa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %platform_capa, align 4
  %34 = lshr i32 %33, 2
  %.lobit = and i32 %34, 1
  br label %land.end35

land.end35:                                       ; preds = %land.rhs30, %if.then25.land.end35_crit_edge
  %35 = phi i32 [ 0, %if.then25.land.end35_crit_edge ], [ %.lobit, %land.rhs30 ]
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %36 = ptrtoint ptr %n_msi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp = icmp eq i32 %37, 3
  %or38 = or i32 %35, 2
  %spec.select = select i1 %cmp, i32 %or38, i32 %35
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %38 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_handle, align 8
  tail call void %28(ptr noundef %39, i32 noundef %spec.select) #12
  br label %if.end42

if.end42:                                         ; preds = %land.end35, %if.end23.if.end42_crit_edge
  %40 = ptrtoint ptr %fw_capabilities7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %fw_capabilities7, align 4
  %42 = and i32 %41, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool46.not = icmp eq i32 %42, 0
  %spec.select96 = select i1 %tobool46.not, i32 32, i32 64
  %spec.select97 = select i1 %tobool46.not, i32 65536, i32 131072
  %43 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 109
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select96, ptr %43, align 32
  %45 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 110
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select97, ptr %45, align 4
  tail call void @update_supported_bands(ptr noundef %wil) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_supported_bands(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wil_mbox_ring_le2cpus(ptr nocapture noundef %r) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %r, align 4
  %entry_size = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 1
  %4 = ptrtoint ptr %entry_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %entry_size, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #12
  %7 = ptrtoint ptr %entry_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %entry_size, align 2
  %size = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %size, align 2
  %tail = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 3
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tail, align 4
  %head = getelementptr inbounds %struct.wil6210_mbox_ring, ptr %r, i32 0, i32 4
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %head, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_get_board_file(ptr nocapture noundef readonly %wil, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %board_file1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 12
  %0 = ptrtoint ptr %board_file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_file1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ftm_mode to i32))
  %2 = load i8, ptr @ftm_mode, align 1, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.47, ptr @.str.46
  %wil_fw_name = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 11
  %3 = ptrtoint ptr %wil_fw_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wil_fw_name, align 8
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull %cond) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %.str.48..str.49 = select i1 %cmp, ptr @.str.48, ptr @.str.49
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry.if.end6_crit_edge
  %board_file.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %.str.48..str.49, %if.else ]
  %call7 = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull %board_file.0, i32 noundef %len) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_abort_scan(ptr noundef %vif, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #12
  %2 = call ptr @memcpy(ptr %info, ptr @__const.wil_abort_scan.info, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !417

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1462, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %scan_request = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 28
  %4 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_request, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end.cleanup122_crit_edge, label %do.body30

if.end.cleanup122_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup122

do.body30:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_abort_scan.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_abort_scan, %if.then41)) #12
          to label %do.end47 [label %if.then41], !srcloc !415

if.then41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  %8 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_request, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_abort_scan.__UNIQUE_ID_ddebug387, ptr noundef %7, ptr noundef nonnull @.str.51, ptr noundef %9) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body30
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_request, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef %11) #12
  %scan_timer = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 29
  %call51 = tail call i32 @del_timer_sync(ptr noundef %scan_timer) #12
  %vif_mutex52 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_unlock(ptr noundef %vif_mutex52) #12
  %call53 = tail call i32 @wmi_abort_scan(ptr noundef %vif) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  %12 = and i1 %tobool54.not, %sync
  br i1 %12, label %if.then56, label %do.end47.if.end114_crit_edge

do.end47.if.end114_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then56:                                        ; preds = %do.end47
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1474) #12
  %13 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scan_request, align 4
  %tobool65.not = icmp eq ptr %14, null
  br i1 %tobool65.not, label %if.then56.if.end114_crit_edge, label %if.then80

if.then56.if.end114_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then80:                                        ; preds = %if.then56
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wq = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 21
  %call83162 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %16 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scan_request, align 4
  %tobool86.not163 = icmp eq ptr %17, null
  br i1 %tobool86.not163, label %if.then80.for.end_crit_edge, label %if.then80.if.end105_crit_edge

if.then80.if.end105_crit_edge:                    ; preds = %if.then80
  br label %if.end105

if.then80.for.end_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end105:                                        ; preds = %cleanup.if.end105_crit_edge, %if.then80.if.end105_crit_edge
  %__ret81.1165 = phi i32 [ %__ret81.1, %cleanup.if.end105_crit_edge ], [ 100, %if.then80.if.end105_crit_edge ]
  %call83164 = phi i32 [ %call83, %cleanup.if.end105_crit_edge ], [ %call83162, %if.then80.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83164)
  %tobool106.not = icmp eq i32 %call83164, 0
  br i1 %tobool106.not, label %cleanup, label %if.end105.__out_crit_edge

if.end105.__out_crit_edge:                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end105
  %call109 = call i32 @schedule_timeout(i32 noundef %__ret81.1165) #12
  %call83 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %18 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scan_request, align 4
  %tobool86.not = icmp eq ptr %19, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool92.not = icmp eq i32 %call109, 0
  %20 = select i1 %tobool86.not, i1 %tobool92.not, i1 false
  %__ret81.1 = select i1 %20, i32 1, i32 %call109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret81.1)
  %tobool98.not = icmp eq i32 %__ret81.1, 0
  %21 = select i1 %tobool86.not, i1 true, i1 %tobool98.not
  br i1 %21, label %cleanup.for.end_crit_edge, label %cleanup.if.end105_crit_edge

cleanup.if.end105_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then80.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end105.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end114

if.end114:                                        ; preds = %__out, %if.then56.if.end114_crit_edge, %do.end47.if.end114_crit_edge
  call void @mutex_lock_nested(ptr noundef %vif_mutex52, i32 noundef 0) #12
  %22 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scan_request, align 4
  %tobool117.not = icmp eq ptr %23, null
  br i1 %tobool117.not, label %if.end114.cleanup122_crit_edge, label %if.then118

if.end114.cleanup122_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup122

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  call void @cfg80211_scan_done(ptr noundef nonnull %23, ptr noundef nonnull %info) #12
  %24 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %scan_request, align 4
  br label %cleanup122

cleanup122:                                       ; preds = %if.then118, %if.end114.cleanup122_crit_edge, %if.end.cleanup122_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_abort_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_abort_scan_all_vifs(ptr noundef %wil, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !417

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1487, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %1 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %max_vifs, align 4
  %3 = tail call i8 @llvm.umin.i8(i8 %2, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2742.not = icmp eq i8 %3, 0
  br i1 %cmp2742.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool29.not = icmp eq ptr %5, null
  br i1 %tobool29.not, label %for.body.if.end32_crit_edge, label %if.then30

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %5, i1 noundef zeroext %sync)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.body.if.end32_crit_edge
  %6 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_vifs, align 4
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp27 = icmp ugt i8 %8, 1
  br i1 %cmp27, label %for.body.1, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %if.end32
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tobool29.not.1 = icmp eq ptr %10, null
  br i1 %tobool29.not.1, label %for.body.1.if.end32.1_crit_edge, label %if.then30.1

for.body.1.if.end32.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.1

if.then30.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %10, i1 noundef zeroext %sync)
  br label %if.end32.1

if.end32.1:                                       ; preds = %if.then30.1, %for.body.1.if.end32.1_crit_edge
  %11 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_vifs, align 4
  %13 = tail call i8 @llvm.umin.i8(i8 %12, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp27.1 = icmp ugt i8 %13, 2
  br i1 %cmp27.1, label %for.body.2, label %if.end32.1.for.end_crit_edge

if.end32.1.for.end_crit_edge:                     ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %if.end32.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool29.not.2 = icmp eq ptr %15, null
  br i1 %tobool29.not.2, label %for.body.2.if.end32.2_crit_edge, label %if.then30.2

for.body.2.if.end32.2_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.2

if.then30.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %15, i1 noundef zeroext %sync)
  br label %if.end32.2

if.end32.2:                                       ; preds = %if.then30.2, %for.body.2.if.end32.2_crit_edge
  %16 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_vifs, align 4
  %18 = tail call i8 @llvm.umin.i8(i8 %17, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp27.2 = icmp ugt i8 %18, 3
  br i1 %cmp27.2, label %for.body.3, label %if.end32.2.for.end_crit_edge

if.end32.2.for.end_crit_edge:                     ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %if.end32.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %tobool29.not.3 = icmp eq ptr %20, null
  br i1 %tobool29.not.3, label %for.body.3.for.end_crit_edge, label %if.then30.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then30.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %20, i1 noundef zeroext %sync)
  br label %for.end

for.end:                                          ; preds = %if.then30.3, %for.body.3.for.end_crit_edge, %if.end32.2.for.end_crit_edge, %if.end32.1.for.end_crit_edge, %if.end32.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_ps_update(ptr noundef %wil, i32 noundef %ps_profile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %0 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fw_capabilities, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.wil_ps_update) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wmi_ps_dev_profile_cfg(ptr noundef %wil, i32 noundef %ps_profile) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.wil_ps_update, i32 noundef %call1) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ps_profile4 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 90
  %3 = ptrtoint ptr %ps_profile4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ps_profile, ptr %ps_profile4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ 0, %if.else ], [ %call1, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_ps_dev_profile_cfg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_clear_fw_log_addr(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_clear_fw_log_addr.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_clear_fw_log_addr, %if.then)) #12
          to label %do.end5 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_clear_fw_log_addr.__UNIQUE_ID_ddebug392, ptr noundef %5, ptr noundef nonnull @.str.55) #12
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.55) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_reset(ptr noundef %wil, i1 noundef zeroext %load_fw) local_unnamed_addr #0 align 64 {
entry:
  %bl.i = alloca %union.anon.130, align 4
  %mac.i = alloca [8 x i8], align 4
  %board_file = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_reset.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_reset, %if.then)) #12
          to label %do.end7 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_reset.__UNIQUE_ID_ddebug393, ptr noundef %1, ptr noundef nonnull @.str.57) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.57) #12
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  %call10 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #12
  br i1 %call10, label %do.end7.if.end34_crit_edge, label %do.end28, !prof !413

do.end7.if.end34_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end28:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1602, i32 noundef 9, ptr noundef null) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %do.end7.if.end34_crit_edge
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool44.not = icmp eq i32 %4, 0
  br i1 %tobool44.not, label %if.end34.if.end66_crit_edge, label %do.end60, !prof !413

if.end34.if.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.end60:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1603, i32 noundef 9, ptr noundef null) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %if.end34.if.end66_crit_edge
  %5 = load i8, ptr @debug_fw, align 1, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool74.not = icmp eq i8 %5, 0
  br i1 %tobool74.not, label %if.end80, label %if.then75

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev76 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev76 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev76, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 14593298, ptr %perm_addr, align 4
  %add.ptr1.i = getelementptr %struct.net_device, ptr %7, i32 0, i32 54, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 13398, ptr %add.ptr1.i, align 2
  tail call void @dev_addr_mod(ptr noundef %7, i32 noundef 0, ptr noundef %perm_addr, i32 noundef 6) #12
  br label %cleanup305

if.end80:                                         ; preds = %if.end66
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %10 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.end80.cleanup305_crit_edge, label %if.end82

if.end80.cleanup305_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup305

if.end82:                                         ; preds = %if.end80
  %platform_capa = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 17
  %12 = ptrtoint ptr %platform_capa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %platform_capa, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool85.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp87 = icmp ult i32 %11, 4
  %or.cond = select i1 %tobool85.not, i1 %cmp87, i1 false
  br i1 %or.cond, label %do.body91, label %if.end82.if.end112_crit_edge

if.end82.if.end112_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

do.body91:                                        ; preds = %if.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_reset.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_reset, %if.then103)) #12
          to label %do.end109 [label %if.then103], !srcloc !415

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev104 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev104, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_reset.__UNIQUE_ID_ddebug394, ptr noundef %16, ptr noundef nonnull @.str.58) #12
  br label %do.end109

do.end109:                                        ; preds = %if.then103, %do.body91
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.58) #12
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %17 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %20 = or i32 %19, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %20) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.end82.if.end112_crit_edge
  %23 = ptrtoint ptr %platform_capa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %platform_capa, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool116.not = icmp eq i32 %25, 0
  br i1 %tobool116.not, label %if.end112.if.end141_crit_edge, label %do.body120

if.end112.if.end141_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

do.body120:                                       ; preds = %if.end112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_reset.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_reset, %if.then132)) #12
          to label %do.end138 [label %if.then132], !srcloc !415

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev133 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %26 = ptrtoint ptr %main_ndev133 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev133, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_reset.__UNIQUE_ID_ddebug395, ptr noundef %27, ptr noundef nonnull @.str.59) #12
  br label %do.end138

do.end138:                                        ; preds = %if.then132, %do.body120
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.59) #12
  %csr.i.i460 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %28 = ptrtoint ptr %csr.i.i460 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i.i460, align 4
  %add.ptr.i.i461 = getelementptr i8, ptr %29, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i461) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %31 = or i32 %30, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %csr.i.i460 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr.i.i460, align 4
  %add.ptr.i5.i463 = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i463, i32 %31) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %if.end141

if.end141:                                        ; preds = %do.end138, %if.end112.if.end141_crit_edge
  %notify = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83, i32 4
  %34 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %notify, align 4
  %tobool142.not = icmp eq ptr %35, null
  br i1 %tobool142.not, label %if.end141.if.end150_crit_edge, label %if.then143

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then143:                                       ; preds = %if.end141
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %36 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_handle, align 8
  %call146 = tail call i32 %35(ptr noundef %37, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then143.if.end150_crit_edge, label %if.then148

if.then143.if.end150_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then148:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef %call146) #12
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.then143.if.end150_crit_edge, %if.end141.if.end150_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status) #12
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %38 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.end150.if.end.i_crit_edge, label %land.rhs.i

if.end150.if.end.i_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end150
  %dep_map.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !417

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1487, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end150.if.end.i_crit_edge
  %max_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %39 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_vifs.i, align 4
  %41 = tail call i8 @llvm.umin.i8(i8 %40, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp2742.not.i = icmp eq i8 %41, 0
  br i1 %cmp2742.not.i, label %if.end.i.wil_abort_scan_all_vifs.exit_crit_edge, label %for.body.i

if.end.i.wil_abort_scan_all_vifs.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %tobool29.not.i = icmp eq ptr %43, null
  br i1 %tobool29.not.i, label %for.body.i.if.end32.i_crit_edge, label %if.then30.i

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %43, i1 noundef zeroext false) #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %for.body.i.if.end32.i_crit_edge
  %44 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %max_vifs.i, align 4
  %46 = tail call i8 @llvm.umin.i8(i8 %45, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp27.i = icmp ugt i8 %46, 1
  br i1 %cmp27.i, label %for.body.i.1, label %if.end32.i.wil_abort_scan_all_vifs.exit_crit_edge

if.end32.i.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i.1:                                     ; preds = %if.end32.i
  %arrayidx.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %47 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool29.not.i.1 = icmp eq ptr %48, null
  br i1 %tobool29.not.i.1, label %for.body.i.1.if.end32.i.1_crit_edge, label %if.then30.i.1

for.body.i.1.if.end32.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.1

if.then30.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %48, i1 noundef zeroext false) #12
  br label %if.end32.i.1

if.end32.i.1:                                     ; preds = %if.then30.i.1, %for.body.i.1.if.end32.i.1_crit_edge
  %49 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_vifs.i, align 4
  %51 = tail call i8 @llvm.umin.i8(i8 %50, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp27.i.1 = icmp ugt i8 %51, 2
  br i1 %cmp27.i.1, label %for.body.i.2, label %if.end32.i.1.wil_abort_scan_all_vifs.exit_crit_edge

if.end32.i.1.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %if.end32.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i.2:                                     ; preds = %if.end32.i.1
  %arrayidx.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %52 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool29.not.i.2 = icmp eq ptr %53, null
  br i1 %tobool29.not.i.2, label %for.body.i.2.if.end32.i.2_crit_edge, label %if.then30.i.2

for.body.i.2.if.end32.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.2

if.then30.i.2:                                    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %53, i1 noundef zeroext false) #12
  br label %if.end32.i.2

if.end32.i.2:                                     ; preds = %if.then30.i.2, %for.body.i.2.if.end32.i.2_crit_edge
  %54 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_vifs.i, align 4
  %56 = tail call i8 @llvm.umin.i8(i8 %55, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %56)
  %cmp27.i.2 = icmp ugt i8 %56, 3
  br i1 %cmp27.i.2, label %for.body.i.3, label %if.end32.i.2.wil_abort_scan_all_vifs.exit_crit_edge

if.end32.i.2.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %if.end32.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i.3:                                     ; preds = %if.end32.i.2
  %arrayidx.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %57 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool29.not.i.3 = icmp eq ptr %58, null
  br i1 %tobool29.not.i.3, label %for.body.i.3.wil_abort_scan_all_vifs.exit_crit_edge, label %if.then30.i.3

for.body.i.3.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

if.then30.i.3:                                    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %58, i1 noundef zeroext false) #12
  br label %wil_abort_scan_all_vifs.exit

wil_abort_scan_all_vifs.exit:                     ; preds = %if.then30.i.3, %for.body.i.3.wil_abort_scan_all_vifs.exit_crit_edge, %if.end32.i.2.wil_abort_scan_all_vifs.exit_crit_edge, %if.end32.i.1.wil_abort_scan_all_vifs.exit_crit_edge, %if.end32.i.wil_abort_scan_all_vifs.exit_crit_edge, %if.end.i.wil_abort_scan_all_vifs.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #12
  %59 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %max_vifs.i, align 4
  %61 = tail call i8 @llvm.umin.i8(i8 %60, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp157519.not = icmp eq i8 %61, 0
  br i1 %cmp157519.not, label %wil_abort_scan_all_vifs.exit.wil_bcast_fini_all.exit_crit_edge, label %wil_abort_scan_all_vifs.exit.for.body_crit_edge

wil_abort_scan_all_vifs.exit.for.body_crit_edge:  ; preds = %wil_abort_scan_all_vifs.exit
  br label %for.body

wil_abort_scan_all_vifs.exit.wil_bcast_fini_all.exit_crit_edge: ; preds = %wil_abort_scan_all_vifs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %wil_abort_scan_all_vifs.exit.for.body_crit_edge
  %i.0520 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %wil_abort_scan_all_vifs.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %i.0520
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %tobool159.not = icmp eq ptr %63, null
  br i1 %tobool159.not, label %for.body.for.inc_crit_edge, label %if.then160

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then160:                                       ; preds = %for.body
  %disconnect_worker = getelementptr inbounds %struct.wil6210_vif, ptr %63, i32 0, i32 27
  %call161 = tail call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_worker) #12
  %wil1.i = getelementptr inbounds %struct.wil6210_vif, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %wil1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wil1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_disconnect.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_reset, %if.then.i)) #12
          to label %wil6210_disconnect.exit [label %if.then.i], !srcloc !415

if.then.i:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_disconnect.__UNIQUE_ID_ddebug370, ptr noundef %67, ptr noundef nonnull @.str.40) #12
  br label %wil6210_disconnect.exit

wil6210_disconnect.exit:                          ; preds = %if.then.i, %if.then160
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %65, ptr noundef nonnull @.str.40) #12
  %connect_timer.i = getelementptr inbounds %struct.wil6210_vif, ptr %63, i32 0, i32 26
  %call10.i = tail call i32 @del_timer_sync(ptr noundef %connect_timer.i) #12
  tail call fastcc void @_wil6210_disconnect(ptr noundef nonnull %63, ptr noundef null, i16 noundef zeroext 3) #12
  %ptk_rekey_state = getelementptr inbounds %struct.wil6210_vif, ptr %63, i32 0, i32 37
  %68 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %ptk_rekey_state, align 8
  br label %for.inc

for.inc:                                          ; preds = %wil6210_disconnect.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0520, 1
  %69 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %max_vifs.i, align 4
  %71 = tail call i8 @llvm.umin.i8(i8 %70, i8 4)
  %cond = zext i8 %71 to i32
  %cmp157 = icmp ult i32 %inc, %cond
  br i1 %cmp157, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp211.not.i = icmp eq i8 %71, 0
  br i1 %cmp211.not.i, label %for.end.wil_bcast_fini_all.exit_crit_edge, label %for.body.i467

for.end.wil_bcast_fini_all.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

for.body.i467:                                    ; preds = %for.end
  %arrayidx.i465 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %72 = ptrtoint ptr %arrayidx.i465 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i465, align 4
  %tobool.not.i466 = icmp eq ptr %73, null
  br i1 %tobool.not.i466, label %for.body.i467.for.inc.i_crit_edge, label %if.then.i468

for.body.i467.for.inc.i_crit_edge:                ; preds = %for.body.i467
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i468:                                     ; preds = %for.body.i467
  %bcast_ring.i.i = getelementptr inbounds %struct.wil6210_vif, ptr %73, i32 0, i32 23
  %74 = ptrtoint ptr %bcast_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bcast_ring.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i = icmp slt i32 %75, 0
  br i1 %cmp.i.i, label %if.then.i468.for.inc.i_crit_edge, label %if.end.i.i

if.then.i468.for.inc.i_crit_edge:                 ; preds = %if.then.i468
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i468
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.i = getelementptr inbounds %struct.wil6210_vif, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %wil1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wil1.i.i, align 8
  %78 = ptrtoint ptr %bcast_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %bcast_ring.i.i, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %77, i32 noundef %75) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.then.i468.for.inc.i_crit_edge, %for.body.i467.for.inc.i_crit_edge
  %79 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %max_vifs.i, align 4
  %81 = tail call i8 @llvm.umin.i8(i8 %80, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp2.i = icmp ugt i8 %81, 1
  br i1 %cmp2.i, label %for.body.i467.1, label %for.inc.i.wil_bcast_fini_all.exit_crit_edge

for.inc.i.wil_bcast_fini_all.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

for.body.i467.1:                                  ; preds = %for.inc.i
  %arrayidx.i465.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %82 = ptrtoint ptr %arrayidx.i465.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i465.1, align 4
  %tobool.not.i466.1 = icmp eq ptr %83, null
  br i1 %tobool.not.i466.1, label %for.body.i467.1.for.inc.i.1_crit_edge, label %if.then.i468.1

for.body.i467.1.for.inc.i.1_crit_edge:            ; preds = %for.body.i467.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.1

if.then.i468.1:                                   ; preds = %for.body.i467.1
  %bcast_ring.i.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %bcast_ring.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bcast_ring.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i.1 = icmp slt i32 %85, 0
  br i1 %cmp.i.i.1, label %if.then.i468.1.for.inc.i.1_crit_edge, label %if.end.i.i.1

if.then.i468.1.for.inc.i.1_crit_edge:             ; preds = %if.then.i468.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.1

if.end.i.i.1:                                     ; preds = %if.then.i468.1
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %wil1.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wil1.i.i.1, align 8
  %88 = ptrtoint ptr %bcast_ring.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %bcast_ring.i.i.1, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %87, i32 noundef %85) #12
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end.i.i.1, %if.then.i468.1.for.inc.i.1_crit_edge, %for.body.i467.1.for.inc.i.1_crit_edge
  %89 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %max_vifs.i, align 4
  %91 = tail call i8 @llvm.umin.i8(i8 %90, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp2.i.1 = icmp ugt i8 %91, 2
  br i1 %cmp2.i.1, label %for.body.i467.2, label %for.inc.i.1.wil_bcast_fini_all.exit_crit_edge

for.inc.i.1.wil_bcast_fini_all.exit_crit_edge:    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

for.body.i467.2:                                  ; preds = %for.inc.i.1
  %arrayidx.i465.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %92 = ptrtoint ptr %arrayidx.i465.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i465.2, align 4
  %tobool.not.i466.2 = icmp eq ptr %93, null
  br i1 %tobool.not.i466.2, label %for.body.i467.2.for.inc.i.2_crit_edge, label %if.then.i468.2

for.body.i467.2.for.inc.i.2_crit_edge:            ; preds = %for.body.i467.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.2

if.then.i468.2:                                   ; preds = %for.body.i467.2
  %bcast_ring.i.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %93, i32 0, i32 23
  %94 = ptrtoint ptr %bcast_ring.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bcast_ring.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.2 = icmp slt i32 %95, 0
  br i1 %cmp.i.i.2, label %if.then.i468.2.for.inc.i.2_crit_edge, label %if.end.i.i.2

if.then.i468.2.for.inc.i.2_crit_edge:             ; preds = %if.then.i468.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.2

if.end.i.i.2:                                     ; preds = %if.then.i468.2
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %wil1.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wil1.i.i.2, align 8
  %98 = ptrtoint ptr %bcast_ring.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %bcast_ring.i.i.2, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %97, i32 noundef %95) #12
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.end.i.i.2, %if.then.i468.2.for.inc.i.2_crit_edge, %for.body.i467.2.for.inc.i.2_crit_edge
  %99 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %max_vifs.i, align 4
  %101 = tail call i8 @llvm.umin.i8(i8 %100, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %101)
  %cmp2.i.2 = icmp ugt i8 %101, 3
  br i1 %cmp2.i.2, label %for.body.i467.3, label %for.inc.i.2.wil_bcast_fini_all.exit_crit_edge

for.inc.i.2.wil_bcast_fini_all.exit_crit_edge:    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

for.body.i467.3:                                  ; preds = %for.inc.i.2
  %arrayidx.i465.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %102 = ptrtoint ptr %arrayidx.i465.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i465.3, align 4
  %tobool.not.i466.3 = icmp eq ptr %103, null
  br i1 %tobool.not.i466.3, label %for.body.i467.3.wil_bcast_fini_all.exit_crit_edge, label %if.then.i468.3

for.body.i467.3.wil_bcast_fini_all.exit_crit_edge: ; preds = %for.body.i467.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

if.then.i468.3:                                   ; preds = %for.body.i467.3
  %bcast_ring.i.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %103, i32 0, i32 23
  %104 = ptrtoint ptr %bcast_ring.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bcast_ring.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i.i.3 = icmp slt i32 %105, 0
  br i1 %cmp.i.i.3, label %if.then.i468.3.wil_bcast_fini_all.exit_crit_edge, label %if.end.i.i.3

if.then.i468.3.wil_bcast_fini_all.exit_crit_edge: ; preds = %if.then.i468.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_bcast_fini_all.exit

if.end.i.i.3:                                     ; preds = %if.then.i468.3
  call void @__sanitizer_cov_trace_pc() #14
  %wil1.i.i.3 = getelementptr inbounds %struct.wil6210_vif, ptr %103, i32 0, i32 2
  %106 = ptrtoint ptr %wil1.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wil1.i.i.3, align 8
  %108 = ptrtoint ptr %bcast_ring.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %bcast_ring.i.i.3, align 4
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %107, i32 noundef %105) #12
  br label %wil_bcast_fini_all.exit

wil_bcast_fini_all.exit:                          ; preds = %if.end.i.i.3, %if.then.i468.3.wil_bcast_fini_all.exit_crit_edge, %for.body.i467.3.wil_bcast_fini_all.exit_crit_edge, %for.inc.i.2.wil_bcast_fini_all.exit_crit_edge, %for.inc.i.1.wil_bcast_fini_all.exit_crit_edge, %for.inc.i.wil_bcast_fini_all.exit_crit_edge, %for.end.wil_bcast_fini_all.exit_crit_edge, %wil_abort_scan_all_vifs.exit.wil_bcast_fini_all.exit_crit_edge
  %call163 = tail call i32 @wmi_led_cfg(ptr noundef %wil, i1 noundef zeroext false) #12
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  tail call void @down_write(ptr noundef %mem_lock) #12
  %wmi_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %wmi_mutex, i32 noundef 0) #12
  %109 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %status, align 4
  %111 = and i32 %110, 64
  %112 = or i32 %111, 32
  %and4.i = and i32 %112, %110
  store i32 %and4.i, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_reset.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_reset, %if.then189)) #12
          to label %do.end197 [label %if.then189], !srcloc !415

if.then189:                                       ; preds = %wil_bcast_fini_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev190 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %113 = ptrtoint ptr %main_ndev190 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %main_ndev190, align 4
  %115 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %status, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_reset.__UNIQUE_ID_ddebug398, ptr noundef %114, ptr noundef nonnull @.str.61, i32 noundef %116) #12
  br label %do.end197

do.end197:                                        ; preds = %if.then189, %wil_bcast_fini_all.exit
  %117 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %status, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.61, i32 noundef %118) #12
  tail call void @mutex_unlock(ptr noundef %wmi_mutex) #12
  tail call void @wil_mask_irq(ptr noundef %wil) #12
  tail call void @wmi_event_flush(ptr noundef %wil) #12
  %wq_service = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 46
  %119 = ptrtoint ptr %wq_service to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wq_service, align 128
  tail call void @flush_workqueue(ptr noundef %120) #12
  %wmi_wq = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 44
  %121 = ptrtoint ptr %wmi_wq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wmi_wq, align 16
  tail call void @flush_workqueue(ptr noundef %122) #12
  %hw_capa = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 15
  %123 = ptrtoint ptr %hw_capa to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %hw_capa, align 4
  %and1.i459 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i459)
  %tobool205.not = icmp eq i32 %and1.i459, 0
  br i1 %tobool205.not, label %if.then206, label %do.end197.if.end207_crit_edge

do.end197.if.end207_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.then206:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_bl_crash_info(ptr noundef %wil, i1 noundef zeroext false)
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %do.end197.if.end207_crit_edge
  tail call void @wil_disable_irq(ptr noundef %wil) #12
  %call208 = tail call fastcc i32 @wil_target_reset(ptr noundef %wil, i32 noundef %and1.i459)
  tail call void @wil6210_clear_irq(ptr noundef %wil) #12
  tail call void @wil_enable_irq(ptr noundef %wil) #12
  %txrx_ops = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68
  %rx_fini = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 12
  %125 = ptrtoint ptr %rx_fini to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_fini, align 16
  tail call void %126(ptr noundef %wil) #12
  %tx_fini = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 5
  %127 = ptrtoint ptr %tx_fini to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx_fini, align 4
  tail call void %128(ptr noundef %wil) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool210.not = icmp eq i32 %call208, 0
  br i1 %tobool210.not, label %if.end215, label %if.then211

if.then211:                                       ; preds = %if.end207
  br i1 %tobool205.not, label %if.then213, label %if.then211.out_crit_edge

if.then211.out_crit_edge:                         ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then213:                                       ; preds = %if.then211
  %csr.i.i471 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %129 = ptrtoint ptr %csr.i.i471 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %csr.i.i471, align 4
  %add.ptr.i.i472 = getelementptr i8, ptr %130, i32 2624
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i472) #12, !srcloc !412
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp.i = icmp ult i32 %132, 2
  br i1 %cmp.i, label %if.then213.out_crit_edge, label %if.end.i473

if.then213.out_crit_edge:                         ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i473:                                      ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %csr.i.i471 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %csr.i.i471, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %134, i32 2648
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #12, !srcloc !412
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %137 = ptrtoint ptr %csr.i.i471 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %csr.i.i471, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %138, i32 2652
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #12, !srcloc !412
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %141 = ptrtoint ptr %csr.i.i471 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %csr.i.i471, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %142, i32 2744
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #12, !srcloc !412
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.wil_bl_crash_info, i32 noundef %136, i32 noundef %140, i32 noundef %144) #12
  br label %out

if.end215:                                        ; preds = %if.end207
  %main_ndev.i478 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %145 = ptrtoint ptr %main_ndev.i478 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %main_ndev.i478, align 4
  %wiphy1.i479 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %147 = ptrtoint ptr %wiphy1.i479 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wiphy1.i479, align 8
  br i1 %tobool205.not, label %if.else, label %if.then217

if.then217:                                       ; preds = %if.end215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac.i) #12
  %149 = getelementptr inbounds [8 x i8], ptr %mac.i, i32 0, i32 4
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %150 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %151, i32 131892
  %incdec.ptr.i.i = getelementptr i8, ptr %151, i32 131896
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12
  %153 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %mac.i, align 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i) #12, !srcloc !412
  %155 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %149, align 4
  %156 = and i32 %152, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i.not.i.i = icmp eq i32 %156, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then217.if.else.i_crit_edge

if.then217.if.else.i_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

is_valid_ether_addr.exit.i:                       ; preds = %if.then217
  %157 = ptrtoint ptr %149 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %149, align 4
  %conv.i.i.i = zext i16 %158 to i32
  %or.i.i.i = or i32 %152, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.else.i_crit_edge, label %if.then.i475

is_valid_ether_addr.exit.i.if.else.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i475:                                     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.wil_get_otp_info, ptr noundef nonnull %mac.i) #12
  br label %if.end10.i

if.else.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.else.i_crit_edge, %if.then217.if.else.i_crit_edge
  %159 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %160)
  %cmp.i476 = icmp ugt i32 %160, 3
  %..i = select i1 %cmp.i476, i32 131844, i32 132640
  %161 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %csr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %162, i32 %..i
  %incdec.ptr.i41.i = getelementptr i32, ptr %add.ptr9.i, i32 1
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #12, !srcloc !412
  %164 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %mac.i, align 4
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i41.i) #12, !srcloc !412
  %166 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %149, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then.i475
  %167 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mac.i, align 4
  %169 = and i32 %168, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.i.not.i50.i = icmp eq i32 %169, 0
  br i1 %tobool.i.not.i50.i, label %is_valid_ether_addr.exit56.i, label %if.end10.i.if.then13.i_crit_edge

if.end10.i.if.then13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

is_valid_ether_addr.exit56.i:                     ; preds = %if.end10.i
  %170 = ptrtoint ptr %149 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %149, align 4
  %conv.i.i52.i = zext i16 %171 to i32
  %or.i.i53.i = or i32 %168, %conv.i.i52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i53.i)
  %cmp.i.i54.not.i = icmp eq i32 %or.i.i53.i, 0
  br i1 %cmp.i.i54.not.i, label %is_valid_ether_addr.exit56.i.if.then13.i_crit_edge, label %if.end15.i

is_valid_ether_addr.exit56.i.if.then13.i_crit_edge: ; preds = %is_valid_ether_addr.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

if.then13.i:                                      ; preds = %is_valid_ether_addr.exit56.i.if.then13.i_crit_edge, %if.end10.i.if.then13.i_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.wil_get_otp_info, ptr noundef nonnull %mac.i) #12
  br label %wil_get_otp_info.exit

if.end15.i:                                       ; preds = %is_valid_ether_addr.exit56.i
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 54
  %172 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %168, ptr %perm_addr.i, align 4
  %add.ptr1.i.i = getelementptr %struct.net_device, ptr %146, i32 0, i32 54, i32 4
  %173 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %171, ptr %add.ptr1.i.i, align 2
  %perm_addr18.i = getelementptr inbounds %struct.wiphy, ptr %148, i32 0, i32 1
  %174 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mac.i, align 4
  %176 = ptrtoint ptr %perm_addr18.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %perm_addr18.i, align 4
  %177 = ptrtoint ptr %149 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %149, align 4
  %add.ptr1.i58.i = getelementptr %struct.wiphy, ptr %148, i32 0, i32 1, i32 4
  %179 = ptrtoint ptr %add.ptr1.i58.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %add.ptr1.i58.i, align 2
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 86
  %180 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_addr.i, align 64
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %184 = and i32 %183, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.i.not.i59.i = icmp eq i32 %184, 0
  br i1 %tobool.i.not.i59.i, label %is_valid_ether_addr.exit65.i, label %if.end15.i.if.then22.i_crit_edge

if.end15.i.if.then22.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

is_valid_ether_addr.exit65.i:                     ; preds = %if.end15.i
  %add.ptr.i.i60.i = getelementptr i8, ptr %181, i32 4
  %185 = ptrtoint ptr %add.ptr.i.i60.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %add.ptr.i.i60.i, align 2
  %conv.i.i61.i = zext i16 %186 to i32
  %or.i.i62.i = or i32 %183, %conv.i.i61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i62.i)
  %cmp.i.i63.not.i = icmp eq i32 %or.i.i62.i, 0
  br i1 %cmp.i.i63.not.i, label %is_valid_ether_addr.exit65.i.if.then22.i_crit_edge, label %is_valid_ether_addr.exit65.i.wil_get_otp_info.exit_crit_edge

is_valid_ether_addr.exit65.i.wil_get_otp_info.exit_crit_edge: ; preds = %is_valid_ether_addr.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_get_otp_info.exit

is_valid_ether_addr.exit65.i.if.then22.i_crit_edge: ; preds = %is_valid_ether_addr.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

if.then22.i:                                      ; preds = %is_valid_ether_addr.exit65.i.if.then22.i_crit_edge, %if.end15.i.if.then22.i_crit_edge
  call void @dev_addr_mod(ptr noundef %146, i32 noundef 0, ptr noundef nonnull %mac.i, i32 noundef 6) #12
  br label %wil_get_otp_info.exit

wil_get_otp_info.exit:                            ; preds = %if.then22.i, %is_valid_ether_addr.exit65.i.wil_get_otp_info.exit_crit_edge, %if.then13.i
  %retval.0.i477 = phi i32 [ -22, %if.then13.i ], [ 0, %if.then22.i ], [ 0, %is_valid_ether_addr.exit65.i.wil_get_otp_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac.i) #12
  br label %if.end226

if.else:                                          ; preds = %if.end215
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bl.i) #12
  %csr.i480 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %187 = ptrtoint ptr %csr.i480 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %csr.i480, align 4
  %add.ptr.i481 = getelementptr i8, ptr %188, i32 2620
  %incdec.ptr.i.i482 = getelementptr i8, ptr %188, i32 2624
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i481) #12, !srcloc !412
  %incdec.ptr1.i.i = getelementptr inbounds i32, ptr %bl.i, i32 1
  %190 = ptrtoint ptr %bl.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %bl.i, align 4
  %incdec.ptr.i.1.i = getelementptr i8, ptr %188, i32 2628
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i482) #12, !srcloc !412
  %incdec.ptr1.i.1.i = getelementptr inbounds i32, ptr %bl.i, i32 2
  %192 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %incdec.ptr1.i.i, align 4
  %incdec.ptr.i.2.i = getelementptr i8, ptr %188, i32 2632
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.1.i) #12, !srcloc !412
  %incdec.ptr1.i.2.i = getelementptr inbounds i32, ptr %bl.i, i32 3
  %194 = ptrtoint ptr %incdec.ptr1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %incdec.ptr1.i.1.i, align 4
  %incdec.ptr.i.3.i = getelementptr i8, ptr %188, i32 2636
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.2.i) #12, !srcloc !412
  %incdec.ptr1.i.3.i = getelementptr inbounds i32, ptr %bl.i, i32 4
  %196 = ptrtoint ptr %incdec.ptr1.i.2.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %incdec.ptr1.i.2.i, align 4
  %incdec.ptr.i.4.i = getelementptr i8, ptr %188, i32 2640
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.3.i) #12, !srcloc !412
  %incdec.ptr1.i.4.i = getelementptr inbounds i32, ptr %bl.i, i32 5
  %198 = ptrtoint ptr %incdec.ptr1.i.3.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %incdec.ptr1.i.3.i, align 4
  %incdec.ptr.i.5.i = getelementptr i8, ptr %188, i32 2644
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.4.i) #12, !srcloc !412
  %incdec.ptr1.i.5.i = getelementptr inbounds i32, ptr %bl.i, i32 6
  %200 = ptrtoint ptr %incdec.ptr1.i.4.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %incdec.ptr1.i.4.i, align 4
  %incdec.ptr.i.6.i = getelementptr i8, ptr %188, i32 2648
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.5.i) #12, !srcloc !412
  %incdec.ptr1.i.6.i = getelementptr inbounds i32, ptr %bl.i, i32 7
  %202 = ptrtoint ptr %incdec.ptr1.i.5.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %incdec.ptr1.i.5.i, align 4
  %incdec.ptr.i.7.i = getelementptr i8, ptr %188, i32 2652
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.6.i) #12, !srcloc !412
  %incdec.ptr1.i.7.i = getelementptr inbounds i32, ptr %bl.i, i32 8
  %204 = ptrtoint ptr %incdec.ptr1.i.6.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %incdec.ptr1.i.6.i, align 4
  %incdec.ptr.i.8.i = getelementptr i8, ptr %188, i32 2656
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.7.i) #12, !srcloc !412
  %incdec.ptr1.i.8.i = getelementptr inbounds i32, ptr %bl.i, i32 9
  %206 = ptrtoint ptr %incdec.ptr1.i.7.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %incdec.ptr1.i.7.i, align 4
  %incdec.ptr.i.9.i = getelementptr i8, ptr %188, i32 2660
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.8.i) #12, !srcloc !412
  %incdec.ptr1.i.9.i = getelementptr inbounds i32, ptr %bl.i, i32 10
  %208 = ptrtoint ptr %incdec.ptr1.i.8.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %incdec.ptr1.i.8.i, align 4
  %incdec.ptr.i.10.i = getelementptr i8, ptr %188, i32 2664
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.9.i) #12, !srcloc !412
  %incdec.ptr1.i.10.i = getelementptr inbounds i32, ptr %bl.i, i32 11
  %210 = ptrtoint ptr %incdec.ptr1.i.9.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %incdec.ptr1.i.9.i, align 4
  %incdec.ptr.i.11.i = getelementptr i8, ptr %188, i32 2668
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.10.i) #12, !srcloc !412
  %incdec.ptr1.i.11.i = getelementptr inbounds i32, ptr %bl.i, i32 12
  %212 = ptrtoint ptr %incdec.ptr1.i.10.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %incdec.ptr1.i.10.i, align 4
  %incdec.ptr.i.12.i = getelementptr i8, ptr %188, i32 2672
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.11.i) #12, !srcloc !412
  %incdec.ptr1.i.12.i = getelementptr inbounds i32, ptr %bl.i, i32 13
  %214 = ptrtoint ptr %incdec.ptr1.i.11.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %incdec.ptr1.i.11.i, align 4
  %incdec.ptr.i.13.i = getelementptr i8, ptr %188, i32 2676
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.12.i) #12, !srcloc !412
  %incdec.ptr1.i.13.i = getelementptr inbounds i32, ptr %bl.i, i32 14
  %216 = ptrtoint ptr %incdec.ptr1.i.12.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %incdec.ptr1.i.12.i, align 4
  %incdec.ptr.i.14.i = getelementptr i8, ptr %188, i32 2680
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.13.i) #12, !srcloc !412
  %incdec.ptr1.i.14.i = getelementptr inbounds i32, ptr %bl.i, i32 15
  %218 = ptrtoint ptr %incdec.ptr1.i.13.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %incdec.ptr1.i.13.i, align 4
  %incdec.ptr.i.15.i = getelementptr i8, ptr %188, i32 2684
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.14.i) #12, !srcloc !412
  %incdec.ptr1.i.15.i = getelementptr inbounds i32, ptr %bl.i, i32 16
  %220 = ptrtoint ptr %incdec.ptr1.i.14.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %incdec.ptr1.i.14.i, align 4
  %incdec.ptr.i.16.i = getelementptr i8, ptr %188, i32 2688
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.15.i) #12, !srcloc !412
  %incdec.ptr1.i.16.i = getelementptr inbounds i32, ptr %bl.i, i32 17
  %222 = ptrtoint ptr %incdec.ptr1.i.15.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %incdec.ptr1.i.15.i, align 4
  %incdec.ptr.i.17.i = getelementptr i8, ptr %188, i32 2692
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.16.i) #12, !srcloc !412
  %incdec.ptr1.i.17.i = getelementptr inbounds i32, ptr %bl.i, i32 18
  %224 = ptrtoint ptr %incdec.ptr1.i.16.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %incdec.ptr1.i.16.i, align 4
  %incdec.ptr.i.18.i = getelementptr i8, ptr %188, i32 2696
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.17.i) #12, !srcloc !412
  %incdec.ptr1.i.18.i = getelementptr inbounds i32, ptr %bl.i, i32 19
  %226 = ptrtoint ptr %incdec.ptr1.i.17.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %incdec.ptr1.i.17.i, align 4
  %incdec.ptr.i.19.i = getelementptr i8, ptr %188, i32 2700
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.18.i) #12, !srcloc !412
  %incdec.ptr1.i.19.i = getelementptr inbounds i32, ptr %bl.i, i32 20
  %228 = ptrtoint ptr %incdec.ptr1.i.18.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %incdec.ptr1.i.18.i, align 4
  %incdec.ptr.i.20.i = getelementptr i8, ptr %188, i32 2704
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.19.i) #12, !srcloc !412
  %incdec.ptr1.i.20.i = getelementptr inbounds i32, ptr %bl.i, i32 21
  %230 = ptrtoint ptr %incdec.ptr1.i.19.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %incdec.ptr1.i.19.i, align 4
  %incdec.ptr.i.21.i = getelementptr i8, ptr %188, i32 2708
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.20.i) #12, !srcloc !412
  %incdec.ptr1.i.21.i = getelementptr inbounds i32, ptr %bl.i, i32 22
  %232 = ptrtoint ptr %incdec.ptr1.i.20.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %incdec.ptr1.i.20.i, align 4
  %incdec.ptr.i.22.i = getelementptr i8, ptr %188, i32 2712
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.21.i) #12, !srcloc !412
  %incdec.ptr1.i.22.i = getelementptr inbounds i32, ptr %bl.i, i32 23
  %234 = ptrtoint ptr %incdec.ptr1.i.21.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %incdec.ptr1.i.21.i, align 4
  %incdec.ptr.i.23.i = getelementptr i8, ptr %188, i32 2716
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.22.i) #12, !srcloc !412
  %incdec.ptr1.i.23.i = getelementptr inbounds i32, ptr %bl.i, i32 24
  %236 = ptrtoint ptr %incdec.ptr1.i.22.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %incdec.ptr1.i.22.i, align 4
  %incdec.ptr.i.24.i = getelementptr i8, ptr %188, i32 2720
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.23.i) #12, !srcloc !412
  %incdec.ptr1.i.24.i = getelementptr inbounds i32, ptr %bl.i, i32 25
  %238 = ptrtoint ptr %incdec.ptr1.i.23.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %incdec.ptr1.i.23.i, align 4
  %incdec.ptr.i.25.i = getelementptr i8, ptr %188, i32 2724
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.24.i) #12, !srcloc !412
  %incdec.ptr1.i.25.i = getelementptr inbounds i32, ptr %bl.i, i32 26
  %240 = ptrtoint ptr %incdec.ptr1.i.24.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %incdec.ptr1.i.24.i, align 4
  %incdec.ptr.i.26.i = getelementptr i8, ptr %188, i32 2728
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.25.i) #12, !srcloc !412
  %incdec.ptr1.i.26.i = getelementptr inbounds i32, ptr %bl.i, i32 27
  %242 = ptrtoint ptr %incdec.ptr1.i.25.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %incdec.ptr1.i.25.i, align 4
  %incdec.ptr.i.27.i = getelementptr i8, ptr %188, i32 2732
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.26.i) #12, !srcloc !412
  %incdec.ptr1.i.27.i = getelementptr inbounds i32, ptr %bl.i, i32 28
  %244 = ptrtoint ptr %incdec.ptr1.i.26.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %incdec.ptr1.i.26.i, align 4
  %incdec.ptr.i.28.i = getelementptr i8, ptr %188, i32 2736
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.27.i) #12, !srcloc !412
  %incdec.ptr1.i.28.i = getelementptr inbounds i32, ptr %bl.i, i32 29
  %246 = ptrtoint ptr %incdec.ptr1.i.27.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %incdec.ptr1.i.27.i, align 4
  %incdec.ptr.i.29.i = getelementptr i8, ptr %188, i32 2740
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.28.i) #12, !srcloc !412
  %incdec.ptr1.i.29.i = getelementptr inbounds i32, ptr %bl.i, i32 30
  %248 = ptrtoint ptr %incdec.ptr1.i.28.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %incdec.ptr1.i.28.i, align 4
  %incdec.ptr.i.30.i = getelementptr i8, ptr %188, i32 2744
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.29.i) #12, !srcloc !412
  %incdec.ptr1.i.30.i = getelementptr inbounds i32, ptr %bl.i, i32 31
  %250 = ptrtoint ptr %incdec.ptr1.i.29.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %incdec.ptr1.i.29.i, align 4
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.30.i) #12, !srcloc !412
  %252 = ptrtoint ptr %incdec.ptr1.i.30.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %incdec.ptr1.i.30.i, align 4
  %253 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %incdec.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp.i483 = icmp eq i32 %254, 0
  br i1 %cmp.i483, label %if.then.i484, label %if.else.i485

if.then.i484:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %255 = ptrtoint ptr %incdec.ptr1.i.1.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %incdec.ptr1.i.1.i, align 4
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #12
  %258 = ptrtoint ptr %incdec.ptr1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %incdec.ptr1.i.1.i, align 4
  %259 = ptrtoint ptr %incdec.ptr1.i.2.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %incdec.ptr1.i.2.i, align 4
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #12
  %262 = ptrtoint ptr %incdec.ptr1.i.2.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %incdec.ptr1.i.2.i, align 4
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.wil_get_bl_info, i32 noundef 0, ptr noundef %incdec.ptr1.i.3.i, i32 noundef %257, i32 noundef %261) #12
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.wil_get_bl_info) #12
  br label %if.end.i487

if.else.i485:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %263 = tail call i32 @llvm.bswap.i32(i32 %254) #12
  %264 = ptrtoint ptr %incdec.ptr1.i.1.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %incdec.ptr1.i.1.i, align 4
  %266 = tail call i16 @llvm.bswap.i16(i16 %265) #12
  %267 = ptrtoint ptr %incdec.ptr1.i.1.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %266, ptr %incdec.ptr1.i.1.i, align 4
  %rf_status5.i = getelementptr inbounds %struct.bl_dedicated_registers_v1, ptr %bl.i, i32 0, i32 3
  %268 = ptrtoint ptr %rf_status5.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %rf_status5.i, align 2
  %270 = tail call i16 @llvm.bswap.i16(i16 %269) #12
  %271 = ptrtoint ptr %incdec.ptr1.i.2.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %incdec.ptr1.i.2.i, align 4
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #12
  %274 = ptrtoint ptr %incdec.ptr1.i.2.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %incdec.ptr1.i.2.i, align 4
  %275 = ptrtoint ptr %incdec.ptr1.i.5.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %incdec.ptr1.i.5.i, align 4
  %277 = tail call i16 @llvm.bswap.i16(i16 %276) #12
  %278 = ptrtoint ptr %incdec.ptr1.i.5.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %incdec.ptr1.i.5.i, align 4
  %bl_version_build.i = getelementptr inbounds %struct.bl_dedicated_registers_v1, ptr %bl.i, i32 0, i32 9
  %279 = ptrtoint ptr %bl_version_build.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %bl_version_build.i, align 2
  %281 = tail call i16 @llvm.bswap.i16(i16 %280) #12
  %282 = ptrtoint ptr %bl_version_build.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %bl_version_build.i, align 2
  %conv.i = zext i16 %266 to i32
  %conv8.i = zext i16 %270 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.137, ptr noundef nonnull @__func__.wil_get_bl_info, i32 noundef %263, ptr noundef %incdec.ptr1.i.3.i, i32 noundef %conv.i, i32 noundef %conv8.i, i32 noundef %273) #12
  %bl_version_major.i = getelementptr inbounds %struct.bl_dedicated_registers_v1, ptr %bl.i, i32 0, i32 6
  %283 = ptrtoint ptr %bl_version_major.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %bl_version_major.i, align 2
  %conv10.i = zext i8 %284 to i32
  %bl_version_minor.i = getelementptr inbounds %struct.bl_dedicated_registers_v1, ptr %bl.i, i32 0, i32 7
  %285 = ptrtoint ptr %bl_version_minor.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %bl_version_minor.i, align 1
  %conv11.i = zext i8 %286 to i32
  %287 = ptrtoint ptr %incdec.ptr1.i.5.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %incdec.ptr1.i.5.i, align 4
  %conv13.i = zext i16 %288 to i32
  %289 = ptrtoint ptr %bl_version_build.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %bl_version_build.i, align 2
  %conv15.i = zext i16 %290 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.wil_get_bl_info, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i) #12
  br label %if.end.i487

if.end.i487:                                      ; preds = %if.else.i485, %if.then.i484
  %rf_status.0.i = phi i16 [ 0, %if.then.i484 ], [ %270, %if.else.i485 ]
  %291 = ptrtoint ptr %incdec.ptr1.i.3.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %incdec.ptr1.i.3.i, align 4
  %293 = and i32 %292, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool.i.not.i.i486 = icmp eq i32 %293, 0
  br i1 %tobool.i.not.i.i486, label %is_valid_ether_addr.exit.i491, label %if.end.i487.if.then16.i_crit_edge

if.end.i487.if.then16.i_crit_edge:                ; preds = %if.end.i487
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

is_valid_ether_addr.exit.i491:                    ; preds = %if.end.i487
  %294 = ptrtoint ptr %incdec.ptr1.i.4.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %incdec.ptr1.i.4.i, align 4
  %conv.i.i.i488 = zext i16 %295 to i32
  %or.i.i.i489 = or i32 %292, %conv.i.i.i488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i489)
  %cmp.i.i.not.i490 = icmp eq i32 %or.i.i.i489, 0
  br i1 %cmp.i.i.not.i490, label %is_valid_ether_addr.exit.i491.if.then16.i_crit_edge, label %if.end17.i

is_valid_ether_addr.exit.i491.if.then16.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i491
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

if.then16.i:                                      ; preds = %is_valid_ether_addr.exit.i491.if.then16.i_crit_edge, %if.end.i487.if.then16.i_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.wil_get_bl_info, ptr noundef %incdec.ptr1.i.3.i) #12
  br label %wil_get_bl_info.exit.thread

if.end17.i:                                       ; preds = %is_valid_ether_addr.exit.i491
  %perm_addr.i492 = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 54
  %296 = ptrtoint ptr %perm_addr.i492 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %292, ptr %perm_addr.i492, align 4
  %add.ptr1.i.i493 = getelementptr %struct.net_device, ptr %146, i32 0, i32 54, i32 4
  %297 = ptrtoint ptr %add.ptr1.i.i493 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %295, ptr %add.ptr1.i.i493, align 2
  %perm_addr19.i = getelementptr inbounds %struct.wiphy, ptr %148, i32 0, i32 1
  %298 = ptrtoint ptr %incdec.ptr1.i.3.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %incdec.ptr1.i.3.i, align 4
  %300 = ptrtoint ptr %perm_addr19.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %perm_addr19.i, align 4
  %301 = ptrtoint ptr %incdec.ptr1.i.4.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %incdec.ptr1.i.4.i, align 4
  %add.ptr1.i53.i = getelementptr %struct.wiphy, ptr %148, i32 0, i32 1, i32 4
  %303 = ptrtoint ptr %add.ptr1.i53.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %add.ptr1.i53.i, align 2
  %dev_addr.i494 = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 86
  %304 = ptrtoint ptr %dev_addr.i494 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev_addr.i494, align 64
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %305, align 4
  %308 = and i32 %307, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool.i.not.i54.i = icmp eq i32 %308, 0
  br i1 %tobool.i.not.i54.i, label %is_valid_ether_addr.exit60.i, label %if.end17.i.if.then22.i495_crit_edge

if.end17.i.if.then22.i495_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i495

is_valid_ether_addr.exit60.i:                     ; preds = %if.end17.i
  %add.ptr.i.i55.i = getelementptr i8, ptr %305, i32 4
  %309 = ptrtoint ptr %add.ptr.i.i55.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %add.ptr.i.i55.i, align 2
  %conv.i.i56.i = zext i16 %310 to i32
  %or.i.i57.i = or i32 %307, %conv.i.i56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i57.i)
  %cmp.i.i58.not.i = icmp eq i32 %or.i.i57.i, 0
  br i1 %cmp.i.i58.not.i, label %is_valid_ether_addr.exit60.i.if.then22.i495_crit_edge, label %is_valid_ether_addr.exit60.i.if.end23.i_crit_edge

is_valid_ether_addr.exit60.i.if.end23.i_crit_edge: ; preds = %is_valid_ether_addr.exit60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

is_valid_ether_addr.exit60.i.if.then22.i495_crit_edge: ; preds = %is_valid_ether_addr.exit60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i495

if.then22.i495:                                   ; preds = %is_valid_ether_addr.exit60.i.if.then22.i495_crit_edge, %if.end17.i.if.then22.i495_crit_edge
  call void @dev_addr_mod(ptr noundef %146, i32 noundef 0, ptr noundef %incdec.ptr1.i.3.i, i32 noundef 6) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i495, %is_valid_ether_addr.exit60.i.if.end23.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rf_status.0.i)
  %tobool.not.i496 = icmp eq i16 %rf_status.0.i, 0
  br i1 %tobool.not.i496, label %if.end23.i.wil_get_bl_info.exit.thread_crit_edge, label %311

if.end23.i.wil_get_bl_info.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_get_bl_info.exit.thread

wil_get_bl_info.exit.thread:                      ; preds = %if.end23.i.wil_get_bl_info.exit.thread_crit_edge, %if.then16.i
  %retval.0.i497.ph = phi i32 [ 0, %if.end23.i.wil_get_bl_info.exit.thread_crit_edge ], [ -22, %if.then16.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bl.i) #12
  br label %if.end226

311:                                              ; preds = %if.end23.i
  %conv25.i = zext i16 %rf_status.0.i to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.wil_get_bl_info, i32 noundef %conv25.i) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bl.i) #12
  br i1 %load_fw, label %.out_crit_edge, label %.if.end229_crit_edge

.if.end229_crit_edge:                             ; preds = %311
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end229

.out_crit_edge:                                   ; preds = %311
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end226:                                        ; preds = %wil_get_bl_info.exit.thread, %wil_get_otp_info.exit
  %rc.0 = phi i32 [ %retval.0.i477, %wil_get_otp_info.exit ], [ %retval.0.i497.ph, %wil_get_bl_info.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool227.not = icmp eq i32 %rc.0, 0
  br i1 %tobool227.not, label %if.end226.if.end229_crit_edge, label %if.end226.out_crit_edge

if.end226.out_crit_edge:                          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end226.if.end229_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end229

if.end229:                                        ; preds = %if.end226.if.end229_crit_edge, %.if.end229_crit_edge
  %312 = load i8, ptr @oob_mode, align 1
  %conv.i498 = zext i8 %312 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.wil_set_oob_mode, i32 noundef %conv.i498) #12
  %313 = zext i8 %312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %312, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
    i8 2, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  %csr.i.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %314 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i.i.i499 = getelementptr i8, ptr %315, i32 24
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i499) #12, !srcloc !412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %317 = and i32 %316, -193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  call void @arm_heavy_mb() #12
  %318 = ptrtoint ptr %csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %csr.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %319, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %317) #12, !srcloc !414
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  call void @arm_heavy_mb() #12
  br label %wil_set_oob_mode.exit

sw.bb2.i:                                         ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  %csr.i.i13.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %320 = ptrtoint ptr %csr.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %csr.i.i13.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %321, i32 24
  %322 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i) #12, !srcloc !412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %323 = and i32 %322, -65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  call void @arm_heavy_mb() #12
  %324 = ptrtoint ptr %csr.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %csr.i.i13.i, align 4
  %add.ptr.i5.i16.i = getelementptr i8, ptr %325, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i16.i, i32 %323) #12, !srcloc !414
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  call void @arm_heavy_mb() #12
  %326 = ptrtoint ptr %csr.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %csr.i.i13.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %327, i32 24
  %328 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #12, !srcloc !412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %329 = or i32 %328, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  call void @arm_heavy_mb() #12
  %330 = ptrtoint ptr %csr.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %csr.i.i13.i, align 4
  %add.ptr.i5.i19.i = getelementptr i8, ptr %331, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i19.i, i32 %329) #12, !srcloc !414
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  call void @arm_heavy_mb() #12
  br label %wil_set_oob_mode.exit

sw.bb3.i:                                         ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  %csr.i.i20.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %332 = ptrtoint ptr %csr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %csr.i.i20.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %333, i32 24
  %334 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i) #12, !srcloc !412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %335 = and i32 %334, -129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  call void @arm_heavy_mb() #12
  %336 = ptrtoint ptr %csr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %csr.i.i20.i, align 4
  %add.ptr.i5.i23.i = getelementptr i8, ptr %337, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i23.i, i32 %335) #12, !srcloc !414
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  call void @arm_heavy_mb() #12
  %338 = ptrtoint ptr %csr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %csr.i.i20.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %339, i32 24
  %340 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i) #12, !srcloc !412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %341 = or i32 %340, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  call void @arm_heavy_mb() #12
  %342 = ptrtoint ptr %csr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %csr.i.i20.i, align 4
  %add.ptr.i5.i27.i = getelementptr i8, ptr %343, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i27.i, i32 %341) #12, !srcloc !414
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  call void @arm_heavy_mb() #12
  br label %wil_set_oob_mode.exit

sw.default.i:                                     ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.142, ptr noundef nonnull @__func__.wil_set_oob_mode, i32 noundef %conv.i498) #12
  br label %wil_set_oob_mode.exit

wil_set_oob_mode.exit:                            ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  br i1 %load_fw, label %if.then231, label %cleanup305.critedge

if.then231:                                       ; preds = %wil_set_oob_mode.exit
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %board_file) #12
  %344 = getelementptr inbounds i8, ptr %board_file, i32 1
  %345 = call ptr @memset(ptr %344, i32 255, i32 127)
  %secured_boot = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 106
  %346 = ptrtoint ptr %secured_boot to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %secured_boot, align 2, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool232.not = icmp eq i8 %347, 0
  br i1 %tobool232.not, label %if.end235, label %cleanup.thread515

cleanup.thread515:                                ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.56) #12
  call void @up_write(ptr noundef %mem_lock) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %board_file) #12
  br label %cleanup305

if.end235:                                        ; preds = %if.then231
  %348 = ptrtoint ptr %board_file to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 0, ptr %board_file, align 1
  call void @wil_get_board_file(ptr noundef %wil, ptr noundef nonnull %board_file, i32 noundef 128)
  %wil_fw_name = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 11
  %349 = ptrtoint ptr %wil_fw_name to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %wil_fw_name, align 8
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.56, ptr noundef %350, ptr noundef nonnull %board_file) #12
  br i1 %tobool205.not, label %if.then240, label %if.end235.if.end241_crit_edge

if.end235.if.end241_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241

if.then240:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @wil_bl_prepare_halt(ptr noundef %wil)
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end235.if.end241_crit_edge
  call fastcc void @wil_halt_cpu(ptr noundef %wil)
  %fw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 7
  %351 = call ptr @memset(ptr %fw_version, i32 0, i32 32)
  %352 = ptrtoint ptr %wil_fw_name to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %wil_fw_name, align 8
  %call244 = call i32 @wil_request_firmware(ptr noundef %wil, ptr noundef %353, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.end241.cleanup.thread_crit_edge

if.end241.cleanup.thread_crit_edge:               ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end247:                                        ; preds = %if.end241
  %num_of_brd_entries = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 13
  %354 = ptrtoint ptr %num_of_brd_entries to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %num_of_brd_entries, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool248.not = icmp eq i32 %355, 0
  br i1 %tobool248.not, label %if.else252, label %if.then249

if.then249:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  %call251 = call i32 @wil_request_board(ptr noundef %wil, ptr noundef nonnull %board_file) #12
  br label %if.end255

if.else252:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  %call254 = call i32 @wil_request_firmware(ptr noundef %wil, ptr noundef nonnull %board_file, i1 noundef zeroext true) #12
  br label %if.end255

if.end255:                                        ; preds = %if.else252, %if.then249
  %rc.1 = phi i32 [ %call251, %if.then249 ], [ %call254, %if.else252 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool256.not = icmp eq i32 %rc.1, 0
  br i1 %tobool256.not, label %if.then264, label %if.end255.cleanup.thread_crit_edge

if.end255.cleanup.thread_crit_edge:               ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end255.cleanup.thread_crit_edge, %if.end241.cleanup.thread_crit_edge
  %rc.2.ph = phi i32 [ %rc.1, %if.end255.cleanup.thread_crit_edge ], [ %call244, %if.end241.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %board_file) #12
  br label %out

if.then264:                                       ; preds = %if.end255
  call fastcc void @wil_pre_fw_config(ptr noundef %wil)
  call fastcc void @wil_release_cpu(ptr noundef %wil)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %board_file) #12
  %wmi_ready = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 37
  %356 = ptrtoint ptr %wmi_ready to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %wmi_ready, align 4
  %wmi_call = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 38
  %357 = ptrtoint ptr %wmi_call to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %wmi_call, align 4
  %comp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 2
  %358 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 0, ptr %comp, align 4
  call void @_clear_bit(i32 noundef 5, ptr noundef %status) #12
  call void @up_write(ptr noundef %mem_lock) #12
  call void @wil_unmask_irq(ptr noundef %wil) #12
  %call265 = call fastcc i32 @wil_wait_for_fw_ready(ptr noundef %wil)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end268, label %if.then264.cleanup305_crit_edge

if.then264.cleanup305_crit_edge:                  ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup305

if.end268:                                        ; preds = %if.then264
  %call269 = call i32 @wmi_echo(ptr noundef %wil) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.then271

if.then271:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.56, i32 noundef %call269) #12
  br label %cleanup305

if.end272:                                        ; preds = %if.end268
  %359 = ptrtoint ptr %txrx_ops to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %txrx_ops, align 16
  call void %360(ptr noundef %wil) #12
  %361 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %362)
  %cmp275 = icmp ugt i32 %362, 3
  br i1 %cmp275, label %if.then277, label %if.end272.if.end278_crit_edge

if.end272.if.end278_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end278

if.then277:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @wil_s(ptr noundef %wil, i32 noundef 8920428, i32 noundef 128)
  br label %if.end278

if.end278:                                        ; preds = %if.then277, %if.end272.if.end278_crit_edge
  %call279 = call fastcc i32 @wil_restore_vifs(ptr noundef %wil)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end282, label %if.then281

if.then281:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.56, i32 noundef %call279) #12
  br label %cleanup305

if.end282:                                        ; preds = %if.end278
  call fastcc void @wil_collect_fw_info(ptr noundef %wil)
  %ps_profile = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 90
  %363 = ptrtoint ptr %ps_profile to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %ps_profile, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp283.not = icmp eq i32 %364, 0
  br i1 %cmp283.not, label %if.end282.if.end288_crit_edge, label %if.then285

if.end282.if.end288_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

if.then285:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  %call287 = call i32 @wil_ps_update(ptr noundef %wil, i32 noundef %364)
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %if.end282.if.end288_crit_edge
  %365 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %notify, align 4
  %tobool291.not = icmp eq ptr %366, null
  br i1 %tobool291.not, label %if.end288.cleanup305_crit_edge, label %if.then292

if.end288.cleanup305_crit_edge:                   ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup305

if.then292:                                       ; preds = %if.end288
  %platform_handle295 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %367 = ptrtoint ptr %platform_handle295 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %platform_handle295, align 8
  %call296 = call i32 %366(ptr noundef %368, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %if.then292.cleanup305_crit_edge, label %if.then298

if.then292.cleanup305_crit_edge:                  ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup305

if.then298:                                       ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.56, i32 noundef %call296) #12
  br label %cleanup305

out:                                              ; preds = %cleanup.thread, %if.end226.out_crit_edge, %.out_crit_edge, %if.end.i473, %if.then213.out_crit_edge, %if.then211.out_crit_edge
  %rc.5 = phi i32 [ %call208, %if.then211.out_crit_edge ], [ %rc.0, %if.end226.out_crit_edge ], [ %call208, %if.then213.out_crit_edge ], [ %call208, %if.end.i473 ], [ %rc.2.ph, %cleanup.thread ], [ -11, %.out_crit_edge ]
  call void @up_write(ptr noundef %mem_lock) #12
  call void @_clear_bit(i32 noundef 5, ptr noundef %status) #12
  br label %cleanup305

cleanup305.critedge:                              ; preds = %wil_set_oob_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wmi_ready.c = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 37
  %369 = ptrtoint ptr %wmi_ready.c to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 0, ptr %wmi_ready.c, align 4
  %wmi_call.c = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 38
  %370 = ptrtoint ptr %wmi_call.c to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 0, ptr %wmi_call.c, align 4
  %comp.c = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 2
  %371 = ptrtoint ptr %comp.c to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 0, ptr %comp.c, align 4
  call void @_clear_bit(i32 noundef 5, ptr noundef %status) #12
  call void @up_write(ptr noundef %mem_lock) #12
  br label %cleanup305

cleanup305:                                       ; preds = %cleanup305.critedge, %out, %if.then298, %if.then292.cleanup305_crit_edge, %if.end288.cleanup305_crit_edge, %if.then281, %if.then271, %if.then264.cleanup305_crit_edge, %cleanup.thread515, %if.end80.cleanup305_crit_edge, %if.then75
  %retval.1 = phi i32 [ 0, %if.then75 ], [ %rc.5, %out ], [ %call269, %if.then271 ], [ %call279, %if.then281 ], [ -19, %if.end80.cleanup305_crit_edge ], [ %call265, %if.then264.cleanup305_crit_edge ], [ 0, %if.then298 ], [ 0, %if.then292.cleanup305_crit_edge ], [ 0, %if.end288.cleanup305_crit_edge ], [ -524, %cleanup.thread515 ], [ 0, %cleanup305.critedge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_s(ptr nocapture noundef readonly %wil, i32 noundef %reg, i32 noundef %val) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %sub.i = add i32 %reg, -8912896
  %add.ptr.i = getelementptr i8, ptr %1, i32 %sub.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %or = or i32 %3, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %4) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_led_cfg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_bl_crash_info(ptr noundef %wil, i1 noundef zeroext %is_err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2624
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %5, i32 2648
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !412
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %9, i32 2652
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #12, !srcloc !412
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 2744
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #12, !srcloc !412
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  br i1 %is_err, label %if.then4, label %do.body6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.wil_bl_crash_info, i32 noundef %7, i32 noundef %11, i32 noundef %15) #12
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_bl_crash_info.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_bl_crash_info, %if.then12)) #12
          to label %do.end15 [label %if.then12], !srcloc !415

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %16 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_bl_crash_info.__UNIQUE_ID_ddebug386, ptr noundef %17, ptr noundef nonnull @.str.117, i32 noundef %7, i32 noundef %11, i32 noundef %15) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body6
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.117, i32 noundef %7, i32 noundef %11, i32 noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_disable_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_target_reset(ptr noundef %wil, i32 noundef %no_flash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_target_reset.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_target_reset, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %hw_name = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 10
  %2 = ptrtoint ptr %hw_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_target_reset.__UNIQUE_ID_ddebug384, ptr noundef %1, ptr noundef nonnull @.str.119, ptr noundef %3) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %hw_name7 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 10
  %4 = ptrtoint ptr %hw_name7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_name7, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.119, ptr noundef %5) #12
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %6 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ult i32 %7, 3
  br i1 %cmp, label %if.then10, label %do.end6.if.end11_crit_edge

do.end6.if.end11_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %8 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 9820
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %11 = or i32 %10, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %13, i32 9820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %11) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %15, i32 2836
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %17 = or i32 %16, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i99 = getelementptr i8, ptr %19, i32 2836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i99, i32 %17) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %21, i32 2836
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i101) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %23 = or i32 %22, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i103 = getelementptr i8, ptr %25, i32 2836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i103, i32 %23) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %hw_version, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end6.if.end11_crit_edge
  %27 = phi i32 [ %.pr, %if.then10 ], [ %7, %do.end6.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i = icmp ugt i32 %27, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %csr.i.i104 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %28 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i.i104, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i105 = getelementptr i8, ptr %29, i32 262456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i105, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %31, i32 262484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %wil_halt_cpu.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i8.i = getelementptr i8, ptr %29, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %33, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %wil_halt_cpu.exit

wil_halt_cpu.exit:                                ; preds = %if.else.i, %if.then.i
  tail call void @arm_heavy_mb() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_flash)
  %tobool12.not = icmp eq i32 %no_flash, 0
  br i1 %tobool12.not, label %if.then13, label %wil_halt_cpu.exit.if.end14_crit_edge

wil_halt_cpu.exit.if.end14_crit_edge:             ; preds = %wil_halt_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %wil_halt_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 2620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i107 = getelementptr i8, ptr %37, i32 2656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %wil_halt_cpu.exit.if.end14_crit_edge
  %38 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %39, i32 24
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i109) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %41 = and i32 %40, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %42 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i5.i110 = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i110, i32 %41) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %45, i32 44964
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i112) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %47 = or i32 %46, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %48 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i5.i114 = getelementptr i8, ptr %49, i32 44964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i114, i32 %47) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #12
  %50 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i116 = getelementptr i8, ptr %51, i32 45036
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #12, !srcloc !412
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %and = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef %53) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %54 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %55, i32 3152
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %57 = and i32 %56, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i5.i120 = getelementptr i8, ptr %59, i32 3152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i120, i32 %57) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %60 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %61, i32 2748
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %63 = and i32 %62, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i5.i124 = getelementptr i8, ptr %65, i32 2748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i124, i32 %63) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i126 = getelementptr i8, ptr %67, i32 3096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 536362752) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %68 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i128 = getelementptr i8, ptr %69, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 251658240) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp20 = icmp ugt i32 %71, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i130 = getelementptr i8, ptr %73, i32 2828
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 126) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %74 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i132 = getelementptr i8, ptr %75, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 1056964608) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i134 = getelementptr i8, ptr %77, i32 2832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 -268435264) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %78 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i136 = getelementptr i8, ptr %79, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 16705535) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %if.end22

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 254) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %80 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i140 = getelementptr i8, ptr %81, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 1056964608) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i142 = getelementptr i8, ptr %83, i32 2832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 -268435456) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %84 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i144 = getelementptr i8, ptr %85, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 16705535) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %86 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i146 = getelementptr i8, ptr %87, i32 3096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i148 = getelementptr i8, ptr %89, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %90 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i150 = getelementptr i8, ptr %91, i32 2832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %92 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i152 = getelementptr i8, ptr %93, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i154 = getelementptr i8, ptr %95, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i156 = getelementptr i8, ptr %97, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %98 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i158 = getelementptr i8, ptr %99, i32 2832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 50331648) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %100 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i160 = getelementptr i8, ptr %101, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 8388608) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %102 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i162 = getelementptr i8, ptr %103, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 0) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %104 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %cmp24 = icmp eq i32 %105, 4
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call fastcc i32 @wil_wait_device_ready_talyn_mb(ptr noundef %wil)
  br label %if.end29

if.else27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call fastcc i32 @wil_wait_device_ready(ptr noundef %wil, i32 noundef %no_flash)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  %rc.0 = phi i32 [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool30.not = icmp eq i32 %rc.0, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %106 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i.i164 = getelementptr i8, ptr %107, i32 2748
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i164) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %109 = and i32 %108, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %110 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i5.i166 = getelementptr i8, ptr %111, i32 2748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i166, i32 %109) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %112 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %113, i32 7380
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i168) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %115 = or i32 %114, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %116 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i5.i170 = getelementptr i8, ptr %117, i32 7380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i170, i32 %115) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %118 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %119)
  %cmp34 = icmp ugt i32 %119, 3
  %brmerge = or i1 %tobool12.not, %cmp34
  br i1 %brmerge, label %if.end32.cleanup_crit_edge, label %if.then36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %120 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i172 = getelementptr i8, ptr %121, i32 3308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 16778752) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %122 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i174 = getelementptr i8, ptr %123, i32 3312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 654311936) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %124 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i176 = getelementptr i8, ptr %125, i32 3316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 16777216) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %126 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i178 = getelementptr i8, ptr %127, i32 3320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 654311936) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %128 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i180 = getelementptr i8, ptr %129, i32 3324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 50332416) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %130 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i182 = getelementptr i8, ptr %131, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 33554944) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %132 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i184 = getelementptr i8, ptr %133, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 16778752) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i186 = getelementptr i8, ptr %135, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 16778752) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %136 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i188 = getelementptr i8, ptr %137, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 16778752) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %138 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i190 = getelementptr i8, ptr %139, i32 3344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 16778752) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %140 = ptrtoint ptr %csr.i.i104 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %csr.i.i104, align 4
  %add.ptr.i192 = getelementptr i8, ptr %141, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 1459617792) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then17
  %retval.0 = phi i32 [ -62, %if.then17 ], [ %rc.0, %if.end29.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_clear_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_enable_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_bl_prepare_halt(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2624
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body2, label %if.end13

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_bl_prepare_halt.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_bl_prepare_halt, %if.then8)) #12
          to label %do.end10 [label %if.then8], !srcloc !415

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_bl_prepare_halt.__UNIQUE_ID_ddebug376, ptr noundef %4, ptr noundef nonnull @.str.144) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body2
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.144) #12
  br label %cleanup

if.end13:                                         ; preds = %entry
  %5 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %6, i32 2656
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %8 = and i32 %7, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_shutdown_bl(ptr noundef %wil)
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_freeze_bl(ptr noundef %wil)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %do.end10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_halt_cpu(ptr nocapture noundef readonly %wil) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %0 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %3, i32 262456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 262484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %7, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 33554432) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_request_firmware(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_request_board(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_pre_fw_config(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wil_clear_fw_log_addr(ptr noundef %wil)
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void @wil6210_clear_irq(ptr noundef %wil) #12
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %6 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ult i32 %7, 4
  br i1 %cmp, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %9, i32 38000
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i21 = getelementptr i8, ptr %12, i32 38000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i21, i32 %10) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 38012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp2 = icmp ult i32 %.pr, 4
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %17, i32 9840
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i24 = getelementptr i8, ptr %20, i32 9840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i24, i32 %18) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %fw_calib_result = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 91
  %21 = ptrtoint ptr %fw_calib_result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_calib_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp5 = icmp sgt i32 %22, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %22, 4352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %24, i32 2704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %or) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_release_cpu(ptr nocapture noundef readonly %wil) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %0 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %3, i32 262456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 16777216) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_wait_for_fw_ready(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wmi_ready = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 37
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %wmi_ready, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.wil_wait_for_fw_ready) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 200, %call1
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %0 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_version, align 4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.wil_wait_for_fw_ready, i32 noundef %call2, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ -62, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_echo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_restore_vifs(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %0 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_vifs, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp237.not = icmp eq i8 %2, 0
  br i1 %cmp237.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %ap_isolate = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %ap_isolate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ap_isolate, align 4
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %if.end
  %ndev6 = getelementptr inbounds %struct.wil6210_vif, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %ndev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev6, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype, align 4
  %call = tail call i32 @wmi_port_allocate(ptr noundef %wil, i8 noundef zeroext %7, ptr noundef %11, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then5.for.inc_crit_edge, label %if.then5.if.then10_crit_edge

if.then5.if.then10_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %if.then5.3.if.then10_crit_edge, %if.then5.2.if.then10_crit_edge, %if.then5.1.if.then10_crit_edge, %if.then5.if.then10_crit_edge
  %i.038.lcssa = phi i32 [ 0, %if.then5.if.then10_crit_edge ], [ 1, %if.then5.1.if.then10_crit_edge ], [ 2, %if.then5.2.if.then10_crit_edge ], [ 3, %if.then5.3.if.then10_crit_edge ]
  %.lcssa = phi ptr [ %4, %if.then5.if.then10_crit_edge ], [ %20, %if.then5.1.if.then10_crit_edge ], [ %34, %if.then5.2.if.then10_crit_edge ], [ %48, %if.then5.3.if.then10_crit_edge ]
  %call.lcssa = phi i32 [ %call, %if.then5.if.then10_crit_edge ], [ %call.1, %if.then5.1.if.then10_crit_edge ], [ %call.2, %if.then5.2.if.then10_crit_edge ], [ %call.3, %if.then5.3.if.then10_crit_edge ]
  %iftype.le = getelementptr inbounds %struct.wireless_dev, ptr %.lcssa, i32 0, i32 1
  %14 = ptrtoint ptr %iftype.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iftype.le, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.wil_restore_vifs, i32 noundef %i.038.lcssa, i32 noundef %15, i32 noundef %call.lcssa) #12
  br label %cleanup

for.inc:                                          ; preds = %if.then5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_vifs, align 4
  %18 = tail call i8 @llvm.umin.i8(i8 %17, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp2 = icmp ugt i8 %18, 1
  br i1 %cmp2, label %for.body.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %20, null
  br i1 %tobool.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.end.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.body.1
  %ap_isolate.1 = getelementptr inbounds %struct.wil6210_vif, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %ap_isolate.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ap_isolate.1, align 4
  %mid.1 = getelementptr inbounds %struct.wil6210_vif, ptr %20, i32 0, i32 3
  %22 = ptrtoint ptr %mid.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mid.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not.1 = icmp eq i8 %23, 0
  br i1 %tobool4.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.then5.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then5.1:                                       ; preds = %if.end.1
  %ndev6.1 = getelementptr inbounds %struct.wil6210_vif, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %ndev6.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev6.1, align 4
  %dev_addr.1 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr.1, align 64
  %iftype.1 = getelementptr inbounds %struct.wireless_dev, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %iftype.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iftype.1, align 4
  %call.1 = tail call i32 @wmi_port_allocate(ptr noundef %wil, i8 noundef zeroext %23, ptr noundef %27, i32 noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool9.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool9.not.1, label %if.then5.1.for.inc.1_crit_edge, label %if.then5.1.if.then10_crit_edge

if.then5.1.if.then10_crit_edge:                   ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then5.1.for.inc.1_crit_edge:                   ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %30 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_vifs, align 4
  %32 = tail call i8 @llvm.umin.i8(i8 %31, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp2.1 = icmp ugt i8 %32, 2
  br i1 %cmp2.1, label %for.body.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %34, null
  br i1 %tobool.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.end.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.body.2
  %ap_isolate.2 = getelementptr inbounds %struct.wil6210_vif, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %ap_isolate.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ap_isolate.2, align 4
  %mid.2 = getelementptr inbounds %struct.wil6210_vif, ptr %34, i32 0, i32 3
  %36 = ptrtoint ptr %mid.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mid.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool4.not.2 = icmp eq i8 %37, 0
  br i1 %tobool4.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.then5.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then5.2:                                       ; preds = %if.end.2
  %ndev6.2 = getelementptr inbounds %struct.wil6210_vif, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %ndev6.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev6.2, align 4
  %dev_addr.2 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr.2, align 64
  %iftype.2 = getelementptr inbounds %struct.wireless_dev, ptr %34, i32 0, i32 1
  %42 = ptrtoint ptr %iftype.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iftype.2, align 4
  %call.2 = tail call i32 @wmi_port_allocate(ptr noundef %wil, i8 noundef zeroext %37, ptr noundef %41, i32 noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool9.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool9.not.2, label %if.then5.2.for.inc.2_crit_edge, label %if.then5.2.if.then10_crit_edge

if.then5.2.if.then10_crit_edge:                   ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then5.2.for.inc.2_crit_edge:                   ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  %44 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %max_vifs, align 4
  %46 = tail call i8 @llvm.umin.i8(i8 %45, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp2.2 = icmp ugt i8 %46, 3
  br i1 %cmp2.2, label %for.body.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %47 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %48, null
  br i1 %tobool.not.3, label %for.body.3.cleanup_crit_edge, label %if.end.3

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.3:                                         ; preds = %for.body.3
  %ap_isolate.3 = getelementptr inbounds %struct.wil6210_vif, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %ap_isolate.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ap_isolate.3, align 4
  %mid.3 = getelementptr inbounds %struct.wil6210_vif, ptr %48, i32 0, i32 3
  %50 = ptrtoint ptr %mid.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mid.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool4.not.3 = icmp eq i8 %51, 0
  br i1 %tobool4.not.3, label %if.end.3.cleanup_crit_edge, label %if.then5.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.3:                                       ; preds = %if.end.3
  %ndev6.3 = getelementptr inbounds %struct.wil6210_vif, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %ndev6.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev6.3, align 4
  %dev_addr.3 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 86
  %54 = ptrtoint ptr %dev_addr.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_addr.3, align 64
  %iftype.3 = getelementptr inbounds %struct.wireless_dev, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %iftype.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iftype.3, align 4
  %call.3 = tail call i32 @wmi_port_allocate(ptr noundef %wil, i8 noundef zeroext %51, ptr noundef %55, i32 noundef %57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool9.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool9.not.3, label %if.then5.3.cleanup_crit_edge, label %if.then5.3.if.then10_crit_edge

if.then5.3.if.then10_crit_edge:                   ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then5.3.cleanup_crit_edge:                     ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.then5.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %if.then10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.body.3.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.then5.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_collect_fw_info(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  %retry_short = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retry_short) #12
  %2 = ptrtoint ptr %retry_short to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %retry_short, align 1, !annotation !423
  tail call void @wil_refresh_fw_capabilities(ptr noundef %wil)
  %call = call i32 @wmi_get_mgmt_retry(ptr noundef %wil, ptr noundef nonnull %retry_short) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %retry_short, align 1
  %retry_short2 = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %retry_short2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %retry_short2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_collect_fw_info.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_collect_fw_info, %if.then9)) #12
          to label %do.end11 [label %if.then9], !srcloc !415

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  %8 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retry_short, align 1
  %conv = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_collect_fw_info.__UNIQUE_ID_ddebug385, ptr noundef %7, ptr noundef nonnull @.str.155, i32 noundef %conv) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %if.then
  %10 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retry_short, align 1
  %conv12 = zext i8 %11 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.155, i32 noundef %conv12) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %entry.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retry_short) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_fw_error_recovery(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_fw_error_recovery.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_fw_error_recovery, %if.then)) #12
          to label %do.end5 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_fw_error_recovery.__UNIQUE_ID_ddebug399, ptr noundef %1, ptr noundef nonnull @.str.68) #12
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.68) #12
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67) #12
  br label %return

if.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %5 = ptrtoint ptr %recovery_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %recovery_state, align 8
  %fw_error_worker = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %fw_error_worker) #12
  br label %return

return:                                           ; preds = %if.end10, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__wil_up(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #12
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !413

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1818, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call i32 @wil_reset(ptr noundef %wil, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %4 = load i32, ptr @rx_ring_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then24, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %5 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp25 = icmp ult i32 %6, 4
  %cond = select i1 %cmp25, i32 10, i32 11
  store i32 %cond, ptr @rx_ring_order, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end23.if.end26_crit_edge
  %rx_init = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 11
  %7 = ptrtoint ptr %rx_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_init, align 4
  %9 = load i32, ptr @rx_ring_order, align 4
  %call27 = tail call i32 %8(ptr noundef %wil, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %tx_init = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 4
  %10 = ptrtoint ptr %tx_init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_init, align 16
  %call32 = tail call i32 %11(ptr noundef %wil) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %13, label %if.end35.cleanup_crit_edge [
    i32 2, label %do.body38
    i32 3, label %do.body60
    i32 8, label %do.body85
    i32 9, label %do.body110
    i32 6, label %do.body135
  ]

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_up.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_up, %if.then48)) #12
          to label %sw.epilog [label %if.then48], !srcloc !415

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_up.__UNIQUE_ID_ddebug400, ptr noundef %16, ptr noundef nonnull @.str.71) #12
  br label %sw.epilog

do.body60:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_up.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_up, %if.then72)) #12
          to label %sw.epilog [label %if.then72], !srcloc !415

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_up.__UNIQUE_ID_ddebug401, ptr noundef %18, ptr noundef nonnull @.str.72) #12
  br label %sw.epilog

do.body85:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_up.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_up, %if.then97)) #12
          to label %sw.epilog [label %if.then97], !srcloc !415

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_up.__UNIQUE_ID_ddebug402, ptr noundef %20, ptr noundef nonnull @.str.73) #12
  br label %sw.epilog

do.body110:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_up.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_up, %if.then122)) #12
          to label %sw.epilog [label %if.then122], !srcloc !415

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_up.__UNIQUE_ID_ddebug403, ptr noundef %22, ptr noundef nonnull @.str.74) #12
  br label %sw.epilog

do.body135:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_up.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_up, %if.then147)) #12
          to label %sw.epilog [label %if.then147], !srcloc !415

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_up.__UNIQUE_ID_ddebug404, ptr noundef %24, ptr noundef nonnull @.str.75) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then147, %do.body135, %if.then122, %do.body110, %if.then97, %do.body85, %if.then72, %do.body60, %if.then48, %do.body38
  %.str.75.sink = phi ptr [ @.str.71, %do.body38 ], [ @.str.71, %if.then48 ], [ @.str.72, %do.body60 ], [ @.str.72, %if.then72 ], [ @.str.73, %do.body85 ], [ @.str.73, %if.then97 ], [ @.str.74, %do.body110 ], [ @.str.74, %if.then122 ], [ @.str.75, %do.body135 ], [ @.str.75, %if.then147 ]
  %.sink = phi i16 [ 1, %do.body38 ], [ 1, %if.then48 ], [ 1, %do.body60 ], [ 1, %if.then72 ], [ 1, %do.body85 ], [ 1, %if.then97 ], [ 1, %do.body110 ], [ 1, %if.then122 ], [ 803, %do.body135 ], [ 803, %if.then147 ]
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull %.str.75.sink) #12
  %type156 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %type156 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %.sink, ptr %type156, align 16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  %call157 = tail call i32 @wmi_set_mac_address(ptr noundef %wil, ptr noundef %27) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_up.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_up, %if.then172)) #12
          to label %do.end178 [label %if.then172], !srcloc !415

if.then172:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_up.__UNIQUE_ID_ddebug405, ptr noundef %29, ptr noundef nonnull @.str.76) #12
  br label %do.end178

do.end178:                                        ; preds = %if.then172, %sw.epilog
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.76) #12
  %napi_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 52
  tail call void @napi_enable(ptr noundef %napi_rx) #12
  %napi_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53
  tail call void @napi_enable(ptr noundef %napi_tx) #12
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status) #12
  %platform_ops.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83
  %30 = ptrtoint ptr %platform_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_ops.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %do.end178.cleanup_crit_edge, label %if.then.i

do.end178.cleanup_crit_edge:                      ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #14
  %bus_request_kbps.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 95
  %32 = ptrtoint ptr %bus_request_kbps.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128000, ptr %bus_request_kbps.i, align 128
  %platform_handle.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %33 = ptrtoint ptr %platform_handle.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_handle.i, align 8
  %call.i = tail call i32 %31(ptr noundef %34, i32 noundef 128000) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end178.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ -95, %if.end35.cleanup_crit_edge ], [ 0, %do.end178.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_up(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_up.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_up, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_up.__UNIQUE_ID_ddebug406, ptr noundef %1, ptr noundef nonnull @.str.78) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.78) #12
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call9 = tail call i32 @__wil_up(ptr noundef %wil)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__wil_down(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #12
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !413

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1893, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status) #12
  %platform_ops.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 83
  %0 = ptrtoint ptr %platform_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.wil6210_bus_request.exit_crit_edge, label %if.then.i

if.end.wil6210_bus_request.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil6210_bus_request.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bus_request_kbps.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 95
  %2 = ptrtoint ptr %bus_request_kbps.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bus_request_kbps.i, align 128
  %platform_handle.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 82
  %3 = ptrtoint ptr %platform_handle.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_handle.i, align 8
  %call.i = tail call i32 %1(ptr noundef %4, i32 noundef 0) #12
  br label %wil6210_bus_request.exit

wil6210_bus_request.exit:                         ; preds = %if.then.i, %if.end.wil6210_bus_request.exit_crit_edge
  tail call void @wil_disable_irq(ptr noundef %wil) #12
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %wil6210_bus_request.exit.if.end45_crit_edge, label %if.then24

wil6210_bus_request.exit.if.end45_crit_edge:      ; preds = %wil6210_bus_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then24:                                        ; preds = %wil6210_bus_request.exit
  %napi_rx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 52
  tail call void @napi_disable(ptr noundef %napi_rx) #12
  %napi_tx = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 53
  tail call void @napi_disable(ptr noundef %napi_tx) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__wil_down.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__wil_down, %if.then37)) #12
          to label %do.end42 [label %if.then37], !srcloc !415

if.then37:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__wil_down.__UNIQUE_ID_ddebug407, ptr noundef %6, ptr noundef nonnull @.str.80) #12
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %if.then24
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.80) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %wil6210_bus_request.exit.if.end45_crit_edge
  tail call void @wil_enable_irq(ptr noundef %wil) #12
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #12
  tail call void @wil_p2p_stop_radio_operations(ptr noundef %wil) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i63 = icmp eq i32 %7, 0
  br i1 %tobool.not.i63, label %if.end45.if.end.i_crit_edge, label %land.rhs.i

if.end45.if.end.i_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end45
  %dep_map.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !417

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1487, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end45.if.end.i_crit_edge
  %max_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %8 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_vifs.i, align 4
  %10 = tail call i8 @llvm.umin.i8(i8 %9, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp2742.not.i = icmp eq i8 %10, 0
  br i1 %cmp2742.not.i, label %if.end.i.wil_abort_scan_all_vifs.exit_crit_edge, label %for.body.i

if.end.i.wil_abort_scan_all_vifs.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool29.not.i = icmp eq ptr %12, null
  br i1 %tobool29.not.i, label %for.body.i.if.end32.i_crit_edge, label %if.then30.i

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %12, i1 noundef zeroext false) #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %for.body.i.if.end32.i_crit_edge
  %13 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_vifs.i, align 4
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp27.i = icmp ugt i8 %15, 1
  br i1 %cmp27.i, label %for.body.i.1, label %if.end32.i.wil_abort_scan_all_vifs.exit_crit_edge

if.end32.i.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i.1:                                     ; preds = %if.end32.i
  %arrayidx.i.1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 1
  %16 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool29.not.i.1 = icmp eq ptr %17, null
  br i1 %tobool29.not.i.1, label %for.body.i.1.if.end32.i.1_crit_edge, label %if.then30.i.1

for.body.i.1.if.end32.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.1

if.then30.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %17, i1 noundef zeroext false) #12
  br label %if.end32.i.1

if.end32.i.1:                                     ; preds = %if.then30.i.1, %for.body.i.1.if.end32.i.1_crit_edge
  %18 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_vifs.i, align 4
  %20 = tail call i8 @llvm.umin.i8(i8 %19, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp27.i.1 = icmp ugt i8 %20, 2
  br i1 %cmp27.i.1, label %for.body.i.2, label %if.end32.i.1.wil_abort_scan_all_vifs.exit_crit_edge

if.end32.i.1.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %if.end32.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i.2:                                     ; preds = %if.end32.i.1
  %arrayidx.i.2 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 2
  %21 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool29.not.i.2 = icmp eq ptr %22, null
  br i1 %tobool29.not.i.2, label %for.body.i.2.if.end32.i.2_crit_edge, label %if.then30.i.2

for.body.i.2.if.end32.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.2

if.then30.i.2:                                    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %22, i1 noundef zeroext false) #12
  br label %if.end32.i.2

if.end32.i.2:                                     ; preds = %if.then30.i.2, %for.body.i.2.if.end32.i.2_crit_edge
  %23 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_vifs.i, align 4
  %25 = tail call i8 @llvm.umin.i8(i8 %24, i8 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp27.i.2 = icmp ugt i8 %25, 3
  br i1 %cmp27.i.2, label %for.body.i.3, label %if.end32.i.2.wil_abort_scan_all_vifs.exit_crit_edge

if.end32.i.2.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %if.end32.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

for.body.i.3:                                     ; preds = %if.end32.i.2
  %arrayidx.i.3 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 3
  %26 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool29.not.i.3 = icmp eq ptr %27, null
  br i1 %tobool29.not.i.3, label %for.body.i.3.wil_abort_scan_all_vifs.exit_crit_edge, label %if.then30.i.3

for.body.i.3.wil_abort_scan_all_vifs.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %wil_abort_scan_all_vifs.exit

if.then30.i.3:                                    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_abort_scan(ptr noundef nonnull %27, i1 noundef zeroext false) #12
  br label %wil_abort_scan_all_vifs.exit

wil_abort_scan_all_vifs.exit:                     ; preds = %if.then30.i.3, %for.body.i.3.wil_abort_scan_all_vifs.exit_crit_edge, %if.end32.i.2.wil_abort_scan_all_vifs.exit_crit_edge, %if.end32.i.1.wil_abort_scan_all_vifs.exit_crit_edge, %if.end32.i.wil_abort_scan_all_vifs.exit_crit_edge, %if.end.i.wil_abort_scan_all_vifs.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #12
  %call47 = tail call i32 @wil_reset(ptr noundef %wil, i1 noundef zeroext false)
  ret i32 %call47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_p2p_stop_radio_operations(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_down(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_down.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_down, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_down.__UNIQUE_ID_ddebug408, ptr noundef %1, ptr noundef nonnull @.str.82) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.82) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_set_recovery_state.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_down, %if.then.i)) #12
          to label %wil_set_recovery_state.exit [label %if.then.i], !srcloc !415

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev.i, align 4
  %recovery_state.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %4 = ptrtoint ptr %recovery_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recovery_state.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_set_recovery_state.__UNIQUE_ID_ddebug364, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef 0) #12
  br label %wil_set_recovery_state.exit

wil_set_recovery_state.exit:                      ; preds = %if.then.i, %do.end6
  %recovery_state6.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 19
  %6 = ptrtoint ptr %recovery_state6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recovery_state6.i, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef 0) #12
  %8 = ptrtoint ptr %recovery_state6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %recovery_state6.i, align 8
  %wq.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call9 = tail call i32 @__wil_down(ptr noundef %wil)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %call9
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_find_cid(ptr nocapture noundef readonly %wil, i8 noundef zeroext %mid, ptr nocapture noundef readonly %mac) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %0 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.022
  %mid1 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.022, i32 1
  %2 = ptrtoint ptr %mid1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mid1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %mid)
  %cmp3 = icmp eq i8 %3, %mid
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %status = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.022, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %9, %7
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %13, %11
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true9.for.end_crit_edge, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true9.for.end_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true9.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ -2, %entry.for.end_crit_edge ], [ %i.022, %land.lhs.true9.for.end_crit_edge ], [ -2, %for.inc.for.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_halp_vote(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %0 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %halp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %halp, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_halp_vote.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_halp_vote, %if.then6)) #12
          to label %do.end10 [label %if.then6], !srcloc !415

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %ref_cnt = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 1
  %4 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_halp_vote.__UNIQUE_ID_ddebug409, ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %5) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %if.end
  %ref_cnt12 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 1
  %6 = ptrtoint ptr %ref_cnt12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_cnt12, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.84, i32 noundef %7) #12
  %8 = ptrtoint ptr %ref_cnt12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_cnt12, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %ref_cnt12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.then18, label %do.end10.do.body58_crit_edge

do.end10.do.body58_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

if.then18:                                        ; preds = %do.end10
  %comp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 2
  %10 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %comp, align 4
  %handle_icr = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 3
  %11 = ptrtoint ptr %handle_icr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %handle_icr, align 4
  tail call void @wil6210_set_halp(ptr noundef %wil) #12
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %do.body30

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83) #12
  %12 = ptrtoint ptr %handle_icr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %handle_icr, align 4
  tail call void @wil6210_mask_halp(ptr noundef %wil) #12
  br label %do.body58

do.body30:                                        ; preds = %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_halp_vote.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_halp_vote, %if.then42)) #12
          to label %do.end49 [label %if.then42], !srcloc !415

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev43 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %13 = ptrtoint ptr %main_ndev43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_ndev43, align 4
  %sub = sub i32 10, %call23
  %call44 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_halp_vote.__UNIQUE_ID_ddebug410, ptr noundef %14, ptr noundef nonnull @.str.86, i32 noundef %call44) #12
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body30
  %sub50 = sub i32 10, %call23
  %call51 = tail call i32 @jiffies_to_msecs(i32 noundef %sub50) #12
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.86, i32 noundef %call51) #12
  br label %do.body58

do.body58:                                        ; preds = %do.end49, %if.then25, %do.end10.do.body58_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_halp_vote.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_halp_vote, %if.then70)) #12
          to label %do.end78 [label %if.then70], !srcloc !415

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev71 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev71 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev71, align 4
  %17 = ptrtoint ptr %ref_cnt12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_cnt12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_halp_vote.__UNIQUE_ID_ddebug411, ptr noundef %16, ptr noundef nonnull @.str.87, i32 noundef %18) #12
  br label %do.end78

do.end78:                                         ; preds = %if.then70, %do.body58
  %19 = ptrtoint ptr %ref_cnt12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_cnt12, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.87, i32 noundef %20) #12
  tail call void @mutex_unlock(ptr noundef %halp) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_set_halp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_mask_halp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_halp_unvote(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 8
  %0 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %halp = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89
  %ref_cnt = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 89, i32 1
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %do.end, label %if.end.if.end15_crit_edge, !prof !417

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1990, i32 noundef 9, ptr noundef null) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %halp, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_halp_unvote.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_halp_unvote, %if.then34)) #12
          to label %do.end41 [label %if.then34], !srcloc !415

if.then34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  %6 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_halp_unvote.__UNIQUE_ID_ddebug412, ptr noundef %5, ptr noundef nonnull @.str.89, i32 noundef %7) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then34, %if.end15
  %8 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_cnt, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.89, i32 noundef %9) #12
  %10 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp48 = icmp eq i32 %dec, 0
  br i1 %cmp48, label %if.then49, label %do.end41.do.body76_crit_edge

do.end41.do.body76_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76

if.then49:                                        ; preds = %do.end41
  tail call void @wil6210_clear_halp(ptr noundef %wil) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_halp_unvote.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_halp_unvote, %if.then64)) #12
          to label %do.end70 [label %if.then64], !srcloc !415

if.then64:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev65 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %12 = ptrtoint ptr %main_ndev65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_halp_unvote.__UNIQUE_ID_ddebug413, ptr noundef %13, ptr noundef nonnull @.str.90) #12
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %if.then49
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.90) #12
  br label %do.body76

do.body76:                                        ; preds = %do.end70, %do.end41.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_halp_unvote.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_halp_unvote, %if.then88)) #12
          to label %do.end96 [label %if.then88], !srcloc !415

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev89 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev89, align 4
  %16 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_halp_unvote.__UNIQUE_ID_ddebug414, ptr noundef %15, ptr noundef nonnull @.str.91, i32 noundef %17) #12
  br label %do.end96

do.end96:                                         ; preds = %if.then88, %do.body76
  %18 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_cnt, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.91, i32 noundef %19) #12
  tail call void @mutex_unlock(ptr noundef %halp) #12
  br label %return

return:                                           ; preds = %do.end96, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_clear_halp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_init_txrx_ops(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %0 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_init_txrx_ops_edma(ptr noundef %wil) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wil_init_txrx_ops_legacy_dma(ptr noundef %wil) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_init_txrx_ops_edma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_init_txrx_ops_legacy_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu_max_set(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load i32, ptr @mtu_max, align 4
  %1 = add i32 %0, -7913
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7845, i32 %1)
  %2 = icmp ult i32 %1, -7845
  %ret.0 = select i1 %2, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_order_set(ptr noundef %val, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  %x = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #12
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x, align 4, !annotation !423
  %call = call i32 @kstrtouint(ptr noundef %val, i32 noundef 0, ptr noundef nonnull %x) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x, align 4
  %3 = add i32 %2, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %3)
  %4 = icmp ult i32 %3, -11
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_cfg80211_ap_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_disconnect_cid(ptr noundef %vif, i32 noundef %cid, i16 noundef zeroext %reason_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 392) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_disconnect_cid.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_disconnect_cid, %if.then)) #12
          to label %do.end15 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 1
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 2
  %conv = zext i8 %5 to i32
  %status = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_disconnect_cid.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.109, i32 noundef %cid, i32 noundef %conv, i32 noundef %7) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %mid16 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 1
  %8 = ptrtoint ptr %mid16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mid16, align 2
  %conv17 = zext i8 %9 to i32
  %status18 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 2
  %10 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status18, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef %cid, i32 noundef %conv17, i32 noundef %11) #12
  %12 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %do.end15.cleanup_crit_edge, label %if.end24

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %do.end15
  %mid25 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %14 = ptrtoint ptr %mid25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mid25, align 4
  %16 = ptrtoint ptr %mid16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid16, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp29.not = icmp eq i8 %15, %17
  br i1 %cmp29.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %conv26 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i32 noundef %conv26) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %18 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp35 = icmp eq i32 %19, 3
  br i1 %cmp35, label %land.lhs.true, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_ap_sme to i32))
  %20 = load i8, ptr @disable_ap_sme, align 1, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool37.not = icmp ne i8 %20, 0
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true, %if.end34.if.end40_crit_edge
  %del_sta.0.off0 = phi i1 [ false, %if.end34.if.end40_crit_edge ], [ %tobool37.not, %land.lhs.true ]
  %call42 = tail call i32 @wmi_disconnect_sta(ptr noundef %vif, ptr noundef %arrayidx, i16 noundef zeroext %reason_code, i1 noundef zeroext %del_sta.0.off0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then31, %do.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_disconnect_sta(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_disconnect_cid_complete(ptr nocapture noundef readonly %vif, i32 noundef %cid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %ndev2 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 4
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !416
  %6 = zext i8 %5 to i32
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 253) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_disconnect_cid_complete.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_disconnect_cid_complete, %if.then)) #12
          to label %do.end17 [label %if.then], !srcloc !415

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 1
  %9 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mid, align 2
  %conv = zext i8 %10 to i32
  %status = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_disconnect_cid_complete.__UNIQUE_ID_ddebug358, ptr noundef %8, ptr noundef nonnull @.str.115, i32 noundef %cid, i32 noundef %conv, i32 noundef %12) #12
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %mid18 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 1
  %13 = ptrtoint ptr %mid18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mid18, align 2
  %conv19 = zext i8 %14 to i32
  %status20 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 2
  %15 = ptrtoint ptr %status20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status20, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %cid, i32 noundef %conv19, i32 noundef %16) #12
  %17 = ptrtoint ptr %status20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %do.end17.if.end38_crit_edge, label %if.then25

do.end17.if.end38_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then25:                                        ; preds = %do.end17
  %mid26 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %19 = ptrtoint ptr %mid26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mid26, align 4
  %21 = ptrtoint ptr %mid18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mid18, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp30.not = icmp eq i8 %20, %22
  br i1 %cmp30.not, label %if.then25.if.end35_crit_edge, label %if.then32

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %conv27 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.114, i32 noundef %conv27) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then25.if.end35_crit_edge
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %23 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iftype, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %24, label %if.end35.sw.epilog_crit_edge [
    i32 3, label %if.end35.sw.bb_crit_edge
    i32 9, label %if.end35.sw.bb_crit_edge6
  ]

if.end35.sw.bb_crit_edge6:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end35.sw.bb_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end35.sw.bb_crit_edge, %if.end35.sw.bb_crit_edge6
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %3, ptr noundef %arrayidx, ptr noundef null, i32 noundef 3264) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end35.sw.epilog_crit_edge
  %26 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %status20, align 8
  %27 = ptrtoint ptr %mid18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %mid18, align 2
  br label %if.end38

if.end38:                                         ; preds = %sw.epilog, %do.end17.if.end38_crit_edge
  %tid_rx_lock = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end38
  %i.02 = phi i32 [ 0, %if.end38 ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_rx_lock) #12
  %arrayidx41 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 6, i32 %i.02
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx41, align 4
  store ptr null, ptr %arrayidx41, align 4
  tail call void @wil_tid_ampdu_rx_free(ptr noundef %1, ptr noundef %29) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_rx_lock) #12
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %tid_crypto_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 10
  %30 = call ptr @memset(ptr %tid_crypto_rx, i32 0, i32 476)
  br label %for.body49

for.body49:                                       ; preds = %for.inc57.for.body49_crit_edge, %for.end
  %i.13 = phi i32 [ %6, %for.end ], [ %inc58, %for.inc57.for.body49_crit_edge ]
  %arrayidx50 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 62, i32 %i.13
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx50, align 2
  %conv52 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %cid)
  %cmp53 = icmp eq i32 %conv52, %cid
  br i1 %cmp53, label %if.then55, label %for.body49.for.inc57_crit_edge

for.body49.for.inc57_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57

if.then55:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wil_ring_fini_tx(ptr noundef %1, i32 noundef %i.13)
  br label %for.inc57

for.inc57:                                        ; preds = %if.then55, %for.body49.for.inc57_crit_edge
  %inc58 = add nuw nsw i32 %i.13, 1
  %exitcond5.not = icmp eq i32 %inc58, 24
  br i1 %exitcond5.not, label %for.end59, label %for.inc57.for.body49_crit_edge

for.inc57.for.body49_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49

for.end59:                                        ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #14
  %stats = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3
  %33 = call ptr @memset(ptr %stats, i32 0, i32 216)
  %tx_latency_min_us = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 5
  %34 = ptrtoint ptr %tx_latency_min_us to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %tx_latency_min_us, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_has_other_active_ifaces(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_tid_ampdu_rx_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_wait_device_ready_talyn_mb(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #12
  %boot_config = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 107
  %0 = ptrtoint ptr %boot_config to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %boot_config, align 1
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end35.do.body_crit_edge, %entry
  %delay.0 = phi i32 [ 0, %entry ], [ %inc, %if.end35.do.body_crit_edge ]
  %1 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3296
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %shr.i = lshr i32 %4, 8
  %and.i = and i32 %shr.i, 3
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body.do.body51.sink.split_crit_edge, label %if.end

do.body.do.body51.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.sink.split

if.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp11 = icmp eq i32 %and.i, 1
  %or.cond226 = select i1 %tobool.not.not, i1 %cmp11, i1 false
  br i1 %or.cond226, label %if.end.do.body51.sink.split_crit_edge, label %if.end15

if.end.do.body51.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.sink.split

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp19 = icmp eq i32 %and.i, 2
  %or.cond227 = select i1 %tobool.not, i1 %cmp19, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp27 = icmp eq i32 %and.i, 3
  %or.cond228 = select i1 %tobool.not, i1 %cmp27, i1 false
  %or.cond312 = select i1 %or.cond227, i1 true, i1 %or.cond228
  br i1 %or.cond312, label %if.end15.do.body51.sink.split_crit_edge, label %if.end31

if.end15.do.body51.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51.sink.split

if.end31:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %delay.0)
  %exitcond = icmp eq i32 %delay.0, 12
  br i1 %exitcond, label %if.end31.do.end_crit_edge, label %if.end35

if.end31.do.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end35:                                         ; preds = %if.end31
  %inc = add nuw nsw i32 %delay.0, 1
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 210, i32 noundef 2) #12
  %or.cond229 = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond229, label %if.end35.do.body_crit_edge, label %if.end35.do.end_crit_edge

if.end35.do.end_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %if.end35.do.end_crit_edge, %if.end31.do.end_crit_edge
  %inc.lcssa = phi i32 [ %inc, %if.end35.do.end_crit_edge ], [ 13, %if.end31.do.end_crit_edge ]
  %5 = ptrtoint ptr %boot_config to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %boot_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp42 = icmp eq i8 %.pr, 0
  br i1 %cmp42, label %if.then44, label %do.end.do.body51_crit_edge

do.end.do.body51_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

if.then44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__.wil_wait_device_ready_talyn_mb, i32 noundef %and.i, i32 noundef %and) #12
  br label %cleanup

do.body51.sink.split:                             ; preds = %if.end15.do.body51.sink.split_crit_edge, %if.end.do.body51.sink.split_crit_edge, %do.body.do.body51.sink.split_crit_edge
  %.sink = phi i8 [ 1, %do.body.do.body51.sink.split_crit_edge ], [ 3, %if.end.do.body51.sink.split_crit_edge ], [ 2, %if.end15.do.body51.sink.split_crit_edge ]
  %6 = ptrtoint ptr %boot_config to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %boot_config, align 1
  br label %do.body51

do.body51:                                        ; preds = %do.body51.sink.split, %do.end.do.body51_crit_edge
  %delay.1245 = phi i32 [ %inc.lcssa, %do.end.do.body51_crit_edge ], [ %delay.0, %do.body51.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready_talyn_mb, %if.then57)) #12
          to label %do.end64 [label %if.then57], !srcloc !415

if.then57:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  %mul = mul i32 %delay.1245, 200
  %9 = ptrtoint ptr %boot_config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %boot_config, align 1
  %conv59 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug380, ptr noundef %8, ptr noundef nonnull @.str.122, i32 noundef %mul, i32 noundef %4, i32 noundef %conv59) #12
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body51
  %mul65 = mul i32 %delay.1245, 200
  %11 = ptrtoint ptr %boot_config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %boot_config, align 1
  %conv67 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.122, i32 noundef %mul65, i32 noundef %4, i32 noundef %conv67) #12
  %13 = ptrtoint ptr %boot_config to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %boot_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp72 = icmp eq i8 %14, 1
  br i1 %cmp72, label %do.end64.do.body154_crit_edge, label %do.end64.while.cond_crit_edge

do.end64.while.cond_crit_edge:                    ; preds = %do.end64
  br label %while.cond

do.end64.do.body154_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body154

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end64.while.cond_crit_edge
  %delay.2 = phi i32 [ %inc86, %while.body.while.cond_crit_edge ], [ 0, %do.end64.while.cond_crit_edge ]
  %hw_section_done.0.off0.in.in = phi i32 [ %18, %while.body.while.cond_crit_edge ], [ %4, %do.end64.while.cond_crit_edge ]
  %hw_section_done.0.off0.in = and i32 %hw_section_done.0.off0.in.in, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hw_section_done.0.off0.in)
  %hw_section_done.0.off0.not = icmp eq i32 %hw_section_done.0.off0.in, 0
  br i1 %hw_section_done.0.off0.not, label %while.body, label %do.body93

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 20) #12
  %15 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i, align 4
  %add.ptr.i240 = getelementptr i8, ptr %16, i32 3296
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #12, !srcloc !412
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %inc86 = add nuw nsw i32 %delay.2, 1
  %exitcond294 = icmp eq i32 %inc86, 53
  br i1 %exitcond294, label %if.then89, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then89:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.wil_wait_device_ready_talyn_mb) #12
  br label %cleanup

do.body93:                                        ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready_talyn_mb, %if.then105)) #12
          to label %do.end112 [label %if.then105], !srcloc !415

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev106 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %19 = ptrtoint ptr %main_ndev106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev106, align 4
  %mul107 = mul i32 %delay.2, 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug381, ptr noundef %20, ptr noundef nonnull @.str.124, i32 noundef %mul107) #12
  br label %do.end112

do.end112:                                        ; preds = %if.then105, %do.body93
  %mul113 = mul i32 %delay.2, 20
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.124, i32 noundef %mul113) #12
  %21 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i, align 4
  %add.ptr.i242 = getelementptr i8, ptr %22, i32 131128
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %secured_boot = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 106
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 7
  %26 = ptrtoint ptr %secured_boot to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %secured_boot, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready_talyn_mb, %if.then135)) #12
          to label %do.end145 [label %if.then135], !srcloc !415

if.then135:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev136 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %27 = ptrtoint ptr %main_ndev136 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main_ndev136, align 4
  %29 = ptrtoint ptr %secured_boot to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %secured_boot, align 2, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool138.not = icmp eq i8 %30, 0
  %cond140 = select i1 %tobool138.not, ptr @.str.127, ptr @.str.126
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug382, ptr noundef %28, ptr noundef nonnull @.str.125, ptr noundef nonnull %cond140) #12
  br label %do.end145

do.end145:                                        ; preds = %if.then135, %do.end112
  %31 = ptrtoint ptr %secured_boot to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %secured_boot, align 2, !range !416
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool147.not = icmp eq i8 %32, 0
  %cond149 = select i1 %tobool147.not, ptr @.str.127, ptr @.str.126
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.125, ptr noundef nonnull %cond149) #12
  br label %do.body154

do.body154:                                       ; preds = %do.end145, %do.end64.do.body154_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready_talyn_mb, %if.then166)) #12
          to label %do.end172 [label %if.then166], !srcloc !415

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev167 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %33 = ptrtoint ptr %main_ndev167 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %main_ndev167, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug383, ptr noundef %34, ptr noundef nonnull @.str.128) #12
  br label %do.end172

do.end172:                                        ; preds = %if.then166, %do.body154
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.128) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end172, %if.then89, %if.then44
  %retval.0 = phi i32 [ -62, %if.then44 ], [ 0, %do.end172 ], [ -62, %if.then89 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_wait_device_ready(ptr noundef %wil, i32 noundef %no_flash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_flash)
  %tobool.not = icmp eq i32 %no_flash, 0
  br i1 %tobool.not, label %do.body11.preheader, label %if.then

do.body11.preheader:                              ; preds = %entry
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %main_ndev29 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %do.body11

if.then:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 4) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready, %if.then6)) #12
          to label %do.end8 [label %if.then6], !srcloc !415

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready.__UNIQUE_ID_ddebug377, ptr noundef %1, ptr noundef nonnull @.str.128) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %if.then
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.128) #12
  br label %cleanup

do.body11:                                        ; preds = %do.cond41.do.body11_crit_edge, %do.body11.preheader
  %x1.0 = phi i32 [ %x1.1, %do.cond41.do.body11_crit_edge ], [ 0, %do.body11.preheader ]
  %delay.0 = phi i32 [ %inc, %do.cond41.do.body11_crit_edge ], [ 0, %do.body11.preheader ]
  tail call void @msleep(i32 noundef 20) #12
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2620
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @__sanitizer_cov_trace_cmp4(i32 %x1.0, i32 %5)
  %cmp.not = icmp eq i32 %x1.0, %5
  br i1 %cmp.not, label %do.body11.if.end37_crit_edge, label %do.body16

do.body11.if.end37_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body16:                                        ; preds = %do.body11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready, %if.then28)) #12
          to label %do.end34 [label %if.then28], !srcloc !415

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %main_ndev29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready.__UNIQUE_ID_ddebug378, ptr noundef %7, ptr noundef nonnull @.str.130, i32 noundef %x1.0, i32 noundef %5) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body16
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.130, i32 noundef %x1.0, i32 noundef %5) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %do.body11.if.end37_crit_edge
  %x1.1 = phi i32 [ %5, %do.end34 ], [ %x1.0, %do.body11.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %delay.0)
  %exitcond = icmp eq i32 %delay.0, 52
  br i1 %exitcond, label %if.then39, label %do.cond41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, i32 noundef %5) #12
  br label %cleanup

do.cond41:                                        ; preds = %if.end37
  %inc = add nuw nsw i32 %delay.0, 1
  %cmp42.not = icmp eq i32 %4, 16777216
  br i1 %cmp42.not, label %do.body46, label %do.cond41.do.body11_crit_edge

do.cond41.do.body11_crit_edge:                    ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

do.body46:                                        ; preds = %do.cond41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wait_device_ready.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_wait_device_ready, %if.then58)) #12
          to label %do.end64 [label %if.then58], !srcloc !415

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %main_ndev29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev29, align 4
  %mul = mul i32 %inc, 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_wait_device_ready.__UNIQUE_ID_ddebug379, ptr noundef %9, ptr noundef nonnull @.str.132, i32 noundef %mul) #12
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %do.body46
  %mul65 = mul i32 %inc, 20
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.132, i32 noundef %mul65) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.then39, %do.end8
  %retval.0 = phi i32 [ -62, %if.then39 ], [ 0, %do.end64 ], [ 0, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_shutdown_bl(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2656
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 2656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #12
  %6 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2656
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end12, label %do.body2

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_shutdown_bl.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_shutdown_bl, %if.then7)) #12
          to label %do.end9 [label %if.then7], !srcloc !415

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_shutdown_bl.__UNIQUE_ID_ddebug373, ptr noundef %11, ptr noundef nonnull @.str.146) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body2
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.146) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.145) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_freeze_bl(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iccm_base = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 99
  %0 = ptrtoint ptr %iccm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iccm_base, align 16
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %sub.i = add i32 %1, -8912872
  %add.ptr.i = getelementptr i8, ptr %3, i32 %sub.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 539000847, i32 %4)
  %cmp.not = icmp eq i32 %4, 539000847
  br i1 %cmp.not, label %if.end12, label %do.body3

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_freeze_bl.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_freeze_bl, %if.then7)) #12
          to label %do.end9 [label %if.then7], !srcloc !415

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_freeze_bl.__UNIQUE_ID_ddebug374, ptr noundef %6, ptr noundef nonnull @.str.149) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body3
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.149) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  %7 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #12, !srcloc !412
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %10 = or i32 %9, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %10) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 25, i32 noundef 2) #12
  %13 = ptrtoint ptr %iccm_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iccm_base, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i, align 4
  %sub.i77 = add i32 %14, -8912868
  %add.ptr.i78 = getelementptr i8, ptr %16, i32 %sub.i77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 6144) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 25, i32 noundef 2) #12
  %17 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %18, i32 488
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #12, !srcloc !412
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  %21 = add i32 %20, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %21)
  %22 = icmp ult i32 %21, -9
  br i1 %22, label %do.body25, label %if.end12.if.end46_crit_edge

if.end12.if.end46_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.body25:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_freeze_bl.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_freeze_bl, %if.then37)) #12
          to label %do.end43 [label %if.then37], !srcloc !415

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %main_ndev38 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %23 = ptrtoint ptr %main_ndev38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_freeze_bl.__UNIQUE_ID_ddebug375, ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef %20) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body25
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.150, i32 noundef %20) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end12.if.end46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %9) #12, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_port_allocate(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_get_mgmt_retry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !56, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !126, !128, !130, !132, !133, !134, !136, !137, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !154, !155, !157, !159, !160, !162, !164, !166, !168, !170, !172, !173, !174, !176, !178, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !215, !216, !218, !219, !221, !222, !223, !225, !226, !228, !229, !231, !233, !235, !237, !238, !239, !240, !241, !242, !244, !245, !247, !248, !250, !251, !253, !255, !256, !257, !259, !260, !262, !263, !264, !266, !268, !270, !272, !274, !276, !277, !279, !281, !283, !284, !286, !287, !289, !290, !292, !293, !294, !296, !298, !299, !301, !302, !304, !305, !307, !308, !309, !311, !312, !314, !315, !317, !318, !319, !321, !323, !324, !326, !327, !329, !331, !332, !334, !335, !336, !337, !339, !340, !342, !343, !345, !346, !348, !350, !351, !353, !354, !356, !358, !359, !361, !363, !365, !367, !369, !371, !372, !374, !376, !377, !378, !380, !381, !382, !384, !386, !387, !388, !390, !391, !393, !394, !396, !398, !399, !401, !402}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = !{ptr @__param_debug_fw, !1, !"__param_debug_fw", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_fwtype345, !1, !"__UNIQUE_ID_debug_fwtype345", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_fw346, !4, !"__UNIQUE_ID_debug_fw346", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 25, i32 1}
!5 = !{ptr @__param_oob_mode, !6, !"__param_oob_mode", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_oob_modetype347, !6, !"__UNIQUE_ID_oob_modetype347", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_oob_mode348, !9, !"__UNIQUE_ID_oob_mode348", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 29, i32 1}
!10 = !{ptr @__param_no_fw_recovery, !11, !"__param_no_fw_recovery", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 33, i32 1}
!12 = !{ptr @__UNIQUE_ID_no_fw_recoverytype349, !11, !"__UNIQUE_ID_no_fw_recoverytype349", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_no_fw_recovery350, !14, !"__UNIQUE_ID_no_fw_recovery350", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 34, i32 1}
!15 = !{ptr @rx_ring_overflow_thrsh, !16, !"rx_ring_overflow_thrsh", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 39, i32 16}
!17 = !{ptr @__param_rx_ring_overflow_thrsh, !18, !"__param_rx_ring_overflow_thrsh", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 40, i32 1}
!19 = !{ptr @__UNIQUE_ID_rx_ring_overflow_thrshtype351, !18, !"__UNIQUE_ID_rx_ring_overflow_thrshtype351", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_rx_ring_overflow_thrsh352, !21, !"__UNIQUE_ID_rx_ring_overflow_thrsh352", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 41, i32 1}
!22 = !{ptr @mtu_max, !23, !"mtu_max", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 47, i32 14}
!24 = !{ptr @__param_mtu_max, !25, !"__param_mtu_max", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 70, i32 1}
!26 = !{ptr @__UNIQUE_ID_mtu_max353, !27, !"__UNIQUE_ID_mtu_max353", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 71, i32 1}
!28 = !{ptr @__param_rx_ring_order, !29, !"__param_rx_ring_order", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 99, i32 1}
!30 = !{ptr @__UNIQUE_ID_rx_ring_order354, !31, !"__UNIQUE_ID_rx_ring_order354", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 100, i32 1}
!32 = !{ptr @__param_tx_ring_order, !33, !"__param_tx_ring_order", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 101, i32 1}
!34 = !{ptr @__UNIQUE_ID_tx_ring_order355, !35, !"__UNIQUE_ID_tx_ring_order355", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 102, i32 1}
!36 = !{ptr @__param_bcast_ring_order, !37, !"__param_bcast_ring_order", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 103, i32 1}
!38 = !{ptr @__UNIQUE_ID_bcast_ring_order356, !39, !"__UNIQUE_ID_bcast_ring_order356", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 104, i32 1}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 486, i32 3}
!42 = !{ptr @__func__.wil_disconnect_worker, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 514, i32 2}
!45 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wil_set_recovery_state.__UNIQUE_ID_ddebug364, !44, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 619, i32 3}
!51 = !{ptr @__func__.wil_ring_init_tx, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 624, i32 3}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 628, i32 2}
!56 = !{ptr @wil_ring_init_tx.__UNIQUE_ID_ddebug366, !55, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 634, i32 3}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 689, i32 2}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @wil_priv_init.__UNIQUE_ID_ddebug369, !60, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!63 = !{ptr @wil_priv_init.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 693, i32 3}
!65 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wil_priv_init.__key.12, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 698, i32 3}
!68 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wil_priv_init.__key.14, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 702, i32 2}
!71 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @wil_priv_init.__key.16, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 703, i32 2}
!74 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wil_priv_init.__key.18, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 704, i32 2}
!77 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wil_priv_init.__key.20, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 705, i32 2}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wil_priv_init.__key.22, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 711, i32 2}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @wil_priv_init.__key.24, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 712, i32 2}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @wil_priv_init.__key.26, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 715, i32 2}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @wil_priv_init.__key.28, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 716, i32 2}
!92 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @wil_priv_init.__key.30, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 717, i32 2}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @wil_priv_init.__key.32, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 719, i32 2}
!98 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @wil_priv_init.__key.34, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 720, i32 2}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 722, i32 16}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 726, i32 20}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 799, i32 2}
!109 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wil6210_disconnect.__UNIQUE_ID_ddebug370, !108, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 819, i32 2}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @wil6210_disconnect_complete.__UNIQUE_ID_ddebug371, !112, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 827, i32 2}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @wil_priv_deinit.__UNIQUE_ID_ddebug372, !116, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1236, i32 2}
!121 = !{ptr @__func__.wil_refresh_fw_capabilities, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1293, i32 45}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1294, i32 10}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1303, i32 17}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1305, i32 17}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1467, i32 2}
!132 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @wil_abort_scan.__UNIQUE_ID_ddebug387, !131, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1502, i32 3}
!136 = !{ptr @__func__.wil_ps_update, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1508, i32 3}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1585, i32 2}
!141 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wil_clear_fw_log_addr.__UNIQUE_ID_ddebug392, !140, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1600, i32 2}
!145 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @wil_reset.__UNIQUE_ID_ddebug393, !144, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!147 = distinct !{null, !148, !"mac", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1606, i32 19}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1621, i32 3}
!151 = !{ptr @wil_reset.__UNIQUE_ID_ddebug394, !150, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1626, i32 3}
!154 = !{ptr @wil_reset.__UNIQUE_ID_ddebug395, !153, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1634, i32 4}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1665, i32 2}
!159 = !{ptr @wil_reset.__UNIQUE_ID_ddebug398, !158, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1706, i32 4}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1713, i32 3}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1756, i32 4}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1771, i32 4}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1784, i32 5}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1801, i32 2}
!172 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @wil_fw_error_recovery.__UNIQUE_ID_ddebug399, !171, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1804, i32 3}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1840, i32 3}
!178 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @__wil_up.__UNIQUE_ID_ddebug400, !177, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!180 = !{ptr @.str.72, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1844, i32 3}
!182 = !{ptr @__wil_up.__UNIQUE_ID_ddebug401, !181, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!183 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1848, i32 3}
!185 = !{ptr @__wil_up.__UNIQUE_ID_ddebug402, !184, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1852, i32 3}
!188 = !{ptr @__wil_up.__UNIQUE_ID_ddebug403, !187, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1856, i32 3}
!191 = !{ptr @__wil_up.__UNIQUE_ID_ddebug404, !190, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!192 = !{ptr @.str.76, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1867, i32 2}
!194 = !{ptr @__wil_up.__UNIQUE_ID_ddebug405, !193, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!195 = !{ptr @.str.77, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1881, i32 2}
!197 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @wil_up.__UNIQUE_ID_ddebug406, !196, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!199 = !{ptr @.str.79, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1903, i32 3}
!201 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @__wil_down.__UNIQUE_ID_ddebug407, !200, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1921, i32 2}
!205 = !{ptr @.str.82, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @wil_down.__UNIQUE_ID_ddebug408, !204, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!207 = !{ptr @.str.83, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1958, i32 2}
!209 = !{ptr @.str.84, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @wil_halp_vote.__UNIQUE_ID_ddebug409, !208, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!211 = !{ptr @.str.85, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1968, i32 4}
!213 = !{ptr @.str.86, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1973, i32 4}
!215 = !{ptr @wil_halp_vote.__UNIQUE_ID_ddebug410, !214, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!216 = !{ptr @.str.87, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1979, i32 2}
!218 = !{ptr @wil_halp_vote.__UNIQUE_ID_ddebug411, !217, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1994, i32 2}
!221 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @wil_halp_unvote.__UNIQUE_ID_ddebug412, !220, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!223 = !{ptr @.str.90, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1999, i32 3}
!225 = !{ptr @wil_halp_unvote.__UNIQUE_ID_ddebug413, !224, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 2002, i32 2}
!228 = !{ptr @wil_halp_unvote.__UNIQUE_ID_ddebug414, !227, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!229 = !{ptr @debug_fw, !230, !"debug_fw", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 23, i32 6}
!231 = !{ptr @oob_mode, !232, !"oob_mode", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 27, i32 11}
!233 = !{ptr @no_fw_recovery, !234, !"no_fw_recovery", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 32, i32 6}
!235 = !{ptr @rx_ring_order, !236, !"rx_ring_order", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 73, i32 13}
!237 = !{ptr @__param_str_debug_fw, !1, !"__param_str_debug_fw", i1 false, i1 false}
!238 = !{ptr @__param_str_oob_mode, !6, !"__param_str_oob_mode", i1 false, i1 false}
!239 = !{ptr @__param_str_no_fw_recovery, !11, !"__param_str_no_fw_recovery", i1 false, i1 false}
!240 = !{ptr @__param_str_rx_ring_overflow_thrsh, !18, !"__param_str_rx_ring_overflow_thrsh", i1 false, i1 false}
!241 = !{ptr @__param_str_mtu_max, !25, !"__param_str_mtu_max", i1 false, i1 false}
!242 = !{ptr @mtu_max_ops, !243, !"mtu_max_ops", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 65, i32 38}
!244 = !{ptr @__param_str_rx_ring_order, !29, !"__param_str_rx_ring_order", i1 false, i1 false}
!245 = !{ptr @ring_order_ops, !246, !"ring_order_ops", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 94, i32 38}
!247 = !{ptr @__param_str_tx_ring_order, !33, !"__param_str_tx_ring_order", i1 false, i1 false}
!248 = !{ptr @tx_ring_order, !249, !"tx_ring_order", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 74, i32 13}
!250 = !{ptr @__param_str_bcast_ring_order, !37, !"__param_str_bcast_ring_order", i1 false, i1 false}
!251 = !{ptr @bcast_ring_order, !252, !"bcast_ring_order", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 75, i32 13}
!253 = !{ptr @.str.92, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 208, i32 2}
!255 = !{ptr @.str.93, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @wil_ring_fini_tx.__UNIQUE_ID_ddebug357, !254, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!257 = !{ptr @init_completion.__key, !258, !"__key", i1 false, i1 false}
!258 = !{!"../include/linux/completion.h", i32 87, i32 2}
!259 = !{ptr @.str.94, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.95, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 533, i32 2}
!262 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @wil_fw_error_worker.__UNIQUE_ID_ddebug365, !261, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!264 = !{ptr @.str.97, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 536, i32 3}
!266 = !{ptr @.str.98, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 551, i32 3}
!268 = !{ptr @.str.99, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 558, i32 2}
!270 = !{ptr @.str.100, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 589, i32 3}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 592, i32 3}
!274 = !{ptr @.str.102, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 501, i32 3}
!276 = !{ptr @__func__.wil_wait_for_recovery, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.103, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 505, i32 3}
!279 = !{ptr @.str.104, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 508, i32 2}
!281 = !{ptr @.str.105, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 428, i32 2}
!283 = !{ptr @__func__._wil6210_disconnect, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.106, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 443, i32 3}
!286 = !{ptr @_wil6210_disconnect.__UNIQUE_ID_ddebug362, !285, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!287 = !{ptr @.str.107, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 448, i32 3}
!289 = !{ptr @_wil6210_disconnect.__UNIQUE_ID_ddebug363, !288, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!290 = !{ptr @.str.108, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 393, i32 2}
!292 = !{ptr @.str.109, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @wil_disconnect_cid.__UNIQUE_ID_ddebug361, !291, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!294 = !{ptr @.str.110, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 400, i32 3}
!296 = !{ptr @.str.111, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 313, i32 2}
!298 = !{ptr @__func__._wil6210_disconnect_complete, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.112, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 329, i32 3}
!301 = !{ptr @_wil6210_disconnect_complete.__UNIQUE_ID_ddebug359, !300, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!302 = !{ptr @.str.113, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 335, i32 3}
!304 = !{ptr @_wil6210_disconnect_complete.__UNIQUE_ID_ddebug360, !303, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!305 = !{ptr @.str.114, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 254, i32 2}
!307 = !{ptr @.str.115, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @wil_disconnect_cid_complete.__UNIQUE_ID_ddebug358, !306, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!309 = !{ptr @.str.116, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1393, i32 3}
!311 = !{ptr @__func__.wil_bl_crash_info, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.117, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1397, i32 3}
!314 = !{ptr @wil_bl_crash_info.__UNIQUE_ID_ddebug386, !313, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!315 = !{ptr @.str.118, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1112, i32 2}
!317 = !{ptr @.str.119, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @wil_target_reset.__UNIQUE_ID_ddebug384, !316, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!319 = !{ptr @.str.120, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1142, i32 3}
!321 = !{ptr @.str.121, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1065, i32 3}
!323 = !{ptr @__func__.wil_wait_device_ready_talyn_mb, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.122, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1071, i32 2}
!326 = !{ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug380, !325, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!327 = !{ptr @.str.123, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1089, i32 4}
!329 = !{ptr @.str.124, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1094, i32 2}
!331 = !{ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug381, !330, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!332 = !{ptr @.str.125, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1098, i32 2}
!334 = !{ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug382, !333, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!335 = !{ptr @.str.126, !333, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.127, !333, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.128, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1102, i32 2}
!339 = !{ptr @wil_wait_device_ready_talyn_mb.__UNIQUE_ID_ddebug383, !338, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!340 = !{ptr @.str.129, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 981, i32 3}
!342 = !{ptr @wil_wait_device_ready.__UNIQUE_ID_ddebug377, !341, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!343 = !{ptr @.str.130, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 989, i32 5}
!345 = !{ptr @wil_wait_device_ready.__UNIQUE_ID_ddebug378, !344, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!346 = !{ptr @.str.131, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 994, i32 5}
!348 = !{ptr @.str.132, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1000, i32 3}
!350 = !{ptr @wil_wait_device_ready.__UNIQUE_ID_ddebug379, !349, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!351 = !{ptr @.str.133, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1415, i32 3}
!353 = !{ptr @__func__.wil_get_otp_info, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.134, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1427, i32 3}
!356 = !{ptr @.str.135, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1332, i32 3}
!358 = !{ptr @__func__.wil_get_bl_info, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.136, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1336, i32 3}
!361 = !{ptr @.str.137, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1343, i32 3}
!363 = !{ptr @.str.138, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1348, i32 3}
!365 = !{ptr @.str.139, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1354, i32 3}
!367 = !{ptr @.str.140, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1364, i32 3}
!369 = !{ptr @.str.141, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 953, i32 2}
!371 = !{ptr @__func__.wil_set_oob_mode, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.142, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 968, i32 3}
!374 = !{ptr @.str.143, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 914, i32 3}
!376 = !{ptr @.str.144, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @wil_bl_prepare_halt.__UNIQUE_ID_ddebug376, !375, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!378 = !{ptr @.str.145, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 851, i32 3}
!380 = !{ptr @.str.146, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @wil_shutdown_bl.__UNIQUE_ID_ddebug373, !379, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!382 = !{ptr @.str.147, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 855, i32 2}
!384 = !{ptr @.str.148, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 876, i32 3}
!386 = !{ptr @.str.149, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @wil_freeze_bl.__UNIQUE_ID_ddebug374, !385, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!388 = !{ptr @.str.150, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 894, i32 3}
!390 = !{ptr @wil_freeze_bl.__UNIQUE_ID_ddebug375, !389, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!391 = !{ptr @.str.151, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1445, i32 3}
!393 = !{ptr @__func__.wil_wait_for_fw_ready, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.152, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1448, i32 3}
!396 = !{ptr @.str.153, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1564, i32 5}
!398 = !{ptr @__func__.wil_restore_vifs, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.154, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/wil6210/main.c", i32 1222, i32 3}
!401 = !{ptr @.str.155, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @wil_collect_fw_info.__UNIQUE_ID_ddebug385, !400, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!403 = !{i32 1, !"wchar_size", i32 2}
!404 = !{i32 1, !"min_enum_size", i32 4}
!405 = !{i32 8, !"branch-target-enforcement", i32 0}
!406 = !{i32 8, !"sign-return-address", i32 0}
!407 = !{i32 8, !"sign-return-address-all", i32 0}
!408 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!409 = !{i32 7, !"uwtable", i32 1}
!410 = !{i32 7, !"frame-pointer", i32 2}
!411 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!412 = !{i64 6100130}
!413 = !{!"branch_weights", i32 2000, i32 1}
!414 = !{i64 6099712}
!415 = !{i64 2148765639, i64 2148765644, i64 2148765657, i64 2148765701, i64 2148765735, i64 2148765756}
!416 = !{i8 0, i8 2}
!417 = !{!"branch_weights", i32 1, i32 2000}
!418 = !{i64 2157398385}
!419 = !{i64 2148298773, i64 2148298799, i64 2148298828, i64 2148298862, i64 2148298893, i64 2148298916}
!420 = !{i64 2157308080}
!421 = !{i64 2157308419}
!422 = !{i64 2157307633}
!423 = !{!"auto-init"}
