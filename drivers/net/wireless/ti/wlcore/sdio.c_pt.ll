; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.98 }
%union.anon.98 = type { ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.wilink_family_data = type { ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.wlcore_platdev_data = type { ptr, ptr, i8, i32, i32, i8 }
%struct.wl12xx_sdio_glue = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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

@wl1271_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @wl1271_devices, ptr @wl1271_probe, ptr @wl1271_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1271_sdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_wlcore_sdio__379_456_wl1271_init6 = internal global ptr @wl1271_init, section ".initcall6.init", align 4
@__exitcall_wl1271_exit = internal global ptr @wl1271_exit, section ".exitcall.exit", align 4
@__param_str_dump = internal constant [17 x i8] c"wlcore_sdio.dump\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dump = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump = internal constant %struct.kernel_param { ptr @__param_str_dump, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.98 { ptr @dump } }, section "__param", align 4
@__UNIQUE_ID_dumptype380 = internal constant [31 x i8] c"wlcore_sdio.parmtype=dump:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dump381 = internal constant [52 x i8] c"wlcore_sdio.parm=dump:Enable sdio read/write dumps.\00", section ".modinfo", align 1
@__UNIQUE_ID_file382 = internal constant [60 x i8] c"wlcore_sdio.file=drivers/net/wireless/ti/wlcore/wlcore_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license383 = internal constant [24 x i8] c"wlcore_sdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author384 = internal constant [50 x i8] c"wlcore_sdio.author=Luciano Coelho <coelho@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author385 = internal constant [63 x i8] c"wlcore_sdio.author=Juuso Oikarinen <juuso.oikarinen@nokia.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl1271_sdio\00", [20 x i8] zeroinitializer }, align 32
@wl1271_devices = internal constant { [2 x %struct.sdio_device_id], [40 x i8] } { [2 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 151, i16 16502, i32 0 }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@wl1271_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wl1271_suspend, ptr @wl1271_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdio_ops = internal global { %struct.wl1271_if_operations, [40 x i8] } { %struct.wl1271_if_operations { ptr @wl12xx_sdio_raw_read, ptr @wl12xx_sdio_raw_write, ptr null, ptr null, ptr @wl12xx_sdio_set_power, ptr @wl1271_sdio_set_block_size }, [40 x i8] zeroinitializer }, align 32
@wl1271_probe.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlcore_sdio\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl1271_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wlcore/sdio.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdio PM caps = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl18xx\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl12xx\00", [25 x i8] zeroinitializer }, align 32
@wl1271_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't allocate platform_device\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr = internal global ptr @wl1271_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wakeirq\00", [24 x i8] zeroinitializer }, align 32
@wl1271_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 345, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add resources\0A\00", [43 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.14 = internal global ptr @wl1271_probe._entry.12, section ".printk_index", align 4
@wl1271_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 352, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't add platform data\0A\00", [39 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.17 = internal global ptr @wl1271_probe._entry.15, section ".printk_index", align 4
@wl1271_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 358, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't add platform device\0A\00", [37 x i8] zeroinitializer }, align 32
@wl1271_probe._entry_ptr.20 = internal global ptr @wl1271_probe._entry.18, section ".printk_index", align 4
@wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_sdio_raw_read\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sdio read 52 addr 0x%x, byte 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sdio read 53 addr 0x%x, %zu bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 79, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdio read failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_read._entry_ptr = internal global ptr @wl12xx_sdio_raw_read._entry, section ".printk_index", align 4
@wl12xx_sdio_raw_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017wlcore_sdio: READ from 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_read._entry_ptr.27 = internal global ptr @wl12xx_sdio_raw_read._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wlcore_sdio: READ \00", [45 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017wlcore_sdio: WRITE to 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl12xx_sdio_raw_write\00", [42 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_write._entry_ptr = internal global ptr @wl12xx_sdio_raw_write._entry, section ".printk_index", align 4
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wlcore_sdio: WRITE \00", [44 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sdio write 52 addr 0x%x, byte 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.34, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sdio write 53 addr 0x%x, %zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_write._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 124, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdio write failed (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@wl12xx_sdio_raw_write._entry_ptr.37 = internal global ptr @wl12xx_sdio_raw_write._entry.35, section ".printk_index", align 4
@wl12xx_sdio_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 139, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to get_sync(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl12xx_sdio_power_on\00", [43 x i8] zeroinitializer }, align 32
@wl12xx_sdio_power_on._entry_ptr = internal global ptr @wl12xx_sdio_power_on._entry, section ".printk_index", align 4
@wlcore_sdio_of_match_table = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1271\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl127x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1273\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl127x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1281\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl128x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1283\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl128x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1285\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl128x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1807\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1831\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1835\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wl1837\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wl18xx_data }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@wlcore_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 235, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No irq in platform data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wlcore_probe_of\00", [16 x i8] zeroinitializer }, align 32
@wlcore_probe_of._entry_ptr = internal global ptr @wlcore_probe_of._entry, section ".printk_index", align 4
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ref-clock-frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcxo-clock-frequency\00", [43 x i8] zeroinitializer }, align 32
@wl127x_data = internal constant { %struct.wilink_family_data, [20 x i8] } { %struct.wilink_family_data { ptr @.str.44, ptr @.str.45, ptr null }, [20 x i8] zeroinitializer }, align 32
@wl128x_data = internal constant { %struct.wilink_family_data, [20 x i8] } { %struct.wilink_family_data { ptr @.str.46, ptr @.str.47, ptr null }, [20 x i8] zeroinitializer }, align 32
@wl18xx_data = internal constant { %struct.wilink_family_data, [20 x i8] } { %struct.wilink_family_data { ptr @.str.5, ptr @.str.48, ptr @.str.49 }, [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl127x\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl127x-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl128x\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl128x-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl1271-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti-connectivity/wl18xx-conf.bin\00", [32 x i8] zeroinitializer }, align 32
@wl1271_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 392, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no wilink module was probed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1271_suspend\00", [17 x i8] zeroinitializer }, align 32
@wl1271_suspend._entry_ptr = internal global ptr @wl1271_suspend._entry, section ".printk_index", align 4
@wl1271_suspend.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wl1271 suspend. wow_enabled: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1271_suspend._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.3, i32 405, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't keep power while host is suspended\0A\00", [54 x i8] zeroinitializer }, align 32
@wl1271_suspend._entry_ptr.55 = internal global ptr @wl1271_suspend._entry.53, section ".printk_index", align 4
@wl1271_suspend._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.3, i32 413, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error while trying to keep power\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_suspend._entry_ptr.58 = internal global ptr @wl1271_suspend._entry.56, section ".printk_index", align 4
@wl1271_resume.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl1271_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1271 resume\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"wl1271_sdio_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 434, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 29, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 435, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"wl1271_devices\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 36, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"wl1271_sdio_pm_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 428, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"sdio_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 181, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 296, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 313, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 315, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 319, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 331, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 338, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 345, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 352, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 358, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 64, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 72, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 79, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 82, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 83, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 83, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 101, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 102, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 109, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 112, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 124, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 138, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"wlcore_sdio_of_match_table\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 206, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 235, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 242, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 244, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"wl127x_data\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 190, i32 40 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"wl128x_data\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 195, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"wl18xx_data\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 200, i32 40 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 191, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 192, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 196, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 197, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 203, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 202, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 392, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 396, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 404, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 413, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [41 x i8] c"../drivers/net/wireless/ti/wlcore/sdio.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 423, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author384, ptr @__UNIQUE_ID_author385, ptr @__UNIQUE_ID_dump381, ptr @__UNIQUE_ID_dumptype380, ptr @__UNIQUE_ID_file382, ptr @__UNIQUE_ID_license383, ptr @__exitcall_wl1271_exit, ptr @__initcall__kmod_wlcore_sdio__379_456_wl1271_init6, ptr @__param_dump, ptr @wl1271_exit, ptr @wl1271_probe._entry, ptr @wl1271_probe._entry.12, ptr @wl1271_probe._entry.15, ptr @wl1271_probe._entry.18, ptr @wl1271_probe._entry_ptr, ptr @wl1271_probe._entry_ptr.14, ptr @wl1271_probe._entry_ptr.17, ptr @wl1271_probe._entry_ptr.20, ptr @wl1271_suspend._entry, ptr @wl1271_suspend._entry.53, ptr @wl1271_suspend._entry.56, ptr @wl1271_suspend._entry_ptr, ptr @wl1271_suspend._entry_ptr.55, ptr @wl1271_suspend._entry_ptr.58, ptr @wl12xx_sdio_power_on._entry, ptr @wl12xx_sdio_power_on._entry_ptr, ptr @wl12xx_sdio_raw_read._entry, ptr @wl12xx_sdio_raw_read._entry.25, ptr @wl12xx_sdio_raw_read._entry_ptr, ptr @wl12xx_sdio_raw_read._entry_ptr.27, ptr @wl12xx_sdio_raw_write._entry, ptr @wl12xx_sdio_raw_write._entry.35, ptr @wl12xx_sdio_raw_write._entry_ptr, ptr @wl12xx_sdio_raw_write._entry_ptr.37, ptr @wlcore_probe_of._entry, ptr @wlcore_probe_of._entry_ptr, ptr @wl1271_sdio_driver, ptr @dump, ptr @.str, ptr @wl1271_devices, ptr @wl1271_sdio_pm_ops, ptr @sdio_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @wlcore_sdio_of_match_table, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @wl127x_data, ptr @wl128x_data, ptr @wl18xx_data, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_devices to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_sdio_raw_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_sdio_raw_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_sdio_raw_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_sdio_raw_write._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl12xx_sdio_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_sdio_of_match_table to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl127x_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl128x_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl18xx_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_suspend._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_suspend._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl1271_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sdio_unregister_driver(ptr noundef nonnull @wl1271_sdio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @wl1271_sdio_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %res = alloca [2 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %res) #6
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sdio_ops, ptr %call.i, align 4
  %call.i136 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i136, null
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %3 = ptrtoint ptr %call.i136 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i136, align 4
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 8
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 8
  %or = or i32 %7, 1
  store i32 %or, ptr %quirks, align 8
  %8 = load ptr, ptr %func, align 8
  %quirks11 = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %quirks11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks11, align 8
  %or12 = or i32 %10, 2
  store i32 %or12, ptr %quirks11, align 8
  %of_node.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i137 = tail call ptr @of_match_node(ptr noundef nonnull @wlcore_sdio_of_match_table, ptr noundef %12) #6
  %tobool.not.i = icmp eq ptr %call.i137, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i137, i32 0, i32 3
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %family.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %family.i, align 4
  %call1.i = tail call i32 @irq_of_parse_and_map(ptr noundef %12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %if.end17

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %call5.i = tail call i32 @irq_of_parse_and_map(ptr noundef %12, i32 noundef 1) #6
  %ref_clock_freq.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef %ref_clock_freq.i, i32 noundef 1, i32 noundef 0) #6
  %tcxo_clock_freq.i = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 4
  %call.i.i18.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef %tcxo_clock_freq.i, i32 noundef 1, i32 noundef 0) #6
  %call18 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %func) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_probe.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_probe, %if.then23)) #6
          to label %do.end [label %if.then23], !srcloc !160

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i136 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i136, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1271_probe.__UNIQUE_ID_ddebug376, ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %call18) #6
  br label %do.end

do.end:                                           ; preds = %if.then23, %if.end17
  %and = and i32 %call18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.end.if.end28_crit_edge, label %if.then27

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %pwr_in_suspend = getelementptr inbounds %struct.wlcore_platdev_data, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %pwr_in_suspend to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pwr_in_suspend, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.end.if.end28_crit_edge
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i136, ptr %driver_data.i, align 4
  %usage_count.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i139 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !162
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end28.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end28.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !163
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end28.pm_runtime_put_noidle.exit_crit_edge
  %21 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %func, align 8
  %cccr = getelementptr inbounds %struct.mmc_card, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %cccr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cccr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp32 = icmp eq i32 %24, 4
  %.str.5..str.6 = select i1 %cmp32, ptr @.str.5, ptr @.str.6
  %call35 = tail call ptr @platform_device_alloc(ptr noundef nonnull %.str.5..str.6, i32 noundef -2) #6
  %core = getelementptr inbounds %struct.wl12xx_sdio_glue, ptr %call.i136, i32 0, i32 1
  %25 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call35, ptr %core, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end41, label %if.end43

do.end41:                                         ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call.i136 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i136, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end43:                                         ; preds = %pm_runtime_put_noidle.exit
  %parent = getelementptr inbounds %struct.platform_device, ptr %call35, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %parent, align 8
  %29 = getelementptr inbounds i8, ptr %res, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 60)
  %31 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call1.i, ptr %res, align 4
  %call47 = tail call ptr @irq_get_irq_data(i32 noundef %call1.i) #6
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call47, i32 0, i32 3
  %32 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and.i = and i32 %35, 15
  %or49 = or i32 %and.i, 1024
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or49, ptr %flags, align 4
  %name = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %37 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.10, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp52 = icmp sgt i32 %call5.i, 0
  br i1 %cmp52, label %if.then53, label %if.end43.if.end64_crit_edge

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx54 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call5.i, ptr %arrayidx54, align 4
  %call56 = tail call ptr @irq_get_irq_data(i32 noundef %call5.i) #6
  %common.i140 = getelementptr inbounds %struct.irq_data, ptr %call56, i32 0, i32 3
  %39 = ptrtoint ptr %common.i140 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %common.i140, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and.i141 = and i32 %42, 15
  %or58 = or i32 %and.i141, 1024
  %flags60 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %flags60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or58, ptr %flags60, align 4
  %name62 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %name62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.11, ptr %name62, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then53, %if.end43.if.end64_crit_edge
  %num_irqs.0 = phi i32 [ 2, %if.then53 ], [ 1, %if.end43.if.end64_crit_edge ]
  %45 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core, align 4
  %call67 = call i32 @platform_device_add_resources(ptr noundef %46, ptr noundef nonnull %res, i32 noundef %num_irqs.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %if.end64.out_dev_put_crit_edge

if.end64.out_dev_put_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev_put

if.end74:                                         ; preds = %if.end64
  %47 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %core, align 4
  %call76 = call i32 @platform_device_add_data(ptr noundef %48, ptr noundef nonnull %call.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %if.end74.out_dev_put_crit_edge

if.end74.out_dev_put_crit_edge:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev_put

if.end83:                                         ; preds = %if.end74
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 4
  %call85 = call i32 @platform_device_add(ptr noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.cleanup_crit_edge, label %if.end83.out_dev_put_crit_edge

if.end83.out_dev_put_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev_put

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_dev_put:                                      ; preds = %if.end83.out_dev_put_crit_edge, %if.end74.out_dev_put_crit_edge, %if.end64.out_dev_put_crit_edge
  %.str.19.sink = phi ptr [ @.str.13, %if.end64.out_dev_put_crit_edge ], [ @.str.16, %if.end74.out_dev_put_crit_edge ], [ @.str.19, %if.end83.out_dev_put_crit_edge ]
  %ret.0 = phi i32 [ %call67, %if.end64.out_dev_put_crit_edge ], [ %call76, %if.end74.out_dev_put_crit_edge ], [ %call85, %if.end83.out_dev_put_crit_edge ]
  %51 = ptrtoint ptr %call.i136 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i136, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.19.sink) #9
  %53 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core, align 4
  call void @platform_device_put(ptr noundef %54) #6
  br label %cleanup

cleanup:                                          ; preds = %out_dev_put, %if.end83.cleanup_crit_edge, %do.end41, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %ret.0, %out_dev_put ], [ -12, %do.end41 ], [ -19, %if.end7.cleanup_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1271_remove(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %usage_count.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !164
  %core = getelementptr inbounds %struct.wl12xx_sdio_glue, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  tail call void @platform_device_unregister(ptr noundef %4) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_sdio_raw_read(ptr nocapture noundef readonly %child, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !165
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -8
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %addr)
  %cmp = icmp eq i32 %addr, 131068
  br i1 %cmp, label %if.then, label %if.else, !prof !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call zeroext i8 @sdio_f0_readb(ptr noundef %add.ptr, i32 noundef 131068, ptr noundef nonnull %ret) #6
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call2, ptr %buf, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_sdio_raw_read, %if.then13)) #6
          to label %if.end39 [label %if.then13], !srcloc !160

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug372, ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef 131068, i32 noundef %conv) #6
  br label %if.end39

if.else:                                          ; preds = %entry
  br i1 %fixed, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @sdio_readsb(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %addr, i32 noundef %len) #6
  br label %do.body22

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 @sdio_memcpy_fromio(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %addr, i32 noundef %len) #6
  br label %do.body22

do.body22:                                        ; preds = %if.else19, %if.then17
  %storemerge = phi i32 [ %call20, %if.else19 ], [ %call18, %if.then17 ]
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %ret, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_sdio_raw_read, %if.then34)) #6
          to label %if.end39 [label %if.then34], !srcloc !160

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug373, ptr noundef %14, ptr noundef nonnull @.str.23, i32 noundef %addr, i32 noundef %len) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %do.body22, %if.then13, %if.then
  call void @sdio_release_host(ptr noundef %add.ptr) #6
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool40.not = icmp eq i32 %16, 0
  br i1 %tobool40.not, label %if.end39.if.end76_crit_edge, label %do.end56, !prof !167

if.end39.if.end76_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end56:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 78, i32 noundef 9, ptr noundef null) #6
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24, i32 noundef %20) #9
  br label %if.end76

if.end76:                                         ; preds = %do.end56, %if.end39.if.end76_crit_edge
  %21 = load i8, ptr @dump, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool77.not = icmp eq i8 %21, 0
  br i1 %tobool77.not, label %if.end76.if.end90_crit_edge, label %do.end87, !prof !167

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.end87:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %addr) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false) #6
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %if.end76.if.end90_crit_edge
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_sdio_raw_write(ptr nocapture noundef readonly %child, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fixed) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !165
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -8
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #6
  %7 = load i8, ptr @dump, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %addr) #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %addr)
  %cmp = icmp eq i32 %addr, 131068
  br i1 %cmp, label %if.then11, label %do.body29, !prof !166

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  call void @sdio_f0_writeb(ptr noundef %add.ptr, i8 noundef zeroext %9, i32 noundef 131068, ptr noundef nonnull %ret) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_sdio_raw_write, %if.then23)) #6
          to label %if.end52 [label %if.then23], !srcloc !160

if.then23:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %conv = zext i8 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug374, ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef 131068, i32 noundef %conv) #6
  br label %if.end52

do.body29:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl12xx_sdio_raw_write, %if.then41)) #6
          to label %do.end45 [label %if.then41], !srcloc !160

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug375, ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef %addr, i32 noundef %len) #6
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  br i1 %fixed, label %if.then47, label %if.else49

if.then47:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 @sdio_writesb(ptr noundef %add.ptr, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #6
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call48, ptr %ret, align 4
  br label %if.end52

if.else49:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 @sdio_memcpy_toio(ptr noundef %add.ptr, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #6
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call50, ptr %ret, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then47, %if.then23, %if.then11
  call void @sdio_release_host(ptr noundef %add.ptr) #6
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool53.not = icmp eq i32 %19, 0
  br i1 %tobool53.not, label %if.end52.if.end89_crit_edge, label %do.end69, !prof !167

if.end52.if.end89_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

do.end69:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 123, i32 noundef 9, ptr noundef null) #6
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.36, i32 noundef %23) #9
  br label %if.end89

if.end89:                                         ; preds = %do.end69, %if.end52.if.end89_crit_edge
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl12xx_sdio_set_power(ptr nocapture noundef readonly %child, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 1
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !163
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_put_noidle.exit.i_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %call.i.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sdio_claim_host(ptr noundef %add.ptr.i) #6
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 8
  %call5.i = tail call i32 @mmc_hw_reset(ptr noundef %12) #6
  %call6.i = tail call i32 @sdio_enable_func(ptr noundef %add.ptr.i) #6
  tail call void @sdio_release_host(ptr noundef %add.ptr.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sdio_claim_host(ptr noundef %add.ptr.i) #6
  %call.i = tail call i32 @sdio_disable_func(ptr noundef %add.ptr.i) #6
  tail call void @sdio_release_host(ptr noundef %add.ptr.i) #6
  %dev2.i5 = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 1
  %call.i.i6 = tail call i32 @__pm_runtime_idle(ptr noundef %dev2.i5, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.i, %pm_runtime_put_noidle.exit.i
  %retval.0 = phi i32 [ 0, %if.else ], [ %call.i.i, %pm_runtime_put_noidle.exit.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1271_sdio_set_block_size(ptr nocapture noundef readonly %child, i32 noundef %blksz) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #6
  %call1 = tail call i32 @sdio_set_block_size(ptr noundef %add.ptr, i32 noundef %blksz) #6
  tail call void @sdio_release_host(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %core = getelementptr inbounds %struct.wl12xx_sdio_glue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out.sink.split_crit_edge, label %do.body3

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_suspend.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_suspend, %if.then9)) #6
          to label %do.end13 [label %if.then9], !srcloc !160

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %wow_enabled = getelementptr inbounds %struct.wl1271, ptr %5, i32 0, i32 100
  %6 = ptrtoint ptr %wow_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wow_enabled, align 4, !range !168
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1271_suspend.__UNIQUE_ID_ddebug377, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %8) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body3
  %wow_enabled14 = getelementptr inbounds %struct.wl1271, ptr %5, i32 0, i32 100
  %9 = ptrtoint ptr %wow_enabled14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wow_enabled14, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  br i1 %tobool15.not, label %do.end13.out_crit_edge, label %if.then16

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then16:                                        ; preds = %do.end13
  %call17 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %add.ptr) #6
  %and = and i32 %call17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then16.out.sink.split_crit_edge, label %if.end23

if.then16.out.sink.split_crit_edge:               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end23:                                         ; preds = %if.then16
  %call24 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.out_crit_edge, label %if.end23.out.sink.split_crit_edge

if.end23.out.sink.split_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out.sink.split:                                   ; preds = %if.end23.out.sink.split_crit_edge, %if.then16.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.50, %entry.out.sink.split_crit_edge ], [ @.str.54, %if.then16.out.sink.split_crit_edge ], [ @.str.57, %if.end23.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %entry.out.sink.split_crit_edge ], [ -22, %if.then16.out.sink.split_crit_edge ], [ %call24, %if.end23.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.57.sink) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.end23.out_crit_edge, %do.end13.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end23.out_crit_edge ], [ 0, %do.end13.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1271_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_resume.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !160

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wl1271_resume.__UNIQUE_ID_ddebug378, ptr noundef %dev, ptr noundef nonnull @.str.60) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_wlcore_sdio__379_456_wl1271_init6, !1, !"__initcall__kmod_wlcore_sdio__379_456_wl1271_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 456, i32 1}
!2 = !{ptr @__exitcall_wl1271_exit, !3, !"__exitcall_wl1271_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 457, i32 1}
!4 = !{ptr @__param_dump, !5, !"__param_dump", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 459, i32 1}
!6 = !{ptr @__UNIQUE_ID_dumptype380, !5, !"__UNIQUE_ID_dumptype380", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_dump381, !8, !"__UNIQUE_ID_dump381", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 460, i32 1}
!9 = !{ptr @__UNIQUE_ID_file382, !10, !"__UNIQUE_ID_file382", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 462, i32 1}
!11 = !{ptr @__UNIQUE_ID_license383, !10, !"__UNIQUE_ID_license383", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author384, !13, !"__UNIQUE_ID_author384", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 463, i32 1}
!14 = !{ptr @__UNIQUE_ID_author385, !15, !"__UNIQUE_ID_author385", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 464, i32 1}
!16 = !{ptr @dump, !17, !"dump", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 29, i32 13}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 435, i32 11}
!20 = !{ptr @wl1271_sdio_driver, !21, !"wl1271_sdio_driver", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 434, i32 27}
!22 = !{ptr @wl1271_devices, !23, !"wl1271_devices", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 36, i32 36}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 296, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wl1271_probe.__UNIQUE_ID_ddebug376, !25, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 313, i32 17}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 315, i32 17}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 319, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wl1271_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @wl1271_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 331, i32 16}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 338, i32 17}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 345, i32 3}
!46 = !{ptr @wl1271_probe._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wl1271_probe._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 352, i32 3}
!50 = !{ptr @wl1271_probe._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wl1271_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 358, i32 3}
!54 = !{ptr @wl1271_probe._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wl1271_probe._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sdio_ops, !57, !"sdio_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 181, i32 36}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 64, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug372, !59, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 72, i32 3}
!64 = !{ptr @wl12xx_sdio_raw_read.__UNIQUE_ID_ddebug373, !63, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 79, i32 3}
!67 = !{ptr @wl12xx_sdio_raw_read._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wl12xx_sdio_raw_read._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 82, i32 3}
!71 = !{ptr @wl12xx_sdio_raw_read._entry.25, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wl12xx_sdio_raw_read._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 83, i32 18}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 83, i32 30}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 101, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @wl12xx_sdio_raw_write._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @wl12xx_sdio_raw_write._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 102, i32 30}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 109, i32 3}
!86 = !{ptr @wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug374, !85, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 112, i32 3}
!89 = !{ptr @wl12xx_sdio_raw_write.__UNIQUE_ID_ddebug375, !88, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 124, i32 3}
!92 = !{ptr @wl12xx_sdio_raw_write._entry.35, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @wl12xx_sdio_raw_write._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 138, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @wl12xx_sdio_power_on._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @wl12xx_sdio_power_on._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 235, i32 3}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @wlcore_probe_of._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @wlcore_probe_of._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 242, i32 27}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 244, i32 27}
!108 = !{ptr @wlcore_sdio_of_match_table, !109, !"wlcore_sdio_of_match_table", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 206, i32 34}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 191, i32 10}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 192, i32 14}
!114 = !{ptr @wl127x_data, !115, !"wl127x_data", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 190, i32 40}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 196, i32 10}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 197, i32 14}
!120 = !{ptr @wl128x_data, !121, !"wl128x_data", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 195, i32 40}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 203, i32 14}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 202, i32 14}
!126 = !{ptr @wl18xx_data, !127, !"wl18xx_data", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 200, i32 40}
!128 = !{ptr @wl1271_sdio_pm_ops, !129, !"wl1271_sdio_pm_ops", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 428, i32 32}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 392, i32 3}
!132 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @wl1271_suspend._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @wl1271_suspend._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 396, i32 2}
!137 = !{ptr @wl1271_suspend.__UNIQUE_ID_ddebug377, !136, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 404, i32 4}
!140 = !{ptr @wl1271_suspend._entry.53, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @wl1271_suspend._entry_ptr.55, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 413, i32 4}
!144 = !{ptr @wl1271_suspend._entry.56, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @wl1271_suspend._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ti/wlcore/sdio.c", i32 423, i32 2}
!148 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @wl1271_resume.__UNIQUE_ID_ddebug378, !147, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!150 = !{ptr @__param_str_dump, !5, !"__param_str_dump", i1 false, i1 false}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2148354260, i64 2148354265, i64 2148354278, i64 2148354322, i64 2148354356, i64 2148354377}
!161 = !{i64 2148529081}
!162 = !{i64 1015681, i64 1015706, i64 1015728, i64 1015744, i64 1015756, i64 1015776, i64 1015800, i64 1015816, i64 1015828}
!163 = !{i64 2148529269}
!164 = !{i64 2148529662, i64 2148529688, i64 2148529717, i64 2148529751, i64 2148529782, i64 2148529805}
!165 = !{!"auto-init"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i8 0, i8 2}
