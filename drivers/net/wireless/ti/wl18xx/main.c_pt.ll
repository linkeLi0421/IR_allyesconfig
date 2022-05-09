; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.wl18xx_priv_conf = type { %struct.wl18xx_ht_settings, %struct.wl18xx_mac_and_phy_params, %struct.conf_ap_sleep_settings }
%struct.wl18xx_ht_settings = type { i8 }
%struct.wl18xx_mac_and_phy_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [150 x i8], i8, [7 x i8], i8, i8, [13 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [18 x i8], i8, i8, i8, i8, [1 x i8] }
%struct.conf_ap_sleep_settings = type { i8, i8, i8, i8 }
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_bcn_filt_rule = type { i8, i8, [3 x i8], i8, [2 x i8] }
%struct.conf_sig_weights = type { i8, i8, i8, i8 }
%struct.conf_itrim_settings = type <{ i8, i32 }>
%struct.conf_pm_config_settings = type <{ i32, i8 }>
%struct.conf_roam_trigger_settings = type { i16, i8, i8, i8, i8 }
%struct.conf_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i16, i32 }>
%struct.conf_sched_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16 }>
%struct.conf_ht_setting = type <{ i8, i8, i16, i8 }>
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wl18xx_clk_cfg = type { i32, i32, i32, i32, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wl18xx_priv = type { [740 x i8], %struct.wl18xx_priv_conf, i8, i32 }
%struct.wlcore_platdev_data = type { ptr, ptr, i8, i32, i32, i8 }
%struct.wilink_family_data = type { ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.wlcore_conf_header = type { i32, i32, i32 }
%struct.wlcore_conf_file = type { %struct.wlcore_conf_header, %struct.wlcore_conf, [0 x i8] }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1271_tx_hw_descr = type { i16, %union.anon.137, i32, i16, i16, i8, i8, i8, %union.anon.138 }
%union.anon.137 = type { %struct.wl127x_tx_mem }
%struct.wl127x_tx_mem = type { i8, i8 }
%union.anon.138 = type { i8 }
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
%struct.wl18xx_fw_status = type { i32, i8, i8, i8, i8, [32 x i32], i32, i32, i32, i32, i32, %struct.wl18xx_fw_packet_counters, i32, %struct.wl18xx_fw_status_priv }
%struct.wl18xx_fw_packet_counters = type { [4 x i8], [16 x i8], i8, i8, i8, i8 }
%struct.wl18xx_fw_status_priv = type { i8, [33 x i8], i32, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.wl_fw_status = type { i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, %struct.anon.136, i32, ptr }
%struct.anon.136 = type { ptr, ptr, i8, i8, i8, i8 }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.wl1271_rx_descriptor = type { i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.wl1271_static_data = type { [6 x i8], [2 x i8], [20 x i8], i32, [8 x [4 x i8]], [0 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.wl18xx_tx_mem = type { i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_wl18xx__369_2043_wl18xx_driver_init6 = internal global ptr @wl18xx_driver_init, section ".initcall6.init", align 4
@wl18xx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wl18xx_probe, ptr @wlcore_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wl18xx_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wl18xx_driver_exit = internal global ptr @wl18xx_driver_exit, section ".exitcall.exit", align 4
@__param_str_ht_mode = internal constant [15 x i8] c"wl18xx.ht_mode\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ht_mode_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_ht_mode = internal constant %struct.kernel_param { ptr @__param_str_ht_mode, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @ht_mode_param } }, section "__param", align 4
@__UNIQUE_ID_ht_modetype370 = internal constant [30 x i8] c"wl18xx.parmtype=ht_mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ht_mode371 = internal constant [50 x i8] c"wl18xx.parm=ht_mode:Force HT mode: wide or siso20\00", section ".modinfo", align 1
@__param_str_board_type = internal constant [18 x i8] c"wl18xx.board_type\00", align 1
@board_type_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_board_type = internal constant %struct.kernel_param { ptr @__param_str_board_type, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @board_type_param } }, section "__param", align 4
@__UNIQUE_ID_board_typetype372 = internal constant [33 x i8] c"wl18xx.parmtype=board_type:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_board_type373 = internal constant [73 x i8] c"wl18xx.parm=board_type:Board type: fpga, hdk (default), evb, com8 or dvp\00", section ".modinfo", align 1
@__param_str_checksum = internal constant [16 x i8] c"wl18xx.checksum\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@checksum_param = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_checksum = internal constant %struct.kernel_param { ptr @__param_str_checksum, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @checksum_param } }, section "__param", align 4
@__UNIQUE_ID_checksumtype374 = internal constant [30 x i8] c"wl18xx.parmtype=checksum:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_checksum375 = internal constant [70 x i8] c"wl18xx.parm=checksum:Enable TCP checksum: boolean (defaults to false)\00", section ".modinfo", align 1
@__param_str_dc2dc = internal constant [13 x i8] c"wl18xx.dc2dc\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dc2dc_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_dc2dc = internal constant %struct.kernel_param { ptr @__param_str_dc2dc, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @dc2dc_param } }, section "__param", align 4
@__UNIQUE_ID_dc2dctype376 = internal constant [26 x i8] c"wl18xx.parmtype=dc2dc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dc2dc377 = internal constant [53 x i8] c"wl18xx.parm=dc2dc:External DC2DC: u8 (defaults to 0)\00", section ".modinfo", align 1
@__param_str_n_antennas_2 = internal constant [20 x i8] c"wl18xx.n_antennas_2\00", align 1
@n_antennas_2_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_n_antennas_2 = internal constant %struct.kernel_param { ptr @__param_str_n_antennas_2, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @n_antennas_2_param } }, section "__param", align 4
@__UNIQUE_ID_n_antennas_2type378 = internal constant [33 x i8] c"wl18xx.parmtype=n_antennas_2:int\00", section ".modinfo", align 1
@__UNIQUE_ID_n_antennas_2379 = internal constant [79 x i8] c"wl18xx.parm=n_antennas_2:Number of installed 2.4GHz antennas: 1 (default) or 2\00", section ".modinfo", align 1
@__param_str_n_antennas_5 = internal constant [20 x i8] c"wl18xx.n_antennas_5\00", align 1
@n_antennas_5_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_n_antennas_5 = internal constant %struct.kernel_param { ptr @__param_str_n_antennas_5, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @n_antennas_5_param } }, section "__param", align 4
@__UNIQUE_ID_n_antennas_5type380 = internal constant [33 x i8] c"wl18xx.parmtype=n_antennas_5:int\00", section ".modinfo", align 1
@__UNIQUE_ID_n_antennas_5381 = internal constant [77 x i8] c"wl18xx.parm=n_antennas_5:Number of installed 5GHz antennas: 1 (default) or 2\00", section ".modinfo", align 1
@__param_str_low_band_component = internal constant [26 x i8] c"wl18xx.low_band_component\00", align 1
@low_band_component_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_low_band_component = internal constant %struct.kernel_param { ptr @__param_str_low_band_component, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @low_band_component_param } }, section "__param", align 4
@__UNIQUE_ID_low_band_componenttype382 = internal constant [39 x i8] c"wl18xx.parmtype=low_band_component:int\00", section ".modinfo", align 1
@__UNIQUE_ID_low_band_component383 = internal constant [72 x i8] c"wl18xx.parm=low_band_component:Low band component: u8 (default is 0x01)\00", section ".modinfo", align 1
@__param_str_low_band_component_type = internal constant [31 x i8] c"wl18xx.low_band_component_type\00", align 1
@low_band_component_type_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_low_band_component_type = internal constant %struct.kernel_param { ptr @__param_str_low_band_component_type, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @low_band_component_type_param } }, section "__param", align 4
@__UNIQUE_ID_low_band_component_typetype384 = internal constant [44 x i8] c"wl18xx.parmtype=low_band_component_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_low_band_component_type385 = internal constant [118 x i8] c"wl18xx.parm=low_band_component_type:Low band component type: u8 (default is 0x05 or 0x06 depending on the board_type)\00", section ".modinfo", align 1
@__param_str_high_band_component = internal constant [27 x i8] c"wl18xx.high_band_component\00", align 1
@high_band_component_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_high_band_component = internal constant %struct.kernel_param { ptr @__param_str_high_band_component, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @high_band_component_param } }, section "__param", align 4
@__UNIQUE_ID_high_band_componenttype386 = internal constant [40 x i8] c"wl18xx.parmtype=high_band_component:int\00", section ".modinfo", align 1
@__UNIQUE_ID_high_band_component387 = internal constant [75 x i8] c"wl18xx.parm=high_band_component:High band component: u8, (default is 0x01)\00", section ".modinfo", align 1
@__param_str_high_band_component_type = internal constant [32 x i8] c"wl18xx.high_band_component_type\00", align 1
@high_band_component_type_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_high_band_component_type = internal constant %struct.kernel_param { ptr @__param_str_high_band_component_type, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @high_band_component_type_param } }, section "__param", align 4
@__UNIQUE_ID_high_band_component_typetype388 = internal constant [45 x i8] c"wl18xx.parmtype=high_band_component_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_high_band_component_type389 = internal constant [84 x i8] c"wl18xx.parm=high_band_component_type:High band component type: u8 (default is 0x09)\00", section ".modinfo", align 1
@__param_str_pwr_limit_reference_11_abg = internal constant [34 x i8] c"wl18xx.pwr_limit_reference_11_abg\00", align 1
@pwr_limit_reference_11_abg_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_pwr_limit_reference_11_abg = internal constant %struct.kernel_param { ptr @__param_str_pwr_limit_reference_11_abg, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @pwr_limit_reference_11_abg_param } }, section "__param", align 4
@__UNIQUE_ID_pwr_limit_reference_11_abgtype390 = internal constant [47 x i8] c"wl18xx.parmtype=pwr_limit_reference_11_abg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pwr_limit_reference_11_abg391 = internal constant [83 x i8] c"wl18xx.parm=pwr_limit_reference_11_abg:Power limit reference: u8 (default is 0xc8)\00", section ".modinfo", align 1
@__param_str_num_rx_desc = internal constant [19 x i8] c"wl18xx.num_rx_desc\00", align 1
@num_rx_desc_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_num_rx_desc = internal constant %struct.kernel_param { ptr @__param_str_num_rx_desc, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @num_rx_desc_param } }, section "__param", align 4
@__UNIQUE_ID_num_rx_desctype392 = internal constant [32 x i8] c"wl18xx.parmtype=num_rx_desc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_rx_desc_param393 = internal constant [75 x i8] c"wl18xx.parm=num_rx_desc_param:Number of Rx descriptors: u8 (default is 32)\00", section ".modinfo", align 1
@__UNIQUE_ID_file394 = internal constant [50 x i8] c"wl18xx.file=drivers/net/wireless/ti/wl18xx/wl18xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [22 x i8] c"wl18xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author396 = internal constant [45 x i8] c"wl18xx.author=Luciano Coelho <coelho@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware397 = internal constant [48 x i8] c"wl18xx.firmware=ti-connectivity/wl18xx-fw-4.bin\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl18xx_driver\00", [18 x i8] zeroinitializer }, align 32
@wl18xx_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"wl18xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wl18xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013wlcore: ERROR can't allocate hw\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl18xx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl18xx/main.c\00", [58 x i8] zeroinitializer }, align 32
@wl18xx_probe._entry_ptr = internal global ptr @wl18xx_probe._entry, section ".printk_index", align 4
@wl18xx_ops = internal global { %struct.wlcore_ops, [60 x i8] } { %struct.wlcore_ops { ptr @wl18xx_setup, ptr @wl18xx_identify_chip, ptr null, ptr @wl18xx_boot, ptr @wl18xx_plt_init, ptr @wl18xx_trigger_cmd, ptr @wl18xx_ack_event, ptr @wl18xx_wait_for_event, ptr @wl18xx_process_mailbox_events, ptr @wl18xx_calc_tx_blocks, ptr @wl18xx_set_tx_desc_blocks, ptr @wl18xx_set_tx_desc_data_len, ptr @wl18xx_get_rx_buf_align, ptr null, ptr @wl18xx_get_rx_packet_len, ptr null, ptr @wl18xx_tx_immediate_completion, ptr @wl18xx_hw_init, ptr null, ptr @wl18xx_convert_fw_status, ptr @wl18xx_sta_get_ap_rate_mask, ptr @wl18xx_get_pg_ver, ptr @wl18xx_get_mac, ptr @wl18xx_set_tx_desc_csum, ptr @wl18xx_set_rx_csum, ptr @wl18xx_ap_get_mimo_wide_rate_mask, ptr @wl18xx_debugfs_add_files, ptr @wl18xx_handle_static_data, ptr @wl18xx_scan_start, ptr @wl18xx_scan_stop, ptr @wl18xx_sched_scan_start, ptr @wl18xx_scan_sched_scan_stop, ptr @wl18xx_get_spare_blocks, ptr @wl18xx_set_key, ptr @wl18xx_cmd_channel_switch, ptr @wl18xx_pre_pkt_send, ptr @wl18xx_sta_rc_update, ptr @wl18xx_set_peer_cap, ptr @wl18xx_convert_hwaddr, ptr @wl18xx_lnk_high_prio, ptr @wl18xx_lnk_low_prio, ptr @wl18xx_acx_interrupt_notify_config, ptr @wl18xx_acx_rx_ba_filter, ptr @wl18xx_acx_ap_sleep, ptr @wl18xx_cmd_smart_config_start, ptr @wl18xx_cmd_smart_config_stop, ptr @wl18xx_cmd_smart_config_set_group_key, ptr @wl18xx_cmd_set_cac, ptr @wl18xx_cmd_dfs_master_restart }, [60 x i8] zeroinitializer }, align 32
@wl18xx_ptable = internal constant { [6 x %struct.wlcore_partition_set], [32 x i8] } { [6 x %struct.wlcore_partition_set] [%struct.wlcore_partition_set { %struct.wlcore_partition { i32 81920, i32 0 }, %struct.wlcore_partition { i32 49151, i32 8454144 }, %struct.wlcore_partition zeroinitializer, %struct.wlcore_partition zeroinitializer }, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 20732, i32 8388608 }, %struct.wlcore_partition { i32 4096, i32 11535364 }, %struct.wlcore_partition { i32 1024, i32 12582912 }, %struct.wlcore_partition { i32 4128, i32 4199828 } }, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 780, i32 7340032 }, %struct.wlcore_partition { i32 83320, i32 8396800 }, %struct.wlcore_partition { i32 4096, i32 11535364 }, %struct.wlcore_partition { i32 1024, i32 12582912 } }, %struct.wlcore_partition_set zeroinitializer, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 73728, i32 10485760 }, %struct.wlcore_partition { i32 20480, i32 8417280 }, %struct.wlcore_partition { i32 45056, i32 8388608 }, %struct.wlcore_partition { i32 4128, i32 4199828 } }, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 92740, i32 -2137890816 }, %struct.wlcore_partition zeroinitializer, %struct.wlcore_partition zeroinitializer, %struct.wlcore_partition zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@wl18xx_rtable = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8396804, i32 8409320, i32 8409328, i32 8475884, i32 8475888, i32 8409208, i32 8409308, i32 8475900, i32 8475692, i32 11536308, i32 12582936, i32 12582920, i32 20728], [44 x i8] zeroinitializer }, align 32
@wl18xx_iface_combinations = internal constant { [2 x %struct.ieee80211_iface_combination], [56 x i8] } { [2 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @wl18xx_iface_limits, i32 2, i16 3, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.ieee80211_iface_combination { ptr @wl18xx_iface_ap_limits, i32 1, i16 2, i8 3, i8 0, i8 15, i8 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@wl18xx_band_rate_to_idx = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @wl18xx_rate_to_idx_2ghz, ptr @wl18xx_rate_to_idx_5ghz], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fpga\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hdk\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvp\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"evb\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"com8\00", [27 x i8] zeroinitializer }, align 32
@wl18xx_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wlcore: ERROR invalid board type '%s'\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl18xx_setup\00", [19 x i8] zeroinitializer }, align 32
@wl18xx_setup._entry_ptr = internal global ptr @wl18xx_setup._entry, section ".printk_index", align 4
@wl18xx_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wlcore: ERROR invalid board type '%d'\0A\00", [55 x i8] zeroinitializer }, align 32
@wl18xx_setup._entry_ptr.13 = internal global ptr @wl18xx_setup._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wide\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"siso20\00", [25 x i8] zeroinitializer }, align 32
@wl18xx_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.3, i32 1955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013wlcore: ERROR invalid ht_mode '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@wl18xx_setup._entry_ptr.19 = internal global ptr @wl18xx_setup._entry.17, section ".printk_index", align 4
@wl18xx_iface_limits = internal constant { [3 x %struct.ieee80211_iface_limit], [20 x i8] } { [3 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 2, i16 4 }, %struct.ieee80211_iface_limit { i16 1, i16 904 }, %struct.ieee80211_iface_limit { i16 1, i16 1024 }], [20 x i8] zeroinitializer }, align 32
@wl18xx_iface_ap_limits = internal constant { [3 x %struct.ieee80211_iface_limit], [20 x i8] } { [3 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 2, i16 8 }, %struct.ieee80211_iface_limit { i16 1, i16 128 }, %struct.ieee80211_iface_limit { i16 1, i16 1024 }], [20 x i8] zeroinitializer }, align 32
@wl18xx_rate_to_idx_2ghz = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0F\0E\0D\0C\0B\0A\09\08\07\06\05\04\03\02\01\00\0B\0A\09\08\FF\07\06\03\05\04\02\01\00", [35 x i8] zeroinitializer }, align 32
@wl18xx_rate_to_idx_5ghz = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0F\0E\0D\0C\0B\0A\09\08\07\06\05\04\03\02\01\00\07\06\05\04\FF\03\02\FF\01\00\FF\FF\FF", [35 x i8] zeroinitializer }, align 32
@wl18xx_conf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING falling back to default config\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl18xx_conf_init\00", [47 x i8] zeroinitializer }, align 32
@wl18xx_conf_init._entry_ptr = internal global ptr @wl18xx_conf_init._entry, section ".printk_index", align 4
@wl18xx_default_priv_conf = internal constant { %struct.wl18xx_priv_conf, [91 x i8] } { %struct.wl18xx_priv_conf { %struct.wl18xx_ht_settings { i8 1 }, %struct.wl18xx_mac_and_phy_params { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 5, i8 1, i8 9, i8 2, i8 1, [2 x i8] zeroinitializer, i8 0, i8 0, i8 4, i8 0, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, i8 1, i8 0, i8 0, i8 0, [150 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", i8 100, [7 x i8] c"\FF\FF\FF\FF\FF\FF\FF", i8 100, i8 0, [13 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 5, i8 0, i8 5, i8 2, i8 0, i8 -1, i8 -1, i8 -1, [10 x i8] zeroinitializer, [18 x i8] zeroinitializer, i8 1, i8 -1, i8 -1, i8 -1, [1 x i8] zeroinitializer }, %struct.conf_ap_sleep_settings zeroinitializer }, [91 x i8] zeroinitializer }, align 32
@wl18xx_load_conf_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wlcore: ERROR could not get configuration binary %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl18xx_load_conf_file\00", [42 x i8] zeroinitializer }, align 32
@wl18xx_load_conf_file._entry_ptr = internal global ptr @wl18xx_load_conf_file._entry, section ".printk_index", align 4
@wl18xx_load_conf_file._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013wlcore: ERROR %s configuration binary size is wrong, expected %zu got %zu\0A\00", [51 x i8] zeroinitializer }, align 32
@wl18xx_load_conf_file._entry_ptr.26 = internal global ptr @wl18xx_load_conf_file._entry.24, section ".printk_index", align 4
@wl18xx_load_conf_file._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013wlcore: ERROR configuration binary file magic number mismatch, expected 0x%0x got 0x%0x\0A\00", [37 x i8] zeroinitializer }, align 32
@wl18xx_load_conf_file._entry_ptr.29 = internal global ptr @wl18xx_load_conf_file._entry.27, section ".printk_index", align 4
@wl18xx_load_conf_file._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.3, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013wlcore: ERROR configuration binary file version not supported, expected 0x%08x got 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@wl18xx_load_conf_file._entry_ptr.32 = internal global ptr @wl18xx_load_conf_file._entry.30, section ".printk_index", align 4
@wl18xx_conf = internal constant { <{ { <{ [53 x i32], [14 x i32] }>, i8 }, %struct.conf_rx_settings, %struct.conf_tx_settings, <{ i8, i8, i8, i8, i8, i8, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }>, i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>, [228 x i8] } { <{ { <{ [53 x i32], [14 x i32] }>, i8 }, %struct.conf_rx_settings, %struct.conf_tx_settings, <{ i8, i8, i8, i8, i8, i8, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }>, i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }> <{ { <{ [53 x i32], [14 x i32] }>, i8 } { <{ [53 x i32], [14 x i32] }> <{ [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 170, i32 50, i32 0, i32 0, i32 0, i32 200, i32 0, i32 0, i32 0, i32 1, i32 0, i32 60, i32 0, i32 1200, i32 0, i32 1, i32 3, i32 6, i32 0, i32 0, i32 2, i32 0, i32 0, i32 3, i32 0, i32 2, i32 30], [14 x i32] zeroinitializer }>, i8 1 }, %struct.conf_rx_settings <{ i32 512000, i32 0, i16 15, i16 15, i16 2353, i16 0, i16 -1, i16 0, i16 600, i8 0 }>, %struct.conf_tx_settings <{ i8 0, %struct.conf_tx_rate_class <{ i32 0, i8 10, i8 10, i8 0 }>, i8 4, [4 x %struct.conf_tx_ac_category] [%struct.conf_tx_ac_category <{ i8 0, i8 15, i16 63, i8 3, i16 0 }>, %struct.conf_tx_ac_category <{ i8 1, i8 15, i16 63, i8 7, i16 0 }>, %struct.conf_tx_ac_category <{ i8 2, i8 15, i16 63, i8 1, i16 3008 }>, %struct.conf_tx_ac_category <{ i8 3, i8 15, i16 63, i8 1, i16 1504 }>], i8 100, i16 300, i8 4, [8 x %struct.conf_tx_tid] [%struct.conf_tx_tid <{ i8 0, i8 1, i8 0, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid <{ i8 1, i8 1, i8 1, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid <{ i8 2, i8 1, i8 2, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid <{ i8 3, i8 1, i8 3, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid zeroinitializer, %struct.conf_tx_tid zeroinitializer, %struct.conf_tx_tid zeroinitializer, %struct.conf_tx_tid zeroinitializer], i16 2352, i16 350, i16 10, i32 1, i32 8, i8 10, i8 10, i32 5000, i8 3, i8 30 }>, <{ i8, i8, i8, i8, i8, i8, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }>, i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }> <{ i8 2, i8 1, i8 4, i8 3, i8 1, i8 3, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }> <{ %struct.conf_bcn_filt_rule { i8 37, i8 2, [3 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer }, %struct.conf_bcn_filt_rule { i8 61, i8 1, [3 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer }, %struct.conf_bcn_filt_rule { i8 42, i8 1, [3 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer }, [29 x %struct.conf_bcn_filt_rule] zeroinitializer }>, i32 12, i32 400, i32 10000, i32 20000, i8 1, i8 10, %struct.conf_sig_weights zeroinitializer, i8 1, i8 50, i8 8, i8 16, i8 3, i16 1500, i8 0, i32 55000, i8 20, i8 -1, i8 0 }>, %struct.conf_itrim_settings <{ i8 0, i32 50000 }>, %struct.conf_pm_config_settings <{ i32 5000, i8 1 }>, %struct.conf_roam_trigger_settings { i16 1, i8 20, i8 10, i8 20, i8 10 }, %struct.conf_scan_settings <{ i32 7500, i32 30000, i32 25000, i32 50000, i32 100000, i32 150000, i16 2, i32 50000 }>, %struct.conf_sched_scan_settings <{ i32 7500, i32 22500, i32 2000, i32 350, i32 100000, i32 150000, i8 2, i8 -90, i8 0, i8 14, i16 30000 }>, %struct.conf_ht_setting <{ i8 32, i8 64, i16 10000, i8 63 }>, %struct.conf_memory_settings { i8 1, i8 1, i8 40, i8 40, i8 1, i8 45, i8 22, i8 27 }, %struct.conf_fm_coex { i8 1, i8 5, i8 -1, i8 12, i16 -1, i16 148, i32 -1, i16 -1, i8 -1, i8 -1 }, %struct.conf_rx_streaming_settings <{ i32 150, i8 1, i8 20, i8 0 }>, %struct.conf_fwlog { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.conf_rate_policy_settings { i16 32000, i16 8192, i16 2048, i16 4096, i16 8100, i8 5, i8 4, i8 10, i8 4, i8 13, i8 10, i8 8, i8 2, i8 12, [13 x i8] zeroinitializer }, %struct.conf_hangover_settings <{ i32 0, i8 20, i8 1, i8 1, i8 20, i8 1, i8 1, i8 2, i8 4, i8 1, i8 16 }>, %struct.conf_recovery_settings zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@wl18xx_mimo_ht_cap_2ghz = internal constant { <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, [42 x i8] } { <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 48, i8 1, i8 1, i8 7, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -1, i8 -1, [8 x i8] zeroinitializer }>, i16 -28672, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, [42 x i8] zeroinitializer }, align 32
@wl18xx_siso40_ht_cap_2ghz = internal constant { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, [42 x i8] } { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 4210, i8 1, i8 1, i8 7, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 -27136, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, [42 x i8] zeroinitializer }, align 32
@wl18xx_siso40_ht_cap_5ghz = internal constant { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, [42 x i8] } { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 114, i8 1, i8 1, i8 7, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 -27136, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, [42 x i8] zeroinitializer }, align 32
@wl18xx_siso20_ht_cap = internal constant { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, [42 x i8] } { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 48, i8 1, i8 1, i8 7, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 18432, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, [42 x i8] zeroinitializer }, align 32
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl18xx_identify_chip.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl18xx_identify_chip\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: chip id 0x%x (185x PG20)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti-connectivity/wl18xx-fw-4.bin\00", [32 x i8] zeroinitializer }, align 32
@wl18xx_identify_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014wlcore: WARNING chip id 0x%x (185x PG10) is deprecated\0A\00", [38 x i8] zeroinitializer }, align 32
@wl18xx_identify_chip._entry_ptr = internal global ptr @wl18xx_identify_chip._entry, section ".printk_index", align 4
@wl18xx_identify_chip._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014wlcore: WARNING unsupported chip id: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@wl18xx_identify_chip._entry_ptr.45 = internal global ptr @wl18xx_identify_chip._entry.43, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wl18xx_set_clk.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl18xx_set_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wlcore: clock freq %d (%d, %d, %d, %d, %s)\0A\00", [52 x i8] zeroinitializer }, align 32
@wl18xx_clk_table = internal constant { [10 x %struct.wl18xx_clk_cfg], [56 x i8] } { [10 x %struct.wl18xx_clk_cfg] [%struct.wl18xx_clk_cfg zeroinitializer, %struct.wl18xx_clk_cfg { i32 7, i32 104, i32 801, i32 4, i8 1 }, %struct.wl18xx_clk_cfg { i32 9, i32 132, i32 3751, i32 4, i8 1 }, %struct.wl18xx_clk_cfg { i32 7, i32 100, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 8, i32 100, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 13, i32 120, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 9, i32 132, i32 3751, i32 4, i8 1 }, %struct.wl18xx_clk_cfg { i32 7, i32 100, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 8, i32 100, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 13, i32 120, i32 0, i32 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"swallow\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spit\00", [27 x i8] zeroinitializer }, align 32
@wl18xx_clk_table_coex = internal constant { [10 x %struct.wl18xx_clk_cfg], [56 x i8] } { [10 x %struct.wl18xx_clk_cfg] [%struct.wl18xx_clk_cfg zeroinitializer, %struct.wl18xx_clk_cfg { i32 8, i32 121, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 8, i32 120, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 8, i32 117, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 10, i32 128, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 11, i32 104, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 8, i32 120, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 8, i32 117, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 10, i32 128, i32 0, i32 0, i8 0 }, %struct.wl18xx_clk_cfg { i32 11, i32 104, i32 0, i32 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ti/wl18xx/../wlcore/io.h\00", [50 x i8] zeroinitializer }, align 32
@wl18xx_pre_upload.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl18xx_pre_upload\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wlcore: chip id 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@wl18xx_pre_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016wlcore: using inverted interrupt logic: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@wl18xx_pre_upload._entry_ptr = internal global ptr @wl18xx_pre_upload._entry, section ".printk_index", align 4
@wl18xx_plt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013wlcore: ERROR wl18xx_plt_init: PLT FEM_DETECT not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl18xx_plt_init\00", [16 x i8] zeroinitializer }, align 32
@wl18xx_plt_init._entry_ptr = internal global ptr @wl18xx_plt_init._entry, section ".printk_index", align 4
@wl18xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl18xx_set_tx_desc_data_len\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"wlcore: tx_fill_hdr: hlid: %d len: %d life: %d mem: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 1, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl18xx_sta_get_ap_rate_mask\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wlcore: using wide channel rate mask\0A\00", [58 x i8] zeroinitializer }, align 32
@wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.58, ptr @.str.3, ptr @.str.60, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wlcore: using MIMO channel rate mask\0A\00", [58 x i8] zeroinitializer }, align 32
@wl18xx_get_pg_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016wlcore: wl18xx HW: %s, PG %d.%d (ROM 0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl18xx_get_pg_ver\00", [46 x i8] zeroinitializer }, align 32
@wl18xx_get_pg_ver._entry_ptr = internal global ptr @wl18xx_get_pg_ver._entry, section ".printk_index", align 4
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"183xH\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"183x or 180x\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"187xH\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"187x\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RDL11 - Not Supported\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"180xD\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RDL13 - Not Supported (1893Q)\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"18xxQ\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNTRIMMED\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@wl18xx_get_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\014wlcore: WARNING MAC address from fuse not available, using random locally administered addresses.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl18xx_get_mac\00", [17 x i8] zeroinitializer }, align 32
@wl18xx_get_mac._entry_ptr = internal global ptr @wl18xx_get_mac._entry, section ".printk_index", align 4
@wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.75, ptr @.str.3, ptr @.str.59, i8 1, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wl18xx_ap_get_mimo_wide_rate_mask\00", [62 x i8] zeroinitializer }, align 32
@wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wlcore: using MIMO rate mask\0A\00", [34 x i8] zeroinitializer }, align 32
@wl18xx_handle_static_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016wlcore: PHY firmware version: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl18xx_handle_static_data\00", [38 x i8] zeroinitializer }, align 32
@wl18xx_handle_static_data._entry_ptr = internal global ptr @wl18xx_handle_static_data._entry, section ".printk_index", align 4
@wl18xx_set_key.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl18xx_set_key\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wlcore: extra spare keys before: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wl18xx_set_key.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.79, ptr @.str.3, ptr @.str.81, i8 1, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: extra spare keys after: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wl18xx_sta_rc_update.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl18xx_sta_rc_update\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wlcore: mac80211 sta_rc_update wide %d\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.wl18xx_rdl_name = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.71, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 100860161, i64 100860177]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1339905]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"wl18xx_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2034, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"ht_mode_param\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 37, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"board_type_param\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 38, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"checksum_param\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 39, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"dc2dc_param\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 43, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"n_antennas_2_param\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 44, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"n_antennas_5_param\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 45, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"low_band_component_param\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 46, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"low_band_component_type_param\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 47, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"high_band_component_param\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 48, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"high_band_component_type_param\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 49, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [33 x i8] c"pwr_limit_reference_11_abg_param\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 50, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"num_rx_desc_param\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 40, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2039, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"wl18xx_id_table\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2028, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2008, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"wl18xx_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1706, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"wl18xx_ptable\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 580, i32 42 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"wl18xx_rtable\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 614, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"wl18xx_iface_combinations\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1851, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"wl18xx_band_rate_to_idx\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 126, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1904, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1906, i32 40 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1908, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1910, i32 40 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1912, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1915, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1922, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1948, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1950, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1952, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1955, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"wl18xx_iface_limits\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1813, i32 43 }
@___asan_gen_.208 = private unnamed_addr constant [23 x i8] c"wl18xx_iface_ap_limits\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1833, i32 43 }
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"wl18xx_rate_to_idx_2ghz\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 52, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"wl18xx_rate_to_idx_5ghz\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 89, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1446, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"wl18xx_default_priv_conf\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 508, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1400, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1406, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1415, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1423, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [12 x i8] c"wl18xx_conf\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 164, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant [24 x i8] c"wl18xx_mimo_ht_cap_2ghz\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1800, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant [26 x i8] c"wl18xx_siso40_ht_cap_2ghz\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1756, i32 36 }
@___asan_gen_.265 = private unnamed_addr constant [26 x i8] c"wl18xx_siso40_ht_cap_5ghz\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1771, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"wl18xx_siso20_ht_cap\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1786, i32 36 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 667, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 669, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 686, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 692, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"wl18xx_clk_table\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 646, i32 36 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 725, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [22 x i8] c"wl18xx_clk_table_coex\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 634, i32 36 }
@___asan_gen_.314 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/ti/wl18xx/../wlcore/io.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 51, i32 6 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 886, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 923, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1464, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1091, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1278, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1284, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1378, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1320, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1322, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1324, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1326, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1328, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1330, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1332, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1334, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1336, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1338, i32 10 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1504, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1296, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1305, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1525, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1550, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1576, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.428 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl18xx/main.c\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1618, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [29 x i8] c"switch.table.wl18xx_rdl_name\00", align 1
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author396, ptr @__UNIQUE_ID_board_type373, ptr @__UNIQUE_ID_board_typetype372, ptr @__UNIQUE_ID_checksum375, ptr @__UNIQUE_ID_checksumtype374, ptr @__UNIQUE_ID_dc2dc377, ptr @__UNIQUE_ID_dc2dctype376, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_firmware397, ptr @__UNIQUE_ID_high_band_component387, ptr @__UNIQUE_ID_high_band_component_type389, ptr @__UNIQUE_ID_high_band_component_typetype388, ptr @__UNIQUE_ID_high_band_componenttype386, ptr @__UNIQUE_ID_ht_mode371, ptr @__UNIQUE_ID_ht_modetype370, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_low_band_component383, ptr @__UNIQUE_ID_low_band_component_type385, ptr @__UNIQUE_ID_low_band_component_typetype384, ptr @__UNIQUE_ID_low_band_componenttype382, ptr @__UNIQUE_ID_n_antennas_2379, ptr @__UNIQUE_ID_n_antennas_2type378, ptr @__UNIQUE_ID_n_antennas_5381, ptr @__UNIQUE_ID_n_antennas_5type380, ptr @__UNIQUE_ID_num_rx_desc_param393, ptr @__UNIQUE_ID_num_rx_desctype392, ptr @__UNIQUE_ID_pwr_limit_reference_11_abg391, ptr @__UNIQUE_ID_pwr_limit_reference_11_abgtype390, ptr @__exitcall_wl18xx_driver_exit, ptr @__initcall__kmod_wl18xx__369_2043_wl18xx_driver_init6, ptr @__param_board_type, ptr @__param_checksum, ptr @__param_dc2dc, ptr @__param_high_band_component, ptr @__param_high_band_component_type, ptr @__param_ht_mode, ptr @__param_low_band_component, ptr @__param_low_band_component_type, ptr @__param_n_antennas_2, ptr @__param_n_antennas_5, ptr @__param_num_rx_desc, ptr @__param_pwr_limit_reference_11_abg, ptr @wl18xx_conf_init._entry, ptr @wl18xx_conf_init._entry_ptr, ptr @wl18xx_driver_exit, ptr @wl18xx_get_mac._entry, ptr @wl18xx_get_mac._entry_ptr, ptr @wl18xx_get_pg_ver._entry, ptr @wl18xx_get_pg_ver._entry_ptr, ptr @wl18xx_handle_static_data._entry, ptr @wl18xx_handle_static_data._entry_ptr, ptr @wl18xx_identify_chip._entry, ptr @wl18xx_identify_chip._entry.43, ptr @wl18xx_identify_chip._entry_ptr, ptr @wl18xx_identify_chip._entry_ptr.45, ptr @wl18xx_load_conf_file._entry, ptr @wl18xx_load_conf_file._entry.24, ptr @wl18xx_load_conf_file._entry.27, ptr @wl18xx_load_conf_file._entry.30, ptr @wl18xx_load_conf_file._entry_ptr, ptr @wl18xx_load_conf_file._entry_ptr.26, ptr @wl18xx_load_conf_file._entry_ptr.29, ptr @wl18xx_load_conf_file._entry_ptr.32, ptr @wl18xx_plt_init._entry, ptr @wl18xx_plt_init._entry_ptr, ptr @wl18xx_pre_upload._entry, ptr @wl18xx_pre_upload._entry_ptr, ptr @wl18xx_probe._entry, ptr @wl18xx_probe._entry_ptr, ptr @wl18xx_setup._entry, ptr @wl18xx_setup._entry.11, ptr @wl18xx_setup._entry.17, ptr @wl18xx_setup._entry_ptr, ptr @wl18xx_setup._entry_ptr.13, ptr @wl18xx_setup._entry_ptr.19, ptr @wl18xx_driver, ptr @ht_mode_param, ptr @board_type_param, ptr @checksum_param, ptr @dc2dc_param, ptr @n_antennas_2_param, ptr @n_antennas_5_param, ptr @low_band_component_param, ptr @low_band_component_type_param, ptr @high_band_component_param, ptr @high_band_component_type_param, ptr @pwr_limit_reference_11_abg_param, ptr @num_rx_desc_param, ptr @.str, ptr @wl18xx_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wl18xx_ops, ptr @wl18xx_ptable, ptr @wl18xx_rtable, ptr @wl18xx_iface_combinations, ptr @wl18xx_band_rate_to_idx, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @wl18xx_iface_limits, ptr @wl18xx_iface_ap_limits, ptr @wl18xx_rate_to_idx_2ghz, ptr @wl18xx_rate_to_idx_5ghz, ptr @.str.20, ptr @.str.21, ptr @wl18xx_default_priv_conf, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @wl18xx_conf, ptr @wl18xx_mimo_ht_cap_2ghz, ptr @wl18xx_siso40_ht_cap_2ghz, ptr @wl18xx_siso40_ht_cap_5ghz, ptr @wl18xx_siso20_ht_cap, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @wl18xx_clk_table, ptr @.str.48, ptr @.str.49, ptr @wl18xx_clk_table_coex, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @switch.table.wl18xx_rdl_name], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_mode_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_type_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checksum_param to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc2dc_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_antennas_2_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_antennas_5_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_band_component_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_band_component_type_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @high_band_component_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @high_band_component_type_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_limit_reference_11_abg_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rx_desc_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_ptable to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_rtable to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_iface_combinations to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_band_rate_to_idx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_iface_limits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_iface_ap_limits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_rate_to_idx_2ghz to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_rate_to_idx_5ghz to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_conf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_default_priv_conf to i32), i32 293, i32 384, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_load_conf_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_load_conf_file._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_load_conf_file._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_load_conf_file._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_conf to i32), i32 924, i32 1152, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_mimo_ht_cap_2ghz to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_siso40_ht_cap_2ghz to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_siso40_ht_cap_5ghz to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_siso20_ht_cap to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_identify_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_identify_chip._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_clk_table to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_clk_table_coex to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_pre_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_plt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_get_pg_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_get_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_handle_static_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wl18xx_rdl_name to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wl18xx_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl18xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @wl18xx_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wlcore_alloc_hw(i32 noundef 1040, i32 noundef 53248, i32 noundef 180) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %ops = getelementptr inbounds %struct.wl1271, ptr %2, i32 0, i32 114
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wl18xx_ops, ptr %ops, align 4
  %ptable = getelementptr inbounds %struct.wl1271, ptr %2, i32 0, i32 115
  %4 = ptrtoint ptr %ptable to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wl18xx_ptable, ptr %ptable, align 8
  %call4 = tail call i32 @wlcore_probe(ptr noundef %2, ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %out_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @wlcore_free_hw(ptr noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %0, %do.end ], [ %call4, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wlcore_alloc_hw(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_setup(ptr noundef %wl) #2 align 64 {
entry:
  %fw.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %rtable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %2 = ptrtoint ptr %rtable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @wl18xx_rtable, ptr %rtable, align 4
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %3 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %num_tx_desc, align 8
  %num_rx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 127
  %4 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %num_rx_desc, align 4
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %5 = ptrtoint ptr %num_links to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %num_links, align 8
  %max_ap_stations = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 129
  %6 = ptrtoint ptr %max_ap_stations to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %max_ap_stations, align 1
  %iface_combinations = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 147
  %7 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wl18xx_iface_combinations, ptr %iface_combinations, align 8
  %n_iface_combinations = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 148
  %8 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %n_iface_combinations, align 4
  %num_mac_addr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 143
  %9 = ptrtoint ptr %num_mac_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_mac_addr, align 4
  %band_rate_to_idx = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 130
  %10 = ptrtoint ptr %band_rate_to_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wl18xx_band_rate_to_idx, ptr %band_rate_to_idx, align 4
  %hw_tx_rate_tbl_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 131
  %11 = ptrtoint ptr %hw_tx_rate_tbl_size to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 29, ptr %hw_tx_rate_tbl_size, align 8
  %hw_min_ht_rate = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 132
  %12 = ptrtoint ptr %hw_min_ht_rate to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 15, ptr %hw_min_ht_rate, align 1
  %fw_status_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 136
  %13 = ptrtoint ptr %fw_status_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 236, ptr %fw_status_len, align 8
  %fw_status_priv_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 137
  %14 = ptrtoint ptr %fw_status_priv_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 52, ptr %fw_status_priv_len, align 4
  %fw_stats_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 2
  %15 = ptrtoint ptr %fw_stats_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1100, ptr %fw_stats_len, align 8
  %static_data_priv_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 139
  %16 = ptrtoint ptr %static_data_priv_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %static_data_priv_len, align 4
  %17 = load i32, ptr @num_rx_desc_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.not = icmp eq i32 %17, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_rx_desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %pdev1.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 4
  %21 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev1.i, align 8
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i.i, align 8
  %conf.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94
  %conf4.i = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1
  %family.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %family.i, align 4
  %cfg_name.i = getelementptr inbounds %struct.wilink_family_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %cfg_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #15
  %29 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !311
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef %28, ptr noundef %20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %wl18xx_load_conf_file.exit.thread.i, label %if.end.i.i

wl18xx_load_conf_file.exit.thread.i:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %28, i32 noundef %call.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #15
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end
  %30 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1229, i32 %33)
  %cmp2.not.i.i = icmp eq i32 %33, 1229
  br i1 %cmp2.not.i.i, label %if.end10.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %28, i32 noundef 1229, i32 noundef %33) #18
  br label %wl18xx_load_conf_file.exit.thread3.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -905912048, i32 %37)
  %cmp11.not.i.i = icmp eq i32 %37, -905912048
  br i1 %cmp11.not.i.i, label %if.end20.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 283181258, i32 noundef %37) #18
  br label %wl18xx_load_conf_file.exit.thread3.i

if.end20.i.i:                                     ; preds = %if.end10.i.i
  %version.i.i = getelementptr inbounds %struct.wlcore_conf_header, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %version.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 117442304, i32 %39)
  %cmp22.not.i.i = icmp eq i32 %39, 117442304
  br i1 %cmp22.not.i.i, label %wl18xx_load_conf_file.exit.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 458759, i32 noundef %39) #18
  br label %wl18xx_load_conf_file.exit.thread3.i

wl18xx_load_conf_file.exit.thread3.i:             ; preds = %do.end26.i.i, %do.end15.i.i, %do.end6.i.i
  %40 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %41) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #15
  br label %do.end.i

wl18xx_load_conf_file.exit.i:                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %core.i.i = getelementptr inbounds %struct.wlcore_conf_file, ptr %35, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %conf.i, ptr %core.i.i, i32 924)
  %priv.i.i = getelementptr inbounds %struct.wlcore_conf_file, ptr %35, i32 0, i32 2
  %43 = call ptr @memcpy(ptr %conf4.i, ptr %priv.i.i, i32 293)
  call void @release_firmware(ptr noundef %31) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #15
  br label %wl18xx_conf_init.exit

do.end.i:                                         ; preds = %wl18xx_load_conf_file.exit.thread3.i, %wl18xx_load_conf_file.exit.thread.i
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  %44 = call ptr @memcpy(ptr %conf.i, ptr @wl18xx_conf, i32 924)
  %45 = call ptr @memcpy(ptr %conf4.i, ptr @wl18xx_default_priv_conf, i32 293)
  br label %wl18xx_conf_init.exit

wl18xx_conf_init.exit:                            ; preds = %do.end.i, %wl18xx_load_conf_file.exit.i
  %46 = load ptr, ptr @board_type_param, align 4
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %wl18xx_conf_init.exit.if.end53_crit_edge, label %if.then12

wl18xx_conf_init.exit.if.end53_crit_edge:         ; preds = %wl18xx_conf_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then12:                                        ; preds = %wl18xx_conf_init.exit
  %call13 = call i32 @strcmp(ptr noundef nonnull %46, ptr noundef nonnull dereferenceable(5) @.str.4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end53.sink.split_crit_edge, label %if.else

if.then12.if.end53.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.sink.split

if.else:                                          ; preds = %if.then12
  %call16 = call i32 @strcmp(ptr noundef nonnull %46, ptr noundef nonnull dereferenceable(4) @.str.5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.if.end53.sink.split_crit_edge, label %if.else22

if.else.if.end53.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.sink.split

if.else22:                                        ; preds = %if.else
  %call23 = call i32 @strcmp(ptr noundef nonnull %46, ptr noundef nonnull dereferenceable(4) @.str.6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else22.if.end53.sink.split_crit_edge, label %if.else29

if.else22.if.end53.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.sink.split

if.else29:                                        ; preds = %if.else22
  %call30 = call i32 @strcmp(ptr noundef nonnull %46, ptr noundef nonnull dereferenceable(4) @.str.7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else29.if.end53.sink.split_crit_edge, label %if.else36

if.else29.if.end53.sink.split_crit_edge:          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.sink.split

if.else36:                                        ; preds = %if.else29
  %call37 = call i32 @strcmp(ptr noundef nonnull %46, ptr noundef nonnull dereferenceable(5) @.str.8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else36.if.end53.sink.split_crit_edge, label %do.end46

if.else36.if.end53.sink.split_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.sink.split

do.end46:                                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %46) #18
  br label %cleanup

if.end53.sink.split:                              ; preds = %if.else36.if.end53.sink.split_crit_edge, %if.else29.if.end53.sink.split_crit_edge, %if.else22.if.end53.sink.split_crit_edge, %if.else.if.end53.sink.split_crit_edge, %if.then12.if.end53.sink.split_crit_edge
  %.sink = phi i8 [ 3, %if.then12.if.end53.sink.split_crit_edge ], [ 2, %if.else.if.end53.sink.split_crit_edge ], [ 1, %if.else22.if.end53.sink.split_crit_edge ], [ 0, %if.else29.if.end53.sink.split_crit_edge ], [ 4, %if.else36.if.end53.sink.split_crit_edge ]
  %board_type = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 34
  %47 = ptrtoint ptr %board_type to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink, ptr %board_type, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %wl18xx_conf_init.exit.if.end53_crit_edge
  %board_type56 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 34
  %48 = ptrtoint ptr %board_type56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %board_type56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %49)
  %cmp57 = icmp ugt i8 %49, 4
  br i1 %cmp57, label %do.end62, label %if.end69

do.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %49 to i32
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #18
  br label %cleanup

if.end69:                                         ; preds = %if.end53
  %50 = load i32, ptr @low_band_component_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp70.not = icmp eq i32 %50, -1
  br i1 %cmp70.not, label %if.end69.if.end76_crit_edge, label %if.then72

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %conv73 = trunc i32 %50 to i8
  %low_band_component = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 6
  %51 = ptrtoint ptr %low_band_component to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv73, ptr %low_band_component, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end69.if.end76_crit_edge
  %52 = load i32, ptr @low_band_component_type_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp77.not = icmp eq i32 %52, -1
  br i1 %cmp77.not, label %if.end76.if.end83_crit_edge, label %if.then79

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %conv80 = trunc i32 %52 to i8
  %low_band_component_type = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 7
  %53 = ptrtoint ptr %low_band_component_type to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv80, ptr %low_band_component_type, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end76.if.end83_crit_edge
  %54 = load i32, ptr @high_band_component_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp84.not = icmp eq i32 %54, -1
  br i1 %cmp84.not, label %if.end83.if.end90_crit_edge, label %if.then86

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  %conv87 = trunc i32 %54 to i8
  %high_band_component = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 8
  %55 = ptrtoint ptr %high_band_component to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv87, ptr %high_band_component, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end83.if.end90_crit_edge
  %56 = load i32, ptr @high_band_component_type_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp91.not = icmp eq i32 %56, -1
  br i1 %cmp91.not, label %if.end90.if.end97_crit_edge, label %if.then93

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %conv94 = trunc i32 %56 to i8
  %high_band_component_type = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 9
  %57 = ptrtoint ptr %high_band_component_type to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv94, ptr %high_band_component_type, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end90.if.end97_crit_edge
  %58 = load i32, ptr @pwr_limit_reference_11_abg_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp98.not = icmp eq i32 %58, -1
  br i1 %cmp98.not, label %if.end97.if.end104_crit_edge, label %if.then100

if.end97.if.end104_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %conv101 = trunc i32 %58 to i8
  %pwr_limit_reference_11_abg = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 25
  %59 = ptrtoint ptr %pwr_limit_reference_11_abg to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv101, ptr %pwr_limit_reference_11_abg, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end97.if.end104_crit_edge
  %60 = load i32, ptr @n_antennas_2_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp105.not = icmp eq i32 %60, -1
  br i1 %cmp105.not, label %if.end104.if.end111_crit_edge, label %if.then107

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  %conv108 = trunc i32 %60 to i8
  %number_of_assembled_ant2_4 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 10
  %61 = ptrtoint ptr %number_of_assembled_ant2_4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv108, ptr %number_of_assembled_ant2_4, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end104.if.end111_crit_edge
  %62 = load i32, ptr @n_antennas_5_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp112.not = icmp eq i32 %62, -1
  br i1 %cmp112.not, label %if.end111.if.end118_crit_edge, label %if.then114

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  %conv115 = trunc i32 %62 to i8
  %number_of_assembled_ant5 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 11
  %63 = ptrtoint ptr %number_of_assembled_ant5 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv115, ptr %number_of_assembled_ant5, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.end111.if.end118_crit_edge
  %64 = load i32, ptr @dc2dc_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp119.not = icmp eq i32 %64, -1
  br i1 %cmp119.not, label %if.end118.if.end125_crit_edge, label %if.then121

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  %conv122 = trunc i32 %64 to i8
  %external_pa_dc2dc = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 13
  %65 = ptrtoint ptr %external_pa_dc2dc to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv122, ptr %external_pa_dc2dc, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.end118.if.end125_crit_edge
  %66 = load ptr, ptr @ht_mode_param, align 4
  %tobool126.not = icmp eq ptr %66, null
  br i1 %tobool126.not, label %if.end155, label %if.then127

if.then127:                                       ; preds = %if.end125
  %call128 = call i32 @strcmp(ptr noundef nonnull %66, ptr noundef nonnull dereferenceable(8) @.str.14) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end155.thread, label %if.else132

if.end155.thread:                                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %conf4.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %conf4.i, align 4
  br label %if.then162

if.else132:                                       ; preds = %if.then127
  %call133 = call i32 @strcmp(ptr noundef nonnull %66, ptr noundef nonnull dereferenceable(5) @.str.15) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end155.thread262, label %if.else139

if.end155.thread262:                              ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %conf4.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %conf4.i, align 4
  br label %if.then174

if.else139:                                       ; preds = %if.else132
  %call140 = call i32 @strcmp(ptr noundef nonnull %66, ptr noundef nonnull dereferenceable(7) @.str.16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end155.thread263, label %do.end149

if.end155.thread263:                              ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %conf4.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %conf4.i, align 4
  br label %if.then182

do.end149:                                        ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #17
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %66) #18
  br label %cleanup

if.end155:                                        ; preds = %if.end125
  %70 = ptrtoint ptr %conf4.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %.pr = load i8, ptr %conf4.i, align 4
  %71 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr, label %if.end155.if.end185_crit_edge [
    i8 0, label %if.end155.if.then162_crit_edge
    i8 1, label %if.end155.if.then174_crit_edge
    i8 2, label %if.end155.if.then182_crit_edge
  ]

if.end155.if.then182_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then182

if.end155.if.then174_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then174

if.end155.if.then162_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then162

if.end155.if.end185_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.then162:                                       ; preds = %if.end155.if.then162_crit_edge, %if.end155.thread
  %72 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv1, align 4
  %number_of_assembled_ant2_4.i = getelementptr inbounds %struct.wl18xx_priv, ptr %73, i32 0, i32 1, i32 1, i32 10
  %74 = ptrtoint ptr %number_of_assembled_ant2_4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %number_of_assembled_ant2_4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp.i = icmp ugt i8 %75, 1
  br i1 %cmp.i, label %wl18xx_is_mimo_supported.exit, label %if.then162.if.else165_crit_edge

if.then162.if.else165_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else165

wl18xx_is_mimo_supported.exit:                    ; preds = %if.then162
  %conf.i255 = getelementptr inbounds %struct.wl18xx_priv, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %conf.i255 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %conf.i255, align 4
  %78 = add i8 %77, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %78)
  %79 = icmp ult i8 %78, -2
  br i1 %79, label %if.then164, label %wl18xx_is_mimo_supported.exit.if.else165_crit_edge

wl18xx_is_mimo_supported.exit.if.else165_crit_edge: ; preds = %wl18xx_is_mimo_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else165

if.then164:                                       ; preds = %wl18xx_is_mimo_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 0
  %80 = call ptr @memcpy(ptr %arrayidx.i, ptr @wl18xx_mimo_ht_cap_2ghz, i32 22)
  br label %if.end166

if.else165:                                       ; preds = %wl18xx_is_mimo_supported.exit.if.else165_crit_edge, %if.then162.if.else165_crit_edge
  %arrayidx.i256 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 0
  %81 = call ptr @memcpy(ptr %arrayidx.i256, ptr @wl18xx_siso40_ht_cap_2ghz, i32 22)
  br label %if.end166

if.end166:                                        ; preds = %if.else165, %if.then164
  %arrayidx.i257 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 1
  %82 = call ptr @memcpy(ptr %arrayidx.i257, ptr @wl18xx_siso40_ht_cap_5ghz, i32 22)
  br label %if.end185

if.then174:                                       ; preds = %if.end155.if.then174_crit_edge, %if.end155.thread262
  %arrayidx.i258 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 0
  %83 = call ptr @memcpy(ptr %arrayidx.i258, ptr @wl18xx_siso40_ht_cap_2ghz, i32 22)
  %arrayidx.i259 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 1
  %84 = call ptr @memcpy(ptr %arrayidx.i259, ptr @wl18xx_siso40_ht_cap_5ghz, i32 22)
  br label %if.end185

if.then182:                                       ; preds = %if.end155.if.then182_crit_edge, %if.end155.thread263
  %arrayidx.i260 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 0
  %85 = call ptr @memcpy(ptr %arrayidx.i260, ptr @wl18xx_siso20_ht_cap, i32 22)
  %arrayidx.i261 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 1
  %86 = call ptr @memcpy(ptr %arrayidx.i261, ptr @wl18xx_siso20_ht_cap, i32 22)
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.then174, %if.end166, %if.end155.if.end185_crit_edge
  %87 = load i8, ptr @checksum_param, align 1, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool186.not = icmp eq i8 %87, 0
  br i1 %tobool186.not, label %if.then187, label %if.end185.if.end188_crit_edge

if.end185.if.end188_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end188

if.then187:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  store ptr null, ptr getelementptr inbounds (%struct.wlcore_ops, ptr @wl18xx_ops, i32 0, i32 24), align 4
  store ptr null, ptr getelementptr inbounds (%struct.wlcore_ops, ptr @wl18xx_ops, i32 0, i32 18), align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.end185.if.end188_crit_edge
  %number_of_assembled_ant5191 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 1, i32 1, i32 11
  %88 = ptrtoint ptr %number_of_assembled_ant5191 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %number_of_assembled_ant5191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp193 = icmp ne i8 %89, 0
  %enable_11a = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 96
  %frombool = zext i1 %cmp193 to i8
  %90 = ptrtoint ptr %enable_11a to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %frombool, ptr %enable_11a, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %do.end149, %do.end62, %do.end46
  %retval.0 = phi i32 [ -22, %do.end46 ], [ -22, %do.end62 ], [ -22, %do.end149 ], [ 0, %if.end188 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_identify_chip(ptr nocapture noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %do.end27 [
    i32 100860177, label %do.body
    i32 100860161, label %do.end20
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %3 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.body3, !prof !313

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_identify_chip.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_identify_chip, %if.then11)) #15
          to label %do.end16 [label %if.then11], !srcloc !314

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_identify_chip.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.40, i32 noundef %5) #15
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %do.body3, %do.body.do.end16_crit_edge
  %sr_fw_name = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 118
  %6 = ptrtoint ptr %sr_fw_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.41, ptr %sr_fw_name, align 4
  %plt_fw_name = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 117
  %7 = ptrtoint ptr %plt_fw_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.41, ptr %plt_fw_name, align 8
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 8
  %or = or i32 %9, 3724
  store i32 %or, ptr %quirks, align 8
  %min_sr_fw_ver.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 144
  %10 = ptrtoint ptr %min_sr_fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %min_sr_fw_ver.i, align 8
  %arrayidx2.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 3
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 4
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 58, ptr %arrayidx8.i, align 8
  %min_mr_fw_ver.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 145
  %15 = ptrtoint ptr %min_mr_fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %min_mr_fw_ver.i, align 4
  %arrayidx11.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 145, i32 1
  %16 = call ptr @memset(ptr %arrayidx11.i, i32 0, i32 16)
  %fw_mem_block_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 68
  %17 = ptrtoint ptr %fw_mem_block_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 272, ptr %fw_mem_block_size, align 8
  %fwlog_end = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 67
  %18 = ptrtoint ptr %fwlog_end to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1073741824, ptr %fwlog_end, align 4
  %scan_templ_id_2_4 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 120
  %19 = ptrtoint ptr %scan_templ_id_2_4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %scan_templ_id_2_4, align 4
  %scan_templ_id_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 121
  %20 = ptrtoint ptr %scan_templ_id_5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %scan_templ_id_5, align 1
  %sched_scan_templ_id_2_4 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 122
  %21 = ptrtoint ptr %sched_scan_templ_id_2_4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 19, ptr %sched_scan_templ_id_2_4, align 2
  %sched_scan_templ_id_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 123
  %22 = ptrtoint ptr %sched_scan_templ_id_5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 20, ptr %sched_scan_templ_id_5, align 1
  %max_channels_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 124
  %23 = ptrtoint ptr %max_channels_5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %max_channels_5, align 8
  %ba_rx_session_count_max = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 109
  %24 = ptrtoint ptr %ba_rx_session_count_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 13, ptr %ba_rx_session_count_max, align 8
  br label %out

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 100860161) #18
  br label %out

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %1) #18
  br label %out

out:                                              ; preds = %do.end27, %do.end20, %do.end16
  %ret.0 = phi i32 [ -19, %do.end27 ], [ -19, %do.end20 ], [ 0, %do.end16 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_boot(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @wl18xx_set_clk(ptr noundef %wl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 8417536) #15
  %buffer_32.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %0 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_32.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108864, ptr %1, align 4
  %3 = load ptr, ptr %buffer_32.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i
  %7 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ne i32 %call.i.i, 131068
  %spec.select.i.i.i.i = and i1 %cmp.i.i.i.i, %tobool3.not.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !315

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %if_ops.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i.i, ptr noundef %3, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %call27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %if.end25.i.i.i.i.if.end4.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end25.i.i.i.i.if.end4.i_crit_edge:             ; preds = %if.end25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end25.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i.i.i, label %land.lhs.true.i.i.i.i.wlcore_write32.exit.i_crit_edge, label %if.then30.i.i.i.i

land.lhs.true.i.i.i.i.wlcore_write32.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit.i

if.then30.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wlcore_write32.exit.i

wlcore_write32.exit.i:                            ; preds = %if.then30.i.i.i.i, %land.lhs.true.i.i.i.i.wlcore_write32.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %cmp2.i = icmp slt i32 %call27.i.i.i.i, 0
  br i1 %cmp2.i, label %wlcore_write32.exit.i.out_crit_edge, label %wlcore_write32.exit.i.if.end4.i_crit_edge

wlcore_write32.exit.i.if.end4.i_crit_edge:        ; preds = %wlcore_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

wlcore_write32.exit.i.out_crit_edge:              ; preds = %wlcore_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4.i:                                        ; preds = %wlcore_write32.exit.i.if.end4.i_crit_edge, %if.end25.i.i.i.i.if.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 107374000) #15
  %ptable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %19 = ptrtoint ptr %ptable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptable.i, align 8
  %arrayidx.i = getelementptr %struct.wlcore_partition_set, ptr %20, i32 2
  %call5.i = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.out_crit_edge, label %if.end8.i

if.end4.i.out_crit_edge:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8.i:                                        ; preds = %if.end4.i
  %rtable.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %21 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %call.i23.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %24) #15
  %25 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer_32.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4
  %28 = load ptr, ptr %buffer_32.i.i.i, align 4
  %29 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i26.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i26.i, label %lor.lhs.false.i.i.i30.i, label %if.end8.i.out_crit_edge

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i30.i:                          ; preds = %if.end8.i
  %32 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool3.not.i.i.i27.i = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i23.i)
  %cmp.i.i.i28.i = icmp ne i32 %call.i23.i, 131068
  %spec.select.i.i.i29.i = and i1 %cmp.i.i.i28.i, %tobool3.not.i.i.i27.i
  br i1 %spec.select.i.i.i29.i, label %do.end.i.i.i31.i, label %if.end25.i.i.i37.i, !prof !315

do.end.i.i.i31.i:                                 ; preds = %lor.lhs.false.i.i.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i37.i:                               ; preds = %lor.lhs.false.i.i.i30.i
  %35 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i33.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write.i.i.i33.i, align 4
  %39 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i35.i = tail call i32 %38(ptr noundef %40, i32 noundef %call.i23.i, ptr noundef %28, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i35.i)
  %tobool28.not.i.i.i36.i = icmp eq i32 %call27.i.i.i35.i, 0
  br i1 %tobool28.not.i.i.i36.i, label %if.end25.i.i.i37.i.if.end12.i_crit_edge, label %land.lhs.true.i.i.i40.i

if.end25.i.i.i37.i.if.end12.i_crit_edge:          ; preds = %if.end25.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

land.lhs.true.i.i.i40.i:                          ; preds = %if.end25.i.i.i37.i
  %state.i.i.i38.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %41 = ptrtoint ptr %state.i.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state.i.i.i38.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp29.not.i.i.i39.i = icmp eq i32 %42, 0
  br i1 %cmp29.not.i.i.i39.i, label %land.lhs.true.i.i.i40.i.wlcore_write_reg.exit.i_crit_edge, label %if.then30.i.i.i41.i

land.lhs.true.i.i.i40.i.wlcore_write_reg.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write_reg.exit.i

if.then30.i.i.i41.i:                              ; preds = %land.lhs.true.i.i.i40.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wlcore_write_reg.exit.i

wlcore_write_reg.exit.i:                          ; preds = %if.then30.i.i.i41.i, %land.lhs.true.i.i.i40.i.wlcore_write_reg.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i35.i)
  %cmp10.i = icmp slt i32 %call27.i.i.i35.i, 0
  br i1 %cmp10.i, label %wlcore_write_reg.exit.i.out_crit_edge, label %wlcore_write_reg.exit.i.if.end12.i_crit_edge

wlcore_write_reg.exit.i.if.end12.i_crit_edge:     ; preds = %wlcore_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

wlcore_write_reg.exit.i.out_crit_edge:            ; preds = %wlcore_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12.i:                                       ; preds = %wlcore_write_reg.exit.i.if.end12.i_crit_edge, %if.end25.i.i.i37.i.if.end12.i_crit_edge
  %call.i.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 8475708) #15
  %43 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer_32.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %44, align 4
  %46 = load ptr, ptr %buffer_32.i.i.i, align 4
  %47 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %49 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i, label %if.end12.i.out_crit_edge

if.end12.i.out_crit_edge:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end12.i
  %50 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %52 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool3.not.i.i.i.i.i = icmp ne i32 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ne i32 %call.i.i.i, 131068
  %spec.select.i.i.i.i.i = and i1 %cmp.i.i.i.i.i, %tobool3.not.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end25.i.i.i.i.i, !prof !315

do.end.i.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i.i.i:                               ; preds = %lor.lhs.false.i.i.i.i.i
  %53 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i.i.i = tail call i32 %56(ptr noundef %58, i32 noundef %call.i.i.i, ptr noundef %46, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i.i)
  %tobool28.not.i.i.i.i.i = icmp eq i32 %call27.i.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i.i, label %if.end25.i.i.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end25.i.i.i.i.i.if.end.i.i_crit_edge:          ; preds = %if.end25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end25.i.i.i.i.i
  %state.i.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %59 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp29.not.i.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp29.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.wlcore_write32.exit.i.i_crit_edge, label %if.then30.i.i.i.i.i

land.lhs.true.i.i.i.i.i.wlcore_write32.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit.i.i

if.then30.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wlcore_write32.exit.i.i

wlcore_write32.exit.i.i:                          ; preds = %if.then30.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.wlcore_write32.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call27.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %wlcore_write32.exit.i.i.out_crit_edge, label %wlcore_write32.exit.i.i.if.end.i.i_crit_edge

wlcore_write32.exit.i.i.if.end.i.i_crit_edge:     ; preds = %wlcore_write32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

wlcore_write32.exit.i.i.out_crit_edge:            ; preds = %wlcore_write32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i.i:                                       ; preds = %wlcore_write32.exit.i.i.if.end.i.i_crit_edge, %if.end25.i.i.i.i.i.if.end.i.i_crit_edge
  %call.i4.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 8397208) #15
  %61 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer_32.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -65536, ptr %62, align 4
  %64 = load ptr, ptr %buffer_32.i.i.i, align 4
  %65 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %67 = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i7.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i.i7.i.i, label %lor.lhs.false.i.i.i11.i.i, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i11.i.i:                        ; preds = %if.end.i.i
  %68 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %70 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not.i.i.i8.i.i = icmp ne i32 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i4.i.i)
  %cmp.i.i.i9.i.i = icmp ne i32 %call.i4.i.i, 131068
  %spec.select.i.i.i10.i.i = and i1 %cmp.i.i.i9.i.i, %tobool3.not.i.i.i8.i.i
  br i1 %spec.select.i.i.i10.i.i, label %do.end.i.i.i12.i.i, label %if.end25.i.i.i18.i.i, !prof !315

do.end.i.i.i12.i.i:                               ; preds = %lor.lhs.false.i.i.i11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i18.i.i:                             ; preds = %lor.lhs.false.i.i.i11.i.i
  %71 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i14.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i.i.i14.i.i, align 4
  %75 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i16.i.i = tail call i32 %74(ptr noundef %76, i32 noundef %call.i4.i.i, ptr noundef %64, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i16.i.i)
  %tobool28.not.i.i.i17.i.i = icmp eq i32 %call27.i.i.i16.i.i, 0
  br i1 %tobool28.not.i.i.i17.i.i, label %if.end25.i.i.i18.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i21.i.i

if.end25.i.i.i18.i.i.if.end_crit_edge:            ; preds = %if.end25.i.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i.i.i21.i.i:                        ; preds = %if.end25.i.i.i18.i.i
  %state.i.i.i19.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %77 = ptrtoint ptr %state.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state.i.i.i19.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp29.not.i.i.i20.i.i = icmp eq i32 %78, 0
  br i1 %cmp29.not.i.i.i20.i.i, label %land.lhs.true.i.i.i21.i.i.wl18xx_pre_boot.exit_crit_edge, label %if.then30.i.i.i22.i.i

land.lhs.true.i.i.i21.i.i.wl18xx_pre_boot.exit_crit_edge: ; preds = %land.lhs.true.i.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl18xx_pre_boot.exit

if.then30.i.i.i22.i.i:                            ; preds = %land.lhs.true.i.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wl18xx_pre_boot.exit

wl18xx_pre_boot.exit:                             ; preds = %if.then30.i.i.i22.i.i, %land.lhs.true.i.i.i21.i.i.wl18xx_pre_boot.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i16.i.i)
  %cmp = icmp slt i32 %call27.i.i.i16.i.i, 0
  br i1 %cmp, label %wl18xx_pre_boot.exit.out_crit_edge, label %wl18xx_pre_boot.exit.if.end_crit_edge

wl18xx_pre_boot.exit.if.end_crit_edge:            ; preds = %wl18xx_pre_boot.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

wl18xx_pre_boot.exit.out_crit_edge:               ; preds = %wl18xx_pre_boot.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %wl18xx_pre_boot.exit.if.end_crit_edge, %if.end25.i.i.i18.i.i.if.end_crit_edge
  %call1 = tail call fastcc i32 @wl18xx_pre_upload(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wlcore_boot_upload_firmware(ptr noundef %wl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end4
  %priv1.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %79 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv1.i, align 4
  %phy.i = getelementptr inbounds %struct.wl18xx_priv, ptr %80, i32 0, i32 1, i32 1
  %call.i30 = tail call ptr @kmemdup(ptr noundef %phy.i, i32 noundef 288, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i, label %if.end8.wl18xx_set_mac_and_phy.exit.thread_crit_edge, label %if.end.i34

if.end8.wl18xx_set_mac_and_phy.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl18xx_set_mac_and_phy.exit.thread

if.end.i34:                                       ; preds = %if.end8
  %81 = ptrtoint ptr %ptable.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ptable.i, align 8
  %arrayidx.i32 = getelementptr %struct.wlcore_partition_set, ptr %82, i32 5
  %call2.i = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx.i32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i33 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i33, label %if.end.i34.wl18xx_set_mac_and_phy.exit.thread_crit_edge, label %if.end4.i36

if.end.i34.wl18xx_set_mac_and_phy.exit.thread_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl18xx_set_mac_and_phy.exit.thread

if.end4.i36:                                      ; preds = %if.end.i34
  %call.i.i35 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef -2137890816) #15
  %83 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %85 = and i32 %84, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end4.i36.wl18xx_set_mac_and_phy.exit.thread_crit_edge

if.end4.i36.wl18xx_set_mac_and_phy.exit.thread_crit_edge: ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl18xx_set_mac_and_phy.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end4.i36
  %86 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %88 = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool3.not.i.i.i = icmp ne i32 %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i35)
  %cmp.i.i.i = icmp ne i32 %call.i.i35, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !315

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %wl18xx_set_mac_and_phy.exit.thread

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %89 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write.i.i.i, align 4
  %93 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i = tail call i32 %92(ptr noundef %94, i32 noundef %call.i.i35, ptr noundef nonnull %call.i30, i32 noundef 288, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %wl18xx_set_mac_and_phy.exit.thread70, label %land.lhs.true.i.i.i

wl18xx_set_mac_and_phy.exit.thread70:             ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call.i30) #15
  br label %if.end12

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %95 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp29.not.i.i.i = icmp eq i32 %96, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wl18xx_set_mac_and_phy.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wl18xx_set_mac_and_phy.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl18xx_set_mac_and_phy.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wl18xx_set_mac_and_phy.exit

wl18xx_set_mac_and_phy.exit.thread:               ; preds = %do.end.i.i.i, %if.end4.i36.wl18xx_set_mac_and_phy.exit.thread_crit_edge, %if.end.i34.wl18xx_set_mac_and_phy.exit.thread_crit_edge, %if.end8.wl18xx_set_mac_and_phy.exit.thread_crit_edge
  %ret.0.i37.ph = phi i32 [ -5, %if.end4.i36.wl18xx_set_mac_and_phy.exit.thread_crit_edge ], [ -5, %do.end.i.i.i ], [ -12, %if.end8.wl18xx_set_mac_and_phy.exit.thread_crit_edge ], [ %call2.i, %if.end.i34.wl18xx_set_mac_and_phy.exit.thread_crit_edge ]
  tail call void @kfree(ptr noundef %call.i30) #15
  br label %out

wl18xx_set_mac_and_phy.exit:                      ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wl18xx_set_mac_and_phy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp10 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp10, label %wl18xx_set_mac_and_phy.exit.out_crit_edge, label %wl18xx_set_mac_and_phy.exit.if.end12_crit_edge

wl18xx_set_mac_and_phy.exit.if.end12_crit_edge:   ; preds = %wl18xx_set_mac_and_phy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

wl18xx_set_mac_and_phy.exit.out_crit_edge:        ; preds = %wl18xx_set_mac_and_phy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12:                                         ; preds = %wl18xx_set_mac_and_phy.exit.if.end12_crit_edge, %wl18xx_set_mac_and_phy.exit.thread70
  %event_mask = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 74
  %97 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 67104513, ptr %event_mask, align 8
  %ap_event_mask = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 75
  %98 = ptrtoint ptr %ap_event_mask to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4096, ptr %ap_event_mask, align 4
  %call13 = tail call i32 @wlcore_boot_run_firmware(ptr noundef %wl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end16:                                         ; preds = %if.end12
  %99 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i.i39 = getelementptr i32, ptr %100, i32 6
  %101 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i39, align 4
  %call.i.i40 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %102) #15
  %103 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buffer_32.i.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2130837504, ptr %104, align 4
  %106 = load ptr, ptr %buffer_32.i.i.i, align 4
  %107 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %109 = and i32 %108, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i.i.i.i43 = icmp eq i32 %109, 0
  br i1 %tobool.not.i.i.i.i43, label %lor.lhs.false.i.i.i.i47, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i.i47:                          ; preds = %if.end16
  %110 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %112 = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool3.not.i.i.i.i44 = icmp ne i32 %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i40)
  %cmp.i.i.i.i45 = icmp ne i32 %call.i.i40, 131068
  %spec.select.i.i.i.i46 = and i1 %cmp.i.i.i.i45, %tobool3.not.i.i.i.i44
  br i1 %spec.select.i.i.i.i46, label %do.end.i.i.i.i48, label %if.end25.i.i.i.i54, !prof !315

do.end.i.i.i.i48:                                 ; preds = %lor.lhs.false.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i.i54:                               ; preds = %lor.lhs.false.i.i.i.i47
  %113 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i.i50 = getelementptr inbounds %struct.wl1271_if_operations, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %write.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write.i.i.i.i50, align 4
  %117 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i.i52 = tail call i32 %116(ptr noundef %118, i32 noundef %call.i.i40, ptr noundef %106, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i52)
  %tobool28.not.i.i.i.i53 = icmp eq i32 %call27.i.i.i.i52, 0
  br i1 %tobool28.not.i.i.i.i53, label %if.end25.i.i.i.i54.if.end.i61_crit_edge, label %land.lhs.true.i.i.i.i57

if.end25.i.i.i.i54.if.end.i61_crit_edge:          ; preds = %if.end25.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i61

land.lhs.true.i.i.i.i57:                          ; preds = %if.end25.i.i.i.i54
  %state.i.i.i.i55 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %119 = ptrtoint ptr %state.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %state.i.i.i.i55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp29.not.i.i.i.i56 = icmp eq i32 %120, 0
  br i1 %cmp29.not.i.i.i.i56, label %land.lhs.true.i.i.i.i57.wlcore_write_reg.exit.i60_crit_edge, label %if.then30.i.i.i.i58

land.lhs.true.i.i.i.i57.wlcore_write_reg.exit.i60_crit_edge: ; preds = %land.lhs.true.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write_reg.exit.i60

if.then30.i.i.i.i58:                              ; preds = %land.lhs.true.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wlcore_write_reg.exit.i60

wlcore_write_reg.exit.i60:                        ; preds = %if.then30.i.i.i.i58, %land.lhs.true.i.i.i.i57.wlcore_write_reg.exit.i60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i52)
  %cmp.i59 = icmp slt i32 %call27.i.i.i.i52, 0
  br i1 %cmp.i59, label %wlcore_write_reg.exit.i60.out_crit_edge, label %wlcore_write_reg.exit.i60.if.end.i61_crit_edge

wlcore_write_reg.exit.i60.if.end.i61_crit_edge:   ; preds = %wlcore_write_reg.exit.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i61

wlcore_write_reg.exit.i60.out_crit_edge:          ; preds = %wlcore_write_reg.exit.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i61:                                       ; preds = %wlcore_write_reg.exit.i60.if.end.i61_crit_edge, %if.end25.i.i.i.i54.if.end.i61_crit_edge
  tail call void @wlcore_enable_interrupts(ptr noundef %wl) #15
  %121 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i14.i = getelementptr i32, ptr %122, i32 6
  %123 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i14.i, align 4
  %call.i15.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %124) #15
  %125 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buffer_32.i.i.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1828847617, ptr %126, align 4
  %128 = load ptr, ptr %buffer_32.i.i.i, align 4
  %129 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %131 = and i32 %130, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i.i18.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i.i18.i, label %lor.lhs.false.i.i.i22.i, label %if.end.i61.disable_interrupts.i_crit_edge

if.end.i61.disable_interrupts.i_crit_edge:        ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_interrupts.i

lor.lhs.false.i.i.i22.i:                          ; preds = %if.end.i61
  %132 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %134 = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool3.not.i.i.i19.i = icmp ne i32 %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i15.i)
  %cmp.i.i.i20.i = icmp ne i32 %call.i15.i, 131068
  %spec.select.i.i.i21.i = and i1 %cmp.i.i.i20.i, %tobool3.not.i.i.i19.i
  br i1 %spec.select.i.i.i21.i, label %do.end.i.i.i23.i, label %if.end25.i.i.i29.i, !prof !315

do.end.i.i.i23.i:                                 ; preds = %lor.lhs.false.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %disable_interrupts.i

if.end25.i.i.i29.i:                               ; preds = %lor.lhs.false.i.i.i22.i
  %135 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i25.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %write.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write.i.i.i25.i, align 4
  %139 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i27.i = tail call i32 %138(ptr noundef %140, i32 noundef %call.i15.i, ptr noundef %128, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i27.i)
  %tobool28.not.i.i.i28.i = icmp eq i32 %call27.i.i.i27.i, 0
  br i1 %tobool28.not.i.i.i28.i, label %if.end25.i.i.i29.i.out_crit_edge, label %land.lhs.true.i.i.i32.i

if.end25.i.i.i29.i.out_crit_edge:                 ; preds = %if.end25.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.i.i.i32.i:                          ; preds = %if.end25.i.i.i29.i
  %state.i.i.i30.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %141 = ptrtoint ptr %state.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %state.i.i.i30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp29.not.i.i.i31.i = icmp eq i32 %142, 0
  br i1 %cmp29.not.i.i.i31.i, label %land.lhs.true.i.i.i32.i.wlcore_write_reg.exit35.i_crit_edge, label %if.then30.i.i.i33.i

land.lhs.true.i.i.i32.i.wlcore_write_reg.exit35.i_crit_edge: ; preds = %land.lhs.true.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write_reg.exit35.i

if.then30.i.i.i33.i:                              ; preds = %land.lhs.true.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #15
  br label %wlcore_write_reg.exit35.i

wlcore_write_reg.exit35.i:                        ; preds = %if.then30.i.i.i33.i, %land.lhs.true.i.i.i32.i.wlcore_write_reg.exit35.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i27.i)
  %cmp2.i62 = icmp slt i32 %call27.i.i.i27.i, 0
  br i1 %cmp2.i62, label %wlcore_write_reg.exit35.i.disable_interrupts.i_crit_edge, label %wlcore_write_reg.exit35.i.out_crit_edge

wlcore_write_reg.exit35.i.out_crit_edge:          ; preds = %wlcore_write_reg.exit35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

wlcore_write_reg.exit35.i.disable_interrupts.i_crit_edge: ; preds = %wlcore_write_reg.exit35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_interrupts.i

disable_interrupts.i:                             ; preds = %wlcore_write_reg.exit35.i.disable_interrupts.i_crit_edge, %do.end.i.i.i23.i, %if.end.i61.disable_interrupts.i_crit_edge
  %retval.0.i.i.i3443.i = phi i32 [ %call27.i.i.i27.i, %wlcore_write_reg.exit35.i.disable_interrupts.i_crit_edge ], [ -5, %do.end.i.i.i23.i ], [ -5, %if.end.i61.disable_interrupts.i_crit_edge ]
  tail call void @wlcore_disable_interrupts(ptr noundef %wl) #15
  br label %out

out:                                              ; preds = %disable_interrupts.i, %wlcore_write_reg.exit35.i.out_crit_edge, %if.end25.i.i.i29.i.out_crit_edge, %wlcore_write_reg.exit.i60.out_crit_edge, %do.end.i.i.i.i48, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %wl18xx_set_mac_and_phy.exit.out_crit_edge, %wl18xx_set_mac_and_phy.exit.thread, %if.end4.out_crit_edge, %if.end.out_crit_edge, %wl18xx_pre_boot.exit.out_crit_edge, %do.end.i.i.i12.i.i, %if.end.i.i.out_crit_edge, %wlcore_write32.exit.i.i.out_crit_edge, %do.end.i.i.i.i.i, %if.end12.i.out_crit_edge, %wlcore_write_reg.exit.i.out_crit_edge, %do.end.i.i.i31.i, %if.end8.i.out_crit_edge, %if.end4.i.out_crit_edge, %wlcore_write32.exit.i.out_crit_edge, %do.end.i.i.i.i, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call27.i.i.i16.i.i, %wl18xx_pre_boot.exit.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call27.i.i.i, %wl18xx_set_mac_and_phy.exit.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %ret.0.i37.ph, %wl18xx_set_mac_and_phy.exit.thread ], [ %call27.i.i.i27.i, %wlcore_write_reg.exit35.i.out_crit_edge ], [ %call27.i.i.i.i52, %wlcore_write_reg.exit.i60.out_crit_edge ], [ %retval.0.i.i.i3443.i, %disable_interrupts.i ], [ -5, %do.end.i.i.i.i48 ], [ -5, %if.end16.out_crit_edge ], [ 0, %if.end25.i.i.i29.i.out_crit_edge ], [ -5, %if.end8.i.out_crit_edge ], [ -5, %do.end.i.i.i31.i ], [ -5, %if.end.i.out_crit_edge ], [ -5, %do.end.i.i.i.i ], [ -5, %if.end12.i.out_crit_edge ], [ -5, %do.end.i.i.i.i.i ], [ -5, %if.end.i.i.out_crit_edge ], [ -5, %do.end.i.i.i12.i.i ], [ %call27.i.i.i.i.i, %wlcore_write32.exit.i.i.out_crit_edge ], [ %call27.i.i.i35.i, %wlcore_write_reg.exit.i.out_crit_edge ], [ %call5.i, %if.end4.i.out_crit_edge ], [ %call27.i.i.i.i, %wlcore_write32.exit.i.out_crit_edge ], [ %call.i, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_plt_init(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %plt_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 15
  %0 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 8475932) #15
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %2 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1094796614, ptr %3, align 4
  %5 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %6 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i.i, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i.i.i = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !315

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %12 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %call.i, ptr noundef %5, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end4_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end4_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %18 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp29.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp2 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp2, label %wlcore_write32.exit.cleanup_crit_edge, label %wlcore_write32.exit.if.end4_crit_edge

wlcore_write32.exit.if.end4_crit_edge:            ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

wlcore_write32.exit.cleanup_crit_edge:            ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %wlcore_write32.exit.if.end4_crit_edge, %if.end25.i.i.i.if.end4_crit_edge
  %ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %boot = getelementptr inbounds %struct.wlcore_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %boot, align 4
  %call5 = tail call i32 %23(ptr noundef %wl) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %wlcore_write32.exit.cleanup_crit_edge, %do.end.i.i.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %if.end4 ], [ %call27.i.i.i, %wlcore_write32.exit.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_trigger_cmd(ptr noundef %wl, i32 noundef %cmd_box_addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %buf, i32 %len)
  %add.ptr = getelementptr i8, ptr %1, i32 %len
  %sub = sub i32 740, %len
  %3 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %cmd_box_addr) #15
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.wlcore_write.exit_crit_edge

entry.wlcore_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i = and i1 %cmp.i.i, %tobool3.not.i.i
  br i1 %spec.select.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !315

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %wlcore_write.exit

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %if_ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i, ptr noundef %1, i32 noundef 740, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.wlcore_write.exit_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.wlcore_write.exit_crit_edge:         ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write.exit

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %state.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i, label %land.lhs.true.i.i.wlcore_write.exit_crit_edge, label %if.then30.i.i

land.lhs.true.i.i.wlcore_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #15
  br label %wlcore_write.exit

wlcore_write.exit:                                ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge, %if.end25.i.i.wlcore_write.exit_crit_edge, %do.end.i.i, %entry.wlcore_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end.i.i ], [ -5, %entry.wlcore_write.exit_crit_edge ], [ %call27.i.i, %if.then30.i.i ], [ %call27.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge ], [ 0, %if.end25.i.i.wlcore_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_ack_event(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %0 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %3) #15
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %4 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_32.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %5, align 4
  %7 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %8 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i.i, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %entry.wlcore_write_reg.exit_crit_edge

entry.wlcore_write_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write_reg.exit

lor.lhs.false.i.i.i:                              ; preds = %entry
  %11 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i.i.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !315

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %wlcore_write_reg.exit

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %14 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %17(ptr noundef %19, i32 noundef %call.i, ptr noundef %7, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.wlcore_write_reg.exit_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.wlcore_write_reg.exit_crit_edge:   ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write_reg.exit

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %20 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp29.not.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write_reg.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write_reg.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write_reg.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_write_reg.exit

wlcore_write_reg.exit:                            ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write_reg.exit_crit_edge, %if.end25.i.i.i.wlcore_write_reg.exit_crit_edge, %do.end.i.i.i, %entry.wlcore_write_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ -5, %do.end.i.i.i ], [ -5, %entry.wlcore_write_reg.exit_crit_edge ], [ %call27.i.i.i, %if.then30.i.i.i ], [ %call27.i.i.i, %land.lhs.true.i.i.i.wlcore_write_reg.exit_crit_edge ], [ 0, %if.end25.i.i.i.wlcore_write_reg.exit_crit_edge ]
  ret i32 %retval.0.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_wait_for_event(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_process_mailbox_events(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl18xx_calc_tx_blocks(ptr nocapture noundef readnone %wl, i32 noundef %len, i32 noundef %spare_blks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, 267
  %div = udiv i32 %sub, 268
  %add1 = add i32 %div, %spare_blks
  ret i32 %add1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wl18xx_set_tx_desc_blocks(ptr nocapture noundef readnone %wl, ptr nocapture noundef writeonly %desc, i32 noundef %blks, i32 noundef %spare_blks) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %blks to i8
  %0 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %0, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl18xx_set_tx_desc_data_len(ptr nocapture noundef readonly %wl, ptr nocapture noundef %desc, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %desc, align 1
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, -128
  %8 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %7, ptr %8, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %10 = load i32, ptr @wl12xx_debug_level, align 4
  %and2 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.do.end23_crit_edge, label %do.body7, !prof !313

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end23

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_set_tx_desc_data_len, %if.then15)) #15
          to label %do.end23 [label %if.then15], !srcloc !314

if.then15:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  %hlid = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 7
  %11 = ptrtoint ptr %hlid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hlid, align 1
  %conv16 = zext i8 %12 to i32
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %desc, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv18 = zext i16 %15 to i32
  %life_time = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %life_time to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %life_time, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv19 = zext i16 %18 to i32
  %19 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv20 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.57, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20) #15
  br label %do.end23

do.end23:                                         ; preds = %if.then15, %do.body7, %entry.do.end23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl18xx_get_rx_buf_align(ptr nocapture noundef readnone %wl, i32 noundef %rx_desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %rx_desc, 29
  %0 = and i32 %and, 2
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl18xx_get_rx_packet_len(ptr nocapture noundef readnone %wl, ptr nocapture noundef readnone %rx_data, i32 noundef %data_len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.usub.sat.i32(i32 %data_len, i32 16)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl18xx_tx_immediate_completion(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wl18xx_tx_immediate_complete(ptr noundef %wl) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_hw_init(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %last_fw_rls_idx = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %last_fw_rls_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last_fw_rls_idx, align 1
  %extra_spare_key_count = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %extra_spare_key_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %extra_spare_key_count, align 4
  %quirks.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %6 = shl nuw nsw i32 %and.i, 6
  %spec.select16.i = select i1 %tobool.not.i, i32 65, i32 73
  %and2.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %sdio_align_size.1.i = select i1 %tobool3.not.i, i32 %6, i32 256
  %7 = shl nuw nsw i32 %and2.i, 1
  %8 = or i32 %spec.select16.i, %7
  %call.i = tail call i32 @wl18xx_acx_host_if_cfg_bitmap(ptr noundef %wl, i32 noundef %8, i32 noundef %sdio_align_size.1.i, i32 noundef 1, i32 noundef 15) #15
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @wl18xx_acx_dynamic_fw_traces(ptr noundef %wl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = load i8, ptr @checksum_param, align 1, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end5.if.end11_crit_edge, label %if.then6

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then6:                                         ; preds = %if.end5
  %call7 = tail call i32 @wl18xx_acx_set_checksum_state(ptr noundef %wl) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6.if.end11_crit_edge ], [ %call2, %if.end5.if.end11_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ %9, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wl18xx_convert_fw_status(ptr nocapture noundef readnone %wl, ptr noundef %raw_fw_status, ptr nocapture noundef writeonly %fw_status) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %raw_fw_status to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %raw_fw_status, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fw_status, align 4
  %fw_rx_counter = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 1
  %4 = ptrtoint ptr %fw_rx_counter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_rx_counter, align 1
  %fw_rx_counter2 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 1
  %6 = ptrtoint ptr %fw_rx_counter2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %fw_rx_counter2, align 4
  %drv_rx_counter = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 2
  %7 = ptrtoint ptr %drv_rx_counter to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drv_rx_counter, align 1
  %drv_rx_counter3 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 2
  %9 = ptrtoint ptr %drv_rx_counter3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %drv_rx_counter3, align 1
  %tx_results_counter = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 4
  %10 = ptrtoint ptr %tx_results_counter to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_results_counter, align 1
  %tx_results_counter4 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 3
  %12 = ptrtoint ptr %tx_results_counter4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tx_results_counter4, align 2
  %rx_pkt_descs = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 5
  %rx_pkt_descs5 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 4
  %13 = ptrtoint ptr %rx_pkt_descs5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rx_pkt_descs, ptr %rx_pkt_descs5, align 4
  %fw_localtime = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 6
  %14 = ptrtoint ptr %fw_localtime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fw_localtime, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %fw_localtime6 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 5
  %17 = ptrtoint ptr %fw_localtime6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fw_localtime6, align 4
  %link_ps_bitmap = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 7
  %18 = ptrtoint ptr %link_ps_bitmap to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %link_ps_bitmap, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %link_ps_bitmap7 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 6
  %21 = ptrtoint ptr %link_ps_bitmap7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %link_ps_bitmap7, align 4
  %link_fast_bitmap = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 8
  %22 = ptrtoint ptr %link_fast_bitmap to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %link_fast_bitmap, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %link_fast_bitmap8 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 7
  %25 = ptrtoint ptr %link_fast_bitmap8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %link_fast_bitmap8, align 4
  %total_released_blks = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 9
  %26 = ptrtoint ptr %total_released_blks to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %total_released_blks, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %total_released_blks9 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 8
  %29 = ptrtoint ptr %total_released_blks9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %total_released_blks9, align 4
  %tx_total = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 10
  %30 = ptrtoint ptr %tx_total to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %tx_total, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %tx_total10 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 9
  %33 = ptrtoint ptr %tx_total10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tx_total10, align 4
  %counters = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 11
  %counters12 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10
  %34 = ptrtoint ptr %counters12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %counters, ptr %counters12, align 4
  %tx_lnk_free_pkts = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 1
  %tx_lnk_free_pkts17 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %tx_lnk_free_pkts17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tx_lnk_free_pkts, ptr %tx_lnk_free_pkts17, align 4
  %tx_voice_released_blks = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 2
  %36 = ptrtoint ptr %tx_voice_released_blks to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_voice_released_blks, align 1
  %tx_voice_released_blks20 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 2
  %38 = ptrtoint ptr %tx_voice_released_blks20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %tx_voice_released_blks20, align 4
  %tx_last_rate = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 3
  %39 = ptrtoint ptr %tx_last_rate to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_last_rate, align 1
  %tx_last_rate23 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 3
  %41 = ptrtoint ptr %tx_last_rate23 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %tx_last_rate23, align 1
  %tx_last_rate_mbps = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 4
  %42 = ptrtoint ptr %tx_last_rate_mbps to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_last_rate_mbps, align 1
  %tx_last_rate_mbps26 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 4
  %44 = ptrtoint ptr %tx_last_rate_mbps26 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tx_last_rate_mbps26, align 2
  %hlid = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 5
  %45 = ptrtoint ptr %hlid to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hlid, align 1
  %hlid29 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 5
  %47 = ptrtoint ptr %hlid29 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %hlid29, align 1
  %log_start_addr = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 12
  %48 = ptrtoint ptr %log_start_addr to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %log_start_addr, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %log_start_addr30 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 11
  %51 = ptrtoint ptr %log_start_addr30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %log_start_addr30, align 4
  %priv = getelementptr inbounds %struct.wl18xx_fw_status, ptr %raw_fw_status, i32 0, i32 13
  %priv31 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 12
  %52 = ptrtoint ptr %priv31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %priv, ptr %priv31, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_sta_get_ap_rate_mask(ptr nocapture noundef readonly %wl, ptr nocapture noundef readonly %wlvif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_set = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 20
  %0 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate_set, align 8
  %channel_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 16
  %2 = ptrtoint ptr %channel_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_type, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %5 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end17_crit_edge, label %do.body6, !prof !313

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_sta_get_ap_rate_mask, %if.then14)) #15
          to label %do.end17 [label %if.then14], !srcloc !314

if.then14:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.59) #15
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body6, %do.body.do.end17_crit_edge
  %or = and i32 %1, 1612709887
  %and18 = or i32 %or, -2147483648
  br label %if.end52

if.else:                                          ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %6 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1.i, align 4
  %number_of_assembled_ant2_4.i = getelementptr inbounds %struct.wl18xx_priv, ptr %7, i32 0, i32 1, i32 1, i32 10
  %8 = ptrtoint ptr %number_of_assembled_ant2_4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number_of_assembled_ant2_4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp ugt i8 %9, 1
  br i1 %cmp.i, label %wl18xx_is_mimo_supported.exit, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

wl18xx_is_mimo_supported.exit:                    ; preds = %if.else
  %conf.i = getelementptr inbounds %struct.wl18xx_priv, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %conf.i, align 4
  %12 = add i8 %11, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %12)
  %13 = icmp ult i8 %12, -2
  br i1 %13, label %do.body21, label %wl18xx_is_mimo_supported.exit.if.end52_crit_edge

wl18xx_is_mimo_supported.exit.if.end52_crit_edge: ; preds = %wl18xx_is_mimo_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

do.body21:                                        ; preds = %wl18xx_is_mimo_supported.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %14 = load i32, ptr @wl12xx_debug_level, align 4
  %and22 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end49_crit_edge, label %do.body31, !prof !313

do.body21.do.end49_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end49

do.body31:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_sta_get_ap_rate_mask, %if.then43)) #15
          to label %do.end49 [label %if.then43], !srcloc !314

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.60) #15
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body31, %do.body21.do.end49_crit_edge
  %or50 = or i32 %1, 534773760
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %wl18xx_is_mimo_supported.exit.if.end52_crit_edge, %if.else.if.end52_crit_edge, %do.end17
  %hw_rate_set.0 = phi i32 [ %and18, %do.end17 ], [ %or50, %do.end49 ], [ %1, %wl18xx_is_mimo_supported.exit.if.end52_crit_edge ], [ %1, %if.else.if.end52_crit_edge ]
  ret i32 %hw_rate_set.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_get_pg_ver(ptr noundef %wl, ptr noundef writeonly %ver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %0 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptable, align 8
  %arrayidx = getelementptr %struct.wlcore_partition_set, ptr %1, i32 4
  %call = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 10495508) #15
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %2 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !315

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i, ptr noundef %3, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end4_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end4_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp.i.i = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.out_crit_edge, label %wlcore_raw_read.exit.i.i.if.end4_crit_edge

wlcore_raw_read.exit.i.i.if.end4_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

wlcore_raw_read.exit.i.i.out_crit_edge:           ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %wlcore_raw_read.exit.i.i.if.end4_crit_edge, %if.end25.i.i.i.if.end4_crit_edge
  %18 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_32.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call.i62 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 10495500) #15
  %22 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_32.i.i, align 4
  %24 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i.i, align 4
  %26 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i65 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i65, label %lor.lhs.false.i.i.i69, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i69:                            ; preds = %if.end4
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i.i.i66 = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i62)
  %cmp.i.i.i67 = icmp ne i32 %call.i62, 131068
  %spec.select.i.i.i68 = and i1 %cmp.i.i.i67, %tobool3.not.i.i.i66
  br i1 %spec.select.i.i.i68, label %do.end.i.i.i70, label %if.end25.i.i.i75, !prof !315

do.end.i.i.i70:                                   ; preds = %lor.lhs.false.i.i.i69
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i75:                                 ; preds = %lor.lhs.false.i.i.i69
  %30 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %if_ops.i.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i73 = tail call i32 %33(ptr noundef %35, i32 noundef %call.i62, ptr noundef %23, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i73)
  %tobool28.not.i.i.i74 = icmp eq i32 %call27.i.i.i73, 0
  br i1 %tobool28.not.i.i.i74, label %if.end25.i.i.i75.if.end9_crit_edge, label %land.lhs.true.i.i.i78

if.end25.i.i.i75.if.end9_crit_edge:               ; preds = %if.end25.i.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true.i.i.i78:                            ; preds = %if.end25.i.i.i75
  %state.i.i.i76 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %36 = ptrtoint ptr %state.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i.i.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp29.not.i.i.i77 = icmp eq i32 %37, 0
  br i1 %cmp29.not.i.i.i77, label %land.lhs.true.i.i.i78.wlcore_raw_read.exit.i.i81_crit_edge, label %if.then30.i.i.i79

land.lhs.true.i.i.i78.wlcore_raw_read.exit.i.i81_crit_edge: ; preds = %land.lhs.true.i.i.i78
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i81

if.then30.i.i.i79:                                ; preds = %land.lhs.true.i.i.i78
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i81

wlcore_raw_read.exit.i.i81:                       ; preds = %if.then30.i.i.i79, %land.lhs.true.i.i.i78.wlcore_raw_read.exit.i.i81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i73)
  %cmp.i.i80 = icmp slt i32 %call27.i.i.i73, 0
  br i1 %cmp.i.i80, label %wlcore_raw_read.exit.i.i81.out_crit_edge, label %wlcore_raw_read.exit.i.i81.if.end9_crit_edge

wlcore_raw_read.exit.i.i81.if.end9_crit_edge:     ; preds = %wlcore_raw_read.exit.i.i81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

wlcore_raw_read.exit.i.i81.out_crit_edge:         ; preds = %wlcore_raw_read.exit.i.i81
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %wlcore_raw_read.exit.i.i81.if.end9_crit_edge, %if.end25.i.i.i75.if.end9_crit_edge
  %38 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer_32.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #15
  %43 = trunc i32 %42 to i8
  %44 = lshr i8 %43, 4
  %conv12 = and i8 %44, 7
  %and13 = lshr i32 %42, 9
  %conv15 = and i32 %and13, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv15)
  %cmp17 = icmp ult i32 %conv15, 15
  %45 = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp20 = icmp eq i32 %45, 0
  %or.cond = select i1 %cmp17, i1 %cmp20, i1 false
  %metal.0.in.v = select i1 %or.cond, i32 2, i32 7
  %metal.0.in = lshr i32 %42, %metal.0.in.v
  %call.i85 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 10495508) #15
  %46 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_32.i.i, align 4
  %48 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i.i.i, align 4
  %50 = and i32 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i88 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i88, label %lor.lhs.false.i.i.i92, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i92:                            ; preds = %if.end9
  %51 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i.i.i, align 4
  %53 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool3.not.i.i.i89 = icmp ne i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i85)
  %cmp.i.i.i90 = icmp ne i32 %call.i85, 131068
  %spec.select.i.i.i91 = and i1 %cmp.i.i.i90, %tobool3.not.i.i.i89
  br i1 %spec.select.i.i.i91, label %do.end.i.i.i93, label %if.end25.i.i.i98, !prof !315

do.end.i.i.i93:                                   ; preds = %lor.lhs.false.i.i.i92
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i98:                                 ; preds = %lor.lhs.false.i.i.i92
  %54 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %if_ops.i.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i96 = tail call i32 %57(ptr noundef %59, i32 noundef %call.i85, ptr noundef %47, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i96)
  %tobool28.not.i.i.i97 = icmp eq i32 %call27.i.i.i96, 0
  br i1 %tobool28.not.i.i.i97, label %if.end25.i.i.i98.if.end34_crit_edge, label %land.lhs.true.i.i.i101

if.end25.i.i.i98.if.end34_crit_edge:              ; preds = %if.end25.i.i.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true.i.i.i101:                           ; preds = %if.end25.i.i.i98
  %state.i.i.i99 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %60 = ptrtoint ptr %state.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state.i.i.i99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp29.not.i.i.i100 = icmp eq i32 %61, 0
  br i1 %cmp29.not.i.i.i100, label %land.lhs.true.i.i.i101.wlcore_raw_read.exit.i.i104_crit_edge, label %if.then30.i.i.i102

land.lhs.true.i.i.i101.wlcore_raw_read.exit.i.i104_crit_edge: ; preds = %land.lhs.true.i.i.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i104

if.then30.i.i.i102:                               ; preds = %land.lhs.true.i.i.i101
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i104

wlcore_raw_read.exit.i.i104:                      ; preds = %if.then30.i.i.i102, %land.lhs.true.i.i.i101.wlcore_raw_read.exit.i.i104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i96)
  %cmp.i.i103 = icmp slt i32 %call27.i.i.i96, 0
  br i1 %cmp.i.i103, label %wlcore_raw_read.exit.i.i104.out_crit_edge, label %wlcore_raw_read.exit.i.i104.if.end34_crit_edge

wlcore_raw_read.exit.i.i104.if.end34_crit_edge:   ; preds = %wlcore_raw_read.exit.i.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

wlcore_raw_read.exit.i.i104.out_crit_edge:        ; preds = %wlcore_raw_read.exit.i.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end34:                                         ; preds = %wlcore_raw_read.exit.i.i104.if.end34_crit_edge, %if.end25.i.i.i98.if.end34_crit_edge
  %62 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer_32.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %66 = lshr i32 %65, 16
  %metal.0 = and i32 %metal.0.in, 3
  %conv37 = and i32 %66, 31
  %call39 = tail call fastcc ptr @wl18xx_rdl_name(i32 noundef %conv37)
  %67 = zext i8 %conv12 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %call39, i32 noundef %67, i32 noundef %metal.0, i32 noundef %conv15) #18
  %tobool.not = icmp eq ptr %ver, null
  br i1 %tobool.not, label %if.end34.if.end45_crit_edge, label %if.then44

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv12, ptr %ver, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end34.if.end45_crit_edge
  %69 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptable, align 8
  %arrayidx47 = getelementptr %struct.wlcore_partition_set, ptr %70, i32 2
  %call48 = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx47) #15
  br label %out

out:                                              ; preds = %if.end45, %wlcore_raw_read.exit.i.i104.out_crit_edge, %do.end.i.i.i93, %if.end9.out_crit_edge, %wlcore_raw_read.exit.i.i81.out_crit_edge, %do.end.i.i.i70, %if.end4.out_crit_edge, %wlcore_raw_read.exit.i.i.out_crit_edge, %do.end.i.i.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call48, %if.end45 ], [ -5, %if.end.out_crit_edge ], [ -5, %do.end.i.i.i ], [ %call27.i.i.i, %wlcore_raw_read.exit.i.i.out_crit_edge ], [ -5, %if.end4.out_crit_edge ], [ -5, %do.end.i.i.i70 ], [ %call27.i.i.i73, %wlcore_raw_read.exit.i.i81.out_crit_edge ], [ -5, %if.end9.out_crit_edge ], [ -5, %do.end.i.i.i93 ], [ %call27.i.i.i96, %wlcore_raw_read.exit.i.i104.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_get_mac(ptr noundef %wl) #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %0 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptable, align 8
  %arrayidx = getelementptr %struct.wlcore_partition_set, ptr %1, i32 4
  %call = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 10495490) #15
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %2 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !315

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i, ptr noundef %3, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end4_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end4_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp.i.i = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.out_crit_edge, label %wlcore_raw_read.exit.i.i.if.end4_crit_edge

wlcore_raw_read.exit.i.i.if.end4_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

wlcore_raw_read.exit.i.i.out_crit_edge:           ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %wlcore_raw_read.exit.i.i.if.end4_crit_edge, %if.end25.i.i.i.if.end4_crit_edge
  %18 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_32.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #15
  %call.i55 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 10495494) #15
  %23 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer_32.i.i, align 4
  %25 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i.i, align 4
  %27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i58 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i58, label %lor.lhs.false.i.i.i62, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i62:                            ; preds = %if.end4
  %28 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i.i.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i.i.i59 = icmp ne i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i55)
  %cmp.i.i.i60 = icmp ne i32 %call.i55, 131068
  %spec.select.i.i.i61 = and i1 %cmp.i.i.i60, %tobool3.not.i.i.i59
  br i1 %spec.select.i.i.i61, label %do.end.i.i.i63, label %if.end25.i.i.i68, !prof !315

do.end.i.i.i63:                                   ; preds = %lor.lhs.false.i.i.i62
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i68:                                 ; preds = %lor.lhs.false.i.i.i62
  %31 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %if_ops.i.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i66 = tail call i32 %34(ptr noundef %36, i32 noundef %call.i55, ptr noundef %24, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i66)
  %tobool28.not.i.i.i67 = icmp eq i32 %call27.i.i.i66, 0
  br i1 %tobool28.not.i.i.i67, label %if.end25.i.i.i68.if.end8_crit_edge, label %land.lhs.true.i.i.i71

if.end25.i.i.i68.if.end8_crit_edge:               ; preds = %if.end25.i.i.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true.i.i.i71:                            ; preds = %if.end25.i.i.i68
  %state.i.i.i69 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %37 = ptrtoint ptr %state.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i.i.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp29.not.i.i.i70 = icmp eq i32 %38, 0
  br i1 %cmp29.not.i.i.i70, label %land.lhs.true.i.i.i71.wlcore_raw_read.exit.i.i74_crit_edge, label %if.then30.i.i.i72

land.lhs.true.i.i.i71.wlcore_raw_read.exit.i.i74_crit_edge: ; preds = %land.lhs.true.i.i.i71
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i74

if.then30.i.i.i72:                                ; preds = %land.lhs.true.i.i.i71
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i74

wlcore_raw_read.exit.i.i74:                       ; preds = %if.then30.i.i.i72, %land.lhs.true.i.i.i71.wlcore_raw_read.exit.i.i74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i66)
  %cmp.i.i73 = icmp slt i32 %call27.i.i.i66, 0
  br i1 %cmp.i.i73, label %wlcore_raw_read.exit.i.i74.out_crit_edge, label %wlcore_raw_read.exit.i.i74.if.end8_crit_edge

wlcore_raw_read.exit.i.i74.if.end8_crit_edge:     ; preds = %wlcore_raw_read.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

wlcore_raw_read.exit.i.i74.out_crit_edge:         ; preds = %wlcore_raw_read.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %wlcore_raw_read.exit.i.i74.if.end8_crit_edge, %if.end25.i.i.i68.if.end8_crit_edge
  %39 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer_32.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  %and = shl i32 %43, 8
  %shl = and i32 %and, 16776960
  %shr = lshr i32 %22, 24
  %add = or i32 %shl, %shr
  %fuse_oui_addr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 28
  %44 = ptrtoint ptr %fuse_oui_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %fuse_oui_addr, align 4
  %and10 = and i32 %22, 16777215
  %fuse_nic_addr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 29
  %45 = ptrtoint ptr %fuse_nic_addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and10, ptr %fuse_nic_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool13.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.then14, label %if.end8.if.end37_crit_edge

if.end8.if.end37_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #15
  %46 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %47 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %48 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %49 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %50 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %51 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %mac, i32 noundef 6) #15
  %52 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mac, align 1
  %54 = and i8 %53, -4
  %55 = or i8 %54, 2
  store i8 %55, ptr %mac, align 1
  %conv = zext i8 %55 to i32
  %shl16 = shl nuw nsw i32 %conv, 16
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %46, align 1
  %conv18 = zext i8 %57 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %add20 = or i32 %shl16, %shl19
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %47, align 1
  %conv22 = zext i8 %59 to i32
  %add23 = or i32 %add20, %conv22
  %60 = ptrtoint ptr %fuse_oui_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add23, ptr %fuse_oui_addr, align 4
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %48, align 1
  %conv26 = zext i8 %62 to i32
  %shl27 = shl nuw nsw i32 %conv26, 16
  %63 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %49, align 1
  %conv29 = zext i8 %64 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %add31 = or i32 %shl30, %shl27
  %65 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %50, align 1
  %conv33 = zext i8 %66 to i32
  %add34 = or i32 %add31, %conv33
  %67 = ptrtoint ptr %fuse_nic_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add34, ptr %fuse_nic_addr, align 8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then14, %if.end8.if.end37_crit_edge
  %68 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ptable, align 8
  %call40 = call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %69) #15
  br label %out

out:                                              ; preds = %if.end37, %wlcore_raw_read.exit.i.i74.out_crit_edge, %do.end.i.i.i63, %if.end4.out_crit_edge, %wlcore_raw_read.exit.i.i.out_crit_edge, %do.end.i.i.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call40, %if.end37 ], [ -5, %if.end.out_crit_edge ], [ -5, %do.end.i.i.i ], [ %call27.i.i.i, %wlcore_raw_read.exit.i.i.out_crit_edge ], [ -5, %if.end4.out_crit_edge ], [ -5, %do.end.i.i.i63 ], [ %call27.i.i.i66, %wlcore_raw_read.exit.i.i74.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl18xx_set_tx_desc_csum(ptr nocapture noundef readnone %wl, ptr nocapture noundef %desc, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @checksum_param, align 1, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %ip_summed, align 8
  %4 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.not = icmp eq i16 %4, 1536
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 1
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_header.i, align 2
  %conv.i48 = zext i16 %10 to i32
  %gepdiff = sub nsw i32 %conv.i, %conv.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %gepdiff)
  %cmp5 = icmp ugt i32 %gepdiff, 127
  br i1 %cmp5, label %do.end, label %if.end30, !prof !315

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1235, i32 noundef 9, ptr noundef null) #15
  %11 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %11, align 1
  br label %cleanup

if.end30:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %sub.ptr.sub.tr = trunc i32 %gepdiff to i8
  %conv31 = shl nuw i8 %sub.ptr.sub.tr, 1
  %13 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv31, ptr %13, align 1
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %conv.i52 = zext i16 %18 to i32
  %add.ptr.i53 = getelementptr i8, ptr %16, i32 %conv.i52
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i53, i32 0, i32 6
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol, align 1
  %21 = and i8 %20, 1
  %or46 = or i8 %21, %conv31
  store i8 %or46, ptr %13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.then2, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wl18xx_set_rx_csum(ptr nocapture noundef readnone %wl, ptr nocapture noundef readonly %desc, ptr nocapture noundef %skb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_ap_get_mimo_wide_rate_mask(ptr nocapture noundef readonly %wl, ptr nocapture noundef readonly %wlvif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 16
  %0 = ptrtoint ptr %channel_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_type, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %3 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.body6, !prof !313

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_ap_get_mimo_wide_rate_mask, %if.then14)) #15
          to label %do.end16 [label %if.then14], !srcloc !314

if.then14:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.59) #15
  br label %do.end16

do.end16:                                         ; preds = %if.then14, %do.body6, %do.body.do.end16_crit_edge
  %band = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 14
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp17.not = icmp eq i32 %5, 1
  br i1 %cmp17.not, label %do.end16.return_crit_edge, label %do.end32, !prof !313

do.end16.return_crit_edge:                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end32:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1299, i32 noundef 9, ptr noundef null) #15
  br label %return

if.else:                                          ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %6 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1.i, align 4
  %number_of_assembled_ant2_4.i = getelementptr inbounds %struct.wl18xx_priv, ptr %7, i32 0, i32 1, i32 1, i32 10
  %8 = ptrtoint ptr %number_of_assembled_ant2_4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number_of_assembled_ant2_4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp ugt i8 %9, 1
  br i1 %cmp.i, label %wl18xx_is_mimo_supported.exit, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

wl18xx_is_mimo_supported.exit:                    ; preds = %if.else
  %conf.i = getelementptr inbounds %struct.wl18xx_priv, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %conf.i, align 4
  %12 = add i8 %11, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %12)
  %13 = icmp ult i8 %12, -2
  br i1 %13, label %land.lhs.true, label %wl18xx_is_mimo_supported.exit.return_crit_edge

wl18xx_is_mimo_supported.exit.return_crit_edge:   ; preds = %wl18xx_is_mimo_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true:                                    ; preds = %wl18xx_is_mimo_supported.exit
  %band50 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 14
  %14 = ptrtoint ptr %band50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %band50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51 = icmp eq i32 %15, 0
  br i1 %cmp51, label %do.body53, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body53:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %16 = load i32, ptr @wl12xx_debug_level, align 4
  %and54 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.return_crit_edge, label %do.body63, !prof !313

do.body53.return_crit_edge:                       ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body63:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_ap_get_mimo_wide_rate_mask, %if.then75)) #15
          to label %return [label %if.then75], !srcloc !314

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.76) #15
  br label %return

return:                                           ; preds = %if.then75, %do.body63, %do.body53.return_crit_edge, %land.lhs.true.return_crit_edge, %wl18xx_is_mimo_supported.exit.return_crit_edge, %if.else.return_crit_edge, %do.end32, %do.end16.return_crit_edge
  %retval.0 = phi i32 [ 534773760, %do.body53.return_crit_edge ], [ 534773760, %if.then75 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %wl18xx_is_mimo_supported.exit.return_crit_edge ], [ 534773760, %do.body63 ], [ 0, %if.else.return_crit_edge ], [ 0, %do.end32 ], [ -2147483648, %do.end16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_debugfs_add_files(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_handle_static_data(ptr noundef %wl, ptr noundef %static_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.wl1271_static_data, ptr %static_data, i32 0, i32 5
  %phy_fw_ver_str = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21, i32 3
  %call = tail call ptr @strncpy(ptr noundef %phy_fw_ver_str, ptr noundef %priv, i32 noundef 32)
  %arrayidx = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 3, i32 31
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %priv) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_scan_start(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_scan_stop(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_sched_scan_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl18xx_scan_sched_scan_stop(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl18xx_get_spare_blocks(ptr nocapture noundef readonly %wl, i1 noundef zeroext %is_gem) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %extra_spare_key_count = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %extra_spare_key_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_spare_key_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_set_key(ptr noundef %wl, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key_conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body4, !prof !313

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_set_key.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_set_key, %if.then12)) #15
          to label %do.end15 [label %if.then12], !srcloc !314

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  %extra_spare_key_count = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %extra_spare_key_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extra_spare_key_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_set_key.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.80, i32 noundef %4) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body4, %entry.do.end15_crit_edge
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 1
  %5 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher, align 8
  %call19 = tail call i32 @wlcore_set_key(ptr noundef %wl, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key_conf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end15.out_crit_edge, label %if.end22

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end22:                                         ; preds = %do.end15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %6, label %if.end22.do.body40_crit_edge [
    i32 1339905, label %if.end22.if.then24_crit_edge
    i32 1027074, label %if.end22.if.then24_crit_edge107
  ]

if.end22.if.then24_crit_edge107:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24

if.end22.do.body40_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body40

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.end22.if.then24_crit_edge107
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %cmd, label %if.then24.do.body40_crit_edge [
    i32 0, label %if.then26
    i32 1, label %if.then32
  ]

if.then24.do.body40_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body40

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %extra_spare_key_count27 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %extra_spare_key_count27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extra_spare_key_count27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp28 = icmp eq i32 %10, 0
  %inc = add i32 %10, 1
  %11 = ptrtoint ptr %extra_spare_key_count27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %extra_spare_key_count27, align 4
  br label %do.body40

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %extra_spare_key_count33 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %extra_spare_key_count33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extra_spare_key_count33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp34 = icmp eq i32 %13, 1
  %dec = add i32 %13, -1
  %14 = ptrtoint ptr %extra_spare_key_count33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec, ptr %extra_spare_key_count33, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.then32, %if.then26, %if.then24.do.body40_crit_edge, %if.end22.do.body40_crit_edge
  %change_spare.0.shrunk = phi i1 [ %cmp28, %if.then26 ], [ %cmp34, %if.then32 ], [ false, %if.end22.do.body40_crit_edge ], [ false, %if.then24.do.body40_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %15 = load i32, ptr @wl12xx_debug_level, align 4
  %and41 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.do.end69_crit_edge, label %do.body50, !prof !313

do.body40.do.end69_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end69

do.body50:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_set_key.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_set_key, %if.then62)) #15
          to label %do.end69 [label %if.then62], !srcloc !314

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #17
  %extra_spare_key_count63 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %extra_spare_key_count63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extra_spare_key_count63, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_set_key.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.81, i32 noundef %17) #15
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %do.body50, %do.body40.do.end69_crit_edge
  br i1 %change_spare.0.shrunk, label %if.end72, label %do.end69.out_crit_edge

do.end69.out_crit_edge:                           ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end72:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #17
  %extra_spare_key_count73 = getelementptr inbounds %struct.wl18xx_priv, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %extra_spare_key_count73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %extra_spare_key_count73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool74.not = icmp eq i32 %19, 0
  %quirks.i97 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %20 = ptrtoint ptr %quirks.i97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks.i97, align 8
  %and.i98 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  %22 = shl nuw nsw i32 %and.i98, 6
  %spec.select16.i100 = select i1 %tobool.not.i99, i32 65, i32 73
  %and2.i101 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i101)
  %tobool3.not.i102 = icmp eq i32 %and2.i101, 0
  %sdio_align_size.1.i103 = select i1 %tobool3.not.i102, i32 %22, i32 256
  %23 = shl nuw nsw i32 %and2.i101, 1
  %24 = or i32 %spec.select16.i100, %23
  %. = select i1 %tobool74.not, i32 1, i32 2
  %call.i = tail call i32 @wl18xx_acx_host_if_cfg_bitmap(ptr noundef %wl, i32 noundef %24, i32 noundef %sdio_align_size.1.i103, i32 noundef %., i32 noundef 15) #15
  %25 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #15
  br label %out

out:                                              ; preds = %if.end72, %do.end69.out_crit_edge, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call19, %do.end15.out_crit_edge ], [ %call19, %do.end69.out_crit_edge ], [ %25, %if.end72 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_channel_switch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl18xx_pre_pkt_send(ptr nocapture noundef readonly %wl, i32 noundef %buf_offset, i32 noundef %last_len) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %aggr_buf = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 61
  %2 = ptrtoint ptr %aggr_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aggr_buf, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %buf_offset
  %idx.neg = sub i32 0, %last_len
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %4 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %add.ptr1, i32 0, i32 1
  %ctrl = getelementptr inbounds %struct.wl18xx_tx_mem, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl, align 1
  %7 = and i8 %6, 127
  store i8 %7, ptr %ctrl, align 1
  %add = add i32 %buf_offset, 255
  %and4 = and i32 %add, -256
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and4, %if.then ], [ %buf_offset, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl18xx_sta_rc_update(ptr noundef %wl, ptr noundef %wlvif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_update_bw = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 45
  %0 = ptrtoint ptr %rc_update_bw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc_update_bw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body3, !prof !313

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end16

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_sta_rc_update.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_sta_rc_update, %if.then12)) #15
          to label %do.end16 [label %if.then12], !srcloc !314

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i1 %cmp to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_sta_rc_update.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.83, i32 noundef %conv) #15
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body3, %entry.do.end16_crit_edge
  %bss_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 3
  %3 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bss_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp18.not = icmp eq i8 %4, 2
  br i1 %cmp18.not, label %if.end51, label %do.end35, !prof !313

do.end35:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1621, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end51:                                         ; preds = %do.end16
  %flags = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool53.not = icmp eq i32 %7, 0
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %role_chan_type = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %role_chan_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %role_chan_type, align 8
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp eq i32 %10, 2
  br i1 %switch, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %11 = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 8
  %call63 = tail call i32 @wl18xx_acx_peer_ht_operation_mode(ptr noundef %wl, i8 noundef zeroext %13, i1 noundef zeroext %cmp) #15
  br label %cleanup

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %wlvif, i32 -848
  tail call void @ieee80211_connection_loss(ptr noundef %add.ptr.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then61, %if.end51.cleanup_crit_edge, %do.end35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl18xx_set_peer_cap(ptr noundef %wl, ptr noundef %ht_cap, i1 noundef zeroext %allow_ht_operation, i32 noundef %rate_set, i8 noundef zeroext %hlid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl18xx_acx_set_peer_cap(ptr noundef %wl, ptr noundef %ht_cap, i1 noundef zeroext %allow_ht_operation, i32 noundef %rate_set, i8 noundef zeroext %hlid) #15
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl18xx_convert_hwaddr(ptr nocapture noundef readnone %wl, i32 noundef %hwaddr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %hwaddr, 2147483647
  ret i32 %and
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wl18xx_lnk_high_prio(ptr noundef %wl, i8 noundef zeroext %hlid, ptr nocapture noundef readonly %lnk) #11 align 64 {
entry:
  %suspend_bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_status = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 92
  %0 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_status, align 4
  %priv = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %suspend_bitmap)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_suspend_bitmap = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %link_suspend_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_suspend_bitmap, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %suspend_bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %suspend_bitmap, align 4
  %conv = zext i8 %hlid to i32
  %div3.i = lshr i32 %conv, 5
  %suspend_bitmap.0. = load volatile i32, ptr %suspend_bitmap, align 4
  %and.i = and i32 %conv, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %suspend_bitmap.0., %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fw_fast_lnk_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 104
  %arrayidx.i25 = getelementptr i32, ptr %fw_fast_lnk_map, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i25, align 4
  %12 = and i32 %11, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end3.if.else_crit_edge, label %land.lhs.true

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %ap_fw_ps_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 105
  %arrayidx.i30 = getelementptr i32, ptr %ap_fw_ps_map, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i30, align 4
  %15 = and i32 %14, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %tx_fast_link_prio_threshold = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 7
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end3.if.else_crit_edge
  %tx_slow_link_prio_threshold = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 6
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %thold.0.in = phi ptr [ %tx_slow_link_prio_threshold, %if.else ], [ %tx_fast_link_prio_threshold, %if.then10 ]
  %16 = ptrtoint ptr %thold.0.in to i32
  call void @__asan_load1_noabort(i32 %16)
  %thold.0 = load i8, ptr %thold.0.in, align 1
  %allocated_pkts = getelementptr inbounds %struct.wl1271_link, ptr %lnk, i32 0, i32 1
  %17 = ptrtoint ptr %allocated_pkts to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %allocated_pkts, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %thold.0)
  %cmp = icmp ult i8 %18, %thold.0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end11 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %suspend_bitmap)
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wl18xx_lnk_low_prio(ptr noundef %wl, i8 noundef zeroext %hlid, ptr nocapture noundef readonly %lnk) #11 align 64 {
entry:
  %suspend_bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_status = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 92
  %0 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_status, align 4
  %priv = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %suspend_bitmap)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_suspend_bitmap = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %link_suspend_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_suspend_bitmap, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %suspend_bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %suspend_bitmap, align 4
  %conv = zext i8 %hlid to i32
  %div3.i = lshr i32 %conv, 5
  %suspend_bitmap.0. = load volatile i32, ptr %suspend_bitmap, align 4
  %and.i = and i32 %conv, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %suspend_bitmap.0., %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_suspend_threshold = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 5
  br label %if.end12

if.else:                                          ; preds = %if.end
  %fw_fast_lnk_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 104
  %arrayidx.i27 = getelementptr i32, ptr %fw_fast_lnk_map, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i27, align 4
  %12 = and i32 %11, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.else.if.else10_crit_edge, label %land.lhs.true

if.else.if.else10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %ap_fw_ps_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 105
  %arrayidx.i32 = getelementptr i32, ptr %ap_fw_ps_map, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i32, align 4
  %15 = and i32 %14, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.else10_crit_edge

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %tx_fast_stop_threshold = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 9
  br label %if.end12

if.else10:                                        ; preds = %land.lhs.true.if.else10_crit_edge, %if.else.if.else10_crit_edge
  %tx_slow_stop_threshold = getelementptr inbounds %struct.wl18xx_fw_status_priv, ptr %3, i32 0, i32 8
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9, %if.then2
  %thold.0.in = phi ptr [ %tx_suspend_threshold, %if.then2 ], [ %tx_slow_stop_threshold, %if.else10 ], [ %tx_fast_stop_threshold, %if.then9 ]
  %16 = ptrtoint ptr %thold.0.in to i32
  call void @__asan_load1_noabort(i32 %16)
  %thold.0 = load i8, ptr %thold.0.in, align 1
  %allocated_pkts = getelementptr inbounds %struct.wl1271_link, ptr %lnk, i32 0, i32 1
  %17 = ptrtoint ptr %allocated_pkts to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %allocated_pkts, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %thold.0)
  %cmp = icmp ult i8 %18, %thold.0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end12 ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %suspend_bitmap)
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_interrupt_notify_config(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_rx_ba_filter(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_ap_sleep(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_smart_config_start(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_smart_config_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_smart_config_set_group_key(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_set_cac(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_cmd_dfs_master_restart(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl18xx_pre_upload(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  %irq_invert = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %irq_invert) #15
  %0 = ptrtoint ptr %irq_invert to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %irq_invert, align 2, !annotation !311
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %1 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptable, align 8
  %arrayidx = getelementptr %struct.wlcore_partition_set, ptr %2, i32 2
  %call = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 8475900) #15
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %3 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer_32.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -61570816, ptr %4, align 4
  %6 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %10 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i.i.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !315

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %13 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %16(ptr noundef %18, i32 noundef %call.i, ptr noundef %6, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end4_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end4_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %19 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp2 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp2, label %wlcore_write32.exit.out_crit_edge, label %wlcore_write32.exit.if.end4_crit_edge

wlcore_write32.exit.if.end4_crit_edge:            ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

wlcore_write32.exit.out_crit_edge:                ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %wlcore_write32.exit.if.end4_crit_edge, %if.end25.i.i.i.if.end4_crit_edge
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %21 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %22, i32 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %call.i111 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %24) #15
  %25 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer_32.i.i, align 4
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i.i, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i114 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i114, label %lor.lhs.false.i.i.i118, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i118:                           ; preds = %if.end4
  %30 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i.i.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i.i.i115 = icmp ne i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i111)
  %cmp.i.i.i116 = icmp ne i32 %call.i111, 131068
  %spec.select.i.i.i117 = and i1 %cmp.i.i.i116, %tobool3.not.i.i.i115
  br i1 %spec.select.i.i.i117, label %do.end.i.i.i119, label %if.end25.i.i.i124, !prof !315

do.end.i.i.i119:                                  ; preds = %lor.lhs.false.i.i.i118
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i124:                                ; preds = %lor.lhs.false.i.i.i118
  %33 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %if_ops.i.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i122 = tail call i32 %36(ptr noundef %38, i32 noundef %call.i111, ptr noundef %26, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i122)
  %tobool28.not.i.i.i123 = icmp eq i32 %call27.i.i.i122, 0
  br i1 %tobool28.not.i.i.i123, label %if.end25.i.i.i124.do.body9_crit_edge, label %land.lhs.true.i.i.i127

if.end25.i.i.i124.do.body9_crit_edge:             ; preds = %if.end25.i.i.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

land.lhs.true.i.i.i127:                           ; preds = %if.end25.i.i.i124
  %state.i.i.i125 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %39 = ptrtoint ptr %state.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state.i.i.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp29.not.i.i.i126 = icmp eq i32 %40, 0
  br i1 %cmp29.not.i.i.i126, label %land.lhs.true.i.i.i127.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i128

land.lhs.true.i.i.i127.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i128:                               ; preds = %land.lhs.true.i.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i128, %land.lhs.true.i.i.i127.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i122)
  %cmp.i.i = icmp slt i32 %call27.i.i.i122, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.out_crit_edge, label %wlcore_raw_read.exit.i.i.do.body9_crit_edge

wlcore_raw_read.exit.i.i.do.body9_crit_edge:      ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

wlcore_raw_read.exit.i.i.out_crit_edge:           ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body9:                                         ; preds = %wlcore_raw_read.exit.i.i.do.body9_crit_edge, %if.end25.i.i.i124.do.body9_crit_edge
  %41 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer_32.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %46 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9.do.end29_crit_edge, label %do.body13, !prof !313

do.body9.do.end29_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end29

do.body13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_pre_upload.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_pre_upload, %if.then23)) #15
          to label %do.end29 [label %if.then23], !srcloc !314

if.then23:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_pre_upload.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.52, i32 noundef %45) #15
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body13, %do.body9.do.end29_crit_edge
  %call.i129 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 8475892) #15
  %47 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer_32.i.i, align 4
  %49 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i.i.i, align 4
  %51 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i132 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i132, label %lor.lhs.false.i.i.i136, label %do.end29.out_crit_edge

do.end29.out_crit_edge:                           ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i136:                           ; preds = %do.end29
  %52 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i.i.i, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i.i.i133 = icmp ne i32 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i129)
  %cmp.i.i.i134 = icmp ne i32 %call.i129, 131068
  %spec.select.i.i.i135 = and i1 %cmp.i.i.i134, %tobool3.not.i.i.i133
  br i1 %spec.select.i.i.i135, label %do.end.i.i.i137, label %if.end25.i.i.i142, !prof !315

do.end.i.i.i137:                                  ; preds = %lor.lhs.false.i.i.i136
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 70, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i142:                                ; preds = %lor.lhs.false.i.i.i136
  %55 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %if_ops.i.i.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i140 = tail call i32 %58(ptr noundef %60, i32 noundef %call.i129, ptr noundef %48, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i140)
  %tobool28.not.i.i.i141 = icmp eq i32 %call27.i.i.i140, 0
  br i1 %tobool28.not.i.i.i141, label %if.end25.i.i.i142.if.end33_crit_edge, label %land.lhs.true.i.i.i145

if.end25.i.i.i142.if.end33_crit_edge:             ; preds = %if.end25.i.i.i142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true.i.i.i145:                           ; preds = %if.end25.i.i.i142
  %state.i.i.i143 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %61 = ptrtoint ptr %state.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i.i.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp29.not.i.i.i144 = icmp eq i32 %62, 0
  br i1 %cmp29.not.i.i.i144, label %land.lhs.true.i.i.i145.wlcore_raw_read.exit.i.i148_crit_edge, label %if.then30.i.i.i146

land.lhs.true.i.i.i145.wlcore_raw_read.exit.i.i148_crit_edge: ; preds = %land.lhs.true.i.i.i145
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_raw_read.exit.i.i148

if.then30.i.i.i146:                               ; preds = %land.lhs.true.i.i.i145
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_raw_read.exit.i.i148

wlcore_raw_read.exit.i.i148:                      ; preds = %if.then30.i.i.i146, %land.lhs.true.i.i.i145.wlcore_raw_read.exit.i.i148_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i140)
  %cmp.i.i147 = icmp slt i32 %call27.i.i.i140, 0
  br i1 %cmp.i.i147, label %wlcore_raw_read.exit.i.i148.out_crit_edge, label %wlcore_raw_read.exit.i.i148.if.end33_crit_edge

wlcore_raw_read.exit.i.i148.if.end33_crit_edge:   ; preds = %wlcore_raw_read.exit.i.i148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

wlcore_raw_read.exit.i.i148.out_crit_edge:        ; preds = %wlcore_raw_read.exit.i.i148
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end33:                                         ; preds = %wlcore_raw_read.exit.i.i148.if.end33_crit_edge, %if.end25.i.i.i142.if.end33_crit_edge
  %63 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ptable, align 8
  %arrayidx35 = getelementptr %struct.wlcore_partition_set, ptr %64, i32 5
  %call36 = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end33.out_crit_edge, label %if.end39

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end39:                                         ; preds = %if.end33
  %call.i151 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef -2137798080) #15
  %65 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer_32.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %66, align 4
  %68 = load ptr, ptr %buffer_32.i.i, align 4
  %69 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i.i.i, align 4
  %71 = and i32 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i154 = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i.i154, label %lor.lhs.false.i.i.i158, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i158:                           ; preds = %if.end39
  %72 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i.i.i, align 4
  %74 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool3.not.i.i.i155 = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i151)
  %cmp.i.i.i156 = icmp ne i32 %call.i151, 131068
  %spec.select.i.i.i157 = and i1 %cmp.i.i.i156, %tobool3.not.i.i.i155
  br i1 %spec.select.i.i.i157, label %do.end.i.i.i159, label %if.end25.i.i.i165, !prof !315

do.end.i.i.i159:                                  ; preds = %lor.lhs.false.i.i.i158
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i165:                                ; preds = %lor.lhs.false.i.i.i158
  %75 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i161 = getelementptr inbounds %struct.wl1271_if_operations, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i.i.i161, align 4
  %79 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i163 = tail call i32 %78(ptr noundef %80, i32 noundef %call.i151, ptr noundef %68, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i163)
  %tobool28.not.i.i.i164 = icmp eq i32 %call27.i.i.i163, 0
  br i1 %tobool28.not.i.i.i164, label %if.end25.i.i.i165.if.end43_crit_edge, label %land.lhs.true.i.i.i168

if.end25.i.i.i165.if.end43_crit_edge:             ; preds = %if.end25.i.i.i165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

land.lhs.true.i.i.i168:                           ; preds = %if.end25.i.i.i165
  %state.i.i.i166 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %81 = ptrtoint ptr %state.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state.i.i.i166, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp29.not.i.i.i167 = icmp eq i32 %82, 0
  br i1 %cmp29.not.i.i.i167, label %land.lhs.true.i.i.i168.wlcore_write32.exit171_crit_edge, label %if.then30.i.i.i169

land.lhs.true.i.i.i168.wlcore_write32.exit171_crit_edge: ; preds = %land.lhs.true.i.i.i168
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit171

if.then30.i.i.i169:                               ; preds = %land.lhs.true.i.i.i168
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_write32.exit171

wlcore_write32.exit171:                           ; preds = %if.then30.i.i.i169, %land.lhs.true.i.i.i168.wlcore_write32.exit171_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i163)
  %cmp41 = icmp slt i32 %call27.i.i.i163, 0
  br i1 %cmp41, label %wlcore_write32.exit171.out_crit_edge, label %wlcore_write32.exit171.if.end43_crit_edge

wlcore_write32.exit171.if.end43_crit_edge:        ; preds = %wlcore_write32.exit171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

wlcore_write32.exit171.out_crit_edge:             ; preds = %wlcore_write32.exit171
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end43:                                         ; preds = %wlcore_write32.exit171.if.end43_crit_edge, %if.end25.i.i.i165.if.end43_crit_edge
  %call.i172 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef -2137798080) #15
  %83 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer_32.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 192, ptr %84, align 4
  %86 = load ptr, ptr %buffer_32.i.i, align 4
  %87 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags.i.i.i, align 4
  %89 = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i175 = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i175, label %lor.lhs.false.i.i.i179, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i179:                           ; preds = %if.end43
  %90 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags.i.i.i, align 4
  %92 = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool3.not.i.i.i176 = icmp ne i32 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i172)
  %cmp.i.i.i177 = icmp ne i32 %call.i172, 131068
  %spec.select.i.i.i178 = and i1 %cmp.i.i.i177, %tobool3.not.i.i.i176
  br i1 %spec.select.i.i.i178, label %do.end.i.i.i180, label %if.end25.i.i.i186, !prof !315

do.end.i.i.i180:                                  ; preds = %lor.lhs.false.i.i.i179
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i186:                                ; preds = %lor.lhs.false.i.i.i179
  %93 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i182 = getelementptr inbounds %struct.wl1271_if_operations, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write.i.i.i182, align 4
  %97 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i184 = tail call i32 %96(ptr noundef %98, i32 noundef %call.i172, ptr noundef %86, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i184)
  %tobool28.not.i.i.i185 = icmp eq i32 %call27.i.i.i184, 0
  br i1 %tobool28.not.i.i.i185, label %if.end25.i.i.i186.if.end47_crit_edge, label %land.lhs.true.i.i.i189

if.end25.i.i.i186.if.end47_crit_edge:             ; preds = %if.end25.i.i.i186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

land.lhs.true.i.i.i189:                           ; preds = %if.end25.i.i.i186
  %state.i.i.i187 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %99 = ptrtoint ptr %state.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state.i.i.i187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp29.not.i.i.i188 = icmp eq i32 %100, 0
  br i1 %cmp29.not.i.i.i188, label %land.lhs.true.i.i.i189.wlcore_write32.exit192_crit_edge, label %if.then30.i.i.i190

land.lhs.true.i.i.i189.wlcore_write32.exit192_crit_edge: ; preds = %land.lhs.true.i.i.i189
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit192

if.then30.i.i.i190:                               ; preds = %land.lhs.true.i.i.i189
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_write32.exit192

wlcore_write32.exit192:                           ; preds = %if.then30.i.i.i190, %land.lhs.true.i.i.i189.wlcore_write32.exit192_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i184)
  %cmp45 = icmp slt i32 %call27.i.i.i184, 0
  br i1 %cmp45, label %wlcore_write32.exit192.out_crit_edge, label %wlcore_write32.exit192.if.end47_crit_edge

wlcore_write32.exit192.if.end47_crit_edge:        ; preds = %wlcore_write32.exit192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

wlcore_write32.exit192.out_crit_edge:             ; preds = %wlcore_write32.exit192
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end47:                                         ; preds = %wlcore_write32.exit192.if.end47_crit_edge, %if.end25.i.i.i186.if.end47_crit_edge
  %call.i193 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef -2137798080) #15
  %101 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buffer_32.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 64, ptr %102, align 4
  %104 = load ptr, ptr %buffer_32.i.i, align 4
  %105 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags.i.i.i, align 4
  %107 = and i32 %106, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i.i.i196 = icmp eq i32 %107, 0
  br i1 %tobool.not.i.i.i196, label %lor.lhs.false.i.i.i200, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.i.i.i200:                           ; preds = %if.end47
  %108 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags.i.i.i, align 4
  %110 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool3.not.i.i.i197 = icmp ne i32 %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i193)
  %cmp.i.i.i198 = icmp ne i32 %call.i193, 131068
  %spec.select.i.i.i199 = and i1 %cmp.i.i.i198, %tobool3.not.i.i.i197
  br i1 %spec.select.i.i.i199, label %do.end.i.i.i201, label %if.end25.i.i.i207, !prof !315

do.end.i.i.i201:                                  ; preds = %lor.lhs.false.i.i.i200
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 52, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end25.i.i.i207:                                ; preds = %lor.lhs.false.i.i.i200
  %111 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i203 = getelementptr inbounds %struct.wl1271_if_operations, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %write.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write.i.i.i203, align 4
  %115 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i205 = tail call i32 %114(ptr noundef %116, i32 noundef %call.i193, ptr noundef %104, i32 noundef 4, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i205)
  %tobool28.not.i.i.i206 = icmp eq i32 %call27.i.i.i205, 0
  br i1 %tobool28.not.i.i.i206, label %if.end25.i.i.i207.if.end51_crit_edge, label %land.lhs.true.i.i.i210

if.end25.i.i.i207.if.end51_crit_edge:             ; preds = %if.end25.i.i.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

land.lhs.true.i.i.i210:                           ; preds = %if.end25.i.i.i207
  %state.i.i.i208 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %117 = ptrtoint ptr %state.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %state.i.i.i208, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp29.not.i.i.i209 = icmp eq i32 %118, 0
  br i1 %cmp29.not.i.i.i209, label %land.lhs.true.i.i.i210.wlcore_write32.exit213_crit_edge, label %if.then30.i.i.i211

land.lhs.true.i.i.i210.wlcore_write32.exit213_crit_edge: ; preds = %land.lhs.true.i.i.i210
  call void @__sanitizer_cov_trace_pc() #17
  br label %wlcore_write32.exit213

if.then30.i.i.i211:                               ; preds = %land.lhs.true.i.i.i210
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #15
  br label %wlcore_write32.exit213

wlcore_write32.exit213:                           ; preds = %if.then30.i.i.i211, %land.lhs.true.i.i.i210.wlcore_write32.exit213_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i205)
  %cmp49 = icmp slt i32 %call27.i.i.i205, 0
  br i1 %cmp49, label %wlcore_write32.exit213.out_crit_edge, label %wlcore_write32.exit213.if.end51_crit_edge

wlcore_write32.exit213.if.end51_crit_edge:        ; preds = %wlcore_write32.exit213
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

wlcore_write32.exit213.out_crit_edge:             ; preds = %wlcore_write32.exit213
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end51:                                         ; preds = %wlcore_write32.exit213.if.end51_crit_edge, %if.end25.i.i.i207.if.end51_crit_edge
  %irq = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 7
  %119 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq, align 4
  %call.i214 = tail call ptr @irq_get_irq_data(i32 noundef %120) #15
  %tobool.not.i = icmp eq ptr %call.i214, null
  br i1 %tobool.not.i, label %if.end51.out_crit_edge, label %irq_get_trigger_type.exit

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

irq_get_trigger_type.exit:                        ; preds = %if.end51
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i214, i32 0, i32 3
  %121 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %common.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %and.i.i = and i32 %124, 15
  %125 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %and.i.i, label %irq_get_trigger_type.exit.out_crit_edge [
    i32 8, label %irq_get_trigger_type.exit.do.end58_crit_edge
    i32 2, label %irq_get_trigger_type.exit.do.end58_crit_edge242
  ]

irq_get_trigger_type.exit.do.end58_crit_edge242:  ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end58

irq_get_trigger_type.exit.do.end58_crit_edge:     ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end58

irq_get_trigger_type.exit.out_crit_edge:          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end58:                                         ; preds = %irq_get_trigger_type.exit.do.end58_crit_edge, %irq_get_trigger_type.exit.do.end58_crit_edge242
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %and.i.i) #18
  %126 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptable, align 8
  %arrayidx62 = getelementptr %struct.wlcore_partition_set, ptr %127, i32 4
  %call63 = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx62) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end58.out_crit_edge, label %if.end66

do.end58.out_crit_edge:                           ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end66:                                         ; preds = %do.end58
  %call67 = call i32 @wl18xx_top_reg_read(ptr noundef %wl, i32 noundef 10485860, ptr noundef nonnull %irq_invert) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.out_crit_edge, label %if.end70

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end70:                                         ; preds = %if.end66
  %128 = ptrtoint ptr %irq_invert to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %irq_invert, align 2
  %130 = or i16 %129, 2
  store i16 %130, ptr %irq_invert, align 2
  %call72 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10485860, i16 noundef zeroext %130) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end70.out_crit_edge, label %if.end76

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %131 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ptable, align 8
  %arrayidx78 = getelementptr %struct.wlcore_partition_set, ptr %132, i32 5
  %call79 = call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx78) #15
  br label %out

out:                                              ; preds = %if.end76, %if.end70.out_crit_edge, %if.end66.out_crit_edge, %do.end58.out_crit_edge, %irq_get_trigger_type.exit.out_crit_edge, %if.end51.out_crit_edge, %wlcore_write32.exit213.out_crit_edge, %do.end.i.i.i201, %if.end47.out_crit_edge, %wlcore_write32.exit192.out_crit_edge, %do.end.i.i.i180, %if.end43.out_crit_edge, %wlcore_write32.exit171.out_crit_edge, %do.end.i.i.i159, %if.end39.out_crit_edge, %if.end33.out_crit_edge, %wlcore_raw_read.exit.i.i148.out_crit_edge, %do.end.i.i.i137, %do.end29.out_crit_edge, %wlcore_raw_read.exit.i.i.out_crit_edge, %do.end.i.i.i119, %if.end4.out_crit_edge, %wlcore_write32.exit.out_crit_edge, %do.end.i.i.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call27.i.i.i, %wlcore_write32.exit.out_crit_edge ], [ %call36, %if.end33.out_crit_edge ], [ %call27.i.i.i163, %wlcore_write32.exit171.out_crit_edge ], [ %call27.i.i.i184, %wlcore_write32.exit192.out_crit_edge ], [ %call27.i.i.i205, %wlcore_write32.exit213.out_crit_edge ], [ %call63, %do.end58.out_crit_edge ], [ %call67, %if.end66.out_crit_edge ], [ %call72, %if.end70.out_crit_edge ], [ %call79, %if.end76 ], [ %and.i.i, %irq_get_trigger_type.exit.out_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %if.end.out_crit_edge ], [ -5, %if.end4.out_crit_edge ], [ -5, %do.end.i.i.i119 ], [ %call27.i.i.i122, %wlcore_raw_read.exit.i.i.out_crit_edge ], [ -5, %do.end29.out_crit_edge ], [ -5, %do.end.i.i.i137 ], [ %call27.i.i.i140, %wlcore_raw_read.exit.i.i148.out_crit_edge ], [ -5, %do.end.i.i.i159 ], [ -5, %if.end39.out_crit_edge ], [ -5, %do.end.i.i.i180 ], [ -5, %if.end43.out_crit_edge ], [ -5, %do.end.i.i.i201 ], [ -5, %if.end47.out_crit_edge ], [ 0, %if.end51.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %irq_invert) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_boot_upload_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_boot_run_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl18xx_set_clk(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  %clk_freq = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %clk_freq) #15
  %0 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %clk_freq, align 2, !annotation !311
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %1 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptable, align 8
  %arrayidx = getelementptr %struct.wlcore_partition_set, ptr %2, i32 4
  %call = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @wl18xx_top_reg_read(ptr noundef %wl, i32 noundef 10494118, ptr noundef nonnull %clk_freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %3 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end32_crit_edge, label %do.body8, !prof !313

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end32

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl18xx_set_clk.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl18xx_set_clk, %if.then17)) #15
          to label %do.end32 [label %if.then17], !srcloc !314

if.then17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clk_freq, align 2
  %conv = zext i16 %5 to i32
  %arrayidx18 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx18, align 4
  %m = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %conv, i32 1
  %8 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m, align 4
  %p = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p, align 4
  %q = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %conv, i32 3
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q, align 4
  %14 = lshr i32 953, %conv
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool27.not.not, ptr @.str.48, ptr @.str.49
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl18xx_set_clk.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %cond) #15
  br label %do.end32

do.end32:                                         ; preds = %if.then17, %do.body8, %do.body.do.end32_crit_edge
  %16 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %clk_freq, align 2
  %idxprom33 = zext i16 %17 to i32
  %arrayidx34 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table_coex, i32 0, i32 %idxprom33
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx34, align 4
  %conv36 = trunc i32 %19 to i16
  %call37 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494852, i16 noundef zeroext %conv36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end32.out_crit_edge, label %if.end41

do.end32.out_crit_edge:                           ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end41:                                         ; preds = %do.end32
  %20 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %clk_freq, align 2
  %idxprom42 = zext i16 %21 to i32
  %m44 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table_coex, i32 0, i32 %idxprom42, i32 1
  %22 = ptrtoint ptr %m44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m44, align 4
  %conv45 = trunc i32 %23 to i16
  %call46 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494850, i16 noundef zeroext %conv45) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end41.out_crit_edge, label %if.end50

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end50:                                         ; preds = %if.end41
  %call51 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494862, i16 noundef zeroext 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.out_crit_edge, label %if.end55

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end55:                                         ; preds = %if.end50
  %24 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %clk_freq, align 2
  %idxprom56 = zext i16 %25 to i32
  %arrayidx57 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %idxprom56
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx57, align 4
  %conv59 = trunc i32 %27 to i16
  %call60 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494818, i16 noundef zeroext %conv59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end55.out_crit_edge, label %if.end64

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end64:                                         ; preds = %if.end55
  %28 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %clk_freq, align 2
  %idxprom65 = zext i16 %29 to i32
  %m67 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %idxprom65, i32 1
  %30 = ptrtoint ptr %m67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m67, align 4
  %conv68 = trunc i32 %31 to i16
  %call69 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494816, i16 noundef zeroext %conv68) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end64.out_crit_edge, label %if.end73

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end73:                                         ; preds = %if.end64
  %32 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %clk_freq, align 2
  %idxprom74 = zext i16 %33 to i32
  %34 = lshr i32 953, %idxprom74
  %35 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool77.not.not = icmp eq i32 %35, 0
  br i1 %tobool77.not.not, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end73
  %q81 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %idxprom74, i32 3
  %36 = ptrtoint ptr %q81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q81, align 4
  %conv83 = trunc i32 %37 to i16
  %call84 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494820, i16 noundef zeroext %conv83) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then78.out_crit_edge, label %if.end88

if.then78.out_crit_edge:                          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end88:                                         ; preds = %if.then78
  %38 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %clk_freq, align 2
  %idxprom89 = zext i16 %39 to i32
  %q91 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %idxprom89, i32 3
  %40 = ptrtoint ptr %q91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %q91, align 4
  %shr = lshr i32 %41, 16
  %42 = trunc i32 %shr to i16
  %conv93 = and i16 %42, 127
  %call94 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494822, i16 noundef zeroext %conv93) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end88.out_crit_edge, label %if.end98

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end98:                                         ; preds = %if.end88
  %43 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %clk_freq, align 2
  %idxprom99 = zext i16 %44 to i32
  %p101 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %idxprom99, i32 2
  %45 = ptrtoint ptr %p101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %p101, align 4
  %conv103 = trunc i32 %46 to i16
  %call104 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494824, i16 noundef zeroext %conv103) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.end98.out_crit_edge, label %if.end108

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end108:                                        ; preds = %if.end98
  %47 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %clk_freq, align 2
  %idxprom109 = zext i16 %48 to i32
  %p111 = getelementptr [10 x %struct.wl18xx_clk_cfg], ptr @wl18xx_clk_table, i32 0, i32 %idxprom109, i32 2
  %49 = ptrtoint ptr %p111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p111, align 4
  %shr112 = lshr i32 %50, 16
  %51 = trunc i32 %shr112 to i16
  %conv114 = and i16 %51, 15
  %call115 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494826, i16 noundef zeroext %conv114) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end108.out_crit_edge, label %if.end108.if.end125_crit_edge

if.end108.if.end125_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else:                                          ; preds = %if.end73
  %call120 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494828, i16 noundef zeroext 18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.else.out_crit_edge, label %if.else.if.end125_crit_edge

if.else.if.end125_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end125:                                        ; preds = %if.else.if.end125_crit_edge, %if.end108.if.end125_crit_edge
  %call126 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494872, i16 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.end125.out_crit_edge, label %if.end130

if.end125.out_crit_edge:                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end130:                                        ; preds = %if.end125
  %call131 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494866, i16 noundef zeroext 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.end130.out_crit_edge, label %if.end135

if.end130.out_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end135:                                        ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #15
  %call136 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494866, i16 noundef zeroext 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end135.out_crit_edge, label %if.end140

if.end135.out_crit_edge:                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end140:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  %call141 = call i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef 10494862, i16 noundef zeroext 17) #15
  br label %out

out:                                              ; preds = %if.end140, %if.end135.out_crit_edge, %if.end130.out_crit_edge, %if.end125.out_crit_edge, %if.else.out_crit_edge, %if.end108.out_crit_edge, %if.end98.out_crit_edge, %if.end88.out_crit_edge, %if.then78.out_crit_edge, %if.end64.out_crit_edge, %if.end55.out_crit_edge, %if.end50.out_crit_edge, %if.end41.out_crit_edge, %do.end32.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ %call37, %do.end32.out_crit_edge ], [ %call46, %if.end41.out_crit_edge ], [ %call51, %if.end50.out_crit_edge ], [ %call60, %if.end55.out_crit_edge ], [ %call69, %if.end64.out_crit_edge ], [ %call84, %if.then78.out_crit_edge ], [ %call94, %if.end88.out_crit_edge ], [ %call104, %if.end98.out_crit_edge ], [ %call115, %if.end108.out_crit_edge ], [ %call126, %if.end125.out_crit_edge ], [ %call131, %if.end130.out_crit_edge ], [ %call136, %if.end135.out_crit_edge ], [ %call141, %if.end140 ], [ %call120, %if.else.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %clk_freq) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_set_partition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_top_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_top_reg_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_translate_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_disable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl18xx_tx_immediate_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_dynamic_fw_traces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_set_checksum_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_host_if_cfg_bitmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @wl18xx_rdl_name(i32 noundef %rdl_num) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %rdl_num)
  %0 = icmp ult i32 %rdl_num, 21
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [21 x ptr], ptr @switch.table.wl18xx_rdl_name, i32 0, i32 %rdl_num
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.72, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_peer_ht_operation_mode(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl18xx_acx_set_peer_cap(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !50, !51, !53, !55, !56, !58, !60, !61, !63, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !180, !182, !184, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !238, !239, !240, !242, !243, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !260, !261, !262, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @__initcall__kmod_wl18xx__369_2043_wl18xx_driver_init6, !1, !"__initcall__kmod_wl18xx__369_2043_wl18xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2043, i32 1}
!2 = !{ptr @__exitcall_wl18xx_driver_exit, !1, !"__exitcall_wl18xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_ht_mode, !4, !"__param_ht_mode", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2044, i32 1}
!5 = !{ptr @__UNIQUE_ID_ht_modetype370, !4, !"__UNIQUE_ID_ht_modetype370", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_ht_mode371, !7, !"__UNIQUE_ID_ht_mode371", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2045, i32 1}
!8 = !{ptr @__param_board_type, !9, !"__param_board_type", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2047, i32 1}
!10 = !{ptr @__UNIQUE_ID_board_typetype372, !9, !"__UNIQUE_ID_board_typetype372", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_board_type373, !12, !"__UNIQUE_ID_board_type373", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2048, i32 1}
!13 = !{ptr @__param_checksum, !14, !"__param_checksum", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2051, i32 1}
!15 = !{ptr @__UNIQUE_ID_checksumtype374, !14, !"__UNIQUE_ID_checksumtype374", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_checksum375, !17, !"__UNIQUE_ID_checksum375", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2052, i32 1}
!18 = !{ptr @__param_dc2dc, !19, !"__param_dc2dc", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2054, i32 1}
!20 = !{ptr @__UNIQUE_ID_dc2dctype376, !19, !"__UNIQUE_ID_dc2dctype376", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_dc2dc377, !22, !"__UNIQUE_ID_dc2dc377", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2055, i32 1}
!23 = !{ptr @__param_n_antennas_2, !24, !"__param_n_antennas_2", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2057, i32 1}
!25 = !{ptr @__UNIQUE_ID_n_antennas_2type378, !24, !"__UNIQUE_ID_n_antennas_2type378", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_n_antennas_2379, !27, !"__UNIQUE_ID_n_antennas_2379", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2058, i32 1}
!28 = !{ptr @__param_n_antennas_5, !29, !"__param_n_antennas_5", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2061, i32 1}
!30 = !{ptr @__UNIQUE_ID_n_antennas_5type380, !29, !"__UNIQUE_ID_n_antennas_5type380", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_n_antennas_5381, !32, !"__UNIQUE_ID_n_antennas_5381", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2062, i32 1}
!33 = !{ptr @__param_low_band_component, !34, !"__param_low_band_component", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2065, i32 1}
!35 = !{ptr @__UNIQUE_ID_low_band_componenttype382, !34, !"__UNIQUE_ID_low_band_componenttype382", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_low_band_component383, !37, !"__UNIQUE_ID_low_band_component383", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2066, i32 1}
!38 = !{ptr @__param_low_band_component_type, !39, !"__param_low_band_component_type", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2069, i32 1}
!40 = !{ptr @__UNIQUE_ID_low_band_component_typetype384, !39, !"__UNIQUE_ID_low_band_component_typetype384", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_low_band_component_type385, !42, !"__UNIQUE_ID_low_band_component_type385", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2071, i32 1}
!43 = !{ptr @__param_high_band_component, !44, !"__param_high_band_component", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2074, i32 1}
!45 = !{ptr @__UNIQUE_ID_high_band_componenttype386, !44, !"__UNIQUE_ID_high_band_componenttype386", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_high_band_component387, !47, !"__UNIQUE_ID_high_band_component387", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2075, i32 1}
!48 = !{ptr @__param_high_band_component_type, !49, !"__param_high_band_component_type", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2078, i32 1}
!50 = !{ptr @__UNIQUE_ID_high_band_component_typetype388, !49, !"__UNIQUE_ID_high_band_component_typetype388", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_high_band_component_type389, !52, !"__UNIQUE_ID_high_band_component_type389", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2080, i32 1}
!53 = !{ptr @__param_pwr_limit_reference_11_abg, !54, !"__param_pwr_limit_reference_11_abg", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2083, i32 1}
!55 = !{ptr @__UNIQUE_ID_pwr_limit_reference_11_abgtype390, !54, !"__UNIQUE_ID_pwr_limit_reference_11_abgtype390", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_pwr_limit_reference_11_abg391, !57, !"__UNIQUE_ID_pwr_limit_reference_11_abg391", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2085, i32 1}
!58 = !{ptr @__param_num_rx_desc, !59, !"__param_num_rx_desc", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2088, i32 1}
!60 = !{ptr @__UNIQUE_ID_num_rx_desctype392, !59, !"__UNIQUE_ID_num_rx_desctype392", i1 false, i1 false}
!61 = !{ptr @__UNIQUE_ID_num_rx_desc_param393, !62, !"__UNIQUE_ID_num_rx_desc_param393", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2089, i32 1}
!63 = !{ptr @__UNIQUE_ID_file394, !64, !"__UNIQUE_ID_file394", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2092, i32 1}
!65 = !{ptr @__UNIQUE_ID_license395, !64, !"__UNIQUE_ID_license395", i1 false, i1 false}
!66 = !{ptr @__UNIQUE_ID_author396, !67, !"__UNIQUE_ID_author396", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2093, i32 1}
!68 = !{ptr @__UNIQUE_ID_firmware397, !69, !"__UNIQUE_ID_firmware397", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2094, i32 1}
!70 = !{ptr @.str, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2039, i32 11}
!72 = !{ptr @wl18xx_driver, !73, !"wl18xx_driver", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2034, i32 31}
!74 = !{ptr @.str.1, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2008, i32 3}
!76 = !{ptr @.str.2, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.3, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wl18xx_probe._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @wl18xx_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @wl18xx_ops, !81, !"wl18xx_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1706, i32 26}
!82 = !{ptr @.str.4, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1904, i32 33}
!84 = !{ptr @.str.5, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1906, i32 40}
!86 = !{ptr @.str.6, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1908, i32 40}
!88 = !{ptr @.str.7, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1910, i32 40}
!90 = !{ptr @.str.8, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1912, i32 40}
!92 = !{ptr @.str.9, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1915, i32 4}
!94 = !{ptr @.str.10, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @wl18xx_setup._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @wl18xx_setup._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.12, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1922, i32 3}
!99 = !{ptr @wl18xx_setup._entry.11, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @wl18xx_setup._entry_ptr.13, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1948, i32 30}
!103 = !{ptr @.str.15, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1950, i32 35}
!105 = !{ptr @.str.16, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1952, i32 35}
!107 = !{ptr @.str.18, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1955, i32 4}
!109 = !{ptr @wl18xx_setup._entry.17, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @wl18xx_setup._entry_ptr.19, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @wl18xx_rtable, !112, !"wl18xx_rtable", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 614, i32 18}
!113 = !{ptr @wl18xx_iface_combinations, !114, !"wl18xx_iface_combinations", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1851, i32 1}
!115 = !{ptr @wl18xx_iface_limits, !116, !"wl18xx_iface_limits", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1813, i32 43}
!117 = !{ptr @wl18xx_iface_ap_limits, !118, !"wl18xx_iface_ap_limits", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1833, i32 43}
!119 = !{ptr @wl18xx_band_rate_to_idx, !120, !"wl18xx_band_rate_to_idx", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 126, i32 18}
!121 = !{ptr @wl18xx_rate_to_idx_2ghz, !122, !"wl18xx_rate_to_idx_2ghz", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 52, i32 17}
!123 = !{ptr @wl18xx_rate_to_idx_5ghz, !124, !"wl18xx_rate_to_idx_5ghz", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 89, i32 17}
!125 = !{ptr @.str.20, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1446, i32 3}
!127 = !{ptr @.str.21, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @wl18xx_conf_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @wl18xx_conf_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.22, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1400, i32 3}
!132 = !{ptr @.str.23, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @wl18xx_load_conf_file._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @wl18xx_load_conf_file._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.25, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1406, i32 3}
!137 = !{ptr @wl18xx_load_conf_file._entry.24, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @wl18xx_load_conf_file._entry_ptr.26, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.28, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1415, i32 3}
!141 = !{ptr @wl18xx_load_conf_file._entry.27, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @wl18xx_load_conf_file._entry_ptr.29, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.31, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1423, i32 3}
!145 = !{ptr @wl18xx_load_conf_file._entry.30, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @wl18xx_load_conf_file._entry_ptr.32, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @wl18xx_conf, !148, !"wl18xx_conf", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 164, i32 27}
!149 = !{ptr @wl18xx_default_priv_conf, !150, !"wl18xx_default_priv_conf", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 508, i32 32}
!151 = !{ptr @wl18xx_mimo_ht_cap_2ghz, !152, !"wl18xx_mimo_ht_cap_2ghz", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1800, i32 36}
!153 = !{ptr @wl18xx_siso40_ht_cap_2ghz, !154, !"wl18xx_siso40_ht_cap_2ghz", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1756, i32 36}
!155 = !{ptr @wl18xx_siso40_ht_cap_5ghz, !156, !"wl18xx_siso40_ht_cap_5ghz", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1771, i32 36}
!157 = !{ptr @wl18xx_siso20_ht_cap, !158, !"wl18xx_siso20_ht_cap", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1786, i32 36}
!159 = !{ptr @.str.38, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 667, i32 3}
!161 = !{ptr @.str.39, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.40, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @wl18xx_identify_chip.__UNIQUE_ID_ddebug348, !160, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!164 = !{ptr @.str.41, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 669, i32 20}
!166 = !{ptr @.str.42, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 686, i32 3}
!168 = !{ptr @wl18xx_identify_chip._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @wl18xx_identify_chip._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.44, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 692, i32 3}
!172 = !{ptr @wl18xx_identify_chip._entry.43, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @wl18xx_identify_chip._entry_ptr.45, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.46, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 725, i32 2}
!176 = !{ptr @.str.47, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @wl18xx_set_clk.__UNIQUE_ID_ddebug349, !175, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!178 = !{ptr @.str.48, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.49, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @wl18xx_clk_table, !181, !"wl18xx_clk_table", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 646, i32 36}
!182 = !{ptr @wl18xx_clk_table_coex, !183, !"wl18xx_clk_table_coex", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 634, i32 36}
!184 = !{ptr @.str.50, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ti/wl18xx/../wlcore/io.h", i32 51, i32 6}
!186 = !{ptr @.str.51, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 886, i32 2}
!188 = !{ptr @.str.52, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @wl18xx_pre_upload.__UNIQUE_ID_ddebug351, !187, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!190 = !{ptr @.str.53, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 923, i32 3}
!192 = !{ptr @wl18xx_pre_upload._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @wl18xx_pre_upload._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.54, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1464, i32 3}
!196 = !{ptr @.str.55, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @wl18xx_plt_init._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @wl18xx_plt_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.56, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1091, i32 2}
!201 = !{ptr @.str.57, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @wl18xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug352, !200, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!203 = !{ptr @.str.58, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1278, i32 3}
!205 = !{ptr @.str.59, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug357, !204, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!207 = !{ptr @.str.60, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1284, i32 3}
!209 = !{ptr @wl18xx_sta_get_ap_rate_mask.__UNIQUE_ID_ddebug358, !208, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!210 = !{ptr @.str.61, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1378, i32 2}
!212 = !{ptr @.str.62, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @wl18xx_get_pg_ver._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @wl18xx_get_pg_ver._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.63, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1320, i32 10}
!217 = !{ptr @.str.64, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1322, i32 10}
!219 = !{ptr @.str.65, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1324, i32 10}
!221 = !{ptr @.str.66, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1326, i32 10}
!223 = !{ptr @.str.67, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1328, i32 10}
!225 = !{ptr @.str.68, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1330, i32 10}
!227 = !{ptr @.str.69, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1332, i32 10}
!229 = !{ptr @.str.70, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1334, i32 10}
!231 = !{ptr @.str.71, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1336, i32 10}
!233 = !{ptr @.str.72, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1338, i32 10}
!235 = !{ptr @.str.73, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1504, i32 3}
!237 = !{ptr @.str.74, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @wl18xx_get_mac._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @wl18xx_get_mac._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.75, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1296, i32 3}
!242 = !{ptr @wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug359, !241, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!243 = !{ptr @.str.76, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1305, i32 3}
!245 = !{ptr @wl18xx_ap_get_mimo_wide_rate_mask.__UNIQUE_ID_ddebug360, !244, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!246 = !{ptr @.str.77, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1525, i32 2}
!248 = !{ptr @.str.78, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @wl18xx_handle_static_data._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @wl18xx_handle_static_data._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.79, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1550, i32 2}
!253 = !{ptr @.str.80, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @wl18xx_set_key.__UNIQUE_ID_ddebug361, !252, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!255 = !{ptr @.str.81, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1576, i32 2}
!257 = !{ptr @wl18xx_set_key.__UNIQUE_ID_ddebug362, !256, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!258 = !{ptr @.str.82, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 1618, i32 2}
!260 = !{ptr @.str.83, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @wl18xx_sta_rc_update.__UNIQUE_ID_ddebug365, !259, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!262 = !{ptr @wl18xx_ptable, !263, !"wl18xx_ptable", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 580, i32 42}
!264 = !{ptr @wl18xx_id_table, !265, !"wl18xx_id_table", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 2028, i32 40}
!266 = !{ptr @__param_str_ht_mode, !4, !"__param_str_ht_mode", i1 false, i1 false}
!267 = !{ptr @ht_mode_param, !268, !"ht_mode_param", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 37, i32 14}
!269 = !{ptr @__param_str_board_type, !9, !"__param_str_board_type", i1 false, i1 false}
!270 = !{ptr @board_type_param, !271, !"board_type_param", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 38, i32 14}
!272 = !{ptr @__param_str_checksum, !14, !"__param_str_checksum", i1 false, i1 false}
!273 = !{ptr @checksum_param, !274, !"checksum_param", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 39, i32 13}
!275 = !{ptr @__param_str_dc2dc, !19, !"__param_str_dc2dc", i1 false, i1 false}
!276 = !{ptr @dc2dc_param, !277, !"dc2dc_param", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 43, i32 12}
!278 = !{ptr @__param_str_n_antennas_2, !24, !"__param_str_n_antennas_2", i1 false, i1 false}
!279 = !{ptr @n_antennas_2_param, !280, !"n_antennas_2_param", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 44, i32 12}
!281 = !{ptr @__param_str_n_antennas_5, !29, !"__param_str_n_antennas_5", i1 false, i1 false}
!282 = !{ptr @n_antennas_5_param, !283, !"n_antennas_5_param", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 45, i32 12}
!284 = !{ptr @__param_str_low_band_component, !34, !"__param_str_low_band_component", i1 false, i1 false}
!285 = !{ptr @low_band_component_param, !286, !"low_band_component_param", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 46, i32 12}
!287 = !{ptr @__param_str_low_band_component_type, !39, !"__param_str_low_band_component_type", i1 false, i1 false}
!288 = !{ptr @low_band_component_type_param, !289, !"low_band_component_type_param", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 47, i32 12}
!290 = !{ptr @__param_str_high_band_component, !44, !"__param_str_high_band_component", i1 false, i1 false}
!291 = !{ptr @high_band_component_param, !292, !"high_band_component_param", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 48, i32 12}
!293 = !{ptr @__param_str_high_band_component_type, !49, !"__param_str_high_band_component_type", i1 false, i1 false}
!294 = !{ptr @high_band_component_type_param, !295, !"high_band_component_type_param", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 49, i32 12}
!296 = !{ptr @__param_str_pwr_limit_reference_11_abg, !54, !"__param_str_pwr_limit_reference_11_abg", i1 false, i1 false}
!297 = !{ptr @pwr_limit_reference_11_abg_param, !298, !"pwr_limit_reference_11_abg_param", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 50, i32 12}
!299 = !{ptr @__param_str_num_rx_desc, !59, !"__param_str_num_rx_desc", i1 false, i1 false}
!300 = !{ptr @num_rx_desc_param, !301, !"num_rx_desc_param", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ti/wl18xx/main.c", i32 40, i32 12}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{!"auto-init"}
!312 = !{i8 0, i8 2}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{i64 2149014232, i64 2149014237, i64 2149014250, i64 2149014294, i64 2149014328, i64 2149014349}
!315 = !{!"branch_weights", i32 1, i32 2000}
