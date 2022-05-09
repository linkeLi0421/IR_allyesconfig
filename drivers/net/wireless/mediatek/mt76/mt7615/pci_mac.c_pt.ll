; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7615_dma_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7615_dma_reset\09\09\09\09"
module asm "\09.long\09__crc_mt7615_dma_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7615_dma_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7615_dma_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mt7615_dma_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mt76_queue_entry = type { %union.anon.131, %union.anon.132, [2 x i32], [2 x i16], i16, i8 }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
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
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7615_fw_txp = type { i16, i16, i8, i8, i8, i8, [6 x i32], [6 x i16] }
%struct.mt76_txwi_cache = type { %struct.list_head, i32, ptr }
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
%struct.mt7615_dev = type { %union.anon.145, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.146 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.146 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7615_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [8 x i32], [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7615_rate_set], i32, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7615_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.137, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.137 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.138] }
%struct.anon.138 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.mt7615_txp_ptr = type { i32, i16, i16, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt7615_mcu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_mt7615_dma_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7615_dma_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7615_dma_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7615_dma_reset to i32), ptr @__kstrtab_mt7615_dma_reset, ptr @__kstrtabns_mt7615_dma_reset }, section "___ksymtab_gpl+mt7615_dma_reset", align 4
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout waiting for MCU reset state %x\0A\00", [56 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 225, i32 8 }
@___asan_gen_.7 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 228, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 378, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mt7615_dma_reset, ptr @.str, ptr @.str.1, ptr @xa_init_flags.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_tx_complete_skb(ptr noundef %mdev, ptr nocapture noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  %3 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %e, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef %4, i32 noundef 1) #5
  br label %if.end13

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %4, inttoptr (i32 -1 to ptr)
  br i1 %cmp, label %mt7615_txwi_to_txp.exit, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

mt7615_txwi_to_txp.exit:                          ; preds = %if.end
  %drv.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 11
  %5 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv.i.i, align 16
  %txwi_size.i.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %txwi_size.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %txwi_size.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %idx.neg.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 32
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %9 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rev.i.i, align 4
  %11 = and i32 %10, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %11)
  %12 = icmp eq i32 %11, 1980825600
  br i1 %12, label %if.then3, label %if.else

if.then3:                                         ; preds = %mt7615_txwi_to_txp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %token4 = getelementptr inbounds %struct.mt7615_fw_txp, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %token4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %token4, align 2
  br label %if.end6

if.else:                                          ; preds = %mt7615_txwi_to_txp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 4
  %17 = and i16 %16, -129
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %.sink = phi i16 [ %17, %if.else ], [ %14, %if.then3 ]
  %18 = tail call i16 @llvm.bswap.i16(i16 %.sink)
  %conv7 = zext i16 %18 to i32
  %token_lock.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %token_lock.i) #5
  %token1.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 29
  %call.i = tail call ptr @idr_remove(ptr noundef %token1.i, i32 noundef %conv7) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %token_lock.i) #5
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cond.end_crit_edge, label %cond.true

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %skb = getelementptr inbounds %struct.mt76_txwi_cache, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end6.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.true ], [ null, %if.end6.cond.end_crit_edge ]
  %21 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond, ptr %e, align 4
  br label %if.end10

if.end10:                                         ; preds = %cond.end, %if.end.if.end10_crit_edge
  %22 = phi ptr [ %cond, %cond.end ], [ %4, %if.end.if.end10_crit_edge ]
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %wcid = getelementptr inbounds %struct.mt76_queue_entry, ptr %e, i32 0, i32 4
  %23 = ptrtoint ptr %wcid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %wcid, align 4
  tail call void @__mt76_tx_complete_skb(ptr noundef %mdev, i16 noundef zeroext %24, ptr noundef nonnull %22, ptr noundef null) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_tx_prepare_skb(ptr noundef %mdev, ptr noundef %txwi_ptr, i32 noundef %qid, ptr noundef %wcid, ptr noundef %sta, ptr nocapture noundef %tx_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
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
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %entry.if.end18_crit_edge, label %if.then7

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %entry
  %phy8 = getelementptr inbounds %struct.mt7615_dev, ptr %mdev, i32 0, i32 3
  %hw_queue = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %hw_queue, align 4
  %8 = and i32 %bf.load, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.then7.if.end15_crit_edge, label %land.lhs.true11

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.then7
  %phy2 = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 1
  %9 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy2, align 8
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %if.then7.if.end15_crit_edge
  %phy.0 = phi ptr [ %12, %if.then13 ], [ %phy8, %land.lhs.true11.if.end15_crit_edge ], [ %phy8, %if.then7.if.end15_crit_edge ]
  %lock = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %rates16 = getelementptr inbounds %struct.mt7615_sta, ptr %wcid, i32 0, i32 4
  tail call void @mt7615_mac_set_rates(ptr noundef %phy.0, ptr noundef nonnull %wcid, ptr noundef %2, ptr noundef %rates16) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %entry.if.end18_crit_edge
  %drv = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 11
  %13 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv, align 16
  %txwi_size = getelementptr inbounds %struct.mt76_driver_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %txwi_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %txwi_size, align 4
  %conv = zext i16 %16 to i32
  %add.ptr19 = getelementptr i8, ptr %txwi_ptr, i32 %conv
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  %skb21 = getelementptr inbounds %struct.mt76_txwi_cache, ptr %add.ptr19, i32 0, i32 2
  %19 = ptrtoint ptr %skb21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %skb21, align 4
  %token_lock.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %token_lock.i) #5
  %token1.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 29
  %20 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv, align 16
  %token_size.i = getelementptr inbounds %struct.mt76_driver_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %token_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %token_size.i, align 2
  %conv.i = zext i16 %23 to i32
  %call.i = tail call i32 @idr_alloc(ptr noundef %token1.i, ptr noundef %add.ptr19, i32 noundef 0, i32 noundef %conv.i, i32 noundef 2592) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %token_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %call27 = tail call i32 @mt76_tx_status_skb_add(ptr noundef %mdev, ptr noundef %wcid.addr.0, ptr noundef %25) #5
  %26 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb, align 4
  %call29 = tail call i32 @mt7615_mac_write_txwi(ptr noundef %mdev, ptr noundef %txwi_ptr, ptr noundef %27, ptr noundef %wcid.addr.0, ptr noundef %sta, i32 noundef %call27, ptr noundef %4, i1 noundef zeroext false) #5
  %add.ptr30 = getelementptr i8, ptr %txwi_ptr, i32 32
  %28 = call ptr @memset(ptr %add.ptr30, i32 0, i32 44)
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 39
  %29 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rev.i.i, align 4
  %31 = and i32 %30, -327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980825600, i32 %31)
  %32 = icmp eq i32 %31, 1980825600
  br i1 %32, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end25
  %33 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 28
  %37 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_key.i, align 4
  %vif2.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 24
  %39 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vif2.i, align 8
  %nbuf3.i = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 2
  %41 = ptrtoint ptr %nbuf3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbuf3.i, align 4
  %sub.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then32.for.body.i_crit_edge, label %if.then32.for.end.i_crit_edge

if.then32.for.end.i_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then32.for.body.i_crit_edge:                   ; preds = %if.then32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then32.for.body.i_crit_edge
  %i.02.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then32.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.02.i, 1
  %arrayidx.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %arrayidx5.i = getelementptr %struct.mt7615_fw_txp, ptr %add.ptr30, i32 0, i32 6, i32 %i.02.i
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx5.i, align 4
  %len.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add.i, i32 1
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len.i, align 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #5
  %arrayidx10.i = getelementptr %struct.mt7615_fw_txp, ptr %add.ptr30, i32 0, i32 7, i32 %i.02.i
  %50 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayidx10.i, align 2
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then32.for.end.i_crit_edge
  %conv.i77 = trunc i32 %sub.i to i8
  %nbuf11.i = getelementptr i8, ptr %txwi_ptr, i32 39
  %51 = ptrtoint ptr %nbuf11.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i77, ptr %nbuf11.i, align 1
  %len14.i = getelementptr inbounds %struct.mt76_queue_buf, ptr %tx_info, i32 0, i32 1
  %52 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 76, ptr %len14.i, align 4
  %len17.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 72, ptr %len17.i, align 4
  %skip_unmap.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %skip_unmap.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %skip_unmap.i, align 2
  %55 = ptrtoint ptr %nbuf3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %nbuf3.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  %spec.select.i = select i1 %tobool.not.i, i16 2304, i16 256
  %56 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %spec.select.i, ptr %add.ptr30, align 4
  %57 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %36, align 2
  %59 = and i16 %58, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp.i.i = icmp eq i16 %59, 0
  br i1 %cmp.i.i, label %if.then25.i, label %for.end.i.if.end30.i_crit_edge

for.end.i.if.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = or i16 %spec.select.i, 1024
  %61 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %add.ptr30, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %for.end.i.if.end30.i_crit_edge
  %tobool31.not.i = icmp eq ptr %40, null
  br i1 %tobool31.not.i, label %if.end30.i.mt7615_write_fw_txp.exit_crit_edge, label %if.then32.i

if.end30.i.mt7615_write_fw_txp.exit_crit_edge:    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_write_fw_txp.exit

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %40, i32 0, i32 19
  %62 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %drv_priv.i, align 1
  %bss_idx.i = getelementptr i8, ptr %txwi_ptr, i32 36
  %64 = ptrtoint ptr %bss_idx.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %bss_idx.i, align 4
  br label %mt7615_write_fw_txp.exit

mt7615_write_fw_txp.exit:                         ; preds = %if.then32.i, %if.end30.i.mt7615_write_fw_txp.exit_crit_edge
  %conv34.i = trunc i32 %call.i to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv34.i) #5
  %token.i = getelementptr i8, ptr %txwi_ptr, i32 34
  %66 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %token.i, align 2
  %rept_wds_wcid.i = getelementptr i8, ptr %txwi_ptr, i32 37
  %67 = ptrtoint ptr %rept_wds_wcid.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %rept_wds_wcid.i, align 1
  br label %if.end33

if.else:                                          ; preds = %if.end25
  %nbuf2.i = getelementptr inbounds %struct.mt76_tx_info, ptr %tx_info, i32 0, i32 2
  %68 = ptrtoint ptr %nbuf2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nbuf2.i, align 4
  %sub.i78 = add i32 %69, -1
  %len.i79 = getelementptr inbounds %struct.mt76_queue_buf, ptr %tx_info, i32 0, i32 1
  %70 = ptrtoint ptr %len.i79 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 64, ptr %len.i79, align 4
  store i32 1, ptr %nbuf2.i, align 4
  %71 = trunc i32 %call.i to i16
  %conv.i80 = or i16 %71, -32768
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv.i80) #5
  %73 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %add.ptr30, align 4
  %74 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i.i = and i32 %75, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i)
  %cmp.i.i81 = icmp eq i32 %shr.i.mask.i.i, 1986199552
  %..i = select i1 %cmp.i.i81, i16 -32768, i16 -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i78)
  %cmp47.i = icmp sgt i32 %sub.i78, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

for.body.lr.ph.i:                                 ; preds = %if.else
  %ptr1.i = getelementptr i8, ptr %txwi_ptr, i32 40
  %sub17.i = add i32 %69, -2
  br label %for.body.i85

for.body.i85:                                     ; preds = %if.end28.i.for.body.i85_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i82, %if.end28.i.for.body.i85_crit_edge ]
  %ptr.048.i = phi ptr [ %ptr1.i, %for.body.lr.ph.i ], [ %ptr.1.i, %if.end28.i.for.body.i85_crit_edge ]
  %add.i82 = add nuw nsw i32 %i.049.i, 1
  %arrayidx9.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add.i82
  %len10.i = getelementptr [32 x %struct.mt76_queue_buf], ptr %tx_info, i32 0, i32 %add.i82, i32 1
  %76 = ptrtoint ptr %len10.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len10.i, align 4
  %78 = and i16 %77, 4095
  %79 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.049.i, i32 %sub17.i)
  %cmp18.i = icmp eq i32 %i.049.i, %sub17.i
  %or22.i = select i1 %cmp18.i, i16 %..i, i16 0
  %spec.select.i83 = or i16 %78, %or22.i
  %and25.i = and i32 %i.049.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not.i84 = icmp eq i32 %and25.i, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  br i1 %tobool.not.i84, label %if.else27.i, label %if.then26.i

if.then26.i:                                      ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #7
  %buf1.i = getelementptr inbounds %struct.mt7615_txp_ptr, ptr %ptr.048.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %buf1.i, align 4
  %83 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i83) #5
  %len1.i = getelementptr inbounds %struct.mt7615_txp_ptr, ptr %ptr.048.i, i32 0, i32 2
  %84 = ptrtoint ptr %len1.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %len1.i, align 2
  %incdec.ptr.i = getelementptr %struct.mt7615_txp_ptr, ptr %ptr.048.i, i32 1
  br label %if.end28.i

if.else27.i:                                      ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %ptr.048.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %81, ptr %ptr.048.i, align 4
  %86 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i83) #5
  %len0.i = getelementptr inbounds %struct.mt7615_txp_ptr, ptr %ptr.048.i, i32 0, i32 1
  %87 = ptrtoint ptr %len0.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %len0.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else27.i, %if.then26.i
  %ptr.1.i = phi ptr [ %incdec.ptr.i, %if.then26.i ], [ %ptr.048.i, %if.else27.i ]
  %exitcond.not.i86 = icmp eq i32 %add.i82, %sub.i78
  br i1 %exitcond.not.i86, label %if.end28.i.if.end33_crit_edge, label %if.end28.i.for.body.i85_crit_edge

if.end28.i.for.body.i85_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i85

if.end28.i.if.end33_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %if.end28.i.if.end33_crit_edge, %if.else.if.end33_crit_edge, %mt7615_write_fw_txp.exit
  %88 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call.i, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_set_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_tx_status_skb_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mac_write_txwi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_dma_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 520
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %add, i32 noundef 69, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %8 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1, align 4
  tail call void %11(ptr noundef %dev, ptr noundef %13, i1 noundef zeroext true) #5
  %14 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %tx_cleanup.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_cleanup.1, align 4
  %arrayidx1.1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.1, align 4
  tail call void %17(ptr noundef %dev, ptr noundef %19, i1 noundef zeroext true) #5
  %20 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %tx_cleanup.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_cleanup.2, align 4
  %arrayidx1.2 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.2, align 4
  tail call void %23(ptr noundef %dev, ptr noundef %25, i1 noundef zeroext true) #5
  %26 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %tx_cleanup.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_cleanup.3, align 4
  %arrayidx1.3 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.3, align 4
  tail call void %29(ptr noundef %dev, ptr noundef %31, i1 noundef zeroext true) #5
  %32 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %tx_cleanup.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_cleanup.4, align 4
  %arrayidx1.4 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.4, align 4
  tail call void %35(ptr noundef %dev, ptr noundef %37, i1 noundef zeroext true) #5
  %38 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.5 = getelementptr inbounds %struct.mt76_queue_ops, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %tx_cleanup.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_cleanup.5, align 4
  %arrayidx1.5 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 5
  %42 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx1.5, align 4
  tail call void %41(ptr noundef %dev, ptr noundef %43, i1 noundef zeroext true) #5
  %44 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.6 = getelementptr inbounds %struct.mt76_queue_ops, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %tx_cleanup.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_cleanup.6, align 4
  %arrayidx1.6 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx1.6, align 4
  tail call void %47(ptr noundef %dev, ptr noundef %49, i1 noundef zeroext true) #5
  %50 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup6 = getelementptr inbounds %struct.mt76_queue_ops, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %tx_cleanup6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_cleanup6, align 4
  %arrayidx7 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 0
  %54 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx7, align 4
  tail call void %53(ptr noundef %dev, ptr noundef %55, i1 noundef zeroext true) #5
  %56 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup6.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %tx_cleanup6.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_cleanup6.1, align 4
  %arrayidx7.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 1
  %60 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx7.1, align 4
  tail call void %59(ptr noundef %dev, ptr noundef %61, i1 noundef zeroext true) #5
  %62 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup6.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %tx_cleanup6.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_cleanup6.2, align 4
  %arrayidx7.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %66 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx7.2, align 4
  tail call void %65(ptr noundef %dev, ptr noundef %67, i1 noundef zeroext true) #5
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0, i32 8
  %68 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not = icmp eq i32 %69, 0
  br i1 %tobool.not, label %entry.for.end18_crit_edge, label %for.body14

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body14:                                       ; preds = %entry
  %70 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %queue_ops, align 4
  %rx_reset = getelementptr inbounds %struct.mt76_queue_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %rx_reset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_reset, align 4
  tail call void %73(ptr noundef %dev, i32 noundef 0) #5
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %74 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.1 = icmp eq i32 %75, 0
  br i1 %tobool.not.1, label %for.body14.for.end18_crit_edge, label %for.body14.1

for.body14.for.end18_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body14.1:                                     ; preds = %for.body14
  %76 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue_ops, align 4
  %rx_reset.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %rx_reset.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_reset.1, align 4
  tail call void %79(ptr noundef %dev, i32 noundef 1) #5
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %80 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.2 = icmp eq i32 %81, 0
  br i1 %tobool.not.2, label %for.body14.1.for.end18_crit_edge, label %for.body14.2

for.body14.1.for.end18_crit_edge:                 ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body14.2:                                     ; preds = %for.body14.1
  %82 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %queue_ops, align 4
  %rx_reset.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %rx_reset.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_reset.2, align 4
  tail call void %85(ptr noundef %dev, i32 noundef 2) #5
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %86 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.3 = icmp eq i32 %87, 0
  br i1 %tobool.not.3, label %for.body14.2.for.end18_crit_edge, label %for.body14.3

for.body14.2.for.end18_crit_edge:                 ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body14.3:                                     ; preds = %for.body14.2
  %88 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %queue_ops, align 4
  %rx_reset.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %rx_reset.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_reset.3, align 4
  tail call void %91(ptr noundef %dev, i32 noundef 3) #5
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %92 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.4 = icmp eq i32 %93, 0
  br i1 %tobool.not.4, label %for.body14.3.for.end18_crit_edge, label %for.body14.4

for.body14.3.for.end18_crit_edge:                 ; preds = %for.body14.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body14.4:                                     ; preds = %for.body14.3
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %queue_ops, align 4
  %rx_reset.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %rx_reset.4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_reset.4, align 4
  tail call void %97(ptr noundef %dev, i32 noundef 4) #5
  br label %for.end18

for.end18:                                        ; preds = %for.body14.4, %for.body14.3.for.end18_crit_edge, %for.body14.2.for.end18_crit_edge, %for.body14.1.for.end18_crit_edge, %for.body14.for.end18_crit_edge, %entry.for.end18_crit_edge
  tail call void @mt76_tx_status_check(ptr noundef %dev, i1 noundef zeroext true) #5
  tail call void @mt7615_dma_start(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_dma_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_mac_reset_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11528
  %phy21 = getelementptr i8, ptr %work, i32 -10800
  %0 = ptrtoint ptr %phy21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy21, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %reset_state = getelementptr i8, ptr %work, i32 96
  %4 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %reset_state, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_stop_queues(ptr noundef %7) #5
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %9) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %state = getelementptr i8, ptr %work, i32 -11516
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #5
  %wait = getelementptr i8, ptr %work, i32 -10384
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %mac_work = getelementptr i8, ptr %work, i32 -10968
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #5
  %roc_timer = getelementptr i8, ptr %work, i32 -196
  %call9 = tail call i32 @del_timer_sync(ptr noundef %roc_timer) #5
  %roc_work = getelementptr i8, ptr %work, i32 -240
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %roc_work) #5
  %tobool12.not = icmp eq ptr %cond, null
  br i1 %tobool12.not, label %if.end7.if.end22_crit_edge, label %if.then13

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cond, align 8
  %state14 = getelementptr inbounds %struct.mt76_phy, ptr %11, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state14) #5
  %12 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cond, align 8
  %mac_work16 = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 18
  %call17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work16) #5
  %roc_timer18 = getelementptr inbounds %struct.mt7615_phy, ptr %cond, i32 0, i32 24
  %call19 = tail call i32 @del_timer_sync(ptr noundef %roc_timer18) #5
  %roc_work20 = getelementptr inbounds %struct.mt7615_phy, ptr %cond, i32 0, i32 23
  %call21 = tail call zeroext i1 @cancel_work_sync(ptr noundef %roc_work20) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.end7.if.end22_crit_edge
  tail call void @mt76_txq_schedule_all(ptr noundef %add.ptr) #5
  br i1 %tobool.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt76_txq_schedule_all(ptr noundef nonnull %1) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %tx_worker = getelementptr i8, ptr %work, i32 -3392
  %14 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end25.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end25.mt76_worker_disable.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %15) #5
  %state.i = getelementptr i8, ptr %work, i32 -3384
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end25.mt76_worker_disable.exit_crit_edge
  %napi = getelementptr i8, ptr %work, i32 -5592
  tail call void @napi_disable(ptr noundef %napi) #5
  %arrayidx27 = getelementptr i8, ptr %work, i32 -5368
  tail call void @napi_disable(ptr noundef %arrayidx27) #5
  %tx_napi = getelementptr i8, ptr %work, i32 -3376
  tail call void @napi_disable(ptr noundef %tx_napi) #5
  %pm = getelementptr i8, ptr %work, i32 236
  %mutex.i = getelementptr i8, ptr %work, i32 -10648
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i130 = tail call i32 @mt76_connac_pm_wake(ptr noundef %add.ptr, ptr noundef %pm) #5
  %reg_map.i = getelementptr i8, ptr %work, i32 -48
  %17 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %rev.i.i.i = getelementptr i8, ptr %work, i32 -1436
  %21 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %22, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1986199552
  %spec.select.v.i = select i1 %cmp.i.i, i32 264, i32 504
  %spec.select.i = add i32 %spec.select.v.i, %20
  %bus.i = getelementptr i8, ptr %work, i32 -10556
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr.i, align 4
  tail call void %26(ptr noundef %add.ptr, i32 noundef %spec.select.i, i32 noundef 1) #5
  tail call void @mt7622_trigger_hif_int(ptr noundef %add.ptr, i1 noundef zeroext true) #5
  tail call void @mt7622_trigger_hif_int(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  %call28 = tail call fastcc zeroext i1 @mt7615_wait_reset_state(ptr noundef %add.ptr, i32 noundef 8)
  br i1 %call28, label %if.then29, label %mt76_worker_disable.exit.if.end32_crit_edge

mt76_worker_disable.exit.if.end32_crit_edge:      ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mt7615_dma_reset(ptr noundef %add.ptr)
  tail call void @mt7615_tx_token_put(ptr noundef %add.ptr) #5
  %token = getelementptr i8, ptr %work, i32 -3108
  tail call void @__raw_spin_lock_init(ptr noundef %token, ptr noundef nonnull @.str.2, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i = getelementptr i8, ptr %work, i32 -3064
  %27 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr i8, ptr %work, i32 -3060
  %28 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr i8, ptr %work, i32 -3056
  %29 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr i8, ptr %work, i32 -3052
  %30 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %idr_next.i.i, align 4
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr, align 4
  %35 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_map.i, align 8
  %arrayidx30 = getelementptr i32, ptr %36, i32 5
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx30, align 4
  %add = add i32 %38, 548
  tail call void %34(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 0) #5
  %39 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i132 = getelementptr i32, ptr %40, i32 5
  %41 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i132, align 4
  %43 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i134 = and i32 %44, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i134)
  %cmp.i.i135 = icmp eq i32 %shr.i.mask.i.i134, 1986199552
  %spec.select.v.i136 = select i1 %cmp.i.i135, i32 264, i32 504
  %spec.select.i137 = add i32 %spec.select.v.i136, %42
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 4
  %wr.i139 = getelementptr inbounds %struct.mt76_bus_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wr.i139 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wr.i139, align 4
  tail call void %48(ptr noundef %add.ptr, i32 noundef %spec.select.i137, i32 noundef 2) #5
  tail call void @mt7622_trigger_hif_int(ptr noundef %add.ptr, i1 noundef zeroext true) #5
  tail call void @mt7622_trigger_hif_int(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  %call31 = tail call fastcc zeroext i1 @mt7615_wait_reset_state(ptr noundef %add.ptr, i32 noundef 16)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %mt76_worker_disable.exit.if.end32_crit_edge
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #5
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #5
  br i1 %tobool12.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cond, align 8
  %state38 = getelementptr inbounds %struct.mt76_phy, ptr %50, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state38) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %51 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i140 = icmp eq ptr %52, null
  br i1 %tobool.not.i140, label %if.end39.mt76_worker_enable.exit_crit_edge, label %if.end.i141

if.end39.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.end.i141:                                      ; preds = %if.end39
  tail call void @kthread_unpark(ptr noundef nonnull %52) #5
  %53 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.end.i141.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i141.mt76_worker_enable.exit_crit_edge:    ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i141
  %state.i.i = getelementptr i8, ptr %work, i32 -3384
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %55 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %state.i.i, align 4
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool4.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %59) #5
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i141.mt76_worker_enable.exit_crit_edge, %if.end39.mt76_worker_enable.exit_crit_edge
  tail call fastcc void @local_bh_disable()
  tail call void @napi_enable(ptr noundef %tx_napi) #5
  %call.i142 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #5
  br i1 %call.i142, label %if.then.i, label %mt76_worker_enable.exit.napi_schedule.exit_crit_edge

mt76_worker_enable.exit.napi_schedule.exit_crit_edge: ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %tx_napi) #5
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %mt76_worker_enable.exit.napi_schedule.exit_crit_edge
  tail call void @napi_enable(ptr noundef %napi) #5
  %call.i144 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #5
  br i1 %call.i144, label %if.then.i145, label %napi_schedule.exit.napi_schedule.exit147_crit_edge

napi_schedule.exit.napi_schedule.exit147_crit_edge: ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit147

if.then.i145:                                     ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %napi) #5
  br label %napi_schedule.exit147

napi_schedule.exit147:                            ; preds = %if.then.i145, %napi_schedule.exit.napi_schedule.exit147_crit_edge
  tail call void @napi_enable(ptr noundef %arrayidx27) #5
  %call.i148 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx27) #5
  br i1 %call.i148, label %if.then.i149, label %napi_schedule.exit147.napi_schedule.exit151_crit_edge

napi_schedule.exit147.napi_schedule.exit151_crit_edge: ; preds = %napi_schedule.exit147
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit151

if.then.i149:                                     ; preds = %napi_schedule.exit147
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %arrayidx27) #5
  br label %napi_schedule.exit151

napi_schedule.exit151:                            ; preds = %if.then.i149, %napi_schedule.exit147.napi_schedule.exit151_crit_edge
  tail call fastcc void @local_bh_enable()
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_wake_queues(ptr noundef %61) #5
  br i1 %tobool.not, label %napi_schedule.exit151.if.end55_crit_edge, label %if.then53

napi_schedule.exit151.if.end55_crit_edge:         ; preds = %napi_schedule.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then53:                                        ; preds = %napi_schedule.exit151
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %63) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %napi_schedule.exit151.if.end55_crit_edge
  %64 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i153 = getelementptr i32, ptr %65, i32 5
  %66 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i153, align 4
  %68 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i155 = and i32 %69, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i155)
  %cmp.i.i156 = icmp eq i32 %shr.i.mask.i.i155, 1986199552
  %spec.select.v.i157 = select i1 %cmp.i.i156, i32 264, i32 504
  %spec.select.i158 = add i32 %spec.select.v.i157, %67
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 4
  %wr.i160 = getelementptr inbounds %struct.mt76_bus_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %wr.i160 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr.i160, align 4
  tail call void %73(ptr noundef %add.ptr, i32 noundef %spec.select.i158, i32 noundef 8) #5
  tail call void @mt7622_trigger_hif_int(ptr noundef %add.ptr, i1 noundef zeroext true) #5
  tail call void @mt7622_trigger_hif_int(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  %call56 = tail call fastcc zeroext i1 @mt7615_wait_reset_state(ptr noundef %add.ptr, i32 noundef 32)
  %hw.i = getelementptr i8, ptr %work, i32 -10796
  %74 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_iterate_interfaces(ptr noundef %75, i32 noundef 3, ptr noundef nonnull @mt7615_update_vif_beacon, ptr noundef %75) #5
  %76 = ptrtoint ptr %phy21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy21, align 8
  %tobool.not.i161 = icmp eq ptr %77, null
  br i1 %tobool.not.i161, label %if.end55.mt7615_update_beacons.exit_crit_edge, label %if.end.i162

if.end55.mt7615_update_beacons.exit_crit_edge:    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_update_beacons.exit

if.end.i162:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  tail call void @ieee80211_iterate_interfaces(ptr noundef %79, i32 noundef 3, ptr noundef nonnull @mt7615_update_vif_beacon, ptr noundef %79) #5
  br label %mt7615_update_beacons.exit

mt7615_update_beacons.exit:                       ; preds = %if.end.i162, %if.end55.mt7615_update_beacons.exit_crit_edge
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #5
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %80 = ptrtoint ptr %pm to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pm, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i164 = icmp eq i8 %81, 0
  %cond.i = select i1 %tobool.not.i164, i32 10, i32 33
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_queue_delayed_work(ptr noundef %83, ptr noundef %mac_work, i32 noundef %cond.i) #5
  br i1 %tobool12.not, label %mt7615_update_beacons.exit.cleanup_crit_edge, label %if.then62

mt7615_update_beacons.exit.cleanup_crit_edge:     ; preds = %mt7615_update_beacons.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then62:                                        ; preds = %mt7615_update_beacons.exit
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  %86 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cond, align 8
  %mac_work65 = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %85, ptr noundef %mac_work65, i32 noundef %cond.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %mt7615_update_beacons.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mt7615_wait_reset_state(ptr noundef %dev, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 227) #5
  %reset_state = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %reset_state, align 8
  %and = and i32 %1, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then13, label %entry.if.end66_crit_edge

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %reset_wait = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 12
  %call98 = call i32 @prepare_to_wait_event(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %3 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %reset_state, align 8
  %and2199 = and i32 %4, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2199)
  %tobool22.not100.not = icmp eq i32 %and2199, 0
  br i1 %tobool22.not100.not, label %if.then13.cleanup_crit_edge, label %if.end42.thread

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

if.end42.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end66

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.1102 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ 3000, %if.then13.cleanup_crit_edge ]
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret14.1102) #5
  %call = call i32 @prepare_to_wait_event(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %5 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %reset_state, align 8
  %and21 = and i32 %6, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool26.not = icmp eq i32 %call39, 0
  %spec.store.select76 = select i1 %tobool26.not, i32 1, i32 %call39
  %__ret14.1 = select i1 %tobool22.not, i32 %call39, i32 %spec.store.select76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool32.not = icmp eq i32 %__ret14.1, 0
  %not.tobool22.not = xor i1 %tobool22.not, true
  %7 = select i1 %not.tobool22.not, i1 true, i1 %tobool32.not
  br i1 %7, label %if.end42, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %phi.cmp = icmp eq i32 %__ret14.1, 0
  call void @finish_wait(ptr noundef %reset_wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br i1 %phi.cmp, label %do.end60, label %if.end42.if.end66_crit_edge, !prof !19

if.end42.if.end66_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

do.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %state) #5
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %if.end42.if.end66_crit_edge, %if.end42.thread, %entry.if.end66_crit_edge
  %tobool4497 = phi i1 [ false, %do.end60 ], [ true, %if.end42.if.end66_crit_edge ], [ true, %entry.if.end66_crit_edge ], [ true, %if.end42.thread ]
  ret i1 %tobool4497
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_tx_token_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mt76_tx_complete_skb(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_pm_wake(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7622_trigger_hif_int(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_update_vif_beacon(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 7, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge6
    i32 3, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %mcu_ops = getelementptr inbounds %struct.mt7615_dev, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcu_ops, align 16
  %add_beacon_offload = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %add_beacon_offload to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add_beacon_offload, align 4
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 17
  %11 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_beacon, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool = icmp ne i8 %12, 0
  %call1 = tail call i32 %10(ptr noundef %6, ptr noundef %priv, ptr noundef %vif, i1 noundef zeroext %tobool) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_mt7615_dma_reset, !1, !"__ksymtab_mt7615_dma_reset", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c", i32 204, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c", i32 225, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci_mac.c", i32 228, i32 2}
!6 = !{ptr @xa_init_flags.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 1, i32 2000}
