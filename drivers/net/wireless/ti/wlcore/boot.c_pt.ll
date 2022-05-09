; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wlcore/boot.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wlcore/boot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wlcore_boot_upload_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_boot_upload_firmware\09\09\09\09"
module asm "\09.long\09__crc_wlcore_boot_upload_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_boot_upload_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_boot_upload_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_boot_upload_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_boot_upload_nvs\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_boot_upload_nvs\09\09\09\09"
module asm "\09.long\09__crc_wlcore_boot_upload_nvs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_boot_upload_nvs:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_boot_upload_nvs\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_boot_upload_nvs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wlcore_boot_run_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_wlcore_boot_run_firmware\09\09\09\09"
module asm "\09.long\09__crc_wlcore_boot_run_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wlcore_boot_run_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22wlcore_boot_run_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_wlcore_boot_run_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wlcore_platdev_data = type { ptr, ptr, i8, i32, i32, i8 }
%struct.wilink_family_data = type { ptr, ptr, ptr }
%struct.wl1271_nvs_file = type { [468 x i8], %struct.wl1271_ini_general_params, i8, %struct.wl1271_ini_band_params_2, i8, [2 x %struct.anon.138], %struct.wl1271_ini_band_params_5, i8, [2 x %struct.anon.139] }
%struct.wl1271_ini_general_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8] }
%struct.wl1271_ini_band_params_2 = type { i8, i8, [15 x i8] }
%struct.anon.138 = type { %struct.wl1271_ini_fem_params_2, i8 }
%struct.wl1271_ini_fem_params_2 = type <{ i16, i8, i8, [6 x i8], [6 x i8], [6 x i8], [14 x i8], [14 x i8], [6 x i8], [6 x i8], i8, i8, i8 }>
%struct.wl1271_ini_band_params_5 = type { [7 x i8], [7 x i8], [15 x i8] }
%struct.anon.139 = type <{ %struct.wl1271_ini_fem_params_5, i8 }>
%struct.wl1271_ini_fem_params_5 = type { [7 x i16], [7 x i8], [7 x i8], [6 x i8], [6 x i8], [6 x i8], [35 x i8], [6 x i8], [6 x i8], [7 x i8], i8, i8 }
%struct.wl128x_nvs_file = type { [468 x i8], %struct.wl128x_ini_general_params, i8, %struct.wl128x_ini_band_params_2, i8, [2 x %struct.anon.140], %struct.wl128x_ini_band_params_5, i8, [2 x %struct.anon.141] }
%struct.wl128x_ini_general_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, [16 x i8], [16 x i8], [16 x i8] }
%struct.wl128x_ini_band_params_2 = type { i8, [14 x i8], [15 x i8] }
%struct.anon.140 = type { %struct.wl128x_ini_fem_params_2, i8 }
%struct.wl128x_ini_fem_params_2 = type <{ i16, i8, i8, [7 x i8], [7 x i8], [7 x i8], [14 x i8], [14 x i8], [7 x i8], [8 x i8], [14 x i8], [2 x i8], i8, i8, i8 }>
%struct.wl128x_ini_band_params_5 = type { [7 x i8], [35 x i8], [15 x i8] }
%struct.anon.141 = type <{ %struct.wl128x_ini_fem_params_5, i8 }>
%struct.wl128x_ini_fem_params_5 = type { [7 x i16], [7 x i8], [7 x i8], [7 x i8], [7 x i8], [7 x i8], [35 x i8], [7 x i8], [7 x i8], [35 x i8], [14 x i8], [7 x i8], i8, i8 }
%struct.wl1271_static_data = type { [6 x i8], [2 x i8], [20 x i8], i32, [8 x [4 x i8]], [0 x i8] }
%struct.wlcore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@wl12xx_debug_level = external dso_local local_unnamed_addr global i32, align 4
@wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlcore\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wlcore_boot_upload_firmware\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wlcore/boot.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wlcore: firmware chunks to be uploaded: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016wlcore: firmware chunk too long: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_firmware._entry_ptr = internal global ptr @wlcore_boot_upload_firmware._entry, section ".printk_index", align 4
@wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wlcore: chunk %d addr 0x%x len %u\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_wlcore_boot_upload_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_boot_upload_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_boot_upload_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_boot_upload_firmware to i32), ptr @__kstrtab_wlcore_boot_upload_firmware, ptr @__kstrtabns_wlcore_boot_upload_firmware }, section "___ksymtab_gpl+wlcore_boot_upload_firmware", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_nvs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wlcore: ERROR NVS file is needed during boot\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore_boot_upload_nvs\00", [41 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_nvs._entry_ptr = internal global ptr @wlcore_boot_upload_nvs._entry, section ".printk_index", align 4
@wlcore_boot_upload_nvs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wlcore: ERROR %s size is not as expected: %zu != %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_nvs._entry_ptr.11 = internal global ptr @wlcore_boot_upload_nvs._entry.9, section ".printk_index", align 4
@wlcore_boot_upload_nvs._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_nvs._entry_ptr.13 = internal global ptr @wlcore_boot_upload_nvs._entry.12, section ".printk_index", align 4
@wlcore_boot_upload_nvs.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wlcore: nvs burst write 0x%x: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_nvs._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013wlcore: ERROR nvs data is malformed\0A\00", [57 x i8] zeroinitializer }, align 32
@wlcore_boot_upload_nvs._entry_ptr.17 = internal global ptr @wlcore_boot_upload_nvs._entry.15, section ".printk_index", align 4
@__kstrtab_wlcore_boot_upload_nvs = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_boot_upload_nvs = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_boot_upload_nvs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_boot_upload_nvs to i32), ptr @__kstrtab_wlcore_boot_upload_nvs, ptr @__kstrtabns_wlcore_boot_upload_nvs }, section "___ksymtab_gpl+wlcore_boot_upload_nvs", align 4
@wlcore_boot_run_firmware.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlcore_boot_run_firmware\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wlcore: chip id after firmware boot: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wlcore: ERROR chip id doesn't match after firmware boot\0A\00", [37 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry_ptr = internal global ptr @wlcore_boot_run_firmware._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wlcore_boot_run_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013wlcore: ERROR error reading hardware complete init indication\0A\00", [63 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry_ptr.23 = internal global ptr @wlcore_boot_run_firmware._entry.21, section ".printk_index", align 4
@wlcore_boot_run_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013wlcore: ERROR timeout waiting for the hardware to complete initialization\0A\00", [51 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry_ptr.26 = internal global ptr @wlcore_boot_run_firmware._entry.24, section ".printk_index", align 4
@wlcore_boot_run_firmware.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.27, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wlcore: cmd_box_addr 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.28, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wlcore: MBOX ptrs: 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wlcore: ERROR error getting static data\0A\00", [53 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry_ptr.31 = internal global ptr @wlcore_boot_run_firmware._entry.29, section ".printk_index", align 4
@wlcore_boot_run_firmware._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wlcore: ERROR EVENT mask setting failed\0A\00", [53 x i8] zeroinitializer }, align 32
@wlcore_boot_run_firmware._entry_ptr.34 = internal global ptr @wlcore_boot_run_firmware._entry.32, section ".printk_index", align 4
@__kstrtab_wlcore_boot_run_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_wlcore_boot_run_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_wlcore_boot_run_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wlcore_boot_run_firmware to i32), ptr @__kstrtab_wlcore_boot_run_firmware, ptr @__kstrtabns_wlcore_boot_run_firmware }, section "___ksymtab_gpl+wlcore_boot_run_firmware", align 4
@wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wl1271_boot_upload_firmware_chunk\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlcore: starting firmware upload\0A\00", [62 x i8] zeroinitializer }, align 32
@wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wlcore: fw_data_len %zd chunk_size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wl1271_boot_upload_firmware_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wlcore: ERROR firmware length not multiple of four\0A\00", [42 x i8] zeroinitializer }, align 32
@wl1271_boot_upload_firmware_chunk._entry_ptr = internal global ptr @wl1271_boot_upload_firmware_chunk._entry, section ".printk_index", align 4
@wl1271_boot_upload_firmware_chunk._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013wlcore: ERROR allocation for firmware upload chunk failed\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1271_boot_upload_firmware_chunk._entry_ptr.41 = internal global ptr @wl1271_boot_upload_firmware_chunk._entry.39, section ".printk_index", align 4
@wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.42, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wlcore: uploading fw chunk 0x%p to 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.43, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"wlcore: uploading fw last chunk (%zd B) 0x%p to 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wlcore/io.h\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%u.%u.%u.%u.%u\00", [17 x i8] zeroinitializer }, align 32
@wlcore_boot_parse_fw_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014wlcore: WARNING fw version incorrect value\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlcore_boot_parse_fw_ver\00", [39 x i8] zeroinitializer }, align 32
@wlcore_boot_parse_fw_ver._entry_ptr = internal global ptr @wlcore_boot_parse_fw_ver._entry, section ".printk_index", align 4
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"*.\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u.\00", [28 x i8] zeroinitializer }, align 32
@wlcore_validate_fw_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [174 x i8], [50 x i8] } { [174 x i8] c"\013wlcore: ERROR Your WiFi FW version (%u.%u.%u.%u.%u) is invalid.\0APlease use at least FW %s\0AYou can get the latest firmwares at:\0Agit://git.ti.com/wilink8-wlan/wl18xx_fw.git\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlcore_validate_fw_ver\00", [41 x i8] zeroinitializer }, align 32
@wlcore_validate_fw_ver._entry_ptr = internal global ptr @wlcore_validate_fw_ver._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 800, i64 912]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 800, i64 912]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 248, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 257, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 260, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 276, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 284, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 308, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 327, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 380, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 428, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 451, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 454, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 467, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 482, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 492, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 501, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 506, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 518, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 173, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 175, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 179, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 185, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 216, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 229, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [39 x i8] c"../drivers/net/wireless/ti/wlcore/io.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 51, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 50, i32 40 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 56, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 113, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 117, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [41 x i8] c"../drivers/net/wireless/ti/wlcore/boot.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 119, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab_wlcore_boot_run_firmware, ptr @__ksymtab_wlcore_boot_upload_firmware, ptr @__ksymtab_wlcore_boot_upload_nvs, ptr @wl1271_boot_upload_firmware_chunk._entry, ptr @wl1271_boot_upload_firmware_chunk._entry.39, ptr @wl1271_boot_upload_firmware_chunk._entry_ptr, ptr @wl1271_boot_upload_firmware_chunk._entry_ptr.41, ptr @wlcore_boot_parse_fw_ver._entry, ptr @wlcore_boot_parse_fw_ver._entry_ptr, ptr @wlcore_boot_run_firmware._entry, ptr @wlcore_boot_run_firmware._entry.21, ptr @wlcore_boot_run_firmware._entry.24, ptr @wlcore_boot_run_firmware._entry.29, ptr @wlcore_boot_run_firmware._entry.32, ptr @wlcore_boot_run_firmware._entry_ptr, ptr @wlcore_boot_run_firmware._entry_ptr.23, ptr @wlcore_boot_run_firmware._entry_ptr.26, ptr @wlcore_boot_run_firmware._entry_ptr.31, ptr @wlcore_boot_run_firmware._entry_ptr.34, ptr @wlcore_boot_upload_firmware._entry, ptr @wlcore_boot_upload_firmware._entry_ptr, ptr @wlcore_boot_upload_nvs._entry, ptr @wlcore_boot_upload_nvs._entry.12, ptr @wlcore_boot_upload_nvs._entry.15, ptr @wlcore_boot_upload_nvs._entry.9, ptr @wlcore_boot_upload_nvs._entry_ptr, ptr @wlcore_boot_upload_nvs._entry_ptr.11, ptr @wlcore_boot_upload_nvs._entry_ptr.13, ptr @wlcore_boot_upload_nvs._entry_ptr.17, ptr @wlcore_validate_fw_ver._entry, ptr @wlcore_validate_fw_ver._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_upload_nvs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_upload_nvs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_upload_nvs._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_upload_nvs._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_run_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_run_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_run_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_run_firmware._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_run_firmware._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_boot_upload_firmware_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1271_boot_upload_firmware_chunk._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_boot_parse_fw_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlcore_validate_fw_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_boot_upload_firmware(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 23
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %4 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body4, !prof !118

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_boot_upload_firmware, %if.then13)) #9
          to label %do.end16 [label %if.then13], !srcloc !119

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.3, i32 noundef %3) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body4, %entry.do.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool17.not89 = icmp eq i32 %3, 0
  br i1 %tobool17.not89, label %do.end16.cleanup_crit_edge, label %do.end16.while.body_crit_edge

do.end16.while.body_crit_edge:                    ; preds = %do.end16
  br label %while.body

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %do.end16.while.body_crit_edge
  %dec91.in = phi i32 [ %dec91, %if.end61.while.body_crit_edge ], [ %3, %do.end16.while.body_crit_edge ]
  %fw.090 = phi ptr [ %add.ptr62, %if.end61.while.body_crit_edge ], [ %add.ptr, %do.end16.while.body_crit_edge ]
  %dec91 = add i32 %dec91.in, -1
  %5 = ptrtoint ptr %fw.090 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw.090, align 4
  %add.ptr19 = getelementptr i8, ptr %fw.090, i32 4
  %7 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr19, align 4
  %add.ptr21 = getelementptr i8, ptr %fw.090, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %8)
  %cmp = icmp ugt i32 %8, 300000
  br i1 %cmp, label %do.end25, label %do.body29

do.end25:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %8) #12
  br label %cleanup

do.body29:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %9 = load i32, ptr @wl12xx_debug_level, align 4
  %and30 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.end57_crit_edge, label %do.body39, !prof !118

do.body29.do.end57_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

do.body39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_boot_upload_firmware, %if.then51)) #9
          to label %do.end57 [label %if.then51], !srcloc !119

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.5, i32 noundef %dec91, i32 noundef %6, i32 noundef %8) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then51, %do.body39, %do.body29.do.end57_crit_edge
  %call58 = tail call fastcc i32 @wl1271_boot_upload_firmware_chunk(ptr noundef %wl, ptr noundef %add.ptr21, i32 noundef %8, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end61, label %do.end57.cleanup_crit_edge

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %do.end57
  %add.ptr62 = getelementptr i8, ptr %add.ptr21, i32 %8
  %tobool17.not = icmp eq i32 %dec91, 0
  br i1 %tobool17.not, label %if.end61.cleanup_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end61.cleanup_crit_edge, %do.end57.cleanup_crit_edge, %do.end25, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end25 ], [ 0, %do.end16.cleanup_crit_edge ], [ %call58, %do.end57.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl1271_boot_upload_firmware_chunk(ptr noundef %wl, ptr noundef %buf, i32 noundef %fw_data_len, i32 noundef %dest) unnamed_addr #0 align 64 {
entry:
  %partition = alloca %struct.wlcore_partition_set, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %partition) #9
  %0 = getelementptr inbounds %struct.wlcore_partition, ptr %partition, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %1 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %do.body3, !prof !118

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_boot_upload_firmware_chunk, %if.then11)) #9
          to label %do.body15 [label %if.then11], !srcloc !119

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.36) #9
  br label %do.body15

do.body15:                                        ; preds = %if.then11, %do.body3, %entry.do.body15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %2 = load i32, ptr @wl12xx_debug_level, align 4
  %and16 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end43_crit_edge, label %do.body25, !prof !118

do.body15.do.end43_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.body25:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_boot_upload_firmware_chunk, %if.then37)) #9
          to label %do.end43 [label %if.then37], !srcloc !119

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.37, i32 noundef %fw_data_len, i32 noundef 16384) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body25, %do.body15.do.end43_crit_edge
  %rem = and i32 %fw_data_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end50:                                         ; preds = %do.end43
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #13
  %tobool52.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool52.not, label %do.end56, label %if.end59

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %3 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptable, align 8
  %5 = call ptr @memcpy(ptr %partition, ptr %4, i32 32)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dest, ptr %0, align 4
  %call60 = call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef nonnull %partition) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.out_crit_edge, label %if.end63

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end63:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %fw_data_len)
  %cmp67246.not = icmp ult i32 %fw_data_len, 16384
  br i1 %cmp67246.not, label %if.end63.while.end_crit_edge, label %while.body.lr.ph

if.end63.while.end_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end63
  %div205 = lshr i32 %fw_data_len, 14
  %7 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptable, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %if_ops.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %dev.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %state.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end121.while.body_crit_edge, %while.body.lr.ph
  %chunk_num.0248 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end121.while.body_crit_edge ]
  %partition_limit.0247 = phi i32 [ %10, %while.body.lr.ph ], [ %partition_limit.1, %if.end121.while.body_crit_edge ]
  %add = shl i32 %chunk_num.0248, 14
  %mul = add i32 %add, %dest
  %add68 = add i32 %mul, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %partition_limit.0247)
  %cmp69 = icmp sgt i32 %add68, %partition_limit.0247
  br i1 %cmp69, label %if.then70, label %while.body.if.end85_crit_edge

while.body.if.end85_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then70:                                        ; preds = %while.body
  %11 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptable, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add78 = add i32 %14, %add
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %0, align 4
  %call81 = call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef nonnull %partition) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then70.out_crit_edge, label %if.then70.if.end85_crit_edge

if.then70.if.end85_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then70.out_crit_edge:                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end85:                                         ; preds = %if.then70.if.end85_crit_edge, %while.body.if.end85_crit_edge
  %partition_limit.1 = phi i32 [ %add78, %if.then70.if.end85_crit_edge ], [ %partition_limit.0247, %while.body.if.end85_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %add
  %16 = call ptr @memcpy(ptr %call1.i.i, ptr %add.ptr, i32 16384)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %17 = load i32, ptr @wl12xx_debug_level, align 4
  %and90 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end85.do.end117_crit_edge, label %do.body99, !prof !118

if.end85.do.end117_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117

do.body99:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_boot_upload_firmware_chunk, %if.then111)) #9
          to label %do.end117 [label %if.then111], !srcloc !119

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.42, ptr noundef %add.ptr, i32 noundef %mul) #9
  br label %do.end117

do.end117:                                        ; preds = %if.then111, %do.body99, %if.end85.do.end117_crit_edge
  %call.i = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %mul) #9
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %20 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.end117.out_crit_edge

do.end117.out_crit_edge:                          ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false.i.i:                                ; preds = %do.end117
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i.i = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i = and i1 %cmp.i.i, %tobool3.not.i.i
  br i1 %spec.select.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !120

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 52, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %24 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %if_ops.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i.i, align 4
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %call27.i.i = call i32 %27(ptr noundef %29, i32 noundef %call.i, ptr noundef nonnull %call1.i.i, i32 noundef 16384, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end121_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.if.end121_crit_edge:                 ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp29.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp29.not.i.i, label %land.lhs.true.i.i.wlcore_write.exit_crit_edge, label %if.then30.i.i

land.lhs.true.i.i.wlcore_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_write.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #9
  br label %wlcore_write.exit

wlcore_write.exit:                                ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp119 = icmp slt i32 %call27.i.i, 0
  br i1 %cmp119, label %wlcore_write.exit.out_crit_edge, label %wlcore_write.exit.if.end121_crit_edge

wlcore_write.exit.if.end121_crit_edge:            ; preds = %wlcore_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

wlcore_write.exit.out_crit_edge:                  ; preds = %wlcore_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end121:                                        ; preds = %wlcore_write.exit.if.end121_crit_edge, %if.end25.i.i.if.end121_crit_edge
  %inc = add nuw nsw i32 %chunk_num.0248, 1
  %exitcond.not = icmp eq i32 %inc, %div205
  br i1 %exitcond.not, label %while.end.loopexit, label %if.end121.while.body_crit_edge

if.end121.while.body_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.loopexit:                               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = and i32 %fw_data_len, -16384
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end63.while.end_crit_edge
  %chunk_num.0.lcssa = phi i32 [ 0, %if.end63.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %add123 = add i32 %chunk_num.0.lcssa, %dest
  %add.ptr125 = getelementptr i8, ptr %buf, i32 %chunk_num.0.lcssa
  %rem126 = and i32 %fw_data_len, 16383
  %32 = call ptr @memcpy(ptr %call1.i.i, ptr %add.ptr125, i32 %rem126)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %33 = load i32, ptr @wl12xx_debug_level, align 4
  %and128 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %while.end.do.end156_crit_edge, label %do.body137, !prof !118

while.end.do.end156_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156

do.body137:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl1271_boot_upload_firmware_chunk, %if.then149)) #9
          to label %do.end156 [label %if.then149], !srcloc !119

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.43, i32 noundef %rem126, ptr noundef %add.ptr125, i32 noundef %add123) #9
  br label %do.end156

do.end156:                                        ; preds = %if.then149, %do.body137, %while.end.do.end156_crit_edge
  %call.i215 = call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %add123) #9
  %flags.i.i216 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %34 = ptrtoint ptr %flags.i.i216 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i216, align 4
  %36 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i217 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i217, label %lor.lhs.false.i.i221, label %do.end156.out_crit_edge

do.end156.out_crit_edge:                          ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false.i.i221:                             ; preds = %do.end156
  %37 = ptrtoint ptr %flags.i.i216 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i.i216, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool3.not.i.i218 = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i215)
  %cmp.i.i219 = icmp ne i32 %call.i215, 131068
  %spec.select.i.i220 = and i1 %cmp.i.i219, %tobool3.not.i.i218
  br i1 %spec.select.i.i220, label %do.end.i.i222, label %if.end25.i.i228, !prof !120

do.end.i.i222:                                    ; preds = %lor.lhs.false.i.i221
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 52, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end25.i.i228:                                  ; preds = %lor.lhs.false.i.i221
  %if_ops.i.i223 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %40 = ptrtoint ptr %if_ops.i.i223 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %if_ops.i.i223, align 8
  %write.i.i224 = getelementptr inbounds %struct.wl1271_if_operations, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write.i.i224 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i.i224, align 4
  %dev.i.i225 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %44 = ptrtoint ptr %dev.i.i225 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i225, align 4
  %call27.i.i226 = call i32 %43(ptr noundef %45, i32 noundef %call.i215, ptr noundef nonnull %call1.i.i, i32 noundef %rem126, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i226)
  %tobool28.not.i.i227 = icmp eq i32 %call27.i.i226, 0
  br i1 %tobool28.not.i.i227, label %if.end25.i.i228.out_crit_edge, label %land.lhs.true.i.i231

if.end25.i.i228.out_crit_edge:                    ; preds = %if.end25.i.i228
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i.i231:                             ; preds = %if.end25.i.i228
  %state.i.i229 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %46 = ptrtoint ptr %state.i.i229 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i.i229, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp29.not.i.i230 = icmp eq i32 %47, 0
  br i1 %cmp29.not.i.i230, label %land.lhs.true.i.i231.out_crit_edge, label %if.then30.i.i232

land.lhs.true.i.i231.out_crit_edge:               ; preds = %land.lhs.true.i.i231
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then30.i.i232:                                 ; preds = %land.lhs.true.i.i231
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i216) #9
  br label %out

out:                                              ; preds = %if.then30.i.i232, %land.lhs.true.i.i231.out_crit_edge, %if.end25.i.i228.out_crit_edge, %do.end.i.i222, %do.end156.out_crit_edge, %wlcore_write.exit.out_crit_edge, %do.end.i.i, %do.end117.out_crit_edge, %if.then70.out_crit_edge, %if.end59.out_crit_edge
  %ret.0 = phi i32 [ %call60, %if.end59.out_crit_edge ], [ -5, %do.end.i.i222 ], [ -5, %do.end156.out_crit_edge ], [ %call27.i.i226, %if.then30.i.i232 ], [ %call27.i.i226, %land.lhs.true.i.i231.out_crit_edge ], [ 0, %if.end25.i.i228.out_crit_edge ], [ -5, %do.end.i.i ], [ -5, %do.end117.out_crit_edge ], [ %call27.i.i, %wlcore_write.exit.out_crit_edge ], [ %call81, %if.then70.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end56, %do.end47
  %retval.0 = phi i32 [ -5, %do.end47 ], [ %ret.0, %out ], [ -12, %do.end56 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %partition) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_boot_upload_nvs(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %nvs = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 25
  %4 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvs, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup195

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %family = getelementptr inbounds %struct.wlcore_platdev_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %nvs_name6 = getelementptr inbounds %struct.wilink_family_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nvs_name6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nvs_name6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %nvs_name.0 = phi ptr [ %9, %if.then4 ], [ @.str.6, %land.lhs.true.if.end7_crit_edge ], [ @.str.6, %if.end.if.end7_crit_edge ]
  %quirks = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 107
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 8
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %nvs_len43 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 26
  %12 = ptrtoint ptr %nvs_len43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nvs_len43, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then9.cleanup_crit_edge [
    i32 912, label %if.then9.if.then16_crit_edge
    i32 800, label %if.then9.if.then16_crit_edge337
  ]

if.then9.if.then16_crit_edge337:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then9.if.then16_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.then9.if.then16_crit_edge, %if.then9.if.then16_crit_edge337
  %dual_mode_select = getelementptr inbounds %struct.wl1271_nvs_file, ptr %5, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %dual_mode_select to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dual_mode_select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then18

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %enable_11a = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 96
  %17 = ptrtoint ptr %enable_11a to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enable_11a, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then16.if.end20_crit_edge
  %18 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %13, label %if.end20.cleanup_crit_edge [
    i32 912, label %if.end20.if.end68_crit_edge
    i32 800, label %lor.lhs.false26
  ]

if.end20.if.end68_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false26:                                  ; preds = %if.end20
  %enable_11a27 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 96
  %19 = ptrtoint ptr %enable_11a27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enable_11a27, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool28.not = icmp eq i8 %20, 0
  br i1 %tobool28.not, label %lor.lhs.false26.if.end68_crit_edge, label %lor.lhs.false26.cleanup_crit_edge

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false26.if.end68_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

cleanup:                                          ; preds = %lor.lhs.false26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %nvs_name.0, i32 noundef %13, i32 noundef 912) #12
  %21 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nvs, align 8
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %nvs to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %nvs, align 8
  %24 = ptrtoint ptr %nvs_len43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nvs_len43, align 4
  br label %cleanup195

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1113, i32 %13)
  %cmp44 = icmp eq i32 %13, 1113
  br i1 %cmp44, label %if.then45, label %cleanup65

if.then45:                                        ; preds = %if.else
  %dual_mode_select47 = getelementptr inbounds %struct.wl128x_nvs_file, ptr %5, i32 0, i32 1, i32 9
  %25 = ptrtoint ptr %dual_mode_select47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dual_mode_select47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not = icmp eq i8 %26, 0
  br i1 %tobool48.not, label %if.then45.if.end68_crit_edge, label %if.then49

if.then45.if.end68_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %enable_11a50 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 96
  %27 = ptrtoint ptr %enable_11a50 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %enable_11a50, align 1
  br label %if.end68

cleanup65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %nvs_name.0, i32 noundef %13, i32 noundef 1113) #12
  %28 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nvs, align 8
  tail call void @kfree(ptr noundef %29) #9
  %30 = ptrtoint ptr %nvs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %nvs, align 8
  %31 = ptrtoint ptr %nvs_len43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nvs_len43, align 4
  br label %cleanup195

if.end68:                                         ; preds = %if.then49, %if.then45.if.end68_crit_edge, %lor.lhs.false26.if.end68_crit_edge, %if.end20.if.end68_crit_edge
  %addresses = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 30
  %32 = ptrtoint ptr %addresses to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addresses, align 4
  %arrayidx70 = getelementptr i8, ptr %5, i32 11
  %34 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx70, align 1
  %arrayidx74 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 30, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx74, align 1
  %arrayidx75 = getelementptr i8, ptr %5, i32 10
  %37 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx75, align 1
  %arrayidx79 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 30, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx79, align 2
  %arrayidx80 = getelementptr i8, ptr %5, i32 6
  %40 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx80, align 1
  %arrayidx84 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 30, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx84, align 1
  %arrayidx85 = getelementptr i8, ptr %5, i32 5
  %43 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx85, align 1
  %arrayidx89 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 30, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr i8, ptr %5, i32 4
  %46 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx90, align 1
  %arrayidx94 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 30, i32 0, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx94, align 1
  %arrayidx95 = getelementptr i8, ptr %5, i32 3
  %49 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx95, align 1
  %start = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 20, i32 1, i32 1
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %if.end68
  %nvs_ptr.3 = phi ptr [ %5, %if.end68 ], [ %add.ptr155, %for.end.while.cond_crit_edge ]
  %50 = ptrtoint ptr %nvs_ptr.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nvs_ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool97.not = icmp eq i8 %51, 0
  br i1 %tobool97.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %conv = zext i8 %51 to i32
  %arrayidx99 = getelementptr i8, ptr %nvs_ptr.3, i32 1
  %52 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx99, align 1
  %54 = and i8 %53, -2
  %and101 = zext i8 %54 to i32
  %arrayidx102 = getelementptr i8, ptr %nvs_ptr.3, i32 2
  %55 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %56 to i32
  %shl = shl nuw nsw i32 %conv103, 8
  %57 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %start, align 4
  %or = add i32 %58, %and101
  %add = add i32 %or, %shl
  %add.ptr = getelementptr i8, ptr %nvs_ptr.3, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end154.for.body_crit_edge, %while.body
  %i.0312 = phi i32 [ 0, %while.body ], [ %inc, %if.end154.for.body_crit_edge ]
  %nvs_ptr.4311 = phi ptr [ %add.ptr, %while.body ], [ %add.ptr155, %if.end154.for.body_crit_edge ]
  %dest_addr.0310 = phi i32 [ %add, %while.body ], [ %add156, %if.end154.for.body_crit_edge ]
  %add.ptr106 = getelementptr i8, ptr %nvs_ptr.4311, i32 3
  %59 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nvs, align 8
  %add.ptr108 = getelementptr i8, ptr %60, i32 468
  %cmp109.not = icmp ult ptr %add.ptr106, %add.ptr108
  br i1 %cmp109.not, label %if.end112, label %for.body.do.end192_crit_edge

for.body.do.end192_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

if.end112:                                        ; preds = %for.body
  %61 = ptrtoint ptr %nvs_ptr.4311 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nvs_ptr.4311, align 1
  %conv114 = zext i8 %62 to i32
  %arrayidx115 = getelementptr i8, ptr %nvs_ptr.4311, i32 1
  %63 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %64 to i32
  %shl117 = shl nuw nsw i32 %conv116, 8
  %or118 = or i32 %shl117, %conv114
  %arrayidx119 = getelementptr i8, ptr %nvs_ptr.4311, i32 2
  %65 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %66 to i32
  %shl121 = shl nuw nsw i32 %conv120, 16
  %or122 = or i32 %or118, %shl121
  %67 = ptrtoint ptr %add.ptr106 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr106, align 1
  %conv124 = zext i8 %68 to i32
  %shl125 = shl nuw i32 %conv124, 24
  %or126 = or i32 %or122, %shl125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %69 = load i32, ptr @wl12xx_debug_level, align 4
  %and128 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end112.do.end149_crit_edge, label %do.body133, !prof !118

if.end112.do.end149_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end149

do.body133:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_boot_upload_nvs.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_boot_upload_nvs, %if.then143)) #9
          to label %do.end149 [label %if.then143], !srcloc !119

if.then143:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_boot_upload_nvs.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.14, i32 noundef %dest_addr.0310, i32 noundef %or126) #9
  br label %do.end149

do.end149:                                        ; preds = %if.then143, %do.body133, %if.end112.do.end149_crit_edge
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %dest_addr.0310) #9
  %70 = tail call i32 @llvm.bswap.i32(i32 %or126) #9
  %71 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer_32.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %72, align 4
  %74 = load ptr, ptr %buffer_32.i.i, align 4
  %75 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %flags.i.i.i, align 4
  %77 = and i32 %76, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %do.end149.cleanup195_crit_edge

do.end149.cleanup195_crit_edge:                   ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

lor.lhs.false.i.i.i:                              ; preds = %do.end149
  %78 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i.i.i, align 4
  %80 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool3.not.i.i.i = icmp ne i32 %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !120

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 52, i32 noundef 9, ptr noundef null) #9
  br label %cleanup195

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %81 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write.i.i.i, align 4
  %85 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %84(ptr noundef %86, i32 noundef %call.i, ptr noundef %74, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end154_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end154_crit_edge:               ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %87 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp29.not.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_write32.exit

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #9
  br label %wlcore_write32.exit

wlcore_write32.exit:                              ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_write32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp151 = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp151, label %wlcore_write32.exit.cleanup195_crit_edge, label %wlcore_write32.exit.if.end154_crit_edge

wlcore_write32.exit.if.end154_crit_edge:          ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

wlcore_write32.exit.cleanup195_crit_edge:         ; preds = %wlcore_write32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end154:                                        ; preds = %wlcore_write32.exit.if.end154_crit_edge, %if.end25.i.i.i.if.end154_crit_edge
  %add.ptr155 = getelementptr i8, ptr %nvs_ptr.4311, i32 4
  %add156 = add i32 %dest_addr.0310, 4
  %inc = add nuw nsw i32 %i.0312, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %if.end154.for.body_crit_edge

if.end154.for.body_crit_edge:                     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end154
  %89 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nvs, align 8
  %add.ptr158 = getelementptr i8, ptr %90, i32 468
  %cmp159.not = icmp ult ptr %add.ptr155, %add.ptr158
  br i1 %cmp159.not, label %for.end.while.cond_crit_edge, label %for.end.do.end192_crit_edge

for.end.do.end192_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %91 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %nvs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %nvs_ptr.3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %92 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 10
  %add166 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %and167 = and i32 %add166, -4
  %add.ptr168 = getelementptr i8, ptr %92, i32 %and167
  %add.ptr170 = getelementptr i8, ptr %92, i32 468
  %cmp171.not = icmp ult ptr %add.ptr168, %add.ptr170
  br i1 %cmp171.not, label %if.end174, label %while.end.do.end192_crit_edge

while.end.do.end192_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

if.end174:                                        ; preds = %while.end
  %sub = sub i32 468, %and167
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %93 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ptable, align 8
  %arrayidx179 = getelementptr %struct.wlcore_partition_set, ptr %94, i32 1
  %call180 = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx179) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.end174.cleanup195_crit_edge, label %if.end184

if.end174.cleanup195_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end184:                                        ; preds = %if.end174
  %call185 = tail call ptr @kmemdup(ptr noundef %add.ptr168, i32 noundef %sub, i32 noundef 3264) #9
  %tobool186.not = icmp eq ptr %call185, null
  br i1 %tobool186.not, label %if.end184.cleanup195_crit_edge, label %if.end188

if.end184.cleanup195_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end188:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %call189 = tail call fastcc i32 @wlcore_write_data(ptr noundef %wl, ptr noundef nonnull %call185, i32 noundef %sub)
  tail call void @kfree(ptr noundef nonnull %call185) #9
  br label %cleanup195

do.end192:                                        ; preds = %while.end.do.end192_crit_edge, %for.end.do.end192_crit_edge, %for.body.do.end192_crit_edge
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %cleanup195

cleanup195:                                       ; preds = %do.end192, %if.end188, %if.end184.cleanup195_crit_edge, %if.end174.cleanup195_crit_edge, %wlcore_write32.exit.cleanup195_crit_edge, %do.end.i.i.i, %do.end149.cleanup195_crit_edge, %cleanup65, %cleanup, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ -84, %do.end192 ], [ %call189, %if.end188 ], [ -84, %cleanup ], [ -84, %cleanup65 ], [ %call180, %if.end174.cleanup195_crit_edge ], [ -12, %if.end184.cleanup195_crit_edge ], [ -5, %do.end.i.i.i ], [ -5, %do.end149.cleanup195_crit_edge ], [ %call27.i.i.i, %wlcore_write32.exit.cleanup195_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_set_partition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wlcore_write_data(ptr noundef %wl, ptr noundef %buf, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %rtable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %0 = ptrtoint ptr %rtable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtable, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %3) #9
  %flags.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.wlcore_write.exit_crit_edge

entry.wlcore_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %spec.select.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !120

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 52, i32 noundef 9, ptr noundef null) #9
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
  %call27.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.wlcore_write.exit_crit_edge, label %land.lhs.true.i.i

if.end25.i.i.wlcore_write.exit_crit_edge:         ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_write.exit

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i) #9
  br label %wlcore_write.exit

wlcore_write.exit:                                ; preds = %if.then30.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge, %if.end25.i.i.wlcore_write.exit_crit_edge, %do.end.i.i, %entry.wlcore_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end.i.i ], [ -5, %entry.wlcore_write.exit_crit_edge ], [ %call27.i.i, %if.then30.i.i ], [ %call27.i.i, %land.lhs.true.i.i.wlcore_write.exit_crit_edge ], [ 0, %if.end25.i.i.wlcore_write.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlcore_boot_run_firmware(ptr noundef %wl) #0 align 64 {
entry:
  %min_fw_str.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptable = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 115
  %0 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptable, align 8
  %arrayidx = getelementptr %struct.wlcore_partition_set, ptr %1, i32 2
  %call = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtable.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 116
  %2 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtable.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %5) #9
  %buffer_32.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %6 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_32.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %8 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i.i:                            ; preds = %if.end
  %11 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i.i.i.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ne i32 %call.i.i, 131068
  %spec.select.i.i.i.i = and i1 %cmp.i.i.i.i, %tobool3.not.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !120

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %if_ops.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %14 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i.i = tail call i32 %17(ptr noundef %19, i32 noundef %call.i.i, ptr noundef %7, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %call27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %if.end25.i.i.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end25.i.i.i.i.if.end.i_crit_edge:              ; preds = %if.end25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end25.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %20 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp29.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp29.not.i.i.i.i, label %land.lhs.true.i.i.i.i.wlcore_raw_read.exit.i.i.i_crit_edge, label %if.then30.i.i.i.i

land.lhs.true.i.i.i.i.wlcore_raw_read.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_raw_read.exit.i.i.i

if.then30.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_raw_read.exit.i.i.i

wlcore_raw_read.exit.i.i.i:                       ; preds = %if.then30.i.i.i.i, %land.lhs.true.i.i.i.i.wlcore_raw_read.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call27.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %wlcore_raw_read.exit.i.i.i.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i.i.if.end.i_crit_edge

wlcore_raw_read.exit.i.i.i.if.end.i_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

wlcore_raw_read.exit.i.i.i.cleanup_crit_edge:     ; preds = %wlcore_raw_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %wlcore_raw_read.exit.i.i.i.if.end.i_crit_edge, %if.end25.i.i.i.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_32.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = or i32 %25, 16842752
  %27 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtable.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %call.i2.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %30) #9
  %31 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer_32.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %32, align 4
  %34 = load ptr, ptr %buffer_32.i.i.i, align 4
  %35 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %37 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i5.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i5.i, label %lor.lhs.false.i.i.i9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i9.i:                           ; preds = %if.end.i
  %38 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not.i.i.i6.i = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i2.i)
  %cmp.i.i.i7.i = icmp ne i32 %call.i2.i, 131068
  %spec.select.i.i.i8.i = and i1 %cmp.i.i.i7.i, %tobool3.not.i.i.i6.i
  br i1 %spec.select.i.i.i8.i, label %do.end.i.i.i10.i, label %if.end25.i.i.i15.i, !prof !120

do.end.i.i.i10.i:                                 ; preds = %lor.lhs.false.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 52, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i15.i:                               ; preds = %lor.lhs.false.i.i.i9.i
  %41 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i.i.i.i, align 4
  %45 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i13.i = tail call i32 %44(ptr noundef %46, i32 noundef %call.i2.i, ptr noundef %34, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i13.i)
  %tobool28.not.i.i.i14.i = icmp eq i32 %call27.i.i.i13.i, 0
  br i1 %tobool28.not.i.i.i14.i, label %if.end25.i.i.i15.i.if.end4_crit_edge, label %land.lhs.true.i.i.i18.i

if.end25.i.i.i15.i.if.end4_crit_edge:             ; preds = %if.end25.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

land.lhs.true.i.i.i18.i:                          ; preds = %if.end25.i.i.i15.i
  %state.i.i.i16.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %47 = ptrtoint ptr %state.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i.i.i16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp29.not.i.i.i17.i = icmp eq i32 %48, 0
  br i1 %cmp29.not.i.i.i17.i, label %land.lhs.true.i.i.i18.i.wl1271_boot_set_ecpu_ctrl.exit_crit_edge, label %if.then30.i.i.i19.i

land.lhs.true.i.i.i18.i.wl1271_boot_set_ecpu_ctrl.exit_crit_edge: ; preds = %land.lhs.true.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wl1271_boot_set_ecpu_ctrl.exit

if.then30.i.i.i19.i:                              ; preds = %land.lhs.true.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wl1271_boot_set_ecpu_ctrl.exit

wl1271_boot_set_ecpu_ctrl.exit:                   ; preds = %if.then30.i.i.i19.i, %land.lhs.true.i.i.i18.i.wl1271_boot_set_ecpu_ctrl.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i13.i)
  %cmp2 = icmp slt i32 %call27.i.i.i13.i, 0
  br i1 %cmp2, label %wl1271_boot_set_ecpu_ctrl.exit.cleanup_crit_edge, label %wl1271_boot_set_ecpu_ctrl.exit.if.end4_crit_edge

wl1271_boot_set_ecpu_ctrl.exit.if.end4_crit_edge: ; preds = %wl1271_boot_set_ecpu_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

wl1271_boot_set_ecpu_ctrl.exit.cleanup_crit_edge: ; preds = %wl1271_boot_set_ecpu_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %wl1271_boot_set_ecpu_ctrl.exit.if.end4_crit_edge, %if.end25.i.i.i15.i.if.end4_crit_edge
  %49 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i = getelementptr i32, ptr %50, i32 8
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %52) #9
  %53 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer_32.i.i.i, align 4
  %55 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %57 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end4
  %58 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool3.not.i.i.i = icmp ne i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i208 = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i208, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !120

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %61 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i = tail call i32 %64(ptr noundef %66, i32 noundef %call.i, ptr noundef %54, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.do.body_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.do.body_crit_edge:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %67 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp29.not.i.i.i = icmp eq i32 %68, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp.i.i = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i.do.body_crit_edge

wlcore_raw_read.exit.i.i.do.body_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

wlcore_raw_read.exit.i.i.cleanup_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %wlcore_raw_read.exit.i.i.do.body_crit_edge, %if.end25.i.i.i.do.body_crit_edge
  %69 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buffer_32.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %74 = load i32, ptr @wl12xx_debug_level, align 4
  %and = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end25_crit_edge, label %do.body12, !prof !118

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_boot_run_firmware, %if.then21)) #9
          to label %do.end25 [label %if.then21], !srcloc !119

if.then21:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.19, i32 noundef %73) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body12, %do.body.do.end25_crit_edge
  %chip = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %76)
  %cmp26.not = icmp eq i32 %73, %76
  br i1 %cmp26.not, label %while.cond.preheader, label %do.end30

while.cond.preheader:                             ; preds = %do.end25
  %state.i.i.i225 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  br label %while.cond

do.end30:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %cleanup

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %while.cond.preheader
  %loop.0 = phi i32 [ %inc, %if.else.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %inc = add nuw nsw i32 %loop.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %loop.0)
  %exitcond.not = icmp eq i32 %loop.0, 20000
  br i1 %exitcond.not, label %do.end59, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 10737400) #9
  %78 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i210 = getelementptr i32, ptr %79, i32 1
  %80 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i210, align 4
  %call.i211 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %81) #9
  %82 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer_32.i.i.i, align 4
  %84 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %86 = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i.i214 = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i.i214, label %lor.lhs.false.i.i.i218, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i218:                           ; preds = %while.body
  %87 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %89 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool3.not.i.i.i215 = icmp ne i32 %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i211)
  %cmp.i.i.i216 = icmp ne i32 %call.i211, 131068
  %spec.select.i.i.i217 = and i1 %cmp.i.i.i216, %tobool3.not.i.i.i215
  br i1 %spec.select.i.i.i217, label %do.end.i.i.i219, label %if.end25.i.i.i224, !prof !120

do.end.i.i.i219:                                  ; preds = %lor.lhs.false.i.i.i218
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i224:                                ; preds = %lor.lhs.false.i.i.i218
  %90 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i222 = tail call i32 %93(ptr noundef %95, i32 noundef %call.i211, ptr noundef %83, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i222)
  %tobool28.not.i.i.i223 = icmp eq i32 %call27.i.i.i222, 0
  br i1 %tobool28.not.i.i.i223, label %if.end25.i.i.i224.if.end38_crit_edge, label %land.lhs.true.i.i.i227

if.end25.i.i.i224.if.end38_crit_edge:             ; preds = %if.end25.i.i.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true.i.i.i227:                           ; preds = %if.end25.i.i.i224
  %96 = ptrtoint ptr %state.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %state.i.i.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp29.not.i.i.i226 = icmp eq i32 %97, 0
  br i1 %cmp29.not.i.i.i226, label %land.lhs.true.i.i.i227.wlcore_raw_read.exit.i.i230_crit_edge, label %if.then30.i.i.i228

land.lhs.true.i.i.i227.wlcore_raw_read.exit.i.i230_crit_edge: ; preds = %land.lhs.true.i.i.i227
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_raw_read.exit.i.i230

if.then30.i.i.i228:                               ; preds = %land.lhs.true.i.i.i227
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_raw_read.exit.i.i230

wlcore_raw_read.exit.i.i230:                      ; preds = %if.then30.i.i.i228, %land.lhs.true.i.i.i227.wlcore_raw_read.exit.i.i230_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i222)
  %cmp.i.i229 = icmp slt i32 %call27.i.i.i222, 0
  br i1 %cmp.i.i229, label %wlcore_raw_read.exit.i.i230.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i230.if.end38_crit_edge

wlcore_raw_read.exit.i.i230.if.end38_crit_edge:   ; preds = %wlcore_raw_read.exit.i.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

wlcore_raw_read.exit.i.i230.cleanup_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %wlcore_raw_read.exit.i.i230.if.end38_crit_edge, %if.end25.i.i.i224.if.end38_crit_edge
  %98 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer_32.i.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp39 = icmp eq i32 %101, -1
  br i1 %cmp39, label %do.end43, label %if.else

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.else:                                          ; preds = %if.end38
  %102 = and i32 %101, 33554432
  %tobool47.not = icmp eq i32 %102, 0
  br i1 %tobool47.not, label %if.else.while.cond_crit_edge, label %if.then48

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then48:                                        ; preds = %if.else
  %103 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i235 = getelementptr i32, ptr %104, i32 2
  %105 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i235, align 4
  %call.i236 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %106) #9
  %107 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buffer_32.i.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 33554432, ptr %108, align 4
  %110 = load ptr, ptr %buffer_32.i.i.i, align 4
  %111 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %113 = and i32 %112, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i.i239 = icmp eq i32 %113, 0
  br i1 %tobool.not.i.i.i239, label %lor.lhs.false.i.i.i243, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i243:                           ; preds = %if.then48
  %114 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool3.not.i.i.i240 = icmp ne i32 %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i236)
  %cmp.i.i.i241 = icmp ne i32 %call.i236, 131068
  %spec.select.i.i.i242 = and i1 %cmp.i.i.i241, %tobool3.not.i.i.i240
  br i1 %spec.select.i.i.i242, label %do.end.i.i.i244, label %if.end25.i.i.i249, !prof !120

do.end.i.i.i244:                                  ; preds = %lor.lhs.false.i.i.i243
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 52, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i249:                                ; preds = %lor.lhs.false.i.i.i243
  %117 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write.i.i.i, align 4
  %121 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i247 = tail call i32 %120(ptr noundef %122, i32 noundef %call.i236, ptr noundef %110, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i247)
  %tobool28.not.i.i.i248 = icmp eq i32 %call27.i.i.i247, 0
  br i1 %tobool28.not.i.i.i248, label %if.end25.i.i.i249.if.end62_crit_edge, label %land.lhs.true.i.i.i252

if.end25.i.i.i249.if.end62_crit_edge:             ; preds = %if.end25.i.i.i249
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true.i.i.i252:                           ; preds = %if.end25.i.i.i249
  %123 = ptrtoint ptr %state.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state.i.i.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp29.not.i.i.i251 = icmp eq i32 %124, 0
  br i1 %cmp29.not.i.i.i251, label %land.lhs.true.i.i.i252.wlcore_write_reg.exit_crit_edge, label %if.then30.i.i.i253

land.lhs.true.i.i.i252.wlcore_write_reg.exit_crit_edge: ; preds = %land.lhs.true.i.i.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_write_reg.exit

if.then30.i.i.i253:                               ; preds = %land.lhs.true.i.i.i252
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_write_reg.exit

wlcore_write_reg.exit:                            ; preds = %if.then30.i.i.i253, %land.lhs.true.i.i.i252.wlcore_write_reg.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i247)
  %cmp50 = icmp slt i32 %call27.i.i.i247, 0
  br i1 %cmp50, label %wlcore_write_reg.exit.cleanup_crit_edge, label %wlcore_write_reg.exit.if.end62_crit_edge

wlcore_write_reg.exit.if.end62_crit_edge:         ; preds = %wlcore_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

wlcore_write_reg.exit.cleanup_crit_edge:          ; preds = %wlcore_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end59:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end62:                                         ; preds = %wlcore_write_reg.exit.if.end62_crit_edge, %if.end25.i.i.i249.if.end62_crit_edge
  %cmd_box_addr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 22
  %125 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i255 = getelementptr i32, ptr %126, i32 3
  %127 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i255, align 4
  %call.i256 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %128) #9
  %129 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buffer_32.i.i.i, align 4
  %131 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %133 = and i32 %132, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i.i259 = icmp eq i32 %133, 0
  br i1 %tobool.not.i.i.i259, label %lor.lhs.false.i.i.i263, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i263:                           ; preds = %if.end62
  %134 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %136 = and i32 %135, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool3.not.i.i.i260 = icmp ne i32 %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i256)
  %cmp.i.i.i261 = icmp ne i32 %call.i256, 131068
  %spec.select.i.i.i262 = and i1 %cmp.i.i.i261, %tobool3.not.i.i.i260
  br i1 %spec.select.i.i.i262, label %do.end.i.i.i264, label %if.end25.i.i.i269, !prof !120

do.end.i.i.i264:                                  ; preds = %lor.lhs.false.i.i.i263
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i269:                                ; preds = %lor.lhs.false.i.i.i263
  %137 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i267 = tail call i32 %140(ptr noundef %142, i32 noundef %call.i256, ptr noundef %130, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i267)
  %tobool28.not.i.i.i268 = icmp eq i32 %call27.i.i.i267, 0
  br i1 %tobool28.not.i.i.i268, label %if.end25.i.i.i269.if.end.i.i276_crit_edge, label %land.lhs.true.i.i.i272

if.end25.i.i.i269.if.end.i.i276_crit_edge:        ; preds = %if.end25.i.i.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i276

land.lhs.true.i.i.i272:                           ; preds = %if.end25.i.i.i269
  %143 = ptrtoint ptr %state.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %state.i.i.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp29.not.i.i.i271 = icmp eq i32 %144, 0
  br i1 %cmp29.not.i.i.i271, label %land.lhs.true.i.i.i272.wlcore_raw_read.exit.i.i275_crit_edge, label %if.then30.i.i.i273

land.lhs.true.i.i.i272.wlcore_raw_read.exit.i.i275_crit_edge: ; preds = %land.lhs.true.i.i.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_raw_read.exit.i.i275

if.then30.i.i.i273:                               ; preds = %land.lhs.true.i.i.i272
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_raw_read.exit.i.i275

wlcore_raw_read.exit.i.i275:                      ; preds = %if.then30.i.i.i273, %land.lhs.true.i.i.i272.wlcore_raw_read.exit.i.i275_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i267)
  %cmp.i.i274 = icmp slt i32 %call27.i.i.i267, 0
  br i1 %cmp.i.i274, label %wlcore_raw_read.exit.i.i275.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i275.if.end.i.i276_crit_edge

wlcore_raw_read.exit.i.i275.if.end.i.i276_crit_edge: ; preds = %wlcore_raw_read.exit.i.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i276

wlcore_raw_read.exit.i.i275.cleanup_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i276:                                    ; preds = %wlcore_raw_read.exit.i.i275.if.end.i.i276_crit_edge, %if.end25.i.i.i269.if.end.i.i276_crit_edge
  %tobool.not.i.i = icmp eq ptr %cmd_box_addr, null
  br i1 %tobool.not.i.i, label %if.end.i.i276.do.body67_crit_edge, label %if.then1.i.i

if.end.i.i276.do.body67_crit_edge:                ; preds = %if.end.i.i276
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

if.then1.i.i:                                     ; preds = %if.end.i.i276
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buffer_32.i.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #9
  %150 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %cmd_box_addr, align 4
  br label %do.body67

do.body67:                                        ; preds = %if.then1.i.i, %if.end.i.i276.do.body67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %151 = load i32, ptr @wl12xx_debug_level, align 4
  %and68 = and i32 %151, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.end96_crit_edge, label %do.body77, !prof !118

do.body67.do.end96_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.body77:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_boot_run_firmware, %if.then89)) #9
          to label %do.end96 [label %if.then89], !srcloc !119

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cmd_box_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.27, i32 noundef %153) #9
  br label %do.end96

do.end96:                                         ; preds = %if.then89, %do.body77, %do.body67.do.end96_crit_edge
  %mbox_ptr = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 77
  %154 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rtable.i.i, align 4
  %arrayidx.i280 = getelementptr i32, ptr %155, i32 4
  %156 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i280, align 4
  %call.i281 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %157) #9
  %158 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %buffer_32.i.i.i, align 4
  %160 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %162 = and i32 %161, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i.i.i284 = icmp eq i32 %162, 0
  br i1 %tobool.not.i.i.i284, label %lor.lhs.false.i.i.i288, label %do.end96.cleanup_crit_edge

do.end96.cleanup_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i288:                           ; preds = %do.end96
  %163 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %165 = and i32 %164, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool3.not.i.i.i285 = icmp ne i32 %165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i281)
  %cmp.i.i.i286 = icmp ne i32 %call.i281, 131068
  %spec.select.i.i.i287 = and i1 %cmp.i.i.i286, %tobool3.not.i.i.i285
  br i1 %spec.select.i.i.i287, label %do.end.i.i.i289, label %if.end25.i.i.i294, !prof !120

do.end.i.i.i289:                                  ; preds = %lor.lhs.false.i.i.i288
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i294:                                ; preds = %lor.lhs.false.i.i.i288
  %166 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i292 = tail call i32 %169(ptr noundef %171, i32 noundef %call.i281, ptr noundef %159, i32 noundef 4, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i292)
  %tobool28.not.i.i.i293 = icmp eq i32 %call27.i.i.i292, 0
  br i1 %tobool28.not.i.i.i293, label %if.end25.i.i.i294.if.end.i.i302_crit_edge, label %land.lhs.true.i.i.i297

if.end25.i.i.i294.if.end.i.i302_crit_edge:        ; preds = %if.end25.i.i.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i302

land.lhs.true.i.i.i297:                           ; preds = %if.end25.i.i.i294
  %172 = ptrtoint ptr %state.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %state.i.i.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp29.not.i.i.i296 = icmp eq i32 %173, 0
  br i1 %cmp29.not.i.i.i296, label %land.lhs.true.i.i.i297.wlcore_raw_read.exit.i.i300_crit_edge, label %if.then30.i.i.i298

land.lhs.true.i.i.i297.wlcore_raw_read.exit.i.i300_crit_edge: ; preds = %land.lhs.true.i.i.i297
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_raw_read.exit.i.i300

if.then30.i.i.i298:                               ; preds = %land.lhs.true.i.i.i297
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_raw_read.exit.i.i300

wlcore_raw_read.exit.i.i300:                      ; preds = %if.then30.i.i.i298, %land.lhs.true.i.i.i297.wlcore_raw_read.exit.i.i300_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i292)
  %cmp.i.i299 = icmp slt i32 %call27.i.i.i292, 0
  br i1 %cmp.i.i299, label %wlcore_raw_read.exit.i.i300.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i300.if.end.i.i302_crit_edge

wlcore_raw_read.exit.i.i300.if.end.i.i302_crit_edge: ; preds = %wlcore_raw_read.exit.i.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i302

wlcore_raw_read.exit.i.i300.cleanup_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i302:                                    ; preds = %wlcore_raw_read.exit.i.i300.if.end.i.i302_crit_edge, %if.end25.i.i.i294.if.end.i.i302_crit_edge
  %tobool.not.i.i301 = icmp eq ptr %mbox_ptr, null
  br i1 %tobool.not.i.i301, label %if.end.i.i302.if.end101_crit_edge, label %if.then1.i.i303

if.end.i.i302.if.end101_crit_edge:                ; preds = %if.end.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then1.i.i303:                                  ; preds = %if.end.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %buffer_32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %buffer_32.i.i.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #9
  %179 = ptrtoint ptr %mbox_ptr to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %mbox_ptr, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then1.i.i303, %if.end.i.i302.if.end101_crit_edge
  %180 = ptrtoint ptr %mbox_ptr to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mbox_ptr, align 4
  %mbox_size = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 76
  %182 = ptrtoint ptr %mbox_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mbox_size, align 8
  %add = add i32 %183, %181
  %arrayidx105 = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 77, i32 1
  %184 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add, ptr %arrayidx105, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wl12xx_debug_level to i32))
  %185 = load i32, ptr @wl12xx_debug_level, align 4
  %and107 = and i32 %185, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end101.do.end138_crit_edge, label %do.body116, !prof !118

if.end101.do.end138_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end138

do.body116:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wlcore_boot_run_firmware, %if.then128)) #9
          to label %do.end138 [label %if.then128], !srcloc !119

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %mbox_ptr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mbox_ptr, align 4
  %188 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx105, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.28, i32 noundef %187, i32 noundef %189) #9
  br label %do.end138

do.end138:                                        ; preds = %if.then128, %do.body116, %if.end101.do.end138_crit_edge
  %static_data_priv_len.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 139
  %190 = ptrtoint ptr %static_data_priv_len.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %static_data_priv_len.i, align 4
  %add.i = add i32 %191, 64
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end138.do.end144_crit_edge, label %if.end.i314

do.end138.do.end144_crit_edge:                    ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end144

if.end.i314:                                      ; preds = %do.end138
  %192 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %cmd_box_addr, align 4
  %call.i.i312 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %193) #9
  %194 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %196 = and i32 %195, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i.i29.i = icmp eq i32 %196, 0
  br i1 %tobool.not.i.i29.i, label %lor.lhs.false.i.i.i316, label %if.end.i314.wlcore_boot_static_data.exit.thread357_crit_edge

if.end.i314.wlcore_boot_static_data.exit.thread357_crit_edge: ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_boot_static_data.exit.thread357

lor.lhs.false.i.i.i316:                           ; preds = %if.end.i314
  %197 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %199 = and i32 %198, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool3.not.i.i.i315 = icmp ne i32 %199, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i.i312)
  %cmp.i.i30.i = icmp ne i32 %call.i.i312, 131068
  %spec.select.i.i31.i = and i1 %cmp.i.i30.i, %tobool3.not.i.i.i315
  br i1 %spec.select.i.i31.i, label %do.end.i.i.i317, label %if.end25.i.i.i322, !prof !120

do.end.i.i.i317:                                  ; preds = %lor.lhs.false.i.i.i316
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %wlcore_boot_static_data.exit.thread357

if.end25.i.i.i322:                                ; preds = %lor.lhs.false.i.i.i316
  %200 = ptrtoint ptr %if_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %if_ops.i.i.i.i, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %204 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i.i.i.i, align 4
  %call27.i.i.i320 = tail call i32 %203(ptr noundef %205, i32 noundef %call.i.i312, ptr noundef nonnull %call9.i.i, i32 noundef %add.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i320)
  %tobool28.not.i.i.i321 = icmp eq i32 %call27.i.i.i320, 0
  br i1 %tobool28.not.i.i.i321, label %if.end25.i.i.i322.if.end3.i_crit_edge, label %land.lhs.true.i.i.i325

if.end25.i.i.i322.if.end3.i_crit_edge:            ; preds = %if.end25.i.i.i322
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

land.lhs.true.i.i.i325:                           ; preds = %if.end25.i.i.i322
  %206 = ptrtoint ptr %state.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %state.i.i.i225, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp29.not.i.i.i324 = icmp eq i32 %207, 0
  br i1 %cmp29.not.i.i.i324, label %land.lhs.true.i.i.i325.wlcore_read.exit.i_crit_edge, label %if.then30.i.i.i326

land.lhs.true.i.i.i325.wlcore_read.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i325
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_read.exit.i

if.then30.i.i.i326:                               ; preds = %land.lhs.true.i.i.i325
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i.i) #9
  br label %wlcore_read.exit.i

wlcore_read.exit.i:                               ; preds = %if.then30.i.i.i326, %land.lhs.true.i.i.i325.wlcore_read.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i320)
  %cmp.i = icmp slt i32 %call27.i.i.i320, 0
  br i1 %cmp.i, label %wlcore_read.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge, label %wlcore_read.exit.i.if.end3.i_crit_edge

wlcore_read.exit.i.if.end3.i_crit_edge:           ; preds = %wlcore_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

wlcore_read.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge: ; preds = %wlcore_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_boot_static_data.exit.thread357

if.end3.i:                                        ; preds = %wlcore_read.exit.i.if.end3.i_crit_edge, %if.end25.i.i.i322.if.end3.i_crit_edge
  %fw_ver_str.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21, i32 1
  %fw_version.i.i = getelementptr inbounds %struct.wl1271_static_data, ptr %call9.i.i, i32 0, i32 2
  %call.i32.i = tail call ptr @strncpy(ptr noundef %fw_ver_str.i.i, ptr noundef %fw_version.i.i, i32 noundef 32) #9
  %arrayidx.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 1, i32 31
  %208 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %arrayidx.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 1, i32 4
  %fw_ver.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 21, i32 2
  %arrayidx11.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 2, i32 1
  %arrayidx14.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 2, i32 2
  %arrayidx17.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 2, i32 3
  %arrayidx20.i.i = getelementptr %struct.wl1271, ptr %wl, i32 0, i32 21, i32 2, i32 4
  %call21.i.i = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.45, ptr noundef %fw_ver.i.i, ptr noundef %arrayidx11.i.i, ptr noundef %arrayidx14.i.i, ptr noundef %arrayidx17.i.i, ptr noundef %arrayidx20.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call21.i.i)
  %cmp.not.i.i = icmp eq i32 %call21.i.i, 5
  br i1 %cmp.not.i.i, label %if.end.i34.i, label %wlcore_boot_parse_fw_ver.exit.thread.i

wlcore_boot_parse_fw_ver.exit.thread.i:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  %209 = call ptr @memset(ptr %fw_ver.i.i, i32 0, i32 20)
  br label %wlcore_boot_static_data.exit.thread357

if.end.i34.i:                                     ; preds = %if.end3.i
  %ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 114
  %210 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ops.i.i.i, align 4
  %identify_fw.i.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %identify_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %identify_fw.i.i.i, align 4
  %tobool.not.i.i33.i = icmp eq ptr %213, null
  br i1 %tobool.not.i.i33.i, label %if.end.i34.i.if.end7.i_crit_edge, label %wlcore_boot_parse_fw_ver.exit.i

if.end.i34.i.if.end7.i_crit_edge:                 ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

wlcore_boot_parse_fw_ver.exit.i:                  ; preds = %if.end.i34.i
  %call.i.i.i = tail call i32 %213(ptr noundef %wl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp5.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp5.i, label %wlcore_boot_parse_fw_ver.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge, label %wlcore_boot_parse_fw_ver.exit.i.if.end7.i_crit_edge

wlcore_boot_parse_fw_ver.exit.i.if.end7.i_crit_edge: ; preds = %wlcore_boot_parse_fw_ver.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

wlcore_boot_parse_fw_ver.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge: ; preds = %wlcore_boot_parse_fw_ver.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_boot_static_data.exit.thread357

if.end7.i:                                        ; preds = %wlcore_boot_parse_fw_ver.exit.i.if.end7.i_crit_edge, %if.end.i34.i.if.end7.i_crit_edge
  %fw_type.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 13
  %214 = ptrtoint ptr %fw_type.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %fw_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %215)
  %cmp.i35.i = icmp eq i32 %215, 2
  %min_mr_fw_ver.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 145
  %min_sr_fw_ver.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 144
  %cond.i.i = select i1 %cmp.i35.i, ptr %min_mr_fw_ver.i.i, ptr %min_sr_fw_ver.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %min_fw_str.i.i) #9
  %216 = call ptr @memset(ptr %min_fw_str.i.i, i32 0, i32 32)
  %217 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cond.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %218)
  %cmp4.not.i.i = icmp eq i32 %218, -1
  br i1 %cmp4.not.i.i, label %if.end7.i.if.end.i36.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.if.end.i36.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i36.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %219 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %fw_ver.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %220)
  %cmp7.not.i.i = icmp eq i32 %218, %220
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.if.end.i36.i_crit_edge, label %land.lhs.true.i.i.for.body.i.i_crit_edge

land.lhs.true.i.i.for.body.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

land.lhs.true.i.i.if.end.i36.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i36.i

if.end.i36.i:                                     ; preds = %land.lhs.true.i.i.if.end.i36.i_crit_edge, %if.end7.i.if.end.i36.i_crit_edge
  %arrayidx8.i.i = getelementptr i32, ptr %cond.i.i, i32 1
  %221 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %222)
  %cmp9.not.i.i = icmp eq i32 %222, -1
  br i1 %cmp9.not.i.i, label %if.end.i36.i.if.end15.i.i_crit_edge, label %land.lhs.true10.i.i

if.end.i36.i.if.end15.i.i_crit_edge:              ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true10.i.i:                              ; preds = %if.end.i36.i
  %223 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %224)
  %cmp13.not.i.i = icmp eq i32 %222, %224
  br i1 %cmp13.not.i.i, label %land.lhs.true10.i.i.if.end15.i.i_crit_edge, label %land.lhs.true10.i.i.for.body.i.i_crit_edge

land.lhs.true10.i.i.for.body.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

land.lhs.true10.i.i.if.end15.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %land.lhs.true10.i.i.if.end15.i.i_crit_edge, %if.end.i36.i.if.end15.i.i_crit_edge
  %arrayidx16.i.i = getelementptr i32, ptr %cond.i.i, i32 3
  %225 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %226)
  %cmp17.not.i.i = icmp eq i32 %226, -1
  br i1 %cmp17.not.i.i, label %if.end15.i.i.if.end23.i.i_crit_edge, label %land.lhs.true18.i.i

if.end15.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

land.lhs.true18.i.i:                              ; preds = %if.end15.i.i
  %227 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %228)
  %cmp21.not.i.i = icmp eq i32 %226, %228
  br i1 %cmp21.not.i.i, label %land.lhs.true18.i.i.if.end23.i.i_crit_edge, label %land.lhs.true18.i.i.for.body.i.i_crit_edge

land.lhs.true18.i.i.for.body.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

land.lhs.true18.i.i.if.end23.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %land.lhs.true18.i.i.if.end23.i.i_crit_edge, %if.end15.i.i.if.end23.i.i_crit_edge
  %arrayidx24.i.i = getelementptr i32, ptr %cond.i.i, i32 2
  %229 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %230)
  %cmp25.not.i.i = icmp eq i32 %230, -1
  br i1 %cmp25.not.i.i, label %if.end23.i.i.land.lhs.true37.i.i_crit_edge, label %land.lhs.true26.i.i

if.end23.i.i.land.lhs.true37.i.i_crit_edge:       ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i.i

land.lhs.true26.i.i:                              ; preds = %if.end23.i.i
  %231 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %232)
  %cmp29.i.i = icmp ugt i32 %230, %232
  br i1 %cmp29.i.i, label %land.lhs.true26.i.i.for.body.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true26.i.i.for.body.i.i_crit_edge:       ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %232)
  %cmp36.i.i = icmp eq i32 %230, %232
  br i1 %cmp36.i.i, label %lor.lhs.false.i.i.land.lhs.true37.i.i_crit_edge, label %lor.lhs.false.i.i.if.end11.i_crit_edge

lor.lhs.false.i.i.if.end11.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

lor.lhs.false.i.i.land.lhs.true37.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i.i

land.lhs.true37.i.i:                              ; preds = %lor.lhs.false.i.i.land.lhs.true37.i.i_crit_edge, %if.end23.i.i.land.lhs.true37.i.i_crit_edge
  %arrayidx38.i.i = getelementptr i32, ptr %cond.i.i, i32 4
  %233 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx38.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %234)
  %cmp39.not.i.i = icmp eq i32 %234, -1
  br i1 %cmp39.not.i.i, label %land.lhs.true37.i.i.if.end11.i_crit_edge, label %land.lhs.true40.i.i

land.lhs.true37.i.i.if.end11.i_crit_edge:         ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

land.lhs.true40.i.i:                              ; preds = %land.lhs.true37.i.i
  %235 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx20.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %234, i32 %236)
  %cmp43.i.i = icmp ugt i32 %234, %236
  br i1 %cmp43.i.i, label %land.lhs.true40.i.i.for.body.i.i_crit_edge, label %land.lhs.true40.i.i.if.end11.i_crit_edge

land.lhs.true40.i.i.if.end11.i_crit_edge:         ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

land.lhs.true40.i.i.for.body.i.i_crit_edge:       ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %land.lhs.true40.i.i.for.body.i.i_crit_edge, %land.lhs.true26.i.i.for.body.i.i_crit_edge, %land.lhs.true18.i.i.for.body.i.i_crit_edge, %land.lhs.true10.i.i.for.body.i.i_crit_edge, %land.lhs.true.i.i.for.body.i.i_crit_edge
  %237 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %cond.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %238)
  %cmp49.i.i = icmp eq i32 %238, -1
  br i1 %cmp49.i.i, label %if.then50.i.i, label %if.else.i.i

if.then50.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %239 = call ptr @memcpy(ptr %min_fw_str.i.i, ptr @.str.48, i32 3)
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %min_fw_str.i.i, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %238) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then50.i.i
  %call.pn.i.i = phi i32 [ 2, %if.then50.i.i ], [ %call56.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.pn.i.i)
  %cmp47.i.i = icmp ult i32 %call.pn.i.i, 32
  br i1 %cmp47.i.i, label %for.body.i.i.1, label %for.inc.i.i.wlcore_validate_fw_ver.exit.i_crit_edge

for.inc.i.i.wlcore_validate_fw_ver.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_validate_fw_ver.exit.i

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %arrayidx48.i.i.1 = getelementptr i32, ptr %cond.i.i, i32 1
  %240 = ptrtoint ptr %arrayidx48.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx48.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %241)
  %cmp49.i.i.1 = icmp eq i32 %241, -1
  %add.ptr.i38.i.1 = getelementptr i8, ptr %min_fw_str.i.i, i32 %call.pn.i.i
  %sub.i.i.1 = sub nuw nsw i32 32, %call.pn.i.i
  br i1 %cmp49.i.i.1, label %if.then50.i.i.1, label %if.else.i.i.1

if.else.i.i.1:                                    ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.1, i32 noundef %sub.i.i.1, ptr noundef nonnull @.str.49, i32 noundef %241) #9
  br label %for.inc.i.i.1

if.then50.i.i.1:                                  ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39.i.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.1, i32 noundef %sub.i.i.1, ptr noundef nonnull @.str.48) #9
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %if.then50.i.i.1, %if.else.i.i.1
  %call.pn.i.i.1 = phi i32 [ %call.i39.i.1, %if.then50.i.i.1 ], [ %call56.i.i.1, %if.else.i.i.1 ]
  %off.1.i.i.1 = add i32 %call.pn.i.i.1, %call.pn.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %off.1.i.i.1)
  %cmp47.i.i.1 = icmp ult i32 %off.1.i.i.1, 32
  br i1 %cmp47.i.i.1, label %for.body.i.i.2, label %for.inc.i.i.1.wlcore_validate_fw_ver.exit.i_crit_edge

for.inc.i.i.1.wlcore_validate_fw_ver.exit.i_crit_edge: ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_validate_fw_ver.exit.i

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %arrayidx48.i.i.2 = getelementptr i32, ptr %cond.i.i, i32 2
  %242 = ptrtoint ptr %arrayidx48.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx48.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %243)
  %cmp49.i.i.2 = icmp eq i32 %243, -1
  %add.ptr.i38.i.2 = getelementptr i8, ptr %min_fw_str.i.i, i32 %off.1.i.i.1
  %sub.i.i.2 = sub nuw nsw i32 32, %off.1.i.i.1
  br i1 %cmp49.i.i.2, label %if.then50.i.i.2, label %if.else.i.i.2

if.else.i.i.2:                                    ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.2, i32 noundef %sub.i.i.2, ptr noundef nonnull @.str.49, i32 noundef %243) #9
  br label %for.inc.i.i.2

if.then50.i.i.2:                                  ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39.i.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.2, i32 noundef %sub.i.i.2, ptr noundef nonnull @.str.48) #9
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %if.then50.i.i.2, %if.else.i.i.2
  %call.pn.i.i.2 = phi i32 [ %call.i39.i.2, %if.then50.i.i.2 ], [ %call56.i.i.2, %if.else.i.i.2 ]
  %off.1.i.i.2 = add i32 %call.pn.i.i.2, %off.1.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %off.1.i.i.2)
  %cmp47.i.i.2 = icmp ult i32 %off.1.i.i.2, 32
  br i1 %cmp47.i.i.2, label %for.body.i.i.3, label %for.inc.i.i.2.wlcore_validate_fw_ver.exit.i_crit_edge

for.inc.i.i.2.wlcore_validate_fw_ver.exit.i_crit_edge: ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_validate_fw_ver.exit.i

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %arrayidx48.i.i.3 = getelementptr i32, ptr %cond.i.i, i32 3
  %244 = ptrtoint ptr %arrayidx48.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx48.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %245)
  %cmp49.i.i.3 = icmp eq i32 %245, -1
  %add.ptr.i38.i.3 = getelementptr i8, ptr %min_fw_str.i.i, i32 %off.1.i.i.2
  %sub.i.i.3 = sub nuw nsw i32 32, %off.1.i.i.2
  br i1 %cmp49.i.i.3, label %if.then50.i.i.3, label %if.else.i.i.3

if.else.i.i.3:                                    ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.3, i32 noundef %sub.i.i.3, ptr noundef nonnull @.str.49, i32 noundef %245) #9
  br label %for.inc.i.i.3

if.then50.i.i.3:                                  ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39.i.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.3, i32 noundef %sub.i.i.3, ptr noundef nonnull @.str.48) #9
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %if.then50.i.i.3, %if.else.i.i.3
  %call.pn.i.i.3 = phi i32 [ %call.i39.i.3, %if.then50.i.i.3 ], [ %call56.i.i.3, %if.else.i.i.3 ]
  %off.1.i.i.3 = add i32 %call.pn.i.i.3, %off.1.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %off.1.i.i.3)
  %cmp47.i.i.3 = icmp ult i32 %off.1.i.i.3, 32
  br i1 %cmp47.i.i.3, label %for.body.i.i.4, label %for.inc.i.i.3.wlcore_validate_fw_ver.exit.i_crit_edge

for.inc.i.i.3.wlcore_validate_fw_ver.exit.i_crit_edge: ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %wlcore_validate_fw_ver.exit.i

for.body.i.i.4:                                   ; preds = %for.inc.i.i.3
  %arrayidx48.i.i.4 = getelementptr i32, ptr %cond.i.i, i32 4
  %246 = ptrtoint ptr %arrayidx48.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx48.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %247)
  %cmp49.i.i.4 = icmp eq i32 %247, -1
  %add.ptr.i38.i.4 = getelementptr i8, ptr %min_fw_str.i.i, i32 %off.1.i.i.3
  %sub.i.i.4 = sub nuw nsw i32 32, %off.1.i.i.3
  br i1 %cmp49.i.i.4, label %if.then50.i.i.4, label %if.else.i.i.4

if.else.i.i.4:                                    ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.4, i32 noundef %sub.i.i.4, ptr noundef nonnull @.str.49, i32 noundef %247) #9
  br label %wlcore_validate_fw_ver.exit.i

if.then50.i.i.4:                                  ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i39.i.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i38.i.4, i32 noundef %sub.i.i.4, ptr noundef nonnull @.str.48) #9
  br label %wlcore_validate_fw_ver.exit.i

wlcore_validate_fw_ver.exit.i:                    ; preds = %if.then50.i.i.4, %if.else.i.i.4, %for.inc.i.i.3.wlcore_validate_fw_ver.exit.i_crit_edge, %for.inc.i.i.2.wlcore_validate_fw_ver.exit.i_crit_edge, %for.inc.i.i.1.wlcore_validate_fw_ver.exit.i_crit_edge, %for.inc.i.i.wlcore_validate_fw_ver.exit.i_crit_edge
  %248 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %fw_ver.i.i, align 4
  %250 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx11.i.i, align 4
  %252 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx14.i.i, align 4
  %254 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx17.i.i, align 4
  %256 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx20.i.i, align 4
  %call65.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %249, i32 noundef %251, i32 noundef %253, i32 noundef %255, i32 noundef %257, ptr noundef nonnull %min_fw_str.i.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min_fw_str.i.i) #9
  br label %wlcore_boot_static_data.exit.thread357

if.end11.i:                                       ; preds = %land.lhs.true40.i.i.if.end11.i_crit_edge, %land.lhs.true37.i.i.if.end11.i_crit_edge, %lor.lhs.false.i.i.if.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min_fw_str.i.i) #9
  %258 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ops.i.i.i, align 4
  %handle_static_data.i.i = getelementptr inbounds %struct.wlcore_ops, ptr %259, i32 0, i32 27
  %260 = ptrtoint ptr %handle_static_data.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %handle_static_data.i.i, align 4
  %tobool.not.i.i327 = icmp eq ptr %261, null
  br i1 %tobool.not.i.i327, label %wlcore_boot_static_data.exit.thread360, label %wlcore_boot_static_data.exit

wlcore_boot_static_data.exit.thread360:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %if.end147

wlcore_boot_static_data.exit.thread357:           ; preds = %wlcore_validate_fw_ver.exit.i, %wlcore_boot_parse_fw_ver.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge, %wlcore_boot_parse_fw_ver.exit.thread.i, %wlcore_read.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge, %do.end.i.i.i317, %if.end.i314.wlcore_boot_static_data.exit.thread357_crit_edge
  %ret.0.i328.ph = phi i32 [ -5, %if.end.i314.wlcore_boot_static_data.exit.thread357_crit_edge ], [ -5, %do.end.i.i.i317 ], [ -22, %wlcore_boot_parse_fw_ver.exit.thread.i ], [ -22, %wlcore_validate_fw_ver.exit.i ], [ %call.i.i.i, %wlcore_boot_parse_fw_ver.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge ], [ %call27.i.i.i320, %wlcore_read.exit.i.wlcore_boot_static_data.exit.thread357_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %do.end144

wlcore_boot_static_data.exit:                     ; preds = %if.end11.i
  %call.i41.i = tail call i32 %261(ptr noundef %wl, ptr noundef nonnull %call9.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp140 = icmp slt i32 %call.i41.i, 0
  br i1 %cmp140, label %wlcore_boot_static_data.exit.do.end144_crit_edge, label %wlcore_boot_static_data.exit.if.end147_crit_edge

wlcore_boot_static_data.exit.if.end147_crit_edge: ; preds = %wlcore_boot_static_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

wlcore_boot_static_data.exit.do.end144_crit_edge: ; preds = %wlcore_boot_static_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end144

do.end144:                                        ; preds = %wlcore_boot_static_data.exit.do.end144_crit_edge, %wlcore_boot_static_data.exit.thread357, %do.end138.do.end144_crit_edge
  %ret.1.i356 = phi i32 [ %call.i41.i, %wlcore_boot_static_data.exit.do.end144_crit_edge ], [ %ret.0.i328.ph, %wlcore_boot_static_data.exit.thread357 ], [ -12, %do.end138.do.end144_crit_edge ]
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end147:                                        ; preds = %wlcore_boot_static_data.exit.if.end147_crit_edge, %wlcore_boot_static_data.exit.thread360
  %call148 = tail call i32 @wl1271_event_unmask(ptr noundef %wl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %do.end153, label %if.end156

do.end153:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end156:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %262 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ptable, align 8
  %arrayidx158 = getelementptr %struct.wlcore_partition_set, ptr %263, i32 1
  %call159 = tail call i32 @wlcore_set_partition(ptr noundef %wl, ptr noundef %arrayidx158) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end156, %do.end153, %do.end144, %wlcore_raw_read.exit.i.i300.cleanup_crit_edge, %do.end.i.i.i289, %do.end96.cleanup_crit_edge, %wlcore_raw_read.exit.i.i275.cleanup_crit_edge, %do.end.i.i.i264, %if.end62.cleanup_crit_edge, %do.end59, %wlcore_write_reg.exit.cleanup_crit_edge, %do.end.i.i.i244, %if.then48.cleanup_crit_edge, %do.end43, %wlcore_raw_read.exit.i.i230.cleanup_crit_edge, %do.end.i.i.i219, %while.body.cleanup_crit_edge, %do.end30, %wlcore_raw_read.exit.i.i.cleanup_crit_edge, %do.end.i.i.i, %if.end4.cleanup_crit_edge, %wl1271_boot_set_ecpu_ctrl.exit.cleanup_crit_edge, %do.end.i.i.i10.i, %if.end.i.cleanup_crit_edge, %wlcore_raw_read.exit.i.i.i.cleanup_crit_edge, %do.end.i.i.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end30 ], [ -5, %do.end43 ], [ -5, %do.end59 ], [ %ret.1.i356, %do.end144 ], [ %call148, %do.end153 ], [ %call159, %if.end156 ], [ %call, %entry.cleanup_crit_edge ], [ %call27.i.i.i13.i, %wl1271_boot_set_ecpu_ctrl.exit.cleanup_crit_edge ], [ %call27.i.i.i247, %wlcore_write_reg.exit.cleanup_crit_edge ], [ %call27.i.i.i.i, %wlcore_raw_read.exit.i.i.i.cleanup_crit_edge ], [ -5, %do.end.i.i.i.i ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %do.end.i.i.i10.i ], [ -5, %if.end4.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ %call27.i.i.i, %wlcore_raw_read.exit.i.i.cleanup_crit_edge ], [ -5, %do.end.i.i.i219 ], [ -5, %do.end.i.i.i244 ], [ -5, %if.then48.cleanup_crit_edge ], [ -5, %if.end62.cleanup_crit_edge ], [ -5, %do.end.i.i.i264 ], [ %call27.i.i.i267, %wlcore_raw_read.exit.i.i275.cleanup_crit_edge ], [ -5, %do.end96.cleanup_crit_edge ], [ -5, %do.end.i.i.i289 ], [ %call27.i.i.i292, %wlcore_raw_read.exit.i.i300.cleanup_crit_edge ], [ %call27.i.i.i222, %wlcore_raw_read.exit.i.i230.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1271_event_unmask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_translate_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 248, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug352, !1, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 257, i32 4}
!8 = !{ptr @wlcore_boot_upload_firmware._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wlcore_boot_upload_firmware._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 260, i32 3}
!12 = !{ptr @wlcore_boot_upload_firmware.__UNIQUE_ID_ddebug353, !11, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!13 = !{ptr @__ksymtab_wlcore_boot_upload_firmware, !14, !"__ksymtab_wlcore_boot_upload_firmware", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 270, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 276, i32 25}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 284, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wlcore_boot_upload_nvs._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @wlcore_boot_upload_nvs._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 308, i32 4}
!24 = !{ptr @wlcore_boot_upload_nvs._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wlcore_boot_upload_nvs._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @wlcore_boot_upload_nvs._entry.12, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 327, i32 4}
!28 = !{ptr @wlcore_boot_upload_nvs._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 380, i32 4}
!31 = !{ptr @wlcore_boot_upload_nvs.__UNIQUE_ID_ddebug354, !30, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 428, i32 2}
!34 = !{ptr @wlcore_boot_upload_nvs._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wlcore_boot_upload_nvs._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_wlcore_boot_upload_nvs, !37, !"__ksymtab_wlcore_boot_upload_nvs", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 431, i32 1}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 451, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug355, !39, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 454, i32 3}
!44 = !{ptr @wlcore_boot_run_firmware._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wlcore_boot_run_firmware._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 467, i32 4}
!48 = !{ptr @wlcore_boot_run_firmware._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wlcore_boot_run_firmware._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 482, i32 3}
!52 = !{ptr @wlcore_boot_run_firmware._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wlcore_boot_run_firmware._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 492, i32 2}
!56 = !{ptr @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug356, !55, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 501, i32 2}
!59 = !{ptr @wlcore_boot_run_firmware.__UNIQUE_ID_ddebug357, !58, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 506, i32 3}
!62 = !{ptr @wlcore_boot_run_firmware._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wlcore_boot_run_firmware._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 518, i32 3}
!66 = !{ptr @wlcore_boot_run_firmware._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wlcore_boot_run_firmware._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__ksymtab_wlcore_boot_run_firmware, !69, !"__ksymtab_wlcore_boot_run_firmware", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 528, i32 1}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 173, i32 2}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug348, !71, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 175, i32 2}
!76 = !{ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug349, !75, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 179, i32 3}
!79 = !{ptr @wl1271_boot_upload_firmware_chunk._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wl1271_boot_upload_firmware_chunk._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 185, i32 3}
!83 = !{ptr @wl1271_boot_upload_firmware_chunk._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wl1271_boot_upload_firmware_chunk._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 216, i32 3}
!87 = !{ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug350, !86, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 229, i32 2}
!90 = !{ptr @wl1271_boot_upload_firmware_chunk.__UNIQUE_ID_ddebug351, !89, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ti/wlcore/io.h", i32 51, i32 6}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 50, i32 40}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 56, i32 3}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wlcore_boot_parse_fw_ver._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @wlcore_boot_parse_fw_ver._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 113, i32 6}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 117, i32 6}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wlcore/boot.c", i32 119, i32 2}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wlcore_validate_fw_ver._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @wlcore_validate_fw_ver._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2148212841, i64 2148212846, i64 2148212859, i64 2148212903, i64 2148212937, i64 2148212958}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i8 0, i8 2}
