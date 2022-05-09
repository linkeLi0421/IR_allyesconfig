; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/testmode.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/testmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_tm_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_tm_policy\09\09\09\09"
module asm "\09.long\09__crc_mt76_tm_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_tm_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_tm_policy\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_tm_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mt76_testmode_alloc_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_testmode_alloc_skb\09\09\09\09"
module asm "\09.long\09__crc_mt76_testmode_alloc_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_testmode_alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_testmode_alloc_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_testmode_alloc_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mt76_testmode_set_state\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_testmode_set_state\09\09\09\09"
module asm "\09.long\09__crc_mt76_testmode_set_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_testmode_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_testmode_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_testmode_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mt76_testmode_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_testmode_cmd\09\09\09\09"
module asm "\09.long\09__crc_mt76_testmode_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_testmode_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_testmode_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_testmode_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mt76_testmode_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_testmode_dump\09\09\09\09"
module asm "\09.long\09__crc_mt76_testmode_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_testmode_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_testmode_dump\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_testmode_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.107, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.107 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
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
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt76_testmode_ops = type { ptr, ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.111 }
%union.anon.111 = type { [6 x i32], [24 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@mt76_tm_policy = dso_local constant { [25 x %struct.nla_policy], [56 x i8] } { [25 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_tm_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_tm_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_tm_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_tm_policy to i32), ptr @__kstrtab_mt76_tm_policy, ptr @__kstrtabns_mt76_tm_policy }, section "___ksymtab_gpl+mt76_tm_policy", align 4
@__kstrtab_mt76_testmode_alloc_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_testmode_alloc_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_testmode_alloc_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_testmode_alloc_skb to i32), ptr @__kstrtab_mt76_testmode_alloc_skb, ptr @__kstrtabns_mt76_testmode_alloc_skb }, section "___ksymtab+mt76_testmode_alloc_skb", align 4
@__kstrtab_mt76_testmode_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_testmode_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_testmode_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_testmode_set_state to i32), ptr @__kstrtab_mt76_testmode_set_state, ptr @__kstrtabns_mt76_testmode_set_state }, section "___ksymtab+mt76_testmode_set_state", align 4
@__kstrtab_mt76_testmode_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_testmode_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_testmode_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_testmode_cmd to i32), ptr @__kstrtab_mt76_testmode_cmd, ptr @__kstrtabns_mt76_testmode_cmd }, section "___ksymtab+mt76_testmode_cmd", align 4
@__kstrtab_mt76_testmode_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_testmode_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_testmode_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_testmode_dump to i32), ptr @__kstrtab_mt76_testmode_dump, ptr @__kstrtabns_mt76_testmode_dump }, section "___ksymtab+mt76_testmode_dump", align 4
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt76/testmode.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@switch.table.mt76_testmode_set_state = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 32, i16 512, i16 1024, i16 1024], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"mt76_tm_policy\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 5, i32 25 }
@___asan_gen_.9 = private constant [49 x i8] c"../drivers/net/wireless/mediatek/mt76/testmode.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 291, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 996, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [37 x i8] c"switch.table.mt76_testmode_set_state\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_mt76_testmode_alloc_skb, ptr @__ksymtab_mt76_testmode_cmd, ptr @__ksymtab_mt76_testmode_dump, ptr @__ksymtab_mt76_testmode_set_state, ptr @__ksymtab_mt76_tm_policy, ptr @mt76_tm_policy, ptr @.str, ptr @.str.1, ptr @switch.table.mt76_testmode_set_state], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_tm_policy to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt76_testmode_set_state to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_testmode_tx_pending(ptr nocapture noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 36
  %tx_skb = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %lor.lhs.false

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

lor.lhs.false:                                    ; preds = %entry
  %tx_pending = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 21
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup26_crit_edge, label %if.end

lor.lhs.false.cleanup26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end:                                           ; preds = %lor.lhs.false
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.mt76_phy, ptr %phy, i32 0, i32 4, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tx_queued_limit3 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 23
  %10 = ptrtoint ptr %tx_queued_limit3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_queued_limit3, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not = icmp eq i16 %11, 0
  %narrow = select i1 %tobool5.not, i16 1000, i16 %11
  %spec.select = zext i16 %narrow to i32
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %12 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %tx_pending, align 8
  %tx_queued = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 22
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not59 = icmp eq i32 %.pr, 0
  br i1 %cmp.not59, label %if.end.while.end_crit_edge, label %land.lhs.true.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %if.end
  %tx_done = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 24
  %ndesc = getelementptr inbounds %struct.mt76_queue, ptr %9, i32 0, i32 8
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 24
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 21
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %13 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_queued, align 4
  %15 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_done, align 4
  %sub = sub i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %spec.select)
  %cmp12 = icmp ult i32 %sub, %spec.select
  br i1 %cmp12, label %land.rhs, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queued, align 4
  %19 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ndesc, align 4
  %div = sdiv i32 %20, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div)
  %cmp14 = icmp slt i32 %18, %div
  br i1 %cmp14, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %21 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb = getelementptr inbounds %struct.mt76_queue_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %tx_queue_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_queue_skb, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #7
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %while.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !26

while.body.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %while.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %while.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #7
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call17 = tail call i32 %24(ptr noundef %1, ptr noundef %9, ptr noundef nonnull %3, ptr noundef %global_wcid, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %skb_get.exit.while.end_crit_edge, label %cleanup

skb_get.exit.while.end_crit_edge:                 ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup:                                          ; preds = %skb_get.exit
  %27 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_pending, align 8
  %dec = add i32 %28, -1
  store i32 %dec, ptr %tx_pending, align 8
  %29 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_queued, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_queued, align 4
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.land.lhs.true_crit_edge

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %skb_get.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.end.while.end_crit_edge
  %queue_ops24 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %queue_ops24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue_ops24, align 4
  %kick = getelementptr inbounds %struct.mt76_queue_ops, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %kick to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kick, align 4
  tail call void %34(ptr noundef %1, ptr noundef %9) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup26

cleanup26:                                        ; preds = %while.end, %lor.lhs.false.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_testmode_alloc_skb(ptr noundef %phy, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %cmp.not = icmp eq ptr %1, %phy
  %tx_rate_mode = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %tx_rate_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_rate_mode, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default.i [
    i8 2, label %entry.mt76_testmode_max_mpdu_len.exit_crit_edge
    i8 3, label %entry.sw.bb1.i_crit_edge
    i8 4, label %entry.sw.bb1.i_crit_edge117
    i8 5, label %entry.sw.bb1.i_crit_edge118
    i8 6, label %entry.sw.bb1.i_crit_edge119
    i8 7, label %entry.sw.bb1.i_crit_edge120
  ]

entry.sw.bb1.i_crit_edge120:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge119:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge118:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge117:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.mt76_testmode_max_mpdu_len.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_max_mpdu_len.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge117, %entry.sw.bb1.i_crit_edge118, %entry.sw.bb1.i_crit_edge119, %entry.sw.bb1.i_crit_edge120
  %cap.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 11, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 11454, i32 7991
  br label %mt76_testmode_max_mpdu_len.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_max_mpdu_len.exit

mt76_testmode_max_mpdu_len.exit:                  ; preds = %sw.default.i, %sw.bb1.i, %entry.mt76_testmode_max_mpdu_len.exit_crit_edge
  %retval.0.i = phi i32 [ 2352, %sw.default.i ], [ 7935, %entry.mt76_testmode_max_mpdu_len.exit_crit_edge ], [ %..i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %len)
  %cmp2 = icmp ult i32 %retval.0.i, %len
  %7 = tail call i32 @llvm.umax.i32(i32 %len, i32 30)
  %len.addr.0 = select i1 %cmp2, i32 %retval.0.i, i32 %7
  %len.addr.0.frozen = freeze i32 %len.addr.0
  %div = udiv i32 %len.addr.0.frozen, 4095
  %8 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 4095)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2352, i32 %len.addr.0)
  %cmp6 = icmp ugt i32 %len.addr.0, 2352
  %fc.0 = select i1 %cmp6, i16 648, i16 520
  %call.i = tail call ptr @__alloc_skb(i32 noundef %8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %mt76_testmode_max_mpdu_len.exit.cleanup52_crit_edge, label %if.end13

mt76_testmode_max_mpdu_len.exit.cleanup52_crit_edge: ; preds = %mt76_testmode_max_mpdu_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end13:                                         ; preds = %mt76_testmode_max_mpdu_len.exit
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !27

do.body3.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end13
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %8
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %14, %8
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %15 = call ptr @memset(ptr %12, i32 0, i32 %8)
  %16 = tail call i16 @llvm.bswap.i16(i16 %fc.0)
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %12, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 2
  %addr = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 20
  %18 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 3
  %arrayidx18 = getelementptr %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 20, i32 1
  %19 = call ptr @memcpy(ptr %addr2, ptr %arrayidx18, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %12, i32 0, i32 4
  %arrayidx22 = getelementptr %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 20, i32 2
  %20 = call ptr @memcpy(ptr %addr3, ptr %arrayidx22, i32 6)
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %queue_mapping1.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 131204, ptr %cb.i, align 8
  br i1 %cmp.not, label %__skb_put_zero.exit.if.end30_crit_edge, label %if.then26

__skb_put_zero.exit.if.end30_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hw_queue = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load i32, ptr %hw_queue, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %hw_queue, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %__skb_put_zero.exit.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len.addr.0)
  %24 = icmp ult i32 %len.addr.0, 4095
  br i1 %24, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 6
  %sub = add nsw i32 %div, -1
  %27 = mul i32 %div, 4095
  %rem.decomposed = sub i32 %len.addr.0.frozen, %27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %frag_tail.0115 = phi ptr [ %frag_list, %for.body.lr.ph ], [ %call.i103, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0116, i32 %sub)
  %cmp34 = icmp eq i32 %i.0116, %sub
  %frag_len.0 = select i1 %cmp34, i32 %rem.decomposed, i32 4095
  %call.i103 = tail call ptr @__alloc_skb(i32 noundef %frag_len.0, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool42.not = icmp eq ptr %call.i103, null
  br i1 %tobool42.not, label %cleanup.thread, label %if.end44

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %tx_skb.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 2
  %28 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_skb.i, align 8
  tail call void @consume_skb(ptr noundef %29) #7
  %30 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %tx_skb.i, align 8
  tail call void @consume_skb(ptr noundef nonnull %call.i) #7
  br label %cleanup52

if.end44:                                         ; preds = %for.body
  %data_len.i.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %call.i103, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i105 = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i105, label %for.inc, label %do.body3.i.i106, !prof !27

do.body3.i.i106:                                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

for.inc:                                          ; preds = %if.end44
  %tail.i.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %call.i103, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i107, align 8
  %add.ptr.i.i108 = getelementptr i8, ptr %34, i32 %frag_len.0
  store ptr %add.ptr.i.i108, ptr %tail.i.i.i107, align 8
  %len9.i.i109 = getelementptr inbounds %struct.sk_buff, ptr %call.i103, i32 0, i32 6
  %35 = ptrtoint ptr %len9.i.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len9.i.i109, align 4
  %add.i.i110 = add i32 %36, %frag_len.0
  store i32 %add.i.i110, ptr %len9.i.i109, align 4
  %37 = call ptr @memset(ptr %34, i32 0, i32 %frag_len.0)
  %38 = load i32, ptr %len9.i.i109, align 4
  %39 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len9.i.i, align 4
  %add = add i32 %40, %38
  store i32 %add, ptr %len9.i.i, align 4
  %41 = load i32, ptr %len9.i.i109, align 4
  %42 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i.i, align 8
  %add50 = add i32 %43, %41
  store i32 %add50, ptr %data_len.i.i.i, align 8
  %44 = ptrtoint ptr %frag_tail.0115 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i103, ptr %frag_tail.0115, align 4
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %tx_skb.i112 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 2
  %45 = ptrtoint ptr %tx_skb.i112 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_skb.i112, align 8
  tail call void @consume_skb(ptr noundef %46) #7
  %47 = ptrtoint ptr %tx_skb.i112 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %tx_skb.i112, align 8
  br label %cleanup52

cleanup52:                                        ; preds = %for.end, %cleanup.thread, %mt76_testmode_max_mpdu_len.exit.cleanup52_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ -12, %mt76_testmode_max_mpdu_len.exit.cleanup52_crit_edge ], [ -12, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_testmode_set_state(ptr noundef %phy, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %test = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 8
  %4 = or i32 %3, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp3 = icmp eq i32 %state, 0
  br i1 %cmp3, label %land.lhs.true11, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %state6 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 3
  %6 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state6, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true5.cleanup21_crit_edge, label %lor.lhs.false

land.lhs.true5.cleanup21_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup21_crit_edge, label %if.end9

lor.lhs.false.cleanup21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp10.not = icmp eq i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13.not = icmp eq i32 %3, 1
  %or.cond50 = select i1 %cmp10.not, i1 true, i1 %cmp13.not
  br i1 %or.cond50, label %if.end9.if.end19_crit_edge, label %if.end9.if.then14_crit_edge

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true11:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13.not.old = icmp eq i32 %3, 1
  br i1 %cmp13.not.old, label %land.lhs.true11.if.end19_crit_edge, label %land.lhs.true11.if.then14_crit_edge

land.lhs.true11.if.then14_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

land.lhs.true11.if.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true11.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  %dev2.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %11 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.then14.if.end.i_crit_edge

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mt76_testmode_tx_stop(ptr noundef %phy) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then14.if.end.i_crit_edge
  %test_ops.i = getelementptr inbounds %struct.mt76_dev, ptr %12, i32 0, i32 56
  %13 = ptrtoint ptr %test_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %test_ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call8.i = tail call i32 %16(ptr noundef %phy, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end19.thread, label %if.end.i.cleanup21_crit_edge

if.end.i.cleanup21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end19.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %test, align 8
  %18 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i, align 4
  br label %if.end.i37

if.end19:                                         ; preds = %land.lhs.true11.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %20 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %test, align 8
  %dev2.i34 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %21 = ptrtoint ptr %dev2.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i35 = icmp eq i32 %.pr, 2
  br i1 %cmp.i35, label %if.then.i36, label %if.end19.if.end.i37_crit_edge

if.end19.if.end.i37_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i37

if.then.i36:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mt76_testmode_tx_stop(ptr noundef %phy) #7
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i36, %if.end19.if.end.i37_crit_edge, %if.end19.thread
  %23 = phi ptr [ %19, %if.end19.thread ], [ %22, %if.then.i36 ], [ %22, %if.end19.if.end.i37_crit_edge ]
  %dev2.i3449 = phi ptr [ %dev2.i, %if.end19.thread ], [ %dev2.i34, %if.then.i36 ], [ %dev2.i34, %if.end19.if.end.i37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp3.i = icmp eq i32 %state, 2
  br i1 %cmp3.i, label %cond.false.i.i, label %if.end.i37.if.end7.i_crit_edge

if.end.i37.if.end7.i_crit_edge:                   ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

cond.false.i.i:                                   ; preds = %if.end.i37
  %antenna_mask.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 15
  %24 = ptrtoint ptr %antenna_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %antenna_mask.i.i, align 8
  %conv66.i.i = zext i8 %25 to i32
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv66.i.i) #7
  %tx_mpdu_len.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 4
  %26 = ptrtoint ptr %tx_mpdu_len.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_mpdu_len.i.i, align 8
  %conv68.i.i = zext i16 %27 to i32
  %call69.i.i = tail call i32 @mt76_testmode_alloc_skb(ptr noundef %phy, i32 noundef %conv68.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %tobool70.not.i.i = icmp eq i32 %call69.i.i, 0
  br i1 %tobool70.not.i.i, label %if.end.i.i, label %cond.false.i.i.cleanup21_crit_edge

cond.false.i.i.cleanup21_crit_edge:               ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end.i.i:                                       ; preds = %cond.false.i.i
  %tx_rate_mode.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 5
  %28 = ptrtoint ptr %tx_rate_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_rate_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.i.i = icmp ugt i8 %29, 3
  br i1 %cmp.i.i, label %if.end.i.i.if.end7.i_crit_edge, label %if.end74.i.i

if.end.i.i.if.end7.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end74.i.i:                                     ; preds = %if.end.i.i
  %tx_antenna_mask.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 12
  %30 = ptrtoint ptr %tx_antenna_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tx_antenna_mask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool75.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool75.not.i.i, label %if.end74.i.i.if.end168.i.i_crit_edge, label %cond.false150.i.i

if.end74.i.i.if.end168.i.i_crit_edge:             ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168.i.i

cond.false150.i.i:                                ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv152.i.i = zext i8 %31 to i32
  %call.i388.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv152.i.i) #7
  %conv157.i.i = and i32 %call.i.i.i, 255
  %conv158.i.i = and i32 %call.i388.i.i, 255
  %32 = tail call i32 @llvm.umin.i32(i32 %conv157.i.i, i32 %conv158.i.i) #7
  br label %if.end168.i.i

if.end168.i.i:                                    ; preds = %cond.false150.i.i, %if.end74.i.i.if.end168.i.i_crit_edge
  %max_nss.0.in.i.i = phi i32 [ %32, %cond.false150.i.i ], [ %call.i.i.i, %if.end74.i.i.if.end168.i.i_crit_edge ]
  %max_nss.0.i.i = trunc i32 %max_nss.0.in.i.i to i8
  %tx_skb.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 2
  %33 = ptrtoint ptr %tx_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_skb.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  %35 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 8
  %count.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 9
  %36 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  %bf.set.i.i = or i16 %bf.clear.i.i, 2048
  store i16 %bf.set.i.i, ptr %count.i.i, align 1
  %tx_rate_idx.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 6
  %37 = ptrtoint ptr %tx_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_rate_idx.i.i, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %35, align 1
  %40 = ptrtoint ptr %tx_rate_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_rate_mode.i.i, align 2
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %41, label %if.end168.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb182.i.i
    i8 2, label %sw.bb200.i.i
    i8 3, label %sw.bb223.i.i
  ]

if.end168.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end168.i.i
  %chandef.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 5
  %43 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chandef.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp172.not.i.i = icmp ne i32 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %cmp178.i.i = icmp sgt i8 %38, 4
  %or.cond.i.i = select i1 %cmp172.not.i.i, i1 true, i1 %cmp178.i.i
  br i1 %or.cond.i.i, label %sw.bb.i.i.cleanup21_crit_edge, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i.cleanup21_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

sw.bb182.i.i:                                     ; preds = %if.end168.i.i
  %chandef183.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 5
  %47 = ptrtoint ptr %chandef183.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chandef183.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp186.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp186.not.i.i, label %if.end189.i.i, label %sw.bb182.i.i.sw.epilog.i.i_crit_edge

sw.bb182.i.i.sw.epilog.i.i_crit_edge:             ; preds = %sw.bb182.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.end189.i.i:                                    ; preds = %sw.bb182.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %38)
  %cmp192.i.i = icmp sgt i8 %38, 8
  br i1 %cmp192.i.i, label %if.end189.i.i.cleanup21_crit_edge, label %if.end195.i.i

if.end189.i.i.cleanup21_crit_edge:                ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end195.i.i:                                    ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add198.i.i = add nsw i8 %38, 4
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %add198.i.i, ptr %35, align 1
  br label %sw.epilog.i.i

sw.bb200.i.i:                                     ; preds = %if.end168.i.i
  %conv202.i.i = sext i8 %38 to i32
  %conv203.i.i = shl i32 %max_nss.0.in.i.i, 3
  %mul.i.i = and i32 %conv203.i.i, 2040
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv202.i.i)
  %cmp204.i.i = icmp slt i32 %mul.i.i, %conv202.i.i
  br i1 %cmp204.i.i, label %land.lhs.true.i.i, label %sw.bb200.i.i.if.end215.i.i_crit_edge

sw.bb200.i.i.if.end215.i.i_crit_edge:             ; preds = %sw.bb200.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb200.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %38)
  %cmp208.i.i = icmp eq i8 %38, 32
  br i1 %cmp208.i.i, label %land.lhs.true210.i.i, label %land.lhs.true.i.i.cleanup21_crit_edge

land.lhs.true.i.i.cleanup21_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

land.lhs.true210.i.i:                             ; preds = %land.lhs.true.i.i
  %width.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp212.i.i = icmp ugt i32 %53, 1
  br i1 %cmp212.i.i, label %land.lhs.true210.i.i.if.end215.i.i_crit_edge, label %land.lhs.true210.i.i.cleanup21_crit_edge

land.lhs.true210.i.i.cleanup21_crit_edge:         ; preds = %land.lhs.true210.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

land.lhs.true210.i.i.if.end215.i.i_crit_edge:     ; preds = %land.lhs.true210.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i.i

if.end215.i.i:                                    ; preds = %land.lhs.true210.i.i.if.end215.i.i_crit_edge, %sw.bb200.i.i.if.end215.i.i_crit_edge
  %bf.clear217.i.i = and i16 %bf.load.i.i, 2039
  %bf.set222.i.i = or i16 %bf.clear217.i.i, 2056
  %54 = ptrtoint ptr %count.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %bf.set222.i.i, ptr %count.i.i, align 1
  br label %sw.epilog.i.i

sw.bb223.i.i:                                     ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %cmp226.i.i = icmp sgt i8 %38, 9
  br i1 %cmp226.i.i, label %sw.bb223.i.i.cleanup21_crit_edge, label %if.end229.i.i

sw.bb223.i.i.cleanup21_crit_edge:                 ; preds = %sw.bb223.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end229.i.i:                                    ; preds = %sw.bb223.i.i
  %tx_rate_nss.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 7
  %55 = ptrtoint ptr %tx_rate_nss.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tx_rate_nss.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %max_nss.0.i.i)
  %cmp232.i.i = icmp ugt i8 %56, %max_nss.0.i.i
  br i1 %cmp232.i.i, label %if.end229.i.i.cleanup21_crit_edge, label %if.end235.i.i

if.end229.i.i.cleanup21_crit_edge:                ; preds = %if.end229.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end235.i.i:                                    ; preds = %if.end229.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %tx_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tx_rate_idx.i.i, align 1
  tail call fastcc void @ieee80211_rate_set_vht(ptr noundef %35, i8 noundef zeroext %58, i8 noundef zeroext %56) #7
  %59 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %bf.load239.i.i = load i16, ptr %count.i.i, align 1
  %bf.set247.i.i = or i16 %bf.load239.i.i, 256
  store i16 %bf.set247.i.i, ptr %count.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end235.i.i, %if.end215.i.i, %if.end195.i.i, %sw.bb182.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %if.end168.i.i.sw.epilog.i.i_crit_edge
  %tx_rate_sgi.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 8
  %60 = ptrtoint ptr %tx_rate_sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tx_rate_sgi.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool248.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool248.not.i.i, label %sw.epilog.i.i.if.end260.i.i_crit_edge, label %if.then249.i.i

sw.epilog.i.i.if.end260.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260.i.i

if.then249.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %bf.load251.i.i = load i16, ptr %count.i.i, align 1
  %bf.set259.i.i = or i16 %bf.load251.i.i, 128
  store i16 %bf.set259.i.i, ptr %count.i.i, align 1
  br label %if.end260.i.i

if.end260.i.i:                                    ; preds = %if.then249.i.i, %sw.epilog.i.i.if.end260.i.i_crit_edge
  %tx_rate_ldpc.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 9
  %63 = ptrtoint ptr %tx_rate_ldpc.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tx_rate_ldpc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool261.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool261.not.i.i, label %if.end260.i.i.if.end265.i.i_crit_edge, label %if.then262.i.i

if.end260.i.i.if.end265.i.i_crit_edge:            ; preds = %if.end260.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end265.i.i

if.then262.i.i:                                   ; preds = %if.end260.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cb.i.i.i, align 8
  %or264.i.i = or i32 %66, 4194304
  store i32 %or264.i.i, ptr %cb.i.i.i, align 8
  br label %if.end265.i.i

if.end265.i.i:                                    ; preds = %if.then262.i.i, %if.end260.i.i.if.end265.i.i_crit_edge
  %tx_rate_stbc.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 10
  %67 = ptrtoint ptr %tx_rate_stbc.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tx_rate_stbc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool266.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool266.not.i.i, label %if.end265.i.i.if.end270.i.i_crit_edge, label %if.then267.i.i

if.end265.i.i.if.end270.i.i_crit_edge:            ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270.i.i

if.then267.i.i:                                   ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cb.i.i.i, align 8
  %or269.i.i = or i32 %70, 25165824
  store i32 %or269.i.i, ptr %cb.i.i.i, align 8
  br label %if.end270.i.i

if.end270.i.i:                                    ; preds = %if.then267.i.i, %if.end265.i.i.if.end270.i.i_crit_edge
  %71 = ptrtoint ptr %tx_rate_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tx_rate_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp273.i.i = icmp ugt i8 %72, 1
  br i1 %cmp273.i.i, label %if.then275.i.i, label %if.end270.i.i.if.end7.i_crit_edge

if.end270.i.i.if.end7.i_crit_edge:                ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then275.i.i:                                   ; preds = %if.end270.i.i
  %width277.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %width277.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %width277.i.i, align 4
  %switch.tableidx = add i32 %74, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %75 = icmp ult i32 %switch.tableidx, 4
  br i1 %75, label %switch.lookup, label %if.then275.i.i.if.end7.i_crit_edge

if.then275.i.i.if.end7.i_crit_edge:               ; preds = %if.then275.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

switch.lookup:                                    ; preds = %if.then275.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.mt76_testmode_set_state, i32 0, i32 %switch.tableidx
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %76)
  %switch.load = load i16, ptr %switch.gep, align 2
  %77 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %bf.load280.i.i = load i16, ptr %count.i.i, align 1
  %bf.set288.i.i = or i16 %bf.load280.i.i, %switch.load
  store i16 %bf.set288.i.i, ptr %count.i.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %switch.lookup, %if.then275.i.i.if.end7.i_crit_edge, %if.end270.i.i.if.end7.i_crit_edge, %if.end.i.i.if.end7.i_crit_edge, %if.end.i37.if.end7.i_crit_edge
  %test_ops.i38 = getelementptr inbounds %struct.mt76_dev, ptr %23, i32 0, i32 56
  %78 = ptrtoint ptr %test_ops.i38 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %test_ops.i38, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %call8.i39 = tail call i32 %81(ptr noundef %phy, i32 noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i39)
  %tobool9.not.i40 = icmp eq i32 %call8.i39, 0
  br i1 %tobool9.not.i40, label %if.end14.i42, label %if.then10.i41

if.then10.i41:                                    ; preds = %if.end7.i
  br i1 %cmp3.i, label %if.then12.i, label %if.then10.i41.cleanup21_crit_edge

if.then10.i41.cleanup21_crit_edge:                ; preds = %if.then10.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.then12.i:                                      ; preds = %if.then10.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mt76_testmode_tx_stop(ptr noundef %phy) #7
  br label %cleanup21

if.end14.i42:                                     ; preds = %if.end7.i
  br i1 %cmp3.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end14.i42
  %82 = ptrtoint ptr %dev2.i3449 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev2.i3449, align 4
  %tx_queued.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 22
  %84 = ptrtoint ptr %tx_queued.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %tx_queued.i.i, align 4
  %tx_done.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 24
  %85 = ptrtoint ptr %tx_done.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tx_done.i.i, align 4
  %tx_count.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 3
  %86 = ptrtoint ptr %tx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_count.i.i, align 4
  %tx_pending.i.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 21
  %88 = ptrtoint ptr %tx_pending.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %tx_pending.i.i, align 8
  %tx_worker.i.i = getelementptr inbounds %struct.mt76_dev, ptr %83, i32 0, i32 26
  %89 = ptrtoint ptr %tx_worker.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_worker.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.i, label %if.then16.i.if.end21.i_crit_edge, label %if.end.i.i.i

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.end.i.i.i:                                     ; preds = %if.then16.i
  %state.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %83, i32 0, i32 26, i32 2
  %call.i.i42.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i42.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.if.end21.i_crit_edge

if.end.i.i.i.if.end21.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %91 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %state.i.i.i, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool4.not.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool4.not.i.i.i, label %if.then5.i.i.i, label %land.lhs.true.i.i.i.if.end21.i_crit_edge

land.lhs.true.i.i.i.if.end21.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then5.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %tx_worker.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_worker.i.i, align 4
  %call7.i.i.i = tail call i32 @wake_up_process(ptr noundef %95) #7
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end14.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp17.i = icmp eq i32 %state, 3
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_stats.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 25
  %96 = call ptr @memset(ptr %rx_stats.i, i32 0, i32 80)
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.else.i.if.end21.i_crit_edge, %if.then5.i.i.i, %land.lhs.true.i.i.i.if.end21.i_crit_edge, %if.end.i.i.i.if.end21.i_crit_edge, %if.then16.i.if.end21.i_crit_edge
  %97 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %state, ptr %test, align 8
  br label %cleanup21

cleanup21:                                        ; preds = %if.end21.i, %if.then12.i, %if.then10.i41.cleanup21_crit_edge, %if.end229.i.i.cleanup21_crit_edge, %sw.bb223.i.i.cleanup21_crit_edge, %land.lhs.true210.i.i.cleanup21_crit_edge, %land.lhs.true.i.i.cleanup21_crit_edge, %if.end189.i.i.cleanup21_crit_edge, %sw.bb.i.i.cleanup21_crit_edge, %cond.false.i.i.cleanup21_crit_edge, %if.end.i.cleanup21_crit_edge, %lor.lhs.false.cleanup21_crit_edge, %land.lhs.true5.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup21_crit_edge ], [ -107, %lor.lhs.false.cleanup21_crit_edge ], [ -107, %land.lhs.true5.cleanup21_crit_edge ], [ %call8.i, %if.end.i.cleanup21_crit_edge ], [ 0, %if.end21.i ], [ %call8.i39, %if.then12.i ], [ %call8.i39, %if.then10.i41.cleanup21_crit_edge ], [ -22, %if.end229.i.i.cleanup21_crit_edge ], [ -22, %sw.bb223.i.i.cleanup21_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup21_crit_edge ], [ -22, %land.lhs.true210.i.i.cleanup21_crit_edge ], [ -22, %if.end189.i.i.cleanup21_crit_edge ], [ -22, %sw.bb.i.i.cleanup21_crit_edge ], [ %call69.i.i, %cond.false.i.i.cleanup21_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_testmode_cmd(ptr nocapture noundef readonly %hw, ptr nocapture readnone %vif, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %tb = alloca [25 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %test = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tb) #7
  %4 = call ptr @memset(ptr %tb, i32 255, i32 100)
  %cmp.not = icmp eq ptr %1, %3
  %test_ops = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 56
  %5 = ptrtoint ptr %test_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %test_ops, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup276_crit_edge, label %if.end

entry.cleanup276_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup276

if.end:                                           ; preds = %entry
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 24, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @mt76_tm_policy, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup276_crit_edge

if.end.cleanup276_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup276

if.end5:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %test, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %10, label %if.then14.i [
    i32 0, label %if.then7.mt76_testmode_set_state.exit_crit_edge
    i32 1, label %if.then7.if.end.i37.i_crit_edge
  ]

if.then7.if.end.i37.i_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i37.i

if.then7.mt76_testmode_set_state.exit_crit_edge:  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_set_state.exit

if.then14.i:                                      ; preds = %if.then7
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then14.i.if.end.i.i_crit_edge

if.then14.i.if.end.i.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mt76_testmode_tx_stop(ptr noundef %1) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then14.i.if.end.i.i_crit_edge
  %test_ops.i.i = getelementptr inbounds %struct.mt76_dev, ptr %13, i32 0, i32 56
  %14 = ptrtoint ptr %test_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %test_ops.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call8.i.i = call i32 %17(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end19.thread.i, label %if.end.i.i.mt76_testmode_set_state.exit_crit_edge

if.end.i.i.mt76_testmode_set_state.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_set_state.exit

if.end19.thread.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %test, align 8
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %if.end19.thread.i, %if.then7.if.end.i37.i_crit_edge
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  %test_ops.i38.i = getelementptr inbounds %struct.mt76_dev, ptr %20, i32 0, i32 56
  %21 = ptrtoint ptr %test_ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %test_ops.i38.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call8.i39.i = call i32 %24(ptr noundef %1, i32 noundef 0) #7
  br label %mt76_testmode_set_state.exit

mt76_testmode_set_state.exit:                     ; preds = %if.end.i37.i, %if.end.i.i.mt76_testmode_set_state.exit_crit_edge, %if.then7.mt76_testmode_set_state.exit_crit_edge
  %25 = call ptr @memset(ptr %test, i32 0, i32 160)
  br label %if.end9

if.end9:                                          ; preds = %mt76_testmode_set_state.exit, %if.end5.if.end9_crit_edge
  %tx_mpdu_len.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 4
  %26 = ptrtoint ptr %tx_mpdu_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_mpdu_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.not.i = icmp eq i16 %27, 0
  br i1 %cmp.not.i, label %if.end.i369, label %if.end9.mt76_testmode_init_defaults.exit_crit_edge

if.end9.mt76_testmode_init_defaults.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_init_defaults.exit

if.end.i369:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %tx_mpdu_len.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1024, ptr %tx_mpdu_len.i, align 8
  %tx_count.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 3
  %29 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %tx_count.i, align 4
  %tx_rate_mode.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 5
  %30 = ptrtoint ptr %tx_rate_mode.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %tx_rate_mode.i, align 2
  %tx_rate_nss.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 7
  %31 = ptrtoint ptr %tx_rate_nss.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %tx_rate_nss.i, align 4
  %addr.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20
  %macaddr.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 13
  %32 = call ptr @memcpy(ptr %addr.i, ptr %macaddr.i, i32 6)
  %arrayidx5.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 1
  %33 = call ptr @memcpy(ptr %arrayidx5.i, ptr %macaddr.i, i32 6)
  %arrayidx10.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 2
  %34 = call ptr @memcpy(ptr %arrayidx10.i, ptr %macaddr.i, i32 6)
  br label %mt76_testmode_init_defaults.exit

mt76_testmode_init_defaults.exit:                 ; preds = %if.end.i369, %if.end9.mt76_testmode_init_defaults.exit_crit_edge
  %arrayidx10 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %36, null
  br i1 %tobool11.not, label %mt76_testmode_init_defaults.exit.if.end15_crit_edge, label %if.then12

mt76_testmode_init_defaults.exit.if.end15_crit_edge: ; preds = %mt76_testmode_init_defaults.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %mt76_testmode_init_defaults.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i, align 4
  %tx_count = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 3
  %39 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tx_count, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %mt76_testmode_init_defaults.exit.if.end15_crit_edge
  %arrayidx16 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 9
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %41, null
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i370 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i370 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i370, align 1
  %tx_rate_idx = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 6
  %44 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tx_rate_idx, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %arrayidx22 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx22, align 4
  %tx_rate_mode = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 5
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end21.lor.lhs.false_crit_edge, label %if.end.i371

if.end21.lor.lhs.false_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end.i371:                                      ; preds = %if.end21
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %48)
  %cmp5.i = icmp ugt i8 %48, 7
  br i1 %cmp5.i, label %if.end.i371.out_crit_edge, label %if.end8.i

if.end.i371.out_crit_edge:                        ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i:                                        ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %tx_rate_mode to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tx_rate_mode, align 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8.i, %if.end21.lor.lhs.false_crit_edge
  %arrayidx25 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 8
  %50 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx25, align 4
  %tx_rate_nss = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 7
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %antenna_mask, align 8
  %conv92 = zext i8 %53 to i32
  %call.i372 = call i32 @__sw_hweight8(i32 noundef %conv92) #7
  %tobool.not.i373 = icmp eq ptr %51, null
  br i1 %tobool.not.i373, label %lor.lhs.false.lor.lhs.false97_crit_edge, label %if.end.i376

lor.lhs.false.lor.lhs.false97_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false97

if.end.i376:                                      ; preds = %lor.lhs.false
  %conv94 = trunc i32 %call.i372 to i8
  %add.ptr.i.i.i374 = getelementptr i8, ptr %51, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i.i374 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i.i.i374, align 1
  %56 = add i8 %55, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %conv94)
  %.not = icmp ult i8 %56, %conv94
  br i1 %.not, label %if.end8.i377, label %if.end.i376.out_crit_edge

if.end.i376.out_crit_edge:                        ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i377:                                     ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %tx_rate_nss to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %tx_rate_nss, align 1
  br label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end8.i377, %lor.lhs.false.lor.lhs.false97_crit_edge
  %arrayidx98 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 10
  %58 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx98, align 4
  %tx_rate_sgi = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 8
  %tobool.not.i380 = icmp eq ptr %59, null
  br i1 %tobool.not.i380, label %lor.lhs.false97.lor.lhs.false101_crit_edge, label %if.end.i383

lor.lhs.false97.lor.lhs.false101_crit_edge:       ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false101

if.end.i383:                                      ; preds = %lor.lhs.false97
  %add.ptr.i.i.i381 = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i.i381 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i.i381, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp5.i382 = icmp ugt i8 %61, 2
  br i1 %cmp5.i382, label %if.end.i383.out_crit_edge, label %if.end8.i384

if.end.i383.out_crit_edge:                        ; preds = %if.end.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i384:                                     ; preds = %if.end.i383
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %tx_rate_sgi to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tx_rate_sgi, align 1
  br label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %if.end8.i384, %lor.lhs.false97.lor.lhs.false101_crit_edge
  %arrayidx102 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 11
  %63 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx102, align 4
  %tx_rate_ldpc = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 9
  %tobool.not.i387 = icmp eq ptr %64, null
  br i1 %tobool.not.i387, label %lor.lhs.false101.lor.lhs.false105_crit_edge, label %if.end.i390

lor.lhs.false101.lor.lhs.false105_crit_edge:      ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false105

if.end.i390:                                      ; preds = %lor.lhs.false101
  %add.ptr.i.i.i388 = getelementptr i8, ptr %64, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i.i388 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i.i.i388, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp5.i389 = icmp ugt i8 %66, 1
  br i1 %cmp5.i389, label %if.end.i390.out_crit_edge, label %if.end8.i391

if.end.i390.out_crit_edge:                        ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i391:                                     ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %tx_rate_ldpc to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %tx_rate_ldpc, align 1
  br label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end8.i391, %lor.lhs.false101.lor.lhs.false105_crit_edge
  %arrayidx106 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 12
  %68 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx106, align 4
  %tx_rate_stbc = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 10
  %tobool.not.i394 = icmp eq ptr %69, null
  br i1 %tobool.not.i394, label %lor.lhs.false105.lor.lhs.false109_crit_edge, label %if.end.i397

lor.lhs.false105.lor.lhs.false109_crit_edge:      ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false109

if.end.i397:                                      ; preds = %lor.lhs.false105
  %add.ptr.i.i.i395 = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i.i395 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.i.i395, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp5.i396 = icmp ugt i8 %71, 1
  br i1 %cmp5.i396, label %if.end.i397.out_crit_edge, label %if.end8.i398

if.end.i397.out_crit_edge:                        ; preds = %if.end.i397
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i398:                                     ; preds = %if.end.i397
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %tx_rate_stbc to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %tx_rate_stbc, align 1
  br label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end8.i398, %lor.lhs.false105.lor.lhs.false109_crit_edge
  %arrayidx110 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 13
  %73 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx110, align 4
  %tx_ltf = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 11
  %tobool.not.i401 = icmp eq ptr %74, null
  br i1 %tobool.not.i401, label %lor.lhs.false109.lor.lhs.false113_crit_edge, label %if.end.i404

lor.lhs.false109.lor.lhs.false113_crit_edge:      ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false113

if.end.i404:                                      ; preds = %lor.lhs.false109
  %add.ptr.i.i.i402 = getelementptr i8, ptr %74, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i.i402 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i.i.i402, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %cmp5.i403 = icmp ugt i8 %76, 2
  br i1 %cmp5.i403, label %if.end.i404.out_crit_edge, label %if.end8.i405

if.end.i404.out_crit_edge:                        ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i405:                                     ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %tx_ltf to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %tx_ltf, align 1
  br label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %if.end8.i405, %lor.lhs.false109.lor.lhs.false113_crit_edge
  %arrayidx114 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 14
  %78 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx114, align 4
  %tx_antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 12
  %tobool.not.i408 = icmp eq ptr %79, null
  br i1 %tobool.not.i408, label %lor.lhs.false113.lor.lhs.false127_crit_edge, label %if.end.i413

lor.lhs.false113.lor.lhs.false127_crit_edge:      ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false127

if.end.i413:                                      ; preds = %lor.lhs.false113
  %80 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %antenna_mask, align 8
  %conv119 = zext i8 %81 to i32
  %mul = select i1 %cmp.not, i32 0, i32 2
  %shl123 = shl nuw nsw i32 %conv119, %mul
  %conv124 = trunc i32 %shl123 to i8
  %shl = shl nuw nsw i32 1, %mul
  %conv117 = trunc i32 %shl to i8
  %add.ptr.i.i.i409 = getelementptr i8, ptr %79, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i.i409 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i.i.i409, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv117)
  %cmp.i410 = icmp ult i8 %83, %conv117
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv124)
  %cmp5.i411 = icmp ugt i8 %83, %conv124
  %or.cond.i412 = or i1 %cmp.i410, %cmp5.i411
  br i1 %or.cond.i412, label %if.end.i413.out_crit_edge, label %if.end8.i414

if.end.i413.out_crit_edge:                        ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i414:                                     ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %tx_antenna_mask to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %tx_antenna_mask, align 1
  br label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %if.end8.i414, %lor.lhs.false113.lor.lhs.false127_crit_edge
  %arrayidx128 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 19
  %85 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx128, align 4
  %tx_spe_idx = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 13
  %tobool.not.i417 = icmp eq ptr %86, null
  br i1 %tobool.not.i417, label %lor.lhs.false127.lor.lhs.false131_crit_edge, label %if.end.i420

lor.lhs.false127.lor.lhs.false131_crit_edge:      ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false131

if.end.i420:                                      ; preds = %lor.lhs.false127
  %add.ptr.i.i.i418 = getelementptr i8, ptr %86, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i.i418 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr.i.i.i418, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %88)
  %cmp5.i419 = icmp ugt i8 %88, 27
  br i1 %cmp5.i419, label %if.end.i420.out_crit_edge, label %if.end8.i421

if.end.i420.out_crit_edge:                        ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i421:                                     ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %tx_spe_idx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %tx_spe_idx, align 1
  br label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %if.end8.i421, %lor.lhs.false127.lor.lhs.false131_crit_edge
  %arrayidx132 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 20
  %90 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx132, align 4
  %tx_duty_cycle = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 14
  %tobool.not.i424 = icmp eq ptr %91, null
  br i1 %tobool.not.i424, label %lor.lhs.false131.lor.lhs.false135_crit_edge, label %if.end.i427

lor.lhs.false131.lor.lhs.false135_crit_edge:      ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false135

if.end.i427:                                      ; preds = %lor.lhs.false131
  %add.ptr.i.i.i425 = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i.i425 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i.i.i425, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %93)
  %cmp5.i426 = icmp ugt i8 %93, 99
  br i1 %cmp5.i426, label %if.end.i427.out_crit_edge, label %if.end8.i428

if.end.i427.out_crit_edge:                        ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i428:                                     ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %tx_duty_cycle to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %tx_duty_cycle, align 1
  br label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %if.end8.i428, %lor.lhs.false131.lor.lhs.false135_crit_edge
  %arrayidx136 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 15
  %95 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx136, align 4
  %tx_power_control = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 19
  %tobool.not.i431 = icmp eq ptr %96, null
  br i1 %tobool.not.i431, label %lor.lhs.false135.if.end140_crit_edge, label %if.end.i434

lor.lhs.false135.if.end140_crit_edge:             ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.end.i434:                                      ; preds = %lor.lhs.false135
  %add.ptr.i.i.i432 = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i.i432 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr.i.i.i432, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp5.i433 = icmp ugt i8 %98, 1
  br i1 %cmp5.i433, label %if.end.i434.out_crit_edge, label %if.end8.i435

if.end.i434.out_crit_edge:                        ; preds = %if.end.i434
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i435:                                     ; preds = %if.end.i434
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %tx_power_control to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %tx_power_control, align 1
  br label %if.end140

if.end140:                                        ; preds = %if.end8.i435, %lor.lhs.false135.if.end140_crit_edge
  %arrayidx141 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 6
  %100 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx141, align 4
  %tobool142.not = icmp eq ptr %101, null
  br i1 %tobool142.not, label %if.end140.if.end156_crit_edge, label %if.then143

if.end140.if.end156_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then143:                                       ; preds = %if.end140
  %add.ptr.i.i438 = getelementptr i8, ptr %101, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i438 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i.i438, align 4
  %104 = ptrtoint ptr %tx_rate_mode to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tx_rate_mode, align 2
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %105, label %sw.default.i [
    i8 2, label %if.then143.mt76_testmode_max_mpdu_len.exit_crit_edge
    i8 3, label %if.then143.sw.bb1.i_crit_edge
    i8 4, label %if.then143.sw.bb1.i_crit_edge521
    i8 5, label %if.then143.sw.bb1.i_crit_edge522
    i8 6, label %if.then143.sw.bb1.i_crit_edge523
    i8 7, label %if.then143.sw.bb1.i_crit_edge524
  ]

if.then143.sw.bb1.i_crit_edge524:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then143.sw.bb1.i_crit_edge523:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then143.sw.bb1.i_crit_edge522:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then143.sw.bb1.i_crit_edge521:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then143.sw.bb1.i_crit_edge:                    ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then143.mt76_testmode_max_mpdu_len.exit_crit_edge: ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_max_mpdu_len.exit

sw.bb1.i:                                         ; preds = %if.then143.sw.bb1.i_crit_edge, %if.then143.sw.bb1.i_crit_edge521, %if.then143.sw.bb1.i_crit_edge522, %if.then143.sw.bb1.i_crit_edge523, %if.then143.sw.bb1.i_crit_edge524
  %cap.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 11, i32 0, i32 6, i32 1
  %107 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i439 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i439, i32 11454, i32 7991
  br label %mt76_testmode_max_mpdu_len.exit

sw.default.i:                                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_max_mpdu_len.exit

mt76_testmode_max_mpdu_len.exit:                  ; preds = %sw.default.i, %sw.bb1.i, %if.then143.mt76_testmode_max_mpdu_len.exit_crit_edge
  %retval.0.i440 = phi i32 [ 2352, %sw.default.i ], [ 7935, %if.then143.mt76_testmode_max_mpdu_len.exit_crit_edge ], [ %..i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %retval.0.i440)
  %cmp148 = icmp ugt i32 %103, %retval.0.i440
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %103)
  %cmp151 = icmp ult i32 %103, 30
  %or.cond = or i1 %cmp151, %cmp148
  br i1 %or.cond, label %mt76_testmode_max_mpdu_len.exit.out_crit_edge, label %cleanup.thread

mt76_testmode_max_mpdu_len.exit.out_crit_edge:    ; preds = %mt76_testmode_max_mpdu_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cleanup.thread:                                   ; preds = %mt76_testmode_max_mpdu_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv155 = trunc i32 %103 to i16
  %109 = ptrtoint ptr %tx_mpdu_len.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv155, ptr %tx_mpdu_len.i, align 8
  br label %if.end156

if.end156:                                        ; preds = %cleanup.thread, %if.end140.if.end156_crit_edge
  %arrayidx157 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 21
  %110 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx157, align 4
  %tobool158.not = icmp eq ptr %111, null
  br i1 %tobool158.not, label %if.end156.if.end162_crit_edge, label %if.then159

if.end156.if.end162_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i441 = getelementptr i8, ptr %111, i32 4
  %112 = ptrtoint ptr %add.ptr.i.i441 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i441, align 4
  %tx_ipg = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 16
  %114 = ptrtoint ptr %tx_ipg to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %tx_ipg, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end156.if.end162_crit_edge
  %arrayidx163 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 22
  %115 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx163, align 4
  %tobool164.not = icmp eq ptr %116, null
  br i1 %tobool164.not, label %if.end162.if.end168_crit_edge, label %if.then165

if.end162.if.end168_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i442 = getelementptr i8, ptr %116, i32 4
  %117 = ptrtoint ptr %add.ptr.i.i442 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i.i442, align 4
  %tx_time = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 15
  %119 = ptrtoint ptr %tx_time to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %tx_time, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end162.if.end168_crit_edge
  %arrayidx169 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 17
  %120 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx169, align 4
  %tobool170.not = icmp eq ptr %121, null
  br i1 %tobool170.not, label %if.end168.if.end174_crit_edge, label %if.then171

if.end168.if.end174_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

if.then171:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i443 = getelementptr i8, ptr %121, i32 4
  %122 = ptrtoint ptr %add.ptr.i.i443 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i.i443, align 4
  %freq_offset = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 17
  %124 = ptrtoint ptr %freq_offset to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %freq_offset, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end168.if.end174_crit_edge
  %arrayidx175 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 2
  %125 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx175, align 4
  %tobool176.not = icmp eq ptr %126, null
  br i1 %tobool176.not, label %if.else, label %if.then177

if.then177:                                       ; preds = %if.end174
  %add.ptr.i.i444 = getelementptr i8, ptr %126, i32 4
  %127 = ptrtoint ptr %add.ptr.i.i444 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i.i444, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %128)
  %cmp180 = icmp ugt i32 %128, 5
  br i1 %cmp180, label %if.then177.out_crit_edge, label %if.then177.if.end185_crit_edge

if.then177.if.end185_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then177.out_crit_edge:                         ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else:                                          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %test, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.else, %if.then177.if.end185_crit_edge
  %state.0 = phi i32 [ %128, %if.then177.if.end185_crit_edge ], [ %130, %if.else ]
  %arrayidx186 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 16
  %131 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx186, align 4
  %tobool187.not = icmp eq ptr %132, null
  br i1 %tobool187.not, label %if.end185.if.end211_crit_edge, label %if.then188

if.end185.if.end211_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then188:                                       ; preds = %if.end185
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %132, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %134)
  %cmp.i445507 = icmp ugt i16 %134, 7
  br i1 %cmp.i445507, label %land.lhs.true.i.preheader, label %if.then188.if.end211_crit_edge

if.then188.if.end211_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

land.lhs.true.i.preheader:                        ; preds = %if.then188
  %conv.i = zext i16 %134 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %132, i32 4
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %136)
  %cmp1.i = icmp ult i16 %136, 4
  %conv.i446 = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i446)
  %cmp5.i447.not = icmp ult i32 %sub.i, %conv.i446
  %or.cond504 = select i1 %cmp1.i, i1 true, i1 %cmp5.i447.not
  br i1 %or.cond504, label %land.lhs.true.i.preheader.if.end211_crit_edge, label %for.body

land.lhs.true.i.preheader.if.end211_crit_edge:    ; preds = %land.lhs.true.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

for.body:                                         ; preds = %land.lhs.true.i.preheader
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %138)
  %cmp196.not.not = icmp eq i16 %138, 5
  br i1 %cmp196.not.not, label %if.end202, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end202:                                        ; preds = %for.body
  %add.ptr.i.i450 = getelementptr i8, ptr %132, i32 8
  %139 = ptrtoint ptr %add.ptr.i.i450 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %add.ptr.i.i450, align 1
  %arrayidx204 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 0
  %141 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx204, align 1
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %add.ptr.i, align 2
  %conv.i451 = zext i16 %143 to i32
  %sub.i452 = add nuw nsw i32 %conv.i451, 3
  %and.i453 = and i32 %sub.i452, 131068
  %sub1.i = sub nsw i32 %sub.i, %and.i453
  %add.ptr.i454 = getelementptr i8, ptr %add.ptr.i, i32 %and.i453
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i)
  %cmp.i445 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i445, label %land.lhs.true.i.1, label %if.end202.if.end211_crit_edge

if.end202.if.end211_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

land.lhs.true.i.1:                                ; preds = %if.end202
  %144 = ptrtoint ptr %add.ptr.i454 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %add.ptr.i454, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %145)
  %cmp1.i.1 = icmp ult i16 %145, 4
  %conv.i446.1 = zext i16 %145 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv.i446.1)
  %cmp5.i447.not.1 = icmp ult i32 %sub1.i, %conv.i446.1
  %or.cond504.1 = select i1 %cmp1.i.1, i1 true, i1 %cmp5.i447.not.1
  br i1 %or.cond504.1, label %land.lhs.true.i.1.if.end211_crit_edge, label %for.body.1

land.lhs.true.i.1.if.end211_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

for.body.1:                                       ; preds = %land.lhs.true.i.1
  %146 = ptrtoint ptr %add.ptr.i454 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %add.ptr.i454, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %147)
  %cmp196.not.1.not = icmp eq i16 %147, 5
  br i1 %cmp196.not.1.not, label %if.end202.1, label %for.body.1.out_crit_edge

for.body.1.out_crit_edge:                         ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end202.1:                                      ; preds = %for.body.1
  %add.ptr.i.i450.1 = getelementptr i8, ptr %add.ptr.i454, i32 4
  %148 = ptrtoint ptr %add.ptr.i.i450.1 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %add.ptr.i.i450.1, align 1
  %arrayidx204.1 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 1
  %150 = ptrtoint ptr %arrayidx204.1 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx204.1, align 1
  %151 = ptrtoint ptr %add.ptr.i454 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr.i454, align 2
  %conv.i451.1 = zext i16 %152 to i32
  %sub.i452.1 = add nuw nsw i32 %conv.i451.1, 3
  %and.i453.1 = and i32 %sub.i452.1, 131068
  %sub1.i.1 = sub nsw i32 %sub1.i, %and.i453.1
  %add.ptr.i454.1 = getelementptr i8, ptr %add.ptr.i454, i32 %and.i453.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.1)
  %cmp.i445.1 = icmp sgt i32 %sub1.i.1, 3
  br i1 %cmp.i445.1, label %land.lhs.true.i.2, label %if.end202.1.if.end211_crit_edge

if.end202.1.if.end211_crit_edge:                  ; preds = %if.end202.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

land.lhs.true.i.2:                                ; preds = %if.end202.1
  %153 = ptrtoint ptr %add.ptr.i454.1 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %add.ptr.i454.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %154)
  %cmp1.i.2 = icmp ult i16 %154, 4
  %conv.i446.2 = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.1, i32 %conv.i446.2)
  %cmp5.i447.not.2 = icmp ult i32 %sub1.i.1, %conv.i446.2
  %or.cond504.2 = select i1 %cmp1.i.2, i1 true, i1 %cmp5.i447.not.2
  br i1 %or.cond504.2, label %land.lhs.true.i.2.if.end211_crit_edge, label %for.body.2

land.lhs.true.i.2.if.end211_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

for.body.2:                                       ; preds = %land.lhs.true.i.2
  %155 = ptrtoint ptr %add.ptr.i454.1 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %add.ptr.i454.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %156)
  %cmp196.not.2.not = icmp eq i16 %156, 5
  br i1 %cmp196.not.2.not, label %if.end202.2, label %for.body.2.out_crit_edge

for.body.2.out_crit_edge:                         ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end202.2:                                      ; preds = %for.body.2
  %add.ptr.i.i450.2 = getelementptr i8, ptr %add.ptr.i454.1, i32 4
  %157 = ptrtoint ptr %add.ptr.i.i450.2 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %add.ptr.i.i450.2, align 1
  %arrayidx204.2 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 2
  %159 = ptrtoint ptr %arrayidx204.2 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %arrayidx204.2, align 1
  %160 = ptrtoint ptr %add.ptr.i454.1 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %add.ptr.i454.1, align 2
  %conv.i451.2 = zext i16 %161 to i32
  %sub.i452.2 = add nuw nsw i32 %conv.i451.2, 3
  %and.i453.2 = and i32 %sub.i452.2, 131068
  %sub1.i.2 = sub nsw i32 %sub1.i.1, %and.i453.2
  %add.ptr.i454.2 = getelementptr i8, ptr %add.ptr.i454.1, i32 %and.i453.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.2)
  %cmp.i445.2 = icmp sgt i32 %sub1.i.2, 3
  br i1 %cmp.i445.2, label %land.lhs.true.i.3, label %if.end202.2.if.end211_crit_edge

if.end202.2.if.end211_crit_edge:                  ; preds = %if.end202.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

land.lhs.true.i.3:                                ; preds = %if.end202.2
  %162 = ptrtoint ptr %add.ptr.i454.2 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %add.ptr.i454.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %163)
  %cmp1.i.3 = icmp ult i16 %163, 4
  %conv.i446.3 = zext i16 %163 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.2, i32 %conv.i446.3)
  %cmp5.i447.not.3 = icmp ult i32 %sub1.i.2, %conv.i446.3
  %or.cond504.3 = select i1 %cmp1.i.3, i1 true, i1 %cmp5.i447.not.3
  br i1 %or.cond504.3, label %land.lhs.true.i.3.if.end211_crit_edge, label %for.body.3

land.lhs.true.i.3.if.end211_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

for.body.3:                                       ; preds = %land.lhs.true.i.3
  %164 = ptrtoint ptr %add.ptr.i454.2 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %add.ptr.i454.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %165)
  %cmp196.not.3.not = icmp eq i16 %165, 5
  br i1 %cmp196.not.3.not, label %if.end202.3, label %for.body.3.out_crit_edge

for.body.3.out_crit_edge:                         ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end202.3:                                      ; preds = %for.body.3
  %add.ptr.i.i450.3 = getelementptr i8, ptr %add.ptr.i454.2, i32 4
  %166 = ptrtoint ptr %add.ptr.i.i450.3 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %add.ptr.i.i450.3, align 1
  %arrayidx204.3 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 3
  %168 = ptrtoint ptr %arrayidx204.3 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx204.3, align 1
  %169 = ptrtoint ptr %add.ptr.i454.2 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %add.ptr.i454.2, align 2
  %conv.i451.3 = zext i16 %170 to i32
  %sub.i452.3 = add nuw nsw i32 %conv.i451.3, 3
  %and.i453.3 = and i32 %sub.i452.3, 131068
  %sub1.i.3 = sub nsw i32 %sub1.i.2, %and.i453.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.3)
  %cmp.i445.3 = icmp sgt i32 %sub1.i.3, 3
  br i1 %cmp.i445.3, label %land.lhs.true.i.4, label %if.end202.3.if.end211_crit_edge

if.end202.3.if.end211_crit_edge:                  ; preds = %if.end202.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

land.lhs.true.i.4:                                ; preds = %if.end202.3
  %add.ptr.i454.3 = getelementptr i8, ptr %add.ptr.i454.2, i32 %and.i453.3
  %171 = ptrtoint ptr %add.ptr.i454.3 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %add.ptr.i454.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %172)
  %cmp1.i.4 = icmp ult i16 %172, 4
  %conv.i446.4 = zext i16 %172 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.3, i32 %conv.i446.4)
  %cmp5.i447.not.4 = icmp ult i32 %sub1.i.3, %conv.i446.4
  %or.cond504.4 = select i1 %cmp1.i.4, i1 true, i1 %cmp5.i447.not.4
  br i1 %or.cond504.4, label %land.lhs.true.i.4.if.end211_crit_edge, label %land.lhs.true.i.4.out_crit_edge

land.lhs.true.i.4.out_crit_edge:                  ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i.4.if.end211_crit_edge:            ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.end211:                                        ; preds = %land.lhs.true.i.4.if.end211_crit_edge, %if.end202.3.if.end211_crit_edge, %land.lhs.true.i.3.if.end211_crit_edge, %if.end202.2.if.end211_crit_edge, %land.lhs.true.i.2.if.end211_crit_edge, %if.end202.1.if.end211_crit_edge, %land.lhs.true.i.1.if.end211_crit_edge, %if.end202.if.end211_crit_edge, %land.lhs.true.i.preheader.if.end211_crit_edge, %if.then188.if.end211_crit_edge, %if.end185.if.end211_crit_edge
  %arrayidx212 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 24
  %173 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx212, align 4
  %tobool213.not = icmp eq ptr %174, null
  br i1 %tobool213.not, label %if.end211.if.end246_crit_edge, label %if.then214

if.end211.if.end246_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then214:                                       ; preds = %if.end211
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %174, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %176)
  %cmp.i458511 = icmp ugt i16 %176, 7
  br i1 %cmp.i458511, label %land.lhs.true.i460.preheader, label %if.then214.if.end246_crit_edge

if.then214.if.end246_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

land.lhs.true.i460.preheader:                     ; preds = %if.then214
  %conv.i456 = zext i16 %176 to i32
  %sub.i457 = add nsw i32 %conv.i456, -4
  %add.ptr.i455 = getelementptr i8, ptr %174, i32 4
  %177 = ptrtoint ptr %add.ptr.i455 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %add.ptr.i455, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %178)
  %cmp1.i459 = icmp ult i16 %178, 4
  %conv.i461 = zext i16 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i457, i32 %conv.i461)
  %cmp5.i462.not = icmp ult i32 %sub.i457, %conv.i461
  %or.cond505 = select i1 %cmp1.i459, i1 true, i1 %cmp5.i462.not
  br i1 %or.cond505, label %land.lhs.true.i460.preheader.if.end246_crit_edge, label %for.body225

land.lhs.true.i460.preheader.if.end246_crit_edge: ; preds = %land.lhs.true.i460.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

for.body225:                                      ; preds = %land.lhs.true.i460.preheader
  %179 = ptrtoint ptr %add.ptr.i455 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %add.ptr.i455, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %180)
  %cmp227.not.not = icmp eq i16 %180, 10
  br i1 %cmp227.not.not, label %if.end233, label %for.body225.out_crit_edge

for.body225.out_crit_edge:                        ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end233:                                        ; preds = %for.body225
  %arrayidx234 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 0
  %add.ptr.i468 = getelementptr i8, ptr %174, i32 8
  %181 = call ptr @memcpy(ptr %arrayidx234, ptr %add.ptr.i468, i32 6)
  %182 = ptrtoint ptr %add.ptr.i455 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %add.ptr.i455, align 2
  %conv.i469 = zext i16 %183 to i32
  %sub.i470 = add nuw nsw i32 %conv.i469, 3
  %and.i471 = and i32 %sub.i470, 131068
  %sub1.i472 = sub nsw i32 %sub.i457, %and.i471
  %add.ptr.i473 = getelementptr i8, ptr %add.ptr.i455, i32 %and.i471
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i472)
  %cmp.i458 = icmp sgt i32 %sub1.i472, 3
  br i1 %cmp.i458, label %land.lhs.true.i460.1, label %if.end233.if.end246_crit_edge

if.end233.if.end246_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

land.lhs.true.i460.1:                             ; preds = %if.end233
  %184 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %add.ptr.i473, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %185)
  %cmp1.i459.1 = icmp ult i16 %185, 4
  %conv.i461.1 = zext i16 %185 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i472, i32 %conv.i461.1)
  %cmp5.i462.not.1 = icmp ult i32 %sub1.i472, %conv.i461.1
  %or.cond505.1 = select i1 %cmp1.i459.1, i1 true, i1 %cmp5.i462.not.1
  br i1 %or.cond505.1, label %land.lhs.true.i460.1.if.end246_crit_edge, label %for.body225.1

land.lhs.true.i460.1.if.end246_crit_edge:         ; preds = %land.lhs.true.i460.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

for.body225.1:                                    ; preds = %land.lhs.true.i460.1
  %186 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %add.ptr.i473, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %187)
  %cmp227.not.1.not = icmp eq i16 %187, 10
  br i1 %cmp227.not.1.not, label %if.end233.1, label %for.body225.1.out_crit_edge

for.body225.1.out_crit_edge:                      ; preds = %for.body225.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end233.1:                                      ; preds = %for.body225.1
  %arrayidx234.1 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 1
  %add.ptr.i468.1 = getelementptr i8, ptr %add.ptr.i473, i32 4
  %188 = call ptr @memcpy(ptr %arrayidx234.1, ptr %add.ptr.i468.1, i32 6)
  %189 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %add.ptr.i473, align 2
  %conv.i469.1 = zext i16 %190 to i32
  %sub.i470.1 = add nuw nsw i32 %conv.i469.1, 3
  %and.i471.1 = and i32 %sub.i470.1, 131068
  %sub1.i472.1 = sub nsw i32 %sub1.i472, %and.i471.1
  %add.ptr.i473.1 = getelementptr i8, ptr %add.ptr.i473, i32 %and.i471.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i472.1)
  %cmp.i458.1 = icmp sgt i32 %sub1.i472.1, 3
  br i1 %cmp.i458.1, label %land.lhs.true.i460.2, label %if.end233.1.if.end246_crit_edge

if.end233.1.if.end246_crit_edge:                  ; preds = %if.end233.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

land.lhs.true.i460.2:                             ; preds = %if.end233.1
  %191 = ptrtoint ptr %add.ptr.i473.1 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr.i473.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %192)
  %cmp1.i459.2 = icmp ult i16 %192, 4
  %conv.i461.2 = zext i16 %192 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i472.1, i32 %conv.i461.2)
  %cmp5.i462.not.2 = icmp ult i32 %sub1.i472.1, %conv.i461.2
  %or.cond505.2 = select i1 %cmp1.i459.2, i1 true, i1 %cmp5.i462.not.2
  br i1 %or.cond505.2, label %land.lhs.true.i460.2.if.end246_crit_edge, label %for.body225.2

land.lhs.true.i460.2.if.end246_crit_edge:         ; preds = %land.lhs.true.i460.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

for.body225.2:                                    ; preds = %land.lhs.true.i460.2
  %193 = ptrtoint ptr %add.ptr.i473.1 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %add.ptr.i473.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %194)
  %cmp227.not.2.not = icmp eq i16 %194, 10
  br i1 %cmp227.not.2.not, label %if.end233.2, label %for.body225.2.out_crit_edge

for.body225.2.out_crit_edge:                      ; preds = %for.body225.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end233.2:                                      ; preds = %for.body225.2
  %arrayidx234.2 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 2
  %add.ptr.i468.2 = getelementptr i8, ptr %add.ptr.i473.1, i32 4
  %195 = call ptr @memcpy(ptr %arrayidx234.2, ptr %add.ptr.i468.2, i32 6)
  %196 = ptrtoint ptr %add.ptr.i473.1 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %add.ptr.i473.1, align 2
  %conv.i469.2 = zext i16 %197 to i32
  %sub.i470.2 = add nuw nsw i32 %conv.i469.2, 3
  %and.i471.2 = and i32 %sub.i470.2, 131068
  %sub1.i472.2 = sub nsw i32 %sub1.i472.1, %and.i471.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i472.2)
  %cmp.i458.2 = icmp sgt i32 %sub1.i472.2, 3
  br i1 %cmp.i458.2, label %land.lhs.true.i460.3, label %if.end233.2.if.end246_crit_edge

if.end233.2.if.end246_crit_edge:                  ; preds = %if.end233.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

land.lhs.true.i460.3:                             ; preds = %if.end233.2
  %add.ptr.i473.2 = getelementptr i8, ptr %add.ptr.i473.1, i32 %and.i471.2
  %198 = ptrtoint ptr %add.ptr.i473.2 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %add.ptr.i473.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %199)
  %cmp1.i459.3 = icmp ult i16 %199, 4
  %conv.i461.3 = zext i16 %199 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i472.2, i32 %conv.i461.3)
  %cmp5.i462.not.3 = icmp ult i32 %sub1.i472.2, %conv.i461.3
  %or.cond505.3 = select i1 %cmp1.i459.3, i1 true, i1 %cmp5.i462.not.3
  br i1 %or.cond505.3, label %land.lhs.true.i460.3.if.end246_crit_edge, label %land.lhs.true.i460.3.out_crit_edge

land.lhs.true.i460.3.out_crit_edge:               ; preds = %land.lhs.true.i460.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i460.3.if.end246_crit_edge:         ; preds = %land.lhs.true.i460.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.end246:                                        ; preds = %land.lhs.true.i460.3.if.end246_crit_edge, %if.end233.2.if.end246_crit_edge, %land.lhs.true.i460.2.if.end246_crit_edge, %if.end233.1.if.end246_crit_edge, %land.lhs.true.i460.1.if.end246_crit_edge, %if.end233.if.end246_crit_edge, %land.lhs.true.i460.preheader.if.end246_crit_edge, %if.then214.if.end246_crit_edge, %if.end211.if.end246_crit_edge
  %200 = ptrtoint ptr %test_ops to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %test_ops, align 4
  %set_params = getelementptr inbounds %struct.mt76_testmode_ops, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %set_params, align 4
  %tobool248.not = icmp eq ptr %203, null
  br i1 %tobool248.not, label %if.end246.if.end257_crit_edge, label %if.then249

if.end246.if.end257_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

if.then249:                                       ; preds = %if.end246
  %call253 = call i32 %203(ptr noundef %1, ptr noundef nonnull %tb, i32 noundef %state.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.then249.if.end257_crit_edge, label %if.then249.out_crit_edge

if.then249.out_crit_edge:                         ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then249.if.end257_crit_edge:                   ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

if.end257:                                        ; preds = %if.then249.if.end257_crit_edge, %if.end246.if.end257_crit_edge
  %param_set.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 1
  br label %for.body261

for.body261:                                      ; preds = %for.inc267.for.body261_crit_edge, %if.end257
  %i.0515 = phi i32 [ 2, %if.end257 ], [ %inc268, %for.inc267.for.body261_crit_edge ]
  %arrayidx262 = getelementptr [25 x ptr], ptr %tb, i32 0, i32 %i.0515
  %204 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx262, align 4
  %tobool263.not = icmp eq ptr %205, null
  br i1 %tobool263.not, label %for.body261.for.inc267_crit_edge, label %if.then264

for.body261.for.inc267_crit_edge:                 ; preds = %for.body261
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc267

if.then264:                                       ; preds = %for.body261
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 1, %i.0515
  %206 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %param_set.i, align 4
  %or.i = or i32 %207, %shl.i
  store i32 %or.i, ptr %param_set.i, align 4
  br label %for.inc267

for.inc267:                                       ; preds = %if.then264, %for.body261.for.inc267_crit_edge
  %inc268 = add nuw nsw i32 %i.0515, 1
  %exitcond.not = icmp eq i32 %inc268, 25
  br i1 %exitcond.not, label %for.end269, label %for.inc267.for.body261_crit_edge

for.inc267.for.body261_crit_edge:                 ; preds = %for.inc267
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body261

for.end269:                                       ; preds = %for.inc267
  %208 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx175, align 4
  %tobool271.not = icmp eq ptr %209, null
  br i1 %tobool271.not, label %for.end269.out_crit_edge, label %if.then272

for.end269.out_crit_edge:                         ; preds = %for.end269
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then272:                                       ; preds = %for.end269
  call void @__sanitizer_cov_trace_pc() #9
  %call273 = call i32 @mt76_testmode_set_state(ptr noundef %1, i32 noundef %state.0)
  br label %out

out:                                              ; preds = %if.then272, %for.end269.out_crit_edge, %if.then249.out_crit_edge, %land.lhs.true.i460.3.out_crit_edge, %for.body225.2.out_crit_edge, %for.body225.1.out_crit_edge, %for.body225.out_crit_edge, %land.lhs.true.i.4.out_crit_edge, %for.body.3.out_crit_edge, %for.body.2.out_crit_edge, %for.body.1.out_crit_edge, %for.body.out_crit_edge, %if.then177.out_crit_edge, %mt76_testmode_max_mpdu_len.exit.out_crit_edge, %if.end.i434.out_crit_edge, %if.end.i427.out_crit_edge, %if.end.i420.out_crit_edge, %if.end.i413.out_crit_edge, %if.end.i404.out_crit_edge, %if.end.i397.out_crit_edge, %if.end.i390.out_crit_edge, %if.end.i383.out_crit_edge, %if.end.i376.out_crit_edge, %if.end.i371.out_crit_edge
  %err.0 = phi i32 [ -22, %if.then177.out_crit_edge ], [ %call253, %if.then249.out_crit_edge ], [ %call273, %if.then272 ], [ 0, %for.end269.out_crit_edge ], [ -22, %if.end.i371.out_crit_edge ], [ -22, %if.end.i376.out_crit_edge ], [ -22, %if.end.i383.out_crit_edge ], [ -22, %if.end.i390.out_crit_edge ], [ -22, %if.end.i397.out_crit_edge ], [ -22, %if.end.i404.out_crit_edge ], [ -22, %if.end.i413.out_crit_edge ], [ -22, %if.end.i420.out_crit_edge ], [ -22, %if.end.i427.out_crit_edge ], [ -22, %if.end.i434.out_crit_edge ], [ -22, %mt76_testmode_max_mpdu_len.exit.out_crit_edge ], [ -22, %land.lhs.true.i460.3.out_crit_edge ], [ -22, %for.body225.2.out_crit_edge ], [ -22, %for.body225.1.out_crit_edge ], [ -22, %for.body225.out_crit_edge ], [ -22, %land.lhs.true.i.4.out_crit_edge ], [ -22, %for.body.3.out_crit_edge ], [ -22, %for.body.2.out_crit_edge ], [ -22, %for.body.1.out_crit_edge ], [ -22, %for.body.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup276

cleanup276:                                       ; preds = %out, %if.end.cleanup276_crit_edge, %entry.cleanup276_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %entry.cleanup276_crit_edge ], [ %call.i, %if.end.cleanup276_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_testmode_dump(ptr nocapture noundef readonly %hw, ptr noundef %msg, ptr nocapture noundef %cb, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i294 = alloca i8, align 1
  %tmp.i285 = alloca i8, align 1
  %tmp.i280 = alloca i8, align 1
  %tmp.i275 = alloca i32, align 4
  %tmp.i270 = alloca i32, align 4
  %tmp.i265 = alloca i8, align 1
  %tmp.i260 = alloca i8, align 1
  %tmp.i255 = alloca i8, align 1
  %tmp.i250 = alloca i8, align 1
  %tmp.i248 = alloca i8, align 1
  %tmp.i246 = alloca i8, align 1
  %tmp.i244 = alloca i8, align 1
  %tmp.i242 = alloca i8, align 1
  %tmp.i240 = alloca i8, align 1
  %tmp.i238 = alloca i8, align 1
  %tmp.i236 = alloca i32, align 4
  %tmp.i234 = alloca i32, align 4
  %tmp.i232 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp.i54.i = alloca i64, align 8
  %tmp.i52.i = alloca i64, align 8
  %tmp.i50.i = alloca i32, align 4
  %tmp.i48.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tb = alloca [25 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %test = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tb) #7
  %4 = call ptr @memset(ptr %tb, i32 0, i32 100)
  %test_ops = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 56
  %5 = ptrtoint ptr %test_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %test_ops, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %data, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 24, ptr noundef nonnull %data, i32 noundef %len, ptr noundef nonnull @mt76_tm_policy, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx10 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 18
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.end9
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 32786, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not313 = icmp eq ptr %12, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not313
  br i1 %tobool14.not, label %if.then12.out_crit_edge, label %if.then15

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then15:                                        ; preds = %if.then12
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  %test_ops.i = getelementptr inbounds %struct.mt76_dev, ptr %14, i32 0, i32 56
  %15 = ptrtoint ptr %test_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %test_ops.i, align 4
  %dump_stats.i = getelementptr inbounds %struct.mt76_testmode_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dump_stats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dump_stats.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then15.if.end6.i_crit_edge, label %if.then.i

if.then15.if.end6.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then.i:                                        ; preds = %if.then15
  %call.i230 = call i32 %18(ptr noundef %1, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool4.not.i = icmp eq i32 %call.i230, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then.i.out.sink.split_crit_edge

if.then.i.out.sink.split_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.then15.if.end6.i_crit_edge
  %rx_stats.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25
  %19 = ptrtoint ptr %rx_stats.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_stats.i, align 8
  %arrayidx8.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx8.i, align 8
  %arrayidx.1.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.1.i, align 8
  %add.1.i = add i64 %24, %20
  %arrayidx8.1.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx8.1.i, align 8
  %add9.1.i = add i64 %26, %22
  %arrayidx.2.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.2.i, align 8
  %add.2.i = add i64 %add.1.i, %28
  %arrayidx8.2.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx8.2.i, align 8
  %add9.2.i = add i64 %add9.1.i, %30
  %arrayidx.3.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.3.i, align 8
  %add.3.i = add i64 %add.2.i, %32
  %arrayidx8.3.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx8.3.i, align 8
  %add9.3.i = add i64 %add9.2.i, %34
  %arrayidx.4.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.4.i, align 8
  %add.4.i = add i64 %add.3.i, %36
  %arrayidx8.4.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 25, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx8.4.i, align 8
  %add9.4.i = add i64 %add9.3.i, %38
  %tx_pending.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 21
  %39 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_pending.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %41 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end6.i.out.sink.split_crit_edge

if.end6.i.out.sink.split_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %tx_queued.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 22
  %42 = ptrtoint ptr %tx_queued.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_queued.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48.i) #7
  %44 = ptrtoint ptr %tmp.i48.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i48.i, align 4
  %call.i49.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i48.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool13.not.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false.i.out.sink.split_crit_edge

lor.lhs.false.i.out.sink.split_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %tx_done.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 24
  %45 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_done.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i50.i) #7
  %47 = ptrtoint ptr %tmp.i50.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i50.i, align 4
  %call.i51.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i50.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i50.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool16.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false14.i.out.sink.split_crit_edge

lor.lhs.false14.i.out.sink.split_crit_edge:       ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i52.i) #7
  %48 = ptrtoint ptr %tmp.i52.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add.4.i, ptr %tmp.i52.i, align 8
  %call.i53.i = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i52.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool19.not.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %lor.lhs.false17.i.out.sink.split_crit_edge

lor.lhs.false17.i.out.sink.split_crit_edge:       ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

lor.lhs.false20.i:                                ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i54.i) #7
  %49 = ptrtoint ptr %tmp.i54.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add9.4.i, ptr %tmp.i54.i, align 8
  %call.i55.i = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i54.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i54.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool22.not.i = icmp eq i32 %call.i55.i, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 0, i32 -90
  br label %out.sink.split

if.end19:                                         ; preds = %if.end9
  %tx_mpdu_len.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 4
  %50 = ptrtoint ptr %tx_mpdu_len.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tx_mpdu_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.not.i = icmp eq i16 %51, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end19.mt76_testmode_init_defaults.exit_crit_edge

if.end19.mt76_testmode_init_defaults.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_testmode_init_defaults.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %tx_mpdu_len.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1024, ptr %tx_mpdu_len.i, align 8
  %tx_count.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 3
  %53 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %tx_count.i, align 4
  %tx_rate_mode.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 5
  %54 = ptrtoint ptr %tx_rate_mode.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %tx_rate_mode.i, align 2
  %tx_rate_nss.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 7
  %55 = ptrtoint ptr %tx_rate_nss.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %tx_rate_nss.i, align 4
  %addr.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20
  %macaddr.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 13
  %56 = call ptr @memcpy(ptr %addr.i, ptr %macaddr.i, i32 6)
  %arrayidx5.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 1
  %57 = call ptr @memcpy(ptr %arrayidx5.i, ptr %macaddr.i, i32 6)
  %arrayidx10.i = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 2
  %58 = call ptr @memcpy(ptr %arrayidx10.i, ptr %macaddr.i, i32 6)
  br label %mt76_testmode_init_defaults.exit

mt76_testmode_init_defaults.exit:                 ; preds = %if.end.i, %if.end19.mt76_testmode_init_defaults.exit_crit_edge
  %59 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %test, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %61 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tmp.i, align 4
  %call.i231 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool21.not = icmp eq i32 %call.i231, 0
  br i1 %tobool21.not, label %if.end23, label %mt76_testmode_init_defaults.exit.out_crit_edge

mt76_testmode_init_defaults.exit.out_crit_edge:   ; preds = %mt76_testmode_init_defaults.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end23:                                         ; preds = %mt76_testmode_init_defaults.exit
  %test_mtd = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 57
  %62 = ptrtoint ptr %test_mtd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %test_mtd, align 8
  %tobool24.not = icmp eq ptr %63, null
  br i1 %tobool24.not, label %if.end23.if.end33_crit_edge, label %land.lhs.true

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end23
  %call27 = call fastcc i32 @nla_put_string(ptr noundef %msg, ptr noundef nonnull %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true
  %offset = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 57, i32 1
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i232) #7
  %66 = ptrtoint ptr %tmp.i232 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %tmp.i232, align 4
  %call.i233 = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i232) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i232) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool31.not = icmp eq i32 %call.i233, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %tx_count = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 3
  %67 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i234) #7
  %69 = ptrtoint ptr %tmp.i234 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tmp.i234, align 4
  %call.i235 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i234) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i234) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool35.not = icmp eq i32 %call.i235, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false36:                                  ; preds = %if.end33
  %70 = ptrtoint ptr %tx_mpdu_len.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tx_mpdu_len.i, align 8
  %conv = zext i16 %71 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i236) #7
  %72 = ptrtoint ptr %tmp.i236 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv, ptr %tmp.i236, align 4
  %call.i237 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i236) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i236) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool38.not = icmp eq i32 %call.i237, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.out_crit_edge

lor.lhs.false36.out_crit_edge:                    ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %tx_rate_mode = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 5
  %73 = ptrtoint ptr %tx_rate_mode to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tx_rate_mode, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i238) #7
  %75 = ptrtoint ptr %tmp.i238 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %tmp.i238, align 1
  %call.i239 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i238) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i238) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool41.not = icmp eq i32 %call.i239, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %lor.lhs.false39.out_crit_edge

lor.lhs.false39.out_crit_edge:                    ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %tx_rate_nss = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 7
  %76 = ptrtoint ptr %tx_rate_nss to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tx_rate_nss, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i240) #7
  %78 = ptrtoint ptr %tmp.i240 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %tmp.i240, align 1
  %call.i241 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i240) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i240) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool44.not = icmp eq i32 %call.i241, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false42.out_crit_edge

lor.lhs.false42.out_crit_edge:                    ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %tx_rate_idx = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 6
  %79 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tx_rate_idx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i242) #7
  %81 = ptrtoint ptr %tmp.i242 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %tmp.i242, align 1
  %call.i243 = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i242) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i242) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool47.not = icmp eq i32 %call.i243, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false45.out_crit_edge

lor.lhs.false45.out_crit_edge:                    ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %tx_rate_sgi = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 8
  %82 = ptrtoint ptr %tx_rate_sgi to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tx_rate_sgi, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i244) #7
  %84 = ptrtoint ptr %tmp.i244 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %tmp.i244, align 1
  %call.i245 = call i32 @nla_put(ptr noundef %msg, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i244) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i244) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool50.not = icmp eq i32 %call.i245, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %lor.lhs.false48.out_crit_edge

lor.lhs.false48.out_crit_edge:                    ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %tx_rate_ldpc = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 9
  %85 = ptrtoint ptr %tx_rate_ldpc to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tx_rate_ldpc, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i246) #7
  %87 = ptrtoint ptr %tmp.i246 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %tmp.i246, align 1
  %call.i247 = call i32 @nla_put(ptr noundef %msg, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i246) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i246) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool53.not = icmp eq i32 %call.i247, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %lor.lhs.false51.out_crit_edge

lor.lhs.false51.out_crit_edge:                    ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %tx_rate_stbc = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 10
  %88 = ptrtoint ptr %tx_rate_stbc to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tx_rate_stbc, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i248) #7
  %90 = ptrtoint ptr %tmp.i248 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %tmp.i248, align 1
  %call.i249 = call i32 @nla_put(ptr noundef %msg, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i248) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool56.not = icmp eq i32 %call.i249, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %lor.lhs.false54.out_crit_edge

lor.lhs.false54.out_crit_edge:                    ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %param_set.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 1
  %91 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %param_set.i, align 4
  %and.i = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false57.lor.lhs.false63_crit_edge, label %land.lhs.true60

lor.lhs.false57.lor.lhs.false63_crit_edge:        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false63

land.lhs.true60:                                  ; preds = %lor.lhs.false57
  %tx_ltf = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 11
  %93 = ptrtoint ptr %tx_ltf to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %tx_ltf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i250) #7
  %95 = ptrtoint ptr %tmp.i250 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %tmp.i250, align 1
  %call.i251 = call i32 @nla_put(ptr noundef %msg, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i250) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i250) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool62.not = icmp eq i32 %call.i251, 0
  br i1 %tobool62.not, label %land.lhs.true60.lor.lhs.false63_crit_edge, label %land.lhs.true60.out_crit_edge

land.lhs.true60.out_crit_edge:                    ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true60.lor.lhs.false63_crit_edge:        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true60.lor.lhs.false63_crit_edge, %lor.lhs.false57.lor.lhs.false63_crit_edge
  %96 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %param_set.i, align 4
  %and.i253 = and i32 %97, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.i254.not = icmp eq i32 %and.i253, 0
  br i1 %tobool.i254.not, label %lor.lhs.false63.lor.lhs.false69_crit_edge, label %land.lhs.true66

lor.lhs.false63.lor.lhs.false69_crit_edge:        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false69

land.lhs.true66:                                  ; preds = %lor.lhs.false63
  %tx_antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 12
  %98 = ptrtoint ptr %tx_antenna_mask to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tx_antenna_mask, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i255) #7
  %100 = ptrtoint ptr %tmp.i255 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %tmp.i255, align 1
  %call.i256 = call i32 @nla_put(ptr noundef %msg, i32 noundef 14, i32 noundef 1, ptr noundef nonnull %tmp.i255) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool68.not = icmp eq i32 %call.i256, 0
  br i1 %tobool68.not, label %land.lhs.true66.lor.lhs.false69_crit_edge, label %land.lhs.true66.out_crit_edge

land.lhs.true66.out_crit_edge:                    ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true66.lor.lhs.false69_crit_edge:        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %land.lhs.true66.lor.lhs.false69_crit_edge, %lor.lhs.false63.lor.lhs.false69_crit_edge
  %101 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %param_set.i, align 4
  %and.i258 = and i32 %102, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i258)
  %tobool.i259.not = icmp eq i32 %and.i258, 0
  br i1 %tobool.i259.not, label %lor.lhs.false69.lor.lhs.false75_crit_edge, label %land.lhs.true72

lor.lhs.false69.lor.lhs.false75_crit_edge:        ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false75

land.lhs.true72:                                  ; preds = %lor.lhs.false69
  %tx_spe_idx = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 13
  %103 = ptrtoint ptr %tx_spe_idx to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %tx_spe_idx, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i260) #7
  %105 = ptrtoint ptr %tmp.i260 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %tmp.i260, align 1
  %call.i261 = call i32 @nla_put(ptr noundef %msg, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i260) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i260) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool74.not = icmp eq i32 %call.i261, 0
  br i1 %tobool74.not, label %land.lhs.true72.lor.lhs.false75_crit_edge, label %land.lhs.true72.out_crit_edge

land.lhs.true72.out_crit_edge:                    ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true72.lor.lhs.false75_crit_edge:        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %land.lhs.true72.lor.lhs.false75_crit_edge, %lor.lhs.false69.lor.lhs.false75_crit_edge
  %106 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %param_set.i, align 4
  %and.i263 = and i32 %107, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i263)
  %tobool.i264.not = icmp eq i32 %and.i263, 0
  br i1 %tobool.i264.not, label %lor.lhs.false75.lor.lhs.false81_crit_edge, label %land.lhs.true78

lor.lhs.false75.lor.lhs.false81_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false81

land.lhs.true78:                                  ; preds = %lor.lhs.false75
  %tx_duty_cycle = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 14
  %108 = ptrtoint ptr %tx_duty_cycle to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %tx_duty_cycle, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i265) #7
  %110 = ptrtoint ptr %tmp.i265 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %tmp.i265, align 1
  %call.i266 = call i32 @nla_put(ptr noundef %msg, i32 noundef 20, i32 noundef 1, ptr noundef nonnull %tmp.i265) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i265) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool80.not = icmp eq i32 %call.i266, 0
  br i1 %tobool80.not, label %land.lhs.true78.lor.lhs.false81_crit_edge, label %land.lhs.true78.out_crit_edge

land.lhs.true78.out_crit_edge:                    ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true78.lor.lhs.false81_crit_edge:        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %land.lhs.true78.lor.lhs.false81_crit_edge, %lor.lhs.false75.lor.lhs.false81_crit_edge
  %111 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %param_set.i, align 4
  %and.i268 = and i32 %112, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.i269.not = icmp eq i32 %and.i268, 0
  br i1 %tobool.i269.not, label %lor.lhs.false81.lor.lhs.false87_crit_edge, label %land.lhs.true84

lor.lhs.false81.lor.lhs.false87_crit_edge:        ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false87

land.lhs.true84:                                  ; preds = %lor.lhs.false81
  %tx_ipg = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 16
  %113 = ptrtoint ptr %tx_ipg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_ipg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i270) #7
  %115 = ptrtoint ptr %tmp.i270 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %tmp.i270, align 4
  %call.i271 = call i32 @nla_put(ptr noundef %msg, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i270) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool86.not = icmp eq i32 %call.i271, 0
  br i1 %tobool86.not, label %land.lhs.true84.lor.lhs.false87_crit_edge, label %land.lhs.true84.out_crit_edge

land.lhs.true84.out_crit_edge:                    ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true84.lor.lhs.false87_crit_edge:        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %land.lhs.true84.lor.lhs.false87_crit_edge, %lor.lhs.false81.lor.lhs.false87_crit_edge
  %116 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %param_set.i, align 4
  %and.i273 = and i32 %117, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool.i274.not = icmp eq i32 %and.i273, 0
  br i1 %tobool.i274.not, label %lor.lhs.false87.lor.lhs.false93_crit_edge, label %land.lhs.true90

lor.lhs.false87.lor.lhs.false93_crit_edge:        ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false93

land.lhs.true90:                                  ; preds = %lor.lhs.false87
  %tx_time = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 15
  %118 = ptrtoint ptr %tx_time to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_time, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i275) #7
  %120 = ptrtoint ptr %tmp.i275 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %tmp.i275, align 4
  %call.i276 = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i275) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool92.not = icmp eq i32 %call.i276, 0
  br i1 %tobool92.not, label %land.lhs.true90.lor.lhs.false93_crit_edge, label %land.lhs.true90.out_crit_edge

land.lhs.true90.out_crit_edge:                    ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true90.lor.lhs.false93_crit_edge:        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true90.lor.lhs.false93_crit_edge, %lor.lhs.false87.lor.lhs.false93_crit_edge
  %121 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %param_set.i, align 4
  %and.i278 = and i32 %122, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.i279.not = icmp eq i32 %and.i278, 0
  br i1 %tobool.i279.not, label %lor.lhs.false93.lor.lhs.false99_crit_edge, label %land.lhs.true96

lor.lhs.false93.lor.lhs.false99_crit_edge:        ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false99

land.lhs.true96:                                  ; preds = %lor.lhs.false93
  %tx_power_control = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 19
  %123 = ptrtoint ptr %tx_power_control to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tx_power_control, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i280) #7
  %125 = ptrtoint ptr %tmp.i280 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %tmp.i280, align 1
  %call.i281 = call i32 @nla_put(ptr noundef %msg, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %tmp.i280) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i280) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool98.not = icmp eq i32 %call.i281, 0
  br i1 %tobool98.not, label %land.lhs.true96.lor.lhs.false99_crit_edge, label %land.lhs.true96.out_crit_edge

land.lhs.true96.out_crit_edge:                    ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true96.lor.lhs.false99_crit_edge:        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %land.lhs.true96.lor.lhs.false99_crit_edge, %lor.lhs.false93.lor.lhs.false99_crit_edge
  %126 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %param_set.i, align 4
  %and.i283 = and i32 %127, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.i284.not = icmp eq i32 %and.i283, 0
  br i1 %tobool.i284.not, label %lor.lhs.false99.if.end107_crit_edge, label %land.lhs.true102

lor.lhs.false99.if.end107_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true102:                                 ; preds = %lor.lhs.false99
  %freq_offset = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 17
  %128 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %freq_offset, align 4
  %conv103 = trunc i32 %129 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i285) #7
  %130 = ptrtoint ptr %tmp.i285 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv103, ptr %tmp.i285, align 1
  %call.i286 = call i32 @nla_put(ptr noundef %msg, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %tmp.i285) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i285) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool105.not = icmp eq i32 %call.i286, 0
  br i1 %tobool105.not, label %land.lhs.true102.if.end107_crit_edge, label %land.lhs.true102.out_crit_edge

land.lhs.true102.out_crit_edge:                   ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true102.if.end107_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.end107:                                        ; preds = %land.lhs.true102.if.end107_crit_edge, %lor.lhs.false99.if.end107_crit_edge
  %131 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %param_set.i, align 4
  %and.i288 = and i32 %132, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i288)
  %tobool.i289.not = icmp eq i32 %and.i288, 0
  br i1 %tobool.i289.not, label %if.end107.if.end123_crit_edge, label %if.then109

if.end107.if.end123_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then109:                                       ; preds = %if.end107
  %tail.i.i.i290 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %133 = ptrtoint ptr %tail.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tail.i.i.i290, align 8
  %call1.i.i291 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32784, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i291)
  %cmp.i.i292 = icmp slt i32 %call1.i.i291, 0
  %tobool111.not318 = icmp eq ptr %134, null
  %tobool111.not = select i1 %cmp.i.i292, i1 true, i1 %tobool111.not318
  br i1 %tobool111.not, label %if.then109.out_crit_edge, label %for.body.preheader

if.then109.out_crit_edge:                         ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.preheader:                               ; preds = %if.then109
  %arrayidx116 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 0
  %135 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx116, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i294) #7
  %137 = ptrtoint ptr %tmp.i294 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %tmp.i294, align 1
  %call.i295 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i294) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i294) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool118.not = icmp eq i32 %call.i295, 0
  br i1 %tobool118.not, label %for.cond, label %for.body.preheader.out_crit_edge

for.body.preheader.out_crit_edge:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx116.1 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 1
  %138 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx116.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i294) #7
  %140 = ptrtoint ptr %tmp.i294 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %tmp.i294, align 1
  %call.i295.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i294) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i294) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295.1)
  %tobool118.not.1 = icmp eq i32 %call.i295.1, 0
  br i1 %tobool118.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %arrayidx116.2 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 2
  %141 = ptrtoint ptr %arrayidx116.2 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx116.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i294) #7
  %143 = ptrtoint ptr %tmp.i294 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %tmp.i294, align 1
  %call.i295.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i294) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i294) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295.2)
  %tobool118.not.2 = icmp eq i32 %call.i295.2, 0
  br i1 %tobool118.not.2, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx116.3 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 18, i32 3
  %144 = ptrtoint ptr %arrayidx116.3 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx116.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i294) #7
  %146 = ptrtoint ptr %tmp.i294 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %tmp.i294, align 1
  %call.i295.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i294) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i294) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295.3)
  %tobool118.not.3 = icmp eq i32 %call.i295.3, 0
  br i1 %tobool118.not.3, label %for.cond.3, label %for.cond.2.out_crit_edge

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %tail.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail.i.i.i290, align 8
  %sub.ptr.lhs.cast.i297 = ptrtoint ptr %148 to i32
  %sub.ptr.rhs.cast.i298 = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i299 = sub i32 %sub.ptr.lhs.cast.i297, %sub.ptr.rhs.cast.i298
  %conv.i300 = trunc i32 %sub.ptr.sub.i299 to i16
  %149 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv.i300, ptr %134, align 2
  br label %if.end123

if.end123:                                        ; preds = %for.cond.3, %if.end107.if.end123_crit_edge
  %150 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %param_set.i, align 4
  %and.i302 = and i32 %151, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i302)
  %tobool.i303.not = icmp eq i32 %and.i302, 0
  br i1 %tobool.i303.not, label %if.end123.out_crit_edge, label %if.then125

if.end123.out_crit_edge:                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then125:                                       ; preds = %if.end123
  %tail.i.i.i304 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %152 = ptrtoint ptr %tail.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tail.i.i.i304, align 8
  %call1.i.i305 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32792, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i305)
  %cmp.i.i306 = icmp slt i32 %call1.i.i305, 0
  %tobool127.not319 = icmp eq ptr %153, null
  %tobool127.not = select i1 %cmp.i.i306, i1 true, i1 %tobool127.not319
  br i1 %tobool127.not, label %if.then125.out_crit_edge, label %for.body133.preheader

if.then125.out_crit_edge:                         ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body133.preheader:                            ; preds = %if.then125
  %arrayidx134 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 0
  %call136 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 6, ptr noundef %arrayidx134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %for.cond130, label %for.body133.preheader.out_crit_edge

for.body133.preheader.out_crit_edge:              ; preds = %for.body133.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond130:                                      ; preds = %for.body133.preheader
  %arrayidx134.1 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 1
  %call136.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 6, ptr noundef %arrayidx134.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.1)
  %tobool137.not.1 = icmp eq i32 %call136.1, 0
  br i1 %tobool137.not.1, label %for.cond130.1, label %for.cond130.out_crit_edge

for.cond130.out_crit_edge:                        ; preds = %for.cond130
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond130.1:                                    ; preds = %for.cond130
  %arrayidx134.2 = getelementptr %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 20, i32 2
  %call136.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 6, ptr noundef %arrayidx134.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.2)
  %tobool137.not.2 = icmp eq i32 %call136.2, 0
  br i1 %tobool137.not.2, label %for.cond130.1.out.sink.split_crit_edge, label %for.cond130.1.out_crit_edge

for.cond130.1.out_crit_edge:                      ; preds = %for.cond130.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond130.1.out.sink.split_crit_edge:           ; preds = %for.cond130.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.cond130.1.out.sink.split_crit_edge, %lor.lhs.false20.i, %lor.lhs.false17.i.out.sink.split_crit_edge, %lor.lhs.false14.i.out.sink.split_crit_edge, %lor.lhs.false.i.out.sink.split_crit_edge, %if.end6.i.out.sink.split_crit_edge, %if.then.i.out.sink.split_crit_edge
  %tail.i.i.i304.sink = phi ptr [ %tail.i.i.i, %if.then.i.out.sink.split_crit_edge ], [ %tail.i.i.i, %if.end6.i.out.sink.split_crit_edge ], [ %tail.i.i.i, %lor.lhs.false.i.out.sink.split_crit_edge ], [ %tail.i.i.i, %lor.lhs.false14.i.out.sink.split_crit_edge ], [ %tail.i.i.i, %lor.lhs.false17.i.out.sink.split_crit_edge ], [ %tail.i.i.i, %lor.lhs.false20.i ], [ %tail.i.i.i304, %for.cond130.1.out.sink.split_crit_edge ]
  %.sink320 = phi ptr [ %12, %if.then.i.out.sink.split_crit_edge ], [ %12, %if.end6.i.out.sink.split_crit_edge ], [ %12, %lor.lhs.false.i.out.sink.split_crit_edge ], [ %12, %lor.lhs.false14.i.out.sink.split_crit_edge ], [ %12, %lor.lhs.false17.i.out.sink.split_crit_edge ], [ %12, %lor.lhs.false20.i ], [ %153, %for.cond130.1.out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call.i230, %if.then.i.out.sink.split_crit_edge ], [ -90, %if.end6.i.out.sink.split_crit_edge ], [ -90, %lor.lhs.false.i.out.sink.split_crit_edge ], [ -90, %lor.lhs.false14.i.out.sink.split_crit_edge ], [ -90, %lor.lhs.false17.i.out.sink.split_crit_edge ], [ %spec.select.i, %lor.lhs.false20.i ], [ 0, %for.cond130.1.out.sink.split_crit_edge ]
  %154 = ptrtoint ptr %tail.i.i.i304.sink to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tail.i.i.i304.sink, align 8
  %sub.ptr.lhs.cast.i309 = ptrtoint ptr %155 to i32
  %sub.ptr.rhs.cast.i310 = ptrtoint ptr %.sink320 to i32
  %sub.ptr.sub.i311 = sub i32 %sub.ptr.lhs.cast.i309, %sub.ptr.rhs.cast.i310
  %conv.i312 = trunc i32 %sub.ptr.sub.i311 to i16
  %156 = ptrtoint ptr %.sink320 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i312, ptr %.sink320, align 2
  br label %out

out:                                              ; preds = %out.sink.split, %for.cond130.1.out_crit_edge, %for.cond130.out_crit_edge, %for.body133.preheader.out_crit_edge, %if.then125.out_crit_edge, %if.end123.out_crit_edge, %for.cond.2.out_crit_edge, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %for.body.preheader.out_crit_edge, %if.then109.out_crit_edge, %land.lhs.true102.out_crit_edge, %land.lhs.true96.out_crit_edge, %land.lhs.true90.out_crit_edge, %land.lhs.true84.out_crit_edge, %land.lhs.true78.out_crit_edge, %land.lhs.true72.out_crit_edge, %land.lhs.true66.out_crit_edge, %land.lhs.true60.out_crit_edge, %lor.lhs.false54.out_crit_edge, %lor.lhs.false51.out_crit_edge, %lor.lhs.false48.out_crit_edge, %lor.lhs.false45.out_crit_edge, %lor.lhs.false42.out_crit_edge, %lor.lhs.false39.out_crit_edge, %lor.lhs.false36.out_crit_edge, %if.end33.out_crit_edge, %lor.lhs.false.out_crit_edge, %land.lhs.true.out_crit_edge, %mt76_testmode_init_defaults.exit.out_crit_edge, %if.then12.out_crit_edge
  %err.0 = phi i32 [ -22, %if.then12.out_crit_edge ], [ -90, %mt76_testmode_init_defaults.exit.out_crit_edge ], [ -90, %land.lhs.true.out_crit_edge ], [ -90, %lor.lhs.false.out_crit_edge ], [ -90, %if.end33.out_crit_edge ], [ -90, %lor.lhs.false36.out_crit_edge ], [ -90, %lor.lhs.false39.out_crit_edge ], [ -90, %lor.lhs.false42.out_crit_edge ], [ -90, %lor.lhs.false45.out_crit_edge ], [ -90, %lor.lhs.false48.out_crit_edge ], [ -90, %lor.lhs.false51.out_crit_edge ], [ -90, %lor.lhs.false54.out_crit_edge ], [ -90, %land.lhs.true60.out_crit_edge ], [ -90, %land.lhs.true66.out_crit_edge ], [ -90, %land.lhs.true72.out_crit_edge ], [ -90, %land.lhs.true78.out_crit_edge ], [ -90, %land.lhs.true84.out_crit_edge ], [ -90, %land.lhs.true90.out_crit_edge ], [ -90, %land.lhs.true96.out_crit_edge ], [ -90, %land.lhs.true102.out_crit_edge ], [ -90, %if.then125.out_crit_edge ], [ -90, %if.then109.out_crit_edge ], [ 0, %if.end123.out_crit_edge ], [ -90, %for.cond130.1.out_crit_edge ], [ -90, %for.cond130.out_crit_edge ], [ -90, %for.body133.preheader.out_crit_edge ], [ -90, %for.cond.2.out_crit_edge ], [ -90, %for.cond.1.out_crit_edge ], [ -90, %for.cond.out_crit_edge ], [ -90, %for.body.preheader.out_crit_edge ], [ %err.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %str) #10
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add, ptr noundef %str) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76_testmode_tx_stop(ptr nocapture noundef %phy) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mt76_worker_disable.exit_crit_edge, label %if.end.i

entry.mt76_worker_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %3) #7
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %entry.mt76_worker_disable.exit_crit_edge
  %tx_pending = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 21
  %5 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_pending, align 8
  %6 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i54 = icmp eq ptr %7, null
  br i1 %tobool.not.i54, label %mt76_worker_disable.exit.mt76_worker_enable.exit_crit_edge, label %if.end.i55

mt76_worker_disable.exit.mt76_worker_enable.exit_crit_edge: ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i55:                                       ; preds = %mt76_worker_disable.exit
  tail call void @kthread_unpark(ptr noundef nonnull %7) #7
  %8 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i55.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i55.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i55
  %state.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %14) #7
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i55.mt76_worker_enable.exit_crit_edge, %mt76_worker_disable.exit.mt76_worker_enable.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 292) #7
  %tx_done = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 24
  %15 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_done, align 4
  %tx_queued = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 22
  %17 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_queued, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %mt76_worker_enable.exit.if.end35_crit_edge, label %if.then10

mt76_worker_enable.exit.if.end35_crit_edge:       ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then10:                                        ; preds = %mt76_worker_enable.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %tx_wait = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 31
  %call59 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %20 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_done, align 4
  %22 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_queued, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp1560 = icmp eq i32 %21, %23
  br i1 %cmp1560, label %if.then10.for.end_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.161 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ 1000, %if.then10.cleanup_crit_edge ]
  %call32 = call i32 @schedule_timeout(i32 noundef %__ret11.161) #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %24 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_done, align 4
  %26 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_queued, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp15 = icmp eq i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool19.not = icmp eq i32 %call32, 0
  %28 = select i1 %cmp15, i1 %tobool19.not, i1 false
  %__ret11.1 = select i1 %28, i32 1, i32 %call32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool25.not = icmp eq i32 %__ret11.1, 0
  %29 = select i1 %cmp15, i1 true, i1 %tobool25.not
  br i1 %29, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end35

if.end35:                                         ; preds = %for.end, %mt76_worker_enable.exit.if.end35_crit_edge
  %tx_skb.i = getelementptr inbounds %struct.mt76_phy, ptr %phy, i32 0, i32 17, i32 2
  %30 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_skb.i, align 8
  call void @consume_skb(ptr noundef %31) #7
  %32 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tx_skb.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rate_set_vht(ptr nocapture noundef writeonly %rate, i8 noundef zeroext %mcs, i8 noundef zeroext %nss) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %mcs)
  %tobool.not = icmp ult i8 %mcs, 16
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 996, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv21 = zext i8 %nss to i32
  %sub = add nsw i32 %conv21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %tobool23.not = icmp ult i32 %sub, 8
  br i1 %tobool23.not, label %if.end.if.end45_crit_edge, label %do.end39, !prof !27

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %sub.tr = trunc i32 %sub to i8
  %0 = shl i8 %sub.tr, 4
  %conv56 = or i8 %0, %mcs
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv56, ptr %rate, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @mt76_tm_policy, !1, !"mt76_tm_policy", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 5, i32 25}
!2 = !{ptr @__ksymtab_mt76_tm_policy, !3, !"__ksymtab_mt76_tm_policy", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 26, i32 1}
!4 = !{ptr @__ksymtab_mt76_testmode_alloc_skb, !5, !"__ksymtab_mt76_testmode_alloc_skb", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 173, i32 1}
!6 = !{ptr @__ksymtab_mt76_testmode_set_state, !7, !"__ksymtab_mt76_testmode_set_state", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 387, i32 1}
!8 = !{ptr @__ksymtab_mt76_testmode_cmd, !9, !"__ksymtab_mt76_testmode_cmd", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 533, i32 1}
!10 = !{ptr @__ksymtab_mt76_testmode_dump, !11, !"__ksymtab_mt76_testmode_dump", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 675, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/testmode.c", i32 291, i32 2}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/net/mac80211.h", i32 996, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148261566, i64 2148261598, i64 2148261627, i64 2148261661, i64 2148261692, i64 2148261715}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2154611841, i64 2154612329, i64 2154611878, i64 2154611934, i64 2154611968, i64 2154611992, i64 2154612033, i64 2154612054, i64 2154612082, i64 2154612116}
