; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/spi.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wilink_family_data = type { ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.wl12xx_spi_glue = type { ptr, ptr, ptr }
%struct.wlcore_platdev_data = type { ptr, ptr, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
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
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }

@__initcall__kmod_wlcore_spi__384_568_wl1271_spi_driver_init6 = internal global ptr @wl1271_spi_driver_init, section ".initcall6.init", align 4
@wl1271_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @wl1271_probe, ptr @wl1271_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wlcore_spi_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wl1271_spi_driver_exit = internal global ptr @wl1271_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file385 = internal constant [58 x i8] c"wlcore_spi.file=drivers/net/wireless/ti/wlcore/wlcore_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license386 = internal constant [23 x i8] c"wlcore_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author387 = internal constant [49 x i8] c"wlcore_spi.author=Luciano Coelho <coelho@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author388 = internal constant [62 x i8] c"wlcore_spi.author=Juuso Oikarinen <juuso.oikarinen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias389 = internal constant [28 x i8] c"wlcore_spi.alias=spi:wl1271\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wl1271_spi\00", [21 x i8] zeroinitializer }, align 32
@wlcore_spi_of_match_table = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1271\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl127x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1273\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl127x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1281\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl128x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1283\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl128x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1285\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl128x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1807\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1831\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1835\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1837\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@spi_ops = internal global { %struct.wl1271_if_operations, [40 x i8] } { %struct.wl1271_if_operations { ptr @wl12xx_spi_raw_read, ptr @wl12xx_spi_raw_write, ptr @wl12xx_spi_reset, ptr @wl12xx_spi_init, ptr @wl12xx_spi_set_power, ptr @wl12xx_spi_set_block_size }, [40 x i8] zeroinitializer }, align 32
@wl1271_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't allocate glue\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl1271_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wlcore/spi.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr = internal global ptr @wl1271_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vwlan\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get regulator\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't get device tree parameters (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.10 = internal global ptr @wl1271_probe._entry.8, section ".printk_index", align 4
@wl1271_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_setup failed\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.13 = internal global ptr @wl1271_probe._entry.11, section ".printk_index", align 4
@wl1271_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't allocate platform_device\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.16 = internal global ptr @wl1271_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@wl1271_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 525, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add resources\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.20 = internal global ptr @wl1271_probe._entry.18, section ".printk_index", align 4
@wl1271_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't add platform data\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.23 = internal global ptr @wl1271_probe._entry.21, section ".printk_index", align 4
@wl1271_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't register platform device\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.26 = internal global ptr @wl1271_probe._entry.24, section ".printk_index", align 4
@wl12xx_spi_read_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SPI read busy-word timeout!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_spi_read_busy\00", [43 x i8] zeroinitializer }, align 32
@wl12xx_spi_read_busy._entry_ptr = internal global ptr @wl12xx_spi_read_busy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wl12xx_spi_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not allocate cmd for spi reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl12xx_spi_reset\00", [47 x i8] zeroinitializer }, align 32
@wl12xx_spi_reset._entry_ptr = internal global ptr @wl12xx_spi_reset._entry, section ".printk_index", align 4
@wl12xx_spi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not allocate cmd for spi init\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl12xx_spi_init\00", [16 x i8] zeroinitializer }, align 32
@wl12xx_spi_init._entry_ptr = internal global ptr @wl12xx_spi_init._entry, section ".printk_index", align 4
@wl12xx_spi_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Power enable failure\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_spi_set_power\00", [43 x i8] zeroinitializer }, align 32
@wl12xx_spi_set_power._entry_ptr = internal global ptr @wl12xx_spi_set_power._entry, section ".printk_index", align 4
@wl12xx_spi_set_power._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Power disable failure\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_spi_set_power._entry_ptr.37 = internal global ptr @wl12xx_spi_set_power._entry.35, section ".printk_index", align 4
@wlcore_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 449, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"selected chip family is %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wlcore_probe_of\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wlcore_probe_of._entry_ptr = internal global ptr @wlcore_probe_of._entry, section ".printk_index", align 4
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock-xtal\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ref-clock-frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcxo-clock-frequency\00", [43 x i8] zeroinitializer }, align 32
@wl127x_data = internal constant { %struct.wilink_family_data, [20 x i8] } { %struct.wilink_family_data { ptr @.str.44, ptr @.str.45, ptr null }, [20 x i8] zeroinitializer }, align 32
@wl128x_data = internal constant { %struct.wilink_family_data, [20 x i8] } { %struct.wilink_family_data { ptr @.str.46, ptr @.str.47, ptr null }, [20 x i8] zeroinitializer }, align 32
@wl18xx_data = internal constant { %struct.wilink_family_data, [20 x i8] } { %struct.wilink_family_data { ptr @.str.48, ptr @.str.49, ptr @.str.50 }, [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl127x\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl127x-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl128x\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl128x-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl1271-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti-connectivity/wl18xx-conf.bin\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"wl1271_spi_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 558, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 560, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"wlcore_spi_of_match_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 415, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [8 x i8] c"spi_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 406, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 478, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 490, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 493, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 497, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 504, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 511, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 521, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 525, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 532, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 538, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 227, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 99, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 127, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 384, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 388, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 448, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 451, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 455, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 457, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"wl127x_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 68, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"wl128x_data\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 73, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"wl18xx_data\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 78, i32 40 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 69, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 70, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 74, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 75, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 79, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 81, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [40 x i8] c"../drivers/net/wireless/ti/wlcore/spi.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 80, i32 14 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias389, ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_file385, ptr @__UNIQUE_ID_license386, ptr @__exitcall_wl1271_spi_driver_exit, ptr @__initcall__kmod_wlcore_spi__384_568_wl1271_spi_driver_init6, ptr @wl1271_probe._entry, ptr @wl1271_probe._entry.11, ptr @wl1271_probe._entry.14, ptr @wl1271_probe._entry.18, ptr @wl1271_probe._entry.21, ptr @wl1271_probe._entry.24, ptr @wl1271_probe._entry.8, ptr @wl1271_probe._entry_ptr, ptr @wl1271_probe._entry_ptr.10, ptr @wl1271_probe._entry_ptr.13, ptr @wl1271_probe._entry_ptr.16, ptr @wl1271_probe._entry_ptr.20, ptr @wl1271_probe._entry_ptr.23, ptr @wl1271_probe._entry_ptr.26, ptr @wl1271_spi_driver_exit, ptr @wl12xx_spi_init._entry, ptr @wl12xx_spi_init._entry_ptr, ptr @wl12xx_spi_read_busy._entry, ptr @wl12xx_spi_read_busy._entry_ptr, ptr @wl12xx_spi_reset._entry, ptr @wl12xx_spi_reset._entry_ptr, ptr @wl12xx_spi_set_power._entry, ptr @wl12xx_spi_set_power._entry.35, ptr @wl12xx_spi_set_power._entry_ptr, ptr @wl12xx_spi_set_power._entry_ptr.37, ptr @wlcore_probe_of._entry, ptr @wlcore_probe_of._entry_ptr, ptr @wl1271_spi_driver, ptr @.str, ptr @wlcore_spi_of_match_table, ptr @spi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @wl127x_data, ptr @wl128x_data, ptr @wl18xx_data, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_spi_of_match_table to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_spi_read_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_spi_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_spi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_spi_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_spi_set_power._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl127x_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl128x_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wl1271_spi_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl1271_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wl1271_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_probe(ptr noundef %spi) #2 align 64 {
entry:
  %res = alloca [1 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @spi_ops, ptr %call.i, align 4
  %call.i126 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 12, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i126, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i126 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %call.i126, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i126, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %bits_per_word, align 1
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.6) #8
  %reg = getelementptr inbounds %struct.wl12xx_spi_glue, ptr %call.i126, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call.i126 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i126, align 4
  %9 = ptrtoint ptr %call10 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %9, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call.i127 = tail call ptr @of_match_node(ptr noundef nonnull @wlcore_spi_of_match_table, ptr noundef %11) #8
  %tobool.not.i = icmp eq ptr %call.i127, null
  br i1 %tobool.not.i, label %do.end24, label %if.end.i

if.end.i:                                         ; preds = %if.end18
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i127, i32 0, i32 3
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %family.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %family.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %family.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.38, ptr noundef %16) #11
  %call3.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.41, ptr noundef null) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end26_crit_edge, label %if.then5.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ref_clock_xtal.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %ref_clock_xtal.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ref_clock_xtal.i, align 4
  br label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call.i126 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef -19) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then5.i, %if.end.i.if.end26_crit_edge
  %ref_clock_freq.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef %ref_clock_freq.i, i32 noundef 1, i32 noundef 0) #8
  %tcxo_clock_freq.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 4
  %call.i.i1.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef %tcxo_clock_freq.i, i32 noundef 1, i32 noundef 0) #8
  %call27 = tail call i32 @spi_setup(ptr noundef %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call.i126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %family.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call34 = tail call ptr @platform_device_alloc(ptr noundef %25, i32 noundef -2) #8
  %core = getelementptr inbounds %struct.wl12xx_spi_glue, ptr %call.i126, i32 0, i32 1
  %26 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call34, ptr %core, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call.i126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %parent = getelementptr inbounds %struct.platform_device, ptr %call34, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spi, ptr %parent, align 8
  %30 = getelementptr inbounds i8, ptr %res, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 28)
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %34 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %res, align 4
  %call.i128 = tail call ptr @irq_get_irq_data(i32 noundef %33) #8
  %tobool.not.i129 = icmp eq ptr %call.i128, null
  br i1 %tobool.not.i129, label %if.end42.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

if.end42.irq_get_trigger_type.exit_crit_edge:     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i128, i32 0, i32 3
  %35 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and.i.i = and i32 %38, 15
  %phi.bo = or i32 %and.i.i, 1024
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %if.end42.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 1024, %if.end42.irq_get_trigger_type.exit_crit_edge ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond.i, ptr %1, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.17, ptr %0, align 4
  %41 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core, align 4
  %call53 = call i32 @platform_device_add_resources(ptr noundef %42, ptr noundef nonnull %res, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %irq_get_trigger_type.exit.out_dev_put_crit_edge

irq_get_trigger_type.exit.out_dev_put_crit_edge:  ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dev_put

if.end60:                                         ; preds = %irq_get_trigger_type.exit
  %43 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core, align 4
  %call62 = call i32 @platform_device_add_data(ptr noundef %44, ptr noundef nonnull %call.i, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %if.end60.out_dev_put_crit_edge

if.end60.out_dev_put_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dev_put

if.end69:                                         ; preds = %if.end60
  %45 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core, align 4
  %call71 = call i32 @platform_device_add(ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end69.cleanup_crit_edge, label %if.end69.out_dev_put_crit_edge

if.end69.out_dev_put_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_dev_put

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_dev_put:                                      ; preds = %if.end69.out_dev_put_crit_edge, %if.end60.out_dev_put_crit_edge, %irq_get_trigger_type.exit.out_dev_put_crit_edge
  %.str.25.sink = phi ptr [ @.str.19, %irq_get_trigger_type.exit.out_dev_put_crit_edge ], [ @.str.22, %if.end60.out_dev_put_crit_edge ], [ @.str.25, %if.end69.out_dev_put_crit_edge ]
  %ret.0 = phi i32 [ %call53, %irq_get_trigger_type.exit.out_dev_put_crit_edge ], [ %call62, %if.end60.out_dev_put_crit_edge ], [ %call71, %if.end69.out_dev_put_crit_edge ]
  %47 = ptrtoint ptr %call.i126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i126, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull %.str.25.sink) #11
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 4
  call void @platform_device_put(ptr noundef %50) #8
  br label %cleanup

cleanup:                                          ; preds = %out_dev_put, %if.end69.cleanup_crit_edge, %do.end40, %do.end31, %do.end24, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then13 ], [ -19, %do.end24 ], [ %call27, %do.end31 ], [ %ret.0, %out_dev_put ], [ -12, %do.end40 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.wl12xx_spi_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_spi_raw_read(ptr nocapture noundef readonly %child, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed) #2 align 64 {
entry:
  %t.i = alloca [1 x %struct.spi_transfer], align 4
  %m.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i76 = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i76 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i76, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not95 = icmp eq i32 %len, 0
  br i1 %cmp.not95, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %buffer_cmd = getelementptr inbounds %struct.wl1271, ptr %5, i32 0, i32 89
  %buffer_busyword = getelementptr inbounds %struct.wl1271, ptr %5, i32 0, i32 90
  %storemerge.v = select i1 %fixed, i32 1610612736, i32 1073741824
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %len14 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %cs_change16 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 7
  %transfer_list.i77 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %prev3.i.i.i80 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %7 = getelementptr inbounds i8, ptr %m.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 7
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %rx_buf32 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %t, i32 4
  br label %while.body

while.body:                                       ; preds = %spi_message_add_tail.exit91.while.body_crit_edge, %while.body.lr.ph
  %addr.addr.099 = phi i32 [ %addr, %while.body.lr.ph ], [ %spec.select, %spi_message_add_tail.exit91.while.body_crit_edge ]
  %len.addr.098 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %spi_message_add_tail.exit91.while.body_crit_edge ]
  %buf.addr.096 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %spi_message_add_tail.exit91.while.body_crit_edge ]
  %9 = call i32 @llvm.umin.i32(i32 %len.addr.098, i32 4092)
  %shl = shl nuw nsw i32 %9, 17
  %and4 = and i32 %addr.addr.099, 131071
  %or3 = or i32 %shl, %and4
  %storemerge = or i32 %or3, %storemerge.v
  %10 = ptrtoint ptr %buffer_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %buffer_cmd, align 4
  %11 = call ptr @memset(ptr %6, i32 0, i32 40)
  %12 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %m, ptr %m, align 4
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %16 = call ptr @memset(ptr %8, i32 0, i32 188)
  %17 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buffer_cmd, ptr %t, align 4
  %18 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %len9, align 4
  %19 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 64, ptr %cs_change, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.spi_message_add_tail.exit_crit_edge

while.body.spi_message_add_tail.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m, ptr %transfer_list.i, align 4
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %while.body.spi_message_add_tail.exit_crit_edge
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer_busyword, ptr %rx_buf, align 4
  %25 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %len14, align 4
  %26 = ptrtoint ptr %cs_change16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load17 = load i8, ptr %cs_change16, align 4
  %bf.set19 = or i8 %bf.load17, 64
  store i8 %bf.set19, ptr %cs_change16, align 4
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i79 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i77, ptr noundef %28, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i79, label %if.end.i.i.i81, label %spi_message_add_tail.exit.spi_message_add_tail.exit82_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit82_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit82

if.end.i.i.i81:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i77, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i77 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m, ptr %transfer_list.i77, align 4
  %31 = ptrtoint ptr %prev3.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i80, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i77, ptr %28, align 4
  br label %spi_message_add_tail.exit82

spi_message_add_tail.exit82:                      ; preds = %if.end.i.i.i81, %spi_message_add_tail.exit.spi_message_add_tail.exit82_crit_edge
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %call22 = call i32 @spi_sync(ptr noundef %34, ptr noundef nonnull %m) #8
  %35 = ptrtoint ptr %buffer_busyword to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffer_busyword, align 4
  %and24 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %spi_message_add_tail.exit82.if.end29_crit_edge

spi_message_add_tail.exit82.if.end29_crit_edge:   ; preds = %spi_message_add_tail.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %spi_message_add_tail.exit82
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i, align 4
  %41 = ptrtoint ptr %driver_data.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i76, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %43 = call ptr @memset(ptr %t.i, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #8
  %44 = call ptr @memset(ptr %m.i, i32 255, i32 56)
  %buffer_busyword.i = getelementptr inbounds %struct.wl1271, ptr %42, i32 0, i32 90
  br label %while.cond.i

while.cond.i:                                     ; preds = %spi_message_add_tail.exit.i.while.cond.i_crit_edge, %land.lhs.true
  %num_busy_bytes.0.i = phi i32 [ 1000, %land.lhs.true ], [ %dec.i, %spi_message_add_tail.exit.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_busy_bytes.0.i)
  %tobool.not.i = icmp eq i32 %num_busy_bytes.0.i, 0
  br i1 %tobool.not.i, label %if.then28, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %num_busy_bytes.0.i, -1
  %45 = call ptr @memset(ptr %7, i32 0, i32 40)
  %46 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %m.i, ptr %m.i, align 4
  %47 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %48 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %49 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %50 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %51 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buffer_busyword.i, ptr %rx_buf.i, align 4
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %len.i, align 4
  %53 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 64, ptr %cs_change.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.spi_message_add_tail.exit.i_crit_edge

while.body.i.spi_message_add_tail.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %55 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %56 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %57 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %while.body.i.spi_message_add_tail.exit.i_crit_edge
  %58 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %40, align 4
  %call7.i = call i32 @spi_sync(ptr noundef %59, ptr noundef nonnull %m.i) #8
  %60 = ptrtoint ptr %buffer_busyword.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buffer_busyword.i, align 4
  %and.i = and i32 %61, 1
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %spi_message_add_tail.exit.i.while.cond.i_crit_edge, label %wl12xx_spi_read_busy.exit.thread

spi_message_add_tail.exit.i.while.cond.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

wl12xx_spi_read_busy.exit.thread:                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  br label %if.end29

if.then28:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.27) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  %64 = call ptr @memset(ptr %buf.addr.096, i32 0, i32 %9)
  br label %cleanup

if.end29:                                         ; preds = %wl12xx_spi_read_busy.exit.thread, %spi_message_add_tail.exit82.if.end29_crit_edge
  %65 = call ptr @memset(ptr %6, i32 0, i32 40)
  %66 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %m, ptr %m, align 4
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %m, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %69 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %70 = call ptr @memset(ptr %t, i32 0, i32 192)
  %71 = ptrtoint ptr %rx_buf32 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.addr.096, ptr %rx_buf32, align 4
  %72 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %9, ptr %len9, align 4
  %73 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 64, ptr %cs_change, align 4
  %call.i.i.i88 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i88, label %if.end.i.i.i90, label %if.end29.spi_message_add_tail.exit91_crit_edge

if.end29.spi_message_add_tail.exit91_crit_edge:   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit91

if.end.i.i.i90:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %m, ptr %transfer_list.i, align 4
  %76 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %77 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit91

spi_message_add_tail.exit91:                      ; preds = %if.end.i.i.i90, %if.end29.spi_message_add_tail.exit91_crit_edge
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %call43 = call i32 @spi_sync(ptr noundef %79, ptr noundef nonnull %m) #8
  %add = select i1 %fixed, i32 0, i32 %9
  %spec.select = add i32 %add, %addr.addr.099
  %add.ptr = getelementptr i8, ptr %buf.addr.096, i32 %9
  %sub = sub i32 %len.addr.098, %9
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %spi_message_add_tail.exit91.cleanup_crit_edge, label %spi_message_add_tail.exit91.while.body_crit_edge

spi_message_add_tail.exit91.while.body_crit_edge: ; preds = %spi_message_add_tail.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

spi_message_add_tail.exit91.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit91.cleanup_crit_edge, %if.then28, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_spi_raw_write(ptr nocapture noundef readonly %child, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %addr)
  %cmp = icmp eq i32 %addr, 131068
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @__wl12xx_spi_raw_write(ptr noundef %child, i32 noundef 131068, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @__wl12xx_spi_raw_write(ptr noundef %child, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl12xx_spi_reset(ptr nocapture noundef readonly %child) #2 align 64 {
entry:
  %t = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %t, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = getelementptr inbounds i8, ptr %m, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %call4 = call i32 @spi_sync(ptr noundef %23, ptr noundef nonnull %m) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl12xx_spi_init(ptr nocapture noundef readonly %child) #2 align 64 {
entry:
  %t = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  %4 = call ptr @memset(ptr %m, i32 255, i32 56)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds i8, ptr %t, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = getelementptr inbounds i8, ptr %m, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %call7.i.i, align 8
  %arrayidx4 = getelementptr i8, ptr %call7.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %call7.i.i, i32 2
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 3
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %call7.i.i, i32 4
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 5
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr i8, ptr %call7.i.i, i32 6
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 121, ptr %arrayidx11, align 2
  %call16 = call zeroext i8 @crc7_be(i8 noundef zeroext 0, ptr noundef %arrayidx5, i32 noundef 5) #8
  %25 = or i8 %call16, 1
  %arrayidx20 = getelementptr i8, ptr %call7.i.i, i32 7
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx20, align 1
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call7.i.i, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx7, align 4
  %35 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %36 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %38, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i, ptr %38, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %call24 = call i32 @spi_sync(ptr noundef %44, ptr noundef nonnull %m) #8
  %mode = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode, align 8
  %xor = xor i32 %46, 4
  store i32 %xor, ptr %mode, align 8
  %47 = getelementptr inbounds i8, ptr %m, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %m, ptr %m, align 4
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %m, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %52 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %call7.i.i, align 8
  %54 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %t, align 4
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %len, align 4
  %call.i.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i70, label %if.end.i.i.i72, label %spi_message_add_tail.exit.spi_message_add_tail.exit73_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit73_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit73

if.end.i.i.i72:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %57 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %m, ptr %prev3.i.i.i71, align 4
  %59 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit73

spi_message_add_tail.exit73:                      ; preds = %if.end.i.i.i72, %spi_message_add_tail.exit.spi_message_add_tail.exit73_crit_edge
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %call33 = call i32 @spi_sync(ptr noundef %61, ptr noundef nonnull %m) #8
  %62 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mode, align 8
  %xor35 = xor i32 %63, 4
  store i32 %xor35, ptr %mode, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit73, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_spi_set_power(ptr noundef %child, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %reg = getelementptr inbounds %struct.wl12xx_spi_glue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 378, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  br i1 %enable, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %call24 = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end39_crit_edge, label %if.then22.if.end39.sink.split_crit_edge

if.then22.if.end39.sink.split_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.sink.split

if.then22.if.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else:                                          ; preds = %if.end
  %call32 = tail call i32 @regulator_disable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else.if.end39_crit_edge, label %if.else.if.end39.sink.split_crit_edge

if.else.if.end39.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.sink.split

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39.sink.split:                              ; preds = %if.else.if.end39.sink.split_crit_edge, %if.then22.if.end39.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.33, %if.then22.if.end39.sink.split_crit_edge ], [ @.str.36, %if.else.if.end39.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call24, %if.then22.if.end39.sink.split_crit_edge ], [ %call32, %if.else.if.end39.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %child, ptr noundef nonnull %.str.36.sink) #11
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else.if.end39_crit_edge, %if.then22.if.end39_crit_edge
  %ret.0 = phi i32 [ 0, %if.then22.if.end39_crit_edge ], [ 0, %if.else.if.end39_crit_edge ], [ %ret.0.ph, %if.end39.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wl12xx_spi_set_block_size(ptr nocapture noundef %child, i32 noundef %blksz) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__wl12xx_spi_raw_write(ptr nocapture noundef readonly %child, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed) unnamed_addr #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %commands = alloca [14 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %commands) #8
  %4 = call ptr @memset(ptr %commands, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2688) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 53248, i32 %len)
  %cmp = icmp ugt i32 %len, 53248
  br i1 %cmp, label %do.end, label %if.end.if.end16_crit_edge, !prof !123

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 314, i32 noundef 9, ptr noundef null) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp23.not91 = icmp eq i32 %len, 0
  br i1 %cmp23.not91, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %spi_message_add_tail.exit90.while.body_crit_edge, %if.end16.while.body_crit_edge
  %addr.addr.097 = phi i32 [ %addr.addr.1, %spi_message_add_tail.exit90.while.body_crit_edge ], [ %addr, %if.end16.while.body_crit_edge ]
  %i.095 = phi i32 [ %inc41, %spi_message_add_tail.exit90.while.body_crit_edge ], [ 0, %if.end16.while.body_crit_edge ]
  %cmd.094 = phi ptr [ %incdec.ptr, %spi_message_add_tail.exit90.while.body_crit_edge ], [ %commands, %if.end16.while.body_crit_edge ]
  %buf.addr.093 = phi ptr [ %add.ptr, %spi_message_add_tail.exit90.while.body_crit_edge ], [ %buf, %if.end16.while.body_crit_edge ]
  %len.addr.092 = phi i32 [ %sub, %spi_message_add_tail.exit90.while.body_crit_edge ], [ %len, %if.end16.while.body_crit_edge ]
  %12 = call i32 @llvm.umin.i32(i32 %len.addr.092, i32 4092)
  %shl = shl nuw nsw i32 %12, 17
  %and27 = and i32 %addr.addr.097, 131071
  %or28 = or i32 %and27, %shl
  %or31 = or i32 %or28, 536870912
  %storemerge = select i1 %fixed, i32 %or31, i32 %or28
  %13 = ptrtoint ptr %cmd.094 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %cmd.094, align 4
  %arrayidx33 = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %i.095
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd.094, ptr %arrayidx33, align 8
  %len35 = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %i.095, i32 2
  %15 = ptrtoint ptr %len35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %len35, align 8
  %inc = or i32 %i.095, 1
  %transfer_list.i = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %i.095, i32 18
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %17, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.spi_message_add_tail.exit_crit_edge

while.body.spi_message_add_tail.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %i.095, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %17, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %while.body.spi_message_add_tail.exit_crit_edge
  %arrayidx37 = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %inc
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.addr.093, ptr %arrayidx37, align 8
  %len40 = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %inc, i32 2
  %23 = ptrtoint ptr %len40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %12, ptr %len40, align 8
  %inc41 = add i32 %i.095, 2
  %transfer_list.i85 = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %inc, i32 18
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i87 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i85, ptr noundef %25, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i87, label %if.end.i.i.i89, label %spi_message_add_tail.exit.spi_message_add_tail.exit90_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit90_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit90

if.end.i.i.i89:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i85, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i85 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %m, ptr %transfer_list.i85, align 4
  %prev3.i.i.i88 = getelementptr %struct.spi_transfer, ptr %call7.i.i, i32 %inc, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i88, align 8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i85, ptr %25, align 4
  br label %spi_message_add_tail.exit90

spi_message_add_tail.exit90:                      ; preds = %if.end.i.i.i89, %spi_message_add_tail.exit.spi_message_add_tail.exit90_crit_edge
  %add = select i1 %fixed, i32 0, i32 %12
  %addr.addr.1 = add i32 %addr.addr.097, %add
  %add.ptr = getelementptr i8, ptr %buf.addr.093, i32 %12
  %sub = sub i32 %len.addr.092, %12
  %incdec.ptr = getelementptr i32, ptr %cmd.094, i32 1
  %cmp23.not = icmp eq i32 %sub, 0
  br i1 %cmp23.not, label %spi_message_add_tail.exit90.while.end_crit_edge, label %spi_message_add_tail.exit90.while.body_crit_edge

spi_message_add_tail.exit90.while.body_crit_edge: ; preds = %spi_message_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

spi_message_add_tail.exit90.while.end_crit_edge:  ; preds = %spi_message_add_tail.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %spi_message_add_tail.exit90.while.end_crit_edge, %if.end16.while.end_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call47 = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %m) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %commands) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc7_be(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_wlcore_spi__384_568_wl1271_spi_driver_init6, !1, !"__initcall__kmod_wlcore_spi__384_568_wl1271_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 568, i32 1}
!2 = !{ptr @__exitcall_wl1271_spi_driver_exit, !1, !"__exitcall_wl1271_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file385, !4, !"__UNIQUE_ID_file385", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 569, i32 1}
!5 = !{ptr @__UNIQUE_ID_license386, !4, !"__UNIQUE_ID_license386", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author387, !7, !"__UNIQUE_ID_author387", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 570, i32 1}
!8 = !{ptr @__UNIQUE_ID_author388, !9, !"__UNIQUE_ID_author388", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 571, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias389, !11, !"__UNIQUE_ID_alias389", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 572, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 560, i32 12}
!14 = !{ptr @wl1271_spi_driver, !15, !"wl1271_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 558, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 478, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wl1271_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @wl1271_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 490, i32 44}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 493, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 497, i32 3}
!30 = !{ptr @wl1271_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wl1271_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 504, i32 3}
!34 = !{ptr @wl1271_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wl1271_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 511, i32 3}
!38 = !{ptr @wl1271_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wl1271_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 521, i32 16}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 525, i32 3}
!44 = !{ptr @wl1271_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wl1271_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 532, i32 3}
!48 = !{ptr @wl1271_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wl1271_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 538, i32 3}
!52 = !{ptr @wl1271_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wl1271_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @spi_ops, !55, !"spi_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 406, i32 36}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 227, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @wl12xx_spi_read_busy._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @wl12xx_spi_read_busy._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 99, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wl12xx_spi_reset._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @wl12xx_spi_reset._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 127, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wl12xx_spi_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @wl12xx_spi_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 384, i32 4}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wl12xx_spi_set_power._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @wl12xx_spi_set_power._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 388, i32 4}
!78 = !{ptr @wl12xx_spi_set_power._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @wl12xx_spi_set_power._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 448, i32 2}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @wlcore_probe_of._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @wlcore_probe_of._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 451, i32 32}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 455, i32 32}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 457, i32 32}
!92 = !{ptr @wlcore_spi_of_match_table, !93, !"wlcore_spi_of_match_table", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 415, i32 34}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 69, i32 10}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 70, i32 14}
!98 = !{ptr @wl127x_data, !99, !"wl127x_data", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 68, i32 40}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 74, i32 10}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 75, i32 14}
!104 = !{ptr @wl128x_data, !105, !"wl128x_data", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 73, i32 40}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 79, i32 10}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 81, i32 14}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 80, i32 14}
!112 = !{ptr @wl18xx_data, !113, !"wl18xx_data", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wlcore/spi.c", i32 78, i32 40}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"branch_weights", i32 1, i32 2000}
