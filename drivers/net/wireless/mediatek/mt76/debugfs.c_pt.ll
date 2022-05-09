; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_queues_read\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_queues_read\09\09\09\09"
module asm "\09.long\09__crc_mt76_queues_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_queues_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_queues_read\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_queues_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_seq_puts_array\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_seq_puts_array\09\09\09\09"
module asm "\09.long\09__crc_mt76_seq_puts_array\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_seq_puts_array:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_seq_puts_array\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_seq_puts_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_register_debugfs_fops\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_register_debugfs_fops\09\09\09\09"
module asm "\09.long\09__crc_mt76_register_debugfs_fops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_register_debugfs_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_register_debugfs_fops\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_register_debugfs_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.126, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.126 = type { i64, i64, i8 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.129 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"     queue | hw-queued |      head |      tail |\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" %9d | %9d | %9d | %9d |\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_queues_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_queues_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_queues_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_queues_read to i32), ptr @__kstrtab_mt76_queues_read, ptr @__kstrtabns_mt76_queues_read }, section "___ksymtab_gpl+mt76_queues_read", align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%10s:\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %2d\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_seq_puts_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_seq_puts_array = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_seq_puts_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_seq_puts_array to i32), ptr @__kstrtab_mt76_seq_puts_array, ptr @__kstrtabns_mt76_seq_puts_array }, section "___ksymtab_gpl+mt76_seq_puts_array", align 4
@fops_regval = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_regval_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mt76\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_pin\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regidx\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regval\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"napi_threaded\00", [18 x i8] zeroinitializer }, align 32
@fops_napi_threaded = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_napi_threaded_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otp\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rate_txpower\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx-queues\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_register_debugfs_fops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_register_debugfs_fops = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_register_debugfs_fops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_register_debugfs_fops to i32), ptr @__kstrtab_mt76_register_debugfs_fops, ptr @__kstrtabns_mt76_register_debugfs_fops }, section "___ksymtab_gpl+mt76_register_debugfs_fops", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%08llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCK\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFDM\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"STBC\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VHT\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 59, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 66, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 96, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 98, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 99, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"fops_regval\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 128, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 132, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 133, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 134, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 135, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"fops_napi_threaded\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 137, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 139, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 140, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 142, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 25, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 51, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 107, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 109, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 111, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 113, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [48 x i8] c"../drivers/net/wireless/mediatek/mt76/debugfs.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 115, i32 25 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_mt76_queues_read, ptr @__ksymtab_mt76_register_debugfs_fops, ptr @__ksymtab_mt76_seq_puts_array, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fops_regval, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fops_napi_threaded, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regval to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_napi_threaded to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_queues_read(ptr noundef %s, ptr nocapture readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str) #3
  %arrayidx = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queued, align 4
  %head = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head, align 2
  %conv = zext i16 %9 to i32
  %tail = getelementptr inbounds %struct.mt76_queue, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tail, align 4
  %conv1 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %7, i32 noundef %conv, i32 noundef %conv1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  %queued.1 = getelementptr inbounds %struct.mt76_queue, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %queued.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queued.1, align 4
  %head.1 = getelementptr inbounds %struct.mt76_queue, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %head.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head.1, align 2
  %conv.1 = zext i16 %17 to i32
  %tail.1 = getelementptr inbounds %struct.mt76_queue, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %tail.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tail.1, align 4
  %conv1.1 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %15, i32 noundef %conv.1, i32 noundef %conv1.1) #3
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #5
  %queued.2 = getelementptr inbounds %struct.mt76_queue, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %queued.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queued.2, align 4
  %head.2 = getelementptr inbounds %struct.mt76_queue, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %head.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head.2, align 2
  %conv.2 = zext i16 %25 to i32
  %tail.2 = getelementptr inbounds %struct.mt76_queue, ptr %21, i32 0, i32 7
  %26 = ptrtoint ptr %tail.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tail.2, align 4
  %conv1.2 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %23, i32 noundef %conv.2, i32 noundef %conv1.2) #3
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %29, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #5
  %queued.3 = getelementptr inbounds %struct.mt76_queue, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %queued.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %queued.3, align 4
  %head.3 = getelementptr inbounds %struct.mt76_queue, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %head.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %head.3, align 2
  %conv.3 = zext i16 %33 to i32
  %tail.3 = getelementptr inbounds %struct.mt76_queue, ptr %29, i32 0, i32 7
  %34 = ptrtoint ptr %tail.3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tail.3, align 4
  %conv1.3 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef %31, i32 noundef %conv.3, i32 noundef %conv1.3) #3
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %37, null
  br i1 %tobool.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #5
  %queued.4 = getelementptr inbounds %struct.mt76_queue, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %queued.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queued.4, align 4
  %head.4 = getelementptr inbounds %struct.mt76_queue, ptr %37, i32 0, i32 6
  %40 = ptrtoint ptr %head.4 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %head.4, align 2
  %conv.4 = zext i16 %41 to i32
  %tail.4 = getelementptr inbounds %struct.mt76_queue, ptr %37, i32 0, i32 7
  %42 = ptrtoint ptr %tail.4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tail.4, align 4
  %conv1.4 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 4, i32 noundef %39, i32 noundef %conv.4, i32 noundef %conv1.4) #3
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.4, %cleanup.3.cleanup.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %45, null
  br i1 %tobool.not.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.5

if.end.5:                                         ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #5
  %queued.5 = getelementptr inbounds %struct.mt76_queue, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %queued.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %queued.5, align 4
  %head.5 = getelementptr inbounds %struct.mt76_queue, ptr %45, i32 0, i32 6
  %48 = ptrtoint ptr %head.5 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head.5, align 2
  %conv.5 = zext i16 %49 to i32
  %tail.5 = getelementptr inbounds %struct.mt76_queue, ptr %45, i32 0, i32 7
  %50 = ptrtoint ptr %tail.5 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tail.5, align 4
  %conv1.5 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef %47, i32 noundef %conv.5, i32 noundef %conv1.5) #3
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end.5, %cleanup.4.cleanup.5_crit_edge
  %arrayidx.6 = getelementptr %struct.mt76_phy, ptr %3, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %53, null
  br i1 %tobool.not.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.6

if.end.6:                                         ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #5
  %queued.6 = getelementptr inbounds %struct.mt76_queue, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %queued.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %queued.6, align 4
  %head.6 = getelementptr inbounds %struct.mt76_queue, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %head.6 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %head.6, align 2
  %conv.6 = zext i16 %57 to i32
  %tail.6 = getelementptr inbounds %struct.mt76_queue, ptr %53, i32 0, i32 7
  %58 = ptrtoint ptr %tail.6 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tail.6, align 4
  %conv1.6 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %55, i32 noundef %conv.6, i32 noundef %conv1.6) #3
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.6, %cleanup.5.cleanup.6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_seq_puts_array(ptr noundef %file, ptr noundef %str, ptr nocapture noundef readonly %val, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.2, ptr noundef %str) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp5 = icmp sgt i32 %len, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %val, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.3, i32 noundef %conv) #3
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt76_register_debugfs_fops(ptr nocapture noundef readonly %phy, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.5, ptr noundef %7) #3
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ops, null
  %spec.select = select i1 %tobool.not, ptr @fops_regval, ptr %ops
  %led_pin = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 53
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %led_pin) #3
  %debugfs_reg = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 49
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %debugfs_reg) #3
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull %spec.select) #3
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @fops_napi_threaded) #3
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 44
  %call5 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %eeprom) #3
  %otp = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otp, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %otp) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull %call, ptr noundef nonnull @mt76_read_rate_txpower) #3
  %12 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %13, ptr noundef nonnull @.str.13, ptr noundef nonnull %call, ptr noundef nonnull @mt76_rx_queues_read) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_read_rate_txpower(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %rate_power = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16) #3
  %4 = ptrtoint ptr %rate_power to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rate_power, align 1
  %conv.i = sext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i) #3
  %arrayidx.i.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = sext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i.1) #3
  %arrayidx.i.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = sext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i.2) #3
  %arrayidx.i.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = sext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i.3) #3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.4) #3
  %ofdm = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #3
  %12 = ptrtoint ptr %ofdm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ofdm, align 1
  %conv.i20 = sext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20) #3
  %arrayidx.i19.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i19.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i19.1, align 1
  %conv.i20.1 = sext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.1) #3
  %arrayidx.i19.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.i19.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i19.2, align 1
  %conv.i20.2 = sext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.2) #3
  %arrayidx.i19.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.i19.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i19.3, align 1
  %conv.i20.3 = sext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.3) #3
  %arrayidx.i19.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx.i19.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i19.4, align 1
  %conv.i20.4 = sext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.4) #3
  %arrayidx.i19.5 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %arrayidx.i19.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i19.5, align 1
  %conv.i20.5 = sext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.5) #3
  %arrayidx.i19.6 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %arrayidx.i19.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i19.6, align 1
  %conv.i20.6 = sext i8 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.6) #3
  %arrayidx.i19.7 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %arrayidx.i19.7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i19.7, align 1
  %conv.i20.7 = sext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i20.7) #3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.4) #3
  %stbc = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #3
  %28 = ptrtoint ptr %stbc to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stbc, align 1
  %conv.i27 = sext i8 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27) #3
  %arrayidx.i26.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx.i26.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i26.1, align 1
  %conv.i27.1 = sext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.1) #3
  %arrayidx.i26.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx.i26.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i26.2, align 1
  %conv.i27.2 = sext i8 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.2) #3
  %arrayidx.i26.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx.i26.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i26.3, align 1
  %conv.i27.3 = sext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.3) #3
  %arrayidx.i26.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %arrayidx.i26.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i26.4, align 1
  %conv.i27.4 = sext i8 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.4) #3
  %arrayidx.i26.5 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx.i26.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i26.5, align 1
  %conv.i27.5 = sext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.5) #3
  %arrayidx.i26.6 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 6
  %40 = ptrtoint ptr %arrayidx.i26.6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i26.6, align 1
  %conv.i27.6 = sext i8 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.6) #3
  %arrayidx.i26.7 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 7
  %42 = ptrtoint ptr %arrayidx.i26.7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i26.7, align 1
  %conv.i27.7 = sext i8 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.7) #3
  %arrayidx.i26.8 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %arrayidx.i26.8 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i26.8, align 1
  %conv.i27.8 = sext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.8) #3
  %arrayidx.i26.9 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 2, i32 9
  %46 = ptrtoint ptr %arrayidx.i26.9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i26.9, align 1
  %conv.i27.9 = sext i8 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i27.9) #3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.4) #3
  %ht = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #3
  %48 = ptrtoint ptr %ht to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ht, align 1
  %conv.i34 = sext i8 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34) #3
  %arrayidx.i33.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %arrayidx.i33.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i33.1, align 1
  %conv.i34.1 = sext i8 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.1) #3
  %arrayidx.i33.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %arrayidx.i33.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i33.2, align 1
  %conv.i34.2 = sext i8 %53 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.2) #3
  %arrayidx.i33.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %arrayidx.i33.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i33.3, align 1
  %conv.i34.3 = sext i8 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.3) #3
  %arrayidx.i33.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %arrayidx.i33.4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i33.4, align 1
  %conv.i34.4 = sext i8 %57 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.4) #3
  %arrayidx.i33.5 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 5
  %58 = ptrtoint ptr %arrayidx.i33.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i33.5, align 1
  %conv.i34.5 = sext i8 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.5) #3
  %arrayidx.i33.6 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 6
  %60 = ptrtoint ptr %arrayidx.i33.6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i33.6, align 1
  %conv.i34.6 = sext i8 %61 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.6) #3
  %arrayidx.i33.7 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 7
  %62 = ptrtoint ptr %arrayidx.i33.7 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i33.7, align 1
  %conv.i34.7 = sext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.7) #3
  %arrayidx.i33.8 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %arrayidx.i33.8 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i33.8, align 1
  %conv.i34.8 = sext i8 %65 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.8) #3
  %arrayidx.i33.9 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 9
  %66 = ptrtoint ptr %arrayidx.i33.9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i33.9, align 1
  %conv.i34.9 = sext i8 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.9) #3
  %arrayidx.i33.10 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 10
  %68 = ptrtoint ptr %arrayidx.i33.10 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i33.10, align 1
  %conv.i34.10 = sext i8 %69 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.10) #3
  %arrayidx.i33.11 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 11
  %70 = ptrtoint ptr %arrayidx.i33.11 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i33.11, align 1
  %conv.i34.11 = sext i8 %71 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.11) #3
  %arrayidx.i33.12 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 12
  %72 = ptrtoint ptr %arrayidx.i33.12 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i33.12, align 1
  %conv.i34.12 = sext i8 %73 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.12) #3
  %arrayidx.i33.13 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 13
  %74 = ptrtoint ptr %arrayidx.i33.13 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i33.13, align 1
  %conv.i34.13 = sext i8 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.13) #3
  %arrayidx.i33.14 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 14
  %76 = ptrtoint ptr %arrayidx.i33.14 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i33.14, align 1
  %conv.i34.14 = sext i8 %77 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.14) #3
  %arrayidx.i33.15 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 3, i32 15
  %78 = ptrtoint ptr %arrayidx.i33.15 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i33.15, align 1
  %conv.i34.15 = sext i8 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i34.15) #3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.4) #3
  %vht = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20) #3
  %80 = ptrtoint ptr %vht to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vht, align 1
  %conv.i41 = sext i8 %81 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41) #3
  %arrayidx.i40.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %arrayidx.i40.1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i40.1, align 1
  %conv.i41.1 = sext i8 %83 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.1) #3
  %arrayidx.i40.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %arrayidx.i40.2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i40.2, align 1
  %conv.i41.2 = sext i8 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.2) #3
  %arrayidx.i40.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 3
  %86 = ptrtoint ptr %arrayidx.i40.3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i40.3, align 1
  %conv.i41.3 = sext i8 %87 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.3) #3
  %arrayidx.i40.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 4
  %88 = ptrtoint ptr %arrayidx.i40.4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i40.4, align 1
  %conv.i41.4 = sext i8 %89 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.4) #3
  %arrayidx.i40.5 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 5
  %90 = ptrtoint ptr %arrayidx.i40.5 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i40.5, align 1
  %conv.i41.5 = sext i8 %91 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.5) #3
  %arrayidx.i40.6 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 6
  %92 = ptrtoint ptr %arrayidx.i40.6 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i40.6, align 1
  %conv.i41.6 = sext i8 %93 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.6) #3
  %arrayidx.i40.7 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 7
  %94 = ptrtoint ptr %arrayidx.i40.7 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i40.7, align 1
  %conv.i41.7 = sext i8 %95 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.7) #3
  %arrayidx.i40.8 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 8
  %96 = ptrtoint ptr %arrayidx.i40.8 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i40.8, align 1
  %conv.i41.8 = sext i8 %97 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.8) #3
  %arrayidx.i40.9 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 46, i32 0, i32 0, i32 4, i32 9
  %98 = ptrtoint ptr %arrayidx.i40.9 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i40.9, align 1
  %conv.i41.9 = sext i8 %99 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv.i41.9) #3
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_rx_queues_read(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str) #3
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %ndesc = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 0, i32 8
  %4 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %entry
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp eq i32 %9, 1
  %queued5 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 0, i32 9
  %10 = ptrtoint ptr %queued5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queued5, align 4
  %sub = sub i32 %5, %11
  %cond = select i1 %cmp3, i32 %sub, i32 %11
  %head = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 0, i32 6
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head, align 2
  %conv = zext i16 %13 to i32
  %tail = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 0, i32 7
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tail, align 4
  %conv7 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %cond, i32 noundef %conv, i32 noundef %conv7) #3
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 1, i32 8
  %16 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %type.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %type.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp3.1 = icmp eq i32 %21, 1
  %queued5.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 1, i32 9
  %22 = ptrtoint ptr %queued5.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queued5.1, align 4
  %sub.1 = sub i32 %17, %23
  %cond.1 = select i1 %cmp3.1, i32 %sub.1, i32 %23
  %head.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 1, i32 6
  %24 = ptrtoint ptr %head.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head.1, align 2
  %conv.1 = zext i16 %25 to i32
  %tail.1 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 1, i32 7
  %26 = ptrtoint ptr %tail.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tail.1, align 4
  %conv7.1 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %cond.1, i32 noundef %conv.1, i32 noundef %conv7.1) #3
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 2, i32 8
  %28 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.2 = icmp eq i32 %29, 0
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %type.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %type.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp3.2 = icmp eq i32 %33, 1
  %queued5.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 2, i32 9
  %34 = ptrtoint ptr %queued5.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %queued5.2, align 4
  %sub.2 = sub i32 %29, %35
  %cond.2 = select i1 %cmp3.2, i32 %sub.2, i32 %35
  %head.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 2, i32 6
  %36 = ptrtoint ptr %head.2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %head.2, align 2
  %conv.2 = zext i16 %37 to i32
  %tail.2 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 2, i32 7
  %38 = ptrtoint ptr %tail.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tail.2, align 4
  %conv7.2 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %cond.2, i32 noundef %conv.2, i32 noundef %conv7.2) #3
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 3, i32 8
  %40 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.3 = icmp eq i32 %41, 0
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 4
  %type.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %type.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp3.3 = icmp eq i32 %45, 1
  %queued5.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 3, i32 9
  %46 = ptrtoint ptr %queued5.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %queued5.3, align 4
  %sub.3 = sub i32 %41, %47
  %cond.3 = select i1 %cmp3.3, i32 %sub.3, i32 %47
  %head.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 3, i32 6
  %48 = ptrtoint ptr %head.3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head.3, align 2
  %conv.3 = zext i16 %49 to i32
  %tail.3 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 3, i32 7
  %50 = ptrtoint ptr %tail.3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tail.3, align 4
  %conv7.3 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef %cond.3, i32 noundef %conv.3, i32 noundef %conv7.3) #3
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 4, i32 8
  %52 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.4 = icmp eq i32 %53, 0
  br i1 %tobool.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus, align 4
  %type.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %type.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp3.4 = icmp eq i32 %57, 1
  %queued5.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 4, i32 9
  %58 = ptrtoint ptr %queued5.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %queued5.4, align 4
  %sub.4 = sub i32 %53, %59
  %cond.4 = select i1 %cmp3.4, i32 %sub.4, i32 %59
  %head.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 4, i32 6
  %60 = ptrtoint ptr %head.4 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %head.4, align 2
  %conv.4 = zext i16 %61 to i32
  %tail.4 = getelementptr %struct.mt76_dev, ptr %3, i32 0, i32 23, i32 4, i32 7
  %62 = ptrtoint ptr %tail.4 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tail.4, align 4
  %conv7.4 = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef 4, i32 noundef %cond.4, i32 noundef %conv.4, i32 noundef %conv7.4) #3
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_regval_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt76_reg_get, ptr noundef nonnull @mt76_reg_set, ptr noundef nonnull @.str.14) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_reg_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %debugfs_reg = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 49
  %4 = ptrtoint ptr %debugfs_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_reg, align 8
  %call = tail call i32 %3(ptr noundef %data, i32 noundef %5) #3
  %conv = zext i32 %call to i64
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_reg_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  %debugfs_reg = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 49
  %4 = ptrtoint ptr %debugfs_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_reg, align 8
  %conv = trunc i64 %val to i32
  tail call void %3(ptr noundef %data, i32 noundef %5, i32 noundef %conv) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_napi_threaded_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt76_napi_threaded_get, ptr noundef nonnull @mt76_napi_threaded_set, ptr noundef nonnull @.str.15) #3
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt76_napi_threaded_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %threaded = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 16, i32 149
  %0 = ptrtoint ptr %threaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %threaded, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i64
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_napi_threaded_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %threaded = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 16, i32 149
  %4 = ptrtoint ptr %threaded to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %threaded, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp1.not = icmp eq i64 %conv, %val
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %data, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %call = tail call i32 @dev_set_threaded(ptr noundef %napi_dev, i1 noundef zeroext %tobool) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_threaded(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 59, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 66, i32 17}
!4 = !{ptr @__ksymtab_mt76_queues_read, !5, !"__ksymtab_mt76_queues_read", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 72, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 96, i32 19}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 98, i32 20}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 99, i32 17}
!12 = !{ptr @__ksymtab_mt76_seq_puts_array, !13, !"__ksymtab_mt76_seq_puts_array", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 101, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 128, i32 27}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 132, i32 20}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 133, i32 21}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 134, i32 29}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 135, i32 29}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 137, i32 22}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 139, i32 23}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 140, i32 40}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 142, i32 40}
!32 = !{ptr @__ksymtab_mt76_register_debugfs_fops, !33, !"__ksymtab_mt76_register_debugfs_fops", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 147, i32 1}
!34 = !{ptr @fops_regval, !35, !"fops_regval", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 25, i32 1}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fops_napi_threaded, !38, !"fops_napi_threaded", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 51, i32 1}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 107, i32 25}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 109, i32 25}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 111, i32 25}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 113, i32 25}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt76/debugfs.c", i32 115, i32 25}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
