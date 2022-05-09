; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_mcu_msg_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_mcu_msg_alloc\09\09\09\09"
module asm "\09.long\09__crc_mt76_mcu_msg_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_mcu_msg_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_mcu_msg_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_mcu_msg_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_mcu_get_response\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_mcu_get_response\09\09\09\09"
module asm "\09.long\09__crc_mt76_mcu_get_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_mcu_get_response:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_mcu_get_response\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_mcu_get_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_mcu_rx_event\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_mcu_rx_event\09\09\09\09"
module asm "\09.long\09__crc_mt76_mcu_rx_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_mcu_rx_event:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_mcu_rx_event\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_mcu_rx_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_mcu_send_and_get_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_mcu_send_and_get_msg\09\09\09\09"
module asm "\09.long\09__crc_mt76_mcu_send_and_get_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_mcu_send_and_get_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_mcu_send_and_get_msg\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_mcu_send_and_get_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_mcu_skb_send_and_get_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_mcu_skb_send_and_get_msg\09\09\09\09"
module asm "\09.long\09__crc_mt76_mcu_skb_send_and_get_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_mcu_skb_send_and_get_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_mcu_skb_send_and_get_msg\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_mcu_skb_send_and_get_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__mt76_mcu_send_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc___mt76_mcu_send_firmware\09\09\09\09"
module asm "\09.long\09__crc___mt76_mcu_send_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mt76_mcu_send_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22__mt76_mcu_send_firmware\22\09\09\09\09\09"
module asm "__kstrtabns___mt76_mcu_send_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.mt76_mcu_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_mt76_mcu_msg_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_mcu_msg_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_mcu_msg_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_mcu_msg_alloc to i32), ptr @__kstrtab_mt76_mcu_msg_alloc, ptr @__kstrtabns_mt76_mcu_msg_alloc }, section "___ksymtab_gpl+mt76_mcu_msg_alloc", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/mediatek/mt76/mcu.c\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_mcu_get_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_mcu_get_response = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_mcu_get_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_mcu_get_response to i32), ptr @__kstrtab_mt76_mcu_get_response, ptr @__kstrtabns_mt76_mcu_get_response }, section "___ksymtab_gpl+mt76_mcu_get_response", align 4
@__kstrtab_mt76_mcu_rx_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_mcu_rx_event = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_mcu_rx_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_mcu_rx_event to i32), ptr @__kstrtab_mt76_mcu_rx_event, ptr @__kstrtabns_mt76_mcu_rx_event }, section "___ksymtab_gpl+mt76_mcu_rx_event", align 4
@__kstrtab_mt76_mcu_send_and_get_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_mcu_send_and_get_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_mcu_send_and_get_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_mcu_send_and_get_msg to i32), ptr @__kstrtab_mt76_mcu_send_and_get_msg, ptr @__kstrtabns_mt76_mcu_send_and_get_msg }, section "___ksymtab_gpl+mt76_mcu_send_and_get_msg", align 4
@__kstrtab_mt76_mcu_skb_send_and_get_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_mcu_skb_send_and_get_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_mcu_skb_send_and_get_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_mcu_skb_send_and_get_msg to i32), ptr @__kstrtab_mt76_mcu_skb_send_and_get_msg, ptr @__kstrtabns_mt76_mcu_skb_send_and_get_msg }, section "___ksymtab_gpl+mt76_mcu_skb_send_and_get_msg", align 4
@__kstrtab___mt76_mcu_send_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns___mt76_mcu_send_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab___mt76_mcu_send_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mt76_mcu_send_firmware to i32), ptr @__kstrtab___mt76_mcu_send_firmware, ptr @__kstrtabns___mt76_mcu_send_firmware }, section "___ksymtab_gpl+__mt76_mcu_send_firmware", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [44 x i8] c"../drivers/net/wireless/mediatek/mt76/mcu.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 39, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___mt76_mcu_send_firmware, ptr @__ksymtab_mt76_mcu_get_response, ptr @__ksymtab_mt76_mcu_msg_alloc, ptr @__ksymtab_mt76_mcu_rx_event, ptr @__ksymtab_mt76_mcu_send_and_get_msg, ptr @__ksymtab_mt76_mcu_skb_send_and_get_msg, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt76_mcu_msg_alloc(ptr nocapture noundef readonly %dev, ptr noundef readonly %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcu_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, %data_len
  %tailroom = getelementptr inbounds %struct.mt76_mcu_ops, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tailroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tailroom, align 4
  %add1 = add i32 %add, %5
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 %add1)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %10
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %14, i32 %10
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %tobool3.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %tobool4.not = icmp eq i32 %data_len, 0
  %or.cond = or i1 %tobool3.not, %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i20 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %data_len) #4
  %15 = call ptr @memcpy(ptr %call.i20, ptr %data, i32 %data_len)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt76_mcu_get_response(ptr noundef %dev, i32 noundef %expires) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %0, %expires
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub1 = sub i32 %expires, %1
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 42) #4
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %res_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_q, align 4
  %cmp.i.not = icmp eq ptr %3, %res_q
  br i1 %cmp.i.not, label %lor.end, label %if.end.if.end52_crit_edge

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

lor.end:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6 = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %tobool13.not = icmp eq i32 %sub1, 0
  %or.cond = select i1 %tobool6, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %lor.end.if.end52_crit_edge, label %if.then16

lor.end.if.end52_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then16:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wait = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 4
  %call1991 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %8 = ptrtoint ptr %res_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res_q, align 4
  %cmp.i76.not92 = icmp eq ptr %9, %res_q
  br i1 %cmp.i76.not92, label %if.then16.lor.end30_crit_edge, label %if.then16.for.end_crit_edge

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then16.lor.end30_crit_edge:                    ; preds = %if.then16
  br label %lor.end30

lor.end30:                                        ; preds = %cleanup.lor.end30_crit_edge, %if.then16.lor.end30_crit_edge
  %__ret17.093 = phi i32 [ %call48, %cleanup.lor.end30_crit_edge ], [ %sub1, %if.then16.lor.end30_crit_edge ]
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool29 = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.093)
  %tobool41.not = icmp eq i32 %__ret17.093, 0
  %or.cond90 = select i1 %tobool29, i1 true, i1 %tobool41.not
  br i1 %or.cond90, label %lor.end30.for.end_crit_edge, label %cleanup

lor.end30.for.end_crit_edge:                      ; preds = %lor.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %lor.end30
  %call48 = call i32 @schedule_timeout(i32 noundef %__ret17.093) #4
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %13 = ptrtoint ptr %res_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res_q, align 4
  %cmp.i76.not = icmp eq ptr %14, %res_q
  br i1 %cmp.i76.not, label %cleanup.lor.end30_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup.lor.end30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end30

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end30.for.end_crit_edge, %if.then16.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end52

if.end52:                                         ; preds = %for.end, %lor.end.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %call56 = call ptr @skb_dequeue(ptr noundef %res_q) #4
  br label %cleanup57

cleanup57:                                        ; preds = %if.end52, %entry.cleanup57_crit_edge
  %retval.0 = phi ptr [ %call56, %if.end52 ], [ null, %entry.cleanup57_crit_edge ]
  ret ptr %retval.0
}

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
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_mcu_rx_event(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  tail call void @skb_queue_tail(ptr noundef %res_q, ptr noundef %skb) #4
  %wait = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i1 noundef zeroext %wait_resp, ptr noundef %ret_skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcu_ops, align 4
  %mcu_send_msg = getelementptr inbounds %struct.mt76_mcu_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mcu_send_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu_send_msg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i1 noundef zeroext %wait_resp) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.i = add i32 %5, %len
  %tailroom.i = getelementptr inbounds %struct.mt76_mcu_ops, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tailroom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tailroom.i, align 4
  %add1.i = add i32 %add.i, %7
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 %add1.i)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %12
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 %12
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %tobool3.not.i = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not.i = icmp eq i32 %len, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end.i.if.end7_crit_edge, label %if.then5.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i20.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #4
  %17 = call ptr @memcpy(ptr %call.i20.i, ptr %data, i32 %len)
  br label %if.end7

if.end7:                                          ; preds = %if.then5.i, %if.end.i.if.end7_crit_edge
  %call9 = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef %cmd, i1 noundef zeroext %wait_resp, ptr noundef %ret_skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call9, %if.end7 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %dev, ptr noundef %skb, i32 noundef %cmd, i1 noundef zeroext %wait_resp, ptr noundef writeonly %ret_skb) #0 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #4
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seq, align 4, !annotation !23
  %tobool.not = icmp eq ptr %ret_skb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %ret_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ret_skb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mcu, i32 noundef 0) #4
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu_ops, align 4
  %mcu_skb_send_msg = getelementptr inbounds %struct.mt76_mcu_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mcu_skb_send_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcu_skb_send_msg, align 4
  %call = call i32 %5(ptr noundef %dev, ptr noundef %skb, i32 noundef %cmd, ptr noundef nonnull %seq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  %6 = and i1 %cmp, %wait_resp
  %7 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  br i1 %6, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  %add = add i32 %10, %8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end5
  %call7 = call ptr @mt76_mcu_get_response(ptr noundef %dev, i32 noundef %add)
  %11 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mcu_ops, align 4
  %mcu_parse_response = getelementptr inbounds %struct.mt76_mcu_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %mcu_parse_response to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcu_parse_response, align 4
  %15 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq, align 4
  %call9 = call i32 %14(ptr noundef %dev, i32 noundef %cmd, ptr noundef %call7, i32 noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp ne i32 %call9, 0
  %brmerge = or i1 %tobool.not, %tobool10.not
  br i1 %brmerge, label %do.cond, label %do.cond.thread

do.cond.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %ret_skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %ret_skb, align 4
  br label %out

do.cond:                                          ; preds = %do.body
  call void @consume_skb(ptr noundef %call7) #4
  %cmp14 = icmp eq i32 %call9, -11
  br i1 %cmp14, label %do.cond.do.body_crit_edge, label %do.cond.out_crit_edge

do.cond.out_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

out:                                              ; preds = %do.cond.out_crit_edge, %do.cond.thread, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %7, %if.end.out_crit_edge ], [ 0, %do.cond.thread ], [ %call9, %do.cond.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mcu) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mt76_mcu_send_firmware(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i32 noundef %max_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp20 = icmp sgt i32 %len, 0
  br i1 %cmp20, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %data.addr.022 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end6.while.body_crit_edge ]
  %len.addr.021 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end6.while.body_crit_edge ]
  %0 = tail call i32 @llvm.smin.i32(i32 %len.addr.021, i32 %max_len)
  %call.i = tail call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef %cmd, ptr noundef %data.addr.022, i32 noundef %0, i1 noundef zeroext false, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %data.addr.022, i32 %0
  %sub = sub i32 %len.addr.021, %0
  %1 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_cleanup, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  tail call void %4(ptr noundef %dev, ptr noundef %6, i1 noundef zeroext false) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.end6.while.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call.i, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_mt76_mcu_msg_alloc, !1, !"__ksymtab_mt76_mcu_msg_alloc", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 28, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 39, i32 2}
!4 = !{ptr @__ksymtab_mt76_mcu_get_response, !5, !"__ksymtab_mt76_mcu_get_response", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 45, i32 1}
!6 = !{ptr @__ksymtab_mt76_mcu_rx_event, !7, !"__ksymtab_mt76_mcu_rx_event", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 52, i32 1}
!8 = !{ptr @__ksymtab_mt76_mcu_send_and_get_msg, !9, !"__ksymtab_mt76_mcu_send_and_get_msg", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 68, i32 1}
!10 = !{ptr @__ksymtab_mt76_mcu_skb_send_and_get_msg, !11, !"__ksymtab_mt76_mcu_skb_send_and_get_msg", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 107, i32 1}
!12 = !{ptr @__ksymtab___mt76_mcu_send_firmware, !13, !"__ksymtab___mt76_mcu_send_firmware", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mcu.c", i32 132, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
