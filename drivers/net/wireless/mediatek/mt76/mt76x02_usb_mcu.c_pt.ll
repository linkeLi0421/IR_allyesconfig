; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_mcu_fw_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_mcu_fw_reset\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_mcu_fw_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_mcu_fw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_mcu_fw_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_mcu_fw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_mcu_fw_send_data\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_mcu_fw_send_data\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_mcu_fw_send_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_mcu_fw_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_mcu_fw_send_data\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_mcu_fw_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x02u_init_mcu\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x02u_init_mcu\09\09\09\09"
module asm "\09.long\09__crc_mt76x02u_init_mcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x02u_init_mcu:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x02u_init_mcu\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x02u_init_mcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76_mcu_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.mt76_reg_pair = type { i32, i32 }

@__kstrtab_mt76x02u_mcu_fw_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_mcu_fw_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_mcu_fw_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_mcu_fw_reset to i32), ptr @__kstrtab_mt76x02u_mcu_fw_reset, ptr @__kstrtabns_mt76x02u_mcu_fw_reset }, section "___ksymtab_gpl+mt76x02u_mcu_fw_reset", align 4
@__kstrtab_mt76x02u_mcu_fw_send_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_mcu_fw_send_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_mcu_fw_send_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_mcu_fw_send_data to i32), ptr @__kstrtab_mt76x02u_mcu_fw_send_data, ptr @__kstrtabns_mt76x02u_mcu_fw_send_data }, section "___ksymtab_gpl+mt76x02u_mcu_fw_send_data", align 4
@mt76x02u_init_mcu.mt76x02u_mcu_ops = internal constant { %struct.mt76_mcu_ops, [56 x i8] } { %struct.mt76_mcu_ops { i32 4, i32 8, ptr @mt76x02u_mcu_send_msg, ptr null, ptr @mt76x02_mcu_parse_response, ptr null, ptr null, ptr @mt76x02u_mcu_wr_rp, ptr @mt76x02u_mcu_rd_rp, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_mt76x02u_init_mcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x02u_init_mcu = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x02u_init_mcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x02u_init_mcu to i32), ptr @__kstrtab_mt76x02u_init_mcu, ptr @__kstrtabns_mt76x02u_init_mcu }, section "___ksymtab_gpl+mt76x02u_init_mcu", align 4
@__UNIQUE_ID_author433 = internal constant [67 x i8] c"mt76x02_usb.author=Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file434 = internal constant [64 x i8] c"mt76x02_usb.file=drivers/net/wireless/mediatek/mt76/mt76x02-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license435 = internal constant [33 x i8] c"mt76x02_usb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__mt76x02u_mcu_fw_send_data._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware upload failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__mt76x02u_mcu_fw_send_data\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__mt76x02u_mcu_fw_send_data._entry_ptr = internal global ptr @__mt76x02u_mcu_fw_send_data._entry, section ".printk_index", align 4
@mt76x02u_mcu_wait_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: MCU resp evt:%lx seq:%hhx-%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt76x02u_mcu_wait_resp\00", [41 x i8] zeroinitializer }, align 32
@mt76x02u_mcu_wait_resp._entry_ptr = internal global ptr @mt76x02u_mcu_wait_resp._entry, section ".printk_index", align 4
@mt76x02u_mcu_wait_resp._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: %s failed with %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mt76x02u_mcu_wait_resp._entry_ptr.9 = internal global ptr @mt76x02u_mcu_wait_resp._entry.7, section ".printk_index", align 4
@mt76x02u_multiple_mcu_reads.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x02u_multiple_mcu_reads.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mt76x02u_multiple_mcu_reads.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"mt76x02u_mcu_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 296, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 256, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 73, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 78, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author433, ptr @__UNIQUE_ID_file434, ptr @__UNIQUE_ID_license435, ptr @__ksymtab_mt76x02u_init_mcu, ptr @__ksymtab_mt76x02u_mcu_fw_reset, ptr @__ksymtab_mt76x02u_mcu_fw_send_data, ptr @__mt76x02u_mcu_fw_send_data._entry, ptr @__mt76x02u_mcu_fw_send_data._entry_ptr, ptr @mt76x02u_mcu_wait_resp._entry, ptr @mt76x02u_mcu_wait_resp._entry.7, ptr @mt76x02u_mcu_wait_resp._entry_ptr, ptr @mt76x02u_mcu_wait_resp._entry_ptr.9, ptr @mt76x02u_init_mcu.mt76x02u_mcu_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x02u_init_mcu.mt76x02u_mcu_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x02u_mcu_wait_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x02u_mcu_wait_resp._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x02u_mcu_fw_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76u_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x02u_mcu_fw_send_data(ptr noundef %dev, ptr nocapture noundef readonly %data, i32 noundef %data_len, i32 noundef %max_payload, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %max_payload, -8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %max_payload, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp26 = icmp sgt i32 %data_len, 0
  br i1 %cmp26, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 4
  %dev1.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %arrayidx4.i.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6, i32 0
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  %pos.028 = phi i32 [ 0, %while.body.lr.ph ], [ %add7, %if.end5.while.body_crit_edge ]
  %data_len.addr.027 = phi i32 [ %data_len, %while.body.lr.ph ], [ %sub6, %if.end5.while.body_crit_edge ]
  %0 = tail call i32 @llvm.smin.i32(i32 %data_len.addr.027, i32 %sub)
  %add = add i32 %pos.028, %offset
  %add.ptr = getelementptr i8, ptr %data, i32 %pos.028
  %and29.i = and i32 %0, 65535
  %or30.i = or i32 %and29.i, 1342177280
  %1 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #7
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call9.i, align 128
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr, i32 %0)
  %add.ptr32.i = getelementptr i8, ptr %add.ptr.i, i32 %0
  %4 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %add.ptr32.i, align 1
  tail call void @mt76u_single_wr(ptr noundef %dev, i8 noundef zeroext 66, i16 noundef zeroext 560, i32 noundef %add) #7
  %add.i = add i32 %0, 3
  %div.i = sdiv i32 %add.i, 4
  %mul.i = shl nsw i32 %div.i, 2
  %shl34.i = shl i32 %div.i, 18
  tail call void @mt76u_single_wr(ptr noundef %dev, i8 noundef zeroext 66, i16 noundef zeroext 564, i32 noundef %shl34.i) #7
  %add36.i = add i32 %mul.i, 8
  %5 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i.i, align 8
  %parent.i.i.i = getelementptr i8, ptr %6, i32 136
  %7 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -128
  %9 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i15.i.i = shl i32 %12, 8
  %shl1.i16.i.i = shl nuw nsw i32 %conv5.i.i, 15
  %or.i17.i.i = or i32 %shl1.i16.i.i, %shl.i15.i.i
  %or7.i.i = or i32 %or.i17.i.i, -1073741824
  %call8.i.i = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or7.i.i, ptr noundef nonnull %call9.i, i32 noundef %add36.i, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool37.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool37.not.i, label %__mt76x02u_mcu_fw_send_data.exit.thread, label %__mt76x02u_mcu_fw_send_data.exit

__mt76x02u_mcu_fw_send_data.exit.thread:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call44.i = tail call i32 %16(ptr noundef %dev, i32 noundef 2472) #7
  %inc.i = add i32 %call44.i, 1
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr.i, align 4
  tail call void %20(ptr noundef %dev, i32 noundef 2472, i32 noundef %inc.i) #7
  br label %if.end5

__mt76x02u_mcu_fw_send_data.exit:                 ; preds = %while.body
  %21 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call8.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp3 = icmp slt i32 %call8.i.i, 0
  br i1 %cmp3, label %__mt76x02u_mcu_fw_send_data.exit.while.end_crit_edge, label %__mt76x02u_mcu_fw_send_data.exit.if.end5_crit_edge

__mt76x02u_mcu_fw_send_data.exit.if.end5_crit_edge: ; preds = %__mt76x02u_mcu_fw_send_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

__mt76x02u_mcu_fw_send_data.exit.while.end_crit_edge: ; preds = %__mt76x02u_mcu_fw_send_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5:                                          ; preds = %__mt76x02u_mcu_fw_send_data.exit.if.end5_crit_edge, %__mt76x02u_mcu_fw_send_data.exit.thread
  %sub6 = sub i32 %data_len.addr.027, %0
  %add7 = add i32 %pos.028, %0
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %cmp = icmp sgt i32 %sub6, 0
  br i1 %cmp, label %if.end5.while.body_crit_edge, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %__mt76x02u_mcu_fw_send_data.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %err.1 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %call8.i.i, %__mt76x02u_mcu_fw_send_data.exit.while.end_crit_edge ], [ %call8.i.i, %if.end5.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mt76x02u_init_mcu(ptr nocapture noundef writeonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt76x02u_init_mcu.mt76x02u_mcu_ops, ptr %mcu_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x02u_mcu_send_msg(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i1 noundef zeroext %wait_resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %dev, ptr noundef %data, i32 noundef %len) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mcu, i32 noundef 0) #7
  %call2 = tail call fastcc i32 @__mt76x02u_mcu_send_msg(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef %cmd, i1 noundef zeroext %wait_resp)
  tail call void @mutex_unlock(ptr noundef %mcu) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_parse_response(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x02u_mcu_wr_rp(ptr noundef %dev, i32 noundef %base, ptr nocapture noundef readonly %data, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not47 = icmp eq i32 %n, 0
  br i1 %tobool.not47, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end14.if.end_crit_edge, %entry.if.end_crit_edge
  %n.tr49 = phi i32 [ %sub, %if.end14.if.end_crit_edge ], [ %n, %entry.if.end_crit_edge ]
  %data.tr48 = phi ptr [ %add.ptr, %if.end14.if.end_crit_edge ], [ %data, %entry.if.end_crit_edge ]
  %0 = tail call i32 @llvm.smin.i32(i32 %n.tr49, i32 24)
  %mul = shl i32 %0, 3
  %add1 = add i32 %mul, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.tr49)
  %cmp545 = icmp sgt i32 %n.tr49, 0
  br i1 %cmp545, label %for.body.preheader, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end4
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.mt76_reg_pair, ptr %data.tr48, i32 %i.046
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add6 = add i32 %6, %base
  %call.i43 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %add6) #7
  %8 = ptrtoint ptr %call.i43 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %call.i43, align 1
  %value = getelementptr %struct.mt76_reg_pair, ptr %data.tr48, i32 %i.046, i32 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call.i44 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %call.i44 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %call.i44, align 1
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mcu, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %n.tr49)
  %cmp8 = icmp slt i32 %n.tr49, 25
  %call9 = tail call fastcc i32 @__mt76x02u_mcu_send_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 12, i1 noundef zeroext %cmp8)
  tail call void @mutex_unlock(ptr noundef %mcu) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool12.not = icmp eq i32 %call9, 0
  br i1 %tobool12.not, label %if.end14, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %add.ptr = getelementptr %struct.mt76_reg_pair, ptr %data.tr48, i32 %0
  %sub = sub i32 %n.tr49, %0
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end14.if.end_crit_edge

if.end14.if.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %for.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x02u_mcu_rd_rp(ptr noundef %dev, i32 noundef %base, ptr noundef %data, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.smin.i32(i32 %n, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %n)
  %cmp1.not = icmp slt i32 %n, 25
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mul = shl i32 %0, 3
  %add4 = add i32 %mul, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp852 = icmp sgt i32 %n, 0
  br i1 %cmp852, label %for.body.preheader, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end7
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.mt76_reg_pair, ptr %data, i32 %i.053
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add9 = add i32 %6, %base
  %call.i50 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %add9) #7
  %8 = ptrtoint ptr %call.i50 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %call.i50, align 1
  %value = getelementptr %struct.mt76_reg_pair, ptr %data, i32 %i.053, i32 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call.i51 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %call.i51 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %call.i51, align 1
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mcu, i32 noundef 0) #7
  %rp = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %rp, align 4
  %rp_len = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %rp_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %n, ptr %rp_len, align 4
  %base14 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %base14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %base, ptr %base14, align 4
  %burst = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %burst to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %burst, align 4
  %call16 = tail call fastcc i32 @__mt76x02u_mcu_send_msg(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 10, i1 noundef zeroext true)
  %17 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rp, align 4
  tail call void @mutex_unlock(ptr noundef %mcu) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76u_single_wr(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_mcu_msg_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt76x02u_mcu_send_msg(ptr noundef %dev, ptr noundef %skb, i32 noundef %cmd, i1 noundef zeroext %wait_resp) unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  br i1 %wait_resp, label %if.then2, label %if.end.do.body15_crit_edge

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.then2:                                         ; preds = %if.end
  %msg_seq = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %msg_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_seq, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %msg_seq, align 4
  %5 = trunc i32 %inc to i8
  %conv = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool3.not = icmp eq i8 %conv, 0
  br i1 %tobool3.not, label %if.then4, label %if.then2.do.body15_crit_edge

if.then2.do.body15_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %inc7 = add i32 %4, 2
  %6 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc7, ptr %msg_seq, align 4
  %7 = trunc i32 %inc7 to i8
  %conv9 = and i8 %7, 15
  br label %do.body15

do.body15:                                        ; preds = %if.then4, %if.then2.do.body15_crit_edge, %if.end.do.body15_crit_edge
  %seq.0 = phi i8 [ %conv, %if.then2.do.body15_crit_edge ], [ %conv9, %if.then4 ], [ 0, %if.end.do.body15_crit_edge ]
  %conv29 = zext i8 %seq.0 to i32
  %shl = shl nuw nsw i32 %conv29, 16
  %shl53 = shl i32 %cmd, 20
  %and54 = and i32 %shl53, 133169152
  %or = or i32 %shl, %and54
  %or55 = or i32 %or, 1073741824
  %call56 = tail call i32 @mt76x02u_skb_dma_info(ptr noundef %skb, i32 noundef 2, i32 noundef %or55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %do.body15.cleanup_crit_edge

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %do.body15
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 8
  %parent.i.i = getelementptr i8, ptr %13, i32 136
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -128
  %arrayidx4.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i15.i = shl i32 %19, 8
  %shl1.i16.i = shl nuw nsw i32 %conv5.i, 15
  %or.i17.i = or i32 %shl.i15.i, %shl1.i16.i
  %or7.i = or i32 %or.i17.i, -1073741824
  %call8.i = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or7.i, ptr noundef %9, i32 noundef %11, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool61.not = icmp eq i32 %call8.i, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  br i1 %wait_resp, label %if.then65, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then65:                                        ; preds = %if.end63
  %mcu.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9
  %20 = ptrtoint ptr %mcu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mcu.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %len.i, align 4, !annotation !45
  %arrayidx.i.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 7, i32 1
  %rp.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 1
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %burst.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 4
  %rp_len.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 2
  %base.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then65
  %i.0112.i = phi i32 [ 0, %if.then65 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i, align 8
  %parent.i.i.i = getelementptr i8, ptr %24, i32 136
  %25 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 -128
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %conv5.i.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i15.i.i = shl i32 %30, 8
  %shl1.i16.i.i = shl nuw nsw i32 %conv5.i.i, 15
  %or.i17.i.i = or i32 %shl1.i16.i.i, %shl.i15.i.i
  %or7.i.i = or i32 %or.i17.i.i, -1073741696
  %call8.i.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or7.i.i, ptr noundef %21, i32 noundef 1024, ptr noundef nonnull %len.i, i32 noundef 300) #7
  %31 = zext i32 %call8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8.i.i, label %for.body.i.do.end89.i_crit_edge [
    i32 -110, label %for.body.i.for.inc.i_crit_edge
    i32 0, label %if.end4.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.do.end89.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89.i

if.end4.i:                                        ; preds = %for.body.i
  %32 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rp.i, align 4
  %tobool6.not.i = icmp eq ptr %33, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %35, -8
  %36 = ptrtoint ptr %burst.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %burst.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then7.i
  %div.i.i = sdiv i32 %sub.i, 4
  %38 = ptrtoint ptr %rp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rp_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %39)
  %cmp.not.i.i = icmp eq i32 %div.i.i, %39
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end30.i.i_crit_edge, label %land.rhs.i.i

if.then.i.i.if.end30.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b226.i.i = load i1, ptr @mt76x02u_multiple_mcu_reads.__already_done, align 1
  br i1 %.b226.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then9.i.i, !prof !47

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

if.then9.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt76x02u_multiple_mcu_reads.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #7
  %40 = ptrtoint ptr %rp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr.i.i = load i32, ptr %rp_len.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then9.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.then.i.i.if.end30.i.i_crit_edge
  %41 = phi i32 [ %div.i.i, %if.then.i.i.if.end30.i.i_crit_edge ], [ %.pr.i.i, %if.then9.i.i ], [ %39, %land.rhs.i.i.if.end30.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp43228.i.i = icmp sgt i32 %41, 0
  br i1 %cmp43228.i.i, label %for.body.preheader.i.i, label %if.end30.i.i.if.end8.i_crit_edge

if.end30.i.i.if.end8.i_crit_edge:                 ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

for.body.preheader.i.i:                           ; preds = %if.end30.i.i
  %42 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rp.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base.i.i, align 4
  %sub.i.i = sub i32 %45, %47
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %reg.0230.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sub.i.i, %for.body.preheader.i.i ]
  %i.0229.i.i = phi i32 [ %inc51.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %mul.i.i = shl i32 %i.0229.i.i, 2
  %add.ptr.i.i88 = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  %48 = ptrtoint ptr %add.ptr.i.i88 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %add.ptr.i.i88, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #7
  %inc.i.i = add i32 %reg.0230.i.i, 1
  %51 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rp.i, align 4
  %arrayidx46.i.i = getelementptr %struct.mt76_reg_pair, ptr %52, i32 %i.0229.i.i
  %53 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %reg.0230.i.i, ptr %arrayidx46.i.i, align 4
  %54 = load ptr, ptr %rp.i, align 4
  %value.i.i = getelementptr %struct.mt76_reg_pair, ptr %54, i32 %i.0229.i.i, i32 1
  %55 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %value.i.i, align 4
  %inc51.i.i = add nuw nsw i32 %i.0229.i.i, 1
  %56 = ptrtoint ptr %rp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rp_len.i.i, align 4
  %cmp43.i.i = icmp slt i32 %inc51.i.i, %57
  br i1 %cmp43.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end8.i_crit_edge

for.body.i.i.if.end8.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.then7.i
  %div53.i.i = sdiv i32 %sub.i, 8
  %58 = ptrtoint ptr %rp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rp_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div53.i.i, i32 %59)
  %cmp56.not.i.i = icmp eq i32 %div53.i.i, %59
  br i1 %cmp56.not.i.i, label %if.else.i.i.if.end101.i.i_crit_edge, label %land.rhs63.i.i

if.else.i.i.if.end101.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i.i

land.rhs63.i.i:                                   ; preds = %if.else.i.i
  %.b222225.i.i = load i1, ptr @mt76x02u_multiple_mcu_reads.__already_done.10, align 1
  br i1 %.b222225.i.i, label %land.rhs63.i.i.if.end101.i.i_crit_edge, label %if.then74.i.i, !prof !47

land.rhs63.i.i.if.end101.i.i_crit_edge:           ; preds = %land.rhs63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i.i

if.then74.i.i:                                    ; preds = %land.rhs63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt76x02u_multiple_mcu_reads.__already_done.10, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 9, ptr noundef null) #7
  %60 = ptrtoint ptr %rp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr234.i.i = load i32, ptr %rp_len.i.i, align 4
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.then74.i.i, %land.rhs63.i.i.if.end101.i.i_crit_edge, %if.else.i.i.if.end101.i.i_crit_edge
  %61 = phi i32 [ %div53.i.i, %if.else.i.i.if.end101.i.i_crit_edge ], [ %.pr234.i.i, %if.then74.i.i ], [ %59, %land.rhs63.i.i.if.end101.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp112231.i.i = icmp sgt i32 %61, 0
  br i1 %cmp112231.i.i, label %if.end101.i.i.for.body113.i.i_crit_edge, label %if.end101.i.i.if.end8.i_crit_edge

if.end101.i.i.if.end8.i_crit_edge:                ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end101.i.i.for.body113.i.i_crit_edge:          ; preds = %if.end101.i.i
  br label %for.body113.i.i

for.body113.i.i:                                  ; preds = %if.end174.i.i.for.body113.i.i_crit_edge, %if.end101.i.i.for.body113.i.i_crit_edge
  %i.1232.i.i = phi i32 [ %inc187.i.i, %if.end174.i.i.for.body113.i.i_crit_edge ], [ 0, %if.end101.i.i.for.body113.i.i_crit_edge ]
  %mul114.i.i = shl i32 %i.1232.i.i, 3
  %add.ptr115.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul114.i.i
  %62 = ptrtoint ptr %add.ptr115.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %add.ptr115.i.i, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #7
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base.i.i, align 4
  %sub119.i.i = sub i32 %64, %66
  %add.ptr122.i.i = getelementptr i8, ptr %add.ptr115.i.i, i32 4
  %67 = ptrtoint ptr %add.ptr122.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %add.ptr122.i.i, align 1
  %69 = call i32 @llvm.bswap.i32(i32 %68) #7
  %70 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rp.i, align 4
  %arrayidx127.i.i = getelementptr %struct.mt76_reg_pair, ptr %71, i32 %i.1232.i.i
  %72 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx127.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %sub119.i.i)
  %cmp129.not.i.i = icmp eq i32 %73, %sub119.i.i
  br i1 %cmp129.not.i.i, label %for.body113.i.i.if.end174.i.i_crit_edge, label %land.rhs136.i.i

for.body113.i.i.if.end174.i.i_crit_edge:          ; preds = %for.body113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.i.i

land.rhs136.i.i:                                  ; preds = %for.body113.i.i
  %.b223224.i.i = load i1, ptr @mt76x02u_multiple_mcu_reads.__already_done.11, align 1
  br i1 %.b223224.i.i, label %land.rhs136.i.i.if.end174.i.i_crit_edge, label %if.then147.i.i, !prof !47

land.rhs136.i.i.if.end174.i.i_crit_edge:          ; preds = %land.rhs136.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.i.i

if.then147.i.i:                                   ; preds = %land.rhs136.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt76x02u_multiple_mcu_reads.__already_done.11, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 44, i32 noundef 9, ptr noundef null) #7
  br label %if.end174.i.i

if.end174.i.i:                                    ; preds = %if.then147.i.i, %land.rhs136.i.i.if.end174.i.i_crit_edge, %for.body113.i.i.if.end174.i.i_crit_edge
  %74 = ptrtoint ptr %rp.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rp.i, align 4
  %value185.i.i = getelementptr %struct.mt76_reg_pair, ptr %75, i32 %i.1232.i.i, i32 1
  %76 = ptrtoint ptr %value185.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %69, ptr %value185.i.i, align 4
  %inc187.i.i = add nuw nsw i32 %i.1232.i.i, 1
  %77 = ptrtoint ptr %rp_len.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rp_len.i.i, align 4
  %cmp112.i.i = icmp slt i32 %inc187.i.i, %78
  br i1 %cmp112.i.i, label %if.end174.i.i.for.body113.i.i_crit_edge, label %if.end174.i.i.if.end8.i_crit_edge

if.end174.i.i.if.end8.i_crit_edge:                ; preds = %if.end174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end174.i.i.for.body113.i.i_crit_edge:          ; preds = %if.end174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body113.i.i

if.end8.i:                                        ; preds = %if.end174.i.i.if.end8.i_crit_edge, %if.end101.i.i.if.end8.i_crit_edge, %for.body.i.i.if.end8.i_crit_edge, %if.end30.i.i.if.end8.i_crit_edge, %if.end4.i.if.end8.i_crit_edge
  %79 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %21, align 1
  %81 = call i32 @llvm.bswap.i32(i32 %80) #7
  %and.i = lshr i32 %81, 16
  %shr.i89 = and i32 %and.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i89, i32 %conv29)
  %cmp22.i = icmp eq i32 %shr.i89, %conv29
  %82 = and i32 %81, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp42.i = icmp eq i32 %82, 0
  %or.cond.i = select i1 %cmp22.i, i1 %cmp42.i, i1 false
  br i1 %or.cond.i, label %if.end8.i.mt76x02u_mcu_wait_resp.exit_crit_edge, label %do.end48.i

if.end8.i.mt76x02u_mcu_wait_resp.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76x02u_mcu_wait_resp.exit

do.end48.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev1.i, align 8
  %and66.i = lshr i32 %81, 20
  %shr67.i = and i32 %and66.i, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.5, i32 noundef %shr67.i, i32 noundef %conv29, i32 noundef %shr.i89) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end48.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.inc.i.do.end89.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end89.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89.i

do.end89.i:                                       ; preds = %for.inc.i.do.end89.i_crit_edge, %for.body.i.do.end89.i_crit_edge
  %85 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %call8.i.i) #11
  br label %mt76x02u_mcu_wait_resp.exit

mt76x02u_mcu_wait_resp.exit:                      ; preds = %do.end89.i, %if.end8.i.mt76x02u_mcu_wait_resp.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i.i, %do.end89.i ], [ 0, %if.end8.i.mt76x02u_mcu_wait_resp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  br label %out

out:                                              ; preds = %mt76x02u_mcu_wait_resp.exit, %if.end63.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %mt76x02u_mcu_wait_resp.exit ], [ 0, %if.end63.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end59.cleanup_crit_edge, %do.body15.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call56, %do.body15.cleanup_crit_edge ], [ %call8.i, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02u_skb_dma_info(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_mt76x02u_mcu_fw_reset, !1, !"__ksymtab_mt76x02u_mcu_fw_reset", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 227, i32 1}
!2 = !{ptr @__ksymtab_mt76x02u_mcu_fw_send_data, !3, !"__ksymtab_mt76x02u_mcu_fw_send_data", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 292, i32 1}
!4 = !{ptr @mt76x02u_init_mcu.mt76x02u_mcu_ops, !5, !"mt76x02u_mcu_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 296, i32 35}
!6 = !{ptr @__ksymtab_mt76x02u_init_mcu, !7, !"__ksymtab_mt76x02u_init_mcu", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 307, i32 1}
!8 = !{ptr @__UNIQUE_ID_author433, !9, !"__UNIQUE_ID_author433", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 309, i32 1}
!10 = !{ptr @__UNIQUE_ID_file434, !11, !"__UNIQUE_ID_file434", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 310, i32 1}
!12 = !{ptr @__UNIQUE_ID_license435, !11, !"__UNIQUE_ID_license435", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 256, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__mt76x02u_mcu_fw_send_data._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @__mt76x02u_mcu_fw_send_data._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 73, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt76x02u_mcu_wait_resp._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt76x02u_mcu_wait_resp._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 78, i32 2}
!28 = !{ptr @mt76x02u_mcu_wait_resp._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt76x02u_mcu_wait_resp._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 28, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 37, i32 3}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x02_usb_mcu.c", i32 44, i32 4}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
!47 = !{!"branch_weights", i32 2000, i32 1}
