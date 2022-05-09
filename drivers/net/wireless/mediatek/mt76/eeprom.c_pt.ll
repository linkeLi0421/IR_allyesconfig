; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_get_of_eeprom\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_get_of_eeprom\09\09\09\09"
module asm "\09.long\09__crc_mt76_get_of_eeprom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_get_of_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_get_of_eeprom\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_get_of_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_eeprom_override\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_eeprom_override\09\09\09\09"
module asm "\09.long\09__crc_mt76_eeprom_override\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_eeprom_override:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_eeprom_override\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_eeprom_override:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_get_rate_power_limits\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_get_rate_power_limits\09\09\09\09"
module asm "\09.long\09__crc_mt76_get_rate_power_limits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_get_rate_power_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_get_rate_power_limits\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_get_rate_power_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_eeprom_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_eeprom_init\09\09\09\09"
module asm "\09.long\09__crc_mt76_eeprom_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_eeprom_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_eeprom_init\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_eeprom_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.mt76_power_limits = type { [4 x i8], [8 x i8], [4 x [10 x i8]], [7 x [12 x i8]] }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,eeprom-data\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,mtd-eeprom\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@mt76_get_of_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 72, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"reading EEPROM from mtd %s failed: %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt76_get_of_eeprom\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt76/eeprom.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76_get_of_eeprom._entry_ptr = internal global ptr @mt76_get_of_eeprom._entry, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_get_of_eeprom = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_get_of_eeprom = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_get_of_eeprom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_get_of_eeprom to i32), ptr @__kstrtab_mt76_get_of_eeprom, ptr @__kstrtabns_mt76_get_of_eeprom }, section "___ksymtab_gpl+mt76_get_of_eeprom", align 4
@mt76_eeprom_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 117, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid MAC address, using random address %pM\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt76_eeprom_override\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt76_eeprom_override._entry_ptr = internal global ptr @mt76_eeprom_override._entry, section ".printk_index", align 4
@__kstrtab_mt76_eeprom_override = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_eeprom_override = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_eeprom_override = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_eeprom_override to i32), ptr @__kstrtab_mt76_eeprom_override, ptr @__kstrtabns_mt76_eeprom_override }, section "___ksymtab_gpl+mt76_eeprom_override", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txpower-%cg\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rates-cck\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rates-ofdm\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rates-mcs\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rates-ru\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_get_rate_power_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_get_rate_power_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_get_rate_power_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_get_rate_power_limits to i32), ptr @__kstrtab_mt76_get_rate_power_limits, ptr @__kstrtabns_mt76_get_rate_power_limits }, section "___ksymtab_gpl+mt76_get_rate_power_limits", align 4
@__kstrtab_mt76_eeprom_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_eeprom_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_eeprom_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_eeprom_init to i32), ptr @__kstrtab_mt76_eeprom_init, ptr @__kstrtabns_mt76_eeprom_init }, section "___ksymtab_gpl+mt76_eeprom_init", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fcc\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"etsi\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"jp\00", [29 x i8] zeroinitializer }, align 32
@__const.mt76_find_power_limits_node.region_names = private unnamed_addr constant [4 x ptr] [ptr null, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power-limits\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"country\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"regdomain\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txs-delta\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 28, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 38, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 50, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 71, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 81, i32 47 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 115, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 311, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 322, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 326, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 331, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 336, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 142, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 141, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 143, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 151, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 156, i32 52 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 157, i32 49 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 193, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt76/eeprom.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 216, i32 30 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_mt76_eeprom_init, ptr @__ksymtab_mt76_eeprom_override, ptr @__ksymtab_mt76_get_of_eeprom, ptr @__ksymtab_mt76_get_rate_power_limits, ptr @mt76_eeprom_override._entry, ptr @mt76_eeprom_override._entry_ptr, ptr @mt76_get_of_eeprom._entry, ptr @mt76_get_of_eeprom._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_get_of_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_eeprom_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_get_of_eeprom(ptr nocapture noundef %dev, ptr noundef %eep, i32 %offset, i32 noundef %len) #0 align 64 {
entry:
  %size = alloca i32, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %size, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retlen, align 4, !annotation !65
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull %size) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %len)
  %cmp = icmp sgt i32 %7, %len
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %eep, ptr %call, i32 %7)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %size) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %incdec.ptr = getelementptr i32, ptr %call7, i32 1
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = call ptr @of_find_node_by_phandle(i32 noundef %10) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call ptr @of_get_property(ptr noundef nonnull %call15, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call15, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %part.0 = phi ptr [ %call19, %if.end18.if.end22_crit_edge ], [ %12, %if.then21 ]
  %call23 = call ptr @get_mtd_device_nm(ptr noundef %part.0) #7
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call23 to i32
  br label %out_put_node

if.end27:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp28 = icmp ult i32 %15, 5
  br i1 %cmp28, label %if.end27.out_put_node_crit_edge, label %if.end30

if.end27.out_put_node_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

if.end30:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr, align 4
  %conv = sext i32 %17 to i64
  %call32 = call i32 @mtd_read(ptr noundef %call23, i64 noundef %conv, i32 noundef %len, ptr noundef nonnull %retlen, ptr noundef %eep) #7
  call void @put_mtd_device(ptr noundef %call23) #7
  %18 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call32, label %do.end [
    i32 -117, label %if.end30.if.end40_crit_edge
    i32 0, label %if.end30.if.end40_crit_edge107
  ]

if.end30.if.end40_crit_edge107:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef %part.0, i32 noundef %call32) #10
  br label %out_put_node

if.end40:                                         ; preds = %if.end30.if.end40_crit_edge, %if.end30.if.end40_crit_edge107
  %21 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %len)
  %cmp41 = icmp ult i32 %22, %len
  br i1 %cmp41, label %if.end40.out_put_node_crit_edge, label %if.end44

if.end40.out_put_node_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_node

if.end44:                                         ; preds = %if.end40
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 8
  %of_node46 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %of_node46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node46, align 8
  %call.i = call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end44.if.end54_crit_edge, label %for.cond.preheader

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.cond.preheader:                               ; preds = %if.end44
  %and = and i32 %len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp50105 = icmp sgt i32 %and, 0
  br i1 %cmp50105, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end54_crit_edge

for.cond.preheader.if.end54_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0106 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %eep, i32 %i.0106
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #7
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %arrayidx, align 1
  %add = add nuw nsw i32 %i.0106, 2
  %cmp50 = icmp slt i32 %add, %and
  br i1 %cmp50, label %for.body.for.body_crit_edge, label %for.body.if.end54_crit_edge

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end54:                                         ; preds = %for.body.if.end54_crit_edge, %for.cond.preheader.if.end54_crit_edge, %if.end44.if.end54_crit_edge
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 8
  %call56 = call noalias ptr @devm_kstrdup(ptr noundef %32, ptr noundef %part.0, i32 noundef 3264) #7
  %test_mtd = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 57
  %33 = ptrtoint ptr %test_mtd to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call56, ptr %test_mtd, align 8
  %offset59 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 57, i32 1
  %34 = ptrtoint ptr %offset59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %17, ptr %offset59, align 4
  br label %out_put_node

out_put_node:                                     ; preds = %if.end54, %if.end40.out_put_node_crit_edge, %do.end, %if.end27.out_put_node_crit_edge, %if.then25
  %ret.1 = phi i32 [ %13, %if.then25 ], [ %call32, %do.end ], [ 0, %if.end54 ], [ -22, %if.end27.out_put_node_crit_edge ], [ -22, %if.end40.out_put_node_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end5, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %ret.1, %out_put_node ], [ -2, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -2, %if.end6.cleanup_crit_edge ], [ -2, %if.end10.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_eeprom_override(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %macaddr = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 13
  %call = tail call i32 @of_get_mac_address(ptr noundef %5, ptr noundef %macaddr) #7
  %6 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macaddr, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.mt76_phy, ptr %phy, i32 0, i32 13, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %is_valid_ether_addr.exit.if.end_crit_edge

is_valid_ether_addr.exit.if.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @get_random_bytes(ptr noundef %macaddr, i32 noundef 6) #7
  %11 = ptrtoint ptr %macaddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %macaddr, align 1
  %13 = and i8 %12, -4
  %14 = or i8 %13, 2
  store i8 %14, ptr %macaddr, align 1
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef %macaddr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %is_valid_ether_addr.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @mt76_get_rate_power_limits(ptr nocapture noundef readonly %phy, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %dest, i8 noundef signext %target_power) #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #7
  %drv = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 11
  %2 = call ptr @memset(ptr %name, i32 255, i32 16)
  %3 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv, align 16
  %mcs_rates2 = getelementptr inbounds %struct.mt76_driver_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %mcs_rates2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mcs_rates2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %narrow = select i1 %tobool.not, i8 10, i8 %6
  %spec.store.select = zext i8 %narrow to i32
  %7 = zext i8 %target_power to i32
  %8 = call ptr @memset(ptr %dest, i32 %7, i32 136)
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %region.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 48
  %13 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %region.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i = icmp ult i32 %14, 4
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [4 x ptr], ptr @__const.mt76_find_power_limits_node.region_names, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %region_name.0.i = phi ptr [ %16, %if.then.i ], [ null, %entry.if.end.i_crit_edge ]
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %12, ptr noundef nonnull @.str.20) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef null) #7
  %cmp6.not70.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.not70.i, label %if.end4.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %alpha2.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 47
  %tobool1.not.i39.i = icmp eq ptr %region_name.0.i, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fallback.073.i = phi ptr [ null, %for.body.lr.ph.i ], [ %fallback.1.i, %for.inc.i.for.body.i_crit_edge ]
  %cur.071.i = phi ptr [ %call5.i, %for.body.lr.ph.i ], [ %call18.i, %for.inc.i.for.body.i_crit_edge ]
  %call7.i = tail call ptr @of_find_property(ptr noundef nonnull %cur.071.i, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %call8.i = tail call ptr @of_find_property(ptr noundef nonnull %cur.071.i, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool9.not.i = icmp eq ptr %call7.i, null
  %tobool10.not.i = icmp eq ptr %call8.i, null
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  br i1 %tobool9.not.i, label %if.end12.i.lor.lhs.false.i_crit_edge, label %lor.lhs.false2.i.i

if.end12.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

lor.lhs.false2.i.i:                               ; preds = %if.end12.i
  %17 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %alpha2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false2.i.i.lor.lhs.false.i_crit_edge, label %lor.lhs.false2.i.i.while.cond.i.i_crit_edge

lor.lhs.false2.i.i.while.cond.i.i_crit_edge:      ; preds = %lor.lhs.false2.i.i
  br label %while.cond.i.i

lor.lhs.false2.i.i.lor.lhs.false.i_crit_edge:     ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %lor.lhs.false2.i.i.while.cond.i.i_crit_edge
  %cp.0.i.i = phi ptr [ %call.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ null, %lor.lhs.false2.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call ptr @of_prop_next_string(ptr noundef nonnull %call7.i, ptr noundef %cp.0.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not.i.i, label %while.cond.i.i.lor.lhs.false.i_crit_edge, label %while.body.i.i

while.cond.i.i.lor.lhs.false.i_crit_edge:         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call4.i.i = tail call i32 @strcasecmp(ptr noundef nonnull %call.i.i, ptr noundef nonnull %alpha2.i) #7
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %while.body.i.i.mt76_find_power_limits_node.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.mt76_find_power_limits_node.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_find_power_limits_node.exit

lor.lhs.false.i:                                  ; preds = %while.cond.i.i.lor.lhs.false.i_crit_edge, %lor.lhs.false2.i.i.lor.lhs.false.i_crit_edge, %if.end12.i.lor.lhs.false.i_crit_edge
  %or.cond.i40.i = or i1 %tobool1.not.i39.i, %tobool10.not.i
  br i1 %or.cond.i40.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false2.i42.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false2.i42.i:                             ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %region_name.0.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %region_name.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.i41.i = icmp eq i8 %20, 0
  br i1 %tobool3.not.i41.i, label %lor.lhs.false2.i42.i.for.inc.i_crit_edge, label %lor.lhs.false2.i42.i.while.cond.i46.i_crit_edge

lor.lhs.false2.i42.i.while.cond.i46.i_crit_edge:  ; preds = %lor.lhs.false2.i42.i
  br label %while.cond.i46.i

lor.lhs.false2.i42.i.for.inc.i_crit_edge:         ; preds = %lor.lhs.false2.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.cond.i46.i:                                 ; preds = %while.body.i49.i.while.cond.i46.i_crit_edge, %lor.lhs.false2.i42.i.while.cond.i46.i_crit_edge
  %cp.0.i43.i = phi ptr [ %call.i44.i, %while.body.i49.i.while.cond.i46.i_crit_edge ], [ null, %lor.lhs.false2.i42.i.while.cond.i46.i_crit_edge ]
  %call.i44.i = tail call ptr @of_prop_next_string(ptr noundef nonnull %call8.i, ptr noundef %cp.0.i43.i) #7
  %cmp.not.i45.i = icmp eq ptr %call.i44.i, null
  br i1 %cmp.not.i45.i, label %while.cond.i46.i.for.inc.i_crit_edge, label %while.body.i49.i

while.cond.i46.i.for.inc.i_crit_edge:             ; preds = %while.cond.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.body.i49.i:                                 ; preds = %while.cond.i46.i
  %call4.i47.i = tail call i32 @strcasecmp(ptr noundef nonnull %call.i44.i, ptr noundef nonnull %region_name.0.i) #7
  %tobool5.not.i48.i = icmp eq i32 %call4.i47.i, 0
  br i1 %tobool5.not.i48.i, label %while.body.i49.i.mt76_find_power_limits_node.exit_crit_edge, label %while.body.i49.i.while.cond.i46.i_crit_edge

while.body.i49.i.while.cond.i46.i_crit_edge:      ; preds = %while.body.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i46.i

while.body.i49.i.mt76_find_power_limits_node.exit_crit_edge: ; preds = %while.body.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_find_power_limits_node.exit

for.inc.i:                                        ; preds = %while.cond.i46.i.for.inc.i_crit_edge, %lor.lhs.false2.i42.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %fallback.1.i = phi ptr [ %cur.071.i, %for.body.i.for.inc.i_crit_edge ], [ %fallback.073.i, %lor.lhs.false2.i42.i.for.inc.i_crit_edge ], [ %fallback.073.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %fallback.073.i, %while.cond.i46.i.for.inc.i_crit_edge ]
  %call18.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef nonnull %cur.071.i) #7
  %cmp6.not.i = icmp eq ptr %call18.i, null
  br i1 %cmp6.not.i, label %for.inc.i.mt76_find_power_limits_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.mt76_find_power_limits_node.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_find_power_limits_node.exit

mt76_find_power_limits_node.exit:                 ; preds = %for.inc.i.mt76_find_power_limits_node.exit_crit_edge, %while.body.i49.i.mt76_find_power_limits_node.exit_crit_edge, %while.body.i.i.mt76_find_power_limits_node.exit_crit_edge
  %retval.2.i = phi ptr [ %cur.071.i, %while.body.i49.i.mt76_find_power_limits_node.exit_crit_edge ], [ %cur.071.i, %while.body.i.i.mt76_find_power_limits_node.exit_crit_edge ], [ %fallback.1.i, %for.inc.i.mt76_find_power_limits_node.exit_crit_edge ]
  %tobool4.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool4.not, label %mt76_find_power_limits_node.exit.cleanup_crit_edge, label %if.end6

mt76_find_power_limits_node.exit.cleanup_crit_edge: ; preds = %mt76_find_power_limits_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %mt76_find_power_limits_node.exit
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %22, label %if.end6.cleanup_crit_edge [
    i32 0, label %if.end6.sw.epilog_crit_edge
    i32 1, label %sw.bb8
    i32 3, label %sw.bb9
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %if.end6.sw.epilog_crit_edge
  %band.0 = phi i32 [ 54, %sw.bb9 ], [ 53, %sw.bb8 ], [ 50, %if.end6.sw.epilog_crit_edge ]
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %band.0)
  %call13 = call ptr @of_get_child_by_name(ptr noundef nonnull %retval.2.i, ptr noundef nonnull %name) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %if.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %call.i158 = call ptr @of_get_next_child(ptr noundef nonnull %call13, ptr noundef null) #7
  %cmp.not34.i = icmp eq ptr %call.i158, null
  br i1 %cmp.not34.i, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph.i159

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i159:                              ; preds = %if.end16
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  br label %for.body.i161

for.body.i161:                                    ; preds = %for.inc.i163.for.body.i161_crit_edge, %for.body.lr.ph.i159
  %cur.036.i = phi ptr [ %call.i158, %for.body.lr.ph.i159 ], [ %call12.i, %for.inc.i163.for.body.i161_crit_edge ]
  %call.i.i160 = call ptr @of_find_property(ptr noundef nonnull %cur.036.i, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i160, null
  br i1 %tobool.not.i.i, label %for.body.i161.for.inc.i163_crit_edge, label %lor.lhs.false.i.i

for.body.i161.for.inc.i163_crit_edge:             ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i163

lor.lhs.false.i.i:                                ; preds = %for.body.i161
  %value.i.i = getelementptr inbounds %struct.property, ptr %call.i.i160, i32 0, i32 2
  %24 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.for.inc.i163_crit_edge, label %lor.lhs.false2.i.i162

lor.lhs.false.i.i.for.inc.i163_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i163

lor.lhs.false2.i.i162:                            ; preds = %lor.lhs.false.i.i
  %length.i.i = getelementptr inbounds %struct.property, ptr %call.i.i160, i32 0, i32 1
  %26 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.i.i = icmp slt i32 %27, 8
  br i1 %cmp.i.i, label %lor.lhs.false2.i.i162.for.inc.i163_crit_edge, label %while.body.lr.ph.i

lor.lhs.false2.i.i162.for.inc.i163_crit_edge:     ; preds = %lor.lhs.false2.i.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i163

while.body.lr.ph.i:                               ; preds = %lor.lhs.false2.i.i162
  %28 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %29 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %val.033.i = phi ptr [ %25, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end11.i.while.body.i_crit_edge ]
  %len.232.i = phi i32 [ %27, %while.body.lr.ph.i ], [ %sub.i, %if.end11.i.while.body.i_crit_edge ]
  %30 = ptrtoint ptr %val.033.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp3.not.i = icmp ugt i32 %31, %conv.i
  br i1 %cmp3.not.i, label %while.body.i.if.end11.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %arrayidx7.i = getelementptr i32, ptr %val.033.i, i32 1
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i)
  %cmp8.not.i = icmp ult i32 %33, %conv.i
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %mt76_find_channel_node.exit

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %add.ptr.i = getelementptr i32, ptr %val.033.i, i32 2
  %sub.i = add i32 %len.232.i, -8
  %cmp2.i = icmp ugt i32 %sub.i, 7
  br i1 %cmp2.i, label %if.end11.i.while.body.i_crit_edge, label %if.end11.i.for.inc.i163_crit_edge

if.end11.i.for.inc.i163_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i163

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

for.inc.i163:                                     ; preds = %if.end11.i.for.inc.i163_crit_edge, %lor.lhs.false2.i.i162.for.inc.i163_crit_edge, %lor.lhs.false.i.i.for.inc.i163_crit_edge, %for.body.i161.for.inc.i163_crit_edge
  %call12.i = call ptr @of_get_next_child(ptr noundef nonnull %call13, ptr noundef nonnull %cur.036.i) #7
  %cmp.not.i = icmp eq ptr %call12.i, null
  br i1 %cmp.not.i, label %for.inc.i163.cleanup_crit_edge, label %for.inc.i163.for.body.i161_crit_edge

for.inc.i163.for.body.i161_crit_edge:             ; preds = %for.inc.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i161

for.inc.i163.cleanup_crit_edge:                   ; preds = %for.inc.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt76_find_channel_node.exit:                      ; preds = %land.lhs.true.i
  %tobool18.not = icmp eq ptr %cur.036.i, null
  br i1 %tobool18.not, label %mt76_find_channel_node.exit.cleanup_crit_edge, label %cond.false

mt76_find_channel_node.exit.cleanup_crit_edge:    ; preds = %mt76_find_channel_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %mt76_find_channel_node.exit
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 15
  %34 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %antenna_mask, align 8
  %conv88 = zext i8 %35 to i32
  %call.i164 = call i32 @__sw_hweight8(i32 noundef %conv88) #7
  %conv.i165 = and i32 %call.i164, 255
  %call.i.i166 = call ptr @of_find_property(ptr noundef nonnull %cur.036.i, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %tobool.not.i.i167 = icmp eq ptr %call.i.i166, null
  br i1 %tobool.not.i.i167, label %cond.false.mt76_get_txs_delta.exit_crit_edge, label %lor.lhs.false.i.i170

cond.false.mt76_get_txs_delta.exit_crit_edge:     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_get_txs_delta.exit

lor.lhs.false.i.i170:                             ; preds = %cond.false
  %value.i.i168 = getelementptr inbounds %struct.property, ptr %call.i.i166, i32 0, i32 2
  %36 = ptrtoint ptr %value.i.i168 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %value.i.i168, align 4
  %tobool1.not.i.i169 = icmp eq ptr %37, null
  br i1 %tobool1.not.i.i169, label %lor.lhs.false.i.i170.mt76_get_txs_delta.exit_crit_edge, label %lor.lhs.false2.i.i173

lor.lhs.false.i.i170.mt76_get_txs_delta.exit_crit_edge: ; preds = %lor.lhs.false.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_get_txs_delta.exit

lor.lhs.false2.i.i173:                            ; preds = %lor.lhs.false.i.i170
  %length.i.i171 = getelementptr inbounds %struct.property, ptr %call.i.i166, i32 0, i32 1
  %38 = ptrtoint ptr %length.i.i171 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i.i171, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i165, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %mul.i.i)
  %cmp.i.i172 = icmp slt i32 %39, %mul.i.i
  br i1 %cmp.i.i172, label %lor.lhs.false2.i.i173.mt76_get_txs_delta.exit_crit_edge, label %if.end.i176

lor.lhs.false2.i.i173.mt76_get_txs_delta.exit_crit_edge: ; preds = %lor.lhs.false2.i.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_get_txs_delta.exit

if.end.i176:                                      ; preds = %lor.lhs.false2.i.i173
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i174 = add nsw i32 %conv.i165, -1
  %arrayidx.i175 = getelementptr i32, ptr %37, i32 %sub.i174
  %40 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i175, align 4
  %conv2.i = trunc i32 %41 to i8
  br label %mt76_get_txs_delta.exit

mt76_get_txs_delta.exit:                          ; preds = %if.end.i176, %lor.lhs.false2.i.i173.mt76_get_txs_delta.exit_crit_edge, %lor.lhs.false.i.i170.mt76_get_txs_delta.exit_crit_edge, %cond.false.mt76_get_txs_delta.exit_crit_edge
  %retval.0.i = phi i8 [ %conv2.i, %if.end.i176 ], [ 0, %lor.lhs.false2.i.i173.mt76_get_txs_delta.exit_crit_edge ], [ 0, %lor.lhs.false.i.i170.mt76_get_txs_delta.exit_crit_edge ], [ 0, %cond.false.mt76_get_txs_delta.exit_crit_edge ]
  %call.i177 = call ptr @of_find_property(ptr noundef nonnull %cur.036.i, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.not.i178 = icmp eq ptr %call.i177, null
  br i1 %tobool.not.i178, label %mt76_get_txs_delta.exit.mt76_apply_array_limit.exit_crit_edge, label %lor.lhs.false.i179

mt76_get_txs_delta.exit.mt76_apply_array_limit.exit_crit_edge: ; preds = %mt76_get_txs_delta.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit

lor.lhs.false.i179:                               ; preds = %mt76_get_txs_delta.exit
  %value.i = getelementptr inbounds %struct.property, ptr %call.i177, i32 0, i32 2
  %42 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value.i, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i179.mt76_apply_array_limit.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i179.mt76_apply_array_limit.exit_crit_edge: ; preds = %lor.lhs.false.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i179
  %length.i = getelementptr inbounds %struct.property, ptr %call.i177, i32 0, i32 1
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %45)
  %cmp.i180 = icmp slt i32 %45, 16
  br i1 %cmp.i180, label %lor.lhs.false2.i.mt76_apply_array_limit.exit_crit_edge, label %for.body.i185.preheader

lor.lhs.false2.i.mt76_apply_array_limit.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit

for.body.i185.preheader:                          ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %48 = trunc i32 %47 to i8
  %conv1.i = add i8 %retval.0.i, %48
  %49 = call i8 @llvm.smin.i8(i8 %conv1.i, i8 %target_power) #7
  %50 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %dest, align 1
  %arrayidx.i184.1 = getelementptr i32, ptr %43, i32 1
  %51 = ptrtoint ptr %arrayidx.i184.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i184.1, align 4
  %53 = trunc i32 %52 to i8
  %conv1.i.1 = add i8 %retval.0.i, %53
  %54 = call i8 @llvm.smin.i8(i8 %conv1.i.1, i8 %target_power) #7
  %arrayidx9.i.1 = getelementptr i8, ptr %dest, i32 1
  %55 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx9.i.1, align 1
  %56 = call i8 @llvm.smax.i8(i8 %49, i8 %54)
  %arrayidx.i184.2 = getelementptr i32, ptr %43, i32 2
  %57 = ptrtoint ptr %arrayidx.i184.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i184.2, align 4
  %59 = trunc i32 %58 to i8
  %conv1.i.2 = add i8 %retval.0.i, %59
  %60 = call i8 @llvm.smin.i8(i8 %conv1.i.2, i8 %target_power) #7
  %arrayidx9.i.2 = getelementptr i8, ptr %dest, i32 2
  %61 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx9.i.2, align 1
  %62 = call i8 @llvm.smax.i8(i8 %56, i8 %60)
  %arrayidx.i184.3 = getelementptr i32, ptr %43, i32 3
  %63 = ptrtoint ptr %arrayidx.i184.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i184.3, align 4
  %65 = trunc i32 %64 to i8
  %conv1.i.3 = add i8 %retval.0.i, %65
  %66 = call i8 @llvm.smin.i8(i8 %conv1.i.3, i8 %target_power) #7
  %arrayidx9.i.3 = getelementptr i8, ptr %dest, i32 3
  %67 = ptrtoint ptr %arrayidx9.i.3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx9.i.3, align 1
  %68 = call i8 @llvm.smax.i8(i8 %62, i8 %66)
  %69 = call i8 @llvm.smax.i8(i8 %68, i8 0)
  br label %mt76_apply_array_limit.exit

mt76_apply_array_limit.exit:                      ; preds = %for.body.i185.preheader, %lor.lhs.false2.i.mt76_apply_array_limit.exit_crit_edge, %lor.lhs.false.i179.mt76_apply_array_limit.exit_crit_edge, %mt76_get_txs_delta.exit.mt76_apply_array_limit.exit_crit_edge
  %max_power.1 = phi i8 [ 0, %lor.lhs.false2.i.mt76_apply_array_limit.exit_crit_edge ], [ 0, %lor.lhs.false.i179.mt76_apply_array_limit.exit_crit_edge ], [ 0, %mt76_get_txs_delta.exit.mt76_apply_array_limit.exit_crit_edge ], [ %69, %for.body.i185.preheader ]
  %call.i186 = call ptr @of_find_property(ptr noundef nonnull %cur.036.i, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.not.i187 = icmp eq ptr %call.i186, null
  br i1 %tobool.not.i187, label %mt76_apply_array_limit.exit.mt76_apply_array_limit.exit205_crit_edge, label %lor.lhs.false.i190

mt76_apply_array_limit.exit.mt76_apply_array_limit.exit205_crit_edge: ; preds = %mt76_apply_array_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit205

lor.lhs.false.i190:                               ; preds = %mt76_apply_array_limit.exit
  %value.i188 = getelementptr inbounds %struct.property, ptr %call.i186, i32 0, i32 2
  %70 = ptrtoint ptr %value.i188 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %value.i188, align 4
  %tobool1.not.i189 = icmp eq ptr %71, null
  br i1 %tobool1.not.i189, label %lor.lhs.false.i190.mt76_apply_array_limit.exit205_crit_edge, label %lor.lhs.false2.i193

lor.lhs.false.i190.mt76_apply_array_limit.exit205_crit_edge: ; preds = %lor.lhs.false.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit205

lor.lhs.false2.i193:                              ; preds = %lor.lhs.false.i190
  %length.i191 = getelementptr inbounds %struct.property, ptr %call.i186, i32 0, i32 1
  %72 = ptrtoint ptr %length.i191 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %73)
  %cmp.i192 = icmp slt i32 %73, 32
  br i1 %cmp.i192, label %lor.lhs.false2.i193.mt76_apply_array_limit.exit205_crit_edge, label %mt76_get_of_array.exit196

lor.lhs.false2.i193.mt76_apply_array_limit.exit205_crit_edge: ; preds = %lor.lhs.false2.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit205

mt76_get_of_array.exit196:                        ; preds = %lor.lhs.false2.i193
  call void @__sanitizer_cov_trace_pc() #9
  %ofdm = getelementptr inbounds %struct.mt76_power_limits, ptr %dest, i32 0, i32 1
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  %76 = trunc i32 %75 to i8
  %conv1.i200 = add i8 %retval.0.i, %76
  %77 = call i8 @llvm.smin.i8(i8 %conv1.i200, i8 %target_power) #7
  %78 = ptrtoint ptr %ofdm to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %ofdm, align 1
  %79 = call i8 @llvm.smax.i8(i8 %max_power.1, i8 %77) #7
  %arrayidx.i199.1 = getelementptr i32, ptr %71, i32 1
  %80 = ptrtoint ptr %arrayidx.i199.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i199.1, align 4
  %82 = trunc i32 %81 to i8
  %conv1.i200.1 = add i8 %retval.0.i, %82
  %83 = call i8 @llvm.smin.i8(i8 %conv1.i200.1, i8 %target_power) #7
  %arrayidx9.i201.1 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %arrayidx9.i201.1 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx9.i201.1, align 1
  %85 = call i8 @llvm.smax.i8(i8 %79, i8 %83) #7
  %arrayidx.i199.2 = getelementptr i32, ptr %71, i32 2
  %86 = ptrtoint ptr %arrayidx.i199.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i199.2, align 4
  %88 = trunc i32 %87 to i8
  %conv1.i200.2 = add i8 %retval.0.i, %88
  %89 = call i8 @llvm.smin.i8(i8 %conv1.i200.2, i8 %target_power) #7
  %arrayidx9.i201.2 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %arrayidx9.i201.2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx9.i201.2, align 1
  %91 = call i8 @llvm.smax.i8(i8 %85, i8 %89) #7
  %arrayidx.i199.3 = getelementptr i32, ptr %71, i32 3
  %92 = ptrtoint ptr %arrayidx.i199.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i199.3, align 4
  %94 = trunc i32 %93 to i8
  %conv1.i200.3 = add i8 %retval.0.i, %94
  %95 = call i8 @llvm.smin.i8(i8 %conv1.i200.3, i8 %target_power) #7
  %arrayidx9.i201.3 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 3
  %96 = ptrtoint ptr %arrayidx9.i201.3 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx9.i201.3, align 1
  %97 = call i8 @llvm.smax.i8(i8 %91, i8 %95) #7
  %arrayidx.i199.4 = getelementptr i32, ptr %71, i32 4
  %98 = ptrtoint ptr %arrayidx.i199.4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i199.4, align 4
  %100 = trunc i32 %99 to i8
  %conv1.i200.4 = add i8 %retval.0.i, %100
  %101 = call i8 @llvm.smin.i8(i8 %conv1.i200.4, i8 %target_power) #7
  %arrayidx9.i201.4 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %arrayidx9.i201.4 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx9.i201.4, align 1
  %103 = call i8 @llvm.smax.i8(i8 %97, i8 %101) #7
  %arrayidx.i199.5 = getelementptr i32, ptr %71, i32 5
  %104 = ptrtoint ptr %arrayidx.i199.5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i199.5, align 4
  %106 = trunc i32 %105 to i8
  %conv1.i200.5 = add i8 %retval.0.i, %106
  %107 = call i8 @llvm.smin.i8(i8 %conv1.i200.5, i8 %target_power) #7
  %arrayidx9.i201.5 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 5
  %108 = ptrtoint ptr %arrayidx9.i201.5 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx9.i201.5, align 1
  %109 = call i8 @llvm.smax.i8(i8 %103, i8 %107) #7
  %arrayidx.i199.6 = getelementptr i32, ptr %71, i32 6
  %110 = ptrtoint ptr %arrayidx.i199.6 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i199.6, align 4
  %112 = trunc i32 %111 to i8
  %conv1.i200.6 = add i8 %retval.0.i, %112
  %113 = call i8 @llvm.smin.i8(i8 %conv1.i200.6, i8 %target_power) #7
  %arrayidx9.i201.6 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 6
  %114 = ptrtoint ptr %arrayidx9.i201.6 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx9.i201.6, align 1
  %115 = call i8 @llvm.smax.i8(i8 %109, i8 %113) #7
  %arrayidx.i199.7 = getelementptr i32, ptr %71, i32 7
  %116 = ptrtoint ptr %arrayidx.i199.7 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i199.7, align 4
  %118 = trunc i32 %117 to i8
  %conv1.i200.7 = add i8 %retval.0.i, %118
  %119 = call i8 @llvm.smin.i8(i8 %conv1.i200.7, i8 %target_power) #7
  %arrayidx9.i201.7 = getelementptr %struct.mt76_power_limits, ptr %dest, i32 0, i32 1, i32 7
  %120 = ptrtoint ptr %arrayidx9.i201.7 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx9.i201.7, align 1
  %121 = call i8 @llvm.smax.i8(i8 %115, i8 %119) #7
  br label %mt76_apply_array_limit.exit205

mt76_apply_array_limit.exit205:                   ; preds = %mt76_get_of_array.exit196, %lor.lhs.false2.i193.mt76_apply_array_limit.exit205_crit_edge, %lor.lhs.false.i190.mt76_apply_array_limit.exit205_crit_edge, %mt76_apply_array_limit.exit.mt76_apply_array_limit.exit205_crit_edge
  %max_power.3 = phi i8 [ %max_power.1, %lor.lhs.false2.i193.mt76_apply_array_limit.exit205_crit_edge ], [ %max_power.1, %lor.lhs.false.i190.mt76_apply_array_limit.exit205_crit_edge ], [ %max_power.1, %mt76_apply_array_limit.exit.mt76_apply_array_limit.exit205_crit_edge ], [ %121, %mt76_get_of_array.exit196 ]
  %call.i206 = call ptr @of_find_property(ptr noundef nonnull %cur.036.i, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %tobool.not.i207 = icmp eq ptr %call.i206, null
  br i1 %tobool.not.i207, label %mt76_apply_array_limit.exit205.mt76_apply_multi_array_limit.exit_crit_edge, label %lor.lhs.false.i210

mt76_apply_array_limit.exit205.mt76_apply_multi_array_limit.exit_crit_edge: ; preds = %mt76_apply_array_limit.exit205
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_multi_array_limit.exit

lor.lhs.false.i210:                               ; preds = %mt76_apply_array_limit.exit205
  %value.i208 = getelementptr inbounds %struct.property, ptr %call.i206, i32 0, i32 2
  %122 = ptrtoint ptr %value.i208 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %value.i208, align 4
  %tobool1.not.i209 = icmp eq ptr %123, null
  br i1 %tobool1.not.i209, label %lor.lhs.false.i210.mt76_apply_multi_array_limit.exit_crit_edge, label %lor.lhs.false2.i213

lor.lhs.false.i210.mt76_apply_multi_array_limit.exit_crit_edge: ; preds = %lor.lhs.false.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_multi_array_limit.exit

lor.lhs.false2.i213:                              ; preds = %lor.lhs.false.i210
  %length.i211 = getelementptr inbounds %struct.property, ptr %call.i206, i32 0, i32 1
  %124 = ptrtoint ptr %length.i211 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %length.i211, align 4
  %add96 = shl nuw nsw i32 %spec.store.select, 2
  %mul.i = add nuw nsw i32 %add96, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %mul.i)
  %cmp.i212 = icmp slt i32 %125, %mul.i
  br i1 %cmp.i212, label %lor.lhs.false2.i213.mt76_apply_multi_array_limit.exit_crit_edge, label %if.end.i218

lor.lhs.false2.i213.mt76_apply_multi_array_limit.exit_crit_edge: ; preds = %lor.lhs.false2.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_multi_array_limit.exit

if.end.i218:                                      ; preds = %lor.lhs.false2.i213
  %mcs = getelementptr inbounds %struct.mt76_power_limits, ptr %dest, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %125)
  %cmp234.i = icmp ult i32 %125, 44
  br i1 %cmp234.i, label %if.end.i218.mt76_apply_multi_array_limit.exit_crit_edge, label %if.end5.lr.ph.i

if.end.i218.mt76_apply_multi_array_limit.exit_crit_edge: ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_multi_array_limit.exit

if.end5.lr.ph.i:                                  ; preds = %if.end.i218
  %div32.i = lshr i32 %125, 2
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %123, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.inc.i227.if.end5.i_crit_edge, %if.end5.lr.ph.i
  %max_power.4 = phi i8 [ %max_power.3, %if.end5.lr.ph.i ], [ %max_power.6, %for.inc.i227.if.end5.i_crit_edge ]
  %cur.039.i = phi i32 [ %127, %if.end5.lr.ph.i ], [ %cur.1.i, %for.inc.i227.if.end5.i_crit_edge ]
  %i.038.i = phi i32 [ 0, %if.end5.lr.ph.i ], [ %inc.i223, %for.inc.i227.if.end5.i_crit_edge ]
  %data.addr.037.i = phi ptr [ %123, %if.end5.lr.ph.i ], [ %data.addr.1.i, %for.inc.i227.if.end5.i_crit_edge ]
  %len.addr.036.i = phi i32 [ %div32.i, %if.end5.lr.ph.i ], [ %len.addr.1.i, %for.inc.i227.if.end5.i_crit_edge ]
  %add.ptr6.i = getelementptr i32, ptr %data.addr.037.i, i32 1
  %tobool.not.i.i221.not = icmp eq ptr %add.ptr6.i, null
  br i1 %tobool.not.i.i221.not, label %if.end5.i.mt76_apply_array_limit.exit.i_crit_edge, label %for.body.i.i.preheader

if.end5.i.mt76_apply_array_limit.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit.i

for.body.i.i.preheader:                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i219 = mul nuw nsw i32 %i.038.i, 10
  %add.ptr.i220 = getelementptr i8, ptr %mcs, i32 %mul.i219
  %128 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr6.i, align 4
  %130 = trunc i32 %129 to i8
  %conv1.i.i = add i8 %retval.0.i, %130
  %131 = call i8 @llvm.smin.i8(i8 %conv1.i.i, i8 %target_power) #7
  %132 = ptrtoint ptr %add.ptr.i220 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %add.ptr.i220, align 1
  %133 = call i8 @llvm.smax.i8(i8 %max_power.4, i8 %131) #7
  %arrayidx.i.i.1 = getelementptr i32, ptr %data.addr.037.i, i32 2
  %134 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i.i.1, align 4
  %136 = trunc i32 %135 to i8
  %conv1.i.i.1 = add i8 %retval.0.i, %136
  %137 = call i8 @llvm.smin.i8(i8 %conv1.i.i.1, i8 %target_power) #7
  %arrayidx9.i.i.1 = getelementptr i8, ptr %add.ptr.i220, i32 1
  %138 = ptrtoint ptr %arrayidx9.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx9.i.i.1, align 1
  %139 = call i8 @llvm.smax.i8(i8 %133, i8 %137) #7
  %arrayidx.i.i.2 = getelementptr i32, ptr %data.addr.037.i, i32 3
  %140 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i.2, align 4
  %142 = trunc i32 %141 to i8
  %conv1.i.i.2 = add i8 %retval.0.i, %142
  %143 = call i8 @llvm.smin.i8(i8 %conv1.i.i.2, i8 %target_power) #7
  %arrayidx9.i.i.2 = getelementptr i8, ptr %add.ptr.i220, i32 2
  %144 = ptrtoint ptr %arrayidx9.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx9.i.i.2, align 1
  %145 = call i8 @llvm.smax.i8(i8 %139, i8 %143) #7
  %arrayidx.i.i.3 = getelementptr i32, ptr %data.addr.037.i, i32 4
  %146 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i.i.3, align 4
  %148 = trunc i32 %147 to i8
  %conv1.i.i.3 = add i8 %retval.0.i, %148
  %149 = call i8 @llvm.smin.i8(i8 %conv1.i.i.3, i8 %target_power) #7
  %arrayidx9.i.i.3 = getelementptr i8, ptr %add.ptr.i220, i32 3
  %150 = ptrtoint ptr %arrayidx9.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx9.i.i.3, align 1
  %151 = call i8 @llvm.smax.i8(i8 %145, i8 %149) #7
  %arrayidx.i.i.4 = getelementptr i32, ptr %data.addr.037.i, i32 5
  %152 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i.i.4, align 4
  %154 = trunc i32 %153 to i8
  %conv1.i.i.4 = add i8 %retval.0.i, %154
  %155 = call i8 @llvm.smin.i8(i8 %conv1.i.i.4, i8 %target_power) #7
  %arrayidx9.i.i.4 = getelementptr i8, ptr %add.ptr.i220, i32 4
  %156 = ptrtoint ptr %arrayidx9.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx9.i.i.4, align 1
  %157 = call i8 @llvm.smax.i8(i8 %151, i8 %155) #7
  %arrayidx.i.i.5 = getelementptr i32, ptr %data.addr.037.i, i32 6
  %158 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i.i.5, align 4
  %160 = trunc i32 %159 to i8
  %conv1.i.i.5 = add i8 %retval.0.i, %160
  %161 = call i8 @llvm.smin.i8(i8 %conv1.i.i.5, i8 %target_power) #7
  %arrayidx9.i.i.5 = getelementptr i8, ptr %add.ptr.i220, i32 5
  %162 = ptrtoint ptr %arrayidx9.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx9.i.i.5, align 1
  %163 = call i8 @llvm.smax.i8(i8 %157, i8 %161) #7
  %arrayidx.i.i.6 = getelementptr i32, ptr %data.addr.037.i, i32 7
  %164 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i.i.6, align 4
  %166 = trunc i32 %165 to i8
  %conv1.i.i.6 = add i8 %retval.0.i, %166
  %167 = call i8 @llvm.smin.i8(i8 %conv1.i.i.6, i8 %target_power) #7
  %arrayidx9.i.i.6 = getelementptr i8, ptr %add.ptr.i220, i32 6
  %168 = ptrtoint ptr %arrayidx9.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx9.i.i.6, align 1
  %169 = call i8 @llvm.smax.i8(i8 %163, i8 %167) #7
  %arrayidx.i.i.7 = getelementptr i32, ptr %data.addr.037.i, i32 8
  %170 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i.i.7, align 4
  %172 = trunc i32 %171 to i8
  %conv1.i.i.7 = add i8 %retval.0.i, %172
  %173 = call i8 @llvm.smin.i8(i8 %conv1.i.i.7, i8 %target_power) #7
  %arrayidx9.i.i.7 = getelementptr i8, ptr %add.ptr.i220, i32 7
  %174 = ptrtoint ptr %arrayidx9.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx9.i.i.7, align 1
  %175 = call i8 @llvm.smax.i8(i8 %169, i8 %173) #7
  %arrayidx.i.i.8 = getelementptr i32, ptr %data.addr.037.i, i32 9
  %176 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx.i.i.8, align 4
  %178 = trunc i32 %177 to i8
  %conv1.i.i.8 = add i8 %retval.0.i, %178
  %179 = call i8 @llvm.smin.i8(i8 %conv1.i.i.8, i8 %target_power) #7
  %arrayidx9.i.i.8 = getelementptr i8, ptr %add.ptr.i220, i32 8
  %180 = ptrtoint ptr %arrayidx9.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx9.i.i.8, align 1
  %181 = call i8 @llvm.smax.i8(i8 %175, i8 %179) #7
  %arrayidx.i.i.9 = getelementptr i32, ptr %data.addr.037.i, i32 10
  %182 = ptrtoint ptr %arrayidx.i.i.9 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx.i.i.9, align 4
  %184 = trunc i32 %183 to i8
  %conv1.i.i.9 = add i8 %retval.0.i, %184
  %185 = call i8 @llvm.smin.i8(i8 %conv1.i.i.9, i8 %target_power) #7
  %arrayidx9.i.i.9 = getelementptr i8, ptr %add.ptr.i220, i32 9
  %186 = ptrtoint ptr %arrayidx9.i.i.9 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx9.i.i.9, align 1
  %187 = call i8 @llvm.smax.i8(i8 %181, i8 %185) #7
  br label %mt76_apply_array_limit.exit.i

mt76_apply_array_limit.exit.i:                    ; preds = %for.body.i.i.preheader, %if.end5.i.mt76_apply_array_limit.exit.i_crit_edge
  %max_power.6 = phi i8 [ %max_power.4, %if.end5.i.mt76_apply_array_limit.exit.i_crit_edge ], [ %187, %for.body.i.i.preheader ]
  %dec.i = add i32 %cur.039.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp7.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp7.i, label %mt76_apply_array_limit.exit.i.for.inc.i227_crit_edge, label %if.end10.i

mt76_apply_array_limit.exit.i.for.inc.i227_crit_edge: ; preds = %mt76_apply_array_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i227

if.end10.i:                                       ; preds = %mt76_apply_array_limit.exit.i
  %sub.i222 = add i32 %len.addr.036.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i222)
  %tobool14.not.i = icmp eq i32 %sub.i222, 0
  br i1 %tobool14.not.i, label %if.end10.i.mt76_apply_multi_array_limit.exit_crit_edge, label %if.end16.i

if.end10.i.mt76_apply_multi_array_limit.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_multi_array_limit.exit

if.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12.i = getelementptr i32, ptr %data.addr.037.i, i32 11
  %188 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr12.i, align 4
  br label %for.inc.i227

for.inc.i227:                                     ; preds = %if.end16.i, %mt76_apply_array_limit.exit.i.for.inc.i227_crit_edge
  %len.addr.1.i = phi i32 [ %len.addr.036.i, %mt76_apply_array_limit.exit.i.for.inc.i227_crit_edge ], [ %sub.i222, %if.end16.i ]
  %data.addr.1.i = phi ptr [ %data.addr.037.i, %mt76_apply_array_limit.exit.i.for.inc.i227_crit_edge ], [ %add.ptr12.i, %if.end16.i ]
  %cur.1.i = phi i32 [ %dec.i, %mt76_apply_array_limit.exit.i.for.inc.i227_crit_edge ], [ %189, %if.end16.i ]
  %inc.i223 = add nuw nsw i32 %i.038.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.038.i)
  %cmp.i224 = icmp ugt i32 %i.038.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len.addr.1.i)
  %cmp2.i225 = icmp ult i32 %len.addr.1.i, 11
  %or.cond.i226 = select i1 %cmp.i224, i1 true, i1 %cmp2.i225
  br i1 %or.cond.i226, label %for.inc.i227.mt76_apply_multi_array_limit.exit_crit_edge, label %for.inc.i227.if.end5.i_crit_edge

for.inc.i227.if.end5.i_crit_edge:                 ; preds = %for.inc.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

for.inc.i227.mt76_apply_multi_array_limit.exit_crit_edge: ; preds = %for.inc.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_multi_array_limit.exit

mt76_apply_multi_array_limit.exit:                ; preds = %for.inc.i227.mt76_apply_multi_array_limit.exit_crit_edge, %if.end10.i.mt76_apply_multi_array_limit.exit_crit_edge, %if.end.i218.mt76_apply_multi_array_limit.exit_crit_edge, %lor.lhs.false2.i213.mt76_apply_multi_array_limit.exit_crit_edge, %lor.lhs.false.i210.mt76_apply_multi_array_limit.exit_crit_edge, %mt76_apply_array_limit.exit205.mt76_apply_multi_array_limit.exit_crit_edge
  %max_power.7 = phi i8 [ %max_power.3, %if.end.i218.mt76_apply_multi_array_limit.exit_crit_edge ], [ %max_power.3, %lor.lhs.false2.i213.mt76_apply_multi_array_limit.exit_crit_edge ], [ %max_power.3, %lor.lhs.false.i210.mt76_apply_multi_array_limit.exit_crit_edge ], [ %max_power.3, %mt76_apply_array_limit.exit205.mt76_apply_multi_array_limit.exit_crit_edge ], [ %max_power.6, %for.inc.i227.mt76_apply_multi_array_limit.exit_crit_edge ], [ %max_power.6, %if.end10.i.mt76_apply_multi_array_limit.exit_crit_edge ]
  %call.i228 = call ptr @of_find_property(ptr noundef nonnull %cur.036.i, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.not.i229 = icmp eq ptr %call.i228, null
  br i1 %tobool.not.i229, label %mt76_apply_multi_array_limit.exit.cleanup_crit_edge, label %lor.lhs.false.i232

mt76_apply_multi_array_limit.exit.cleanup_crit_edge: ; preds = %mt76_apply_multi_array_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i232:                               ; preds = %mt76_apply_multi_array_limit.exit
  %value.i230 = getelementptr inbounds %struct.property, ptr %call.i228, i32 0, i32 2
  %190 = ptrtoint ptr %value.i230 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %value.i230, align 4
  %tobool1.not.i231 = icmp eq ptr %191, null
  br i1 %tobool1.not.i231, label %lor.lhs.false.i232.cleanup_crit_edge, label %lor.lhs.false2.i235

lor.lhs.false.i232.cleanup_crit_edge:             ; preds = %lor.lhs.false.i232
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2.i235:                              ; preds = %lor.lhs.false.i232
  %length.i233 = getelementptr inbounds %struct.property, ptr %call.i228, i32 0, i32 1
  %192 = ptrtoint ptr %length.i233 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %length.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %193)
  %cmp.i234 = icmp slt i32 %193, 52
  br i1 %cmp.i234, label %lor.lhs.false2.i235.cleanup_crit_edge, label %if.end.i242

lor.lhs.false2.i235.cleanup_crit_edge:            ; preds = %lor.lhs.false2.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i242:                                      ; preds = %lor.lhs.false2.i235
  %ru = getelementptr inbounds %struct.mt76_power_limits, ptr %dest, i32 0, i32 3
  %div32.i240 = lshr i32 %193, 2
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %191, align 4
  br label %if.end5.i252

if.end5.i252:                                     ; preds = %for.inc.i275.if.end5.i252_crit_edge, %if.end.i242
  %max_power.8 = phi i8 [ %max_power.7, %if.end.i242 ], [ %max_power.10, %for.inc.i275.if.end5.i252_crit_edge ]
  %cur.039.i244 = phi i32 [ %195, %if.end.i242 ], [ %cur.1.i270, %for.inc.i275.if.end5.i252_crit_edge ]
  %i.038.i245 = phi i32 [ 0, %if.end.i242 ], [ %inc.i271, %for.inc.i275.if.end5.i252_crit_edge ]
  %data.addr.037.i246 = phi ptr [ %191, %if.end.i242 ], [ %data.addr.1.i269, %for.inc.i275.if.end5.i252_crit_edge ]
  %len.addr.036.i247 = phi i32 [ %div32.i240, %if.end.i242 ], [ %len.addr.1.i268, %for.inc.i275.if.end5.i252_crit_edge ]
  %add.ptr6.i250 = getelementptr i32, ptr %data.addr.037.i246, i32 1
  %tobool.not.i.i251.not = icmp eq ptr %add.ptr6.i250, null
  br i1 %tobool.not.i.i251.not, label %if.end5.i252.mt76_apply_array_limit.exit.i262_crit_edge, label %for.body.i.i259.preheader

if.end5.i252.mt76_apply_array_limit.exit.i262_crit_edge: ; preds = %if.end5.i252
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_apply_array_limit.exit.i262

for.body.i.i259.preheader:                        ; preds = %if.end5.i252
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i248 = mul nuw nsw i32 %i.038.i245, 12
  %add.ptr.i249 = getelementptr i8, ptr %ru, i32 %mul.i248
  %196 = ptrtoint ptr %add.ptr6.i250 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr6.i250, align 4
  %198 = trunc i32 %197 to i8
  %conv1.i.i255 = add i8 %retval.0.i, %198
  %199 = call i8 @llvm.smin.i8(i8 %conv1.i.i255, i8 %target_power) #7
  %200 = ptrtoint ptr %add.ptr.i249 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %add.ptr.i249, align 1
  %201 = call i8 @llvm.smax.i8(i8 %max_power.8, i8 %199) #7
  %arrayidx.i.i254.1 = getelementptr i32, ptr %data.addr.037.i246, i32 2
  %202 = ptrtoint ptr %arrayidx.i.i254.1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx.i.i254.1, align 4
  %204 = trunc i32 %203 to i8
  %conv1.i.i255.1 = add i8 %retval.0.i, %204
  %205 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.1, i8 %target_power) #7
  %arrayidx9.i.i256.1 = getelementptr i8, ptr %add.ptr.i249, i32 1
  %206 = ptrtoint ptr %arrayidx9.i.i256.1 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx9.i.i256.1, align 1
  %207 = call i8 @llvm.smax.i8(i8 %201, i8 %205) #7
  %arrayidx.i.i254.2 = getelementptr i32, ptr %data.addr.037.i246, i32 3
  %208 = ptrtoint ptr %arrayidx.i.i254.2 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx.i.i254.2, align 4
  %210 = trunc i32 %209 to i8
  %conv1.i.i255.2 = add i8 %retval.0.i, %210
  %211 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.2, i8 %target_power) #7
  %arrayidx9.i.i256.2 = getelementptr i8, ptr %add.ptr.i249, i32 2
  %212 = ptrtoint ptr %arrayidx9.i.i256.2 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx9.i.i256.2, align 1
  %213 = call i8 @llvm.smax.i8(i8 %207, i8 %211) #7
  %arrayidx.i.i254.3 = getelementptr i32, ptr %data.addr.037.i246, i32 4
  %214 = ptrtoint ptr %arrayidx.i.i254.3 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i.i254.3, align 4
  %216 = trunc i32 %215 to i8
  %conv1.i.i255.3 = add i8 %retval.0.i, %216
  %217 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.3, i8 %target_power) #7
  %arrayidx9.i.i256.3 = getelementptr i8, ptr %add.ptr.i249, i32 3
  %218 = ptrtoint ptr %arrayidx9.i.i256.3 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx9.i.i256.3, align 1
  %219 = call i8 @llvm.smax.i8(i8 %213, i8 %217) #7
  %arrayidx.i.i254.4 = getelementptr i32, ptr %data.addr.037.i246, i32 5
  %220 = ptrtoint ptr %arrayidx.i.i254.4 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx.i.i254.4, align 4
  %222 = trunc i32 %221 to i8
  %conv1.i.i255.4 = add i8 %retval.0.i, %222
  %223 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.4, i8 %target_power) #7
  %arrayidx9.i.i256.4 = getelementptr i8, ptr %add.ptr.i249, i32 4
  %224 = ptrtoint ptr %arrayidx9.i.i256.4 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %arrayidx9.i.i256.4, align 1
  %225 = call i8 @llvm.smax.i8(i8 %219, i8 %223) #7
  %arrayidx.i.i254.5 = getelementptr i32, ptr %data.addr.037.i246, i32 6
  %226 = ptrtoint ptr %arrayidx.i.i254.5 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx.i.i254.5, align 4
  %228 = trunc i32 %227 to i8
  %conv1.i.i255.5 = add i8 %retval.0.i, %228
  %229 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.5, i8 %target_power) #7
  %arrayidx9.i.i256.5 = getelementptr i8, ptr %add.ptr.i249, i32 5
  %230 = ptrtoint ptr %arrayidx9.i.i256.5 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %arrayidx9.i.i256.5, align 1
  %231 = call i8 @llvm.smax.i8(i8 %225, i8 %229) #7
  %arrayidx.i.i254.6 = getelementptr i32, ptr %data.addr.037.i246, i32 7
  %232 = ptrtoint ptr %arrayidx.i.i254.6 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i.i254.6, align 4
  %234 = trunc i32 %233 to i8
  %conv1.i.i255.6 = add i8 %retval.0.i, %234
  %235 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.6, i8 %target_power) #7
  %arrayidx9.i.i256.6 = getelementptr i8, ptr %add.ptr.i249, i32 6
  %236 = ptrtoint ptr %arrayidx9.i.i256.6 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx9.i.i256.6, align 1
  %237 = call i8 @llvm.smax.i8(i8 %231, i8 %235) #7
  %arrayidx.i.i254.7 = getelementptr i32, ptr %data.addr.037.i246, i32 8
  %238 = ptrtoint ptr %arrayidx.i.i254.7 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx.i.i254.7, align 4
  %240 = trunc i32 %239 to i8
  %conv1.i.i255.7 = add i8 %retval.0.i, %240
  %241 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.7, i8 %target_power) #7
  %arrayidx9.i.i256.7 = getelementptr i8, ptr %add.ptr.i249, i32 7
  %242 = ptrtoint ptr %arrayidx9.i.i256.7 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %arrayidx9.i.i256.7, align 1
  %243 = call i8 @llvm.smax.i8(i8 %237, i8 %241) #7
  %arrayidx.i.i254.8 = getelementptr i32, ptr %data.addr.037.i246, i32 9
  %244 = ptrtoint ptr %arrayidx.i.i254.8 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx.i.i254.8, align 4
  %246 = trunc i32 %245 to i8
  %conv1.i.i255.8 = add i8 %retval.0.i, %246
  %247 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.8, i8 %target_power) #7
  %arrayidx9.i.i256.8 = getelementptr i8, ptr %add.ptr.i249, i32 8
  %248 = ptrtoint ptr %arrayidx9.i.i256.8 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %arrayidx9.i.i256.8, align 1
  %249 = call i8 @llvm.smax.i8(i8 %243, i8 %247) #7
  %arrayidx.i.i254.9 = getelementptr i32, ptr %data.addr.037.i246, i32 10
  %250 = ptrtoint ptr %arrayidx.i.i254.9 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx.i.i254.9, align 4
  %252 = trunc i32 %251 to i8
  %conv1.i.i255.9 = add i8 %retval.0.i, %252
  %253 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.9, i8 %target_power) #7
  %arrayidx9.i.i256.9 = getelementptr i8, ptr %add.ptr.i249, i32 9
  %254 = ptrtoint ptr %arrayidx9.i.i256.9 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %arrayidx9.i.i256.9, align 1
  %255 = call i8 @llvm.smax.i8(i8 %249, i8 %253) #7
  %arrayidx.i.i254.10 = getelementptr i32, ptr %data.addr.037.i246, i32 11
  %256 = ptrtoint ptr %arrayidx.i.i254.10 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.i.i254.10, align 4
  %258 = trunc i32 %257 to i8
  %conv1.i.i255.10 = add i8 %retval.0.i, %258
  %259 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.10, i8 %target_power) #7
  %arrayidx9.i.i256.10 = getelementptr i8, ptr %add.ptr.i249, i32 10
  %260 = ptrtoint ptr %arrayidx9.i.i256.10 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %arrayidx9.i.i256.10, align 1
  %261 = call i8 @llvm.smax.i8(i8 %255, i8 %259) #7
  %arrayidx.i.i254.11 = getelementptr i32, ptr %data.addr.037.i246, i32 12
  %262 = ptrtoint ptr %arrayidx.i.i254.11 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx.i.i254.11, align 4
  %264 = trunc i32 %263 to i8
  %conv1.i.i255.11 = add i8 %retval.0.i, %264
  %265 = call i8 @llvm.smin.i8(i8 %conv1.i.i255.11, i8 %target_power) #7
  %arrayidx9.i.i256.11 = getelementptr i8, ptr %add.ptr.i249, i32 11
  %266 = ptrtoint ptr %arrayidx9.i.i256.11 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %arrayidx9.i.i256.11, align 1
  %267 = call i8 @llvm.smax.i8(i8 %261, i8 %265) #7
  br label %mt76_apply_array_limit.exit.i262

mt76_apply_array_limit.exit.i262:                 ; preds = %for.body.i.i259.preheader, %if.end5.i252.mt76_apply_array_limit.exit.i262_crit_edge
  %max_power.10 = phi i8 [ %max_power.8, %if.end5.i252.mt76_apply_array_limit.exit.i262_crit_edge ], [ %267, %for.body.i.i259.preheader ]
  %dec.i260 = add i32 %cur.039.i244, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i260)
  %cmp7.i261 = icmp sgt i32 %dec.i260, 0
  br i1 %cmp7.i261, label %mt76_apply_array_limit.exit.i262.for.inc.i275_crit_edge, label %if.end10.i265

mt76_apply_array_limit.exit.i262.for.inc.i275_crit_edge: ; preds = %mt76_apply_array_limit.exit.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i275

if.end10.i265:                                    ; preds = %mt76_apply_array_limit.exit.i262
  %sub.i263 = add i32 %len.addr.036.i247, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i263)
  %tobool14.not.i264 = icmp eq i32 %sub.i263, 0
  br i1 %tobool14.not.i264, label %if.end10.i265.cleanup_crit_edge, label %if.end16.i267

if.end10.i265.cleanup_crit_edge:                  ; preds = %if.end10.i265
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i267:                                    ; preds = %if.end10.i265
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12.i266 = getelementptr i32, ptr %data.addr.037.i246, i32 13
  %268 = ptrtoint ptr %add.ptr12.i266 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %add.ptr12.i266, align 4
  br label %for.inc.i275

for.inc.i275:                                     ; preds = %if.end16.i267, %mt76_apply_array_limit.exit.i262.for.inc.i275_crit_edge
  %len.addr.1.i268 = phi i32 [ %len.addr.036.i247, %mt76_apply_array_limit.exit.i262.for.inc.i275_crit_edge ], [ %sub.i263, %if.end16.i267 ]
  %data.addr.1.i269 = phi ptr [ %data.addr.037.i246, %mt76_apply_array_limit.exit.i262.for.inc.i275_crit_edge ], [ %add.ptr12.i266, %if.end16.i267 ]
  %cur.1.i270 = phi i32 [ %dec.i260, %mt76_apply_array_limit.exit.i262.for.inc.i275_crit_edge ], [ %269, %if.end16.i267 ]
  %inc.i271 = add nuw nsw i32 %i.038.i245, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.038.i245)
  %cmp.i272 = icmp ugt i32 %i.038.i245, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %len.addr.1.i268)
  %cmp2.i273 = icmp ult i32 %len.addr.1.i268, 13
  %or.cond.i274 = select i1 %cmp.i272, i1 true, i1 %cmp2.i273
  br i1 %or.cond.i274, label %for.inc.i275.cleanup_crit_edge, label %for.inc.i275.if.end5.i252_crit_edge

for.inc.i275.if.end5.i252_crit_edge:              ; preds = %for.inc.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i252

for.inc.i275.cleanup_crit_edge:                   ; preds = %for.inc.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i275.cleanup_crit_edge, %if.end10.i265.cleanup_crit_edge, %lor.lhs.false2.i235.cleanup_crit_edge, %lor.lhs.false.i232.cleanup_crit_edge, %mt76_apply_multi_array_limit.exit.cleanup_crit_edge, %mt76_find_channel_node.exit.cleanup_crit_edge, %for.inc.i163.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %mt76_find_power_limits_node.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i8 [ %target_power, %mt76_find_power_limits_node.exit.cleanup_crit_edge ], [ %target_power, %if.end6.cleanup_crit_edge ], [ %target_power, %sw.epilog.cleanup_crit_edge ], [ %target_power, %mt76_find_channel_node.exit.cleanup_crit_edge ], [ %target_power, %if.end.i.cleanup_crit_edge ], [ %target_power, %if.end4.i.cleanup_crit_edge ], [ %target_power, %if.end16.cleanup_crit_edge ], [ %max_power.7, %lor.lhs.false2.i235.cleanup_crit_edge ], [ %max_power.7, %lor.lhs.false.i232.cleanup_crit_edge ], [ %max_power.7, %mt76_apply_multi_array_limit.exit.cleanup_crit_edge ], [ %max_power.10, %if.end10.i265.cleanup_crit_edge ], [ %max_power.10, %for.inc.i275.cleanup_crit_edge ], [ %target_power, %for.inc.i163.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #7
  ret i8 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_eeprom_init(ptr nocapture noundef %dev, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %size = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %size, align 4
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %len, i32 noundef 3520) #7
  %3 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %eeprom, align 16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @mt76_get_of_eeprom(ptr noundef %dev, ptr noundef nonnull %call.i, i32 undef, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %lnot.ext = zext i1 %tobool8.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 28, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 38, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 50, i32 29}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 71, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mt76_get_of_eeprom._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @mt76_get_of_eeprom._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 81, i32 47}
!16 = !{ptr @__ksymtab_mt76_get_of_eeprom, !17, !"__ksymtab_mt76_get_of_eeprom", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 103, i32 1}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 115, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt76_eeprom_override._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt76_eeprom_override._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_mt76_eeprom_override, !25, !"__ksymtab_mt76_eeprom_override", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 120, i32 1}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 311, i32 31}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 322, i32 30}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 326, i32 30}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 331, i32 30}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 336, i32 30}
!36 = !{ptr @__ksymtab_mt76_get_rate_power_limits, !37, !"__ksymtab_mt76_get_rate_power_limits", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 343, i32 1}
!38 = !{ptr @__ksymtab_mt76_eeprom_init, !39, !"__ksymtab_mt76_eeprom_init", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 355, i32 1}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 142, i32 23}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 141, i32 24}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 143, i32 22}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 151, i32 32}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 156, i32 52}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 157, i32 49}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 193, i32 32}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/mediatek/mt76/eeprom.c", i32 216, i32 30}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
