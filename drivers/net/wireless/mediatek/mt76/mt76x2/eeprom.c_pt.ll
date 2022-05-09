; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x2_read_rx_gain\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_read_rx_gain\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_read_rx_gain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_read_rx_gain:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_read_rx_gain\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_read_rx_gain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_get_rate_power\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_get_rate_power\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_get_rate_power\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_get_rate_power:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_get_rate_power\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_get_rate_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_get_power_info\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_get_power_info\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_get_power_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_get_power_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_get_power_info\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_get_power_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_get_temp_comp\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_get_temp_comp\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_get_temp_comp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_get_temp_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_get_temp_comp\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_get_temp_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_eeprom_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_eeprom_init\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_eeprom_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_eeprom_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_eeprom_init\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_eeprom_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.mt76x02_dev = type { %union.anon, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mac_address = type { [6 x i8] }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.mt76x02_tx_status] }
%union.anon.147 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.mt76x2_tx_power_info = type { i8, i8, i8, [2 x %struct.anon.148] }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.mt76x2_temp_comp = type { i8, i32, i32, i32, i32 }

@__kstrtab_mt76x2_read_rx_gain = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_read_rx_gain = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_read_rx_gain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_read_rx_gain to i32), ptr @__kstrtab_mt76x2_read_rx_gain, ptr @__kstrtabns_mt76x2_read_rx_gain }, section "___ksymtab_gpl+mt76x2_read_rx_gain", align 4
@__kstrtab_mt76x2_get_rate_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_get_rate_power = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_get_rate_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_get_rate_power to i32), ptr @__kstrtab_mt76x2_get_rate_power, ptr @__kstrtabns_mt76x2_get_rate_power }, section "___ksymtab_gpl+mt76x2_get_rate_power", align 4
@__kstrtab_mt76x2_get_power_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_get_power_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_get_power_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_get_power_info to i32), ptr @__kstrtab_mt76x2_get_power_info, ptr @__kstrtabns_mt76x2_get_power_info }, section "___ksymtab_gpl+mt76x2_get_power_info", align 4
@__kstrtab_mt76x2_get_temp_comp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_get_temp_comp = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_get_temp_comp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_get_temp_comp to i32), ptr @__kstrtab_mt76x2_get_temp_comp, ptr @__kstrtabns_mt76x2_get_temp_comp }, section "___ksymtab_gpl+mt76x2_get_temp_comp", align 4
@__kstrtab_mt76x2_eeprom_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_eeprom_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_eeprom_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_eeprom_init to i32), ptr @__kstrtab_mt76x2_eeprom_init, ptr @__kstrtabns_mt76x2_eeprom_init }, section "___ksymtab_gpl+mt76x2_eeprom_init", align 4
@__UNIQUE_ID_file387 = internal constant [75 x i8] c"mt76x2_common.file=drivers/net/wireless/mediatek/mt76/mt76x2/mt76x2-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [35 x i8] c"mt76x2_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mt76x2_check_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EEPROM data check failed: %04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt76x2_check_eeprom\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76x2_check_eeprom._entry_ptr = internal global ptr @mt76x2_check_eeprom._entry, section ".printk_index", align 4
@mt76x2_apply_cal_free_data.cal_free_bytes = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c":UVW\\]bc\80\81gh\85\86lm\8A\8Bqr\8F\90vw\94\95{|\99\9A\F6\F9\FA\FB\FC\FD\FE\FF", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,eeprom-merge-otp\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 30226, i64 30306]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 135, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"cal_free_bytes\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 58, i32 18 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 91, i32 40 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__ksymtab_mt76x2_eeprom_init, ptr @__ksymtab_mt76x2_get_power_info, ptr @__ksymtab_mt76x2_get_rate_power, ptr @__ksymtab_mt76x2_get_temp_comp, ptr @__ksymtab_mt76x2_read_rx_gain, ptr @mt76x2_check_eeprom._entry, ptr @mt76x2_check_eeprom._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt76x2_apply_cal_free_data.cal_free_bytes, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2_check_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2_apply_cal_free_data.cal_free_bytes to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_read_rx_gain(ptr noundef %dev) #0 align 64 {
entry:
  %lna_5g = alloca [3 x i8], align 1
  %lna_2g = alloca i8, align 1
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %lna_5g) #6
  %4 = ptrtoint ptr %lna_5g to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %lna_5g, align 1, !annotation !34
  %5 = getelementptr inbounds [3 x i8], ptr %lna_5g, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !34
  %7 = getelementptr inbounds [3 x i8], ptr %lna_5g, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lna_2g) #6
  %9 = ptrtoint ptr %lna_2g to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %lna_2g, align 1, !annotation !34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %12 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 248
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr.i, align 1
  %16 = and i16 %15, 255
  br label %if.end

if.else:                                          ; preds = %entry
  %conv4 = trunc i16 %3 to i8
  %conv4.mask = and i16 %3, 255
  %conv.i61 = zext i16 %conv4.mask to i32
  %17 = add nsw i32 %conv.i61, -184
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %17)
  %18 = icmp ult i32 %17, 13
  br i1 %18, label %sw.bb.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %conv4)
  %cmp2.i.i = icmp ult i8 %conv4, 49
  br i1 %cmp2.i.i, label %sw.bb3.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %conv4)
  %cmp5.i.i = icmp ult i8 %conv4, 65
  br i1 %cmp5.i.i, label %sw.bb6.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %conv4)
  %cmp8.i.i = icmp ult i8 %conv4, 115
  br i1 %cmp8.i.i, label %sw.bb9.i, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %conv4)
  %cmp11.i.i = icmp ult i8 %conv4, -111
  %eeprom.i41.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %19 = ptrtoint ptr %eeprom.i41.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom.i41.i, align 16
  %add.ptr.i42.i = getelementptr i8, ptr %20, i32 254
  %21 = ptrtoint ptr %add.ptr.i42.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr.i42.i, align 1
  %23 = lshr i16 %22, 8
  %spec.select.i = select i1 %cmp11.i.i, i16 %23, i16 %22
  %extract.t85 = trunc i16 %spec.select.i to i8
  br label %mt76x2_get_5g_rx_gain.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %24 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 250
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr.i.i, align 1
  %28 = lshr i16 %27, 8
  %extract.t86 = trunc i16 %28 to i8
  br label %mt76x2_get_5g_rx_gain.exit

sw.bb3.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom.i26.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %29 = ptrtoint ptr %eeprom.i26.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eeprom.i26.i, align 16
  %add.ptr.i27.i = getelementptr i8, ptr %30, i32 250
  %31 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr.i27.i, align 1
  %extract.t87 = trunc i16 %32 to i8
  br label %mt76x2_get_5g_rx_gain.exit

sw.bb6.i:                                         ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom.i31.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %33 = ptrtoint ptr %eeprom.i31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eeprom.i31.i, align 16
  %add.ptr.i32.i = getelementptr i8, ptr %34, i32 252
  %35 = ptrtoint ptr %add.ptr.i32.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %add.ptr.i32.i, align 1
  %37 = lshr i16 %36, 8
  %extract.t88 = trunc i16 %37 to i8
  br label %mt76x2_get_5g_rx_gain.exit

sw.bb9.i:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom.i36.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %38 = ptrtoint ptr %eeprom.i36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eeprom.i36.i, align 16
  %add.ptr.i37.i = getelementptr i8, ptr %39, i32 252
  %40 = ptrtoint ptr %add.ptr.i37.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr.i37.i, align 1
  %extract.t89 = trunc i16 %41 to i8
  br label %mt76x2_get_5g_rx_gain.exit

mt76x2_get_5g_rx_gain.exit:                       ; preds = %sw.bb9.i, %sw.bb6.i, %sw.bb3.i, %sw.bb.i, %if.end10.i.i
  %spec.select.i.sink.off0 = phi i8 [ %extract.t85, %if.end10.i.i ], [ %extract.t86, %sw.bb.i ], [ %extract.t87, %sw.bb3.i ], [ %extract.t88, %sw.bb6.i ], [ %extract.t89, %sw.bb9.i ]
  %conv6 = zext i8 %spec.select.i.sink.off0 to i16
  br label %if.end

if.end:                                           ; preds = %mt76x2_get_5g_rx_gain.exit, %if.then
  %storemerge = phi i16 [ %conv6, %mt76x2_get_5g_rx_gain.exit ], [ %16, %if.then ]
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %storemerge, ptr %val, align 2
  %conv7 = trunc i16 %storemerge to i8
  %cal.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19
  %43 = add i8 %conv7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %43)
  %44 = icmp ult i8 %43, -2
  br i1 %44, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %cal.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cal.i, align 1
  br label %mt76x2_set_rx_gain_group.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i62 = zext i16 %storemerge to i32
  %and.i.i = and i32 %conv.i62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and4.i.i = and i32 %conv.i62, 7
  %sub6.i.i = sub nsw i32 0, %and4.i.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 %sub6.i.i, i32 %and4.i.i
  %conv3.i = trunc i32 %cond.i.i to i8
  %46 = ptrtoint ptr %cal.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv3.i, ptr %cal.i, align 1
  %47 = lshr i32 %conv.i62, 4
  %48 = and i32 %conv.i62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i15.i = icmp eq i32 %48, 0
  %and4.i16.i = and i32 %47, 7
  %sub6.i17.i = sub nsw i32 0, %and4.i16.i
  %cond.i18.i = select i1 %tobool.not.i15.i, i32 %sub6.i17.i, i32 %and4.i16.i
  %conv7.i = trunc i32 %cond.i18.i to i8
  br label %mt76x2_set_rx_gain_group.exit

mt76x2_set_rx_gain_group.exit:                    ; preds = %if.end.i, %if.then.i
  %.sink.i = phi i8 [ %conv7.i, %if.end.i ], [ 0, %if.then.i ]
  %49 = getelementptr %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink.i, ptr %49, align 1
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 4
  call void @mt76x02_get_rx_gain(ptr noundef %dev, i32 noundef %52, ptr noundef nonnull %val, ptr noundef nonnull %lna_2g, ptr noundef nonnull %lna_5g) #6
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %val, align 2
  %conv9 = trunc i16 %54 to i8
  %55 = add i8 %conv9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %55)
  %56 = icmp ult i8 %55, -2
  br i1 %56, label %if.end.i66, label %mt76x2_set_rx_gain_group.exit.mt76x2_set_rssi_offset.exit_crit_edge

mt76x2_set_rx_gain_group.exit.mt76x2_set_rssi_offset.exit_crit_edge: ; preds = %mt76x2_set_rx_gain_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_set_rssi_offset.exit

if.end.i66:                                       ; preds = %mt76x2_set_rx_gain_group.exit
  %conv9.mask = and i16 %54, 255
  %conv.i63 = zext i16 %conv9.mask to i32
  %and.i.i64 = and i32 %conv.i63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i66.mt76x2_set_rssi_offset.exit_crit_edge, label %cond.true.i.i

if.end.i66.mt76x2_set_rssi_offset.exit_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_set_rssi_offset.exit

cond.true.i.i:                                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = and i32 %conv.i63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and4.i.i.i = and i32 %conv.i63, 63
  %sub6.i.i.i = sub nsw i32 0, %and4.i.i.i
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %sub6.i.i.i, i32 %and4.i.i.i
  %phi.cast.i = trunc i32 %cond.i.i.i to i8
  br label %mt76x2_set_rssi_offset.exit

mt76x2_set_rssi_offset.exit:                      ; preds = %cond.true.i.i, %if.end.i66.mt76x2_set_rssi_offset.exit_crit_edge, %mt76x2_set_rx_gain_group.exit.mt76x2_set_rssi_offset.exit_crit_edge
  %cond.i.sink.i = phi i8 [ 0, %mt76x2_set_rx_gain_group.exit.mt76x2_set_rssi_offset.exit_crit_edge ], [ %phi.cast.i, %cond.true.i.i ], [ 0, %if.end.i66.mt76x2_set_rssi_offset.exit_crit_edge ]
  %rssi_offset.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %57 = ptrtoint ptr %rssi_offset.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %cond.i.sink.i, ptr %rssi_offset.i, align 1
  %58 = lshr i16 %54, 8
  %conv12 = trunc i16 %58 to i8
  %59 = add i8 %conv12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %59)
  %60 = icmp ult i8 %59, -2
  br i1 %60, label %if.end.i70, label %mt76x2_set_rssi_offset.exit.mt76x2_set_rssi_offset.exit80_crit_edge

mt76x2_set_rssi_offset.exit.mt76x2_set_rssi_offset.exit80_crit_edge: ; preds = %mt76x2_set_rssi_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_set_rssi_offset.exit80

if.end.i70:                                       ; preds = %mt76x2_set_rssi_offset.exit
  %conv.i67 = zext i16 %58 to i32
  %and.i.i68 = and i32 %conv.i67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.end.i70.mt76x2_set_rssi_offset.exit80_crit_edge, label %cond.true.i.i77

if.end.i70.mt76x2_set_rssi_offset.exit80_crit_edge: ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_set_rssi_offset.exit80

cond.true.i.i77:                                  ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i71 = and i32 %conv.i67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i71)
  %tobool.not.i.i.i72 = icmp eq i32 %and.i.i.i71, 0
  %and4.i.i.i73 = and i32 %conv.i67, 63
  %sub6.i.i.i74 = sub nsw i32 0, %and4.i.i.i73
  %cond.i.i.i75 = select i1 %tobool.not.i.i.i72, i32 %sub6.i.i.i74, i32 %and4.i.i.i73
  %phi.cast.i76 = trunc i32 %cond.i.i.i75 to i8
  br label %mt76x2_set_rssi_offset.exit80

mt76x2_set_rssi_offset.exit80:                    ; preds = %cond.true.i.i77, %if.end.i70.mt76x2_set_rssi_offset.exit80_crit_edge, %mt76x2_set_rssi_offset.exit.mt76x2_set_rssi_offset.exit80_crit_edge
  %cond.i.sink.i78 = phi i8 [ 0, %mt76x2_set_rssi_offset.exit.mt76x2_set_rssi_offset.exit80_crit_edge ], [ %phi.cast.i76, %cond.true.i.i77 ], [ 0, %if.end.i70.mt76x2_set_rssi_offset.exit80_crit_edge ]
  %arrayidx3.i = getelementptr %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %cond.i.sink.i78, ptr %arrayidx3.i, align 1
  %62 = ptrtoint ptr %lna_2g to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %lna_2g, align 1
  %conv1357 = zext i8 %63 to i32
  %mcu_gain = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 3
  %64 = ptrtoint ptr %lna_5g to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %lna_5g, align 1
  %conv1458 = zext i8 %65 to i32
  %shl = shl nuw nsw i32 %conv1458, 8
  %or = or i32 %shl, %conv1357
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %5, align 1
  %conv2059 = zext i8 %67 to i32
  %shl22 = shl nuw nsw i32 %conv2059, 16
  %or26 = or i32 %shl22, %or
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %7, align 1
  %conv2860 = zext i8 %69 to i32
  %shl30 = shl nuw i32 %conv2860, 24
  %or34 = or i32 %shl30, %or26
  %70 = ptrtoint ptr %mcu_gain to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or34, ptr %mcu_gain, align 4
  %call36 = call zeroext i8 @mt76x02_get_lna_gain(ptr noundef %dev, ptr noundef nonnull %lna_2g, ptr noundef nonnull %lna_5g, ptr noundef %1) #6
  %conv37 = zext i8 %call36 to i32
  %and.i = and i32 %conv37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %conv37, 127
  %sub6.i = sub nsw i32 0, %and4.i
  %cond.i = select i1 %tobool.not.i, i32 %sub6.i, i32 %and4.i
  %conv39 = trunc i32 %cond.i to i8
  %lna_gain = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %71 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv39, ptr %lna_gain, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lna_2g) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %lna_5g) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_get_rx_gain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mt76x02_get_lna_gain(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mt76x2_get_rate_power(ptr nocapture noundef readonly %dev, ptr noundef %t, ptr nocapture noundef readonly %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %2 = call ptr @memset(ptr %t, i32 0, i32 48)
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %4, i32 160
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  %conv1 = trunc i16 %7 to i8
  %8 = add i8 %conv1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %8)
  %9 = icmp ult i8 %8, -2
  br i1 %9, label %if.end.i, label %entry.mt76x02_rate_power_val.exit_crit_edge

entry.mt76x02_rate_power_val.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit

if.end.i:                                         ; preds = %entry
  %conv1.mask = and i16 %7, 255
  %conv.i250 = zext i16 %conv1.mask to i32
  %and.i.i = and i32 %conv.i250, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.mt76x02_rate_power_val.exit_crit_edge, label %cond.true.i.i

if.end.i.mt76x02_rate_power_val.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = and i32 %conv.i250, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and4.i.i.i = and i32 %conv.i250, 63
  %sub6.i.i.i = sub nsw i32 0, %and4.i.i.i
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %sub6.i.i.i, i32 %and4.i.i.i
  %phi.cast.i = trunc i32 %cond.i.i.i to i8
  br label %mt76x02_rate_power_val.exit

mt76x02_rate_power_val.exit:                      ; preds = %cond.true.i.i, %if.end.i.mt76x02_rate_power_val.exit_crit_edge, %entry.mt76x02_rate_power_val.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %entry.mt76x02_rate_power_val.exit_crit_edge ], [ %phi.cast.i, %cond.true.i.i ], [ 0, %if.end.i.mt76x02_rate_power_val.exit_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i, ptr %t, align 1
  %12 = lshr i16 %7, 8
  %conv6 = trunc i16 %12 to i8
  %13 = add i8 %conv6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %13)
  %14 = icmp ult i8 %13, -2
  br i1 %14, label %if.end.i254, label %mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit263_crit_edge

mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit263_crit_edge: ; preds = %mt76x02_rate_power_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit263

if.end.i254:                                      ; preds = %mt76x02_rate_power_val.exit
  %conv.i251 = zext i16 %12 to i32
  %and.i.i252 = and i32 %conv.i251, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i252)
  %tobool.not.i.i253 = icmp eq i32 %and.i.i252, 0
  br i1 %tobool.not.i.i253, label %if.end.i254.mt76x02_rate_power_val.exit263_crit_edge, label %cond.true.i.i261

if.end.i254.mt76x02_rate_power_val.exit263_crit_edge: ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit263

cond.true.i.i261:                                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i255 = and i32 %conv.i251, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i255)
  %tobool.not.i.i.i256 = icmp eq i32 %and.i.i.i255, 0
  %and4.i.i.i257 = and i32 %conv.i251, 63
  %sub6.i.i.i258 = sub nsw i32 0, %and4.i.i.i257
  %cond.i.i.i259 = select i1 %tobool.not.i.i.i256, i32 %sub6.i.i.i258, i32 %and4.i.i.i257
  %phi.cast.i260 = trunc i32 %cond.i.i.i259 to i8
  br label %mt76x02_rate_power_val.exit263

mt76x02_rate_power_val.exit263:                   ; preds = %cond.true.i.i261, %if.end.i254.mt76x02_rate_power_val.exit263_crit_edge, %mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit263_crit_edge
  %retval.0.i262 = phi i8 [ 0, %mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit263_crit_edge ], [ %phi.cast.i260, %cond.true.i.i261 ], [ 0, %if.end.i254.mt76x02_rate_power_val.exit263_crit_edge ]
  %arrayidx9 = getelementptr [4 x i8], ptr %t, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i262, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr [4 x i8], ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %retval.0.i262, ptr %arrayidx11, align 1
  %17 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eeprom.i, align 16
  %. = select i1 %cmp, i32 178, i32 162
  %add.ptr.i270 = getelementptr i8, ptr %18, i32 %.
  %19 = ptrtoint ptr %add.ptr.i270 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %add.ptr.i270, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  %conv16 = trunc i16 %21 to i8
  %22 = add i8 %conv16, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %22)
  %23 = icmp ult i8 %22, -2
  br i1 %23, label %if.end.i277, label %mt76x02_rate_power_val.exit263.mt76x02_rate_power_val.exit286_crit_edge

mt76x02_rate_power_val.exit263.mt76x02_rate_power_val.exit286_crit_edge: ; preds = %mt76x02_rate_power_val.exit263
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit286

if.end.i277:                                      ; preds = %mt76x02_rate_power_val.exit263
  %conv16.mask = and i16 %21, 255
  %conv.i274 = zext i16 %conv16.mask to i32
  %and.i.i275 = and i32 %conv.i274, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i275)
  %tobool.not.i.i276 = icmp eq i32 %and.i.i275, 0
  br i1 %tobool.not.i.i276, label %if.end.i277.mt76x02_rate_power_val.exit286_crit_edge, label %cond.true.i.i284

if.end.i277.mt76x02_rate_power_val.exit286_crit_edge: ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit286

cond.true.i.i284:                                 ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i278 = and i32 %conv.i274, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i278)
  %tobool.not.i.i.i279 = icmp eq i32 %and.i.i.i278, 0
  %and4.i.i.i280 = and i32 %conv.i274, 63
  %sub6.i.i.i281 = sub nsw i32 0, %and4.i.i.i280
  %cond.i.i.i282 = select i1 %tobool.not.i.i.i279, i32 %sub6.i.i.i281, i32 %and4.i.i.i280
  %phi.cast.i283 = trunc i32 %cond.i.i.i282 to i8
  br label %mt76x02_rate_power_val.exit286

mt76x02_rate_power_val.exit286:                   ; preds = %cond.true.i.i284, %if.end.i277.mt76x02_rate_power_val.exit286_crit_edge, %mt76x02_rate_power_val.exit263.mt76x02_rate_power_val.exit286_crit_edge
  %retval.0.i285 = phi i8 [ 0, %mt76x02_rate_power_val.exit263.mt76x02_rate_power_val.exit286_crit_edge ], [ %phi.cast.i283, %cond.true.i.i284 ], [ 0, %if.end.i277.mt76x02_rate_power_val.exit286_crit_edge ]
  %ofdm = getelementptr inbounds %struct.anon.142, ptr %t, i32 0, i32 1
  %arrayidx18 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %retval.0.i285, ptr %arrayidx18, align 1
  %25 = ptrtoint ptr %ofdm to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %retval.0.i285, ptr %ofdm, align 1
  %26 = lshr i16 %21, 8
  %conv23 = trunc i16 %26 to i8
  %27 = add i8 %conv23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %27)
  %28 = icmp ult i8 %27, -2
  br i1 %28, label %if.end.i290, label %mt76x02_rate_power_val.exit286.mt76x02_rate_power_val.exit299_crit_edge

mt76x02_rate_power_val.exit286.mt76x02_rate_power_val.exit299_crit_edge: ; preds = %mt76x02_rate_power_val.exit286
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit299

if.end.i290:                                      ; preds = %mt76x02_rate_power_val.exit286
  %conv.i287 = zext i16 %26 to i32
  %and.i.i288 = and i32 %conv.i287, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i288)
  %tobool.not.i.i289 = icmp eq i32 %and.i.i288, 0
  br i1 %tobool.not.i.i289, label %if.end.i290.mt76x02_rate_power_val.exit299_crit_edge, label %cond.true.i.i297

if.end.i290.mt76x02_rate_power_val.exit299_crit_edge: ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit299

cond.true.i.i297:                                 ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i291 = and i32 %conv.i287, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i291)
  %tobool.not.i.i.i292 = icmp eq i32 %and.i.i.i291, 0
  %and4.i.i.i293 = and i32 %conv.i287, 63
  %sub6.i.i.i294 = sub nsw i32 0, %and4.i.i.i293
  %cond.i.i.i295 = select i1 %tobool.not.i.i.i292, i32 %sub6.i.i.i294, i32 %and4.i.i.i293
  %phi.cast.i296 = trunc i32 %cond.i.i.i295 to i8
  br label %mt76x02_rate_power_val.exit299

mt76x02_rate_power_val.exit299:                   ; preds = %cond.true.i.i297, %if.end.i290.mt76x02_rate_power_val.exit299_crit_edge, %mt76x02_rate_power_val.exit286.mt76x02_rate_power_val.exit299_crit_edge
  %retval.0.i298 = phi i8 [ 0, %mt76x02_rate_power_val.exit286.mt76x02_rate_power_val.exit299_crit_edge ], [ %phi.cast.i296, %cond.true.i.i297 ], [ 0, %if.end.i290.mt76x02_rate_power_val.exit299_crit_edge ]
  %arrayidx26 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %retval.0.i298, ptr %arrayidx26, align 1
  %arrayidx28 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.i298, ptr %arrayidx28, align 1
  %31 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eeprom.i, align 16
  %.542 = select i1 %cmp, i32 180, i32 164
  %add.ptr.i306 = getelementptr i8, ptr %32, i32 %.542
  %33 = ptrtoint ptr %add.ptr.i306 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %add.ptr.i306, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #6
  %conv37 = trunc i16 %35 to i8
  %36 = add i8 %conv37, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %36)
  %37 = icmp ult i8 %36, -2
  br i1 %37, label %if.end.i313, label %mt76x02_rate_power_val.exit299.mt76x02_rate_power_val.exit322_crit_edge

mt76x02_rate_power_val.exit299.mt76x02_rate_power_val.exit322_crit_edge: ; preds = %mt76x02_rate_power_val.exit299
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit322

if.end.i313:                                      ; preds = %mt76x02_rate_power_val.exit299
  %conv37.mask = and i16 %35, 255
  %conv.i310 = zext i16 %conv37.mask to i32
  %and.i.i311 = and i32 %conv.i310, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i311)
  %tobool.not.i.i312 = icmp eq i32 %and.i.i311, 0
  br i1 %tobool.not.i.i312, label %if.end.i313.mt76x02_rate_power_val.exit322_crit_edge, label %cond.true.i.i320

if.end.i313.mt76x02_rate_power_val.exit322_crit_edge: ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit322

cond.true.i.i320:                                 ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i314 = and i32 %conv.i310, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i314)
  %tobool.not.i.i.i315 = icmp eq i32 %and.i.i.i314, 0
  %and4.i.i.i316 = and i32 %conv.i310, 63
  %sub6.i.i.i317 = sub nsw i32 0, %and4.i.i.i316
  %cond.i.i.i318 = select i1 %tobool.not.i.i.i315, i32 %sub6.i.i.i317, i32 %and4.i.i.i316
  %phi.cast.i319 = trunc i32 %cond.i.i.i318 to i8
  br label %mt76x02_rate_power_val.exit322

mt76x02_rate_power_val.exit322:                   ; preds = %cond.true.i.i320, %if.end.i313.mt76x02_rate_power_val.exit322_crit_edge, %mt76x02_rate_power_val.exit299.mt76x02_rate_power_val.exit322_crit_edge
  %retval.0.i321 = phi i8 [ 0, %mt76x02_rate_power_val.exit299.mt76x02_rate_power_val.exit322_crit_edge ], [ %phi.cast.i319, %cond.true.i.i320 ], [ 0, %if.end.i313.mt76x02_rate_power_val.exit322_crit_edge ]
  %arrayidx40 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %retval.0.i321, ptr %arrayidx40, align 1
  %arrayidx42 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %retval.0.i321, ptr %arrayidx42, align 1
  %40 = lshr i16 %35, 8
  %conv45 = trunc i16 %40 to i8
  %41 = add i8 %conv45, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %41)
  %42 = icmp ult i8 %41, -2
  br i1 %42, label %if.end.i326, label %mt76x02_rate_power_val.exit322.mt76x02_rate_power_val.exit335_crit_edge

mt76x02_rate_power_val.exit322.mt76x02_rate_power_val.exit335_crit_edge: ; preds = %mt76x02_rate_power_val.exit322
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit335

if.end.i326:                                      ; preds = %mt76x02_rate_power_val.exit322
  %conv.i323 = zext i16 %40 to i32
  %and.i.i324 = and i32 %conv.i323, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i324)
  %tobool.not.i.i325 = icmp eq i32 %and.i.i324, 0
  br i1 %tobool.not.i.i325, label %if.end.i326.mt76x02_rate_power_val.exit335_crit_edge, label %cond.true.i.i333

if.end.i326.mt76x02_rate_power_val.exit335_crit_edge: ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit335

cond.true.i.i333:                                 ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i327 = and i32 %conv.i323, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i327)
  %tobool.not.i.i.i328 = icmp eq i32 %and.i.i.i327, 0
  %and4.i.i.i329 = and i32 %conv.i323, 63
  %sub6.i.i.i330 = sub nsw i32 0, %and4.i.i.i329
  %cond.i.i.i331 = select i1 %tobool.not.i.i.i328, i32 %sub6.i.i.i330, i32 %and4.i.i.i329
  %phi.cast.i332 = trunc i32 %cond.i.i.i331 to i8
  br label %mt76x02_rate_power_val.exit335

mt76x02_rate_power_val.exit335:                   ; preds = %cond.true.i.i333, %if.end.i326.mt76x02_rate_power_val.exit335_crit_edge, %mt76x02_rate_power_val.exit322.mt76x02_rate_power_val.exit335_crit_edge
  %retval.0.i334 = phi i8 [ 0, %mt76x02_rate_power_val.exit322.mt76x02_rate_power_val.exit335_crit_edge ], [ %phi.cast.i332, %cond.true.i.i333 ], [ 0, %if.end.i326.mt76x02_rate_power_val.exit335_crit_edge ]
  %arrayidx48 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %retval.0.i334, ptr %arrayidx48, align 1
  %arrayidx50 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %retval.0.i334, ptr %arrayidx50, align 1
  %45 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i337 = getelementptr i8, ptr %46, i32 166
  %47 = ptrtoint ptr %add.ptr.i337 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr.i337, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #6
  %conv53 = trunc i16 %49 to i8
  %50 = add i8 %conv53, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %50)
  %51 = icmp ult i8 %50, -2
  br i1 %51, label %if.end.i344, label %mt76x02_rate_power_val.exit335.mt76x02_rate_power_val.exit353_crit_edge

mt76x02_rate_power_val.exit335.mt76x02_rate_power_val.exit353_crit_edge: ; preds = %mt76x02_rate_power_val.exit335
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit353

if.end.i344:                                      ; preds = %mt76x02_rate_power_val.exit335
  %conv53.mask = and i16 %49, 255
  %conv.i341 = zext i16 %conv53.mask to i32
  %and.i.i342 = and i32 %conv.i341, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i342)
  %tobool.not.i.i343 = icmp eq i32 %and.i.i342, 0
  br i1 %tobool.not.i.i343, label %if.end.i344.mt76x02_rate_power_val.exit353_crit_edge, label %cond.true.i.i351

if.end.i344.mt76x02_rate_power_val.exit353_crit_edge: ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit353

cond.true.i.i351:                                 ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i345 = and i32 %conv.i341, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i345)
  %tobool.not.i.i.i346 = icmp eq i32 %and.i.i.i345, 0
  %and4.i.i.i347 = and i32 %conv.i341, 63
  %sub6.i.i.i348 = sub nsw i32 0, %and4.i.i.i347
  %cond.i.i.i349 = select i1 %tobool.not.i.i.i346, i32 %sub6.i.i.i348, i32 %and4.i.i.i347
  %phi.cast.i350 = trunc i32 %cond.i.i.i349 to i8
  br label %mt76x02_rate_power_val.exit353

mt76x02_rate_power_val.exit353:                   ; preds = %cond.true.i.i351, %if.end.i344.mt76x02_rate_power_val.exit353_crit_edge, %mt76x02_rate_power_val.exit335.mt76x02_rate_power_val.exit353_crit_edge
  %retval.0.i352 = phi i8 [ 0, %mt76x02_rate_power_val.exit335.mt76x02_rate_power_val.exit353_crit_edge ], [ %phi.cast.i350, %cond.true.i.i351 ], [ 0, %if.end.i344.mt76x02_rate_power_val.exit353_crit_edge ]
  %ht = getelementptr inbounds %struct.anon.142, ptr %t, i32 0, i32 3
  %arrayidx55 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %retval.0.i352, ptr %arrayidx55, align 1
  %53 = ptrtoint ptr %ht to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %retval.0.i352, ptr %ht, align 1
  %54 = lshr i16 %49, 8
  %conv60 = trunc i16 %54 to i8
  %55 = add i8 %conv60, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %55)
  %56 = icmp ult i8 %55, -2
  br i1 %56, label %if.end.i357, label %mt76x02_rate_power_val.exit353.mt76x02_rate_power_val.exit366_crit_edge

mt76x02_rate_power_val.exit353.mt76x02_rate_power_val.exit366_crit_edge: ; preds = %mt76x02_rate_power_val.exit353
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit366

if.end.i357:                                      ; preds = %mt76x02_rate_power_val.exit353
  %conv.i354 = zext i16 %54 to i32
  %and.i.i355 = and i32 %conv.i354, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i355)
  %tobool.not.i.i356 = icmp eq i32 %and.i.i355, 0
  br i1 %tobool.not.i.i356, label %if.end.i357.mt76x02_rate_power_val.exit366_crit_edge, label %cond.true.i.i364

if.end.i357.mt76x02_rate_power_val.exit366_crit_edge: ; preds = %if.end.i357
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit366

cond.true.i.i364:                                 ; preds = %if.end.i357
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i358 = and i32 %conv.i354, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i358)
  %tobool.not.i.i.i359 = icmp eq i32 %and.i.i.i358, 0
  %and4.i.i.i360 = and i32 %conv.i354, 63
  %sub6.i.i.i361 = sub nsw i32 0, %and4.i.i.i360
  %cond.i.i.i362 = select i1 %tobool.not.i.i.i359, i32 %sub6.i.i.i361, i32 %and4.i.i.i360
  %phi.cast.i363 = trunc i32 %cond.i.i.i362 to i8
  br label %mt76x02_rate_power_val.exit366

mt76x02_rate_power_val.exit366:                   ; preds = %cond.true.i.i364, %if.end.i357.mt76x02_rate_power_val.exit366_crit_edge, %mt76x02_rate_power_val.exit353.mt76x02_rate_power_val.exit366_crit_edge
  %retval.0.i365 = phi i8 [ 0, %mt76x02_rate_power_val.exit353.mt76x02_rate_power_val.exit366_crit_edge ], [ %phi.cast.i363, %cond.true.i.i364 ], [ 0, %if.end.i357.mt76x02_rate_power_val.exit366_crit_edge ]
  %arrayidx63 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %retval.0.i365, ptr %arrayidx63, align 1
  %arrayidx65 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %retval.0.i365, ptr %arrayidx65, align 1
  %59 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i368 = getelementptr i8, ptr %60, i32 168
  %61 = ptrtoint ptr %add.ptr.i368 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %add.ptr.i368, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #6
  %conv68 = trunc i16 %63 to i8
  %64 = add i8 %conv68, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %64)
  %65 = icmp ult i8 %64, -2
  br i1 %65, label %if.end.i375, label %mt76x02_rate_power_val.exit366.mt76x02_rate_power_val.exit384_crit_edge

mt76x02_rate_power_val.exit366.mt76x02_rate_power_val.exit384_crit_edge: ; preds = %mt76x02_rate_power_val.exit366
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit384

if.end.i375:                                      ; preds = %mt76x02_rate_power_val.exit366
  %conv68.mask = and i16 %63, 255
  %conv.i372 = zext i16 %conv68.mask to i32
  %and.i.i373 = and i32 %conv.i372, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i373)
  %tobool.not.i.i374 = icmp eq i32 %and.i.i373, 0
  br i1 %tobool.not.i.i374, label %if.end.i375.mt76x02_rate_power_val.exit384_crit_edge, label %cond.true.i.i382

if.end.i375.mt76x02_rate_power_val.exit384_crit_edge: ; preds = %if.end.i375
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit384

cond.true.i.i382:                                 ; preds = %if.end.i375
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i376 = and i32 %conv.i372, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i376)
  %tobool.not.i.i.i377 = icmp eq i32 %and.i.i.i376, 0
  %and4.i.i.i378 = and i32 %conv.i372, 63
  %sub6.i.i.i379 = sub nsw i32 0, %and4.i.i.i378
  %cond.i.i.i380 = select i1 %tobool.not.i.i.i377, i32 %sub6.i.i.i379, i32 %and4.i.i.i378
  %phi.cast.i381 = trunc i32 %cond.i.i.i380 to i8
  br label %mt76x02_rate_power_val.exit384

mt76x02_rate_power_val.exit384:                   ; preds = %cond.true.i.i382, %if.end.i375.mt76x02_rate_power_val.exit384_crit_edge, %mt76x02_rate_power_val.exit366.mt76x02_rate_power_val.exit384_crit_edge
  %retval.0.i383 = phi i8 [ 0, %mt76x02_rate_power_val.exit366.mt76x02_rate_power_val.exit384_crit_edge ], [ %phi.cast.i381, %cond.true.i.i382 ], [ 0, %if.end.i375.mt76x02_rate_power_val.exit384_crit_edge ]
  %arrayidx71 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 5
  %66 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %retval.0.i383, ptr %arrayidx71, align 1
  %arrayidx73 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 4
  %67 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %retval.0.i383, ptr %arrayidx73, align 1
  %68 = lshr i16 %63, 8
  %conv76 = trunc i16 %68 to i8
  %69 = add i8 %conv76, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %69)
  %70 = icmp ult i8 %69, -2
  br i1 %70, label %if.end.i388, label %mt76x02_rate_power_val.exit384.mt76x02_rate_power_val.exit397_crit_edge

mt76x02_rate_power_val.exit384.mt76x02_rate_power_val.exit397_crit_edge: ; preds = %mt76x02_rate_power_val.exit384
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit397

if.end.i388:                                      ; preds = %mt76x02_rate_power_val.exit384
  %conv.i385 = zext i16 %68 to i32
  %and.i.i386 = and i32 %conv.i385, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i386)
  %tobool.not.i.i387 = icmp eq i32 %and.i.i386, 0
  br i1 %tobool.not.i.i387, label %if.end.i388.mt76x02_rate_power_val.exit397_crit_edge, label %cond.true.i.i395

if.end.i388.mt76x02_rate_power_val.exit397_crit_edge: ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit397

cond.true.i.i395:                                 ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i389 = and i32 %conv.i385, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i389)
  %tobool.not.i.i.i390 = icmp eq i32 %and.i.i.i389, 0
  %and4.i.i.i391 = and i32 %conv.i385, 63
  %sub6.i.i.i392 = sub nsw i32 0, %and4.i.i.i391
  %cond.i.i.i393 = select i1 %tobool.not.i.i.i390, i32 %sub6.i.i.i392, i32 %and4.i.i.i391
  %phi.cast.i394 = trunc i32 %cond.i.i.i393 to i8
  br label %mt76x02_rate_power_val.exit397

mt76x02_rate_power_val.exit397:                   ; preds = %cond.true.i.i395, %if.end.i388.mt76x02_rate_power_val.exit397_crit_edge, %mt76x02_rate_power_val.exit384.mt76x02_rate_power_val.exit397_crit_edge
  %retval.0.i396 = phi i8 [ 0, %mt76x02_rate_power_val.exit384.mt76x02_rate_power_val.exit397_crit_edge ], [ %phi.cast.i394, %cond.true.i.i395 ], [ 0, %if.end.i388.mt76x02_rate_power_val.exit397_crit_edge ]
  %arrayidx79 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 7
  %71 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %retval.0.i396, ptr %arrayidx79, align 1
  %arrayidx81 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 6
  %72 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %retval.0.i396, ptr %arrayidx81, align 1
  %73 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i399 = getelementptr i8, ptr %74, i32 170
  %75 = ptrtoint ptr %add.ptr.i399 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %add.ptr.i399, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #6
  %conv84 = trunc i16 %77 to i8
  %78 = add i8 %conv84, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %78)
  %79 = icmp ult i8 %78, -2
  br i1 %79, label %if.end.i406, label %mt76x02_rate_power_val.exit397.mt76x02_rate_power_val.exit415_crit_edge

mt76x02_rate_power_val.exit397.mt76x02_rate_power_val.exit415_crit_edge: ; preds = %mt76x02_rate_power_val.exit397
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit415

if.end.i406:                                      ; preds = %mt76x02_rate_power_val.exit397
  %conv84.mask = and i16 %77, 255
  %conv.i403 = zext i16 %conv84.mask to i32
  %and.i.i404 = and i32 %conv.i403, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i404)
  %tobool.not.i.i405 = icmp eq i32 %and.i.i404, 0
  br i1 %tobool.not.i.i405, label %if.end.i406.mt76x02_rate_power_val.exit415_crit_edge, label %cond.true.i.i413

if.end.i406.mt76x02_rate_power_val.exit415_crit_edge: ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit415

cond.true.i.i413:                                 ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i407 = and i32 %conv.i403, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i407)
  %tobool.not.i.i.i408 = icmp eq i32 %and.i.i.i407, 0
  %and4.i.i.i409 = and i32 %conv.i403, 63
  %sub6.i.i.i410 = sub nsw i32 0, %and4.i.i.i409
  %cond.i.i.i411 = select i1 %tobool.not.i.i.i408, i32 %sub6.i.i.i410, i32 %and4.i.i.i409
  %phi.cast.i412 = trunc i32 %cond.i.i.i411 to i8
  br label %mt76x02_rate_power_val.exit415

mt76x02_rate_power_val.exit415:                   ; preds = %cond.true.i.i413, %if.end.i406.mt76x02_rate_power_val.exit415_crit_edge, %mt76x02_rate_power_val.exit397.mt76x02_rate_power_val.exit415_crit_edge
  %retval.0.i414 = phi i8 [ 0, %mt76x02_rate_power_val.exit397.mt76x02_rate_power_val.exit415_crit_edge ], [ %phi.cast.i412, %cond.true.i.i413 ], [ 0, %if.end.i406.mt76x02_rate_power_val.exit415_crit_edge ]
  %arrayidx87 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 9
  %80 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %retval.0.i414, ptr %arrayidx87, align 1
  %arrayidx89 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 8
  %81 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %retval.0.i414, ptr %arrayidx89, align 1
  %82 = lshr i16 %77, 8
  %conv92 = trunc i16 %82 to i8
  %83 = add i8 %conv92, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %83)
  %84 = icmp ult i8 %83, -2
  br i1 %84, label %if.end.i419, label %mt76x02_rate_power_val.exit415.mt76x02_rate_power_val.exit428_crit_edge

mt76x02_rate_power_val.exit415.mt76x02_rate_power_val.exit428_crit_edge: ; preds = %mt76x02_rate_power_val.exit415
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit428

if.end.i419:                                      ; preds = %mt76x02_rate_power_val.exit415
  %conv.i416 = zext i16 %82 to i32
  %and.i.i417 = and i32 %conv.i416, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i417)
  %tobool.not.i.i418 = icmp eq i32 %and.i.i417, 0
  br i1 %tobool.not.i.i418, label %if.end.i419.mt76x02_rate_power_val.exit428_crit_edge, label %cond.true.i.i426

if.end.i419.mt76x02_rate_power_val.exit428_crit_edge: ; preds = %if.end.i419
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit428

cond.true.i.i426:                                 ; preds = %if.end.i419
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i420 = and i32 %conv.i416, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i420)
  %tobool.not.i.i.i421 = icmp eq i32 %and.i.i.i420, 0
  %and4.i.i.i422 = and i32 %conv.i416, 63
  %sub6.i.i.i423 = sub nsw i32 0, %and4.i.i.i422
  %cond.i.i.i424 = select i1 %tobool.not.i.i.i421, i32 %sub6.i.i.i423, i32 %and4.i.i.i422
  %phi.cast.i425 = trunc i32 %cond.i.i.i424 to i8
  br label %mt76x02_rate_power_val.exit428

mt76x02_rate_power_val.exit428:                   ; preds = %cond.true.i.i426, %if.end.i419.mt76x02_rate_power_val.exit428_crit_edge, %mt76x02_rate_power_val.exit415.mt76x02_rate_power_val.exit428_crit_edge
  %retval.0.i427 = phi i8 [ 0, %mt76x02_rate_power_val.exit415.mt76x02_rate_power_val.exit428_crit_edge ], [ %phi.cast.i425, %cond.true.i.i426 ], [ 0, %if.end.i419.mt76x02_rate_power_val.exit428_crit_edge ]
  %arrayidx95 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 11
  %85 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %retval.0.i427, ptr %arrayidx95, align 1
  %arrayidx97 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 10
  %86 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %retval.0.i427, ptr %arrayidx97, align 1
  %87 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i430 = getelementptr i8, ptr %88, i32 172
  %89 = ptrtoint ptr %add.ptr.i430 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %add.ptr.i430, align 1
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #6
  %conv100 = trunc i16 %91 to i8
  %92 = add i8 %conv100, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %92)
  %93 = icmp ult i8 %92, -2
  br i1 %93, label %if.end.i437, label %mt76x02_rate_power_val.exit428.mt76x02_rate_power_val.exit446_crit_edge

mt76x02_rate_power_val.exit428.mt76x02_rate_power_val.exit446_crit_edge: ; preds = %mt76x02_rate_power_val.exit428
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit446

if.end.i437:                                      ; preds = %mt76x02_rate_power_val.exit428
  %conv100.mask = and i16 %91, 255
  %conv.i434 = zext i16 %conv100.mask to i32
  %and.i.i435 = and i32 %conv.i434, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i435)
  %tobool.not.i.i436 = icmp eq i32 %and.i.i435, 0
  br i1 %tobool.not.i.i436, label %if.end.i437.mt76x02_rate_power_val.exit446_crit_edge, label %cond.true.i.i444

if.end.i437.mt76x02_rate_power_val.exit446_crit_edge: ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit446

cond.true.i.i444:                                 ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i438 = and i32 %conv.i434, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i438)
  %tobool.not.i.i.i439 = icmp eq i32 %and.i.i.i438, 0
  %and4.i.i.i440 = and i32 %conv.i434, 63
  %sub6.i.i.i441 = sub nsw i32 0, %and4.i.i.i440
  %cond.i.i.i442 = select i1 %tobool.not.i.i.i439, i32 %sub6.i.i.i441, i32 %and4.i.i.i440
  %phi.cast.i443 = trunc i32 %cond.i.i.i442 to i8
  br label %mt76x02_rate_power_val.exit446

mt76x02_rate_power_val.exit446:                   ; preds = %cond.true.i.i444, %if.end.i437.mt76x02_rate_power_val.exit446_crit_edge, %mt76x02_rate_power_val.exit428.mt76x02_rate_power_val.exit446_crit_edge
  %retval.0.i445 = phi i8 [ 0, %mt76x02_rate_power_val.exit428.mt76x02_rate_power_val.exit446_crit_edge ], [ %phi.cast.i443, %cond.true.i.i444 ], [ 0, %if.end.i437.mt76x02_rate_power_val.exit446_crit_edge ]
  %arrayidx103 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 13
  %94 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %retval.0.i445, ptr %arrayidx103, align 1
  %arrayidx105 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 12
  %95 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %retval.0.i445, ptr %arrayidx105, align 1
  %96 = lshr i16 %91, 8
  %conv108 = trunc i16 %96 to i8
  %97 = add i8 %conv108, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %97)
  %98 = icmp ult i8 %97, -2
  br i1 %98, label %if.end.i450, label %mt76x02_rate_power_val.exit446.mt76x02_rate_power_val.exit459_crit_edge

mt76x02_rate_power_val.exit446.mt76x02_rate_power_val.exit459_crit_edge: ; preds = %mt76x02_rate_power_val.exit446
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit459

if.end.i450:                                      ; preds = %mt76x02_rate_power_val.exit446
  %conv.i447 = zext i16 %96 to i32
  %and.i.i448 = and i32 %conv.i447, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i448)
  %tobool.not.i.i449 = icmp eq i32 %and.i.i448, 0
  br i1 %tobool.not.i.i449, label %if.end.i450.mt76x02_rate_power_val.exit459_crit_edge, label %cond.true.i.i457

if.end.i450.mt76x02_rate_power_val.exit459_crit_edge: ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit459

cond.true.i.i457:                                 ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i451 = and i32 %conv.i447, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i451)
  %tobool.not.i.i.i452 = icmp eq i32 %and.i.i.i451, 0
  %and4.i.i.i453 = and i32 %conv.i447, 63
  %sub6.i.i.i454 = sub nsw i32 0, %and4.i.i.i453
  %cond.i.i.i455 = select i1 %tobool.not.i.i.i452, i32 %sub6.i.i.i454, i32 %and4.i.i.i453
  %phi.cast.i456 = trunc i32 %cond.i.i.i455 to i8
  br label %mt76x02_rate_power_val.exit459

mt76x02_rate_power_val.exit459:                   ; preds = %cond.true.i.i457, %if.end.i450.mt76x02_rate_power_val.exit459_crit_edge, %mt76x02_rate_power_val.exit446.mt76x02_rate_power_val.exit459_crit_edge
  %retval.0.i458 = phi i8 [ 0, %mt76x02_rate_power_val.exit446.mt76x02_rate_power_val.exit459_crit_edge ], [ %phi.cast.i456, %cond.true.i.i457 ], [ 0, %if.end.i450.mt76x02_rate_power_val.exit459_crit_edge ]
  %arrayidx111 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 15
  %99 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %retval.0.i458, ptr %arrayidx111, align 1
  %arrayidx113 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 3, i32 14
  %100 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %retval.0.i458, ptr %arrayidx113, align 1
  %101 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i461 = getelementptr i8, ptr %102, i32 186
  %103 = ptrtoint ptr %add.ptr.i461 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %add.ptr.i461, align 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #6
  %conv116 = trunc i16 %105 to i8
  %106 = add i8 %conv116, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %106)
  %107 = icmp ult i8 %106, -2
  br i1 %107, label %if.end.i468, label %mt76x02_rate_power_val.exit459.mt76x02_rate_power_val.exit477_crit_edge

mt76x02_rate_power_val.exit459.mt76x02_rate_power_val.exit477_crit_edge: ; preds = %mt76x02_rate_power_val.exit459
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit477

if.end.i468:                                      ; preds = %mt76x02_rate_power_val.exit459
  %conv116.mask = and i16 %105, 255
  %conv.i465 = zext i16 %conv116.mask to i32
  %and.i.i466 = and i32 %conv.i465, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i466)
  %tobool.not.i.i467 = icmp eq i32 %and.i.i466, 0
  br i1 %tobool.not.i.i467, label %if.end.i468.mt76x02_rate_power_val.exit477_crit_edge, label %cond.true.i.i475

if.end.i468.mt76x02_rate_power_val.exit477_crit_edge: ; preds = %if.end.i468
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit477

cond.true.i.i475:                                 ; preds = %if.end.i468
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i469 = and i32 %conv.i465, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i469)
  %tobool.not.i.i.i470 = icmp eq i32 %and.i.i.i469, 0
  %and4.i.i.i471 = and i32 %conv.i465, 63
  %sub6.i.i.i472 = sub nsw i32 0, %and4.i.i.i471
  %cond.i.i.i473 = select i1 %tobool.not.i.i.i470, i32 %sub6.i.i.i472, i32 %and4.i.i.i471
  %phi.cast.i474 = trunc i32 %cond.i.i.i473 to i8
  br label %mt76x02_rate_power_val.exit477

mt76x02_rate_power_val.exit477:                   ; preds = %cond.true.i.i475, %if.end.i468.mt76x02_rate_power_val.exit477_crit_edge, %mt76x02_rate_power_val.exit459.mt76x02_rate_power_val.exit477_crit_edge
  %retval.0.i476 = phi i8 [ 0, %mt76x02_rate_power_val.exit459.mt76x02_rate_power_val.exit477_crit_edge ], [ %phi.cast.i474, %cond.true.i.i475 ], [ 0, %if.end.i468.mt76x02_rate_power_val.exit477_crit_edge ]
  %vht = getelementptr inbounds %struct.anon.142, ptr %t, i32 0, i32 4
  %arrayidx118 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 1
  %108 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %retval.0.i476, ptr %arrayidx118, align 1
  %109 = ptrtoint ptr %vht to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %retval.0.i476, ptr %vht, align 1
  %110 = lshr i16 %105, 8
  %conv123 = trunc i16 %110 to i8
  %111 = add i8 %conv123, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %111)
  %112 = icmp ult i8 %111, -2
  br i1 %112, label %if.end.i481, label %mt76x02_rate_power_val.exit477.mt76x02_rate_power_val.exit490_crit_edge

mt76x02_rate_power_val.exit477.mt76x02_rate_power_val.exit490_crit_edge: ; preds = %mt76x02_rate_power_val.exit477
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit490

if.end.i481:                                      ; preds = %mt76x02_rate_power_val.exit477
  %conv.i478 = zext i16 %110 to i32
  %and.i.i479 = and i32 %conv.i478, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i479)
  %tobool.not.i.i480 = icmp eq i32 %and.i.i479, 0
  br i1 %tobool.not.i.i480, label %if.end.i481.mt76x02_rate_power_val.exit490_crit_edge, label %cond.true.i.i488

if.end.i481.mt76x02_rate_power_val.exit490_crit_edge: ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit490

cond.true.i.i488:                                 ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i482 = and i32 %conv.i478, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i482)
  %tobool.not.i.i.i483 = icmp eq i32 %and.i.i.i482, 0
  %and4.i.i.i484 = and i32 %conv.i478, 63
  %sub6.i.i.i485 = sub nsw i32 0, %and4.i.i.i484
  %cond.i.i.i486 = select i1 %tobool.not.i.i.i483, i32 %sub6.i.i.i485, i32 %and4.i.i.i484
  %phi.cast.i487 = trunc i32 %cond.i.i.i486 to i8
  br label %mt76x02_rate_power_val.exit490

mt76x02_rate_power_val.exit490:                   ; preds = %cond.true.i.i488, %if.end.i481.mt76x02_rate_power_val.exit490_crit_edge, %mt76x02_rate_power_val.exit477.mt76x02_rate_power_val.exit490_crit_edge
  %retval.0.i489 = phi i8 [ 0, %mt76x02_rate_power_val.exit477.mt76x02_rate_power_val.exit490_crit_edge ], [ %phi.cast.i487, %cond.true.i.i488 ], [ 0, %if.end.i481.mt76x02_rate_power_val.exit490_crit_edge ]
  %arrayidx126 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 3
  %113 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %retval.0.i489, ptr %arrayidx126, align 1
  %arrayidx128 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 2
  %114 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %retval.0.i489, ptr %arrayidx128, align 1
  %115 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i492 = getelementptr i8, ptr %116, i32 188
  %117 = ptrtoint ptr %add.ptr.i492 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %add.ptr.i492, align 1
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #6
  %conv131 = trunc i16 %119 to i8
  %120 = add i8 %conv131, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %120)
  %121 = icmp ult i8 %120, -2
  br i1 %121, label %if.end.i499, label %mt76x02_rate_power_val.exit490.mt76x02_rate_power_val.exit508_crit_edge

mt76x02_rate_power_val.exit490.mt76x02_rate_power_val.exit508_crit_edge: ; preds = %mt76x02_rate_power_val.exit490
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit508

if.end.i499:                                      ; preds = %mt76x02_rate_power_val.exit490
  %conv131.mask = and i16 %119, 255
  %conv.i496 = zext i16 %conv131.mask to i32
  %and.i.i497 = and i32 %conv.i496, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i497)
  %tobool.not.i.i498 = icmp eq i32 %and.i.i497, 0
  br i1 %tobool.not.i.i498, label %if.end.i499.mt76x02_rate_power_val.exit508_crit_edge, label %cond.true.i.i506

if.end.i499.mt76x02_rate_power_val.exit508_crit_edge: ; preds = %if.end.i499
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit508

cond.true.i.i506:                                 ; preds = %if.end.i499
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i500 = and i32 %conv.i496, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i500)
  %tobool.not.i.i.i501 = icmp eq i32 %and.i.i.i500, 0
  %and4.i.i.i502 = and i32 %conv.i496, 63
  %sub6.i.i.i503 = sub nsw i32 0, %and4.i.i.i502
  %cond.i.i.i504 = select i1 %tobool.not.i.i.i501, i32 %sub6.i.i.i503, i32 %and4.i.i.i502
  %phi.cast.i505 = trunc i32 %cond.i.i.i504 to i8
  br label %mt76x02_rate_power_val.exit508

mt76x02_rate_power_val.exit508:                   ; preds = %cond.true.i.i506, %if.end.i499.mt76x02_rate_power_val.exit508_crit_edge, %mt76x02_rate_power_val.exit490.mt76x02_rate_power_val.exit508_crit_edge
  %retval.0.i507 = phi i8 [ 0, %mt76x02_rate_power_val.exit490.mt76x02_rate_power_val.exit508_crit_edge ], [ %phi.cast.i505, %cond.true.i.i506 ], [ 0, %if.end.i499.mt76x02_rate_power_val.exit508_crit_edge ]
  %arrayidx134 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 5
  %122 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %retval.0.i507, ptr %arrayidx134, align 1
  %arrayidx136 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 4
  %123 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %retval.0.i507, ptr %arrayidx136, align 1
  %124 = lshr i16 %119, 8
  %conv139 = trunc i16 %124 to i8
  %125 = add i8 %conv139, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %125)
  %126 = icmp ult i8 %125, -2
  br i1 %126, label %if.end.i512, label %mt76x02_rate_power_val.exit508.mt76x02_rate_power_val.exit521_crit_edge

mt76x02_rate_power_val.exit508.mt76x02_rate_power_val.exit521_crit_edge: ; preds = %mt76x02_rate_power_val.exit508
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit521

if.end.i512:                                      ; preds = %mt76x02_rate_power_val.exit508
  %conv.i509 = zext i16 %124 to i32
  %and.i.i510 = and i32 %conv.i509, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i510)
  %tobool.not.i.i511 = icmp eq i32 %and.i.i510, 0
  br i1 %tobool.not.i.i511, label %if.end.i512.mt76x02_rate_power_val.exit521_crit_edge, label %cond.true.i.i519

if.end.i512.mt76x02_rate_power_val.exit521_crit_edge: ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit521

cond.true.i.i519:                                 ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i513 = and i32 %conv.i509, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i513)
  %tobool.not.i.i.i514 = icmp eq i32 %and.i.i.i513, 0
  %and4.i.i.i515 = and i32 %conv.i509, 63
  %sub6.i.i.i516 = sub nsw i32 0, %and4.i.i.i515
  %cond.i.i.i517 = select i1 %tobool.not.i.i.i514, i32 %sub6.i.i.i516, i32 %and4.i.i.i515
  %phi.cast.i518 = trunc i32 %cond.i.i.i517 to i8
  br label %mt76x02_rate_power_val.exit521

mt76x02_rate_power_val.exit521:                   ; preds = %cond.true.i.i519, %if.end.i512.mt76x02_rate_power_val.exit521_crit_edge, %mt76x02_rate_power_val.exit508.mt76x02_rate_power_val.exit521_crit_edge
  %retval.0.i520 = phi i8 [ 0, %mt76x02_rate_power_val.exit508.mt76x02_rate_power_val.exit521_crit_edge ], [ %phi.cast.i518, %cond.true.i.i519 ], [ 0, %if.end.i512.mt76x02_rate_power_val.exit521_crit_edge ]
  %arrayidx142 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 7
  %127 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %retval.0.i520, ptr %arrayidx142, align 1
  %arrayidx144 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 6
  %128 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %retval.0.i520, ptr %arrayidx144, align 1
  %129 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i523 = getelementptr i8, ptr %130, i32 190
  %131 = ptrtoint ptr %add.ptr.i523 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %add.ptr.i523, align 1
  %extract.t = trunc i16 %132 to i8
  %spec.select = select i1 %cmp, i8 %extract.t, i8 0
  %133 = add i8 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %133)
  %134 = icmp ult i8 %133, -2
  br i1 %134, label %if.end.i530, label %mt76x02_rate_power_val.exit521.mt76x02_rate_power_val.exit539_crit_edge

mt76x02_rate_power_val.exit521.mt76x02_rate_power_val.exit539_crit_edge: ; preds = %mt76x02_rate_power_val.exit521
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit539

if.end.i530:                                      ; preds = %mt76x02_rate_power_val.exit521
  %conv.i527 = zext i8 %spec.select to i32
  %and.i.i528 = and i32 %conv.i527, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i528)
  %tobool.not.i.i529 = icmp eq i32 %and.i.i528, 0
  br i1 %tobool.not.i.i529, label %if.end.i530.mt76x02_rate_power_val.exit539_crit_edge, label %cond.true.i.i537

if.end.i530.mt76x02_rate_power_val.exit539_crit_edge: ; preds = %if.end.i530
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit539

cond.true.i.i537:                                 ; preds = %if.end.i530
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i531 = and i32 %conv.i527, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i531)
  %tobool.not.i.i.i532 = icmp eq i32 %and.i.i.i531, 0
  %and4.i.i.i533 = and i32 %conv.i527, 63
  %sub6.i.i.i534 = sub nsw i32 0, %and4.i.i.i533
  %cond.i.i.i535 = select i1 %tobool.not.i.i.i532, i32 %sub6.i.i.i534, i32 %and4.i.i.i533
  %phi.cast.i536 = trunc i32 %cond.i.i.i535 to i8
  br label %mt76x02_rate_power_val.exit539

mt76x02_rate_power_val.exit539:                   ; preds = %cond.true.i.i537, %if.end.i530.mt76x02_rate_power_val.exit539_crit_edge, %mt76x02_rate_power_val.exit521.mt76x02_rate_power_val.exit539_crit_edge
  %retval.0.i538 = phi i8 [ 0, %mt76x02_rate_power_val.exit521.mt76x02_rate_power_val.exit539_crit_edge ], [ %phi.cast.i536, %cond.true.i.i537 ], [ 0, %if.end.i530.mt76x02_rate_power_val.exit539_crit_edge ]
  %arrayidx158 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 9
  %135 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %retval.0.i538, ptr %arrayidx158, align 1
  %arrayidx160 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 4, i32 8
  %136 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %retval.0.i538, ptr %arrayidx160, align 1
  %stbc = getelementptr inbounds %struct.anon.142, ptr %t, i32 0, i32 2
  %137 = ptrtoint ptr %ht to i32
  call void @__asan_loadN_noabort(i32 %137, i32 8)
  %138 = load i64, ptr %ht, align 1
  %139 = ptrtoint ptr %stbc to i32
  call void @__asan_storeN_noabort(i32 %139, i32 8)
  store i64 %138, ptr %stbc, align 1
  %arrayidx166 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 2, i32 8
  %140 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %retval.0.i538, ptr %arrayidx166, align 1
  %arrayidx170 = getelementptr %struct.anon.142, ptr %t, i32 0, i32 2, i32 9
  %141 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %retval.0.i538, ptr %arrayidx170, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_get_power_info(ptr noundef %dev, ptr nocapture noundef %t, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  %data.i41 = alloca [6 x i8], align 1
  %data.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %t, i32 0, i32 11)
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %1 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %2, i32 80
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr.i, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %add.ptr.i39 = getelementptr i8, ptr %2, i32 82
  %6 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr.i39, align 1
  %8 = lshr i16 %7, 8
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mt76x2_get_power_info_5g(ptr noundef %dev, ptr noundef %t, ptr noundef %chan, i32 noundef 0, i32 noundef 98)
  tail call fastcc void @mt76x2_get_power_info_5g(ptr noundef %dev, ptr noundef %t, ptr noundef %chan, i32 noundef 1, i32 noundef 128)
  %11 = lshr i16 %5, 8
  %extract.t96 = trunc i16 %11 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #6
  %14 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 1
  %15 = getelementptr inbounds [6 x i8], ptr %data.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %13)
  %cmp.i = icmp ult i16 %13, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %13)
  %cmp2.i = icmp ult i16 %13, 11
  %..i = select i1 %cmp2.i, i32 4, i32 5
  %delta_idx.0.i = select i1 %cmp.i, i32 3, i32 %..i
  %16 = call ptr @memset(ptr %data.i, i32 255, i32 6)
  %call.i = call i32 @mt76x02_eeprom_copy(ptr noundef %dev, i32 noundef 86, ptr noundef nonnull %data.i, i32 noundef 6) #6
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data.i, align 1
  %arrayidx8.i = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 0
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx8.i, align 1
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %14, align 1
  %tssi_offset.i = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %tssi_offset.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tssi_offset.i, align 1
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %15, align 1
  %target_power.i = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %target_power.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %target_power.i, align 1
  %arrayidx15.i = getelementptr [6 x i8], ptr %data.i, i32 0, i32 %delta_idx.0.i
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %27 to i32
  %and.i.i = and i32 %conv16.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.mt76x2_get_power_info_2g.exit_crit_edge, label %cond.true.i.i

if.else.mt76x2_get_power_info_2g.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_get_power_info_2g.exit

cond.true.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = and i32 %conv16.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and4.i.i.i = and i32 %conv16.i, 63
  %sub6.i.i.i = sub nsw i32 0, %and4.i.i.i
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %sub6.i.i.i, i32 %and4.i.i.i
  %phi.cast.i = trunc i32 %cond.i.i.i to i8
  br label %mt76x2_get_power_info_2g.exit

mt76x2_get_power_info_2g.exit:                    ; preds = %cond.true.i.i, %if.else.mt76x2_get_power_info_2g.exit_crit_edge
  %cond.i.i = phi i8 [ %phi.cast.i, %cond.true.i.i ], [ 0, %if.else.mt76x2_get_power_info_2g.exit_crit_edge ]
  %delta.i = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 0, i32 3
  %28 = ptrtoint ptr %delta.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %cond.i.i, ptr %delta.i, align 1
  %29 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 246
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr.i.i, align 1
  %conv24.i = trunc i16 %32 to i8
  %33 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv24.i, ptr %t, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #6
  %34 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hw_value.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i41) #6
  %36 = getelementptr inbounds [6 x i8], ptr %data.i41, i32 0, i32 1
  %37 = getelementptr inbounds [6 x i8], ptr %data.i41, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %35)
  %cmp.i43 = icmp ult i16 %35, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %35)
  %cmp2.i44 = icmp ult i16 %35, 11
  %..i45 = select i1 %cmp2.i44, i32 4, i32 5
  %delta_idx.0.i46 = select i1 %cmp.i43, i32 3, i32 %..i45
  %38 = call ptr @memset(ptr %data.i41, i32 255, i32 6)
  %call.i47 = call i32 @mt76x02_eeprom_copy(ptr noundef %dev, i32 noundef 92, ptr noundef nonnull %data.i41, i32 noundef 6) #6
  %39 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data.i41, align 1
  %arrayidx8.i48 = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx8.i48 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx8.i48, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %36, align 1
  %tssi_offset.i49 = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 1, i32 1
  %44 = ptrtoint ptr %tssi_offset.i49 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tssi_offset.i49, align 1
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %37, align 1
  %target_power.i50 = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 1, i32 2
  %47 = ptrtoint ptr %target_power.i50 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %target_power.i50, align 1
  %arrayidx15.i51 = getelementptr [6 x i8], ptr %data.i41, i32 0, i32 %delta_idx.0.i46
  %48 = ptrtoint ptr %arrayidx15.i51 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx15.i51, align 1
  %conv16.i52 = zext i8 %49 to i32
  %and.i.i53 = and i32 %conv16.i52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53)
  %tobool.not.i.i54 = icmp eq i32 %and.i.i53, 0
  br i1 %tobool.not.i.i54, label %mt76x2_get_power_info_2g.exit.mt76x2_get_power_info_2g.exit67_crit_edge, label %cond.true.i.i61

mt76x2_get_power_info_2g.exit.mt76x2_get_power_info_2g.exit67_crit_edge: ; preds = %mt76x2_get_power_info_2g.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_get_power_info_2g.exit67

cond.true.i.i61:                                  ; preds = %mt76x2_get_power_info_2g.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i55 = and i32 %conv16.i52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i55)
  %tobool.not.i.i.i56 = icmp eq i32 %and.i.i.i55, 0
  %and4.i.i.i57 = and i32 %conv16.i52, 63
  %sub6.i.i.i58 = sub nsw i32 0, %and4.i.i.i57
  %cond.i.i.i59 = select i1 %tobool.not.i.i.i56, i32 %sub6.i.i.i58, i32 %and4.i.i.i57
  %phi.cast.i60 = trunc i32 %cond.i.i.i59 to i8
  br label %mt76x2_get_power_info_2g.exit67

mt76x2_get_power_info_2g.exit67:                  ; preds = %cond.true.i.i61, %mt76x2_get_power_info_2g.exit.mt76x2_get_power_info_2g.exit67_crit_edge
  %cond.i.i62 = phi i8 [ %phi.cast.i60, %cond.true.i.i61 ], [ 0, %mt76x2_get_power_info_2g.exit.mt76x2_get_power_info_2g.exit67_crit_edge ]
  %delta.i63 = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 1, i32 3
  %50 = ptrtoint ptr %delta.i63 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %cond.i.i62, ptr %delta.i63, align 1
  %51 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i.i65 = getelementptr i8, ptr %52, i32 246
  %53 = ptrtoint ptr %add.ptr.i.i65 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %add.ptr.i.i65, align 1
  %conv24.i66 = trunc i16 %54 to i8
  %55 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv24.i66, ptr %t, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i41) #6
  %extract.t95 = trunc i16 %5 to i8
  br label %if.end

if.end:                                           ; preds = %mt76x2_get_power_info_2g.exit67, %if.then
  %.sink.off0 = phi i8 [ %extract.t95, %mt76x2_get_power_info_2g.exit67 ], [ %extract.t96, %if.then ]
  %56 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 84
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %add.ptr.i.i.i, align 1
  %.mask.i.i = and i16 %59, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.i)
  %tobool.not.i.i68 = icmp eq i16 %.mask.i.i, 0
  br i1 %tobool.not.i.i68, label %if.end.mt76x2_tssi_enabled.exit_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i

if.end.mt76x2_tssi_enabled.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_tssi_enabled.exit

mt76x2_temp_tx_alc_enabled.exit.i:                ; preds = %if.end
  %add.ptr.i7.i.i = getelementptr i8, ptr %57, i32 54
  %60 = ptrtoint ptr %add.ptr.i7.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %add.ptr.i7.i.i, align 1
  %62 = and i16 %61, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool4.i.not.i = icmp eq i16 %62, 0
  br i1 %tobool4.i.not.i, label %mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i.lor.lhs.false_crit_edge

mt76x2_temp_tx_alc_enabled.exit.i.lor.lhs.false_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_tssi_enabled.exit

mt76x2_tssi_enabled.exit:                         ; preds = %mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge, %if.end.mt76x2_tssi_enabled.exit_crit_edge
  %add.ptr.i.i69 = getelementptr i8, ptr %57, i32 54
  %63 = ptrtoint ptr %add.ptr.i.i69 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %add.ptr.i.i69, align 1
  %65 = and i16 %64, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.i.not = icmp eq i16 %65, 0
  br i1 %tobool.i.not, label %mt76x2_tssi_enabled.exit.lor.lhs.false_crit_edge, label %mt76x2_tssi_enabled.exit.if.then9_crit_edge

mt76x2_tssi_enabled.exit.if.then9_crit_edge:      ; preds = %mt76x2_tssi_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

mt76x2_tssi_enabled.exit.lor.lhs.false_crit_edge: ; preds = %mt76x2_tssi_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %mt76x2_tssi_enabled.exit.lor.lhs.false_crit_edge, %mt76x2_temp_tx_alc_enabled.exit.i.lor.lhs.false_crit_edge
  %66 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %t, align 1
  %68 = add i8 %67, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %68)
  %69 = icmp ult i8 %68, -2
  br i1 %69, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %mt76x2_tssi_enabled.exit.if.then9_crit_edge
  %target_power10 = getelementptr inbounds %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 0, i32 2
  %70 = ptrtoint ptr %target_power10 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %target_power10, align 1
  %72 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %t, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %lor.lhs.false.if.end12_crit_edge
  %73 = add i8 %.sink.off0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %73)
  %74 = icmp ult i8 %73, -2
  br i1 %74, label %if.end.i, label %if.end12.mt76x02_rate_power_val.exit_crit_edge

if.end12.mt76x02_rate_power_val.exit_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit

if.end.i:                                         ; preds = %if.end12
  %conv.i70 = zext i8 %.sink.off0 to i32
  %and.i.i71 = and i32 %conv.i70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.not.i.i72 = icmp eq i32 %and.i.i71, 0
  br i1 %tobool.not.i.i72, label %if.end.i.mt76x02_rate_power_val.exit_crit_edge, label %cond.true.i.i79

if.end.i.mt76x02_rate_power_val.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit

cond.true.i.i79:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i73 = and i32 %conv.i70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73)
  %tobool.not.i.i.i74 = icmp eq i32 %and.i.i.i73, 0
  %and4.i.i.i75 = and i32 %conv.i70, 63
  %sub6.i.i.i76 = sub nsw i32 0, %and4.i.i.i75
  %cond.i.i.i77 = select i1 %tobool.not.i.i.i74, i32 %sub6.i.i.i76, i32 %and4.i.i.i75
  %phi.cast.i78 = trunc i32 %cond.i.i.i77 to i8
  br label %mt76x02_rate_power_val.exit

mt76x02_rate_power_val.exit:                      ; preds = %cond.true.i.i79, %if.end.i.mt76x02_rate_power_val.exit_crit_edge, %if.end12.mt76x02_rate_power_val.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.end12.mt76x02_rate_power_val.exit_crit_edge ], [ %phi.cast.i78, %cond.true.i.i79 ], [ 0, %if.end.i.mt76x02_rate_power_val.exit_crit_edge ]
  %delta_bw40 = getelementptr inbounds %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 1
  %75 = ptrtoint ptr %delta_bw40 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %retval.0.i, ptr %delta_bw40, align 1
  %conv15 = trunc i16 %8 to i8
  %76 = add i8 %conv15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %76)
  %77 = icmp ult i8 %76, -2
  br i1 %77, label %if.end.i83, label %mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit92_crit_edge

mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit92_crit_edge: ; preds = %mt76x02_rate_power_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit92

if.end.i83:                                       ; preds = %mt76x02_rate_power_val.exit
  %conv.i80 = zext i16 %8 to i32
  %and.i.i81 = and i32 %conv.i80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.end.i83.mt76x02_rate_power_val.exit92_crit_edge, label %cond.true.i.i90

if.end.i83.mt76x02_rate_power_val.exit92_crit_edge: ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_rate_power_val.exit92

cond.true.i.i90:                                  ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i84 = and i32 %conv.i80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i84)
  %tobool.not.i.i.i85 = icmp eq i32 %and.i.i.i84, 0
  %and4.i.i.i86 = and i32 %conv.i80, 63
  %sub6.i.i.i87 = sub nsw i32 0, %and4.i.i.i86
  %cond.i.i.i88 = select i1 %tobool.not.i.i.i85, i32 %sub6.i.i.i87, i32 %and4.i.i.i86
  %phi.cast.i89 = trunc i32 %cond.i.i.i88 to i8
  br label %mt76x02_rate_power_val.exit92

mt76x02_rate_power_val.exit92:                    ; preds = %cond.true.i.i90, %if.end.i83.mt76x02_rate_power_val.exit92_crit_edge, %mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit92_crit_edge
  %retval.0.i91 = phi i8 [ 0, %mt76x02_rate_power_val.exit.mt76x02_rate_power_val.exit92_crit_edge ], [ %phi.cast.i89, %cond.true.i.i90 ], [ 0, %if.end.i83.mt76x02_rate_power_val.exit92_crit_edge ]
  %delta_bw80 = getelementptr inbounds %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 2
  %78 = ptrtoint ptr %delta_bw80 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %retval.0.i91, ptr %delta_bw80, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x2_get_power_info_5g(ptr noundef %dev, ptr nocapture noundef writeonly %t, ptr nocapture noundef readonly %chan, i32 noundef %chain, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #6
  %2 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 2
  %4 = add nsw i32 %conv, -184
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %4)
  %5 = icmp ult i32 %4, 13
  %6 = call ptr @memset(ptr %data, i32 255, i32 5)
  br i1 %5, label %entry.mt76x2_get_cal_channel_group.exit_crit_edge, label %if.end.i

entry.mt76x2_get_cal_channel_group.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x2_get_cal_channel_group.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 49, i16 %1)
  %cmp2.i = icmp ult i16 %1, 49
  br i1 %cmp2.i, label %if.end.i.if.else_crit_edge, label %if.end4.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %1)
  %cmp5.i = icmp ult i16 %1, 65
  br i1 %cmp5.i, label %if.end4.i.if.else9_crit_edge, label %if.end7.i

if.end4.i.if.else9_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else9

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 115, i16 %1)
  %cmp8.i = icmp ult i16 %1, 115
  br i1 %cmp8.i, label %if.end7.i.if.else17_crit_edge, label %if.end10.i

if.end7.i.if.else17_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 145, i16 %1)
  %cmp11.i = icmp ult i16 %1, 145
  %phi.bo = select i1 %cmp11.i, i32 20, i32 25
  br label %mt76x2_get_cal_channel_group.exit

mt76x2_get_cal_channel_group.exit:                ; preds = %if.end10.i, %entry.mt76x2_get_cal_channel_group.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.mt76x2_get_cal_channel_group.exit_crit_edge ], [ %phi.bo, %if.end10.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 191, i16 %1)
  %cmp = icmp ugt i16 %1, 191
  br i1 %cmp, label %mt76x2_get_cal_channel_group.exit.if.end51_crit_edge, label %mt76x2_get_cal_channel_group.exit.if.else_crit_edge

mt76x2_get_cal_channel_group.exit.if.else_crit_edge: ; preds = %mt76x2_get_cal_channel_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

mt76x2_get_cal_channel_group.exit.if.end51_crit_edge: ; preds = %mt76x2_get_cal_channel_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else:                                          ; preds = %mt76x2_get_cal_channel_group.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %retval.0.i96 = phi i32 [ %retval.0.i, %mt76x2_get_cal_channel_group.exit.if.else_crit_edge ], [ 5, %if.end.i.if.else_crit_edge ]
  %7 = add nsw i16 %1, -184
  call void @__sanitizer_cov_trace_const_cmp2(i16 -140, i16 %7)
  %8 = icmp ult i16 %7, -140
  br i1 %8, label %if.else.if.end51_crit_edge, label %if.else.if.else9_crit_edge

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else9

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else9:                                         ; preds = %if.else.if.else9_crit_edge, %if.end4.i.if.else9_crit_edge
  %retval.0.i9699 = phi i32 [ %retval.0.i96, %if.else.if.else9_crit_edge ], [ 10, %if.end4.i.if.else9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %1)
  %cmp10 = icmp ult i16 %1, 52
  br i1 %cmp10, label %if.else9.if.end51_crit_edge, label %if.else13

if.else9.if.end51_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %1)
  %cmp14 = icmp ult i16 %1, 58
  br i1 %cmp14, label %if.else13.if.end51_crit_edge, label %if.else13.if.else17_crit_edge

if.else13.if.else17_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17

if.else13.if.end51_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else17:                                        ; preds = %if.else13.if.else17_crit_edge, %if.end7.i.if.else17_crit_edge
  %retval.0.i9699102105 = phi i32 [ %retval.0.i9699, %if.else13.if.else17_crit_edge ], [ 15, %if.end7.i.if.else17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 98, i16 %1)
  %cmp18 = icmp ult i16 %1, 98
  br i1 %cmp18, label %if.else17.if.end51_crit_edge, label %if.else21

if.else17.if.end51_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp2(i16 106, i16 %1)
  %cmp22 = icmp ult i16 %1, 106
  br i1 %cmp22, label %if.else21.if.end51_crit_edge, label %if.else25

if.else21.if.end51_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp2(i16 116, i16 %1)
  %cmp26 = icmp ult i16 %1, 116
  br i1 %cmp26, label %if.else25.if.end51_crit_edge, label %if.else29

if.else25.if.end51_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp2(i16 130, i16 %1)
  %cmp30 = icmp ult i16 %1, 130
  br i1 %cmp30, label %if.else29.if.end51_crit_edge, label %if.else33

if.else29.if.end51_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp2(i16 149, i16 %1)
  %cmp34 = icmp ult i16 %1, 149
  br i1 %cmp34, label %if.else33.if.end51_crit_edge, label %if.else37

if.else33.if.end51_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.else37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 157, i16 %1)
  %cmp38 = icmp ult i16 %1, 157
  %. = select i1 %cmp38, i32 3, i32 4
  br label %if.end51

if.end51:                                         ; preds = %if.else37, %if.else33.if.end51_crit_edge, %if.else29.if.end51_crit_edge, %if.else25.if.end51_crit_edge, %if.else21.if.end51_crit_edge, %if.else17.if.end51_crit_edge, %if.else13.if.end51_crit_edge, %if.else9.if.end51_crit_edge, %if.else.if.end51_crit_edge, %mt76x2_get_cal_channel_group.exit.if.end51_crit_edge
  %retval.0.i97 = phi i32 [ %retval.0.i, %mt76x2_get_cal_channel_group.exit.if.end51_crit_edge ], [ %retval.0.i96, %if.else.if.end51_crit_edge ], [ %retval.0.i9699, %if.else9.if.end51_crit_edge ], [ %retval.0.i9699, %if.else13.if.end51_crit_edge ], [ %retval.0.i9699102105, %if.else17.if.end51_crit_edge ], [ %retval.0.i9699102105, %if.else21.if.end51_crit_edge ], [ %retval.0.i9699102105, %if.else25.if.end51_crit_edge ], [ %retval.0.i9699102105, %if.else29.if.end51_crit_edge ], [ %retval.0.i9699102105, %if.else33.if.end51_crit_edge ], [ %retval.0.i9699102105, %if.else37 ]
  %delta_idx.0 = phi i32 [ 4, %mt76x2_get_cal_channel_group.exit.if.end51_crit_edge ], [ 3, %if.else.if.end51_crit_edge ], [ 4, %if.else9.if.end51_crit_edge ], [ 3, %if.else13.if.end51_crit_edge ], [ 4, %if.else17.if.end51_crit_edge ], [ 3, %if.else21.if.end51_crit_edge ], [ 4, %if.else25.if.end51_crit_edge ], [ 3, %if.else29.if.end51_crit_edge ], [ 4, %if.else33.if.end51_crit_edge ], [ %., %if.else37 ]
  %add = add i32 %retval.0.i97, %offset
  %call52 = call i32 @mt76x02_eeprom_copy(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 5) #6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %arrayidx54 = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 %chain
  %11 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx54, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  %tssi_offset = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 %chain, i32 1
  %14 = ptrtoint ptr %tssi_offset to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tssi_offset, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %target_power = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 %chain, i32 2
  %17 = ptrtoint ptr %target_power to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %target_power, align 1
  %arrayidx61 = getelementptr [5 x i8], ptr %data, i32 0, i32 %delta_idx.0
  %18 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %19 to i32
  %and.i = and i32 %conv62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end51.mt76x02_sign_extend_optional.exit_crit_edge, label %cond.true.i

if.end51.mt76x02_sign_extend_optional.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt76x02_sign_extend_optional.exit

cond.true.i:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %conv62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and4.i.i = and i32 %conv62, 63
  %sub6.i.i = sub nsw i32 0, %and4.i.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 %sub6.i.i, i32 %and4.i.i
  %phi.cast = trunc i32 %cond.i.i to i8
  br label %mt76x02_sign_extend_optional.exit

mt76x02_sign_extend_optional.exit:                ; preds = %cond.true.i, %if.end51.mt76x02_sign_extend_optional.exit_crit_edge
  %cond.i = phi i8 [ %phi.cast, %cond.true.i ], [ 0, %if.end51.mt76x02_sign_extend_optional.exit_crit_edge ]
  %delta = getelementptr %struct.mt76x2_tx_power_info, ptr %t, i32 0, i32 3, i32 %chain, i32 3
  %20 = ptrtoint ptr %delta to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond.i, ptr %delta, align 1
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %21 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %22, i32 248
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr.i, align 1
  %25 = lshr i16 %24, 8
  %conv70 = trunc i16 %25 to i8
  %26 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv70, ptr %t, align 1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_get_temp_comp(ptr noundef %dev, ptr nocapture noundef writeonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = call ptr @memset(ptr %t, i32 0, i32 20)
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %5 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 84
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr.i.i, align 1
  %.mask.i = and i16 %8, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %tobool.not.i = icmp eq i16 %.mask.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mt76x2_temp_tx_alc_enabled.exit:                  ; preds = %entry
  %add.ptr.i7.i = getelementptr i8, ptr %6, i32 54
  %9 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i7.i, align 1
  %11 = and i16 %10, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.i.not = icmp eq i16 %11, 0
  br i1 %tobool4.i.not, label %mt76x2_temp_tx_alc_enabled.exit.cleanup_crit_edge, label %if.end

mt76x2_temp_tx_alc_enabled.exit.cleanup_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mt76x2_temp_tx_alc_enabled.exit
  %call2 = tail call zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef %dev, i32 noundef %3) #6
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 84
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr.i, align 1
  %16 = trunc i16 %15 to i8
  %conv7 = and i8 %16, 127
  %17 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %18 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eeprom.i.i, align 16
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i50 = getelementptr i8, ptr %19, i32 242
  %20 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr.i50, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #6
  %add.ptr.i55 = getelementptr i8, ptr %19, i32 84
  %23 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr.i55, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #6
  br label %if.end19

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i60 = getelementptr i8, ptr %19, i32 244
  %26 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr.i60, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #6
  %add.ptr.i65 = getelementptr i8, ptr %19, i32 82
  %29 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr.i65, align 1
  %31 = and i16 %30, 255
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then9
  %slope.0.in.in = phi i16 [ %22, %if.then9 ], [ %28, %if.else ]
  %bounds.0.in.in = phi i16 [ %25, %if.then9 ], [ %31, %if.else ]
  %bounds.0.in = zext i16 %bounds.0.in.in to i32
  %slope.0.in = zext i16 %slope.0.in.in to i32
  %and21 = and i32 %slope.0.in, 255
  %high_slope = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t, i32 0, i32 3
  %32 = ptrtoint ptr %high_slope to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and21, ptr %high_slope, align 4
  %conv20 = lshr i32 %slope.0.in, 8
  %low_slope = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t, i32 0, i32 4
  %33 = ptrtoint ptr %low_slope to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv20, ptr %low_slope, align 4
  %and25 = and i32 %bounds.0.in, 15
  %sub = sub nsw i32 0, %and25
  %lower_bound = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t, i32 0, i32 1
  %34 = ptrtoint ptr %lower_bound to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %lower_bound, align 4
  %conv24 = lshr i32 %bounds.0.in, 4
  %35 = and i32 %conv24, 15
  %upper_bound = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t, i32 0, i32 2
  %36 = ptrtoint ptr %upper_bound to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %upper_bound, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %mt76x2_temp_tx_alc_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %mt76x2_temp_tx_alc_enabled.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_eeprom_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt76_eeprom_init(ptr noundef %dev, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom.i.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then2.i.if.end.i.i_crit_edge

if.then2.i.if.end.i.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 10
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr.i.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then2.i.if.end.i.i_crit_edge
  %val.0.i.i = phi i16 [ %4, %if.then2.i.if.end.i.i_crit_edge ], [ %7, %if.then.i.i ]
  %8 = zext i16 %val.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %val.0.i.i, label %do.end.i.i [
    i16 30306, label %if.end.i.i.if.end6.i_crit_edge
    i16 30226, label %if.end.i.i.if.end6.i_crit_edge11
  ]

if.end.i.i.if.end6.i_crit_edge11:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end.i.i.if.end6.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %val.0.i.i to i32
  %dev4.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %9 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %conv.i.i) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i.i, %if.end.i.i.if.end6.i_crit_edge, %if.end.i.i.if.end6.i_crit_edge11, %if.end.i.if.end6.i_crit_edge
  %found.0.in.i = phi i1 [ false, %if.end.i.if.end6.i_crit_edge ], [ true, %if.end.i.i.if.end6.i_crit_edge ], [ true, %if.end.i.i.if.end6.i_crit_edge11 ], [ false, %do.end.i.i ]
  %dev7.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 512, i32 noundef 3520) #6
  %otp.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %13 = ptrtoint ptr %otp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %otp.i, align 8
  %size.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %size.i, align 4
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end14.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i:                                       ; preds = %if.end6.i
  %call17.i = tail call i32 @mt76x02_get_efuse_data(ptr noundef %dev, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i32 noundef 512, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.out.i_crit_edge

if.end14.i.out.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end20.i:                                       ; preds = %if.end14.i
  br i1 %found.0.in.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end20.i
  %15 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev7.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i.i, align 8
  %eeprom2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %19 = ptrtoint ptr %eeprom2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom2.i.i, align 16
  %arrayidx.i.i = getelementptr i8, ptr %20, i32 98
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %20, i32 99
  %23 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.i.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %20, i32 128
  %25 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %20, i32 129
  %27 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx7.i.i, align 1
  %tobool.not.i45.i = icmp eq ptr %18, null
  br i1 %tobool.not.i45.i, label %if.then22.i.if.end_crit_edge, label %lor.lhs.false.i.i

if.then22.i.if.end_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %if.then22.i
  %call.i.i.i = tail call ptr @of_find_property(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool.i.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i.i.if.end_crit_edge, label %if.end.i46.i

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i46.i:                                     ; preds = %lor.lhs.false.i.i
  %arrayidx.i.i.i = getelementptr i16, ptr %call.i.i, i32 52
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.not.i.i.i = icmp eq i16 %30, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i46.i.if.end_crit_edge

if.end.i46.i.if.end_crit_edge:                    ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end.i46.i
  %arrayidx2.i.i.i = getelementptr i16, ptr %call.i.i, i32 58
  %31 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp4.i.i.i = icmp eq i16 %32, -1
  br i1 %cmp4.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %if.end7.i.i.i

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx8.i.i.i = getelementptr i16, ptr %call.i.i, i32 80
  %33 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx8.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp10.not.i.i.i = icmp eq i16 %34, 0
  br i1 %cmp10.not.i.i.i, label %if.end13.i.i.i, label %if.end7.i.i.i.if.end_crit_edge

if.end7.i.i.i.if.end_crit_edge:                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end13.i.i.i:                                   ; preds = %if.end7.i.i.i
  %arrayidx14.i.i.i = getelementptr i16, ptr %call.i.i, i32 86
  %35 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx14.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp16.i.i.i = icmp eq i16 %36, -1
  br i1 %cmp16.i.i.i, label %if.end13.i.i.i.if.end_crit_edge, label %if.end19.i.i.i

if.end13.i.i.i.if.end_crit_edge:                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end19.i.i.i:                                   ; preds = %if.end13.i.i.i
  %arrayidx20.i.i.i = getelementptr i16, ptr %call.i.i, i32 116
  %37 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx20.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp22.not.i.i.i = icmp eq i16 %38, 0
  br i1 %cmp22.not.i.i.i, label %mt76x2_has_cal_free_data.exit.i.i, label %if.end19.i.i.i.if.end_crit_edge

if.end19.i.i.i.if.end_crit_edge:                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

mt76x2_has_cal_free_data.exit.i.i:                ; preds = %if.end19.i.i.i
  %arrayidx26.i.i.i = getelementptr i16, ptr %call.i.i, i32 118
  %39 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx26.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp28.i.not.i.i = icmp eq i16 %40, -1
  br i1 %cmp28.i.not.i.i, label %mt76x2_has_cal_free_data.exit.i.i.if.end_crit_edge, label %mt76x2_has_cal_free_data.exit.i.i.for.body.i.i_crit_edge

mt76x2_has_cal_free_data.exit.i.i.for.body.i.i_crit_edge: ; preds = %mt76x2_has_cal_free_data.exit.i.i
  br label %for.body.i.i

mt76x2_has_cal_free_data.exit.i.i.if.end_crit_edge: ; preds = %mt76x2_has_cal_free_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %mt76x2_has_cal_free_data.exit.i.i.for.body.i.i_crit_edge
  %i.098.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %mt76x2_has_cal_free_data.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr [38 x i8], ptr @mt76x2_apply_cal_free_data.cal_free_bytes, i32 0, i32 %i.098.i.i
  %41 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx11.i.i, align 1
  %conv.i47.i = zext i8 %42 to i32
  %arrayidx12.i.i = getelementptr i8, ptr %call.i.i, i32 %conv.i47.i
  %43 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx12.i.i, align 1
  %arrayidx13.i.i = getelementptr i8, ptr %20, i32 %conv.i47.i
  %45 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx13.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.098.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 38
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %arrayidx14.i.i = getelementptr i8, ptr %call.i.i, i32 98
  %46 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx14.i.i, align 1
  %arrayidx16.i.i = getelementptr i8, ptr %call.i.i, i32 99
  %48 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx16.i.i, align 1
  %or95.i.i = or i8 %49, %47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or95.i.i)
  %tobool18.not.i.i = icmp eq i8 %or95.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %for.end.i.i.if.end20.i.i_crit_edge

for.end.i.i.if.end20.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then19.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %22, ptr %arrayidx.i.i, align 1
  %51 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %24, ptr %arrayidx3.i.i, align 1
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then19.i.i, %for.end.i.i.if.end20.i.i_crit_edge
  %arrayidx21.i.i = getelementptr i8, ptr %call.i.i, i32 128
  %52 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx21.i.i, align 1
  %arrayidx23.i.i = getelementptr i8, ptr %call.i.i, i32 129
  %54 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx23.i.i, align 1
  %or2596.i.i = or i8 %55, %53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or2596.i.i)
  %tobool26.not.i.i = icmp eq i8 %or2596.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end20.i.i.if.end31.i.i_crit_edge

if.end20.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.then27.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %26, ptr %arrayidx5.i.i, align 1
  %57 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %28, ptr %arrayidx7.i.i, align 1
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then27.i.i, %if.end20.i.i.if.end31.i.i_crit_edge
  %add.ptr32.i.i = getelementptr i8, ptr %call.i.i, i32 312
  %58 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %add.ptr32.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp35.not.i.i = icmp eq i16 %59, -1
  br i1 %cmp35.not.i.i, label %if.end31.i.i.if.end41.i.i_crit_edge, label %if.then37.i.i

if.end31.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i.i

if.then37.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = lshr i16 %59, 8
  %conv39.i.i = trunc i16 %60 to i8
  %arrayidx40.i.i = getelementptr i8, ptr %20, i32 312
  %61 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv39.i.i, ptr %arrayidx40.i.i, align 1
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then37.i.i, %if.end31.i.i.if.end41.i.i_crit_edge
  %add.ptr42.i.i = getelementptr i8, ptr %call.i.i, i32 316
  %62 = ptrtoint ptr %add.ptr42.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %add.ptr42.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp45.not.i.i = icmp eq i16 %63, -1
  br i1 %cmp45.not.i.i, label %if.end41.i.i.if.end51.i.i_crit_edge, label %if.then47.i.i

if.end41.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

if.then47.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv49.i.i = trunc i16 %63 to i8
  %arrayidx50.i.i = getelementptr i8, ptr %20, i32 317
  %64 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv49.i.i, ptr %arrayidx50.i.i, align 1
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then47.i.i, %if.end41.i.i.if.end51.i.i_crit_edge
  %add.ptr52.i.i = getelementptr i8, ptr %call.i.i, i32 318
  %65 = ptrtoint ptr %add.ptr52.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %add.ptr52.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %cmp55.not.i.i = icmp eq i16 %66, -1
  br i1 %cmp55.not.i.i, label %if.end51.i.i.out.i_crit_edge, label %if.then57.i.i

if.end51.i.i.out.i_crit_edge:                     ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then57.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = lshr i16 %66, 8
  %conv60.i.i = trunc i16 %67 to i8
  %arrayidx61.i.i = getelementptr i8, ptr %20, i32 318
  %68 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv60.i.i, ptr %arrayidx61.i.i, align 1
  br label %if.end

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %69 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %eeprom.i, align 16
  %71 = call ptr @memcpy(ptr %70, ptr %call.i.i, i32 512)
  br label %if.end

out.i:                                            ; preds = %if.end51.i.i.out.i_crit_edge, %if.end14.i.out.i_crit_edge
  br i1 %found.0.in.i, label %out.i.if.end_crit_edge, label %out.i.cleanup_crit_edge

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out.i.if.end_crit_edge:                           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %out.i.if.end_crit_edge, %if.else.i, %if.then57.i.i, %mt76x2_has_cal_free_data.exit.i.i.if.end_crit_edge, %if.end19.i.i.i.if.end_crit_edge, %if.end13.i.i.i.if.end_crit_edge, %if.end7.i.i.i.if.end_crit_edge, %if.end.i.i.i.if.end_crit_edge, %if.end.i46.i.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge, %if.then22.i.if.end_crit_edge
  tail call void @mt76x02_eeprom_parse_hw_cap(ptr noundef %dev) #6
  %eeprom.i8 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %72 = ptrtoint ptr %eeprom.i8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %eeprom.i8, align 16
  %add.ptr.i = getelementptr i8, ptr %73, i32 4
  %macaddr.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 13
  %74 = call ptr @memcpy(ptr %macaddr.i, ptr %add.ptr.i, i32 6)
  tail call void @mt76_eeprom_override(ptr noundef %dev) #6
  %75 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %macaddr.i, align 4
  %77 = and i8 %76, -3
  store i8 %77, ptr %macaddr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %out.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %out.i.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_eeprom_parse_hw_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_eeprom_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_get_efuse_data(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_mt76x2_read_rx_gain, !1, !"__ksymtab_mt76x2_read_rx_gain", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 281, i32 1}
!2 = !{ptr @__ksymtab_mt76x2_get_rate_power, !3, !"__ksymtab_mt76x2_get_rate_power", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 344, i32 1}
!4 = !{ptr @__ksymtab_mt76x2_get_power_info, !5, !"__ksymtab_mt76x2_get_power_info", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 459, i32 1}
!6 = !{ptr @__ksymtab_mt76x2_get_temp_comp, !7, !"__ksymtab_mt76x2_get_temp_comp", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 493, i32 1}
!8 = !{ptr @__ksymtab_mt76x2_eeprom_init, !9, !"__ksymtab_mt76x2_eeprom_init", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 510, i32 1}
!10 = !{ptr @__UNIQUE_ID_file387, !11, !"__UNIQUE_ID_file387", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 512, i32 1}
!12 = !{ptr @__UNIQUE_ID_license388, !11, !"__UNIQUE_ID_license388", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 135, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mt76x2_check_eeprom._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @mt76x2_check_eeprom._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @mt76x2_apply_cal_free_data.cal_free_bytes, !22, !"cal_free_bytes", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 58, i32 18}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/eeprom.c", i32 91, i32 40}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
