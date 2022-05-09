; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.149 = type { i32, i32, i32 }
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
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7921_dev = type { %union.anon.135, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.135 = type { %struct.mt76_dev }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }

@mt7921_wpdma_reinit_cond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wpdma reset failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt7921_wpdma_reinit_cond\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/dma.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7921_wpdma_reinit_cond._entry_ptr = internal global ptr @mt7921_wpdma_reinit_cond._entry, section ".printk_index", align 4
@__mt7921_reg_addr.fixed_map = internal unnamed_addr constant [43 x %struct.anon.149] [%struct.anon.149 { i32 -2113077248, i32 196608, i32 65536 }, %struct.anon.149 { i32 -2112958464, i32 149504, i32 2048 }, %struct.anon.149 { i32 -2112995328, i32 135168, i32 1024 }, %struct.anon.149 { i32 -2112983040, i32 138752, i32 512 }, %struct.anon.149 { i32 -2112966656, i32 147968, i32 1024 }, %struct.anon.149 { i32 -2113003520, i32 133120, i32 1024 }, %struct.anon.149 { i32 -2112999424, i32 134144, i32 1024 }, %struct.anon.149 { i32 -2112991232, i32 136192, i32 2048 }, %struct.anon.149 { i32 4194304, i32 524288, i32 65536 }, %struct.anon.149 { i32 4259840, i32 589824, i32 65536 }, %struct.anon.149 { i32 1073741824, i32 458752, i32 65536 }, %struct.anon.149 { i32 1409286144, i32 8192, i32 4096 }, %struct.anon.149 { i32 1426063360, i32 12288, i32 4096 }, %struct.anon.149 { i32 1476395008, i32 24576, i32 4096 }, %struct.anon.149 { i32 1493172224, i32 28672, i32 4096 }, %struct.anon.149 { i32 2080374784, i32 983040, i32 65536 }, %struct.anon.149 { i32 2080505856, i32 851968, i32 65536 }, %struct.anon.149 { i32 2080768000, i32 917504, i32 65536 }, %struct.anon.149 { i32 -2147352576, i32 720896, i32 65536 }, %struct.anon.149 { i32 -2130575360, i32 786432, i32 65536 }, %struct.anon.149 { i32 -2113142784, i32 32768, i32 16384 }, %struct.anon.149 { i32 -2113110016, i32 49152, i32 8192 }, %struct.anon.149 { i32 -2113093632, i32 57344, i32 4096 }, %struct.anon.149 { i32 -2113089536, i32 61440, i32 4096 }, %struct.anon.149 { i32 -2113085440, i32 138240, i32 512 }, %struct.anon.149 { i32 -2113081344, i32 139264, i32 4096 }, %struct.anon.149 { i32 -2113011712, i32 131072, i32 1024 }, %struct.anon.149 { i32 -2113007616, i32 132096, i32 512 }, %struct.anon.149 { i32 -2112974848, i32 144384, i32 512 }, %struct.anon.149 { i32 -2112970752, i32 147456, i32 512 }, %struct.anon.149 { i32 -2112962560, i32 148992, i32 512 }, %struct.anon.149 { i32 -2112946176, i32 655360, i32 1024 }, %struct.anon.149 { i32 -2112942080, i32 656896, i32 512 }, %struct.anon.149 { i32 -2112937984, i32 657408, i32 1024 }, %struct.anon.149 { i32 -2112933888, i32 658432, i32 1024 }, %struct.anon.149 { i32 -2112929792, i32 659456, i32 1024 }, %struct.anon.149 { i32 -2112925696, i32 660480, i32 2048 }, %struct.anon.149 { i32 -2112917504, i32 663040, i32 512 }, %struct.anon.149 { i32 -2112909312, i32 668672, i32 512 }, %struct.anon.149 { i32 -2112905216, i32 671744, i32 512 }, %struct.anon.149 { i32 -2112901120, i32 672256, i32 1024 }, %struct.anon.149 { i32 -2112897024, i32 673280, i32 512 }, %struct.anon.149 { i32 -2112892928, i32 673792, i32 2048 }], align 4
@__mt7921_reg_addr._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Access currently unsupported address %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__mt7921_reg_addr\00", [46 x i8] zeroinitializer }, align 32
@__mt7921_reg_addr._entry_ptr = internal global ptr @__mt7921_reg_addr._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 330, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/dma.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 155, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__mt7921_reg_addr._entry, ptr @__mt7921_reg_addr._entry_ptr, ptr @mt7921_wpdma_reinit_cond._entry, ptr @mt7921_wpdma_reinit_cond._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_wpdma_reinit_cond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_init_tx_queues(ptr nocapture noundef readonly %phy, i32 noundef %idx, i32 noundef %n_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @mt76_init_queue(ptr noundef %3, i32 noundef 0, i32 noundef %idx, i32 noundef %n_desc, i32 noundef 869120) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mt76_init_tx_queue.exit, label %mt76_init_tx_queue.exit.thread

mt76_init_tx_queue.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %qid3.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i, i32 0, i32 15
  %4 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %qid3.i, align 4
  %q_tx.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %q_tx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %q_tx.i, align 4
  br label %for.body.preheader

mt76_init_tx_queue.exit:                          ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %mt76_init_tx_queue.exit.cleanup_crit_edge, label %mt76_init_tx_queue.exit.for.body.preheader_crit_edge

mt76_init_tx_queue.exit.for.body.preheader_crit_edge: ; preds = %mt76_init_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

mt76_init_tx_queue.exit.cleanup_crit_edge:        ; preds = %mt76_init_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %mt76_init_tx_queue.exit.for.body.preheader_crit_edge, %mt76_init_tx_queue.exit.thread
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 8
  %q_tx.1 = getelementptr inbounds %struct.mt76_phy, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %q_tx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q_tx.1, align 8
  %arrayidx5.1 = getelementptr %struct.mt76_phy, ptr %8, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx5.1, align 4
  %12 = load ptr, ptr %phy, align 8
  %q_tx.2 = getelementptr inbounds %struct.mt76_phy, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %q_tx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q_tx.2, align 8
  %arrayidx5.2 = getelementptr %struct.mt76_phy, ptr %12, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx5.2, align 4
  %16 = load ptr, ptr %phy, align 8
  %q_tx.3 = getelementptr inbounds %struct.mt76_phy, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %q_tx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q_tx.3, align 8
  %arrayidx5.3 = getelementptr %struct.mt76_phy, ptr %16, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arrayidx5.3, align 4
  %20 = load ptr, ptr %phy, align 8
  %q_tx.4 = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %q_tx.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q_tx.4, align 8
  %arrayidx5.4 = getelementptr %struct.mt76_phy, ptr %20, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx5.4, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %mt76_init_tx_queue.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %mt76_init_tx_queue.exit.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_wfsys_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 402653504, i32 noundef 1, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw2, align 4
  %call3 = tail call i32 %7(ptr noundef %dev, i32 noundef 402653504, i32 noundef 0, i32 noundef 1) #4
  %call4 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 402653504, i32 noundef 16, i32 noundef 16, i32 noundef 500) #4
  %. = select i1 %call4, i32 0, i32 -110
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_wpdma_reset(ptr noundef %dev, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void %3(ptr noundef %dev, ptr noundef %5, i1 noundef zeroext true) #4
  %6 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %tx_cleanup.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_cleanup.1, align 4
  %arrayidx.1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void %9(ptr noundef %dev, ptr noundef %11, i1 noundef zeroext true) #4
  %12 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %tx_cleanup.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_cleanup.2, align 4
  %arrayidx.2 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void %15(ptr noundef %dev, ptr noundef %17, i1 noundef zeroext true) #4
  %18 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %tx_cleanup.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_cleanup.3, align 4
  %arrayidx.3 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  tail call void %21(ptr noundef %dev, ptr noundef %23, i1 noundef zeroext true) #4
  %24 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %tx_cleanup.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_cleanup.4, align 4
  %arrayidx.4 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4, align 4
  tail call void %27(ptr noundef %dev, ptr noundef %29, i1 noundef zeroext true) #4
  %30 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.5 = getelementptr inbounds %struct.mt76_queue_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %tx_cleanup.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_cleanup.5, align 4
  %arrayidx.5 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 5
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.5, align 4
  tail call void %33(ptr noundef %dev, ptr noundef %35, i1 noundef zeroext true) #4
  %36 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup.6 = getelementptr inbounds %struct.mt76_queue_ops, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %tx_cleanup.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_cleanup.6, align 4
  %arrayidx.6 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.6, align 4
  tail call void %39(ptr noundef %dev, ptr noundef %41, i1 noundef zeroext true) #4
  %42 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5 = getelementptr inbounds %struct.mt76_queue_ops, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %tx_cleanup5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_cleanup5, align 4
  %arrayidx6 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 0
  %46 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx6, align 4
  tail call void %45(ptr noundef %dev, ptr noundef %47, i1 noundef zeroext true) #4
  %48 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %tx_cleanup5.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_cleanup5.1, align 4
  %arrayidx6.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 1
  %52 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx6.1, align 4
  tail call void %51(ptr noundef %dev, ptr noundef %53, i1 noundef zeroext true) #4
  %54 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %tx_cleanup5.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_cleanup5.2, align 4
  %arrayidx6.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %58 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx6.2, align 4
  tail call void %57(ptr noundef %dev, ptr noundef %59, i1 noundef zeroext true) #4
  %ndesc = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0, i32 8
  %60 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not = icmp eq i32 %61, 0
  br i1 %tobool.not, label %entry.for.end19_crit_edge, label %for.body13

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end19

for.body13:                                       ; preds = %entry
  %arrayidx12 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0
  %62 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %queue_ops, align 4
  %rx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %rx_cleanup to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_cleanup, align 4
  tail call void %65(ptr noundef %dev, ptr noundef %arrayidx12) #4
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %66 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.1 = icmp eq i32 %67, 0
  br i1 %tobool.not.1, label %for.body13.for.end19_crit_edge, label %for.body13.1

for.body13.for.end19_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end19

for.body13.1:                                     ; preds = %for.body13
  %arrayidx12.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %68 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %queue_ops, align 4
  %rx_cleanup.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %rx_cleanup.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_cleanup.1, align 4
  tail call void %71(ptr noundef %dev, ptr noundef %arrayidx12.1) #4
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %72 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.2 = icmp eq i32 %73, 0
  br i1 %tobool.not.2, label %for.body13.1.for.end19_crit_edge, label %for.body13.2

for.body13.1.for.end19_crit_edge:                 ; preds = %for.body13.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end19

for.body13.2:                                     ; preds = %for.body13.1
  %arrayidx12.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2
  %74 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %queue_ops, align 4
  %rx_cleanup.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %rx_cleanup.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_cleanup.2, align 4
  tail call void %77(ptr noundef %dev, ptr noundef %arrayidx12.2) #4
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %78 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.3 = icmp eq i32 %79, 0
  br i1 %tobool.not.3, label %for.body13.2.for.end19_crit_edge, label %for.body13.3

for.body13.2.for.end19_crit_edge:                 ; preds = %for.body13.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end19

for.body13.3:                                     ; preds = %for.body13.2
  %arrayidx12.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3
  %80 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %queue_ops, align 4
  %rx_cleanup.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %rx_cleanup.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_cleanup.3, align 4
  tail call void %83(ptr noundef %dev, ptr noundef %arrayidx12.3) #4
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %84 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.4 = icmp eq i32 %85, 0
  br i1 %tobool.not.4, label %for.body13.3.for.end19_crit_edge, label %for.body13.4

for.body13.3.for.end19_crit_edge:                 ; preds = %for.body13.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end19

for.body13.4:                                     ; preds = %for.body13.3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4
  %86 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %queue_ops, align 4
  %rx_cleanup.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %rx_cleanup.4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_cleanup.4, align 4
  tail call void %89(ptr noundef %dev, ptr noundef %arrayidx12.4) #4
  br label %for.end19

for.end19:                                        ; preds = %for.body13.4, %for.body13.3.for.end19_crit_edge, %for.body13.2.for.end19_crit_edge, %for.body13.1.for.end19_crit_edge, %for.body13.for.end19_crit_edge, %entry.for.end19_crit_edge
  br i1 %force, label %if.then, label %for.end19.mt7921_dma_disable.exit.i_crit_edge

for.end19.mt7921_dma_disable.exit.i_crit_edge:    ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_dma_disable.exit.i

if.then:                                          ; preds = %for.end19
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %93(ptr noundef %dev, i32 noundef 402653504, i32 noundef 1, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmw2.i, align 4
  %call3.i = tail call i32 %97(ptr noundef %dev, i32 noundef 402653504, i32 noundef 0, i32 noundef 1) #4
  %call4.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 402653504, i32 noundef 16, i32 noundef 16, i32 noundef 500) #4
  br i1 %call4.i, label %if.then.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmw.i.i, align 4
  %call.i.i = tail call i32 %101(ptr noundef %dev, i32 noundef 868608, i32 noundef 48, i32 noundef 0) #4
  %102 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i, align 4
  %rmw2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %rmw2.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmw2.i.i, align 4
  %call3.i.i = tail call i32 %105(ptr noundef %dev, i32 noundef 868608, i32 noundef 0, i32 noundef 48) #4
  br label %mt7921_dma_disable.exit.i

mt7921_dma_disable.exit.i:                        ; preds = %if.then.i.i, %for.end19.mt7921_dma_disable.exit.i_crit_edge
  %bus4.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %106 = ptrtoint ptr %bus4.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus4.i.i, align 4
  %rmw5.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %rmw5.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmw5.i.i, align 4
  %call6.i.i = tail call i32 %109(ptr noundef %dev, i32 noundef 869040, i32 noundef 64, i32 noundef 0) #4
  %110 = ptrtoint ptr %bus4.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus4.i.i, align 4
  %rmw8.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %rmw8.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmw8.i.i, align 4
  %call9.i.i = tail call i32 %113(ptr noundef %dev, i32 noundef 876548, i32 noundef 0, i32 noundef 268435456) #4
  %114 = ptrtoint ptr %bus4.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus4.i.i, align 4
  %rmw11.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %rmw11.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmw11.i.i, align 4
  %call12.i.i = tail call i32 %117(ptr noundef %dev, i32 noundef 868872, i32 noundef 404783109, i32 noundef 0) #4
  %call13.i.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 868872, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #4
  br i1 %call13.i.i, label %for.cond.preheader.i, label %mt7921_dma_disable.exit.i.cleanup_crit_edge

mt7921_dma_disable.exit.i.cleanup_crit_edge:      ; preds = %mt7921_dma_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.i:                             ; preds = %mt7921_dma_disable.exit.i
  %118 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %queue_ops, align 4
  %reset_q.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %reset_q.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reset_q.i, align 4
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx, align 4
  tail call void %121(ptr noundef %dev, ptr noundef %123) #4
  %124 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %queue_ops, align 4
  %reset_q.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %reset_q.1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reset_q.1.i, align 4
  %128 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.1, align 4
  tail call void %127(ptr noundef %dev, ptr noundef %129) #4
  %130 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %queue_ops, align 4
  %reset_q.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %131, i32 0, i32 9
  %132 = ptrtoint ptr %reset_q.2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reset_q.2.i, align 4
  %134 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.2, align 4
  tail call void %133(ptr noundef %dev, ptr noundef %135) #4
  %136 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %queue_ops, align 4
  %reset_q.3.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %reset_q.3.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reset_q.3.i, align 4
  %140 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.3, align 4
  tail call void %139(ptr noundef %dev, ptr noundef %141) #4
  %142 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %queue_ops, align 4
  %reset_q.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %143, i32 0, i32 9
  %144 = ptrtoint ptr %reset_q.4.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reset_q.4.i, align 4
  %146 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.4, align 4
  tail call void %145(ptr noundef %dev, ptr noundef %147) #4
  %148 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %queue_ops, align 4
  %reset_q.5.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %149, i32 0, i32 9
  %150 = ptrtoint ptr %reset_q.5.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reset_q.5.i, align 4
  %152 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.5, align 4
  tail call void %151(ptr noundef %dev, ptr noundef %153) #4
  %154 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %queue_ops, align 4
  %reset_q.6.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %155, i32 0, i32 9
  %156 = ptrtoint ptr %reset_q.6.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reset_q.6.i, align 4
  %158 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.6, align 4
  tail call void %157(ptr noundef %dev, ptr noundef %159) #4
  %160 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %queue_ops, align 4
  %reset_q6.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %161, i32 0, i32 9
  %162 = ptrtoint ptr %reset_q6.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reset_q6.i, align 4
  %164 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx6, align 4
  tail call void %163(ptr noundef %dev, ptr noundef %165) #4
  %166 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %queue_ops, align 4
  %reset_q6.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %167, i32 0, i32 9
  %168 = ptrtoint ptr %reset_q6.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reset_q6.1.i, align 4
  %170 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx6.1, align 4
  tail call void %169(ptr noundef %dev, ptr noundef %171) #4
  %172 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %queue_ops, align 4
  %reset_q6.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %173, i32 0, i32 9
  %174 = ptrtoint ptr %reset_q6.2.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reset_q6.2.i, align 4
  %176 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx6.2, align 4
  tail call void %175(ptr noundef %dev, ptr noundef %177) #4
  %178 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool14.not.i = icmp eq i32 %179, 0
  br i1 %tobool14.not.i, label %for.cond.preheader.i.mt7921_dma_reset.exit_crit_edge, label %for.body15.i

for.cond.preheader.i.mt7921_dma_reset.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_dma_reset.exit

for.body15.i:                                     ; preds = %for.cond.preheader.i
  %arrayidx13.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 0
  %180 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %queue_ops, align 4
  %reset_q17.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %181, i32 0, i32 9
  %182 = ptrtoint ptr %reset_q17.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reset_q17.i, align 4
  tail call void %183(ptr noundef %dev, ptr noundef %arrayidx13.i) #4
  %ndesc.1.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %184 = ptrtoint ptr %ndesc.1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ndesc.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool14.not.1.i = icmp eq i32 %185, 0
  br i1 %tobool14.not.1.i, label %for.body15.i.mt7921_dma_reset.exit_crit_edge, label %for.body15.1.i

for.body15.i.mt7921_dma_reset.exit_crit_edge:     ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_dma_reset.exit

for.body15.1.i:                                   ; preds = %for.body15.i
  %arrayidx13.1.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %186 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %queue_ops, align 4
  %reset_q17.1.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %187, i32 0, i32 9
  %188 = ptrtoint ptr %reset_q17.1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reset_q17.1.i, align 4
  tail call void %189(ptr noundef %dev, ptr noundef %arrayidx13.1.i) #4
  %ndesc.2.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %190 = ptrtoint ptr %ndesc.2.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %ndesc.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool14.not.2.i = icmp eq i32 %191, 0
  br i1 %tobool14.not.2.i, label %for.body15.1.i.mt7921_dma_reset.exit_crit_edge, label %for.body15.2.i

for.body15.1.i.mt7921_dma_reset.exit_crit_edge:   ; preds = %for.body15.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_dma_reset.exit

for.body15.2.i:                                   ; preds = %for.body15.1.i
  %arrayidx13.2.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2
  %192 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %queue_ops, align 4
  %reset_q17.2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %193, i32 0, i32 9
  %194 = ptrtoint ptr %reset_q17.2.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %reset_q17.2.i, align 4
  tail call void %195(ptr noundef %dev, ptr noundef %arrayidx13.2.i) #4
  %ndesc.3.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %196 = ptrtoint ptr %ndesc.3.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ndesc.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool14.not.3.i = icmp eq i32 %197, 0
  br i1 %tobool14.not.3.i, label %for.body15.2.i.mt7921_dma_reset.exit_crit_edge, label %for.body15.3.i

for.body15.2.i.mt7921_dma_reset.exit_crit_edge:   ; preds = %for.body15.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_dma_reset.exit

for.body15.3.i:                                   ; preds = %for.body15.2.i
  %arrayidx13.3.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3
  %198 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %queue_ops, align 4
  %reset_q17.3.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %199, i32 0, i32 9
  %200 = ptrtoint ptr %reset_q17.3.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reset_q17.3.i, align 4
  tail call void %201(ptr noundef %dev, ptr noundef %arrayidx13.3.i) #4
  %ndesc.4.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %202 = ptrtoint ptr %ndesc.4.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ndesc.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool14.not.4.i = icmp eq i32 %203, 0
  br i1 %tobool14.not.4.i, label %for.body15.3.i.mt7921_dma_reset.exit_crit_edge, label %for.body15.4.i

for.body15.3.i.mt7921_dma_reset.exit_crit_edge:   ; preds = %for.body15.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_dma_reset.exit

for.body15.4.i:                                   ; preds = %for.body15.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx13.4.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4
  %204 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %queue_ops, align 4
  %reset_q17.4.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %reset_q17.4.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reset_q17.4.i, align 4
  tail call void %207(ptr noundef %dev, ptr noundef %arrayidx13.4.i) #4
  br label %mt7921_dma_reset.exit

mt7921_dma_reset.exit:                            ; preds = %for.body15.4.i, %for.body15.3.i.mt7921_dma_reset.exit_crit_edge, %for.body15.2.i.mt7921_dma_reset.exit_crit_edge, %for.body15.1.i.mt7921_dma_reset.exit_crit_edge, %for.body15.i.mt7921_dma_reset.exit_crit_edge, %for.cond.preheader.i.mt7921_dma_reset.exit_crit_edge
  tail call void @mt76_tx_status_check(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call fastcc void @mt7921_dma_enable(ptr noundef %dev) #4
  %208 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool35.not = icmp eq i32 %209, 0
  br i1 %tobool35.not, label %mt7921_dma_reset.exit.cleanup_crit_edge, label %for.body37

mt7921_dma_reset.exit.cleanup_crit_edge:          ; preds = %mt7921_dma_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body37:                                       ; preds = %mt7921_dma_reset.exit
  %210 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %queue_ops, align 4
  %rx_reset = getelementptr inbounds %struct.mt76_queue_ops, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %rx_reset to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rx_reset, align 4
  tail call void %213(ptr noundef %dev, i32 noundef 0) #4
  %ndesc34.1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1, i32 8
  %214 = ptrtoint ptr %ndesc34.1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %ndesc34.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool35.not.1 = icmp eq i32 %215, 0
  br i1 %tobool35.not.1, label %for.body37.cleanup_crit_edge, label %for.body37.1

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body37.1:                                     ; preds = %for.body37
  %216 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %queue_ops, align 4
  %rx_reset.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %rx_reset.1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rx_reset.1, align 4
  tail call void %219(ptr noundef %dev, i32 noundef 1) #4
  %ndesc34.2 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2, i32 8
  %220 = ptrtoint ptr %ndesc34.2 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ndesc34.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool35.not.2 = icmp eq i32 %221, 0
  br i1 %tobool35.not.2, label %for.body37.1.cleanup_crit_edge, label %for.body37.2

for.body37.1.cleanup_crit_edge:                   ; preds = %for.body37.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body37.2:                                     ; preds = %for.body37.1
  %222 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %queue_ops, align 4
  %rx_reset.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %223, i32 0, i32 5
  %224 = ptrtoint ptr %rx_reset.2 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rx_reset.2, align 4
  tail call void %225(ptr noundef %dev, i32 noundef 2) #4
  %ndesc34.3 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3, i32 8
  %226 = ptrtoint ptr %ndesc34.3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ndesc34.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool35.not.3 = icmp eq i32 %227, 0
  br i1 %tobool35.not.3, label %for.body37.2.cleanup_crit_edge, label %for.body37.3

for.body37.2.cleanup_crit_edge:                   ; preds = %for.body37.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body37.3:                                     ; preds = %for.body37.2
  %228 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %queue_ops, align 4
  %rx_reset.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %229, i32 0, i32 5
  %230 = ptrtoint ptr %rx_reset.3 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %rx_reset.3, align 4
  tail call void %231(ptr noundef %dev, i32 noundef 3) #4
  %ndesc34.4 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4, i32 8
  %232 = ptrtoint ptr %ndesc34.4 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %ndesc34.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool35.not.4 = icmp eq i32 %233, 0
  br i1 %tobool35.not.4, label %for.body37.3.cleanup_crit_edge, label %for.body37.4

for.body37.3.cleanup_crit_edge:                   ; preds = %for.body37.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body37.4:                                     ; preds = %for.body37.3
  call void @__sanitizer_cov_trace_pc() #6
  %234 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %queue_ops, align 4
  %rx_reset.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %rx_reset.4 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %rx_reset.4, align 4
  tail call void %237(ptr noundef %dev, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %for.body37.4, %for.body37.3.cleanup_crit_edge, %for.body37.2.cleanup_crit_edge, %for.body37.1.cleanup_crit_edge, %for.body37.cleanup_crit_edge, %mt7921_dma_reset.exit.cleanup_crit_edge, %mt7921_dma_disable.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then.cleanup_crit_edge ], [ -110, %mt7921_dma_disable.exit.i.cleanup_crit_edge ], [ 0, %for.body37.4 ], [ 0, %for.body37.3.cleanup_crit_edge ], [ 0, %for.body37.2.cleanup_crit_edge ], [ 0, %for.body37.1.cleanup_crit_edge ], [ 0, %for.body37.cleanup_crit_edge ], [ 0, %mt7921_dma_reset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_wpdma_reinit_cond(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3(ptr noundef %dev, i32 noundef 1409286432) #4
  %4 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wr, align 4
  tail call void %8(ptr noundef %dev, i32 noundef 868868, i32 noundef 0) #4
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 4
  %wr3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wr3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr3, align 4
  tail call void %12(ptr noundef %dev, i32 noundef 65928, i32 noundef 0) #4
  %call4 = tail call i32 @mt7921_wpdma_reset(ptr noundef %dev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %wr8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr8, align 4
  tail call void %18(ptr noundef %dev, i32 noundef 65928, i32 noundef 255) #4
  %lp_wake = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 12, i32 4
  %19 = ptrtoint ptr %lp_wake to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lp_wake, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %lp_wake, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2
  %dev1 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %phy, align 8
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy, ptr %priv, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %bus_ops6 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %bus_ops6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bus_ops6, align 128
  %dev7 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 8
  %call = tail call ptr @devm_kmemdup(ptr noundef %7, ptr noundef %4, i32 noundef 32, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mt7921_rr, ptr %call, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mt7921_wr, ptr %wr, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mt7921_rmw, ptr %rmw, align 4
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %bus, align 4
  tail call void @mt76_dma_attach(ptr noundef %dev) #4
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %15(ptr noundef %dev, i32 noundef 868608, i32 noundef 48, i32 noundef 0) #4
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw2.i, align 4
  %call3.i = tail call i32 %19(ptr noundef %dev, i32 noundef 868608, i32 noundef 0, i32 noundef 48) #4
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw5.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw5.i, align 4
  %call6.i = tail call i32 %23(ptr noundef %dev, i32 noundef 869040, i32 noundef 64, i32 noundef 0) #4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %rmw8.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw8.i, align 4
  %call9.i = tail call i32 %27(ptr noundef %dev, i32 noundef 876548, i32 noundef 0, i32 noundef 268435456) #4
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %rmw11.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw11.i, align 4
  %call12.i = tail call i32 %31(ptr noundef %dev, i32 noundef 868872, i32 noundef 404783109, i32 noundef 0) #4
  %call13.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 868872, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #4
  br i1 %call13.i, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %rmw.i115 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rmw.i115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw.i115, align 4
  %call.i116 = tail call i32 %35(ptr noundef %dev, i32 noundef 402653504, i32 noundef 1, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %rmw2.i117 = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rmw2.i117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw2.i117, align 4
  %call3.i118 = tail call i32 %39(ptr noundef %dev, i32 noundef 402653504, i32 noundef 0, i32 noundef 1) #4
  %call4.i = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 402653504, i32 noundef 16, i32 noundef 16, i32 noundef 500) #4
  br i1 %call4.i, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %40 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy, align 8
  %dev.i.i = getelementptr inbounds %struct.mt76_phy, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call ptr @mt76_init_queue(ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 2048, i32 noundef 869120) #4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mt76_init_tx_queue.exit.i, label %mt76_init_tx_queue.exit.thread.i

mt76_init_tx_queue.exit.thread.i:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %qid3.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %qid3.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %qid3.i.i, align 4
  %q_tx.i.i = getelementptr inbounds %struct.mt76_phy, ptr %41, i32 0, i32 4
  %45 = ptrtoint ptr %q_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %q_tx.i.i, align 4
  br label %mt7921_init_tx_queues.exit.thread

mt76_init_tx_queue.exit.i:                        ; preds = %if.end17
  %cmp.i = icmp slt ptr %call.i.i, null
  br i1 %cmp.i, label %mt7921_init_tx_queues.exit, label %mt76_init_tx_queue.exit.i.mt7921_init_tx_queues.exit.thread_crit_edge

mt76_init_tx_queue.exit.i.mt7921_init_tx_queues.exit.thread_crit_edge: ; preds = %mt76_init_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_init_tx_queues.exit.thread

mt7921_init_tx_queues.exit.thread:                ; preds = %mt76_init_tx_queue.exit.i.mt7921_init_tx_queues.exit.thread_crit_edge, %mt76_init_tx_queue.exit.thread.i
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 8
  %q_tx.1.i = getelementptr inbounds %struct.mt76_phy, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %q_tx.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %q_tx.1.i, align 8
  %arrayidx5.1.i = getelementptr %struct.mt76_phy, ptr %47, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arrayidx5.1.i, align 4
  %51 = load ptr, ptr %phy, align 8
  %q_tx.2.i = getelementptr inbounds %struct.mt76_phy, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %q_tx.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %q_tx.2.i, align 8
  %arrayidx5.2.i = getelementptr %struct.mt76_phy, ptr %51, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %arrayidx5.2.i, align 4
  %55 = load ptr, ptr %phy, align 8
  %q_tx.3.i = getelementptr inbounds %struct.mt76_phy, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %q_tx.3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %q_tx.3.i, align 8
  %arrayidx5.3.i = getelementptr %struct.mt76_phy, ptr %55, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %arrayidx5.3.i, align 4
  %59 = load ptr, ptr %phy, align 8
  %q_tx.4.i = getelementptr inbounds %struct.mt76_phy, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %q_tx.4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %q_tx.4.i, align 8
  %arrayidx5.4.i = getelementptr %struct.mt76_phy, ptr %59, i32 0, i32 4, i32 4
  %62 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %arrayidx5.4.i, align 4
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %wr24 = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wr24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr24, align 4
  tail call void %66(ptr noundef %dev, i32 noundef 869888, i32 noundef 4) #4
  %call.i120 = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 0, i32 noundef 17, i32 noundef 256, i32 noundef 869120) #4
  %cmp.i.i = icmp ugt ptr %call.i120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mt76_init_mcu_queue.exit, label %mt76_init_mcu_queue.exit.thread

mt7921_init_tx_queues.exit:                       ; preds = %mt76_init_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

mt76_init_mcu_queue.exit.thread:                  ; preds = %mt7921_init_tx_queues.exit.thread
  %qid3.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i120, i32 0, i32 15
  %68 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 7, ptr %qid3.i, align 4
  %arrayidx.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 0
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i120, ptr %arrayidx.i, align 4
  %call.i122 = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 2, i32 noundef 16, i32 noundef 128, i32 noundef 869120) #4
  %cmp.i.i123 = icmp ugt ptr %call.i122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i123, label %mt76_init_mcu_queue.exit129, label %mt76_init_mcu_queue.exit129.thread

mt76_init_mcu_queue.exit:                         ; preds = %mt7921_init_tx_queues.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %call.i120 to i32
  br label %cleanup

mt76_init_mcu_queue.exit129.thread:               ; preds = %mt76_init_mcu_queue.exit.thread
  %qid3.i125 = getelementptr inbounds %struct.mt76_queue, ptr %call.i122, i32 0, i32 15
  %71 = ptrtoint ptr %qid3.i125 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 9, ptr %qid3.i125, align 4
  %arrayidx.i126 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %72 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i122, ptr %arrayidx.i126, align 4
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %73 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue_ops, align 4
  %alloc = getelementptr inbounds %struct.mt76_queue_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %alloc, align 4
  %q_rx = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 23
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %call33 = tail call i32 %76(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef 0, i32 noundef 512, i32 noundef 2048, i32 noundef 869632) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %mt76_init_mcu_queue.exit129.thread.cleanup_crit_edge

mt76_init_mcu_queue.exit129.thread.cleanup_crit_edge: ; preds = %mt76_init_mcu_queue.exit129.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mt76_init_mcu_queue.exit129:                      ; preds = %mt76_init_mcu_queue.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %call.i122 to i32
  br label %cleanup

if.end36:                                         ; preds = %mt76_init_mcu_queue.exit129.thread
  %78 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %queue_ops, align 4
  %alloc38 = getelementptr inbounds %struct.mt76_queue_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %alloc38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %alloc38, align 4
  %arrayidx40 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2
  %call41 = tail call i32 %81(ptr noundef %dev, ptr noundef %arrayidx40, i32 noundef 0, i32 noundef 512, i32 noundef 2048, i32 noundef 869696) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %82 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %queue_ops, align 4
  %alloc46 = getelementptr inbounds %struct.mt76_queue_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %alloc46 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %alloc46, align 4
  %call49 = tail call i32 %85(ptr noundef %dev, ptr noundef %q_rx, i32 noundef 0, i32 noundef 1536, i32 noundef 2048, i32 noundef 869664) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %86 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %queue_ops, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call54 = tail call i32 %89(ptr noundef %dev, ptr noundef nonnull @mt7921_poll_rx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp slt i32 %call54, 0
  br i1 %cmp, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %tx_napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 17
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27
  tail call fastcc void @netif_tx_napi_add(ptr noundef %tx_napi_dev, ptr noundef %tx_napi)
  tail call void @napi_enable(ptr noundef %tx_napi) #4
  tail call fastcc void @mt7921_dma_enable(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end52.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %mt76_init_mcu_queue.exit129, %mt76_init_mcu_queue.exit129.thread.cleanup_crit_edge, %mt76_init_mcu_queue.exit, %mt7921_init_tx_queues.exit, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ -110, %if.end13.cleanup_crit_edge ], [ %67, %mt7921_init_tx_queues.exit ], [ %70, %mt76_init_mcu_queue.exit ], [ %77, %mt76_init_mcu_queue.exit129 ], [ %call33, %mt76_init_mcu_queue.exit129.thread.cleanup_crit_edge ], [ %call41, %if.end36.cleanup_crit_edge ], [ %call49, %if.end44.cleanup_crit_edge ], [ %call54, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_rr(ptr noundef %mdev, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7921_reg_addr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mt7921_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mt7921_reg_addr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2.i = icmp ugt i32 %1, %offset
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %offset, %1
  %size.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp8.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp8.i, label %if.end4.i.for.inc.i_crit_edge, label %cleanup.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %mapped.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i, i32 1
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped.i, align 4
  %add.i = add i32 %5, %sub.i
  br label %__mt7921_reg_addr.exit

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 43
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %6 = add i32 %offset, -402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %6)
  %7 = icmp ult i32 %6, 12582912
  %8 = and i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %8)
  %9 = icmp eq i32 %8, 1879048192
  %or.cond.i = or i1 %7, %9
  %10 = and i32 %offset, -4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2080374784, i32 %10)
  %11 = icmp eq i32 %10, 2080374784
  %or.cond50.i = or i1 %11, %or.cond.i
  br i1 %or.cond50.i, label %if.then21.i, label %do.end.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr30.i.i = lshr i32 %offset, 16
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i.i, align 4
  %and.i.i = and i32 %offset, 65535
  %call.i.i = tail call i32 %15(ptr noundef %mdev, i32 noundef 1040972, i32 noundef 65535, i32 noundef %shr30.i.i) #4
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call50.i.i = tail call i32 %19(ptr noundef %mdev, i32 noundef 1040972) #4
  %add.i.i = or i32 %and.i.i, 262144
  br label %__mt7921_reg_addr.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev23.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 13
  %20 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef %offset) #7
  br label %__mt7921_reg_addr.exit

__mt7921_reg_addr.exit:                           ; preds = %do.end.i, %if.then21.i, %cleanup.i, %entry.__mt7921_reg_addr.exit_crit_edge
  %retval.2.i = phi i32 [ %add.i, %cleanup.i ], [ %add.i.i, %if.then21.i ], [ 0, %do.end.i ], [ %offset, %entry.__mt7921_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 1
  %22 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_ops, align 128
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call1 = tail call i32 %25(ptr noundef %mdev, i32 noundef %retval.2.i) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_wr(ptr noundef %mdev, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7921_reg_addr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mt7921_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mt7921_reg_addr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2.i = icmp ugt i32 %1, %offset
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %offset, %1
  %size.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp8.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp8.i, label %if.end4.i.for.inc.i_crit_edge, label %cleanup.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %mapped.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i, i32 1
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped.i, align 4
  %add.i = add i32 %5, %sub.i
  br label %__mt7921_reg_addr.exit

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 43
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %6 = add i32 %offset, -402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %6)
  %7 = icmp ult i32 %6, 12582912
  %8 = and i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %8)
  %9 = icmp eq i32 %8, 1879048192
  %or.cond.i = or i1 %7, %9
  %10 = and i32 %offset, -4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2080374784, i32 %10)
  %11 = icmp eq i32 %10, 2080374784
  %or.cond50.i = or i1 %11, %or.cond.i
  br i1 %or.cond50.i, label %if.then21.i, label %do.end.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr30.i.i = lshr i32 %offset, 16
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i.i, align 4
  %and.i.i = and i32 %offset, 65535
  %call.i.i = tail call i32 %15(ptr noundef %mdev, i32 noundef 1040972, i32 noundef 65535, i32 noundef %shr30.i.i) #4
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call50.i.i = tail call i32 %19(ptr noundef %mdev, i32 noundef 1040972) #4
  %add.i.i = or i32 %and.i.i, 262144
  br label %__mt7921_reg_addr.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev23.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 13
  %20 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef %offset) #7
  br label %__mt7921_reg_addr.exit

__mt7921_reg_addr.exit:                           ; preds = %do.end.i, %if.then21.i, %cleanup.i, %entry.__mt7921_reg_addr.exit_crit_edge
  %retval.2.i = phi i32 [ %add.i, %cleanup.i ], [ %add.i.i, %if.then21.i ], [ 0, %do.end.i ], [ %offset, %entry.__mt7921_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 1
  %22 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_ops, align 128
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr, align 4
  tail call void %25(ptr noundef %mdev, i32 noundef %retval.2.i, i32 noundef %val) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_rmw(ptr noundef %mdev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7921_reg_addr.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mt7921_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mt7921_reg_addr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2.i = icmp ugt i32 %1, %offset
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %offset, %1
  %size.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp8.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp8.i, label %if.end4.i.for.inc.i_crit_edge, label %cleanup.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %mapped.i = getelementptr [43 x %struct.anon.149], ptr @__mt7921_reg_addr.fixed_map, i32 0, i32 %i.052.i, i32 1
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped.i, align 4
  %add.i = add i32 %5, %sub.i
  br label %__mt7921_reg_addr.exit

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 43
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %6 = add i32 %offset, -402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %6)
  %7 = icmp ult i32 %6, 12582912
  %8 = and i32 %offset, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %8)
  %9 = icmp eq i32 %8, 1879048192
  %or.cond.i = or i1 %7, %9
  %10 = and i32 %offset, -4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2080374784, i32 %10)
  %11 = icmp eq i32 %10, 2080374784
  %or.cond50.i = or i1 %11, %or.cond.i
  br i1 %or.cond50.i, label %if.then21.i, label %do.end.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr30.i.i = lshr i32 %offset, 16
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 10
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i.i, align 4
  %and.i.i = and i32 %offset, 65535
  %call.i.i = tail call i32 %15(ptr noundef %mdev, i32 noundef 1040972, i32 noundef 65535, i32 noundef %shr30.i.i) #4
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call50.i.i = tail call i32 %19(ptr noundef %mdev, i32 noundef 1040972) #4
  %add.i.i = or i32 %and.i.i, 262144
  br label %__mt7921_reg_addr.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev23.i = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 13
  %20 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef %offset) #7
  br label %__mt7921_reg_addr.exit

__mt7921_reg_addr.exit:                           ; preds = %do.end.i, %if.then21.i, %cleanup.i, %entry.__mt7921_reg_addr.exit_crit_edge
  %retval.2.i = phi i32 [ %add.i, %cleanup.i ], [ %add.i.i, %if.then21.i ], [ 0, %do.end.i ], [ %offset, %entry.__mt7921_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 1
  %22 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_ops, align 128
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %25(ptr noundef %mdev, i32 noundef %retval.2.i, i32 noundef %mask, i32 noundef %val) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_poll_rx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1280
  %pm = getelementptr i8, ptr %1, i32 15488
  %wake.i = getelementptr i8, ptr %1, i32 15664
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  %state.i = getelementptr i8, ptr %1, i32 -1268
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #4
  %wq = getelementptr i8, ptr %1, i32 9504
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %1, i32 15568
  %call.i15 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %wake_work) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %1, i32 15708
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %call5 = tail call i32 @mt76_dma_rx_poll(ptr noundef %napi, i32 noundef %budget) #4
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %1, i32 15904
  %10 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_activity.i, align 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.mt76_connac_pm_unref.exit_crit_edge

if.end.mt76_connac_pm_unref.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.end
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i19 = icmp eq i32 %15, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #4
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  %retval.0 = phi i32 [ %call5, %mt76_connac_pm_unref.exit ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %dev, ptr noundef %napi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %state = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #4
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @mt7921_poll_tx, i32 noundef 64) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_poll_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8152
  %pm = getelementptr i8, ptr %napi, i32 8616
  %wake.i = getelementptr i8, ptr %napi, i32 8792
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  %state.i = getelementptr i8, ptr %napi, i32 -8140
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #4
  %wq = getelementptr i8, ptr %napi, i32 2632
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 32
  %wake_work = getelementptr i8, ptr %napi, i32 8696
  %call.i17 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wake_work) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr i8, ptr %napi, i32 8836
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  %queue_ops.i = getelementptr i8, ptr %napi, i32 -36
  %7 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %tx_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_cleanup.i, align 4
  %q_mcu.i = getelementptr i8, ptr %napi, i32 -808
  %11 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q_mcu.i, align 16
  tail call void %10(ptr noundef %add.ptr, ptr noundef %12, i1 noundef zeroext false) #4
  %13 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %tx_cleanup2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_cleanup2.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %napi, i32 -804
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.i, align 4
  tail call void %16(ptr noundef %add.ptr, ptr noundef %18, i1 noundef zeroext false) #4
  %call.i18 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #4
  br i1 %call.i18, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 134742000) #4
  %state.i.i = getelementptr i8, ptr %napi, i32 8492
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %irq_tasklet.i = getelementptr i8, ptr %napi, i32 8488
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then.i.i, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %napi, i32 9032
  %20 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_activity.i, align 4
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end6.mt76_connac_pm_unref.exit_crit_edge

if.end6.mt76_connac_pm_unref.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i22 = icmp eq i32 %25, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, label %if.then.i

land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_connac_pm_unref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #4
  br label %mt76_connac_pm_unref.exit

mt76_connac_pm_unref.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mt76_connac_pm_unref.exit_crit_edge, %if.end6.mt76_connac_pm_unref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #4
  br label %cleanup

cleanup:                                          ; preds = %mt76_connac_pm_unref.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7921_dma_enable(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr.i, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 870016, i32 noundef 4) #4
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %wr2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr2.i, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 870024, i32 noundef 4194308) #4
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr4.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr4.i, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 870028, i32 noundef 8388612) #4
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %wr6.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr6.i, align 4
  tail call void %15(ptr noundef %dev, i32 noundef 870032, i32 noundef 12582916) #4
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %wr8.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr8.i, align 4
  tail call void %19(ptr noundef %dev, i32 noundef 870036, i32 noundef 16777220) #4
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %wr10.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr10.i, align 4
  tail call void %23(ptr noundef %dev, i32 noundef 869888, i32 noundef 20971524) #4
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %wr12.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr12.i, align 4
  tail call void %27(ptr noundef %dev, i32 noundef 869892, i32 noundef 25165828) #4
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %wr14.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr14.i, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 869896, i32 noundef 29360132) #4
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %wr16.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr16.i, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 869900, i32 noundef 33554436) #4
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 4
  %wr18.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr18.i, align 4
  tail call void %39(ptr noundef %dev, i32 noundef 869904, i32 noundef 37748740) #4
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 4
  %wr20.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr20.i, align 4
  tail call void %43(ptr noundef %dev, i32 noundef 869908, i32 noundef 41943044) #4
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 4
  %wr22.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wr22.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr22.i, align 4
  tail call void %47(ptr noundef %dev, i32 noundef 869912, i32 noundef 46137348) #4
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 4
  %wr24.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wr24.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr24.i, align 4
  tail call void %51(ptr noundef %dev, i32 noundef 869952, i32 noundef 54525956) #4
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 4
  %wr26.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr26.i, align 4
  tail call void %55(ptr noundef %dev, i32 noundef 869956, i32 noundef 58720260) #4
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr, align 4
  tail call void %59(ptr noundef %dev, i32 noundef 868876, i32 noundef -1) #4
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr2, align 4
  tail call void %63(ptr noundef %dev, i32 noundef 869104, i32 noundef 0) #4
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %67(ptr noundef %dev, i32 noundef 868872, i32 noundef 0, i32 noundef 1344311360) #4
  %68 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i, align 4
  %rmw5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %rmw5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw5, align 4
  %call6 = tail call i32 %71(ptr noundef %dev, i32 noundef 868872, i32 noundef 0, i32 noundef 5) #4
  %72 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i, align 4
  %rmw8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %rmw8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmw8, align 4
  %call9 = tail call i32 %75(ptr noundef %dev, i32 noundef 1409286432, i32 noundef 0, i32 noundef 2) #4
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 675807221) #4
  %state.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 3, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.mt7921_irq_enable.exit_crit_edge

entry.mt7921_irq_enable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7921_irq_enable.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %irq_tasklet.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #4
  br label %mt7921_irq_enable.exit

mt7921_irq_enable.exit:                           ; preds = %if.then.i.i, %entry.mt7921_irq_enable.exit_crit_edge
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 4
  %rmw11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %rmw11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmw11, align 4
  %call12 = tail call i32 %79(ptr noundef %dev, i32 noundef 868852, i32 noundef 0, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7921_dma_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 868872, i32 noundef 404783109, i32 noundef 0) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw2, align 4
  %call3 = tail call i32 %7(ptr noundef %dev, i32 noundef 868608, i32 noundef 48, i32 noundef 0) #4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw5, align 4
  %call6 = tail call i32 %11(ptr noundef %dev, i32 noundef 868608, i32 noundef 0, i32 noundef 48) #4
  tail call void @mt76_dma_cleanup(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_init_queue(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_tx_status_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_dma_rx_poll(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/dma.c", i32 330, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7921_wpdma_reinit_cond._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7921_wpdma_reinit_cond._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__mt7921_reg_addr.fixed_map, !9, !"fixed_map", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/dma.c", i32 87, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/dma.c", i32 155, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__mt7921_reg_addr._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__mt7921_reg_addr._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
