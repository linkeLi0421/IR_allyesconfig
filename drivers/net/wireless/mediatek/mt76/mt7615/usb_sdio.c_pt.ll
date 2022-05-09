; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7663_usb_sdio_reg_map\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7663_usb_sdio_reg_map\09\09\09\09"
module asm "\09.long\09__crc_mt7663_usb_sdio_reg_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7663_usb_sdio_reg_map:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7663_usb_sdio_reg_map\22\09\09\09\09\09"
module asm "__kstrtabns_mt7663_usb_sdio_reg_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7663_usb_sdio_tx_status_data\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7663_usb_sdio_tx_status_data\09\09\09\09"
module asm "\09.long\09__crc_mt7663_usb_sdio_tx_status_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7663_usb_sdio_tx_status_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7663_usb_sdio_tx_status_data\22\09\09\09\09\09"
module asm "__kstrtabns_mt7663_usb_sdio_tx_status_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7663_usb_sdio_tx_complete_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7663_usb_sdio_tx_complete_skb\09\09\09\09"
module asm "\09.long\09__crc_mt7663_usb_sdio_tx_complete_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7663_usb_sdio_tx_complete_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7663_usb_sdio_tx_complete_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt7663_usb_sdio_tx_complete_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7663_usb_sdio_tx_prepare_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7663_usb_sdio_tx_prepare_skb\09\09\09\09"
module asm "\09.long\09__crc_mt7663_usb_sdio_tx_prepare_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7663_usb_sdio_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7663_usb_sdio_tx_prepare_skb\22\09\09\09\09\09"
module asm "__kstrtabns_mt7663_usb_sdio_tx_prepare_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt7663_usb_sdio_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7663_usb_sdio_register_device\09\09\09\09"
module asm "\09.long\09__crc_mt7663_usb_sdio_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7663_usb_sdio_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7663_usb_sdio_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_mt7663_usb_sdio_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt7615_dev = type { %union.anon.145, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.146 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.146 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
%struct.mt76_tx_info = type { [32 x %struct.mt76_queue_buf], ptr, i32, i32 }
%struct.mt76_queue_buf = type { i32, i16, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.mt7615_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [8 x i32], [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7615_rate_set], i32, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7615_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt7615_wtbl_rate_desc = type { %struct.list_head, %struct.mt7615_rate_desc, ptr }
%struct.mt7615_rate_desc = type { i8, i16, [4 x i16], i8, i8 }
%struct.mt76_vif = type { i8, i8, i8, i8, i8 }

@mt7663_usb_sdio_reg_map = dso_local constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 -2147352576, i32 -2147483648, i32 1342218240, i32 0, i32 -2112933888, i32 1342177280, i32 1073741824, i32 -2113536000, i32 -2113503232, i32 -2112946176, i32 -2112937984, i32 -2112929792, i32 -2112925696, i32 -2112917504, i32 -2112913408, i32 -2112909312, i32 -2112907264, i32 -2112901120, i32 -2112892928, i32 -2113011712, i32 0, i32 -2130575360, i32 2013335552, i32 -2113486848], [32 x i8] zeroinitializer }, align 32
@__kstrtab_mt7663_usb_sdio_reg_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7663_usb_sdio_reg_map = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7663_usb_sdio_reg_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7663_usb_sdio_reg_map to i32), ptr @__kstrtab_mt7663_usb_sdio_reg_map, ptr @__kstrtabns_mt7663_usb_sdio_reg_map }, section "___ksymtab_gpl+mt7663_usb_sdio_reg_map", align 4
@__kstrtab_mt7663_usb_sdio_tx_status_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7663_usb_sdio_tx_status_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7663_usb_sdio_tx_status_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7663_usb_sdio_tx_status_data to i32), ptr @__kstrtab_mt7663_usb_sdio_tx_status_data, ptr @__kstrtabns_mt7663_usb_sdio_tx_status_data }, section "___ksymtab_gpl+mt7663_usb_sdio_tx_status_data", align 4
@__kstrtab_mt7663_usb_sdio_tx_complete_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7663_usb_sdio_tx_complete_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7663_usb_sdio_tx_complete_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7663_usb_sdio_tx_complete_skb to i32), ptr @__kstrtab_mt7663_usb_sdio_tx_complete_skb, ptr @__kstrtabns_mt7663_usb_sdio_tx_complete_skb }, section "___ksymtab_gpl+mt7663_usb_sdio_tx_complete_skb", align 4
@__kstrtab_mt7663_usb_sdio_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7663_usb_sdio_tx_prepare_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7663_usb_sdio_tx_prepare_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7663_usb_sdio_tx_prepare_skb to i32), ptr @__kstrtab_mt7663_usb_sdio_tx_prepare_skb, ptr @__kstrtabns_mt7663_usb_sdio_tx_prepare_skb }, section "___ksymtab_gpl+mt7663_usb_sdio_tx_prepare_skb", align 4
@mt7663_usb_sdio_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&dev->rate_work)\00", [61 x i8] zeroinitializer }, align 32
@mt76_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@__kstrtab_mt7663_usb_sdio_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7663_usb_sdio_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7663_usb_sdio_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7663_usb_sdio_register_device to i32), ptr @__kstrtab_mt7663_usb_sdio_register_device, ptr @__kstrtabns_mt7663_usb_sdio_register_device }, section "___ksymtab_gpl+mt7663_usb_sdio_register_device", align 4
@__UNIQUE_ID_author494 = internal constant [68 x i8] c"mt7663_usb_sdio_common.author=Lorenzo Bianconi <lorenzo@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author495 = internal constant [65 x i8] c"mt7663_usb_sdio_common.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file496 = internal constant [93 x i8] c"mt7663_usb_sdio_common.file=drivers/net/wireless/mediatek/mt76/mt7615/mt7663-usb-sdio-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license497 = internal constant [44 x i8] c"mt7663_usb_sdio_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"mt7663_usb_sdio_reg_map\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 11 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 311, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 64, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author494, ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_file496, ptr @__UNIQUE_ID_license497, ptr @__ksymtab_mt7663_usb_sdio_reg_map, ptr @__ksymtab_mt7663_usb_sdio_register_device, ptr @__ksymtab_mt7663_usb_sdio_tx_complete_skb, ptr @__ksymtab_mt7663_usb_sdio_tx_prepare_skb, ptr @__ksymtab_mt7663_usb_sdio_tx_status_data, ptr @mt7663_usb_sdio_reg_map, ptr @mt7663_usb_sdio_register_device.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663_usb_sdio_reg_map to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663_usb_sdio_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt7663_usb_sdio_tx_status_data(ptr noundef %mdev, ptr nocapture readnone %update) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 27
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = tail call i32 @mt76_connac_pm_wake(ptr noundef %mdev, ptr noundef %pm) #4
  tail call void @mt7615_mac_sta_poll(ptr noundef %mdev) #4
  tail call void @mt76_connac_power_save_sched(ptr noundef %mdev, ptr noundef %pm) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  ret i1 false
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_sta_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7663_usb_sdio_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef readonly %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %spec.select = select i1 %cmp, i32 68, i32 64
  %4 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %e, align 4
  %call = tail call ptr @skb_pull(ptr noundef %5, i32 noundef %spec.select) #4
  %wcid = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %6 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wcid, align 4
  %8 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %7, ptr noundef %9, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7663_usb_sdio_tx_prepare_skb(ptr noundef %mdev, ptr nocapture readnone %txwi_ptr, i32 %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef readonly %tx_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_key, align 4
  %tobool.not = icmp eq ptr %wcid, null
  %global_wcid = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 36
  %wcid.addr.0 = select i1 %tobool.not, ptr %global_wcid, ptr %wcid
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i, align 8
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %entry.if.end13_crit_edge, label %land.lhs.true8

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true8:                                   ; preds = %entry
  %rate_probe = getelementptr inbounds %struct.mt7615_sta, ptr %wcid, i32 0, i32 9
  %7 = ptrtoint ptr %rate_probe to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rate_probe, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end13_crit_edge

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #4
  %phy = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3
  %rates11 = getelementptr inbounds %struct.mt7615_sta, ptr %wcid, i32 0, i32 4
  tail call void @mt7615_mac_set_rates(ptr noundef %phy, ptr noundef nonnull %wcid, ptr noundef %2, ptr noundef %rates11) #4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true8.if.end13_crit_edge, %entry.if.end13_crit_edge
  %call14 = tail call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %wcid.addr.0, ptr noundef %1) #4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 -64
  %11 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  %call.i = tail call i32 @mt7615_mac_write_txwi(ptr noundef %mdev, ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef %wcid.addr.0, ptr noundef %sta, i32 noundef %call14, ptr noundef %4, i1 noundef zeroext false) #4
  %call1.i = tail call ptr @skb_push(ptr noundef %1, i32 noundef 64) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len16, align 4
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 4) #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  %19 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %call17, align 1
  %20 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len16, align 4
  %sub = add i32 %21, -1
  %or = or i32 %sub, 3
  %add19 = sub i32 5, %21
  %sub21 = add i32 %add19, %or
  br label %if.end28

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %sub23 = add i32 %17, -1
  %or24 = or i32 %sub23, 3
  %add25 = sub i32 1, %17
  %sub27 = add i32 %add25, %or24
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then15
  %pad.0 = phi i32 [ %sub21, %if.then15 ], [ %sub27, %if.else ]
  %call29 = tail call i32 @mt76_skb_adjust_pad(ptr noundef %1, i32 noundef %pad.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %pktid32 = getelementptr inbounds %struct.mt76_wcid, ptr %wcid.addr.0, i32 0, i32 16
  %call33 = tail call ptr @idr_remove(ptr noundef %pktid32, i32 noundef %call14) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  ret i32 %call29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_set_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_skb_adjust_pad(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7663_usb_sdio_register_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %rate_work = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 22
  tail call void @__init_work(ptr noundef %rate_work, i32 noundef 0) #4
  %2 = ptrtoint ptr %rate_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %rate_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 22, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt7663_usb_sdio_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry5 = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 22, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 22, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 22, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7663_usb_sdio_rate_work, ptr %func, align 4
  %wrd_head = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %wrd_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %wrd_head, ptr %wrd_head, align 4
  %prev.i55 = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wrd_head, ptr %prev.i55, align 4
  tail call void @mt7615_init_device(ptr noundef %dev) #4
  %reg_map.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %9, i32 22
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @mt7615_eeprom_init(ptr noundef %dev, i32 noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %type.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.i = icmp eq i32 %15, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw.i.i, align 4
  %18 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %21, 28
  %call.i.i = tail call i32 %17(ptr noundef %dev, i32 noundef %add.i.i, i32 noundef 268374015, i32 noundef 524289) #4
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr.i.i, align 4
  %26 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map.i, align 8
  %arrayidx31.i.i = getelementptr i32, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx31.i.i, align 4
  %add32.i.i = add i32 %29, 16
  tail call void %25(ptr noundef %dev, i32 noundef %add32.i.i, i32 noundef -2097146) #4
  %30 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i, align 4
  %rmw34.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rmw34.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw34.i.i, align 4
  %34 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_map.i, align 8
  %arrayidx36.i.i = getelementptr i32, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx36.i.i, align 4
  %add37.i.i = add i32 %37, 12
  %call38.i.i = tail call i32 %33(ptr noundef %dev, i32 noundef %add37.i.i, i32 noundef 65536, i32 noundef 0) #4
  %38 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i, align 4
  %wr40.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wr40.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr40.i.i, align 4
  %42 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_map.i, align 8
  %arrayidx42.i.i = getelementptr i32, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx42.i.i, align 4
  %add44.i.i = add i32 %45, 32
  tail call void %41(ptr noundef %dev, i32 noundef %add44.i.i, i32 noundef 33488899) #4
  %46 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i, align 4
  %wr40.1.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wr40.1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr40.1.i.i, align 4
  %50 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_map.i, align 8
  %arrayidx42.1.i.i = getelementptr i32, ptr %51, i32 2
  %52 = ptrtoint ptr %arrayidx42.1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx42.1.i.i, align 4
  %add44.1.i.i = add i32 %53, 36
  tail call void %49(ptr noundef %dev, i32 noundef %add44.1.i.i, i32 noundef 33488899) #4
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 4
  %wr40.2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wr40.2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr40.2.i.i, align 4
  %58 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_map.i, align 8
  %arrayidx42.2.i.i = getelementptr i32, ptr %59, i32 2
  %60 = ptrtoint ptr %arrayidx42.2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx42.2.i.i, align 4
  %add44.2.i.i = add i32 %61, 40
  tail call void %57(ptr noundef %dev, i32 noundef %add44.2.i.i, i32 noundef 33488899) #4
  %62 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i, align 4
  %wr40.3.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wr40.3.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wr40.3.i.i, align 4
  %66 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_map.i, align 8
  %arrayidx42.3.i.i = getelementptr i32, ptr %67, i32 2
  %68 = ptrtoint ptr %arrayidx42.3.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx42.3.i.i, align 4
  %add44.3.i.i = add i32 %69, 44
  tail call void %65(ptr noundef %dev, i32 noundef %add44.3.i.i, i32 noundef 33488899) #4
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 4
  %wr40.4.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %wr40.4.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr40.4.i.i, align 4
  %74 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_map.i, align 8
  %arrayidx42.4.i.i = getelementptr i32, ptr %75, i32 2
  %76 = ptrtoint ptr %arrayidx42.4.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx42.4.i.i, align 4
  %add44.4.i.i = add i32 %77, 48
  tail call void %73(ptr noundef %dev, i32 noundef %add44.4.i.i, i32 noundef 33488899) #4
  %78 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i, align 4
  %wr79.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wr79.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr79.i.i, align 4
  %82 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_map.i, align 8
  %arrayidx81.i.i = getelementptr i32, ptr %83, i32 2
  %84 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx81.i.i, align 4
  %add82.i.i = add i32 %85, 208
  tail call void %81(ptr noundef %dev, i32 noundef %add82.i.i, i32 noundef 1108361744) #4
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 4
  %wr84.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %wr84.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wr84.i.i, align 4
  %90 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_map.i, align 8
  %arrayidx86.i.i = getelementptr i32, ptr %91, i32 2
  %92 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx86.i.i, align 4
  %add87.i.i = add i32 %93, 212
  tail call void %89(ptr noundef %dev, i32 noundef %add87.i.i, i32 noundef 1108361744) #4
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 4
  %wr89.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %wr89.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wr89.i.i, align 4
  %98 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_map.i, align 8
  %arrayidx91.i.i = getelementptr i32, ptr %99, i32 2
  %100 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx91.i.i, align 4
  %add92.i.i = add i32 %101, 216
  tail call void %97(ptr noundef %dev, i32 noundef %add92.i.i, i32 noundef 17476) #4
  %102 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i, align 4
  %wr94.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wr94.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr94.i.i, align 4
  %106 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_map.i, align 8
  %arrayidx96.i.i = getelementptr i32, ptr %107, i32 2
  %108 = ptrtoint ptr %arrayidx96.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx96.i.i, align 4
  %add97.i.i = add i32 %109, 176
  tail call void %105(ptr noundef %dev, i32 noundef %add97.i.i, i32 noundef 1694573391) #4
  %110 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i, align 4
  %wr99.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %wr99.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wr99.i.i, align 4
  %114 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_map.i, align 8
  %arrayidx101.i.i = getelementptr i32, ptr %115, i32 2
  %116 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx101.i.i, align 4
  %add102.i.i = add i32 %117, 180
  tail call void %113(ptr noundef %dev, i32 noundef %add102.i.i, i32 noundef -305419897) #4
  %118 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus.i, align 4
  %wr104.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %wr104.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr104.i.i, align 4
  %122 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_map.i, align 8
  %arrayidx106.i.i = getelementptr i32, ptr %123, i32 2
  %124 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx106.i.i, align 4
  %add107.i.i = add i32 %125, 8
  tail call void %121(ptr noundef %dev, i32 noundef %add107.i.i, i32 noundef 1879343132) #4
  %126 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus.i, align 4
  %wr109.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wr109.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wr109.i.i, align 4
  tail call void %129(ptr noundef %dev, i32 noundef 2080374796, i32 noundef 20480001) #4
  %130 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bus.i, align 4
  %rmw144.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %rmw144.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmw144.i.i, align 4
  %call145.i.i = tail call i32 %133(ptr noundef %dev, i32 noundef 2080374808, i32 noundef 524288, i32 noundef 0) #4
  %134 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus.i, align 4
  %rmw147.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %rmw147.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmw147.i.i, align 4
  %138 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_map.i, align 8
  %arrayidx149.i.i = getelementptr i32, ptr %139, i32 5
  %140 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx149.i.i, align 4
  %add150.i.i = add i32 %141, 256
  %call151.i.i = tail call i32 %137(ptr noundef %dev, i32 noundef %add150.i.i, i32 noundef 0, i32 noundef 16) #4
  %142 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus.i, align 4
  %rmw153.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %rmw153.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmw153.i.i, align 4
  %call154.i.i = tail call i32 %145(ptr noundef %dev, i32 noundef 2080374808, i32 noundef 0, i32 noundef 16056320) #4
  %146 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bus.i, align 4
  %rmw156.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %rmw156.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmw156.i.i, align 4
  %call190.i.i = tail call i32 %149(ptr noundef %dev, i32 noundef 2080374808, i32 noundef 65535, i32 noundef 8292) #4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  %wcid_mask.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 33
  %rev.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %150 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %151, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1986199552
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %if.end6.i.if.else.i.i_crit_edge

if.end6.i.if.else.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end6.i
  %fw_ver.i.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 21
  %152 = ptrtoint ptr %fw_ver.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %fw_ver.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %153)
  %cmp.i3.i.i = icmp ugt i8 %153, 2
  br i1 %cmp.i3.i.i, label %land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7615_wtbl_size.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end6.i.if.else.i.i_crit_edge
  br label %mt7615_wtbl_size.exit.i

mt7615_wtbl_size.exit.i:                          ; preds = %if.else.i.i, %land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 110, %if.else.i.i ], [ 14, %land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge ]
  %call10.i = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask.i, i32 noundef %retval.0.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end, label %mt7615_wtbl_size.exit.i.cleanup_crit_edge

mt7615_wtbl_size.exit.i.cleanup_crit_edge:        ; preds = %mt7615_wtbl_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %mt7615_wtbl_size.exit.i
  %global_wcid.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36
  %idx15.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 6
  %154 = ptrtoint ptr %idx15.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %idx15.i, align 2
  %hw_key_idx.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 7
  %155 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -1, ptr %hw_key_idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !33
  %wcid42.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 37
  %156 = ptrtoint ptr %wcid42.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %global_wcid.i, ptr %wcid42.i, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %157 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %extra_tx_headroom, align 4
  %add = add i32 %158, 64
  store i32 %add, ptr %extra_tx_headroom, align 4
  %159 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus.i, align 4
  %type = getelementptr inbounds %struct.mt76_bus_ops, ptr %160, i32 0, i32 7
  %161 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp = icmp eq i32 %162, 1
  br i1 %cmp, label %if.then7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add9 = add i32 %158, 68
  %163 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add9, ptr %extra_tx_headroom, align 4
  %sg_en = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 8
  %164 = ptrtoint ptr %sg_en to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %sg_en, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool10.not = icmp eq i8 %165, 0
  %max_tx_fragments12 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 19
  %. = select i1 %tobool10.not, i8 1, i8 4
  %166 = ptrtoint ptr %max_tx_fragments12 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %., ptr %max_tx_fragments12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76_rates, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %sg_en19 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 8
  %167 = ptrtoint ptr %sg_en19 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %sg_en19, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool20.not = icmp eq i8 %168, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11, i32 0, i32 6, i32 1
  %169 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cap, align 4
  %and = and i32 %170, -3
  store i32 %and, ptr %cap, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %mcu_work = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 10
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %mcu_work) #4
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  tail call void @mt7615_init_txpower(ptr noundef %dev, ptr noundef %sband_2g) #4
  %sband_5g25 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  tail call void @mt7615_init_txpower(ptr noundef %dev, ptr noundef %sband_5g25) #4
  %call27 = tail call i32 @mt7615_init_debugfs(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end14.cleanup_crit_edge, %mt7615_wtbl_size.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end23 ], [ %call15, %if.end14.cleanup_crit_edge ], [ -28, %mt7615_wtbl_size.exit.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7663_usb_sdio_rate_work(ptr noundef %work) #0 align 64 {
entry:
  %wrd_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wrd_list) #4
  %0 = getelementptr inbounds %struct.list_head, ptr %wrd_list, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %work, i32 -11700
  %1 = ptrtoint ptr %wrd_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %wrd_list, ptr %wrd_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wrd_list, ptr %0, align 4
  %lock = getelementptr i8, ptr %work, i32 -10964
  call void @_raw_spin_lock_bh(ptr noundef %lock) #4
  %wrd_head = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %wrd_head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %wrd_head, align 4
  %cmp.i.not.i = icmp eq ptr %4, %wrd_head
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %wrd_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wrd_list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 48
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wrd_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %wrd_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %wrd_head to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %wrd_head, ptr %wrd_head, align 4
  store ptr %wrd_head, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #4
  %13 = ptrtoint ptr %wrd_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wrd_list, align 4
  %cmp.not32 = icmp eq ptr %14, %wrd_list
  br i1 %cmp.not32, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %pm = getelementptr i8, ptr %work, i32 64
  %mutex.i = getelementptr i8, ptr %work, i32 -10820
  %dep_map.i = getelementptr i8, ptr %work, i32 -10756
  %reg_map.i = getelementptr i8, ptr %work, i32 -220
  %bus.i = getelementptr i8, ptr %work, i32 -10728
  br label %for.body

for.body:                                         ; preds = %mt7663_usb_sdio_set_rates.exit.for.body_crit_edge, %for.body.lr.ph
  %wrd.033 = phi ptr [ %14, %for.body.lr.ph ], [ %wrd_next.0, %mt7663_usb_sdio_set_rates.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %wrd.033 to i32
  call void @__asan_load4_noabort(i32 %15)
  %wrd_next.0 = load ptr, ptr %wrd.033, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %wrd.033) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %wrd.033, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %wrd.033 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wrd.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %wrd.033 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %wrd.033, align 4
  %prev.i29 = getelementptr inbounds %struct.list_head, ptr %wrd.033, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i29, align 4
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %call.i = call i32 @mt76_connac_pm_wake(ptr noundef %add.ptr, ptr noundef %pm) #4
  %rate1.i = getelementptr inbounds %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1
  %sta2.i = getelementptr inbounds %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 2
  %24 = ptrtoint ptr %sta2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sta2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %list_del.exit.if.end.i_crit_edge, label %land.rhs.i

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %list_del.exit
  %call.i.i30 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.not.i = icmp eq i32 %call.i.i30, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !35

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %list_del.exit.if.end.i_crit_edge
  %tobool26.not.i = icmp eq ptr %25, null
  br i1 %tobool26.not.i, label %if.end.i.mt7663_usb_sdio_set_rates.exit_crit_edge, label %if.end28.i

if.end.i.mt7663_usb_sdio_set_rates.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7663_usb_sdio_set_rates.exit

if.end28.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %28, i32 16
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, 48
  %call29.i = call zeroext i1 @__mt76_poll(ptr noundef %add.ptr, i32 noundef %add.i, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #4
  br i1 %call29.i, label %if.end31.i, label %if.end28.i.mt7663_usb_sdio_set_rates.exit_crit_edge

if.end28.i.mt7663_usb_sdio_set_rates.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7663_usb_sdio_set_rates.exit

if.end31.i:                                       ; preds = %if.end28.i
  %idx32.i = getelementptr inbounds %struct.mt76_wcid, ptr %25, i32 0, i32 6
  %31 = ptrtoint ptr %idx32.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idx32.i, align 2
  %conv.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %34, i32 19
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv.i, 8
  %add.i.i = add i32 %36, %mul.i.i
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %add34.i = add i32 %add.i.i, 108
  %call35.i = call i32 %40(ptr noundef %add.ptr, i32 noundef %add34.i) #4
  %bw.i = getelementptr inbounds %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bw.i, align 1
  %and.i = and i32 %call35.i, -97
  %conv59.i = zext i8 %42 to i32
  %shl.i = shl nuw nsw i32 %conv59.i, 5
  %and60.i = and i32 %shl.i, 96
  %or.i = or i32 %and60.i, %and.i
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %add63.i = add i32 %add.i.i, 20
  %call64.i = call i32 %46(ptr noundef %add.ptr, i32 noundef %add63.i) #4
  %and65.i = and i32 %call64.i, 8376095
  %47 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bw.i, align 1
  %bw_idx.i = getelementptr inbounds %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %bw_idx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bw_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool103.not.i = icmp eq i8 %50, 0
  %conv102.i = zext i8 %50 to i32
  %conv92.i = zext i8 %48 to i32
  %shl93.i = shl nuw nsw i32 %conv92.i, 12
  %and94.i = and i32 %shl93.i, 12288
  %sub.i = shl nuw nsw i32 %conv102.i, 5
  %sub.i.op = add nuw nsw i32 %sub.i, 224
  %sub.i.op.op = and i32 %sub.i.op, 224
  %and144.i = select i1 %tobool103.not.i, i32 224, i32 %sub.i.op.op
  %or145.i = or i32 %and94.i, %and65.i
  %or146.i = or i32 %or145.i, %and144.i
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr.i, align 4
  %55 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_map.i, align 8
  %arrayidx149.i = getelementptr i32, ptr %56, i32 15
  %57 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx149.i, align 4
  %add150.i = add i32 %58, 32
  call void %54(ptr noundef %add.ptr, i32 noundef %add150.i, i32 noundef %or146.i) #4
  %59 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i, align 4
  %wr152.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr152.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr152.i, align 4
  %63 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_map.i, align 8
  %arrayidx154.i = getelementptr i32, ptr %64, i32 15
  %65 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx154.i, align 4
  %add155.i = add i32 %66, 36
  %probe_val.i = getelementptr inbounds %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %probe_val.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %probe_val.i, align 2
  %val191.i = getelementptr inbounds %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %val191.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %val191.i, align 2
  %arrayidx225.i = getelementptr %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 2, i32 1
  %71 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx225.i, align 2
  %conv213.i = zext i16 %70 to i32
  %shl214.i = shl nuw nsw i32 %conv213.i, 12
  %and215.i = and i32 %shl214.i, 16773120
  %73 = and i16 %68, 4095
  %and183.i = zext i16 %73 to i32
  %or216.i = or i32 %and215.i, %and183.i
  %conv246.i = zext i16 %72 to i32
  %shl247.i = shl i32 %conv246.i, 24
  %or249.i = or i32 %shl247.i, %or216.i
  call void %62(ptr noundef %add.ptr, i32 noundef %add155.i, i32 noundef %or249.i) #4
  %74 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i, align 4
  %wr251.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %wr251.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wr251.i, align 4
  %78 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_map.i, align 8
  %arrayidx253.i = getelementptr i32, ptr %79, i32 15
  %80 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx253.i, align 4
  %add254.i = add i32 %81, 40
  %82 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx225.i, align 2
  %conv286.i = zext i16 %83 to i32
  %arrayidx331.i = getelementptr %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 2, i32 2
  %84 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx331.i, align 2
  %conv352.i = zext i16 %85 to i32
  %86 = lshr i32 %conv286.i, 8
  %and289.i = and i32 %86, 15
  %shl320.i = shl nuw nsw i32 %conv286.i, 4
  %and321.i = and i32 %shl320.i, 65520
  %or322.i = or i32 %and289.i, %and321.i
  %shl353.i = shl nuw i32 %conv352.i, 16
  %and354.i = and i32 %shl353.i, 268369920
  %shl386.i = shl i32 %conv352.i, 28
  %or355.i = or i32 %shl386.i, %or322.i
  %or388.i = or i32 %or355.i, %and354.i
  call void %77(ptr noundef %add.ptr, i32 noundef %add254.i, i32 noundef %or388.i) #4
  %87 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i, align 4
  %wr390.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %wr390.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wr390.i, align 4
  %91 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_map.i, align 8
  %arrayidx392.i = getelementptr i32, ptr %92, i32 15
  %93 = ptrtoint ptr %arrayidx392.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx392.i, align 4
  %add393.i = add i32 %94, 44
  %95 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx331.i, align 2
  %97 = lshr i16 %96, 4
  %arrayidx438.i = getelementptr %struct.mt7615_wtbl_rate_desc, ptr %wrd.033, i32 0, i32 1, i32 2, i32 3
  %98 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx438.i, align 2
  %conv459.i = zext i16 %99 to i32
  %shl460.i = shl nuw nsw i32 %conv459.i, 8
  %and461.i = and i32 %shl460.i, 1048320
  %100 = and i16 %97, 255
  %and429.i = zext i16 %100 to i32
  %or462.i = or i32 %and461.i, %and429.i
  %shl493.i = shl i32 %conv459.i, 20
  %or495.i = or i32 %or462.i, %shl493.i
  call void %90(ptr noundef %add.ptr, i32 noundef %add393.i, i32 noundef %or495.i) #4
  %101 = ptrtoint ptr %idx32.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %idx32.i, align 2
  %103 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_map.i, align 8
  %arrayidx499.i = getelementptr i32, ptr %104, i32 16
  %105 = ptrtoint ptr %arrayidx499.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx499.i, align 4
  %add500.i = add i32 %106, 48
  %107 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus.i, align 4
  %wr497.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wr497.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wr497.i, align 4
  %111 = and i16 %102, 255
  %112 = or i16 %111, 24576
  %or534.i = zext i16 %112 to i32
  call void %110(ptr noundef %add.ptr, i32 noundef %add500.i, i32 noundef %or534.i) #4
  %113 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus.i, align 4
  %wr536.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %wr536.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wr536.i, align 4
  call void %116(ptr noundef %add.ptr, i32 noundef %add34.i, i32 noundef %or.i) #4
  %117 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rate1.i, align 2, !range !34
  %119 = zext i8 %118 to i32
  %arrayidx540.i = getelementptr %struct.mt7615_sta, ptr %25, i32 0, i32 5, i32 %119
  %120 = ptrtoint ptr %arrayidx540.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx540.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %121)
  %cmp543.i = icmp ne i8 %121, -1
  %conv545.i = zext i1 %cmp543.i to i8
  %rate_probe.i = getelementptr inbounds %struct.mt7615_sta, ptr %25, i32 0, i32 9
  %122 = ptrtoint ptr %rate_probe.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv545.i, ptr %rate_probe.i, align 2
  %vif.i = getelementptr inbounds %struct.mt7615_sta, ptr %25, i32 0, i32 1
  %123 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vif.i, align 4
  %omac_idx.i = getelementptr inbounds %struct.mt76_vif, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %omac_idx.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %omac_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp548.i = icmp ugt i8 %126, 3
  %narrow.i = select i1 %cmp548.i, i8 0, i8 %126
  %spec.select.i = zext i8 %narrow.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %narrow.i)
  %cmp557.i = icmp ugt i8 %narrow.i, 1
  %127 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_map.i, align 8
  %arrayidx561.i = getelementptr i32, ptr %128, i32 17
  %129 = ptrtoint ptr %arrayidx561.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx561.i, align 4
  %sub563.i = shl nuw nsw i32 %spec.select.i, 2
  %..i = select i1 %cmp557.i, i32 240, i32 16
  %add571.i = add i32 %..i, %130
  %add572.i = add i32 %add571.i, %sub563.i
  %131 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmw.i, align 4
  %call576.i = call i32 %134(ptr noundef %add.ptr, i32 noundef %add572.i, i32 noundef 3, i32 noundef 3) #4
  %135 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %139 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg_map.i, align 8
  %arrayidx580.i = getelementptr i32, ptr %140, i32 17
  %141 = ptrtoint ptr %arrayidx580.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx580.i, align 4
  %add581.i = add i32 %142, 24
  %call582.i = call i32 %138(ptr noundef %add.ptr, i32 noundef %add581.i) #4
  %and583.i = and i32 %call582.i, -2
  %143 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %rate1.i, align 2, !range !34
  %145 = zext i8 %144 to i32
  %or587.i = or i32 %and583.i, %145
  %rate_set_tsf.i = getelementptr inbounds %struct.mt7615_sta, ptr %25, i32 0, i32 6
  %146 = ptrtoint ptr %rate_set_tsf.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or587.i, ptr %rate_set_tsf.i, align 4
  %tx_info.i = getelementptr inbounds %struct.mt76_wcid, ptr %25, i32 0, i32 13
  %147 = ptrtoint ptr %tx_info.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %148)
  %tobool590.not.i = icmp sgt i32 %148, -1
  br i1 %tobool590.not.i, label %if.then591.i, label %if.end31.i.if.end596.i_crit_edge

if.end31.i.if.end596.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end596.i

if.then591.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %149 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_map.i, align 8
  %arrayidx593.i = getelementptr i32, ptr %150, i32 16
  %151 = ptrtoint ptr %arrayidx593.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx593.i, align 4
  %add594.i = add i32 %152, 48
  %call595.i = call zeroext i1 @__mt76_poll(ptr noundef %add.ptr, i32 noundef %add594.i, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #4
  br label %if.end596.i

if.end596.i:                                      ; preds = %if.then591.i, %if.end31.i.if.end596.i_crit_edge
  %n_rates.i = getelementptr inbounds %struct.mt7615_sta, ptr %25, i32 0, i32 8
  %153 = ptrtoint ptr %n_rates.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %n_rates.i, align 1
  %mul598.i = shl i8 %154, 2
  %rate_count.i = getelementptr inbounds %struct.mt7615_sta, ptr %25, i32 0, i32 7
  %155 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %mul598.i, ptr %rate_count.i, align 4
  %156 = ptrtoint ptr %tx_info.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_info.i, align 4
  %or602.i = or i32 %157, -2147483648
  store i32 %or602.i, ptr %tx_info.i, align 4
  br label %mt7663_usb_sdio_set_rates.exit

mt7663_usb_sdio_set_rates.exit:                   ; preds = %if.end596.i, %if.end28.i.mt7663_usb_sdio_set_rates.exit_crit_edge, %if.end.i.mt7663_usb_sdio_set_rates.exit_crit_edge
  call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #4
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  call void @kfree(ptr noundef %wrd.033) #4
  %cmp.not = icmp eq ptr %wrd_next.0, %wrd_list
  br i1 %cmp.not, label %mt7663_usb_sdio_set_rates.exit.for.end_crit_edge, label %mt7663_usb_sdio_set_rates.exit.for.body_crit_edge

mt7663_usb_sdio_set_rates.exit.for.body_crit_edge: ; preds = %mt7663_usb_sdio_set_rates.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

mt7663_usb_sdio_set_rates.exit.for.end_crit_edge: ; preds = %mt7663_usb_sdio_set_rates.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %mt7663_usb_sdio_set_rates.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wrd_list) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_init_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_init_txpower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_init_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @mt7663_usb_sdio_reg_map, !1, !"mt7663_usb_sdio_reg_map", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 17, i32 11}
!2 = !{ptr @__ksymtab_mt7663_usb_sdio_reg_map, !3, !"__ksymtab_mt7663_usb_sdio_reg_map", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 41, i32 1}
!4 = !{ptr @__ksymtab_mt7663_usb_sdio_tx_status_data, !5, !"__ksymtab_mt7663_usb_sdio_tx_status_data", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 166, i32 1}
!6 = !{ptr @__ksymtab_mt7663_usb_sdio_tx_complete_skb, !7, !"__ksymtab_mt7663_usb_sdio_tx_complete_skb", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 179, i32 1}
!8 = !{ptr @__ksymtab_mt7663_usb_sdio_tx_prepare_skb, !9, !"__ksymtab_mt7663_usb_sdio_tx_prepare_skb", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 224, i32 1}
!10 = !{ptr @mt7663_usb_sdio_register_device.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 311, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_mt7663_usb_sdio_register_device, !14, !"__ksymtab_mt7663_usb_sdio_register_device", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 348, i32 1}
!15 = !{ptr @__UNIQUE_ID_author494, !16, !"__UNIQUE_ID_author494", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 350, i32 1}
!17 = !{ptr @__UNIQUE_ID_author495, !18, !"__UNIQUE_ID_author495", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 351, i32 1}
!19 = !{ptr @__UNIQUE_ID_file496, !20, !"__UNIQUE_ID_file496", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 352, i32 1}
!21 = !{ptr @__UNIQUE_ID_license497, !20, !"__UNIQUE_ID_license497", i1 false, i1 false}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/usb_sdio.c", i32 64, i32 2}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2159088268}
!34 = !{i8 0, i8 2}
!35 = !{!"branch_weights", i32 1, i32 2000}
