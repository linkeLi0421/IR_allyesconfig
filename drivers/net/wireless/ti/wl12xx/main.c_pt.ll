; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl12xx/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl12xx/main.c"
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
%struct.wl12xx_clock = type { i32, i8, i8 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.wl12xx_priv_conf = type { %struct.wl12xx_conf_rf, %struct.conf_memory_settings }
%struct.wl12xx_conf_rf = type { [7 x i8], [18 x i8] }
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.wl12xx_priv = type { %struct.wl12xx_priv_conf, i32, i32, ptr }
%struct.wlcore_platdev_data = type { ptr, ptr, i8, i32, i32, i8 }
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
%struct.wl1271_rx_descriptor = type { i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.wl_fw_status = type { i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, %struct.anon.136, i32, ptr }
%struct.anon.136 = type { ptr, ptr, i8, i8, i8, i8 }
%struct.wl12xx_fw_status = type { i32, i8, i8, i8, i8, [8 x i32], i32, i32, i32, i32, i32, %struct.wl12xx_fw_packet_counters, i32 }
%struct.wl12xx_fw_packet_counters = type { [4 x i8], [12 x i8], i8, i8, [2 x i8] }
%struct.wl12xx_vif = type { ptr, %struct.list_head, i32, i8, i8, i8, i8, i8, %union.anon.129, i32, [4 x i32], [1 x i32], [33 x i8], i8, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, i32, i16, i8, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, %struct.delayed_work, i32, i32, i8, i32, %struct.delayed_work, i32, %struct.ieee80211_sta_ht_cap, %struct.work_struct, i64, %struct.anon.132 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i8, i8, [1 x i32], [14 x ptr], i8, i8, [4 x i8] }
%struct.anon.132 = type { [0 x i8] }
%struct.wl1271_acx_mem_map = type { %struct.acx_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.acx_header = type { %struct.wl1271_cmd_header, i16, i16 }
%struct.wl1271_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl127x_rx_mem_pool_addr = type { i32, i32 }

@__initcall__kmod_wl12xx__361_1952_wl12xx_driver_init6 = internal global ptr @wl12xx_driver_init, section ".initcall6.init", align 4
@wl12xx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wl12xx_probe, ptr @wl12xx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wl12xx_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wl12xx_driver_exit = internal global ptr @wl12xx_driver_exit, section ".exitcall.exit", align 4
@__param_str_fref = internal constant [12 x i8] c"wl12xx.fref\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fref_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_fref = internal constant %struct.kernel_param { ptr @__param_str_fref, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @fref_param } }, section "__param", align 4
@__UNIQUE_ID_freftype362 = internal constant [27 x i8] c"wl12xx.parmtype=fref:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fref363 = internal constant [60 x i8] c"wl12xx.parm=fref:FREF clock: 19.2, 26, 26x, 38.4, 38.4x, 52\00", section ".modinfo", align 1
@__param_str_tcxo = internal constant [12 x i8] c"wl12xx.tcxo\00", align 1
@tcxo_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_tcxo = internal constant %struct.kernel_param { ptr @__param_str_tcxo, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @tcxo_param } }, section "__param", align 4
@__UNIQUE_ID_tcxotype364 = internal constant [27 x i8] c"wl12xx.parmtype=tcxo:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_tcxo365 = internal constant [76 x i8] c"wl12xx.parm=tcxo:TCXO clock: 19.2, 26, 38.4, 52, 16.368, 32.736, 16.8, 33.6\00", section ".modinfo", align 1
@__UNIQUE_ID_file366 = internal constant [50 x i8] c"wl12xx.file=drivers/net/wireless/ti/wl12xx/wl12xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [22 x i8] c"wl12xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author368 = internal constant [45 x i8] c"wl12xx.author=Luciano Coelho <coelho@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware369 = internal constant [51 x i8] c"wl12xx.firmware=ti-connectivity/wl127x-fw-5-sr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware370 = internal constant [51 x i8] c"wl12xx.firmware=ti-connectivity/wl127x-fw-5-mr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware371 = internal constant [52 x i8] c"wl12xx.firmware=ti-connectivity/wl127x-fw-5-plt.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware372 = internal constant [51 x i8] c"wl12xx.firmware=ti-connectivity/wl128x-fw-5-sr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware373 = internal constant [51 x i8] c"wl12xx.firmware=ti-connectivity/wl128x-fw-5-mr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware374 = internal constant [52 x i8] c"wl12xx.firmware=ti-connectivity/wl128x-fw-5-plt.bin\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl12xx_driver\00", [18 x i8] zeroinitializer }, align 32
@wl12xx_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"wl12xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wl12xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013wlcore: ERROR can't allocate hw\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl12xx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl12xx/main.c\00", [58 x i8] zeroinitializer }, align 32
@wl12xx_probe._entry_ptr = internal global ptr @wl12xx_probe._entry, section ".printk_index", align 4
@wl12xx_ops = internal global { %struct.wlcore_ops, [60 x i8] } { %struct.wlcore_ops { ptr @wl12xx_setup, ptr @wl12xx_identify_chip, ptr null, ptr @wl12xx_boot, ptr @wl12xx_plt_init, ptr @wl12xx_trigger_cmd, ptr @wl12xx_ack_event, ptr @wl12xx_wait_for_event, ptr @wl12xx_process_mailbox_events, ptr @wl12xx_calc_tx_blocks, ptr @wl12xx_set_tx_desc_blocks, ptr @wl12xx_set_tx_desc_data_len, ptr @wl12xx_get_rx_buf_align, ptr null, ptr @wl12xx_get_rx_packet_len, ptr @wl12xx_tx_delayed_compl, ptr null, ptr @wl12xx_hw_init, ptr null, ptr @wl12xx_convert_fw_status, ptr @wl12xx_sta_get_ap_rate_mask, ptr @wl12xx_get_pg_ver, ptr @wl12xx_get_mac, ptr @wl12xx_set_tx_desc_csum, ptr null, ptr null, ptr @wl12xx_debugfs_add_files, ptr null, ptr @wl12xx_scan_start, ptr @wl12xx_scan_stop, ptr @wl12xx_sched_scan_start, ptr @wl12xx_scan_sched_scan_stop, ptr @wl12xx_get_spare_blocks, ptr @wl12xx_set_key, ptr @wl12xx_cmd_channel_switch, ptr null, ptr null, ptr @wl12xx_set_peer_cap, ptr @wl12xx_convert_hwaddr, ptr @wl12xx_lnk_high_prio, ptr @wl12xx_lnk_low_prio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wl12xx_ptable = internal global { [6 x %struct.wlcore_partition_set], [32 x i8] } { [6 x %struct.wlcore_partition_set] [%struct.wlcore_partition_set { %struct.wlcore_partition { i32 96192, i32 0 }, %struct.wlcore_partition { i32 34816, i32 3145728 }, %struct.wlcore_partition zeroinitializer, %struct.wlcore_partition zeroinitializer }, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 85952, i32 262144 }, %struct.wlcore_partition { i32 40960, i32 3145728 }, %struct.wlcore_partition { i32 4, i32 3147000 }, %struct.wlcore_partition { i32 263172, i32 0 } }, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 85952, i32 262144 }, %struct.wlcore_partition { i32 34816, i32 3145728 }, %struct.wlcore_partition zeroinitializer, %struct.wlcore_partition zeroinitializer }, %struct.wlcore_partition_set { %struct.wlcore_partition { i32 85952, i32 262144 }, %struct.wlcore_partition { i32 24576, i32 3211264 }, %struct.wlcore_partition zeroinitializer, %struct.wlcore_partition zeroinitializer }, %struct.wlcore_partition_set zeroinitializer, %struct.wlcore_partition_set zeroinitializer], [32 x i8] zeroinitializer }, align 32
@wl12xx_rtable = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 3147780, i32 3146984, i32 3146992, i32 3167752, i32 3167756, i32 3146868, i32 3146972, i32 3167768, i32 3167860, i32 264116, i32 3145752, i32 3145736, i32 126912], [44 x i8] zeroinitializer }, align 32
@wl12xx_iface_combinations = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @wl12xx_iface_limits, i32 1, i16 3, i8 2, i8 0, i8 0, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@wl12xx_band_rate_to_idx = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @wl12xx_rate_to_idx_2ghz, ptr @wl12xx_rate_to_idx_5ghz], [24 x i8] zeroinitializer }, align 32
@wl12xx_refclock_table = internal constant { [7 x %struct.wl12xx_clock], [40 x i8] } { [7 x %struct.wl12xx_clock] [%struct.wl12xx_clock { i32 19200000, i8 0, i8 0 }, %struct.wl12xx_clock { i32 26000000, i8 0, i8 1 }, %struct.wl12xx_clock { i32 26000000, i8 1, i8 5 }, %struct.wl12xx_clock { i32 38400000, i8 0, i8 2 }, %struct.wl12xx_clock { i32 38400000, i8 1, i8 4 }, %struct.wl12xx_clock { i32 52000000, i8 0, i8 3 }, %struct.wl12xx_clock zeroinitializer], [40 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013wlcore: ERROR Invalid ref_clock frequency (%d Hz, %s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl12xx_setup\00", [19 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry_ptr = internal global ptr @wl12xx_setup._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XTAL\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"not XTAL\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"19.2\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"26\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"26x\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"38.4\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"38.4x\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"52\00", [29 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.3, i32 1851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wlcore: ERROR Invalid fref parameter %s\0A\00", [53 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry_ptr.16 = internal global ptr @wl12xx_setup._entry.14, section ".printk_index", align 4
@wl12xx_tcxoclock_table = internal constant { [9 x %struct.wl12xx_clock], [56 x i8] } { [9 x %struct.wl12xx_clock] [%struct.wl12xx_clock { i32 16368000, i8 1, i8 4 }, %struct.wl12xx_clock { i32 16800000, i8 1, i8 6 }, %struct.wl12xx_clock { i32 19200000, i8 1, i8 0 }, %struct.wl12xx_clock { i32 26000000, i8 1, i8 1 }, %struct.wl12xx_clock { i32 32736000, i8 1, i8 5 }, %struct.wl12xx_clock { i32 33600000, i8 1, i8 7 }, %struct.wl12xx_clock { i32 38400000, i8 1, i8 2 }, %struct.wl12xx_clock { i32 52000000, i8 1, i8 3 }, %struct.wl12xx_clock zeroinitializer], [56 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.3, i32 1860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wlcore: ERROR Invalid tcxo_clock frequency (%d Hz)\0A\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry_ptr.19 = internal global ptr @wl12xx_setup._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16.368\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"32.736\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16.8\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"33.6\00", [27 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.3, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wlcore: ERROR Invalid tcxo parameter %s\0A\00", [53 x i8] zeroinitializer }, align 32
@wl12xx_setup._entry_ptr.26 = internal global ptr @wl12xx_setup._entry.24, section ".printk_index", align 4
@wl12xx_iface_limits = internal constant { [2 x %struct.ieee80211_iface_limit], [24 x i8] } { [2 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 3, i16 4 }, %struct.ieee80211_iface_limit { i16 1, i16 776 }], [24 x i8] zeroinitializer }, align 32
@wl12xx_rate_to_idx_2ghz = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\07\07\06\05\04\03\02\01\00\0B\0A\09\08\FF\07\06\03\05\04\02\01\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_rate_to_idx_5ghz = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\07\07\06\05\04\03\02\01\00\07\06\05\04\FF\03\02\FF\01\00\FF\FF\FF", [42 x i8] zeroinitializer }, align 32
@wl12xx_ht_cap = internal constant { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, [42 x i8] } { <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 304, i8 1, i8 0, i8 6, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 18432, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, [42 x i8] zeroinitializer }, align 32
@wl12xx_default_priv_conf = internal constant { %struct.wl12xx_priv_conf, [63 x i8] } { %struct.wl12xx_priv_conf { %struct.wl12xx_conf_rf zeroinitializer, %struct.conf_memory_settings { i8 1, i8 1, i8 70, i8 40, i8 1, i8 100, i8 22, i8 27 } }, [63 x i8] zeroinitializer }, align 32
@wl12xx_conf = internal constant { <{ { <{ [55 x i32], [12 x i32] }>, i8 }, %struct.conf_rx_settings, %struct.conf_tx_settings, <{ i8, i8, i8, i8, i8, i8, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }>, i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>, [228 x i8] } { <{ { <{ [55 x i32], [12 x i32] }>, i8 }, %struct.conf_rx_settings, %struct.conf_tx_settings, <{ i8, i8, i8, i8, i8, i8, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }>, i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }> <{ { <{ [55 x i32], [12 x i32] }>, i8 } { <{ [55 x i32], [12 x i32] }> <{ [55 x i32] [i32 10, i32 180, i32 10, i32 180, i32 10, i32 80, i32 10, i32 80, i32 8, i32 8, i32 20, i32 20, i32 20, i32 35, i32 16, i32 35, i32 32, i32 50, i32 28, i32 50, i32 10, i32 20, i32 75, i32 15, i32 27, i32 17, i32 170, i32 50, i32 100, i32 800, i32 200, i32 200, i32 0, i32 0, i32 0, i32 1, i32 0, i32 60, i32 5000, i32 1200, i32 1000, i32 1, i32 3, i32 6, i32 10, i32 10, i32 2, i32 5, i32 30, i32 3, i32 10, i32 2, i32 0, i32 25, i32 25], [12 x i32] zeroinitializer }>, i8 1 }, %struct.conf_rx_settings <{ i32 512000, i32 0, i16 15, i16 15, i16 2353, i16 0, i16 -1, i16 0, i16 600, i8 0 }>, %struct.conf_tx_settings <{ i8 0, %struct.conf_tx_rate_class <{ i32 0, i8 10, i8 10, i8 0 }>, i8 4, [4 x %struct.conf_tx_ac_category] [%struct.conf_tx_ac_category <{ i8 0, i8 15, i16 63, i8 3, i16 0 }>, %struct.conf_tx_ac_category <{ i8 1, i8 15, i16 63, i8 7, i16 0 }>, %struct.conf_tx_ac_category <{ i8 2, i8 15, i16 63, i8 1, i16 3008 }>, %struct.conf_tx_ac_category <{ i8 3, i8 15, i16 63, i8 1, i16 1504 }>], i8 100, i16 300, i8 4, [8 x %struct.conf_tx_tid] [%struct.conf_tx_tid <{ i8 0, i8 1, i8 0, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid <{ i8 1, i8 1, i8 1, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid <{ i8 2, i8 1, i8 2, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid <{ i8 3, i8 1, i8 3, i8 0, i8 0, [2 x i32] zeroinitializer }>, %struct.conf_tx_tid zeroinitializer, %struct.conf_tx_tid zeroinitializer, %struct.conf_tx_tid zeroinitializer, %struct.conf_tx_tid zeroinitializer], i16 2352, i16 700, i16 4, i32 1, i32 8, i8 10, i8 10, i32 5000, i8 3, i8 10 }>, <{ i8, i8, i8, i8, i8, i8, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }>, i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }> <{ i8 2, i8 1, i8 4, i8 3, i8 1, i8 3, <{ %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, %struct.conf_bcn_filt_rule, [29 x %struct.conf_bcn_filt_rule] }> <{ %struct.conf_bcn_filt_rule { i8 37, i8 2, [3 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer }, %struct.conf_bcn_filt_rule { i8 61, i8 1, [3 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer }, %struct.conf_bcn_filt_rule { i8 42, i8 1, [3 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer }, [29 x %struct.conf_bcn_filt_rule] zeroinitializer }>, i32 12, i32 400, i32 10000, i32 20000, i8 1, i8 10, %struct.conf_sig_weights zeroinitializer, i8 1, i8 50, i8 8, i8 16, i8 3, i16 1500, i8 0, i32 55000, i8 20, i8 -1, i8 0 }>, %struct.conf_itrim_settings <{ i8 0, i32 50000 }>, %struct.conf_pm_config_settings <{ i32 5000, i8 1 }>, %struct.conf_roam_trigger_settings { i16 1, i8 20, i8 10, i8 20, i8 10 }, %struct.conf_scan_settings <{ i32 7500, i32 30000, i32 25000, i32 50000, i32 100000, i32 150000, i16 2, i32 50000 }>, %struct.conf_sched_scan_settings <{ i32 7500, i32 22500, i32 2000, i32 350, i32 100000, i32 150000, i8 2, i8 -90, i8 0, i8 0, i16 0 }>, %struct.conf_ht_setting <{ i8 8, i8 64, i16 10000, i8 63 }>, %struct.conf_memory_settings { i8 1, i8 1, i8 40, i8 40, i8 1, i8 45, i8 22, i8 27 }, %struct.conf_fm_coex { i8 1, i8 5, i8 -1, i8 12, i16 -1, i16 148, i32 -1, i16 -1, i8 -1, i8 -1 }, %struct.conf_rx_streaming_settings <{ i32 150, i8 1, i8 20, i8 0 }>, %struct.conf_fwlog { i8 0, i8 2, i8 0, i8 0, i8 1, i8 0 }, %struct.conf_rate_policy_settings { i16 32000, i16 8192, i16 2048, i16 4096, i16 8100, i8 5, i8 4, i8 10, i8 4, i8 13, i8 10, i8 8, i8 2, i8 12, [13 x i8] zeroinitializer }, %struct.conf_hangover_settings <{ i32 0, i8 20, i8 1, i8 1, i8 20, i8 1, i8 1, i8 2, i8 4, i8 1, i8 16 }>, %struct.conf_recovery_settings zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wl12xx_identify_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014wlcore: WARNING chip id 0x%x (1271 PG10) support is obsolete\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_identify_chip\00", [43 x i8] zeroinitializer }, align 32
@wl12xx_identify_chip._entry_ptr = internal global ptr @wl12xx_identify_chip._entry, section ".printk_index", align 4
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ti-connectivity/wl127x-fw-5-sr.bin\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ti-connectivity/wl127x-fw-5-mr.bin\00", [61 x i8] zeroinitializer }, align 32
@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wl12xx_identify_chip.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.30, ptr @.str.3, ptr @.str.34, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl12xx\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: chip id 0x%x (1271 PG20)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ti-connectivity/wl127x-fw-5-plt.bin\00", [60 x i8] zeroinitializer }, align 32
@wl12xx_identify_chip.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.30, ptr @.str.3, ptr @.str.36, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: chip id 0x%x (1283 PG20)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ti-connectivity/wl128x-fw-5-plt.bin\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ti-connectivity/wl128x-fw-5-sr.bin\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ti-connectivity/wl128x-fw-5-mr.bin\00", [61 x i8] zeroinitializer }, align 32
@wl12xx_identify_chip._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.3, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014wlcore: WARNING unsupported chip id: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@wl12xx_identify_chip._entry_ptr.42 = internal global ptr @wl12xx_identify_chip._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ti/wl12xx/../wlcore/io.h\00", [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wl12xx_pre_boot.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl12xx_pre_boot\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wlcore: clk2 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@wl12xx_top_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wlcore: WARNING Top register access timed out.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl12xx_top_reg_read\00", [44 x i8] zeroinitializer }, align 32
@wl12xx_top_reg_read._entry_ptr = internal global ptr @wl12xx_top_reg_read._entry, section ".printk_index", align 4
@wl12xx_top_reg_read._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wlcore: WARNING Top register access returned error.\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_top_reg_read._entry_ptr.50 = internal global ptr @wl12xx_top_reg_read._entry.48, section ".printk_index", align 4
@wl127x_boot_clk.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl127x_boot_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wlcore: pause1 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl1271_boot_soft_reset.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1271_boot_soft_reset\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: soft reset bootdata 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_boot_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013wlcore: ERROR soft reset timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1271_boot_soft_reset._entry_ptr = internal global ptr @wl1271_boot_soft_reset._entry, section ".printk_index", align 4
@wl12xx_pre_upload.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl12xx_pre_upload\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wlcore: ACX_EEPROMLESS_IND_REG\0A\00", [32 x i8] zeroinitializer }, align 32
@wl12xx_pre_upload.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.56, ptr @.str.3, ptr @.str.58, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wlcore: chip id 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl12xx_set_tx_desc_data_len\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"wlcore: tx_fill_hdr: hlid: %d len: %d life: %d mem: %d extra: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.59, ptr @.str.3, ptr @.str.61, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"wlcore: tx_fill_hdr: pad: %d hlid: %d len: %d life: %d mem: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wl12xx_mac_in_fuse.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl12xx_mac_in_fuse\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"wlcore: PG Ver major = %d minor = %d, MAC %s present\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"is\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"is not\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 19200000, i64 26000000, i64 38400000, i64 52000000]
@__sancov_gen_cov_switch_values.66 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 16368000, i64 16800000, i64 19200000, i64 26000000, i64 32736000, i64 33600000, i64 38400000, i64 52000000]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 67305729, i64 67305745, i64 84082961]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"wl12xx_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1943, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"fref_param\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 31, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"tcxo_param\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 32, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1948, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"wl12xx_id_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1937, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1902, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"wl12xx_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1684, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"wl12xx_ptable\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 489, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"wl12xx_rtable\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 568, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"wl12xx_iface_combinations\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1754, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"wl12xx_band_rate_to_idx\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 458, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"wl12xx_refclock_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1763, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1830, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1838, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1840, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1842, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1844, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1846, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1848, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1851, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"wl12xx_tcxoclock_table\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1773, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1859, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1873, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1875, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1877, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1879, i32 32 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1882, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"wl12xx_iface_limits\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1740, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant [24 x i8] c"wl12xx_rate_to_idx_2ghz\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 398, i32 17 }
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"wl12xx_rate_to_idx_5ghz\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 428, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"wl12xx_ht_cap\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1727, i32 36 }
@___asan_gen_.193 = private unnamed_addr constant [25 x i8] c"wl12xx_default_priv_conf\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 370, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"wl12xx_conf\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 34, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 632, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 639, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 640, i32 20 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 655, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 662, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 679, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 681, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 682, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 683, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 699, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/ti/wl12xx/../wlcore/io.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 51, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1115, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 769, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 775, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1025, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1053, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1060, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1151, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1161, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1316, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1332, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl12xx/main.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1494, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_firmware369, ptr @__UNIQUE_ID_firmware370, ptr @__UNIQUE_ID_firmware371, ptr @__UNIQUE_ID_firmware372, ptr @__UNIQUE_ID_firmware373, ptr @__UNIQUE_ID_firmware374, ptr @__UNIQUE_ID_fref363, ptr @__UNIQUE_ID_freftype362, ptr @__UNIQUE_ID_license367, ptr @__UNIQUE_ID_tcxo365, ptr @__UNIQUE_ID_tcxotype364, ptr @__exitcall_wl12xx_driver_exit, ptr @__initcall__kmod_wl12xx__361_1952_wl12xx_driver_init6, ptr @__param_fref, ptr @__param_tcxo, ptr @wl1271_boot_soft_reset._entry, ptr @wl1271_boot_soft_reset._entry_ptr, ptr @wl12xx_driver_exit, ptr @wl12xx_identify_chip._entry, ptr @wl12xx_identify_chip._entry.40, ptr @wl12xx_identify_chip._entry_ptr, ptr @wl12xx_identify_chip._entry_ptr.42, ptr @wl12xx_probe._entry, ptr @wl12xx_probe._entry_ptr, ptr @wl12xx_setup._entry, ptr @wl12xx_setup._entry.14, ptr @wl12xx_setup._entry.17, ptr @wl12xx_setup._entry.24, ptr @wl12xx_setup._entry_ptr, ptr @wl12xx_setup._entry_ptr.16, ptr @wl12xx_setup._entry_ptr.19, ptr @wl12xx_setup._entry_ptr.26, ptr @wl12xx_top_reg_read._entry, ptr @wl12xx_top_reg_read._entry.48, ptr @wl12xx_top_reg_read._entry_ptr, ptr @wl12xx_top_reg_read._entry_ptr.50, ptr @wl12xx_driver, ptr @fref_param, ptr @tcxo_param, ptr @.str, ptr @wl12xx_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wl12xx_ops, ptr @wl12xx_ptable, ptr @wl12xx_rtable, ptr @wl12xx_iface_combinations, ptr @wl12xx_band_rate_to_idx, ptr @wl12xx_refclock_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @wl12xx_tcxoclock_table, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @wl12xx_iface_limits, ptr @wl12xx_rate_to_idx_2ghz, ptr @wl12xx_rate_to_idx_5ghz, ptr @wl12xx_ht_cap, ptr @wl12xx_default_priv_conf, ptr @wl12xx_conf, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fref_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcxo_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_ptable to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_rtable to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_iface_combinations to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_band_rate_to_idx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_refclock_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_tcxoclock_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_iface_limits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_rate_to_idx_2ghz to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_rate_to_idx_5ghz to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_ht_cap to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_default_priv_conf to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_conf to i32), i32 924, i32 1152, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_identify_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_identify_chip._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_top_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_top_reg_read._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_boot_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wl12xx_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl12xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @wl12xx_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wlcore_alloc_hw(i32 noundef 48, i32 noundef 16384, i32 noundef 64) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #17
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
  store ptr @wl12xx_ops, ptr %ops, align 4
  %ptable = getelementptr inbounds %struct.wl1271, ptr %2, i32 0, i32 115
  %4 = ptrtoint ptr %ptable to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wl12xx_ptable, ptr %ptable, align 8
  %call4 = tail call i32 @wlcore_probe(ptr noundef %2, ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %out_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 @wlcore_free_hw(ptr noundef %2) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %0, %do.end ], [ %call4, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %1, i32 0, i32 125
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %rx_mem_addr = getelementptr inbounds %struct.wl12xx_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rx_mem_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_mem_addr, align 4
  tail call void @kfree(ptr noundef %5) #14
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %call2 = tail call i32 @wlcore_remove(ptr noundef %pdev) #14
  ret i32 %call2
}

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
define internal i32 @wl12xx_setup(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %rtable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %6 = ptrtoint ptr %rtable to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wl12xx_rtable, ptr %rtable, align 4
  %num_tx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 126
  %7 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %num_tx_desc, align 8
  %num_rx_desc = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 127
  %8 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %num_rx_desc, align 4
  %num_links = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 128
  %9 = ptrtoint ptr %num_links to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 12, ptr %num_links, align 8
  %max_ap_stations = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 129
  %10 = ptrtoint ptr %max_ap_stations to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %max_ap_stations, align 1
  %iface_combinations = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 147
  %11 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wl12xx_iface_combinations, ptr %iface_combinations, align 8
  %n_iface_combinations = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 148
  %12 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %n_iface_combinations, align 4
  %num_mac_addr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 143
  %13 = ptrtoint ptr %num_mac_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_mac_addr, align 4
  %band_rate_to_idx = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 130
  %14 = ptrtoint ptr %band_rate_to_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wl12xx_band_rate_to_idx, ptr %band_rate_to_idx, align 4
  %hw_tx_rate_tbl_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 131
  %15 = ptrtoint ptr %hw_tx_rate_tbl_size to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 22, ptr %hw_tx_rate_tbl_size, align 8
  %hw_min_ht_rate = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 132
  %16 = ptrtoint ptr %hw_min_ht_rate to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %hw_min_ht_rate, align 1
  %fw_status_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 136
  %17 = ptrtoint ptr %fw_status_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 84, ptr %fw_status_len, align 8
  %fw_status_priv_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 137
  %18 = ptrtoint ptr %fw_status_priv_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fw_status_priv_len, align 4
  %fw_stats_len = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 87, i32 2
  %19 = ptrtoint ptr %fw_stats_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 364, ptr %fw_stats_len, align 8
  %ofdm_only_ap = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 111
  %20 = ptrtoint ptr %ofdm_only_ap to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ofdm_only_ap, align 8
  %arrayidx.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 0
  %21 = call ptr @memcpy(ptr %arrayidx.i, ptr @wl12xx_ht_cap, i32 22)
  %arrayidx.i190 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 133, i32 1
  %22 = call ptr @memcpy(ptr %arrayidx.i190, ptr @wl12xx_ht_cap, i32 22)
  %conf.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94
  %23 = call ptr @memcpy(ptr %conf.i, ptr @wl12xx_conf, i32 924)
  %24 = call ptr @memcpy(ptr %1, ptr @wl12xx_default_priv_conf, i32 33)
  %25 = load ptr, ptr @fref_param, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ref_clock_freq = getelementptr inbounds %struct.wlcore_platdev_data, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %ref_clock_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_clock_freq, align 4
  %ref_clock_xtal = getelementptr inbounds %struct.wlcore_platdev_data, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %ref_clock_xtal to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ref_clock_xtal, align 4, !range !197
  %30 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.then.for.inc.i.5_crit_edge [
    i32 19200000, label %land.lhs.true.i
    i32 26000000, label %land.lhs.true.i.1
    i32 38400000, label %land.lhs.true.i.3
    i32 52000000, label %land.lhs.true.i.5
  ]

if.then.for.inc.i.5_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.5

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp9.i = icmp eq i8 %29, 0
  br i1 %cmp9.i, label %land.lhs.true.i.wl12xx_get_clock_idx.exit_crit_edge, label %land.lhs.true.i.for.inc.i.5_crit_edge

land.lhs.true.i.for.inc.i.5_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.5

land.lhs.true.i.wl12xx_get_clock_idx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit

land.lhs.true.i.1:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp9.i.1 = icmp eq i8 %29, 0
  %spec.select = select i1 %cmp9.i.1, i32 1, i32 2
  br label %wl12xx_get_clock_idx.exit

land.lhs.true.i.3:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp9.i.3 = icmp eq i8 %29, 0
  %spec.select230 = select i1 %cmp9.i.3, i32 3, i32 4
  br label %wl12xx_get_clock_idx.exit

land.lhs.true.i.5:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp9.i.5 = icmp eq i8 %29, 0
  br i1 %cmp9.i.5, label %land.lhs.true.i.5.wl12xx_get_clock_idx.exit_crit_edge, label %land.lhs.true.i.5.for.inc.i.5_crit_edge

land.lhs.true.i.5.for.inc.i.5_crit_edge:          ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.5

land.lhs.true.i.5.wl12xx_get_clock_idx.exit_crit_edge: ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit

for.inc.i.5:                                      ; preds = %land.lhs.true.i.5.for.inc.i.5_crit_edge, %land.lhs.true.i.for.inc.i.5_crit_edge, %if.then.for.inc.i.5_crit_edge
  %ref_clock208 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %ref_clock208 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -22, ptr %ref_clock208, align 4
  %32 = ptrtoint ptr %ref_clock_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref_clock_freq, align 4
  %34 = ptrtoint ptr %ref_clock_xtal to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ref_clock_xtal, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not = icmp eq i8 %35, 0
  %cond = select i1 %tobool17.not, ptr @.str.7, ptr @.str.6
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33, ptr noundef nonnull %cond) #17
  %36 = ptrtoint ptr %ref_clock208 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ref_clock208, align 4
  br label %cleanup

wl12xx_get_clock_idx.exit:                        ; preds = %land.lhs.true.i.5.wl12xx_get_clock_idx.exit_crit_edge, %land.lhs.true.i.3, %land.lhs.true.i.1, %land.lhs.true.i.wl12xx_get_clock_idx.exit_crit_edge
  %i.022.i.lcssa = phi i32 [ 0, %land.lhs.true.i.wl12xx_get_clock_idx.exit_crit_edge ], [ 5, %land.lhs.true.i.5.wl12xx_get_clock_idx.exit_crit_edge ], [ %spec.select, %land.lhs.true.i.1 ], [ %spec.select230, %land.lhs.true.i.3 ]
  %hw_idx.i = getelementptr %struct.wl12xx_clock, ptr @wl12xx_refclock_table, i32 %i.022.i.lcssa, i32 2
  %38 = ptrtoint ptr %hw_idx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hw_idx.i, align 1
  %conv12.i = zext i8 %39 to i32
  %ref_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %ref_clock to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv12.i, ptr %ref_clock, align 4
  br label %if.end61

if.else:                                          ; preds = %entry
  %call20 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(5) @.str.8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock23 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %ref_clock23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ref_clock23, align 4
  br label %if.end61

if.else24:                                        ; preds = %if.else
  %call25 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(3) @.str.9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock28 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %ref_clock28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %ref_clock28, align 4
  br label %if.end61

if.else29:                                        ; preds = %if.else24
  %call30 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(4) @.str.10) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock33 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %ref_clock33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %ref_clock33, align 4
  br label %if.end61

if.else34:                                        ; preds = %if.else29
  %call35 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(5) @.str.11) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock38 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %ref_clock38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %ref_clock38, align 4
  br label %if.end61

if.else39:                                        ; preds = %if.else34
  %call40 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(6) @.str.12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock43 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %ref_clock43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %ref_clock43, align 4
  br label %if.end61

if.else44:                                        ; preds = %if.else39
  %call45 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull dereferenceable(3) @.str.13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %do.end52

if.then47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock48 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %ref_clock48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %ref_clock48, align 4
  br label %if.end61

do.end52:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #16
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %25) #17
  br label %if.end61

if.end61:                                         ; preds = %do.end52, %if.then47, %if.then42, %if.then37, %if.then32, %if.then27, %if.then22, %wl12xx_get_clock_idx.exit
  %47 = load ptr, ptr @tcxo_param, align 4
  %tobool62.not = icmp eq ptr %47, null
  br i1 %tobool62.not, label %land.lhs.true, label %if.then80

land.lhs.true:                                    ; preds = %if.end61
  %tcxo_clock_freq = getelementptr inbounds %struct.wlcore_platdev_data, ptr %5, i32 0, i32 4
  %48 = ptrtoint ptr %tcxo_clock_freq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tcxo_clock_freq, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %49, label %for.inc.i204.7 [
    i32 0, label %land.lhs.true.if.end135_crit_edge
    i32 16368000, label %land.lhs.true.wl12xx_get_clock_idx.exit206_crit_edge
    i32 16800000, label %wl12xx_get_clock_idx.exit206.fold.split
    i32 19200000, label %wl12xx_get_clock_idx.exit206.fold.split231
    i32 26000000, label %wl12xx_get_clock_idx.exit206.fold.split232
    i32 32736000, label %wl12xx_get_clock_idx.exit206.fold.split233
    i32 33600000, label %wl12xx_get_clock_idx.exit206.fold.split234
    i32 38400000, label %wl12xx_get_clock_idx.exit206.fold.split235
    i32 52000000, label %wl12xx_get_clock_idx.exit206.fold.split236
  ]

land.lhs.true.wl12xx_get_clock_idx.exit206_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

for.inc.i204.7:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock212 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %tcxo_clock212 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -22, ptr %tcxo_clock212, align 4
  %52 = ptrtoint ptr %tcxo_clock_freq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tcxo_clock_freq, align 4
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %53) #17
  %54 = ptrtoint ptr %tcxo_clock212 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tcxo_clock212, align 4
  br label %cleanup

wl12xx_get_clock_idx.exit206.fold.split:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206.fold.split231:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206.fold.split232:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206.fold.split233:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206.fold.split234:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206.fold.split235:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206.fold.split236:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_get_clock_idx.exit206

wl12xx_get_clock_idx.exit206:                     ; preds = %wl12xx_get_clock_idx.exit206.fold.split236, %wl12xx_get_clock_idx.exit206.fold.split235, %wl12xx_get_clock_idx.exit206.fold.split234, %wl12xx_get_clock_idx.exit206.fold.split233, %wl12xx_get_clock_idx.exit206.fold.split232, %wl12xx_get_clock_idx.exit206.fold.split231, %wl12xx_get_clock_idx.exit206.fold.split, %land.lhs.true.wl12xx_get_clock_idx.exit206_crit_edge
  %i.022.i192.lcssa = phi i32 [ 0, %land.lhs.true.wl12xx_get_clock_idx.exit206_crit_edge ], [ 1, %wl12xx_get_clock_idx.exit206.fold.split ], [ 2, %wl12xx_get_clock_idx.exit206.fold.split231 ], [ 3, %wl12xx_get_clock_idx.exit206.fold.split232 ], [ 4, %wl12xx_get_clock_idx.exit206.fold.split233 ], [ 5, %wl12xx_get_clock_idx.exit206.fold.split234 ], [ 6, %wl12xx_get_clock_idx.exit206.fold.split235 ], [ 7, %wl12xx_get_clock_idx.exit206.fold.split236 ]
  %hw_idx.i198 = getelementptr %struct.wl12xx_clock, ptr @wl12xx_tcxoclock_table, i32 %i.022.i192.lcssa, i32 2
  %56 = ptrtoint ptr %hw_idx.i198 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hw_idx.i198, align 1
  %conv12.i199 = zext i8 %57 to i32
  %tcxo_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %tcxo_clock to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv12.i199, ptr %tcxo_clock, align 4
  br label %if.end135

if.then80:                                        ; preds = %if.end61
  %call81 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(5) @.str.8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock84 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %tcxo_clock84 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %tcxo_clock84, align 4
  br label %if.end135

if.else85:                                        ; preds = %if.then80
  %call86 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(3) @.str.9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock89 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %tcxo_clock89 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %tcxo_clock89, align 4
  br label %if.end135

if.else90:                                        ; preds = %if.else85
  %call91 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(5) @.str.11) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.else95

if.then93:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock94 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %tcxo_clock94 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %tcxo_clock94, align 4
  br label %if.end135

if.else95:                                        ; preds = %if.else90
  %call96 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(3) @.str.13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.else100

if.then98:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock99 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %tcxo_clock99 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %tcxo_clock99, align 4
  br label %if.end135

if.else100:                                       ; preds = %if.else95
  %call101 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(7) @.str.20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.else105

if.then103:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock104 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %tcxo_clock104 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %tcxo_clock104, align 4
  br label %if.end135

if.else105:                                       ; preds = %if.else100
  %call106 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(7) @.str.21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock109 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %tcxo_clock109 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 5, ptr %tcxo_clock109, align 4
  br label %if.end135

if.else110:                                       ; preds = %if.else105
  %call111 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(5) @.str.22) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock114 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %tcxo_clock114 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 6, ptr %tcxo_clock114, align 4
  br label %if.end135

if.else115:                                       ; preds = %if.else110
  %call116 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(5) @.str.23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %do.end123

if.then118:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  %tcxo_clock119 = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %tcxo_clock119 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 7, ptr %tcxo_clock119, align 4
  br label %if.end135

do.end123:                                        ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %47) #17
  br label %if.end135

if.end135:                                        ; preds = %do.end123, %if.then118, %if.then113, %if.then108, %if.then103, %if.then98, %if.then93, %if.then88, %if.then83, %wl12xx_get_clock_idx.exit206, %land.lhs.true.if.end135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3264, i32 noundef 8) #19
  %rx_mem_addr = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %rx_mem_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i, ptr %rx_mem_addr, align 4
  %tobool138.not = icmp eq ptr %call7.i, null
  %. = select i1 %tobool138.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %for.inc.i204.7, %for.inc.i.5
  %retval.0 = phi i32 [ %55, %for.inc.i204.7 ], [ %37, %for.inc.i.5 ], [ %., %if.end135 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_identify_chip(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %1, label %do.end73 [
    i32 67305729, label %do.end
    i32 67305745, label %do.body4
    i32 84082961, label %do.body34
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 67305729) #17
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks, align 8
  %or = or i32 %4, 5408
  store i32 %or, ptr %quirks, align 8
  %sr_fw_name = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 118
  %5 = ptrtoint ptr %sr_fw_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.31, ptr %sr_fw_name, align 4
  %mr_fw_name = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 119
  %6 = ptrtoint ptr %mr_fw_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.32, ptr %mr_fw_name, align 8
  %mem = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 72416206650611227, ptr %mem, align 1
  %ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %prepare_read = getelementptr inbounds %struct.wlcore_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %prepare_read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wl127x_prepare_read, ptr %prepare_read, align 4
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %11 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4.do.end24_crit_edge, label %do.body7, !prof !198

do.body4.do.end24_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

do.body7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_identify_chip.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_identify_chip, %if.then17)) #14
          to label %do.end24 [label %if.then17], !srcloc !199

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_identify_chip.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.34, i32 noundef %13) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then17, %do.body7, %do.body4.do.end24_crit_edge
  %quirks25 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %14 = ptrtoint ptr %quirks25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks25, align 8
  %or26 = or i32 %15, 5408
  store i32 %or26, ptr %quirks25, align 8
  %plt_fw_name = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 117
  %16 = ptrtoint ptr %plt_fw_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.35, ptr %plt_fw_name, align 8
  %sr_fw_name27 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 118
  %17 = ptrtoint ptr %sr_fw_name27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.31, ptr %sr_fw_name27, align 4
  %mr_fw_name28 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 119
  %18 = ptrtoint ptr %mr_fw_name28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.32, ptr %mr_fw_name28, align 8
  %mem30 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 10
  %19 = ptrtoint ptr %mem30 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 72416206650611227, ptr %mem30, align 1
  %ops31 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %20 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops31, align 4
  %prepare_read32 = getelementptr inbounds %struct.wlcore_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %prepare_read32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @wl127x_prepare_read, ptr %prepare_read32, align 4
  br label %sw.epilog

do.body34:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %23 = load i32, ptr @wl12xx_debug_level, align 4
  %and35 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end64_crit_edge, label %do.body44, !prof !198

do.body34.do.end64_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end64

do.body44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_identify_chip.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_identify_chip, %if.then56)) #14
          to label %do.end64 [label %if.then56], !srcloc !199

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_identify_chip.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.36, i32 noundef %25) #14
  br label %do.end64

do.end64:                                         ; preds = %if.then56, %do.body44, %do.body34.do.end64_crit_edge
  %plt_fw_name65 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 117
  %26 = ptrtoint ptr %plt_fw_name65 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.37, ptr %plt_fw_name65, align 8
  %sr_fw_name66 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 118
  %27 = ptrtoint ptr %sr_fw_name66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.38, ptr %sr_fw_name66, align 4
  %mr_fw_name67 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 119
  %28 = ptrtoint ptr %mr_fw_name67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.39, ptr %mr_fw_name67, align 8
  %quirks68 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %29 = ptrtoint ptr %quirks68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks68, align 8
  %or69 = or i32 %30, 5380
  store i32 %or69, ptr %quirks68, align 8
  br label %sw.epilog

do.end73:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %1) #17
  br label %out

sw.epilog:                                        ; preds = %do.end64, %do.end24, %do.end
  %.sink133 = phi i32 [ 7, %do.end64 ], [ 6, %do.end24 ], [ 6, %do.end ]
  %min_sr_fw_ver.i121 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 144
  %31 = ptrtoint ptr %min_sr_fw_ver.i121 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink133, ptr %min_sr_fw_ver.i121, align 8
  %arrayidx2.i122 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 1
  %32 = ptrtoint ptr %arrayidx2.i122 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %arrayidx2.i122, align 4
  %arrayidx4.i123 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 2
  %33 = ptrtoint ptr %arrayidx4.i123 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 10, ptr %arrayidx4.i123, align 8
  %arrayidx6.i124 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 3
  %34 = ptrtoint ptr %arrayidx6.i124 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %arrayidx6.i124, align 4
  %arrayidx8.i125 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 144, i32 4
  %35 = ptrtoint ptr %arrayidx8.i125 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 133, ptr %arrayidx8.i125, align 8
  %min_mr_fw_ver.i126 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 145
  %36 = ptrtoint ptr %min_mr_fw_ver.i126 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink133, ptr %min_mr_fw_ver.i126, align 4
  %arrayidx11.i127 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 145, i32 1
  %37 = ptrtoint ptr %arrayidx11.i127 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %arrayidx11.i127, align 4
  %arrayidx13.i128 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 145, i32 2
  %38 = ptrtoint ptr %arrayidx13.i128 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %arrayidx13.i128, align 4
  %arrayidx15.i129 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 145, i32 3
  %39 = ptrtoint ptr %arrayidx15.i129 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %arrayidx15.i129, align 4
  %arrayidx17.i130 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 145, i32 4
  %40 = ptrtoint ptr %arrayidx17.i130 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 42, ptr %arrayidx17.i130, align 4
  %fw_mem_block_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 68
  %41 = ptrtoint ptr %fw_mem_block_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 256, ptr %fw_mem_block_size, align 8
  %fwlog_end = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 67
  %42 = ptrtoint ptr %fwlog_end to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 33554432, ptr %fwlog_end, align 4
  %scan_templ_id_2_4 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 120
  %43 = ptrtoint ptr %scan_templ_id_2_4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %scan_templ_id_2_4, align 4
  %scan_templ_id_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 121
  %44 = ptrtoint ptr %scan_templ_id_5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %scan_templ_id_5, align 1
  %sched_scan_templ_id_2_4 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 122
  %45 = ptrtoint ptr %sched_scan_templ_id_2_4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %sched_scan_templ_id_2_4, align 2
  %sched_scan_templ_id_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 123
  %46 = ptrtoint ptr %sched_scan_templ_id_5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %sched_scan_templ_id_5, align 1
  %max_channels_5 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 124
  %47 = ptrtoint ptr %max_channels_5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 23, ptr %max_channels_5, align 8
  %ba_rx_session_count_max = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 109
  %48 = ptrtoint ptr %ba_rx_session_count_max to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %ba_rx_session_count_max, align 8
  br label %out

out:                                              ; preds = %sw.epilog, %do.end73
  %ret.0 = phi i32 [ -19, %do.end73 ], [ 0, %sw.epilog ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_boot(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wl12xx_pre_boot(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wlcore_boot_upload_nvs(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @wl12xx_pre_upload(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @wlcore_boot_upload_firmware(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end12:                                         ; preds = %if.end8
  %event_mask = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 74
  %0 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -59849727, ptr %event_mask, align 8
  %ap_event_mask = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 75
  %1 = ptrtoint ptr %ap_event_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1048576, ptr %ap_event_mask, align 4
  %call13 = tail call i32 @wlcore_boot_run_firmware(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end16:                                         ; preds = %if.end12
  %rtable.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %2 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 6
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %5) #14
  %buffer_32.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %6 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_32.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2130706432, ptr %7, align 4
  %9 = load ptr, ptr %buffer_32.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %10 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i.i:                            ; preds = %if.end16
  %13 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i.i.i.i = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ne i32 %call.i.i, 131068
  %spec.select.i.i.i.i = and i1 %cmp.i.i.i.i, %tobool3.not.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !200

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %if_ops.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %16 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i.i = tail call i32 %19(ptr noundef %21, i32 noundef %call.i.i, ptr noundef %9, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %call27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %if.end25.i.i.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end25.i.i.i.i.if.end.i_crit_edge:              ; preds = %if.end25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end25.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %22 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp29.not.i.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp29.not.i.i.i.i, label %land.lhs.true.i.i.i.i.wlcore_write_reg.exit.i_crit_edge, label %if.then30.i.i.i.i

land.lhs.true.i.i.i.i.wlcore_write_reg.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write_reg.exit.i

if.then30.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #14
  br label %wlcore_write_reg.exit.i

wlcore_write_reg.exit.i:                          ; preds = %if.then30.i.i.i.i, %land.lhs.true.i.i.i.i.wlcore_write_reg.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %cmp.i = icmp slt i32 %call27.i.i.i.i, 0
  br i1 %cmp.i, label %wlcore_write_reg.exit.i.out_crit_edge, label %wlcore_write_reg.exit.i.if.end.i_crit_edge

wlcore_write_reg.exit.i.if.end.i_crit_edge:       ; preds = %wlcore_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

wlcore_write_reg.exit.i.out_crit_edge:            ; preds = %wlcore_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %wlcore_write_reg.exit.i.if.end.i_crit_edge, %if.end25.i.i.i.i.if.end.i_crit_edge
  tail call void @wlcore_enable_interrupts(ptr noundef %wl) #14
  %24 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i18.i = getelementptr i32, ptr %25, i32 6
  %26 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i18.i, align 4
  %call.i19.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %27) #14
  %28 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer_32.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1828716545, ptr %29, align 4
  %31 = load ptr, ptr %buffer_32.i.i.i, align 4
  %32 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i22.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i22.i, label %lor.lhs.false.i.i.i26.i, label %if.end.i.disable_interrupts.i_crit_edge

if.end.i.disable_interrupts.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_interrupts.i

lor.lhs.false.i.i.i26.i:                          ; preds = %if.end.i
  %35 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %37 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not.i.i.i23.i = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i19.i)
  %cmp.i.i.i24.i = icmp ne i32 %call.i19.i, 131068
  %spec.select.i.i.i25.i = and i1 %cmp.i.i.i24.i, %tobool3.not.i.i.i23.i
  br i1 %spec.select.i.i.i25.i, label %lor.lhs.false.i.i.i26.i.disable_interrupts.sink.split.i_crit_edge, label %if.end25.i.i.i33.i, !prof !200

lor.lhs.false.i.i.i26.i.disable_interrupts.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_interrupts.sink.split.i

if.end25.i.i.i33.i:                               ; preds = %lor.lhs.false.i.i.i26.i
  %38 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i29.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i.i.i29.i, align 4
  %42 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i31.i = tail call i32 %41(ptr noundef %43, i32 noundef %call.i19.i, ptr noundef %31, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i31.i)
  %tobool28.not.i.i.i32.i = icmp eq i32 %call27.i.i.i31.i, 0
  br i1 %tobool28.not.i.i.i32.i, label %if.end25.i.i.i33.i.if.end4.i_crit_edge, label %land.lhs.true.i.i.i36.i

if.end25.i.i.i33.i.if.end4.i_crit_edge:           ; preds = %if.end25.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

land.lhs.true.i.i.i36.i:                          ; preds = %if.end25.i.i.i33.i
  %state.i.i.i34.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %44 = ptrtoint ptr %state.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i.i.i34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp29.not.i.i.i35.i = icmp eq i32 %45, 0
  br i1 %cmp29.not.i.i.i35.i, label %land.lhs.true.i.i.i36.i.wlcore_write_reg.exit39.i_crit_edge, label %if.then30.i.i.i37.i

land.lhs.true.i.i.i36.i.wlcore_write_reg.exit39.i_crit_edge: ; preds = %land.lhs.true.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write_reg.exit39.i

if.then30.i.i.i37.i:                              ; preds = %land.lhs.true.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #14
  br label %wlcore_write_reg.exit39.i

wlcore_write_reg.exit39.i:                        ; preds = %if.then30.i.i.i37.i, %land.lhs.true.i.i.i36.i.wlcore_write_reg.exit39.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i31.i)
  %cmp2.i = icmp slt i32 %call27.i.i.i31.i, 0
  br i1 %cmp2.i, label %wlcore_write_reg.exit39.i.disable_interrupts.i_crit_edge, label %wlcore_write_reg.exit39.i.if.end4.i_crit_edge

wlcore_write_reg.exit39.i.if.end4.i_crit_edge:    ; preds = %wlcore_write_reg.exit39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

wlcore_write_reg.exit39.i.disable_interrupts.i_crit_edge: ; preds = %wlcore_write_reg.exit39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_interrupts.i

if.end4.i:                                        ; preds = %wlcore_write_reg.exit39.i.if.end4.i_crit_edge, %if.end25.i.i.i33.i.if.end4.i_crit_edge
  %call.i40.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3147784) #14
  %46 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_32.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1006632960, ptr %47, align 4
  %49 = load ptr, ptr %buffer_32.i.i.i, align 4
  %50 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %52 = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i43.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i43.i, label %lor.lhs.false.i.i.i47.i, label %if.end4.i.disable_interrupts.i_crit_edge

if.end4.i.disable_interrupts.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_interrupts.i

lor.lhs.false.i.i.i47.i:                          ; preds = %if.end4.i
  %53 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %55 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i.i.i44.i = icmp ne i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i40.i)
  %cmp.i.i.i45.i = icmp ne i32 %call.i40.i, 131068
  %spec.select.i.i.i46.i = and i1 %cmp.i.i.i45.i, %tobool3.not.i.i.i44.i
  br i1 %spec.select.i.i.i46.i, label %lor.lhs.false.i.i.i47.i.disable_interrupts.sink.split.i_crit_edge, label %if.end25.i.i.i54.i, !prof !200

lor.lhs.false.i.i.i47.i.disable_interrupts.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_interrupts.sink.split.i

if.end25.i.i.i54.i:                               ; preds = %lor.lhs.false.i.i.i47.i
  %56 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i50.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i.i.i50.i, align 4
  %60 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i52.i = tail call i32 %59(ptr noundef %61, i32 noundef %call.i40.i, ptr noundef %49, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i52.i)
  %tobool28.not.i.i.i53.i = icmp eq i32 %call27.i.i.i52.i, 0
  br i1 %tobool28.not.i.i.i53.i, label %if.end25.i.i.i54.i.out_crit_edge, label %land.lhs.true.i.i.i57.i

if.end25.i.i.i54.i.out_crit_edge:                 ; preds = %if.end25.i.i.i54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true.i.i.i57.i:                          ; preds = %if.end25.i.i.i54.i
  %state.i.i.i55.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %62 = ptrtoint ptr %state.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state.i.i.i55.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp29.not.i.i.i56.i = icmp eq i32 %63, 0
  br i1 %cmp29.not.i.i.i56.i, label %land.lhs.true.i.i.i57.i.wlcore_write32.exit.i_crit_edge, label %if.then30.i.i.i58.i

land.lhs.true.i.i.i57.i.wlcore_write32.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit.i

if.then30.i.i.i58.i:                              ; preds = %land.lhs.true.i.i.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #14
  br label %wlcore_write32.exit.i

wlcore_write32.exit.i:                            ; preds = %if.then30.i.i.i58.i, %land.lhs.true.i.i.i57.i.wlcore_write32.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i52.i)
  %cmp6.i = icmp slt i32 %call27.i.i.i52.i, 0
  br i1 %cmp6.i, label %wlcore_write32.exit.i.disable_interrupts.i_crit_edge, label %wlcore_write32.exit.i.out_crit_edge

wlcore_write32.exit.i.out_crit_edge:              ; preds = %wlcore_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

wlcore_write32.exit.i.disable_interrupts.i_crit_edge: ; preds = %wlcore_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_interrupts.i

disable_interrupts.sink.split.i:                  ; preds = %lor.lhs.false.i.i.i47.i.disable_interrupts.sink.split.i_crit_edge, %lor.lhs.false.i.i.i26.i.disable_interrupts.sink.split.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %disable_interrupts.i

disable_interrupts.i:                             ; preds = %disable_interrupts.sink.split.i, %wlcore_write32.exit.i.disable_interrupts.i_crit_edge, %if.end4.i.disable_interrupts.i_crit_edge, %wlcore_write_reg.exit39.i.disable_interrupts.i_crit_edge, %if.end.i.disable_interrupts.i_crit_edge
  %ret.0.i = phi i32 [ %call27.i.i.i31.i, %wlcore_write_reg.exit39.i.disable_interrupts.i_crit_edge ], [ %call27.i.i.i52.i, %wlcore_write32.exit.i.disable_interrupts.i_crit_edge ], [ -5, %if.end.i.disable_interrupts.i_crit_edge ], [ -5, %if.end4.i.disable_interrupts.i_crit_edge ], [ -5, %disable_interrupts.sink.split.i ]
  tail call void @wlcore_disable_interrupts(ptr noundef %wl) #14
  br label %out

out:                                              ; preds = %disable_interrupts.i, %wlcore_write32.exit.i.out_crit_edge, %if.end25.i.i.i54.i.out_crit_edge, %wlcore_write_reg.exit.i.out_crit_edge, %do.end.i.i.i.i, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %call27.i.i.i52.i, %wlcore_write32.exit.i.out_crit_edge ], [ %call27.i.i.i.i, %wlcore_write_reg.exit.i.out_crit_edge ], [ %ret.0.i, %disable_interrupts.i ], [ -5, %do.end.i.i.i.i ], [ -5, %if.end16.out_crit_edge ], [ 0, %if.end25.i.i.i54.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_plt_init(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %boot = getelementptr inbounds %struct.wlcore_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot, align 4
  %call = tail call i32 %3(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %hw_init = getelementptr inbounds %struct.wlcore_ops, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_init, align 4
  %call2 = tail call i32 %7(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.out_irq_disable_crit_edge, label %if.end5

if.end.out_irq_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_irq_disable

if.end5:                                          ; preds = %if.end
  %plt_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 15
  %8 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @wl1271_acx_init_mem_config(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.out_irq_disable_crit_edge, label %if.end12

if.end8.out_irq_disable_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_irq_disable

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @wl12xx_acx_mem_cfg(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_free_memmap_crit_edge, label %if.end16

if.end12.out_free_memmap_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_memmap

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @wl1271_cmd_data_path(ptr noundef %wl, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.out_free_memmap_crit_edge, label %if.end20

if.end16.out_free_memmap_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_memmap

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @wl1271_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.out_free_memmap_crit_edge, label %if.end24

if.end20.out_free_memmap_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_memmap

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @wl1271_acx_pm_config(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.out_free_memmap_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end24.out_free_memmap_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_memmap

out_free_memmap:                                  ; preds = %if.end24.out_free_memmap_crit_edge, %if.end20.out_free_memmap_crit_edge, %if.end16.out_free_memmap_crit_edge, %if.end12.out_free_memmap_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12.out_free_memmap_crit_edge ], [ %call17, %if.end16.out_free_memmap_crit_edge ], [ %call21, %if.end20.out_free_memmap_crit_edge ], [ %call25, %if.end24.out_free_memmap_crit_edge ]
  %target_mem_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 42
  %10 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %target_mem_map, align 8
  tail call void @kfree(ptr noundef %11) #14
  %12 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %target_mem_map, align 8
  br label %out_irq_disable

out_irq_disable:                                  ; preds = %out_free_memmap, %if.end8.out_irq_disable_crit_edge, %if.end.out_irq_disable_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.out_irq_disable_crit_edge ], [ %call9, %if.end8.out_irq_disable_crit_edge ], [ %ret.0, %out_free_memmap ]
  %mutex = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  tail call void @wlcore_disable_interrupts(ptr noundef %wl) #14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  br label %out

out:                                              ; preds = %out_irq_disable, %if.end24.out_crit_edge, %if.end5.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %call, %entry.out_crit_edge ], [ %ret.1, %out_irq_disable ], [ %call2, %if.end5.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_trigger_cmd(ptr noundef %wl, i32 noundef %cmd_box_addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %cmd_box_addr) #14
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %entry
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i.i = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i = and i1 %cmp.i.i, %tobool3.not.i.i
  br i1 %spec.select.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !200

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %if_ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %6 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i = tail call i32 %9(ptr noundef %11, i32 noundef %call.i, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.if.end_crit_edge:                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %state.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp29.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp29.not.i.i, label %land.lhs.true.i.i.wlcore_write.exit_crit_edge, label %if.then30.i.i

land.lhs.true.i.i.wlcore_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #14
  br label %wlcore_write.exit

wlcore_write.exit:                                ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp = icmp slt i32 %call27.i.i, 0
  br i1 %cmp, label %wlcore_write.exit.cleanup_crit_edge, label %wlcore_write.exit.if.end_crit_edge

wlcore_write.exit.if.end_crit_edge:               ; preds = %wlcore_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

wlcore_write.exit.cleanup_crit_edge:              ; preds = %wlcore_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %wlcore_write.exit.if.end_crit_edge, %if.end25.i.i.if.end_crit_edge
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %14 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %call.i5 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %17) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %18 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_32.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %19, align 4
  %21 = load ptr, ptr %buffer_32.i.i, align 4
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  %24 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i.i.i = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i5)
  %cmp.i.i.i = icmp ne i32 %call.i5, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %28 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i.i.i, align 4
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i.i = tail call i32 %31(ptr noundef %33, i32 noundef %call.i5, ptr noundef %21, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.cleanup_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %34 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp29.not.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.cleanup_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.cleanup_crit_edge, %if.end25.i.i.i.cleanup_crit_edge, %do.end.i.i.i, %if.end.cleanup_crit_edge, %wlcore_write.exit.cleanup_crit_edge, %do.end.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27.i.i, %wlcore_write.exit.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %if.end.cleanup_crit_edge ], [ %call27.i.i.i, %if.then30.i.i.i ], [ %call27.i.i.i, %land.lhs.true.i.i.i.cleanup_crit_edge ], [ 0, %if.end25.i.i.i.cleanup_crit_edge ], [ -5, %do.end.i.i ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_ack_event(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %0 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %3) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %4 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_32.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554432, ptr %5, align 4
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
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
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
  %call27.i.i.i = tail call i32 %17(ptr noundef %19, i32 noundef %call.i, ptr noundef %7, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.wlcore_write_reg.exit_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.wlcore_write_reg.exit_crit_edge:   ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write_reg.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write_reg.exit

wlcore_write_reg.exit:                            ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write_reg.exit_crit_edge, %if.end25.i.i.i.wlcore_write_reg.exit_crit_edge, %do.end.i.i.i, %entry.wlcore_write_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ -5, %do.end.i.i.i ], [ -5, %entry.wlcore_write_reg.exit_crit_edge ], [ %call27.i.i.i, %if.then30.i.i.i ], [ %call27.i.i.i, %land.lhs.true.i.i.i.wlcore_write_reg.exit_crit_edge ], [ 0, %if.end25.i.i.i.wlcore_write_reg.exit_crit_edge ]
  ret i32 %retval.0.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_wait_for_event(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_process_mailbox_events(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_calc_tx_blocks(ptr noundef %wl, i32 noundef %len, i32 noundef %spare_blks) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wlcore_calc_packet_alignment(ptr noundef %wl, i32 noundef %len) #14
  %sub = add i32 %call, 251
  %div = udiv i32 %sub, 252
  %add1 = add i32 %div, %spare_blks
  ret i32 %add1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wl12xx_set_tx_desc_blocks(ptr nocapture noundef readonly %wl, ptr nocapture noundef writeonly %desc, i32 noundef %blks, i32 noundef %spare_blks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %1)
  %cmp = icmp eq i32 %1, 84082961
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv2 = trunc i32 %blks to i8
  %total_mem_blocks3 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %total_mem_blocks3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %total_mem_blocks3, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %conv1.sink.in = phi i32 [ %spare_blks, %if.else ], [ %blks, %entry.if.end_crit_edge ]
  %conv1.sink = trunc i32 %conv1.sink.in to i8
  %3 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1.sink, ptr %3, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl12xx_set_tx_desc_data_len(ptr noundef %wl, ptr nocapture noundef %desc, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call = tail call i32 @wlcore_calc_packet_alignment(ptr noundef %wl, i32 noundef %1) #14
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %3)
  %cmp = icmp eq i32 %3, 84082961
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub = sub i32 %call, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = trunc i32 %sub to i8
  %6 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1
  %extra_bytes = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %extra_bytes to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %extra_bytes, align 1
  %shr = lshr i32 %call, 2
  %conv2 = trunc i32 %shr to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %desc, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %10 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end72_crit_edge, label %do.body6, !prof !198

if.then.if.end72_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_set_tx_desc_data_len, %if.then15)) #14
          to label %if.end72 [label %if.then15], !srcloc !199

if.then15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
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
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv20 = zext i8 %20 to i32
  %21 = ptrtoint ptr %extra_bytes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %extra_bytes, align 1
  %conv22 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.60, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv22) #14
  br label %if.end72

if.else:                                          ; preds = %entry
  %tx_attr = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 4
  %23 = ptrtoint ptr %tx_attr to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %tx_attr, align 1
  %sub27.tr = trunc i32 %sub to i16
  %25 = shl i16 %sub27.tr, 2
  %26 = and i16 %25, 252
  %conv31 = or i16 %26, %24
  store i16 %conv31, ptr %tx_attr, align 1
  %shr32 = lshr i32 %call, 2
  %conv33 = trunc i32 %shr32 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv33)
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %desc, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %29 = load i32, ptr @wl12xx_debug_level, align 4
  %and36 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else.if.end72_crit_edge, label %do.body45, !prof !198

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

do.body45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_set_tx_desc_data_len, %if.then57)) #14
          to label %if.end72 [label %if.then57], !srcloc !199

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  %hlid58 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 7
  %30 = ptrtoint ptr %hlid58 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hlid58, align 1
  %conv59 = zext i8 %31 to i32
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %desc, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv61 = zext i16 %34 to i32
  %life_time62 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 3
  %35 = ptrtoint ptr %life_time62 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %life_time62, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv63 = zext i16 %37 to i32
  %total_mem_blocks64 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %total_mem_blocks64 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %total_mem_blocks64, align 1
  %conv65 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.61, i32 noundef %sub, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv65) #14
  br label %if.end72

if.end72:                                         ; preds = %if.then57, %do.body45, %if.else.if.end72_crit_edge, %if.then15, %do.body6, %if.then.if.end72_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl12xx_get_rx_buf_align(ptr nocapture noundef readnone %wl, i32 noundef %rx_desc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %rx_desc, 20
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl12xx_get_rx_packet_len(ptr nocapture noundef readnone %wl, ptr nocapture noundef readonly %rx_data, i32 noundef %data_len) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %data_len)
  %cmp = icmp ult i32 %data_len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad_len = getelementptr inbounds %struct.wl1271_rx_descriptor, ptr %rx_data, i32 0, i32 10
  %0 = ptrtoint ptr %pad_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pad_len, align 1
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %data_len)
  %cmp1 = icmp ugt i32 %add, %data_len
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %data_len, -16
  %sub5 = sub i32 %sub, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub5, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_tx_delayed_compl(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_status = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 92
  %0 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_status, align 4
  %tx_results_counter = getelementptr inbounds %struct.wl_fw_status, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_results_counter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_results_counter, align 2
  %tx_results_count = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 46
  %4 = ptrtoint ptr %tx_results_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_results_count, align 8
  %6 = trunc i32 %5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %6)
  %cmp = icmp eq i8 %3, %6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @wlcore_tx_complete(ptr noundef %wl) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_hw_init(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %1)
  %cmp = icmp eq i32 %1, 84082961
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @wl128x_cmd_general_parms(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup33_crit_edge, label %if.end

if.then.cleanup33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup33

if.end:                                           ; preds = %if.then
  %plt_mode = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 15
  %2 = ptrtoint ptr %plt_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3 = icmp eq i32 %3, 2
  br i1 %cmp3, label %if.end.cleanup33_crit_edge, label %if.end5

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup33

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @wl128x_cmd_radio_parms(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup33_crit_edge, label %if.end9

if.end5.cleanup33_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup33

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 9
  %call12 = tail call i32 @wl1271_acx_host_if_cfg_bitmap(ptr noundef %wl, i32 noundef %spec.select) #14
  br label %cleanup33

if.else:                                          ; preds = %entry
  %call16 = tail call i32 @wl1271_cmd_general_parms(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.else.cleanup33_crit_edge, label %if.end19

if.else.cleanup33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup33

if.end19:                                         ; preds = %if.else
  %plt_mode20 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 15
  %6 = ptrtoint ptr %plt_mode20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plt_mode20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp21 = icmp eq i32 %7, 2
  br i1 %cmp21, label %if.end19.cleanup33_crit_edge, label %if.end23

if.end19.cleanup33_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup33

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @wl1271_cmd_radio_parms(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup33_crit_edge, label %if.end27

if.end23.cleanup33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup33

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call28 = tail call i32 @wl1271_cmd_ext_radio_parms(ptr noundef %wl) #14
  br label %cleanup33

cleanup33:                                        ; preds = %if.end27, %if.end23.cleanup33_crit_edge, %if.end19.cleanup33_crit_edge, %if.else.cleanup33_crit_edge, %if.end9, %if.end5.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %if.then.cleanup33_crit_edge
  %ret.1 = phi i32 [ %call16, %if.else.cleanup33_crit_edge ], [ %call16, %if.end19.cleanup33_crit_edge ], [ %call24, %if.end23.cleanup33_crit_edge ], [ %call28, %if.end27 ], [ %call, %if.then.cleanup33_crit_edge ], [ %call, %if.end.cleanup33_crit_edge ], [ %call6, %if.end5.cleanup33_crit_edge ], [ %call12, %if.end9 ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wl12xx_convert_fw_status(ptr nocapture noundef readnone %wl, ptr noundef %raw_fw_status, ptr nocapture noundef writeonly %fw_status) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %raw_fw_status to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %raw_fw_status, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fw_status, align 4
  %fw_rx_counter = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 1
  %4 = ptrtoint ptr %fw_rx_counter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_rx_counter, align 1
  %fw_rx_counter2 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 1
  %6 = ptrtoint ptr %fw_rx_counter2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %fw_rx_counter2, align 4
  %drv_rx_counter = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 2
  %7 = ptrtoint ptr %drv_rx_counter to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drv_rx_counter, align 1
  %drv_rx_counter3 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 2
  %9 = ptrtoint ptr %drv_rx_counter3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %drv_rx_counter3, align 1
  %tx_results_counter = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 4
  %10 = ptrtoint ptr %tx_results_counter to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_results_counter, align 1
  %tx_results_counter4 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 3
  %12 = ptrtoint ptr %tx_results_counter4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tx_results_counter4, align 2
  %rx_pkt_descs = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 5
  %rx_pkt_descs5 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 4
  %13 = ptrtoint ptr %rx_pkt_descs5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rx_pkt_descs, ptr %rx_pkt_descs5, align 4
  %fw_localtime = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 6
  %14 = ptrtoint ptr %fw_localtime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fw_localtime, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %fw_localtime6 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 5
  %17 = ptrtoint ptr %fw_localtime6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fw_localtime6, align 4
  %link_ps_bitmap = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 7
  %18 = ptrtoint ptr %link_ps_bitmap to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %link_ps_bitmap, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %link_ps_bitmap7 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 6
  %21 = ptrtoint ptr %link_ps_bitmap7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %link_ps_bitmap7, align 4
  %link_fast_bitmap = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 8
  %22 = ptrtoint ptr %link_fast_bitmap to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %link_fast_bitmap, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %link_fast_bitmap8 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 7
  %25 = ptrtoint ptr %link_fast_bitmap8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %link_fast_bitmap8, align 4
  %total_released_blks = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 9
  %26 = ptrtoint ptr %total_released_blks to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %total_released_blks, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %total_released_blks9 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 8
  %29 = ptrtoint ptr %total_released_blks9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %total_released_blks9, align 4
  %tx_total = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 10
  %30 = ptrtoint ptr %tx_total to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %tx_total, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %tx_total10 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 9
  %33 = ptrtoint ptr %tx_total10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tx_total10, align 4
  %counters = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 11
  %counters12 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10
  %34 = ptrtoint ptr %counters12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %counters, ptr %counters12, align 4
  %tx_lnk_free_pkts = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 1
  %tx_lnk_free_pkts17 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %tx_lnk_free_pkts17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tx_lnk_free_pkts, ptr %tx_lnk_free_pkts17, align 4
  %tx_voice_released_blks = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 2
  %36 = ptrtoint ptr %tx_voice_released_blks to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_voice_released_blks, align 1
  %tx_voice_released_blks20 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 2
  %38 = ptrtoint ptr %tx_voice_released_blks20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %tx_voice_released_blks20, align 4
  %tx_last_rate = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 11, i32 3
  %39 = ptrtoint ptr %tx_last_rate to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_last_rate, align 1
  %tx_last_rate23 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 10, i32 3
  %41 = ptrtoint ptr %tx_last_rate23 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %tx_last_rate23, align 1
  %log_start_addr = getelementptr inbounds %struct.wl12xx_fw_status, ptr %raw_fw_status, i32 0, i32 12
  %42 = ptrtoint ptr %log_start_addr to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %log_start_addr, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %log_start_addr24 = getelementptr inbounds %struct.wl_fw_status, ptr %fw_status, i32 0, i32 11
  %45 = ptrtoint ptr %log_start_addr24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %log_start_addr24, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl12xx_sta_get_ap_rate_mask(ptr nocapture noundef readnone %wl, ptr nocapture noundef readonly %wlvif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_set = getelementptr inbounds %struct.wl12xx_vif, ptr %wlvif, i32 0, i32 20
  %0 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate_set, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_get_pg_ver(ptr noundef %wl, ptr noundef writeonly %ver) #2 align 64 {
entry:
  %die_info = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %die_info) #14
  %0 = ptrtoint ptr %die_info to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %die_info, align 2, !annotation !201
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %2)
  %cmp = icmp eq i32 %2, 84082961
  %. = select i1 %cmp, i32 8530, i32 1290
  %call1 = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef %., ptr noundef nonnull %die_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  %tobool.not = icmp eq ptr %ver, null
  %or.cond = or i1 %tobool.not, %cmp2
  br i1 %or.cond, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %die_info to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %die_info, align 2
  %5 = trunc i16 %4 to i8
  %6 = lshr i8 %5, 2
  %conv4 = and i8 %6, 15
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %ver, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %die_info) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_get_mac(ptr noundef %wl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %1)
  %cmp.i = icmp eq i32 %1, 84082961
  %hw_pg_ver.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 27
  %2 = ptrtoint ptr %hw_pg_ver.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_pg_ver.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %4 = lshr i8 %3, 2
  %conv1.i = and i8 %4, 3
  %5 = and i8 %3, 3
  %trunc.i = trunc i8 %4 to i2
  %6 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i2 %trunc.i, label %if.then.i.do.body.i_crit_edge [
    i2 -1, label %if.then.i.if.then16.i_crit_edge
    i2 -2, label %land.lhs.true.i
  ]

if.then.i.if.then16.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14.not.i = icmp eq i8 %5, 0
  br i1 %cmp14.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true.i.if.then16.i_crit_edge

land.lhs.true.i.if.then16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then16.i:                                      ; preds = %land.lhs.true.i.if.then16.i_crit_edge, %if.then.i.if.then16.i_crit_edge
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and19.i = and i8 %3, 3
  %7 = lshr i8 %3, 2
  %8 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and19.i)
  %cmp28.i = icmp eq i8 %and19.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp32.not.i = icmp ne i8 %8, 0
  %or.cond.i = select i1 %cmp28.i, i1 %cmp32.not.i, i1 false
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then16.i, %land.lhs.true.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %minor.0.i = phi i8 [ %5, %if.then16.i ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ], [ %5, %if.then.i.do.body.i_crit_edge ], [ %8, %if.else.i ]
  %major.0.i = phi i8 [ %conv1.i, %if.then16.i ], [ 2, %land.lhs.true.i.do.body.i_crit_edge ], [ %conv1.i, %if.then.i.do.body.i_crit_edge ], [ %and19.i, %if.else.i ]
  %supported.0.off0.i = phi i1 [ true, %if.then16.i ], [ false, %land.lhs.true.i.do.body.i_crit_edge ], [ false, %if.then.i.do.body.i_crit_edge ], [ %or.cond.i, %if.else.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %9 = load i32, ptr @wl12xx_debug_level, align 4
  %and37.i = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool.not.i, label %do.body.i.wl12xx_mac_in_fuse.exit_crit_edge, label %do.body41.i, !prof !198

do.body.i.wl12xx_mac_in_fuse.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl12xx_mac_in_fuse.exit

do.body41.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_mac_in_fuse.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_get_mac, %if.then49.i)) #14
          to label %wl12xx_mac_in_fuse.exit [label %if.then49.i], !srcloc !199

if.then49.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv50.i = zext i8 %major.0.i to i32
  %conv51.i = zext i8 %minor.0.i to i32
  %cond.i = select i1 %supported.0.off0.i, ptr @.str.64, ptr @.str.65
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_mac_in_fuse.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.63, i32 noundef %conv50.i, i32 noundef %conv51.i, ptr noundef nonnull %cond.i) #14
  br label %wl12xx_mac_in_fuse.exit

wl12xx_mac_in_fuse.exit:                          ; preds = %if.then49.i, %do.body41.i, %do.body.i.wl12xx_mac_in_fuse.exit_crit_edge
  br i1 %supported.0.off0.i, label %if.then, label %wl12xx_mac_in_fuse.exit.return_crit_edge

wl12xx_mac_in_fuse.exit.return_crit_edge:         ; preds = %wl12xx_mac_in_fuse.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %wl12xx_mac_in_fuse.exit
  %call.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3170560) #14
  %buffer_32.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %10 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer_32.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108864, ptr %11, align 4
  %13 = load ptr, ptr %buffer_32.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %14 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false.i.i.i.i:                            ; preds = %if.then
  %17 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i.i.i.i = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ne i32 %call.i.i, 131068
  %spec.select.i.i.i.i = and i1 %cmp.i.i.i.i, %tobool3.not.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !200

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end25.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %if_ops.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %20 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i.i = tail call i32 %23(ptr noundef %25, i32 noundef %call.i.i, ptr noundef %13, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %call27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %if.end25.i.i.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end25.i.i.i.i.if.end.i_crit_edge:              ; preds = %if.end25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end25.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %26 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp29.not.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp29.not.i.i.i.i, label %land.lhs.true.i.i.i.i.wlcore_write32.exit.i_crit_edge, label %if.then30.i.i.i.i

land.lhs.true.i.i.i.i.wlcore_write32.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit.i

if.then30.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #14
  br label %wlcore_write32.exit.i

wlcore_write32.exit.i:                            ; preds = %if.then30.i.i.i.i, %land.lhs.true.i.i.i.i.wlcore_write32.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %cmp.i3 = icmp slt i32 %call27.i.i.i.i, 0
  br i1 %cmp.i3, label %wlcore_write32.exit.i.return_crit_edge, label %wlcore_write32.exit.i.if.end.i_crit_edge

wlcore_write32.exit.i.if.end.i_crit_edge:         ; preds = %wlcore_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

wlcore_write32.exit.i.return_crit_edge:           ; preds = %wlcore_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %wlcore_write32.exit.i.if.end.i_crit_edge, %if.end25.i.i.i.i.if.end.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500000, i32 noundef 700000, i32 noundef 2) #14
  %ptable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %28 = ptrtoint ptr %ptable.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptable.i, align 8
  %arrayidx.i = getelementptr %struct.wlcore_partition_set, ptr %29, i32 3
  %call1.i = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.return_crit_edge, label %if.end4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %call.i30.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3215028) #14
  %30 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer_32.i.i.i, align 4
  %32 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i33.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i33.i, label %lor.lhs.false.i.i.i37.i, label %if.end4.i.return_crit_edge

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false.i.i.i37.i:                          ; preds = %if.end4.i
  %35 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %37 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not.i.i.i34.i = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i30.i)
  %cmp.i.i.i35.i = icmp ne i32 %call.i30.i, 131068
  %spec.select.i.i.i36.i = and i1 %cmp.i.i.i35.i, %tobool3.not.i.i.i34.i
  br i1 %spec.select.i.i.i36.i, label %do.end.i.i.i38.i, label %if.end25.i.i.i43.i, !prof !200

do.end.i.i.i38.i:                                 ; preds = %lor.lhs.false.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end25.i.i.i43.i:                               ; preds = %lor.lhs.false.i.i.i37.i
  %38 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i41.i = tail call i32 %41(ptr noundef %43, i32 noundef %call.i30.i, ptr noundef %31, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i41.i)
  %tobool28.not.i.i.i42.i = icmp eq i32 %call27.i.i.i41.i, 0
  br i1 %tobool28.not.i.i.i42.i, label %if.end25.i.i.i43.i.if.end8.i_crit_edge, label %land.lhs.true.i.i.i46.i

if.end25.i.i.i43.i.if.end8.i_crit_edge:           ; preds = %if.end25.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

land.lhs.true.i.i.i46.i:                          ; preds = %if.end25.i.i.i43.i
  %state.i.i.i44.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %44 = ptrtoint ptr %state.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i.i.i44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp29.not.i.i.i45.i = icmp eq i32 %45, 0
  br i1 %cmp29.not.i.i.i45.i, label %land.lhs.true.i.i.i46.i.wlcore_raw_read.exit.i.i.i_crit_edge, label %if.then30.i.i.i47.i

land.lhs.true.i.i.i46.i.wlcore_raw_read.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i.i

if.then30.i.i.i47.i:                              ; preds = %land.lhs.true.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i.i

wlcore_raw_read.exit.i.i.i:                       ; preds = %if.then30.i.i.i47.i, %land.lhs.true.i.i.i46.i.wlcore_raw_read.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i41.i)
  %cmp.i.i.i = icmp slt i32 %call27.i.i.i41.i, 0
  br i1 %cmp.i.i.i, label %wlcore_raw_read.exit.i.i.i.return_crit_edge, label %wlcore_raw_read.exit.i.i.i.if.end8.i_crit_edge

wlcore_raw_read.exit.i.i.i.if.end8.i_crit_edge:   ; preds = %wlcore_raw_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

wlcore_raw_read.exit.i.i.i.return_crit_edge:      ; preds = %wlcore_raw_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end8.i:                                        ; preds = %wlcore_raw_read.exit.i.i.i.if.end8.i_crit_edge, %if.end25.i.i.i43.i.if.end8.i_crit_edge
  %46 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_32.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #14
  %call.i48.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3215032) #14
  %51 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer_32.i.i.i, align 4
  %53 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %55 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i51.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i51.i, label %lor.lhs.false.i.i.i55.i, label %if.end8.i.return_crit_edge

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false.i.i.i55.i:                          ; preds = %if.end8.i
  %56 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %58 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool3.not.i.i.i52.i = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i48.i)
  %cmp.i.i.i53.i = icmp ne i32 %call.i48.i, 131068
  %spec.select.i.i.i54.i = and i1 %cmp.i.i.i53.i, %tobool3.not.i.i.i52.i
  br i1 %spec.select.i.i.i54.i, label %do.end.i.i.i56.i, label %if.end25.i.i.i61.i, !prof !200

do.end.i.i.i56.i:                                 ; preds = %lor.lhs.false.i.i.i55.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end25.i.i.i61.i:                               ; preds = %lor.lhs.false.i.i.i55.i
  %59 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i59.i = tail call i32 %62(ptr noundef %64, i32 noundef %call.i48.i, ptr noundef %52, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i59.i)
  %tobool28.not.i.i.i60.i = icmp eq i32 %call27.i.i.i59.i, 0
  br i1 %tobool28.not.i.i.i60.i, label %if.end25.i.i.i61.i.if.end12.i_crit_edge, label %land.lhs.true.i.i.i64.i

if.end25.i.i.i61.i.if.end12.i_crit_edge:          ; preds = %if.end25.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

land.lhs.true.i.i.i64.i:                          ; preds = %if.end25.i.i.i61.i
  %state.i.i.i62.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %65 = ptrtoint ptr %state.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i.i.i62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp29.not.i.i.i63.i = icmp eq i32 %66, 0
  br i1 %cmp29.not.i.i.i63.i, label %land.lhs.true.i.i.i64.i.wlcore_raw_read.exit.i.i67.i_crit_edge, label %if.then30.i.i.i65.i

land.lhs.true.i.i.i64.i.wlcore_raw_read.exit.i.i67.i_crit_edge: ; preds = %land.lhs.true.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i67.i

if.then30.i.i.i65.i:                              ; preds = %land.lhs.true.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i67.i

wlcore_raw_read.exit.i.i67.i:                     ; preds = %if.then30.i.i.i65.i, %land.lhs.true.i.i.i64.i.wlcore_raw_read.exit.i.i67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i59.i)
  %cmp.i.i66.i = icmp slt i32 %call27.i.i.i59.i, 0
  br i1 %cmp.i.i66.i, label %wlcore_raw_read.exit.i.i67.i.return_crit_edge, label %wlcore_raw_read.exit.i.i67.i.if.end12.i_crit_edge

wlcore_raw_read.exit.i.i67.i.if.end12.i_crit_edge: ; preds = %wlcore_raw_read.exit.i.i67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

wlcore_raw_read.exit.i.i67.i.return_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end12.i:                                       ; preds = %wlcore_raw_read.exit.i.i67.i.if.end12.i_crit_edge, %if.end25.i.i.i61.i.if.end12.i_crit_edge
  %67 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer_32.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #14
  %and.i = shl i32 %71, 8
  %shl.i = and i32 %and.i, 16776960
  %shr.i = lshr i32 %50, 24
  %add.i = or i32 %shl.i, %shr.i
  %fuse_oui_addr.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 28
  %72 = ptrtoint ptr %fuse_oui_addr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add.i, ptr %fuse_oui_addr.i, align 4
  %and14.i = and i32 %50, 16777215
  %fuse_nic_addr.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 29
  %73 = ptrtoint ptr %fuse_nic_addr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and14.i, ptr %fuse_nic_addr.i, align 8
  %74 = ptrtoint ptr %ptable.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ptable.i, align 8
  %call17.i = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %75) #14
  br label %return

return:                                           ; preds = %if.end12.i, %wlcore_raw_read.exit.i.i67.i.return_crit_edge, %do.end.i.i.i56.i, %if.end8.i.return_crit_edge, %wlcore_raw_read.exit.i.i.i.return_crit_edge, %do.end.i.i.i38.i, %if.end4.i.return_crit_edge, %if.end.i.return_crit_edge, %wlcore_write32.exit.i.return_crit_edge, %do.end.i.i.i.i, %if.then.return_crit_edge, %wl12xx_mac_in_fuse.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %wl12xx_mac_in_fuse.exit.return_crit_edge ], [ %call27.i.i.i.i, %wlcore_write32.exit.i.return_crit_edge ], [ %call1.i, %if.end.i.return_crit_edge ], [ %call17.i, %if.end12.i ], [ -5, %do.end.i.i.i.i ], [ -5, %if.then.return_crit_edge ], [ -5, %if.end4.i.return_crit_edge ], [ -5, %do.end.i.i.i38.i ], [ %call27.i.i.i41.i, %wlcore_raw_read.exit.i.i.i.return_crit_edge ], [ -5, %if.end8.i.return_crit_edge ], [ -5, %do.end.i.i.i56.i ], [ %call27.i.i.i59.i, %wlcore_raw_read.exit.i.i67.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wl12xx_set_tx_desc_csum(ptr nocapture noundef readnone %wl, ptr nocapture noundef writeonly %desc, ptr nocapture noundef readnone %skb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.wl1271_tx_hw_descr, ptr %desc, i32 0, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %0, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_debugfs_add_files(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_scan_start(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_scan_stop(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_sched_scan_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl12xx_scan_sched_scan_stop(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl12xx_get_spare_blocks(ptr nocapture noundef readnone %wl, i1 noundef zeroext %is_gem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %is_gem, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_set_key(ptr noundef %wl, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key_conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wlcore_set_key(ptr noundef %wl, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key_conf) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_cmd_channel_switch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_set_peer_cap(ptr noundef %wl, ptr noundef %ht_cap, i1 noundef zeroext %allow_ht_operation, i32 noundef %rate_set, i8 noundef zeroext %hlid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1271_acx_set_ht_capabilities(ptr noundef %wl, ptr noundef %ht_cap, i1 noundef zeroext %allow_ht_operation, i8 noundef zeroext %hlid) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl12xx_convert_hwaddr(ptr nocapture noundef readnone %wl, i32 noundef %hwaddr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %hwaddr, 5
  ret i32 %shl
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wl12xx_lnk_high_prio(ptr noundef %wl, i8 noundef zeroext %hlid, ptr nocapture noundef readonly %lnk) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %hlid to i32
  %fw_fast_lnk_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 104
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %fw_fast_lnk_map, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %fast_link_thold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 17
  %slow_link_thold = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 94, i32 2, i32 16
  %thold.0.in = select i1 %tobool.not, ptr %slow_link_thold, ptr %fast_link_thold
  %4 = ptrtoint ptr %thold.0.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %thold.0 = load i8, ptr %thold.0.in, align 1
  %allocated_pkts = getelementptr inbounds %struct.wl1271_link, ptr %lnk, i32 0, i32 1
  %5 = ptrtoint ptr %allocated_pkts to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %allocated_pkts, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %thold.0)
  %cmp = icmp ult i8 %6, %thold.0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wl12xx_lnk_low_prio(ptr nocapture noundef readnone %wl, i8 noundef zeroext %hlid, ptr nocapture noundef readnone %lnk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl127x_prepare_read(ptr noundef %wl, i32 noundef %rx_desc, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %1)
  %cmp.not = icmp eq i32 %1, 84082961
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %entry
  %target_mem_map = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 42
  %2 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target_mem_map, align 8
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %and = shl i32 %rx_desc, 8
  %shl = and i32 %and, 65280
  %packet_memory_pool_start = getelementptr inbounds %struct.wl1271_acx_mem_map, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %packet_memory_pool_start to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %packet_memory_pool_start, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add = add i32 %8, %shl
  %rx_mem_addr = getelementptr inbounds %struct.wl12xx_priv, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %rx_mem_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_mem_addr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %10, align 4
  %12 = load ptr, ptr %rx_mem_addr, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add4 = add i32 %14, 4
  %addr_extra = getelementptr inbounds %struct.wl127x_rx_mem_pool_addr, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %addr_extra to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4, ptr %addr_extra, align 4
  %16 = load ptr, ptr %rx_mem_addr, align 4
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3145736) #14
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then.cleanup12_crit_edge

if.then.cleanup12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup12

lor.lhs.false.i.i:                                ; preds = %if.then
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i.i = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i = and i1 %cmp.i.i, %tobool3.not.i.i
  br i1 %spec.select.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !200

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup12

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %if_ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %23 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i = tail call i32 %26(ptr noundef %28, i32 noundef %call.i, ptr noundef %16, i32 noundef 8, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end11_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.if.end11_crit_edge:                  ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %state.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp29.not.i.i, label %land.lhs.true.i.i.wlcore_write.exit_crit_edge, label %if.then30.i.i

land.lhs.true.i.i.wlcore_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #14
  br label %wlcore_write.exit

wlcore_write.exit:                                ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp7 = icmp slt i32 %call27.i.i, 0
  br i1 %cmp7, label %wlcore_write.exit.cleanup12_crit_edge, label %wlcore_write.exit.if.end11_crit_edge

wlcore_write.exit.if.end11_crit_edge:             ; preds = %wlcore_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

wlcore_write.exit.cleanup12_crit_edge:            ; preds = %wlcore_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup12

if.end11:                                         ; preds = %wlcore_write.exit.if.end11_crit_edge, %if.end25.i.i.if.end11_crit_edge, %entry.if.end11_crit_edge
  br label %cleanup12

cleanup12:                                        ; preds = %if.end11, %wlcore_write.exit.cleanup12_crit_edge, %do.end.i.i, %if.then.cleanup12_crit_edge
  %retval.1 = phi i32 [ 0, %if.end11 ], [ %call27.i.i, %wlcore_write.exit.cleanup12_crit_edge ], [ -5, %do.end.i.i ], [ -5, %if.then.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_translate_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl12xx_pre_boot(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  %spare_reg.i.i = alloca i16, align 2
  %pll_config.i.i = alloca i16, align 2
  %fref_detection.i.i = alloca i16, align 2
  %tcxo_detection.i.i = alloca i16, align 2
  %sys_clk_cfg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %3)
  %cmp = icmp eq i32 %3, 84082961
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sys_clk_cfg.i) #14
  %4 = ptrtoint ptr %sys_clk_cfg.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %sys_clk_cfg.i, align 2, !annotation !201
  %ref_clock.i = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ref_clock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_clock.i, align 4
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.i = icmp eq i32 %7, 4
  br i1 %switch.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call fastcc i32 @wl128x_switch_tcxo_to_fref(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.wl128x_boot_clk.exit.thread_crit_edge, label %if.then.i.fref_clk.i_crit_edge

if.then.i.fref_clk.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fref_clk.i

if.then.i.wl128x_boot_clk.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread

if.end5.i:                                        ; preds = %if.then
  %call6.i = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 8704, ptr noundef nonnull %sys_clk_cfg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.wl128x_boot_clk.exit.thread_crit_edge, label %if.end9.i

if.end5.i.wl128x_boot_clk.exit.thread_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %8 = ptrtoint ptr %sys_clk_cfg.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sys_clk_cfg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp10.i = icmp eq i16 %9, -1
  br i1 %cmp10.i, label %if.end9.i.wl128x_boot_clk.exit.thread_crit_edge, label %if.end13.i

if.end9.i.wl128x_boot_clk.exit.thread_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool15.not.i = icmp eq i16 %10, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.fref_clk.i_crit_edge

if.end13.i.fref_clk.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fref_clk.i

if.end17.i:                                       ; preds = %if.end13.i
  %tcxo_clock.i = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %tcxo_clock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tcxo_clock.i, align 4
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %switch57.i = icmp eq i32 %13, 4
  br i1 %switch57.i, label %if.then24.i, label %if.end29.i

if.then24.i:                                      ; preds = %if.end17.i
  %call25.i = call fastcc i32 @wl128x_switch_tcxo_to_fref(ptr noundef %wl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then24.i.wl128x_boot_clk.exit.thread_crit_edge, label %if.then24.i.fref_clk.i_crit_edge

if.then24.i.fref_clk.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fref_clk.i

if.then24.i.wl128x_boot_clk.exit.thread_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread

if.end29.i:                                       ; preds = %if.end17.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tcxo_detection.i.i) #14
  %14 = ptrtoint ptr %tcxo_detection.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %tcxo_detection.i.i, align 2, !annotation !201
  %call.i.i = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 8806, ptr noundef nonnull %tcxo_detection.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %wl128x_is_tcxo_valid.exit.thread.i, label %wl128x_is_tcxo_valid.exit.i

wl128x_is_tcxo_valid.exit.thread.i:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcxo_detection.i.i) #14
  br label %wl128x_boot_clk.exit.thread

wl128x_is_tcxo_valid.exit.i:                      ; preds = %if.end29.i
  %15 = ptrtoint ptr %tcxo_detection.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tcxo_detection.i.i, align 2
  %17 = and i16 %16, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i.i = icmp eq i16 %17, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcxo_detection.i.i) #14
  br i1 %tobool.not.i.i, label %wl128x_is_tcxo_valid.exit.i.config_mcs_pll.i_crit_edge, label %wl128x_is_tcxo_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge

wl128x_is_tcxo_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge: ; preds = %wl128x_is_tcxo_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread

wl128x_is_tcxo_valid.exit.i.config_mcs_pll.i_crit_edge: ; preds = %wl128x_is_tcxo_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %config_mcs_pll.i

fref_clk.i:                                       ; preds = %if.then24.i.fref_clk.i_crit_edge, %if.end13.i.fref_clk.i_crit_edge, %if.then.i.fref_clk.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fref_detection.i.i) #14
  %18 = ptrtoint ptr %fref_detection.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %fref_detection.i.i, align 2, !annotation !201
  %call.i58.i = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 8326, ptr noundef nonnull %fref_detection.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp.i59.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp.i59.i, label %wl128x_is_fref_valid.exit.thread.i, label %wl128x_is_fref_valid.exit.i

wl128x_is_fref_valid.exit.thread.i:               ; preds = %fref_clk.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fref_detection.i.i) #14
  br label %wl128x_boot_clk.exit.thread

wl128x_is_fref_valid.exit.i:                      ; preds = %fref_clk.i
  %19 = ptrtoint ptr %fref_detection.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fref_detection.i.i, align 2
  %21 = and i16 %20, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i60.i = icmp eq i16 %21, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fref_detection.i.i) #14
  br i1 %tobool.not.i60.i, label %wl128x_is_fref_valid.exit.i.config_mcs_pll.i_crit_edge, label %wl128x_is_fref_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge

wl128x_is_fref_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge: ; preds = %wl128x_is_fref_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread

wl128x_is_fref_valid.exit.i.config_mcs_pll.i_crit_edge: ; preds = %wl128x_is_fref_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %config_mcs_pll.i

config_mcs_pll.i:                                 ; preds = %wl128x_is_fref_valid.exit.i.config_mcs_pll.i_crit_edge, %wl128x_is_tcxo_valid.exit.i.config_mcs_pll.i_crit_edge
  %storemerge.in.i = phi ptr [ %tcxo_clock.i, %wl128x_is_tcxo_valid.exit.i.config_mcs_pll.i_crit_edge ], [ %ref_clock.i, %wl128x_is_fref_valid.exit.i.config_mcs_pll.i_crit_edge ]
  %22 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %spare_reg.i.i) #14
  %23 = ptrtoint ptr %spare_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %spare_reg.i.i, align 2, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pll_config.i.i) #14
  %24 = ptrtoint ptr %pll_config.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %pll_config.i.i, align 2, !annotation !201
  %25 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1, align 4
  %call.i63.i = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 8992, ptr noundef nonnull %spare_reg.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %cmp.i64.i = icmp slt i32 %call.i63.i, 0
  br i1 %cmp.i64.i, label %config_mcs_pll.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end.i65.i

config_mcs_pll.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %config_mcs_pll.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end.i65.i:                                     ; preds = %config_mcs_pll.i
  %27 = ptrtoint ptr %spare_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %spare_reg.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp2.i.i = icmp eq i16 %28, -1
  br i1 %cmp2.i.i, label %if.end.i65.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end5.i.i

if.end.i65.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end5.i.i:                                      ; preds = %if.end.i65.i
  %29 = or i16 %28, 4
  %30 = ptrtoint ptr %spare_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %spare_reg.i.i, align 2
  %call8.i.i = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 8992, i16 noundef zeroext %29) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end5.i.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end12.i.i

if.end5.i.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end12.i.i:                                     ; preds = %if.end5.i.i
  %tcxo_clock.i.i = getelementptr inbounds %struct.wl12xx_priv, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %tcxo_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tcxo_clock.i.i, align 4
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %switch.i.i = icmp eq i32 %33, 6
  br i1 %switch.i.i, label %if.then18.i.i, label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  %call.i.i.i = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 3476, i16 noundef zeroext 200) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then18.i.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end.i.i.i

if.then18.i.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end.i.i.i:                                     ; preds = %if.then18.i.i
  %call1.i.i.i = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 3478, i16 noundef zeroext 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end.i.i.i.wl128x_boot_clk.exit_crit_edge

if.end.i.i.i.wl128x_boot_clk.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit

if.end.i.i.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end20.i.i:                                     ; preds = %if.end12.i.i
  %call22.i.i = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 3474, ptr noundef nonnull %pll_config.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.end20.i.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end26.i.i

if.end20.i.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end26.i.i:                                     ; preds = %if.end20.i.i
  %34 = ptrtoint ptr %pll_config.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pll_config.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %cmp28.i.i = icmp eq i16 %35, -1
  br i1 %cmp28.i.i, label %if.end26.i.i.wl128x_boot_clk.exit.thread157_crit_edge, label %if.end31.i.i

if.end26.i.i.wl128x_boot_clk.exit.thread157_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wl128x_boot_clk.exit.thread157

if.end31.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %clk.tr.i.i = trunc i32 %storemerge.i to i16
  %36 = shl i16 %clk.tr.i.i, 4
  %37 = and i16 %36, 16
  %38 = add nuw nsw i16 %37, 16
  %conv35.i.i = or i16 %38, %35
  %39 = or i16 %conv35.i.i, 3
  %40 = ptrtoint ptr %pll_config.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %pll_config.i.i, align 2
  br label %wl128x_boot_clk.exit

wl128x_boot_clk.exit.thread:                      ; preds = %wl128x_is_fref_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge, %wl128x_is_fref_valid.exit.thread.i, %wl128x_is_tcxo_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge, %wl128x_is_tcxo_valid.exit.thread.i, %if.then24.i.wl128x_boot_clk.exit.thread_crit_edge, %if.end9.i.wl128x_boot_clk.exit.thread_crit_edge, %if.end5.i.wl128x_boot_clk.exit.thread_crit_edge, %if.then.i.wl128x_boot_clk.exit.thread_crit_edge
  %retval.0.i88.ph = phi i32 [ -22, %wl128x_is_fref_valid.exit.thread.i ], [ -22, %wl128x_is_tcxo_valid.exit.thread.i ], [ -22, %wl128x_is_fref_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge ], [ -22, %wl128x_is_tcxo_valid.exit.i.wl128x_boot_clk.exit.thread_crit_edge ], [ -22, %if.then24.i.wl128x_boot_clk.exit.thread_crit_edge ], [ -22, %if.end9.i.wl128x_boot_clk.exit.thread_crit_edge ], [ %call6.i, %if.end5.i.wl128x_boot_clk.exit.thread_crit_edge ], [ -22, %if.then.i.wl128x_boot_clk.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sys_clk_cfg.i) #14
  br label %out

wl128x_boot_clk.exit.thread157:                   ; preds = %if.end26.i.i.wl128x_boot_clk.exit.thread157_crit_edge, %if.end20.i.i.wl128x_boot_clk.exit.thread157_crit_edge, %if.end.i.i.i.wl128x_boot_clk.exit.thread157_crit_edge, %if.then18.i.i.wl128x_boot_clk.exit.thread157_crit_edge, %if.end5.i.i.wl128x_boot_clk.exit.thread157_crit_edge, %if.end.i65.i.wl128x_boot_clk.exit.thread157_crit_edge, %config_mcs_pll.i.wl128x_boot_clk.exit.thread157_crit_edge
  %retval.0.i66.i.ph = phi i32 [ %call1.i.i.i, %if.end.i.i.i.wl128x_boot_clk.exit.thread157_crit_edge ], [ %call.i.i.i, %if.then18.i.i.wl128x_boot_clk.exit.thread157_crit_edge ], [ -14, %if.end26.i.i.wl128x_boot_clk.exit.thread157_crit_edge ], [ %call22.i.i, %if.end20.i.i.wl128x_boot_clk.exit.thread157_crit_edge ], [ %call8.i.i, %if.end5.i.i.wl128x_boot_clk.exit.thread157_crit_edge ], [ -14, %if.end.i65.i.wl128x_boot_clk.exit.thread157_crit_edge ], [ %call.i63.i, %config_mcs_pll.i.wl128x_boot_clk.exit.thread157_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pll_config.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spare_reg.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sys_clk_cfg.i) #14
  br label %out

wl128x_boot_clk.exit:                             ; preds = %if.end31.i.i, %if.end.i.i.i.wl128x_boot_clk.exit_crit_edge
  %.sink.i = phi i16 [ %39, %if.end31.i.i ], [ 115, %if.end.i.i.i.wl128x_boot_clk.exit_crit_edge ]
  %call5.i.i.i = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 3474, i16 noundef zeroext %.sink.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pll_config.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spare_reg.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sys_clk_cfg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp2 = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp2, label %wl128x_boot_clk.exit.out_crit_edge, label %wl128x_boot_clk.exit.if.end8_crit_edge

wl128x_boot_clk.exit.if.end8_crit_edge:           ; preds = %wl128x_boot_clk.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

wl128x_boot_clk.exit.out_crit_edge:               ; preds = %wl128x_boot_clk.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @wl127x_boot_clk(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.else.out_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %wl128x_boot_clk.exit.if.end8_crit_edge
  %selected_clock.1 = phi i32 [ %storemerge.i, %wl128x_boot_clk.exit.if.end8_crit_edge ], [ -1, %if.else.if.end8_crit_edge ]
  %call.i89 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3170560) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %41 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer_32.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 67108864, ptr %42, align 4
  %44 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %45 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i.i, align 4
  %47 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %if.end8
  %48 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i.i.i, align 4
  %50 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool3.not.i.i.i = icmp ne i32 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i89)
  %cmp.i.i.i90 = icmp ne i32 %call.i89, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i90, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %51 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %55 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = call i32 %54(ptr noundef %56, i32 noundef %call.i89, ptr noundef %44, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end12_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end12_crit_edge:                ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %57 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp29.not.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp10 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp10, label %wlcore_write32.exit.out_crit_edge, label %wlcore_write32.exit.if.end12_crit_edge

wlcore_write32.exit.if.end12_crit_edge:           ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

wlcore_write32.exit.out_crit_edge:                ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end12:                                         ; preds = %wlcore_write32.exit.if.end12_crit_edge, %if.end25.i.i.i.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 107374000) #14
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %60 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptable, align 8
  %arrayidx = getelementptr %struct.wlcore_partition_set, ptr %61, i32 3
  %call13 = call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end16:                                         ; preds = %if.end12
  %call.i91 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3211308) #14
  %62 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer_32.i.i, align 4
  %64 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags.i.i.i, align 4
  %66 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i.i94 = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i94, label %lor.lhs.false.i.i.i98, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i98:                            ; preds = %if.end16
  %67 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags.i.i.i, align 4
  %69 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool3.not.i.i.i95 = icmp ne i32 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i91)
  %cmp.i.i.i96 = icmp ne i32 %call.i91, 131068
  %spec.select.i.i.i97 = and i1 %cmp.i.i.i96, %tobool3.not.i.i.i95
  br i1 %spec.select.i.i.i97, label %do.end.i.i.i99, label %if.end25.i.i.i104, !prof !200

do.end.i.i.i99:                                   ; preds = %lor.lhs.false.i.i.i98
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i104:                                ; preds = %lor.lhs.false.i.i.i98
  %70 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %if_ops.i.i.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i102 = call i32 %73(ptr noundef %75, i32 noundef %call.i91, ptr noundef %63, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i102)
  %tobool28.not.i.i.i103 = icmp eq i32 %call27.i.i.i102, 0
  br i1 %tobool28.not.i.i.i103, label %if.end25.i.i.i104.do.body_crit_edge, label %land.lhs.true.i.i.i107

if.end25.i.i.i104.do.body_crit_edge:              ; preds = %if.end25.i.i.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true.i.i.i107:                           ; preds = %if.end25.i.i.i104
  %state.i.i.i105 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %76 = ptrtoint ptr %state.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %state.i.i.i105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp29.not.i.i.i106 = icmp eq i32 %77, 0
  br i1 %cmp29.not.i.i.i106, label %land.lhs.true.i.i.i107.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i108

land.lhs.true.i.i.i107.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i108:                               ; preds = %land.lhs.true.i.i.i107
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i108, %land.lhs.true.i.i.i107.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i102)
  %cmp.i.i109 = icmp slt i32 %call27.i.i.i102, 0
  br i1 %cmp.i.i109, label %wlcore_raw_read.exit.i.i.out_crit_edge, label %wlcore_raw_read.exit.i.i.do.body_crit_edge

wlcore_raw_read.exit.i.i.do.body_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

wlcore_raw_read.exit.i.i.out_crit_edge:           ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body:                                          ; preds = %wlcore_raw_read.exit.i.i.do.body_crit_edge, %if.end25.i.i.i104.do.body_crit_edge
  %78 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer_32.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %83 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end37_crit_edge, label %do.body24, !prof !198

do.body.do.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_pre_boot.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_pre_boot, %if.then33)) #14
          to label %do.end37 [label %if.then33], !srcloc !199

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_pre_boot.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.45, i32 noundef %82) #14
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body24, %do.body.do.end37_crit_edge
  %84 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %85)
  %cmp40 = icmp eq i32 %85, 84082961
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  %and42 = shl i32 %selected_clock.1, 5
  %shl = and i32 %and42, 96
  br label %if.end48

if.else44:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  %ref_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %ref_clock to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ref_clock, align 4
  %shl45 = shl i32 %87, 5
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then41
  %shl45.pn = phi i32 [ %shl45, %if.else44 ], [ %shl, %if.then41 ]
  %storemerge = or i32 %shl45.pn, %82
  %call.i110 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3211308) #14
  %88 = call i32 @llvm.bswap.i32(i32 %storemerge) #14
  %89 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buffer_32.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %88, ptr %90, align 4
  %92 = load ptr, ptr %buffer_32.i.i, align 4
  %93 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags.i.i.i, align 4
  %95 = and i32 %94, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i.i113 = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i.i113, label %lor.lhs.false.i.i.i117, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i117:                           ; preds = %if.end48
  %96 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %flags.i.i.i, align 4
  %98 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool3.not.i.i.i114 = icmp ne i32 %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i110)
  %cmp.i.i.i115 = icmp ne i32 %call.i110, 131068
  %spec.select.i.i.i116 = and i1 %cmp.i.i.i115, %tobool3.not.i.i.i114
  br i1 %spec.select.i.i.i116, label %do.end.i.i.i118, label %if.end25.i.i.i124, !prof !200

do.end.i.i.i118:                                  ; preds = %lor.lhs.false.i.i.i117
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i124:                                ; preds = %lor.lhs.false.i.i.i117
  %99 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i120 = getelementptr inbounds %struct.wl1271_if_operations, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write.i.i.i120, align 4
  %103 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i122 = call i32 %102(ptr noundef %104, i32 noundef %call.i110, ptr noundef %92, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i122)
  %tobool28.not.i.i.i123 = icmp eq i32 %call27.i.i.i122, 0
  br i1 %tobool28.not.i.i.i123, label %if.end25.i.i.i124.if.end52_crit_edge, label %land.lhs.true.i.i.i127

if.end25.i.i.i124.if.end52_crit_edge:             ; preds = %if.end25.i.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

land.lhs.true.i.i.i127:                           ; preds = %if.end25.i.i.i124
  %state.i.i.i125 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %105 = ptrtoint ptr %state.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state.i.i.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp29.not.i.i.i126 = icmp eq i32 %106, 0
  br i1 %cmp29.not.i.i.i126, label %land.lhs.true.i.i.i127.wlcore_write32.exit130_crit_edge, label %if.then30.i.i.i128

land.lhs.true.i.i.i127.wlcore_write32.exit130_crit_edge: ; preds = %land.lhs.true.i.i.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit130

if.then30.i.i.i128:                               ; preds = %land.lhs.true.i.i.i127
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit130

wlcore_write32.exit130:                           ; preds = %if.then30.i.i.i128, %land.lhs.true.i.i.i127.wlcore_write32.exit130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i122)
  %cmp50 = icmp slt i32 %call27.i.i.i122, 0
  br i1 %cmp50, label %wlcore_write32.exit130.out_crit_edge, label %wlcore_write32.exit130.if.end52_crit_edge

wlcore_write32.exit130.if.end52_crit_edge:        ; preds = %wlcore_write32.exit130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

wlcore_write32.exit130.out_crit_edge:             ; preds = %wlcore_write32.exit130
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end52:                                         ; preds = %wlcore_write32.exit130.if.end52_crit_edge, %if.end25.i.i.i124.if.end52_crit_edge
  %107 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ptable, align 8
  %arrayidx54 = getelementptr %struct.wlcore_partition_set, ptr %108, i32 1
  %call55 = call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx54) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end52.out_crit_edge, label %if.end58

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end58:                                         ; preds = %if.end52
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %109 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %110, i32 6
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i, align 4
  %call.i131 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %112) #14
  %113 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %buffer_32.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %114, align 4
  %116 = load ptr, ptr %buffer_32.i.i, align 4
  %117 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %flags.i.i.i, align 4
  %119 = and i32 %118, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i.i.i134 = icmp eq i32 %119, 0
  br i1 %tobool.not.i.i.i134, label %lor.lhs.false.i.i.i138, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i138:                           ; preds = %if.end58
  %120 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %flags.i.i.i, align 4
  %122 = and i32 %121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool3.not.i.i.i135 = icmp ne i32 %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i131)
  %cmp.i.i.i136 = icmp ne i32 %call.i131, 131068
  %spec.select.i.i.i137 = and i1 %cmp.i.i.i136, %tobool3.not.i.i.i135
  br i1 %spec.select.i.i.i137, label %do.end.i.i.i139, label %if.end25.i.i.i145, !prof !200

do.end.i.i.i139:                                  ; preds = %lor.lhs.false.i.i.i138
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i145:                                ; preds = %lor.lhs.false.i.i.i138
  %123 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i141 = getelementptr inbounds %struct.wl1271_if_operations, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write.i.i.i141, align 4
  %127 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i143 = call i32 %126(ptr noundef %128, i32 noundef %call.i131, ptr noundef %116, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i143)
  %tobool28.not.i.i.i144 = icmp eq i32 %call27.i.i.i143, 0
  br i1 %tobool28.not.i.i.i144, label %if.end25.i.i.i145.if.end62_crit_edge, label %land.lhs.true.i.i.i148

if.end25.i.i.i145.if.end62_crit_edge:             ; preds = %if.end25.i.i.i145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

land.lhs.true.i.i.i148:                           ; preds = %if.end25.i.i.i145
  %state.i.i.i146 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %129 = ptrtoint ptr %state.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %state.i.i.i146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp29.not.i.i.i147 = icmp eq i32 %130, 0
  br i1 %cmp29.not.i.i.i147, label %land.lhs.true.i.i.i148.wlcore_write_reg.exit_crit_edge, label %if.then30.i.i.i149

land.lhs.true.i.i.i148.wlcore_write_reg.exit_crit_edge: ; preds = %land.lhs.true.i.i.i148
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write_reg.exit

if.then30.i.i.i149:                               ; preds = %land.lhs.true.i.i.i148
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write_reg.exit

wlcore_write_reg.exit:                            ; preds = %if.then30.i.i.i149, %land.lhs.true.i.i.i148.wlcore_write_reg.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i143)
  %cmp60 = icmp slt i32 %call27.i.i.i143, 0
  br i1 %cmp60, label %wlcore_write_reg.exit.out_crit_edge, label %wlcore_write_reg.exit.if.end62_crit_edge

wlcore_write_reg.exit.if.end62_crit_edge:         ; preds = %wlcore_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

wlcore_write_reg.exit.out_crit_edge:              ; preds = %wlcore_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end62:                                         ; preds = %wlcore_write_reg.exit.if.end62_crit_edge, %if.end25.i.i.i145.if.end62_crit_edge
  %call63 = call fastcc i32 @wl1271_boot_soft_reset(ptr noundef %wl)
  br label %out

out:                                              ; preds = %if.end62, %wlcore_write_reg.exit.out_crit_edge, %do.end.i.i.i139, %if.end58.out_crit_edge, %if.end52.out_crit_edge, %wlcore_write32.exit130.out_crit_edge, %do.end.i.i.i118, %if.end48.out_crit_edge, %wlcore_raw_read.exit.i.i.out_crit_edge, %do.end.i.i.i99, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %wlcore_write32.exit.out_crit_edge, %do.end.i.i.i, %if.end8.out_crit_edge, %if.else.out_crit_edge, %wl128x_boot_clk.exit.out_crit_edge, %wl128x_boot_clk.exit.thread157, %wl128x_boot_clk.exit.thread
  %ret.0 = phi i32 [ %call5.i.i.i, %wl128x_boot_clk.exit.out_crit_edge ], [ %call27.i.i.i, %wlcore_write32.exit.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %call27.i.i.i122, %wlcore_write32.exit130.out_crit_edge ], [ %call55, %if.end52.out_crit_edge ], [ %call27.i.i.i143, %wlcore_write_reg.exit.out_crit_edge ], [ %call63, %if.end62 ], [ %call4, %if.else.out_crit_edge ], [ %retval.0.i88.ph, %wl128x_boot_clk.exit.thread ], [ %retval.0.i66.i.ph, %wl128x_boot_clk.exit.thread157 ], [ -5, %do.end.i.i.i ], [ -5, %if.end8.out_crit_edge ], [ -5, %if.end16.out_crit_edge ], [ -5, %do.end.i.i.i99 ], [ %call27.i.i.i102, %wlcore_raw_read.exit.i.i.out_crit_edge ], [ -5, %do.end.i.i.i118 ], [ -5, %if.end48.out_crit_edge ], [ -5, %do.end.i.i.i139 ], [ -5, %if.end58.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_boot_upload_nvs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl12xx_pre_upload(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  %polarity = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %polarity) #14
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %polarity, align 2, !annotation !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3, !prof !198

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_pre_upload.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_pre_upload, %if.then12)) #14
          to label %do.end15 [label %if.then12], !srcloc !199

if.then12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_pre_upload.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.57) #14
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body3, %entry.do.end15_crit_edge
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3167768) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %2 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 408301568, ptr %3, align 4
  %5 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %6 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i.i, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %do.end15.out_crit_edge

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %do.end15
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i.i.i = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

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
  %call27.i.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %call.i, ptr noundef %5, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end18_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end18_crit_edge:                ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %18 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp29.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp, label %wlcore_write32.exit.out_crit_edge, label %wlcore_write32.exit.if.end18_crit_edge

wlcore_write32.exit.if.end18_crit_edge:           ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

wlcore_write32.exit.out_crit_edge:                ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end18:                                         ; preds = %wlcore_write32.exit.if.end18_crit_edge, %if.end25.i.i.i.if.end18_crit_edge
  %rtable.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %20 = ptrtoint ptr %rtable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtable.i, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 8
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %call.i84 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %23) #14
  %24 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer_32.i.i, align 4
  %26 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i.i, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i87 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i87, label %lor.lhs.false.i.i.i91, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i91:                            ; preds = %if.end18
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.i.i.i88 = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i84)
  %cmp.i.i.i89 = icmp ne i32 %call.i84, 131068
  %spec.select.i.i.i90 = and i1 %cmp.i.i.i89, %tobool3.not.i.i.i88
  br i1 %spec.select.i.i.i90, label %do.end.i.i.i92, label %if.end25.i.i.i97, !prof !200

do.end.i.i.i92:                                   ; preds = %lor.lhs.false.i.i.i91
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i97:                                 ; preds = %lor.lhs.false.i.i.i91
  %32 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %if_ops.i.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i95 = tail call i32 %35(ptr noundef %37, i32 noundef %call.i84, ptr noundef %25, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i95)
  %tobool28.not.i.i.i96 = icmp eq i32 %call27.i.i.i95, 0
  br i1 %tobool28.not.i.i.i96, label %if.end25.i.i.i97.do.body23_crit_edge, label %land.lhs.true.i.i.i100

if.end25.i.i.i97.do.body23_crit_edge:             ; preds = %if.end25.i.i.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

land.lhs.true.i.i.i100:                           ; preds = %if.end25.i.i.i97
  %state.i.i.i98 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %38 = ptrtoint ptr %state.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.i.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp29.not.i.i.i99 = icmp eq i32 %39, 0
  br i1 %cmp29.not.i.i.i99, label %land.lhs.true.i.i.i100.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i101

land.lhs.true.i.i.i100.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i100
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i101:                               ; preds = %land.lhs.true.i.i.i100
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i101, %land.lhs.true.i.i.i100.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i95)
  %cmp.i.i = icmp slt i32 %call27.i.i.i95, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.out_crit_edge, label %wlcore_raw_read.exit.i.i.do.body23_crit_edge

wlcore_raw_read.exit.i.i.do.body23_crit_edge:     ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

wlcore_raw_read.exit.i.i.out_crit_edge:           ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body23:                                        ; preds = %wlcore_raw_read.exit.i.i.do.body23_crit_edge, %if.end25.i.i.i97.do.body23_crit_edge
  %40 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer_32.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %45 = load i32, ptr @wl12xx_debug_level, align 4
  %and24 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end51_crit_edge, label %do.body33, !prof !198

do.body23.do.end51_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

do.body33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_pre_upload.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_pre_upload, %if.then45)) #14
          to label %do.end51 [label %if.then45], !srcloc !199

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl12xx_pre_upload.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.58, i32 noundef %44) #14
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body33, %do.body23.do.end51_crit_edge
  %call.i102 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3167760) #14
  %46 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_32.i.i, align 4
  %48 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i.i.i, align 4
  %50 = and i32 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i105 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i105, label %lor.lhs.false.i.i.i109, label %do.end51.out_crit_edge

do.end51.out_crit_edge:                           ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i109:                           ; preds = %do.end51
  %51 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i.i.i, align 4
  %53 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool3.not.i.i.i106 = icmp ne i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i102)
  %cmp.i.i.i107 = icmp ne i32 %call.i102, 131068
  %spec.select.i.i.i108 = and i1 %cmp.i.i.i107, %tobool3.not.i.i.i106
  br i1 %spec.select.i.i.i108, label %do.end.i.i.i110, label %if.end25.i.i.i115, !prof !200

do.end.i.i.i110:                                  ; preds = %lor.lhs.false.i.i.i109
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i115:                                ; preds = %lor.lhs.false.i.i.i109
  %54 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %if_ops.i.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i113 = tail call i32 %57(ptr noundef %59, i32 noundef %call.i102, ptr noundef %47, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i113)
  %tobool28.not.i.i.i114 = icmp eq i32 %call27.i.i.i113, 0
  br i1 %tobool28.not.i.i.i114, label %if.end25.i.i.i115.if.end55_crit_edge, label %land.lhs.true.i.i.i118

if.end25.i.i.i115.if.end55_crit_edge:             ; preds = %if.end25.i.i.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true.i.i.i118:                           ; preds = %if.end25.i.i.i115
  %state.i.i.i116 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %60 = ptrtoint ptr %state.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state.i.i.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp29.not.i.i.i117 = icmp eq i32 %61, 0
  br i1 %cmp29.not.i.i.i117, label %land.lhs.true.i.i.i118.wlcore_raw_read.exit.i.i121_crit_edge, label %if.then30.i.i.i119

land.lhs.true.i.i.i118.wlcore_raw_read.exit.i.i121_crit_edge: ; preds = %land.lhs.true.i.i.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i121

if.then30.i.i.i119:                               ; preds = %land.lhs.true.i.i.i118
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i121

wlcore_raw_read.exit.i.i121:                      ; preds = %if.then30.i.i.i119, %land.lhs.true.i.i.i118.wlcore_raw_read.exit.i.i121_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i113)
  %cmp.i.i120 = icmp slt i32 %call27.i.i.i113, 0
  br i1 %cmp.i.i120, label %wlcore_raw_read.exit.i.i121.out_crit_edge, label %wlcore_raw_read.exit.i.i121.if.end55_crit_edge

wlcore_raw_read.exit.i.i121.if.end55_crit_edge:   ; preds = %wlcore_raw_read.exit.i.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

wlcore_raw_read.exit.i.i121.out_crit_edge:        ; preds = %wlcore_raw_read.exit.i.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end55:                                         ; preds = %wlcore_raw_read.exit.i.i121.if.end55_crit_edge, %if.end25.i.i.i115.if.end55_crit_edge
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %62 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84082961, i32 %63)
  %cmp56 = icmp eq i32 %63, 84082961
  br i1 %cmp56, label %if.then57, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then57:                                        ; preds = %if.end55
  %call58 = tail call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 3348, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then57.out_crit_edge, label %if.then57.if.end62_crit_edge

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then57.out_crit_edge:                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  %call63 = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 100, ptr noundef nonnull %polarity)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.out_crit_edge, label %if.end66

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end66:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %polarity to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %polarity, align 2
  %66 = and i16 %65, -3
  store i16 %66, ptr %polarity, align 2
  %call69 = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 100, i16 noundef zeroext %66)
  br label %out

out:                                              ; preds = %if.end66, %if.end62.out_crit_edge, %if.then57.out_crit_edge, %wlcore_raw_read.exit.i.i121.out_crit_edge, %do.end.i.i.i110, %do.end51.out_crit_edge, %wlcore_raw_read.exit.i.i.out_crit_edge, %do.end.i.i.i92, %if.end18.out_crit_edge, %wlcore_write32.exit.out_crit_edge, %do.end.i.i.i, %do.end15.out_crit_edge
  %ret.0 = phi i32 [ %call27.i.i.i, %wlcore_write32.exit.out_crit_edge ], [ %call58, %if.then57.out_crit_edge ], [ %call63, %if.end62.out_crit_edge ], [ %call69, %if.end66 ], [ -5, %do.end.i.i.i ], [ -5, %do.end15.out_crit_edge ], [ -5, %if.end18.out_crit_edge ], [ -5, %do.end.i.i.i92 ], [ %call27.i.i.i95, %wlcore_raw_read.exit.i.i.out_crit_edge ], [ -5, %do.end51.out_crit_edge ], [ -5, %do.end.i.i.i110 ], [ %call27.i.i.i113, %wlcore_raw_read.exit.i.i121.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %polarity) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_boot_upload_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_boot_run_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl127x_boot_clk(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  %val58 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 125
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %hw_pg_ver = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 27
  %2 = ptrtoint ptr %hw_pg_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_pg_ver, align 8
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp.not = icmp eq i8 %4, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks, align 8
  %or = or i32 %6, 1
  store i32 %or, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ref_clock = getelementptr inbounds %struct.wl12xx_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ref_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_clock, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %8, label %if.end.cleanup110_crit_edge [
    i32 3, label %if.end.if.then31_crit_edge
    i32 5, label %if.end.if.then31_crit_edge205
    i32 1, label %if.end.if.then31_crit_edge206
    i32 0, label %if.else57
    i32 2, label %if.end.if.then31.fold.split_crit_edge
    i32 4, label %if.end.if.then31.fold.split_crit_edge207
  ]

if.end.if.then31.fold.split_crit_edge207:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.fold.split

if.end.if.then31.fold.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31.fold.split

if.end.if.then31_crit_edge206:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31

if.end.if.then31_crit_edge205:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31

if.end.cleanup110_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

if.then31.fold.split:                             ; preds = %if.end.if.then31.fold.split_crit_edge, %if.end.if.then31.fold.split_crit_edge207
  br label %if.then31

if.then31:                                        ; preds = %if.then31.fold.split, %if.end.if.then31_crit_edge, %if.end.if.then31_crit_edge205, %if.end.if.then31_crit_edge206
  %clk.0188 = phi i32 [ 5, %if.end.if.then31_crit_edge ], [ 5, %if.end.if.then31_crit_edge205 ], [ 5, %if.end.if.then31_crit_edge206 ], [ 3, %if.then31.fold.split ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #14
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val, align 2, !annotation !201
  %call = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 1096, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32 = icmp slt i32 %call, 0
  br i1 %cmp32, label %if.then31.cleanup.thread_crit_edge, label %if.end35

if.then31.cleanup.thread_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end35:                                         ; preds = %if.then31
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val, align 2
  %13 = and i16 %12, -385
  store i16 %13, ptr %val, align 2
  %call39 = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 1096, i16 noundef zeroext %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end35.cleanup.thread_crit_edge, label %if.end43

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end43:                                         ; preds = %if.end35
  %call44 = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 3252, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.cleanup.thread_crit_edge, label %if.end48

if.end43.cleanup.thread_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end48:                                         ; preds = %if.end43
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  %16 = or i16 %15, -16384
  store i16 %16, ptr %val, align 2
  %call52 = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 3252, i16 noundef zeroext %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end48.cleanup.thread_crit_edge, label %cleanup

if.end48.cleanup.thread_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end48.cleanup.thread_crit_edge, %if.end43.cleanup.thread_crit_edge, %if.end35.cleanup.thread_crit_edge, %if.then31.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call44, %if.end43.cleanup.thread_crit_edge ], [ %call39, %if.end35.cleanup.thread_crit_edge ], [ %call, %if.then31.cleanup.thread_crit_edge ], [ %call52, %if.end48.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #14
  br label %cleanup110

cleanup:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #14
  br label %if.end78

if.else57:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val58) #14
  %17 = ptrtoint ptr %val58 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val58, align 2, !annotation !201
  %call59 = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 3250, ptr noundef nonnull %val58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.else57.cleanup75.thread_crit_edge, label %if.end63

if.else57.cleanup75.thread_crit_edge:             ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75.thread

if.end63:                                         ; preds = %if.else57
  %18 = ptrtoint ptr %val58 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val58, align 2
  %20 = or i16 %19, 1792
  store i16 %20, ptr %val58, align 2
  %call70 = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 3250, i16 noundef zeroext %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end63.cleanup75.thread_crit_edge, label %cleanup75

if.end63.cleanup75.thread_crit_edge:              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup75.thread

cleanup75.thread:                                 ; preds = %if.end63.cleanup75.thread_crit_edge, %if.else57.cleanup75.thread_crit_edge
  %ret.1.ph = phi i32 [ %call59, %if.else57.cleanup75.thread_crit_edge ], [ %call70, %if.end63.cleanup75.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val58) #14
  br label %cleanup110

cleanup75:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val58) #14
  br label %if.end78

if.end78:                                         ; preds = %cleanup75, %cleanup
  %clk.0187 = phi i32 [ 3, %cleanup75 ], [ %clk.0188, %cleanup ]
  %call.i = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3170368) #14
  %21 = call i32 @llvm.bswap.i32(i32 %clk.0187) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %22 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_32.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %23, align 4
  %25 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %26 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i.i, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end78.cleanup110_crit_edge

if.end78.cleanup110_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

lor.lhs.false.i.i.i:                              ; preds = %if.end78
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.i.i.i = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup110

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %32 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = call i32 %35(ptr noundef %37, i32 noundef %call.i, ptr noundef %25, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end83_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end83_crit_edge:                ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %38 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp29.not.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp80 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp80, label %wlcore_write32.exit.cleanup110_crit_edge, label %wlcore_write32.exit.if.end83_crit_edge

wlcore_write32.exit.if.end83_crit_edge:           ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

wlcore_write32.exit.cleanup110_crit_edge:         ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

if.end83:                                         ; preds = %wlcore_write32.exit.if.end83_crit_edge, %if.end25.i.i.i.if.end83_crit_edge
  %call.i145 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3170368) #14
  %40 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer_32.i.i, align 4
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i.i.i, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i148 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i148, label %lor.lhs.false.i.i.i152, label %if.end83.cleanup110_crit_edge

if.end83.cleanup110_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

lor.lhs.false.i.i.i152:                           ; preds = %if.end83
  %45 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i.i, align 4
  %47 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.not.i.i.i149 = icmp ne i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i145)
  %cmp.i.i.i150 = icmp ne i32 %call.i145, 131068
  %spec.select.i.i.i151 = and i1 %cmp.i.i.i150, %tobool3.not.i.i.i149
  br i1 %spec.select.i.i.i151, label %do.end.i.i.i153, label %if.end25.i.i.i158, !prof !200

do.end.i.i.i153:                                  ; preds = %lor.lhs.false.i.i.i152
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %cleanup110

if.end25.i.i.i158:                                ; preds = %lor.lhs.false.i.i.i152
  %48 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %if_ops.i.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i156 = call i32 %51(ptr noundef %53, i32 noundef %call.i145, ptr noundef %41, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i156)
  %tobool28.not.i.i.i157 = icmp eq i32 %call27.i.i.i156, 0
  br i1 %tobool28.not.i.i.i157, label %if.end25.i.i.i158.do.body_crit_edge, label %land.lhs.true.i.i.i161

if.end25.i.i.i158.do.body_crit_edge:              ; preds = %if.end25.i.i.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true.i.i.i161:                           ; preds = %if.end25.i.i.i158
  %state.i.i.i159 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %54 = ptrtoint ptr %state.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i.i.i159, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp29.not.i.i.i160 = icmp eq i32 %55, 0
  br i1 %cmp29.not.i.i.i160, label %land.lhs.true.i.i.i161.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i162

land.lhs.true.i.i.i161.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i161
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i162:                               ; preds = %land.lhs.true.i.i.i161
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i162, %land.lhs.true.i.i.i161.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i156)
  %cmp.i.i = icmp slt i32 %call27.i.i.i156, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.cleanup110_crit_edge, label %wlcore_raw_read.exit.i.i.do.body_crit_edge

wlcore_raw_read.exit.i.i.do.body_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

wlcore_raw_read.exit.i.i.cleanup110_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

do.body:                                          ; preds = %wlcore_raw_read.exit.i.i.do.body_crit_edge, %if.end25.i.i.i158.do.body_crit_edge
  %56 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer_32.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %61 = load i32, ptr @wl12xx_debug_level, align 4
  %and89 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool.not = icmp eq i32 %and89, 0
  br i1 %tobool.not, label %do.body.do.end106_crit_edge, label %do.body93, !prof !198

do.body.do.end106_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end106

do.body93:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl127x_boot_clk.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl127x_boot_clk, %if.then102)) #14
          to label %do.end106 [label %if.then102], !srcloc !199

if.then102:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl127x_boot_clk.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.52, i32 noundef %60) #14
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body93, %do.body.do.end106_crit_edge
  %or108 = or i32 %60, 1023
  %call.i163 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3170312) #14
  %62 = call i32 @llvm.bswap.i32(i32 %or108) #14
  %63 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer_32.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %64, align 4
  %66 = load ptr, ptr %buffer_32.i.i, align 4
  %67 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags.i.i.i, align 4
  %69 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i166 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i.i166, label %lor.lhs.false.i.i.i170, label %do.end106.cleanup110_crit_edge

do.end106.cleanup110_crit_edge:                   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

lor.lhs.false.i.i.i170:                           ; preds = %do.end106
  %70 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags.i.i.i, align 4
  %72 = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool3.not.i.i.i167 = icmp ne i32 %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i163)
  %cmp.i.i.i168 = icmp ne i32 %call.i163, 131068
  %spec.select.i.i.i169 = and i1 %cmp.i.i.i168, %tobool3.not.i.i.i167
  br i1 %spec.select.i.i.i169, label %do.end.i.i.i171, label %if.end25.i.i.i177, !prof !200

do.end.i.i.i171:                                  ; preds = %lor.lhs.false.i.i.i170
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup110

if.end25.i.i.i177:                                ; preds = %lor.lhs.false.i.i.i170
  %73 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i173 = getelementptr inbounds %struct.wl1271_if_operations, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write.i.i.i173, align 4
  %77 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i175 = call i32 %76(ptr noundef %78, i32 noundef %call.i163, ptr noundef %66, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i175)
  %tobool28.not.i.i.i176 = icmp eq i32 %call27.i.i.i175, 0
  br i1 %tobool28.not.i.i.i176, label %if.end25.i.i.i177.cleanup110_crit_edge, label %land.lhs.true.i.i.i180

if.end25.i.i.i177.cleanup110_crit_edge:           ; preds = %if.end25.i.i.i177
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

land.lhs.true.i.i.i180:                           ; preds = %if.end25.i.i.i177
  %state.i.i.i178 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %79 = ptrtoint ptr %state.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state.i.i.i178, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp29.not.i.i.i179 = icmp eq i32 %80, 0
  br i1 %cmp29.not.i.i.i179, label %land.lhs.true.i.i.i180.cleanup110_crit_edge, label %if.then30.i.i.i181

land.lhs.true.i.i.i180.cleanup110_crit_edge:      ; preds = %land.lhs.true.i.i.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

if.then30.i.i.i181:                               ; preds = %land.lhs.true.i.i.i180
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %cleanup110

cleanup110:                                       ; preds = %if.then30.i.i.i181, %land.lhs.true.i.i.i180.cleanup110_crit_edge, %if.end25.i.i.i177.cleanup110_crit_edge, %do.end.i.i.i171, %do.end106.cleanup110_crit_edge, %wlcore_raw_read.exit.i.i.cleanup110_crit_edge, %do.end.i.i.i153, %if.end83.cleanup110_crit_edge, %wlcore_write32.exit.cleanup110_crit_edge, %do.end.i.i.i, %if.end78.cleanup110_crit_edge, %cleanup75.thread, %cleanup.thread, %if.end.cleanup110_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup110_crit_edge ], [ %call27.i.i.i, %wlcore_write32.exit.cleanup110_crit_edge ], [ %ret.0.ph, %cleanup.thread ], [ %ret.1.ph, %cleanup75.thread ], [ -5, %do.end.i.i.i171 ], [ -5, %do.end106.cleanup110_crit_edge ], [ %call27.i.i.i175, %if.then30.i.i.i181 ], [ %call27.i.i.i175, %land.lhs.true.i.i.i180.cleanup110_crit_edge ], [ 0, %if.end25.i.i.i177.cleanup110_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %if.end78.cleanup110_crit_edge ], [ -5, %if.end83.cleanup110_crit_edge ], [ -5, %do.end.i.i.i153 ], [ %call27.i.i.i156, %wlcore_raw_read.exit.i.i.cleanup110_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_set_partition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_boot_soft_reset(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i48 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3145728) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %0 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_32.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554432, ptr %1, align 4
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %entry
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i48)
  %cmp.i.i.i = icmp ne i32 %call.i48, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i48, ptr noundef %3, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end_crit_edge:                  ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp, label %wlcore_write32.exit.cleanup_crit_edge, label %wlcore_write32.exit.if.end_crit_edge

wlcore_write32.exit.if.end_crit_edge:             ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

wlcore_write32.exit.cleanup_crit_edge:            ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %wlcore_write32.exit.if.end_crit_edge, %if.end25.i.i.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 100
  %add = add i32 %spec.select.i, %18
  %call.i49124 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3145728) #14
  %19 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer_32.i.i, align 4
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i.i, align 4
  %23 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i52125 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i52125, label %lor.lhs.false.i.i.i56.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i56.lr.ph:                      ; preds = %if.end
  %state.i.i.i63 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  br label %lor.lhs.false.i.i.i56

lor.lhs.false.i.i.i56:                            ; preds = %if.end34.lor.lhs.false.i.i.i56_crit_edge, %lor.lhs.false.i.i.i56.lr.ph
  %24 = phi ptr [ %20, %lor.lhs.false.i.i.i56.lr.ph ], [ %45, %if.end34.lor.lhs.false.i.i.i56_crit_edge ]
  %call.i49126 = phi i32 [ %call.i49124, %lor.lhs.false.i.i.i56.lr.ph ], [ %call.i49, %if.end34.lor.lhs.false.i.i.i56_crit_edge ]
  %25 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i.i, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i.i.i53 = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i49126)
  %cmp.i.i.i54 = icmp ne i32 %call.i49126, 131068
  %spec.select.i.i.i55 = and i1 %cmp.i.i.i54, %tobool3.not.i.i.i53
  br i1 %spec.select.i.i.i55, label %do.end.i.i.i57, label %if.end25.i.i.i62, !prof !200

do.end.i.i.i57:                                   ; preds = %lor.lhs.false.i.i.i56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i62:                                 ; preds = %lor.lhs.false.i.i.i56
  %28 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %if_ops.i.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i60 = tail call i32 %31(ptr noundef %33, i32 noundef %call.i49126, ptr noundef %24, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i60)
  %tobool28.not.i.i.i61 = icmp eq i32 %call27.i.i.i60, 0
  br i1 %tobool28.not.i.i.i61, label %if.end25.i.i.i62.do.body_crit_edge, label %land.lhs.true.i.i.i65

if.end25.i.i.i62.do.body_crit_edge:               ; preds = %if.end25.i.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true.i.i.i65:                            ; preds = %if.end25.i.i.i62
  %34 = ptrtoint ptr %state.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i.i.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp29.not.i.i.i64 = icmp eq i32 %35, 0
  br i1 %cmp29.not.i.i.i64, label %land.lhs.true.i.i.i65.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i66

land.lhs.true.i.i.i65.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i66:                                ; preds = %land.lhs.true.i.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i66, %land.lhs.true.i.i.i65.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i60)
  %cmp.i.i = icmp slt i32 %call27.i.i.i60, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i.do.body_crit_edge

wlcore_raw_read.exit.i.i.do.body_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

wlcore_raw_read.exit.i.i.cleanup_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %wlcore_raw_read.exit.i.i.do.body_crit_edge, %if.end25.i.i.i62.do.body_crit_edge
  %36 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer_32.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %41 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end22_crit_edge, label %do.body9, !prof !198

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_boot_soft_reset.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_boot_soft_reset, %if.then18)) #14
          to label %do.end22 [label %if.then18], !srcloc !199

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_boot_soft_reset.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.54, i32 noundef %40) #14
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body9, %do.body.do.end22_crit_edge
  %and23 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %while.end, label %if.end26

if.end26:                                         ; preds = %do.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #17
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #14
  %call.i49 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3145728) #14
  %44 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer_32.i.i, align 4
  %46 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i.i.i, align 4
  %48 = and i32 %47, 8192
  %tobool.not.i.i.i52 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i.i52, label %if.end34.lor.lhs.false.i.i.i56_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34.lor.lhs.false.i.i.i56_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i.i56

while.end:                                        ; preds = %do.end22
  %call.i67 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3167312) #14
  %49 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer_32.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %50, align 4
  %52 = load ptr, ptr %buffer_32.i.i, align 4
  %53 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i.i, align 4
  %55 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i70 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i70, label %lor.lhs.false.i.i.i74, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i74:                            ; preds = %while.end
  %56 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i.i.i, align 4
  %58 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool3.not.i.i.i71 = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i67)
  %cmp.i.i.i72 = icmp ne i32 %call.i67, 131068
  %spec.select.i.i.i73 = and i1 %cmp.i.i.i72, %tobool3.not.i.i.i71
  br i1 %spec.select.i.i.i73, label %do.end.i.i.i75, label %if.end25.i.i.i81, !prof !200

do.end.i.i.i75:                                   ; preds = %lor.lhs.false.i.i.i74
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i81:                                 ; preds = %lor.lhs.false.i.i.i74
  %59 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i77 = getelementptr inbounds %struct.wl1271_if_operations, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write.i.i.i77, align 4
  %63 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i79 = tail call i32 %62(ptr noundef %64, i32 noundef %call.i67, ptr noundef %52, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i79)
  %tobool28.not.i.i.i80 = icmp eq i32 %call27.i.i.i79, 0
  br i1 %tobool28.not.i.i.i80, label %if.end25.i.i.i81.if.end38_crit_edge, label %land.lhs.true.i.i.i84

if.end25.i.i.i81.if.end38_crit_edge:              ; preds = %if.end25.i.i.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.lhs.true.i.i.i84:                            ; preds = %if.end25.i.i.i81
  %65 = ptrtoint ptr %state.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i.i.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp29.not.i.i.i83 = icmp eq i32 %66, 0
  br i1 %cmp29.not.i.i.i83, label %land.lhs.true.i.i.i84.wlcore_write32.exit87_crit_edge, label %if.then30.i.i.i85

land.lhs.true.i.i.i84.wlcore_write32.exit87_crit_edge: ; preds = %land.lhs.true.i.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit87

if.then30.i.i.i85:                                ; preds = %land.lhs.true.i.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit87

wlcore_write32.exit87:                            ; preds = %if.then30.i.i.i85, %land.lhs.true.i.i.i84.wlcore_write32.exit87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i79)
  %cmp36 = icmp slt i32 %call27.i.i.i79, 0
  br i1 %cmp36, label %wlcore_write32.exit87.cleanup_crit_edge, label %wlcore_write32.exit87.if.end38_crit_edge

wlcore_write32.exit87.if.end38_crit_edge:         ; preds = %wlcore_write32.exit87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

wlcore_write32.exit87.cleanup_crit_edge:          ; preds = %wlcore_write32.exit87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %wlcore_write32.exit87.if.end38_crit_edge, %if.end25.i.i.i81.if.end38_crit_edge
  %call.i88 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148184) #14
  %67 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer_32.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -65536, ptr %68, align 4
  %70 = load ptr, ptr %buffer_32.i.i, align 4
  %71 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags.i.i.i, align 4
  %73 = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i.i91 = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i.i91, label %lor.lhs.false.i.i.i95, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i95:                            ; preds = %if.end38
  %74 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i.i.i, align 4
  %76 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool3.not.i.i.i92 = icmp ne i32 %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i88)
  %cmp.i.i.i93 = icmp ne i32 %call.i88, 131068
  %spec.select.i.i.i94 = and i1 %cmp.i.i.i93, %tobool3.not.i.i.i92
  br i1 %spec.select.i.i.i94, label %do.end.i.i.i96, label %if.end25.i.i.i102, !prof !200

do.end.i.i.i96:                                   ; preds = %lor.lhs.false.i.i.i95
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i102:                                ; preds = %lor.lhs.false.i.i.i95
  %77 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i98 = getelementptr inbounds %struct.wl1271_if_operations, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write.i.i.i98, align 4
  %81 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i100 = tail call i32 %80(ptr noundef %82, i32 noundef %call.i88, ptr noundef %70, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i100)
  %tobool28.not.i.i.i101 = icmp eq i32 %call27.i.i.i100, 0
  br i1 %tobool28.not.i.i.i101, label %if.end25.i.i.i102.cleanup_crit_edge, label %land.lhs.true.i.i.i105

if.end25.i.i.i102.cleanup_crit_edge:              ; preds = %if.end25.i.i.i102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i.i.i105:                           ; preds = %if.end25.i.i.i102
  %83 = ptrtoint ptr %state.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state.i.i.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp29.not.i.i.i104 = icmp eq i32 %84, 0
  br i1 %cmp29.not.i.i.i104, label %land.lhs.true.i.i.i105.cleanup_crit_edge, label %if.then30.i.i.i106

land.lhs.true.i.i.i105.cleanup_crit_edge:         ; preds = %land.lhs.true.i.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30.i.i.i106:                               ; preds = %land.lhs.true.i.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then30.i.i.i106, %land.lhs.true.i.i.i105.cleanup_crit_edge, %if.end25.i.i.i102.cleanup_crit_edge, %do.end.i.i.i96, %if.end38.cleanup_crit_edge, %wlcore_write32.exit87.cleanup_crit_edge, %do.end.i.i.i75, %while.end.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end31, %wlcore_raw_read.exit.i.i.cleanup_crit_edge, %do.end.i.i.i57, %if.end.cleanup_crit_edge, %wlcore_write32.exit.cleanup_crit_edge, %do.end.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end31 ], [ %call27.i.i.i, %wlcore_write32.exit.cleanup_crit_edge ], [ %call27.i.i.i79, %wlcore_write32.exit87.cleanup_crit_edge ], [ -5, %do.end.i.i.i96 ], [ -5, %if.end38.cleanup_crit_edge ], [ %call27.i.i.i100, %if.then30.i.i.i106 ], [ %call27.i.i.i100, %land.lhs.true.i.i.i105.cleanup_crit_edge ], [ 0, %if.end25.i.i.i102.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %entry.cleanup_crit_edge ], [ -5, %do.end.i.i.i57 ], [ -5, %do.end.i.i.i75 ], [ -5, %while.end.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call27.i.i.i60, %wlcore_raw_read.exit.i.i.cleanup_crit_edge ], [ -5, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl128x_switch_tcxo_to_fref(ptr noundef %wl) unnamed_addr #2 align 64 {
entry:
  %spare_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %spare_reg) #14
  %0 = ptrtoint ptr %spare_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %spare_reg, align 2, !annotation !201
  %call = call fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef 8992, ptr noundef nonnull %spare_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %spare_reg to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %spare_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp1 = icmp eq i16 %2, -1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = or i16 %2, 104
  %4 = ptrtoint ptr %spare_reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %spare_reg, align 2
  %call7 = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 8992, i16 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = call fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef 8704, i16 noundef zeroext 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %while.body.preheader

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.preheader:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #14
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %while.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spare_reg) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl12xx_top_reg_read(ptr noundef %wl, i32 noundef %addr, ptr noundef writeonly %out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %addr, 1
  %add = add nsw i32 %shr, 196608
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148212) #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %add) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %1 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer_32.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %2, align 4
  %4 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %5 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i.i, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %entry
  %8 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i.i.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %11 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %14(ptr noundef %16, i32 noundef %call.i, ptr noundef %4, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end_crit_edge:                  ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %17 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29.not.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp, label %wlcore_write32.exit.cleanup_crit_edge, label %wlcore_write32.exit.if.end_crit_edge

wlcore_write32.exit.if.end_crit_edge:             ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

wlcore_write32.exit.cleanup_crit_edge:            ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %wlcore_write32.exit.if.end_crit_edge, %if.end25.i.i.i.if.end_crit_edge
  %call.i42 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148224) #14
  %19 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer_32.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 33554432, ptr %20, align 4
  %22 = load ptr, ptr %buffer_32.i.i, align 4
  %23 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i.i.i, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i45 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i45, label %lor.lhs.false.i.i.i49, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i49:                            ; preds = %if.end
  %26 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i.i, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i.i.i46 = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i42)
  %cmp.i.i.i47 = icmp ne i32 %call.i42, 131068
  %spec.select.i.i.i48 = and i1 %cmp.i.i.i47, %tobool3.not.i.i.i46
  br i1 %spec.select.i.i.i48, label %do.end.i.i.i50, label %if.end25.i.i.i56, !prof !200

do.end.i.i.i50:                                   ; preds = %lor.lhs.false.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i56:                                 ; preds = %lor.lhs.false.i.i.i49
  %29 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i52 = getelementptr inbounds %struct.wl1271_if_operations, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.i.i52, align 4
  %33 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i54 = tail call i32 %32(ptr noundef %34, i32 noundef %call.i42, ptr noundef %22, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i54)
  %tobool28.not.i.i.i55 = icmp eq i32 %call27.i.i.i54, 0
  br i1 %tobool28.not.i.i.i55, label %if.end25.i.i.i56.do.body.preheader_crit_edge, label %land.lhs.true.i.i.i59

if.end25.i.i.i56.do.body.preheader_crit_edge:     ; preds = %if.end25.i.i.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.preheader

land.lhs.true.i.i.i59:                            ; preds = %if.end25.i.i.i56
  %state.i.i.i57 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %35 = ptrtoint ptr %state.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i.i.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp29.not.i.i.i58 = icmp eq i32 %36, 0
  br i1 %cmp29.not.i.i.i58, label %land.lhs.true.i.i.i59.wlcore_write32.exit62_crit_edge, label %if.then30.i.i.i60

land.lhs.true.i.i.i59.wlcore_write32.exit62_crit_edge: ; preds = %land.lhs.true.i.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit62

if.then30.i.i.i60:                                ; preds = %land.lhs.true.i.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit62

wlcore_write32.exit62:                            ; preds = %if.then30.i.i.i60, %land.lhs.true.i.i.i59.wlcore_write32.exit62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i54)
  %cmp2 = icmp slt i32 %call27.i.i.i54, 0
  br i1 %cmp2, label %wlcore_write32.exit62.cleanup_crit_edge, label %wlcore_write32.exit62.do.body.preheader_crit_edge

wlcore_write32.exit62.do.body.preheader_crit_edge: ; preds = %wlcore_write32.exit62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.preheader

wlcore_write32.exit62.cleanup_crit_edge:          ; preds = %wlcore_write32.exit62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.preheader:                                ; preds = %wlcore_write32.exit62.do.body.preheader_crit_edge, %if.end25.i.i.i56.do.body.preheader_crit_edge
  %state.i.i.i77 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %timeout.0 = phi i32 [ %dec, %land.rhs.do.body_crit_edge ], [ 32, %do.body.preheader ]
  %call.i63 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148220) #14
  %37 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer_32.i.i, align 4
  %39 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i.i.i, align 4
  %41 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i66 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i66, label %lor.lhs.false.i.i.i70, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i.i.i70:                            ; preds = %do.body
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i.i.i, align 4
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.i.i.i67 = icmp ne i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i63)
  %cmp.i.i.i68 = icmp ne i32 %call.i63, 131068
  %spec.select.i.i.i69 = and i1 %cmp.i.i.i68, %tobool3.not.i.i.i67
  br i1 %spec.select.i.i.i69, label %do.end.i.i.i71, label %if.end25.i.i.i76, !prof !200

do.end.i.i.i71:                                   ; preds = %lor.lhs.false.i.i.i70
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 70, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end25.i.i.i76:                                 ; preds = %lor.lhs.false.i.i.i70
  %45 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %if_ops.i.i.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i74 = tail call i32 %48(ptr noundef %50, i32 noundef %call.i63, ptr noundef %38, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i74)
  %tobool28.not.i.i.i75 = icmp eq i32 %call27.i.i.i74, 0
  br i1 %tobool28.not.i.i.i75, label %if.end25.i.i.i76.do.cond_crit_edge, label %land.lhs.true.i.i.i79

if.end25.i.i.i76.do.cond_crit_edge:               ; preds = %if.end25.i.i.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond

land.lhs.true.i.i.i79:                            ; preds = %if.end25.i.i.i76
  %51 = ptrtoint ptr %state.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state.i.i.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp29.not.i.i.i78 = icmp eq i32 %52, 0
  br i1 %cmp29.not.i.i.i78, label %land.lhs.true.i.i.i79.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i80

land.lhs.true.i.i.i79.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i80:                                ; preds = %land.lhs.true.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i80, %land.lhs.true.i.i.i79.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i74)
  %cmp.i.i = icmp slt i32 %call27.i.i.i74, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i.do.cond_crit_edge

wlcore_raw_read.exit.i.i.do.cond_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond

wlcore_raw_read.exit.i.i.cleanup_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.cond:                                          ; preds = %wlcore_raw_read.exit.i.i.do.cond_crit_edge, %if.end25.i.i.i76.do.cond_crit_edge
  %53 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer_32.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  %and = and i32 %57, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end16

land.rhs:                                         ; preds = %do.cond
  %dec = add nsw i32 %timeout.0, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %do.end14, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end14:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #17
  br label %cleanup

if.end16:                                         ; preds = %do.cond
  %and17 = and i32 %57, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and17)
  %cmp18.not = icmp eq i32 %and17, 65536
  br i1 %cmp18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #17
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %tobool26.not = icmp eq ptr %out, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i32 %57 to i16
  %58 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv, ptr %out, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %do.end22, %do.end14, %wlcore_raw_read.exit.i.i.cleanup_crit_edge, %do.end.i.i.i71, %do.body.cleanup_crit_edge, %wlcore_write32.exit62.cleanup_crit_edge, %do.end.i.i.i50, %if.end.cleanup_crit_edge, %wlcore_write32.exit.cleanup_crit_edge, %do.end.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22 ], [ -110, %do.end14 ], [ %call27.i.i.i, %wlcore_write32.exit.cleanup_crit_edge ], [ %call27.i.i.i54, %wlcore_write32.exit62.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %entry.cleanup_crit_edge ], [ -5, %do.end.i.i.i50 ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %do.end.i.i.i71 ], [ %call27.i.i.i74, %wlcore_raw_read.exit.i.i.cleanup_crit_edge ], [ -5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl12xx_top_reg_write(ptr noundef %wl, i32 noundef %addr, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %addr, 1
  %add = add nsw i32 %shr, 196608
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148212) #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %add) #14
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %1 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer_32.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %2, align 4
  %4 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %5 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i.i, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %entry
  %8 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i.i.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !200

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %11 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %14(ptr noundef %16, i32 noundef %call.i, ptr noundef %4, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end_crit_edge:                  ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %17 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29.not.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp, label %wlcore_write32.exit.out_crit_edge, label %wlcore_write32.exit.if.end_crit_edge

wlcore_write32.exit.if.end_crit_edge:             ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

wlcore_write32.exit.out_crit_edge:                ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %wlcore_write32.exit.if.end_crit_edge, %if.end25.i.i.i.if.end_crit_edge
  %conv = zext i16 %val to i32
  %call.i16 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148216) #14
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv) #14
  %20 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer_32.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %21, align 4
  %23 = load ptr, ptr %buffer_32.i.i, align 4
  %24 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i.i, align 4
  %26 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i19 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i19, label %lor.lhs.false.i.i.i23, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i23:                            ; preds = %if.end
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i.i.i20 = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i16)
  %cmp.i.i.i21 = icmp ne i32 %call.i16, 131068
  %spec.select.i.i.i22 = and i1 %cmp.i.i.i21, %tobool3.not.i.i.i20
  br i1 %spec.select.i.i.i22, label %do.end.i.i.i24, label %if.end25.i.i.i30, !prof !200

do.end.i.i.i24:                                   ; preds = %lor.lhs.false.i.i.i23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i30:                                 ; preds = %lor.lhs.false.i.i.i23
  %30 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i26 = getelementptr inbounds %struct.wl1271_if_operations, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i.i26, align 4
  %34 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i28 = tail call i32 %33(ptr noundef %35, i32 noundef %call.i16, ptr noundef %23, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i28)
  %tobool28.not.i.i.i29 = icmp eq i32 %call27.i.i.i28, 0
  br i1 %tobool28.not.i.i.i29, label %if.end25.i.i.i30.if.end5_crit_edge, label %land.lhs.true.i.i.i33

if.end25.i.i.i30.if.end5_crit_edge:               ; preds = %if.end25.i.i.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true.i.i.i33:                            ; preds = %if.end25.i.i.i30
  %state.i.i.i31 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %36 = ptrtoint ptr %state.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i.i.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp29.not.i.i.i32 = icmp eq i32 %37, 0
  br i1 %cmp29.not.i.i.i32, label %land.lhs.true.i.i.i33.wlcore_write32.exit36_crit_edge, label %if.then30.i.i.i34

land.lhs.true.i.i.i33.wlcore_write32.exit36_crit_edge: ; preds = %land.lhs.true.i.i.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %wlcore_write32.exit36

if.then30.i.i.i34:                                ; preds = %land.lhs.true.i.i.i33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %wlcore_write32.exit36

wlcore_write32.exit36:                            ; preds = %if.then30.i.i.i34, %land.lhs.true.i.i.i33.wlcore_write32.exit36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i28)
  %cmp2 = icmp slt i32 %call27.i.i.i28, 0
  br i1 %cmp2, label %wlcore_write32.exit36.out_crit_edge, label %wlcore_write32.exit36.if.end5_crit_edge

wlcore_write32.exit36.if.end5_crit_edge:          ; preds = %wlcore_write32.exit36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

wlcore_write32.exit36.out_crit_edge:              ; preds = %wlcore_write32.exit36
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %wlcore_write32.exit36.if.end5_crit_edge, %if.end25.i.i.i30.if.end5_crit_edge
  %call.i37 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef 3148224) #14
  %38 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer_32.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16777216, ptr %39, align 4
  %41 = load ptr, ptr %buffer_32.i.i, align 4
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i.i.i, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i40 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i40, label %lor.lhs.false.i.i.i44, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false.i.i.i44:                            ; preds = %if.end5
  %45 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i.i, align 4
  %47 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.not.i.i.i41 = icmp ne i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i37)
  %cmp.i.i.i42 = icmp ne i32 %call.i37, 131068
  %spec.select.i.i.i43 = and i1 %cmp.i.i.i42, %tobool3.not.i.i.i41
  br i1 %spec.select.i.i.i43, label %do.end.i.i.i45, label %if.end25.i.i.i51, !prof !200

do.end.i.i.i45:                                   ; preds = %lor.lhs.false.i.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef 9, ptr noundef null) #14
  br label %out

if.end25.i.i.i51:                                 ; preds = %lor.lhs.false.i.i.i44
  %48 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i47 = getelementptr inbounds %struct.wl1271_if_operations, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i.i.i47, align 4
  %52 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i49 = tail call i32 %51(ptr noundef %53, i32 noundef %call.i37, ptr noundef %41, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i49)
  %tobool28.not.i.i.i50 = icmp eq i32 %call27.i.i.i49, 0
  br i1 %tobool28.not.i.i.i50, label %if.end25.i.i.i51.out_crit_edge, label %land.lhs.true.i.i.i54

if.end25.i.i.i51.out_crit_edge:                   ; preds = %if.end25.i.i.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true.i.i.i54:                            ; preds = %if.end25.i.i.i51
  %state.i.i.i52 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %54 = ptrtoint ptr %state.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i.i.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp29.not.i.i.i53 = icmp eq i32 %55, 0
  br i1 %cmp29.not.i.i.i53, label %land.lhs.true.i.i.i54.out_crit_edge, label %if.then30.i.i.i55

land.lhs.true.i.i.i54.out_crit_edge:              ; preds = %land.lhs.true.i.i.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then30.i.i.i55:                                ; preds = %land.lhs.true.i.i.i54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #14
  br label %out

out:                                              ; preds = %if.then30.i.i.i55, %land.lhs.true.i.i.i54.out_crit_edge, %if.end25.i.i.i51.out_crit_edge, %do.end.i.i.i45, %if.end5.out_crit_edge, %wlcore_write32.exit36.out_crit_edge, %do.end.i.i.i24, %if.end.out_crit_edge, %wlcore_write32.exit.out_crit_edge, %do.end.i.i.i, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call27.i.i.i, %wlcore_write32.exit.out_crit_edge ], [ %call27.i.i.i28, %wlcore_write32.exit36.out_crit_edge ], [ -5, %do.end.i.i.i45 ], [ -5, %if.end5.out_crit_edge ], [ %call27.i.i.i49, %if.then30.i.i.i55 ], [ %call27.i.i.i49, %land.lhs.true.i.i.i54.out_crit_edge ], [ 0, %if.end25.i.i.i51.out_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %entry.out_crit_edge ], [ -5, %do.end.i.i.i24 ], [ -5, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlcore_disable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_init_mem_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl12xx_acx_mem_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_data_path(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_sleep_auth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_pm_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_calc_packet_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_tx_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl128x_cmd_general_parms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl128x_cmd_radio_parms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_host_if_cfg_bitmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_general_parms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_radio_parms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_cmd_ext_radio_parms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_acx_set_ht_capabilities(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !48, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !116, !118, !119, !120, !122, !124, !125, !127, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !181, !182, !184, !186, !187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__initcall__kmod_wl12xx__361_1952_wl12xx_driver_init6, !1, !"__initcall__kmod_wl12xx__361_1952_wl12xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1952, i32 1}
!2 = !{ptr @__exitcall_wl12xx_driver_exit, !1, !"__exitcall_wl12xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_fref, !4, !"__param_fref", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1954, i32 1}
!5 = !{ptr @__UNIQUE_ID_freftype362, !4, !"__UNIQUE_ID_freftype362", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_fref363, !7, !"__UNIQUE_ID_fref363", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1955, i32 1}
!8 = !{ptr @__param_tcxo, !9, !"__param_tcxo", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1957, i32 1}
!10 = !{ptr @__UNIQUE_ID_tcxotype364, !9, !"__UNIQUE_ID_tcxotype364", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_tcxo365, !12, !"__UNIQUE_ID_tcxo365", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1958, i32 1}
!13 = !{ptr @__UNIQUE_ID_file366, !14, !"__UNIQUE_ID_file366", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1961, i32 1}
!15 = !{ptr @__UNIQUE_ID_license367, !14, !"__UNIQUE_ID_license367", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author368, !17, !"__UNIQUE_ID_author368", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1962, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware369, !19, !"__UNIQUE_ID_firmware369", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1963, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware370, !21, !"__UNIQUE_ID_firmware370", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1964, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware371, !23, !"__UNIQUE_ID_firmware371", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1965, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware372, !25, !"__UNIQUE_ID_firmware372", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1966, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware373, !27, !"__UNIQUE_ID_firmware373", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1967, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware374, !29, !"__UNIQUE_ID_firmware374", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1968, i32 1}
!30 = !{ptr @fref_param, !31, !"fref_param", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 31, i32 14}
!32 = !{ptr @tcxo_param, !33, !"tcxo_param", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 32, i32 14}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1948, i32 11}
!36 = !{ptr @wl12xx_driver, !37, !"wl12xx_driver", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1943, i32 31}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1902, i32 3}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @wl12xx_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @wl12xx_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @wl12xx_ops, !45, !"wl12xx_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1684, i32 26}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1830, i32 4}
!48 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wl12xx_setup._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @wl12xx_setup._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1838, i32 27}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1840, i32 32}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1842, i32 32}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1844, i32 32}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1846, i32 32}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1848, i32 32}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1851, i32 4}
!67 = !{ptr @wl12xx_setup._entry.14, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wl12xx_setup._entry_ptr.16, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1859, i32 4}
!71 = !{ptr @wl12xx_setup._entry.17, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wl12xx_setup._entry_ptr.19, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1873, i32 32}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1875, i32 32}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1877, i32 32}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1879, i32 32}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1882, i32 4}
!83 = !{ptr @wl12xx_setup._entry.24, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wl12xx_setup._entry_ptr.26, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @wl12xx_rtable, !86, !"wl12xx_rtable", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 568, i32 18}
!87 = !{ptr @wl12xx_iface_combinations, !88, !"wl12xx_iface_combinations", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1754, i32 1}
!89 = !{ptr @wl12xx_iface_limits, !90, !"wl12xx_iface_limits", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1740, i32 43}
!91 = !{ptr @wl12xx_band_rate_to_idx, !92, !"wl12xx_band_rate_to_idx", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 458, i32 18}
!93 = !{ptr @wl12xx_rate_to_idx_2ghz, !94, !"wl12xx_rate_to_idx_2ghz", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 398, i32 17}
!95 = !{ptr @wl12xx_rate_to_idx_5ghz, !96, !"wl12xx_rate_to_idx_5ghz", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 428, i32 17}
!97 = !{ptr @wl12xx_ht_cap, !98, !"wl12xx_ht_cap", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1727, i32 36}
!99 = !{ptr @wl12xx_conf, !100, !"wl12xx_conf", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 34, i32 27}
!101 = !{ptr @wl12xx_default_priv_conf, !102, !"wl12xx_default_priv_conf", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 370, i32 32}
!103 = !{ptr @wl12xx_refclock_table, !104, !"wl12xx_refclock_table", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1763, i32 34}
!105 = !{ptr @wl12xx_tcxoclock_table, !106, !"wl12xx_tcxoclock_table", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1773, i32 34}
!107 = !{ptr @.str.29, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 632, i32 3}
!109 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wl12xx_identify_chip._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @wl12xx_identify_chip._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 639, i32 20}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 640, i32 20}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 655, i32 3}
!118 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @wl12xx_identify_chip.__UNIQUE_ID_ddebug348, !117, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 662, i32 21}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 679, i32 3}
!124 = !{ptr @wl12xx_identify_chip.__UNIQUE_ID_ddebug349, !123, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!125 = !{ptr @.str.37, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 681, i32 21}
!127 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 682, i32 20}
!129 = !{ptr @.str.39, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 683, i32 20}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 699, i32 3}
!133 = !{ptr @wl12xx_identify_chip._entry.40, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @wl12xx_identify_chip._entry_ptr.42, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ti/wl12xx/../wlcore/io.h", i32 51, i32 6}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1115, i32 2}
!139 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @wl12xx_pre_boot.__UNIQUE_ID_ddebug352, !138, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!141 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 769, i32 3}
!143 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @wl12xx_top_reg_read._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @wl12xx_top_reg_read._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 775, i32 3}
!148 = !{ptr @wl12xx_top_reg_read._entry.48, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @wl12xx_top_reg_read._entry_ptr.50, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1025, i32 2}
!152 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @wl127x_boot_clk.__UNIQUE_ID_ddebug350, !151, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!154 = !{ptr @.str.53, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1053, i32 3}
!156 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @wl1271_boot_soft_reset.__UNIQUE_ID_ddebug351, !155, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1060, i32 4}
!160 = !{ptr @wl1271_boot_soft_reset._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @wl1271_boot_soft_reset._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1151, i32 2}
!164 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @wl12xx_pre_upload.__UNIQUE_ID_ddebug353, !163, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!166 = !{ptr @.str.58, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1161, i32 2}
!168 = !{ptr @wl12xx_pre_upload.__UNIQUE_ID_ddebug354, !167, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1316, i32 3}
!171 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug355, !170, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1332, i32 3}
!175 = !{ptr @wl12xx_set_tx_desc_data_len.__UNIQUE_ID_ddebug356, !174, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!176 = !{ptr @.str.62, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1494, i32 2}
!178 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wl12xx_mac_in_fuse.__UNIQUE_ID_ddebug357, !177, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!180 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @wl12xx_ptable, !183, !"wl12xx_ptable", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 489, i32 36}
!184 = !{ptr @wl12xx_id_table, !185, !"wl12xx_id_table", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ti/wl12xx/main.c", i32 1937, i32 40}
!186 = !{ptr @__param_str_fref, !4, !"__param_str_fref", i1 false, i1 false}
!187 = !{ptr @__param_str_tcxo, !9, !"__param_str_tcxo", i1 false, i1 false}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i8 0, i8 2}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2149005858, i64 2149005863, i64 2149005876, i64 2149005920, i64 2149005954, i64 2149005975}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{!"auto-init"}
