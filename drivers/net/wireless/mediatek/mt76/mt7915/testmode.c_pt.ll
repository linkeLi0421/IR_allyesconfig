; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/testmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_testmode_ops = type { ptr, ptr, ptr }
%struct.reg_band = type { [2 x i32] }
%struct.mt7915_tm_cmd = type { i8, i8, [2 x i8], %union.anon.155 }
%union.anon.155 = type { %struct.mt7915_tm_freq_offset, [64 x i8] }
%struct.mt7915_tm_freq_offset = type { i8, i32 }
%struct.anon.159 = type { i8, i8, [2 x i8] }
%struct.mt7915_tm_rf_test = type { i8, i8, [2 x i8], %union.anon.156 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, %union.anon.158 }
%union.anon.158 = type { i32, [76 x i8] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.mt7915_mcu_tx = type { i8, i8, i8, i8, [4 x %struct.edca] }
%struct.edca = type { i8, i8, i8, i8, i16, i16 }
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
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.145 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.145 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.mt7915_tm_trx = type { i8, i8, i8, i8 }
%struct.mt7915_dev = type { %union.anon.146, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.146 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.147 = type { i8, i8 }
%struct.mt7915_tm_clean_txq = type { i8, i8, i8, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7915_tm_slot_time = type { i8, i8, i8, i8, i16, i8, [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tm_tx_cont = type { i8, i8, i8, i8, i16, i8, i8 }
%struct.anon.160 = type { i8, i8, i8, i8, i8, [3 x i8] }

@mt7915_testmode_ops = dso_local constant { %struct.mt76_testmode_ops, [20 x i8] } { %struct.mt76_testmode_ops { ptr @mt7915_tm_set_state, ptr @mt7915_tm_set_params, ptr @mt7915_tm_dump_stats }, [20 x i8] zeroinitializer }, align 32
@mt7915_tm_set_tx_frames.spe_idx_map = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\01\00\03\02\04\00\09\08\06\0A\10\0C\12\00", [16 x i8] zeroinitializer }, align 32
@reg_backup_list = internal constant { [17 x %struct.reg_band], [56 x i8] } { [17 x %struct.reg_band] [%struct.reg_band { [2 x i32] [i32 133228, i32 657516] }, %struct.reg_band { [2 x i32] [i32 133232, i32 657520] }, %struct.reg_band { [2 x i32] [i32 133212, i32 657500] }, %struct.reg_band { [2 x i32] [i32 133216, i32 657504] }, %struct.reg_band { [2 x i32] [i32 133220, i32 657508] }, %struct.reg_band { [2 x i32] [i32 133224, i32 657512] }, %struct.reg_band { [2 x i32] [i32 133272, i32 657560] }, %struct.reg_band { [2 x i32] [i32 135648, i32 659936] }, %struct.reg_band { [2 x i32] [i32 135168, i32 659456] }, %struct.reg_band { [2 x i32] [i32 133360, i32 657648] }, %struct.reg_band { [2 x i32] [i32 133364, i32 657652] }, %struct.reg_band { [2 x i32] [i32 135324, i32 659612] }, %struct.reg_band { [2 x i32] [i32 135332, i32 659620] }, %struct.reg_band { [2 x i32] [i32 134548, i32 658836] }, %struct.reg_band { [2 x i32] [i32 134552, i32 658840] }, %struct.reg_band { [2 x i32] [i32 136192, i32 660480] }, %struct.reg_band { [2 x i32] [i32 136196, i32 660484] }], [56 x i8] zeroinitializer }, align 32
@switch.table.mt7915_tm_set_state = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 64, i16 128, i16 256, i16 512, i16 576, i16 640, i16 704], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.1 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"mt7915_testmode_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 780, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"spe_idx_map\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 434, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"reg_backup_list\00", align 1
@___asan_gen_.9 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/testmode.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 31, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [33 x i8] c"switch.table.mt7915_tm_set_state\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @mt7915_testmode_ops, ptr @mt7915_tm_set_tx_frames.spe_idx_map, ptr @reg_backup_list, ptr @switch.table.mt7915_tm_set_state], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_testmode_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_tm_set_tx_frames.spe_idx_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_backup_list to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7915_tm_set_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_tm_set_state(ptr nocapture noundef %mphy, i32 noundef %state) #0 align 64 {
entry:
  %req.i35.i = alloca %struct.mt7915_tm_cmd, align 1
  %req.i.i103 = alloca %struct.anon.159, align 1
  %req.i2.i = alloca %struct.mt7915_tm_rf_test, align 1
  %req.i.i88 = alloca %struct.mt7915_tm_rf_test, align 1
  %req.i = alloca %struct.mt7915_tm_rf_test, align 1
  %req.i13.i = alloca %struct.mt7915_tm_cmd, align 1
  %req.i.i74 = alloca %struct.mt7915_tm_cmd, align 1
  %req.i135.i = alloca %struct.mt7915_tm_cmd, align 1
  %rate.i.i = alloca %struct.rate_info, align 2
  %req.i4.i.i = alloca %struct.mt7915_mcu_tx, align 1
  %req.i.i.i = alloca %struct.mt7915_tm_cmd, align 1
  %req.i119.i = alloca %struct.mt7915_tm_cmd, align 1
  %req.i.i = alloca %struct.mt7915_tm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %test = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 8
  store i32 %state, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp4 = icmp eq i32 %state, 2
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %tx_duty_cycle.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 14
  %8 = ptrtoint ptr %tx_duty_cycle.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_duty_cycle.i, align 1
  %tx_time2.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 15
  %10 = ptrtoint ptr %tx_time2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_time2.i, align 4
  %tx_ipg.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 16
  %12 = ptrtoint ptr %tx_ipg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ipg.i, align 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i.i) #4
  %14 = getelementptr inbounds i8, ptr %req.i.i, i32 2
  %15 = call ptr @memset(ptr %14, i32 0, i32 74)
  %16 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %req.i.i, align 1
  %param_idx.i.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %param_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %param_idx.i.i, align 1
  %param.i.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %param.i.i, align 1
  %band.i.i = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i.i, i32 0, i32 2
  %phy4.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %7, i32 0, i32 4
  %cmp.i.i = icmp ne ptr %phy4.i.i, %1
  %conv6.i.i = zext i1 %cmp.i.i to i8
  %19 = ptrtoint ptr %band.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.i.i, ptr %band.i.i, align 1
  %call.i.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %7, i32 noundef 15853, ptr noundef nonnull %req.i.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i.i) #4
  %idx.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 36, i32 6
  %20 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idx.i, align 2
  %conv.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i119.i) #4
  %24 = getelementptr inbounds i8, ptr %req.i119.i, i32 2
  %25 = call ptr @memset(ptr %24, i32 0, i32 74)
  %26 = ptrtoint ptr %req.i119.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %req.i119.i, align 1
  %param_idx.i121.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i119.i, i32 0, i32 1
  %27 = ptrtoint ptr %param_idx.i121.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 28, ptr %param_idx.i121.i, align 1
  %param.i122.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i119.i, i32 0, i32 3
  %wcid2.i.i = getelementptr inbounds %struct.mt7915_tm_clean_txq, ptr %param.i122.i, i32 0, i32 1
  %28 = ptrtoint ptr %wcid2.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %wcid2.i.i, align 1
  %band.i123.i = getelementptr inbounds %struct.mt7915_tm_clean_txq, ptr %param.i122.i, i32 0, i32 2
  %phy3.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %23, i32 0, i32 4
  %cmp.i124.i = icmp ne ptr %phy3.i.i, %1
  %conv4.i.i = zext i1 %cmp.i124.i to i8
  %29 = ptrtoint ptr %band.i123.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv4.i.i, ptr %band.i123.i, align 1
  %call.i.i125.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %23, i32 noundef 15853, ptr noundef nonnull %req.i119.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i119.i) #4
  br i1 %cmp4, label %if.then.i, label %if.then.if.end16.i_crit_edge

if.then.if.end16.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then.i:                                        ; preds = %if.then
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.mt76_dev, ptr %31, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mutex.i.i) #4
  %call.i.i = call i32 @mt7915_set_channel(ptr noundef %1) #4
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %mutex2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %33, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mutex2.i.i, i32 noundef 0) #4
  %call22.i.i = call i32 @mt7915_mcu_set_chan_info(ptr noundef %1, i32 noundef 20205) #4
  %tx_spe_idx.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 13
  %34 = ptrtoint ptr %tx_spe_idx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_spe_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not.i = icmp eq i8 %35, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then.i.if.end16.sink.split.i_crit_edge

if.then.i.if.end16.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %tx_antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 12
  %36 = ptrtoint ptr %tx_antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_antenna_mask.i, align 1
  %cmp.not.i = icmp eq ptr %phy4.i.i, %1
  %38 = lshr i8 %37, 2
  %spec.select.i = select i1 %cmp.not.i, i8 %37, i8 %38
  %idxprom.i = zext i8 %spec.select.i to i32
  %arrayidx.i = getelementptr [16 x i8], ptr @mt7915_tm_set_tx_frames.spe_idx_map, i32 0, i32 %idxprom.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.else.i, %if.then.i.if.end16.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %40, %if.else.i ], [ %35, %if.then.i.if.end16.sink.split.i_crit_edge ]
  %spe_idx.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 6
  %41 = ptrtoint ptr %spe_idx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink.i, ptr %spe_idx.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.then.if.end16.i_crit_edge
  %tx_rate_mode.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 5
  %42 = ptrtoint ptr %tx_rate_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_rate_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp19.i = icmp eq i8 %43, 7
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  %..i.i = select i1 %cmp19.i, i32 2, i32 5
  %op_mode.0.i.i = select i1 %cmp4, i32 %..i.i, i32 1
  %call.i126.i = call i32 @mt7915_mcu_set_muru_ctrl(ptr noundef %45, i32 noundef 14, i32 noundef %op_mode.0.i.i) #4
  %conv22.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool24.not.i = icmp eq i32 %11, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %tobool24.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not.i = icmp eq i32 %13, 0
  %or.cond117.i = select i1 %or.cond.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond117.i, label %if.then27.i, label %if.else29.i

if.then27.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul i32 %11, 100
  %div.i = udiv i32 %mul.i, %conv22.i
  %sub.i = sub i32 %div.i, %11
  br label %if.end48.i

if.else29.i:                                      ; preds = %if.end16.i
  %tobool24.not.not.i = xor i1 %tobool24.not.i, true
  %or.cond118.not.i = select i1 %tobool23.not.i, i1 true, i1 %tobool24.not.not.i
  %brmerge.i = select i1 %or.cond118.not.i, i1 true, i1 %tobool26.not.i
  %.mux.i = select i1 %or.cond118.not.i, i32 %11, i32 0
  %.mux145.i = select i1 %or.cond118.not.i, i32 %13, i32 0
  br i1 %brmerge.i, label %if.else29.i.if.end48.i_crit_edge, label %if.then36.i

if.else29.i.if.end48.i_crit_edge:                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i

if.then36.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %9)
  %cmp38.i = icmp ult i8 %9, 100
  br i1 %cmp38.i, label %if.then40.i, label %if.then36.i.if.end48.i_crit_edge

if.then36.i.if.end48.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i

if.then40.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul42.i = mul i32 %13, %conv22.i
  %sub44.i = sub nsw i32 100, %conv22.i
  %div45.i = udiv i32 %mul42.i, %sub44.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then40.i, %if.then36.i.if.end48.i_crit_edge, %if.else29.i.if.end48.i_crit_edge, %if.then27.i
  %tx_time.0.i = phi i32 [ %div45.i, %if.then40.i ], [ 0, %if.then36.i.if.end48.i_crit_edge ], [ %.mux.i, %if.else29.i.if.end48.i_crit_edge ], [ %11, %if.then27.i ]
  %ipg.0.i = phi i32 [ %13, %if.then40.i ], [ %13, %if.then36.i.if.end48.i_crit_edge ], [ %.mux145.i, %if.else29.i.if.end48.i_crit_edge ], [ %sub.i, %if.then27.i ]
  %46 = ptrtoint ptr %tx_rate_mode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tx_rate_mode.i, align 2
  %48 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i128.i = icmp eq i8 %47, 0
  %conv3.i.i = select i1 %cmp.i128.i, i32 0, i32 6
  %phy4.i129.i = getelementptr inbounds %struct.mt7915_dev, ptr %49, i32 0, i32 4
  %cmp5.not.i.i = icmp eq ptr %phy4.i129.i, %1
  %add10.i.i = add nuw nsw i32 %conv3.i.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i.i, i32 %ipg.0.i)
  %cmp11.i.i = icmp ugt i32 %add10.i.i, %ipg.0.i
  br i1 %cmp11.i.i, label %if.end48.i.do.end71.i.i_crit_edge, label %if.end14.i.i

if.end48.i.do.end71.i.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71.i.i

if.end14.i.i:                                     ; preds = %if.end48.i
  %sub.i.i = sub i32 %ipg.0.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %sub.i.i)
  %cmp18.i.i = icmp ult i32 %sub.i.i, 137
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.else.i.i

if.then20.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = trunc i32 %sub.i.i to i8
  %conv23.i.i = add i8 %50, -9
  br label %do.end71.i.i

if.else.i.i:                                      ; preds = %if.end14.i.i
  %add25.i.i = add i32 %sub.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %add25.i.i)
  %tobool27.not7.i.i = icmp ult i32 %add25.i.i, 18
  br i1 %tobool27.not7.i.i, label %if.else.i.i.while.end.i.i_crit_edge, label %while.body.preheader.i.i

if.else.i.i.while.end.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.else.i.i
  %div.i.i = udiv i32 %add25.i.i, 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %val.09.i.i = phi i32 [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i.i, %while.body.preheader.i.i ]
  %cw.08.i.i = phi i16 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %shr.i.i = lshr i32 %val.09.i.i, 1
  %inc.i.i = add nuw nsw i16 %cw.08.i.i, 1
  %tobool27.not.i.i = icmp ult i32 %val.09.i.i, 4
  br i1 %tobool27.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.else.i.i.while.end.i.i_crit_edge
  %cw.0.lcssa.i.i = phi i16 [ 0, %if.else.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %51 = call i16 @llvm.umin.i16(i16 %cw.0.lcssa.i.i, i16 16) #4
  %conv33.i.i = zext i16 %51 to i32
  %notmask.i.i = shl nsw i32 -1, %conv33.i.i
  %sub34.i.i = xor i32 %notmask.i.i, -1
  %mul.neg.i.i = mul i32 %sub34.i.i, -9
  %sub36.i.i = add i32 %mul.neg.i.i, %sub.i.i
  %div38.i.i = udiv i32 %sub36.i.i, 9
  %conv39.i.i = trunc i32 %div38.i.i to i8
  %conv40.i.i = and i32 %div38.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv40.i.i)
  %cmp41.not.i.i = icmp eq i32 %conv40.i.i, 0
  %spec.store.select144.i.i = select i1 %cmp41.not.i.i, i8 %conv39.i.i, i8 15
  %conv45.i.i = zext i8 %spec.store.select144.i.i to i32
  %mul47.neg.i.i = mul nsw i32 %conv45.i.i, -9
  %sub48.i.i = add i32 %mul47.neg.i.i, %sub36.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub48.i.i)
  %cmp49.i.i = icmp ugt i32 %sub48.i.i, 10
  br i1 %cmp49.i.i, label %if.then51.i.i, label %while.end.i.i.do.end71.i.i_crit_edge

while.end.i.i.do.end71.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71.i.i

if.then51.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = call i32 @llvm.umin.i32(i32 %sub48.i.i, i32 127) #4
  %53 = trunc i32 %52 to i8
  br label %do.end71.i.i

do.end71.i.i:                                     ; preds = %if.then51.i.i, %while.end.i.i.do.end71.i.i_crit_edge, %if.then20.i.i, %if.end48.i.do.end71.i.i_crit_edge
  %sifs.1.i.i = phi i8 [ %conv23.i.i, %if.then20.i.i ], [ 10, %if.end48.i.do.end71.i.i_crit_edge ], [ 10, %while.end.i.i.do.end71.i.i_crit_edge ], [ %53, %if.then51.i.i ]
  %aifsn.0.i.i = phi i8 [ 1, %if.then20.i.i ], [ 1, %if.end48.i.do.end71.i.i_crit_edge ], [ %spec.store.select144.i.i, %while.end.i.i.do.end71.i.i_crit_edge ], [ %spec.store.select144.i.i, %if.then51.i.i ]
  %cw.1.i.i = phi i16 [ 0, %if.then20.i.i ], [ 0, %if.end48.i.do.end71.i.i_crit_edge ], [ %51, %while.end.i.i.do.end71.i.i_crit_edge ], [ %51, %if.then51.i.i ]
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %49, i32 0, i32 10
  %54 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %cond74.i.i = select i1 %cmp5.not.i.i, i32 135168, i32 659456
  %add75.i.i = or i32 %cond74.i.i, 152
  %call.i130.i = call i32 %57(ptr noundef %49, i32 noundef %add75.i.i) #4
  %and.i.i = and i32 %call.i130.i, 255
  %mul77.i.i = mul nuw nsw i32 %and.i.i, 50
  %sub81.i.i = sub nsw i32 7500, %mul77.i.i
  %div82.i.i = udiv i32 %sub81.i.i, 50
  %conv83.i.i = zext i8 %sifs.1.i.i to i32
  %mul84.i.i = mul nuw nsw i32 %conv83.i.i, 1000
  %sub85.i.i = add nsw i32 %mul84.i.i, -1500
  %sub86.i.i = sub nsw i32 %sub85.i.i, %mul77.i.i
  %div87.i.i = udiv i32 %sub86.i.i, 50
  %58 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmw.i.i, align 4
  %and114.i.i = and i32 %div87.i.i, 511
  %add92.i.i = or i32 %cond74.i.i, 156
  %shl137.i.i = shl i32 %div82.i.i, 16
  %and138.i.i = and i32 %shl137.i.i, 33488896
  %or.i.i = or i32 %and138.i.i, %and114.i.i
  %call139.i.i = call i32 %61(ptr noundef %49, i32 noundef %add92.i.i, i32 noundef 0, i32 noundef %or.i.i) #4
  %62 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i.i.i) #4
  %64 = getelementptr inbounds i8, ptr %req.i.i.i, i32 2
  %65 = call ptr @memset(ptr %64, i32 0, i32 74)
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %test.i.i.i = getelementptr inbounds %struct.mt76_phy, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %test.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %test.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i.i = icmp ne i32 %69, 0
  %conv.i.i.i = zext i1 %cmp.i.i.i to i8
  %70 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i.i.i, ptr %req.i.i.i, align 1
  %param_idx.i.i.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %param_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 19, ptr %param_idx.i.i.i, align 1
  %param.i.i.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 9, ptr %param.i.i.i, align 1
  %sifs3.i.i.i = getelementptr inbounds %struct.mt7915_tm_slot_time, ptr %param.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %sifs3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %sifs.1.i.i, ptr %sifs3.i.i.i, align 1
  %rifs.i.i.i = getelementptr inbounds %struct.mt7915_tm_slot_time, ptr %param.i.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %rifs.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 2, ptr %rifs.i.i.i, align 1
  %eifs.i.i.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i.i, i32 0, i32 3, i32 0, i32 1
  %75 = ptrtoint ptr %eifs.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 15360, ptr %eifs.i.i.i, align 1
  %band.i.i.i = getelementptr inbounds %struct.mt7915_tm_slot_time, ptr %param.i.i.i, i32 0, i32 5
  %phy4.i.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %63, i32 0, i32 4
  %cmp5.i.i.i = icmp ne ptr %phy4.i.i.i, %1
  %conv7.i.i.i = zext i1 %cmp5.i.i.i to i8
  %76 = ptrtoint ptr %band.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv7.i.i.i, ptr %band.i.i.i, align 1
  %call.i.i.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %63, i32 noundef 15853, ptr noundef nonnull %req.i.i.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i.i.i) #4
  %conv142.i.i = trunc i16 %cw.1.i.i to i8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req.i4.i.i) #4
  %77 = getelementptr inbounds i8, ptr %req.i4.i.i, i32 1
  %78 = call ptr @memset(ptr %77, i32 0, i32 35)
  %79 = ptrtoint ptr %req.i4.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %req.i4.i.i, align 1
  %edca.i.i.i = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req.i4.i.i, i32 0, i32 4
  %80 = ptrtoint ptr %edca.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %edca.i.i.i, align 2
  %set.i.i.i = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req.i4.i.i, i32 0, i32 4, i32 0, i32 1
  %81 = ptrtoint ptr %set.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 15, ptr %set.i.i.i, align 1
  %aifs1.i.i.i = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req.i4.i.i, i32 0, i32 4, i32 0, i32 2
  %82 = ptrtoint ptr %aifs1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %aifsn.0.i.i, ptr %aifs1.i.i.i, align 2
  %cw_min2.i.i.i = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req.i4.i.i, i32 0, i32 4, i32 0, i32 3
  %83 = ptrtoint ptr %cw_min2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv142.i.i, ptr %cw_min2.i.i.i, align 1
  %84 = shl nuw nsw i16 %cw.1.i.i, 8
  %cw_max3.i.i.i = getelementptr inbounds %struct.mt7915_mcu_tx, ptr %req.i4.i.i, i32 0, i32 4, i32 0, i32 4
  %85 = ptrtoint ptr %cw_max3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %cw_max3.i.i.i, align 2
  %call.i.i131.i = call i32 @mt7915_mcu_update_edca(ptr noundef %49, ptr noundef nonnull %req.i4.i.i) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req.i4.i.i) #4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rate.i.i) #4
  %88 = getelementptr inbounds i8, ptr %rate.i.i, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 0, ptr %88, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_time.0.i)
  %tobool.not.i.i = icmp eq i32 %tx_time.0.i, 0
  br i1 %tobool.not.i.i, label %do.end71.i.i.mt7915_tm_set_tx_len.exit.i_crit_edge, label %if.end.i.i

do.end71.i.i.mt7915_tm_set_tx_len.exit.i_crit_edge: ; preds = %do.end71.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_set_tx_len.exit.i

if.end.i.i:                                       ; preds = %do.end71.i.i
  %tx_rate_idx.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 17, i32 6
  %90 = ptrtoint ptr %tx_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %tx_rate_idx.i.i, align 1
  %mcs.i.i = getelementptr inbounds %struct.rate_info, ptr %rate.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %mcs.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %mcs.i.i, align 1
  %tx_rate_nss.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 17, i32 7
  %93 = ptrtoint ptr %tx_rate_nss.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %tx_rate_nss.i.i, align 4
  %nss.i.i = getelementptr inbounds %struct.rate_info, ptr %rate.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %nss.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %nss.i.i, align 2
  %tx_rate_mode.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 17, i32 5
  %96 = ptrtoint ptr %tx_rate_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tx_rate_mode.i.i, align 2
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i8 %97, label %if.end.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %if.end.i.i.sw.bb.i.i_crit_edge
    i8 1, label %if.end.i.i.sw.bb.i.i_crit_edge132
    i8 2, label %sw.bb8.i.i
    i8 3, label %sw.bb22.i.i
    i8 4, label %if.end.i.i.sw.bb33.i.i_crit_edge
    i8 5, label %if.end.i.i.sw.bb33.i.i_crit_edge133
    i8 6, label %if.end.i.i.sw.bb33.i.i_crit_edge134
    i8 7, label %if.end.i.i.sw.bb33.i.i_crit_edge135
  ]

if.end.i.i.sw.bb33.i.i_crit_edge135:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33.i.i

if.end.i.i.sw.bb33.i.i_crit_edge134:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33.i.i

if.end.i.i.sw.bb33.i.i_crit_edge133:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33.i.i

if.end.i.i.sw.bb33.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33.i.i

if.end.i.i.sw.bb.i.i_crit_edge132:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge132
  %chandef.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 5
  %99 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chandef.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.i132.i = icmp eq i32 %102, 1
  %sband_5g.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 11
  %sband_2g.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 10
  %sband.0.i.i = select i1 %cmp.i132.i, ptr %sband_5g.i.i, ptr %sband_2g.i.i
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bitrates.i.i, align 4
  %idxprom.i.i = zext i8 %91 to i32
  %bitrate7.i.i = getelementptr %struct.ieee80211_rate, ptr %104, i32 %idxprom.i.i, i32 1
  %105 = ptrtoint ptr %bitrate7.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %bitrate7.i.i, align 4
  %107 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %88, align 2
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i.i = shl i8 %94, 3
  %add.i.i = add i8 %mul.i.i, %91
  %108 = ptrtoint ptr %mcs.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %add.i.i, ptr %mcs.i.i, align 1
  %tx_rate_sgi.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 17, i32 8
  %109 = ptrtoint ptr %tx_rate_sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tx_rate_sgi.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool16.not.i.i = icmp eq i8 %110, 0
  %spec.select.i.i = select i1 %tobool16.not.i.i, i8 1, i8 5
  br label %sw.epilog.i.i

sw.bb22.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tx_rate_sgi26.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 17, i32 8
  %111 = ptrtoint ptr %tx_rate_sgi26.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %tx_rate_sgi26.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool27.not.i133.i = icmp eq i8 %112, 0
  %spec.select1.i.i = select i1 %tobool27.not.i133.i, i8 2, i8 6
  br label %sw.epilog.i.i

sw.bb33.i.i:                                      ; preds = %if.end.i.i.sw.bb33.i.i_crit_edge, %if.end.i.i.sw.bb33.i.i_crit_edge133, %if.end.i.i.sw.bb33.i.i_crit_edge134, %if.end.i.i.sw.bb33.i.i_crit_edge135
  %tx_rate_sgi34.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 17, i32 8
  %113 = ptrtoint ptr %tx_rate_sgi34.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %tx_rate_sgi34.i.i, align 1
  %he_gi.i.i = getelementptr inbounds %struct.rate_info, ptr %rate.i.i, i32 0, i32 5
  %115 = ptrtoint ptr %he_gi.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %he_gi.i.i, align 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb33.i.i, %sw.bb22.i.i, %sw.bb8.i.i, %sw.bb.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %flags.0.off0.i.i = phi i8 [ 0, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ 16, %sw.bb33.i.i ], [ 0, %sw.bb.i.i ], [ %spec.select.i.i, %sw.bb8.i.i ], [ %spec.select1.i.i, %sw.bb22.i.i ]
  %116 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %flags.0.off0.i.i, ptr %rate.i.i, align 2
  %width.i.i = getelementptr inbounds %struct.mt76_phy, ptr %87, i32 0, i32 5, i32 1
  %117 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %width.i.i, align 4
  %switch.tableidx = add i32 %118, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %119 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 84214787, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink.i.i = select i1 %119, i8 %switch.masked, i8 0
  %bw47.i.i = getelementptr inbounds %struct.rate_info, ptr %rate.i.i, i32 0, i32 4
  %120 = ptrtoint ptr %bw47.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %.sink.i.i, ptr %bw47.i.i, align 1
  %call.i134.i = call i32 @cfg80211_calculate_bitrate(ptr noundef nonnull %rate.i.i) #4
  %mul49.i.i = mul i32 %call.i134.i, %tx_time.0.i
  %div50.i.i = udiv i32 %mul49.i.i, 80
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 8
  %conv53.i.i = and i32 %div50.i.i, 65535
  %call54.i.i = call i32 @mt76_testmode_alloc_skb(ptr noundef %122, i32 noundef %conv53.i.i) #4
  br label %mt7915_tm_set_tx_len.exit.i

mt7915_tm_set_tx_len.exit.i:                      ; preds = %sw.epilog.i.i, %do.end71.i.i.mt7915_tm_set_tx_len.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rate.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ipg.0.i)
  %tobool52.not.i = icmp eq i32 %ipg.0.i, 0
  br i1 %tobool52.not.i, label %mt7915_tm_set_tx_len.exit.i.if.end57.i_crit_edge, label %if.then53.i

mt7915_tm_set_tx_len.exit.i.if.end57.i_crit_edge: ; preds = %mt7915_tm_set_tx_len.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

if.then53.i:                                      ; preds = %mt7915_tm_set_tx_len.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %div54.i = udiv i32 10000000, %ipg.0.i
  %div55116.i = lshr i32 %div54.i, 1
  %conv56.i = trunc i32 %div55116.i to i16
  %tx_queued_limit.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 23
  %123 = ptrtoint ptr %tx_queued_limit.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv56.i, ptr %tx_queued_limit.i, align 8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %mt7915_tm_set_tx_len.exit.i.if.end57.i_crit_edge
  br i1 %cmp4, label %lor.lhs.false.i, label %if.end57.i.if.end25_crit_edge

if.end57.i.if.end25_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %if.end57.i
  %tx_skb.i = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 17, i32 2
  %124 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tx_skb.i, align 8
  %tobool59.not.i = icmp eq ptr %125, null
  br i1 %tobool59.not.i, label %lor.lhs.false.i.if.end40_crit_edge, label %if.end61.i

lor.lhs.false.i.if.end40_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.end61.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %monitor_vif.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 3
  %126 = ptrtoint ptr %monitor_vif.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %monitor_vif.i, align 8
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %125, i32 0, i32 3, i32 24
  %128 = ptrtoint ptr %vif.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %vif.i, align 8
  %129 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i135.i) #4
  %131 = getelementptr inbounds i8, ptr %req.i135.i, i32 2
  %132 = call ptr @memset(ptr %131, i32 0, i32 74)
  %133 = ptrtoint ptr %req.i135.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %req.i135.i, align 1
  %param_idx.i137.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i135.i, i32 0, i32 1
  %134 = ptrtoint ptr %param_idx.i137.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %param_idx.i137.i, align 1
  %param.i138.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i135.i, i32 0, i32 3
  %135 = ptrtoint ptr %param.i138.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %param.i138.i, align 1
  %enable.i139.i = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i138.i, i32 0, i32 1
  %136 = ptrtoint ptr %enable.i139.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %enable.i139.i, align 1
  %band.i140.i = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i138.i, i32 0, i32 2
  %phy4.i141.i = getelementptr inbounds %struct.mt7915_dev, ptr %130, i32 0, i32 4
  %cmp.i142.i = icmp ne ptr %phy4.i141.i, %1
  %conv6.i143.i = zext i1 %cmp.i142.i to i8
  %137 = ptrtoint ptr %band.i140.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv6.i143.i, ptr %band.i140.i, align 1
  %call.i.i144.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %130, i32 noundef 15853, ptr noundef nonnull %req.i135.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i135.i) #4
  br label %if.end40

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp6 = icmp eq i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp8 = icmp eq i32 %state, 3
  %or.cond69 = or i1 %cmp8, %cmp6
  br i1 %or.cond69, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %dev1.i.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %138 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i.i74) #4
  %140 = getelementptr inbounds i8, ptr %req.i.i74, i32 2
  %141 = call ptr @memset(ptr %140, i32 0, i32 74)
  %142 = ptrtoint ptr %req.i.i74 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %req.i.i74, align 1
  %param_idx.i.i75 = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i74, i32 0, i32 1
  %143 = ptrtoint ptr %param_idx.i.i75 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %param_idx.i.i75, align 1
  %param.i.i76 = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i.i74, i32 0, i32 3
  %144 = ptrtoint ptr %param.i.i76 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 6, ptr %param.i.i76, align 1
  %band.i.i77 = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i.i76, i32 0, i32 2
  %phy4.i.i78 = getelementptr inbounds %struct.mt7915_dev, ptr %139, i32 0, i32 4
  %cmp.i.i79 = icmp ne ptr %phy4.i.i78, %1
  %conv6.i.i80 = zext i1 %cmp.i.i79 to i8
  %145 = ptrtoint ptr %band.i.i77 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv6.i.i80, ptr %band.i.i77, align 1
  %call.i.i.i81 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %139, i32 noundef 15853, ptr noundef nonnull %req.i.i74, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i.i74) #4
  br i1 %cmp8, label %if.then.i87, label %if.then9.if.end25_crit_edge

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then.i87:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %146 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev1.i.i, align 4
  %mutex.i.i82 = getelementptr inbounds %struct.mt76_dev, ptr %147, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mutex.i.i82) #4
  %call.i.i83 = call i32 @mt7915_set_channel(ptr noundef %1) #4
  %148 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev1.i.i, align 4
  %mutex2.i.i84 = getelementptr inbounds %struct.mt76_dev, ptr %149, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mutex2.i.i84, i32 noundef 0) #4
  %call22.i.i85 = call i32 @mt7915_mcu_set_chan_info(ptr noundef %1, i32 noundef 20205) #4
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %147, i32 0, i32 10
  %150 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bus.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %phy2.i = getelementptr inbounds %struct.mt7915_dev, ptr %147, i32 0, i32 4
  %cmp.not.i86 = icmp eq ptr %phy2.i, %1
  %add.i = select i1 %cmp.not.i86, i32 149524, i32 673812
  %call3.i = call i32 %153(ptr noundef %147, i32 noundef %add.i) #4
  %154 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i13.i) #4
  %156 = getelementptr inbounds i8, ptr %req.i13.i, i32 2
  %157 = call ptr @memset(ptr %156, i32 0, i32 74)
  %158 = ptrtoint ptr %req.i13.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %req.i13.i, align 1
  %param_idx.i15.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i13.i, i32 0, i32 1
  %159 = ptrtoint ptr %param_idx.i15.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %param_idx.i15.i, align 1
  %param.i16.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i13.i, i32 0, i32 3
  %160 = ptrtoint ptr %param.i16.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 6, ptr %param.i16.i, align 1
  %enable.i17.i = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i16.i, i32 0, i32 1
  %161 = ptrtoint ptr %enable.i17.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %enable.i17.i, align 1
  %band.i18.i = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i16.i, i32 0, i32 2
  %phy4.i19.i = getelementptr inbounds %struct.mt7915_dev, ptr %155, i32 0, i32 4
  %cmp.i20.i = icmp ne ptr %phy4.i19.i, %1
  %conv6.i21.i = zext i1 %cmp.i20.i to i8
  %162 = ptrtoint ptr %band.i18.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv6.i21.i, ptr %band.i18.i, align 1
  %call.i.i22.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %155, i32 noundef 15853, ptr noundef nonnull %req.i13.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i13.i) #4
  br label %if.end40

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp12 = icmp eq i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state)
  %cmp14 = icmp eq i32 %state, 4
  %or.cond70 = or i1 %cmp14, %cmp12
  br i1 %or.cond70, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else11
  %dev1.i89 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %163 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev1.i89, align 4
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 8
  %chandef2.i = getelementptr inbounds %struct.mt76_phy, ptr %166, i32 0, i32 5
  %center_freq1.i = getelementptr inbounds %struct.mt76_phy, ptr %166, i32 0, i32 5, i32 2
  %167 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %center_freq1.i, align 4
  %mul.i.i90 = mul i32 %168, 1000
  %call.i.i91 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i90) #4
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 8
  %cond.i = select i1 %cmp14, i32 83886080, i32 100663296
  %tx_rate_idx.i = getelementptr inbounds %struct.mt76_phy, ptr %170, i32 0, i32 17, i32 6
  %171 = ptrtoint ptr %tx_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %tx_rate_idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %req.i) #4
  %173 = getelementptr inbounds i8, ptr %req.i, i32 2
  %174 = call ptr @memset(ptr %173, i32 0, i32 86)
  %175 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %req.i, align 1
  %icap_len.i = getelementptr inbounds %struct.mt7915_tm_rf_test, ptr %req.i, i32 0, i32 1
  %176 = ptrtoint ptr %icap_len.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 120, ptr %icap_len.i, align 1
  %op.i = getelementptr inbounds %struct.mt7915_tm_rf_test, ptr %req.i, i32 0, i32 3
  %177 = ptrtoint ptr %op.i to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 %cond.i, ptr %op.i, align 1
  %param.i = getelementptr inbounds %struct.mt7915_tm_rf_test, ptr %req.i, i32 0, i32 3, i32 0, i32 1
  %178 = ptrtoint ptr %chandef2.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %chandef2.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %hw_value.i, align 2
  %conv.i92 = trunc i16 %181 to i8
  %182 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv.i92, ptr %param.i, align 2
  %conv6.i = trunc i32 %call.i.i91 to i8
  %center_ch.i = getelementptr inbounds %struct.tm_tx_cont, ptr %param.i, i32 0, i32 1
  %183 = ptrtoint ptr %center_ch.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv6.i, ptr %center_ch.i, align 1
  %tx_antenna_mask.i93 = getelementptr inbounds %struct.mt76_phy, ptr %170, i32 0, i32 17, i32 12
  %184 = ptrtoint ptr %tx_antenna_mask.i93 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tx_antenna_mask.i93, align 1
  %tx_ant.i = getelementptr inbounds %struct.tm_tx_cont, ptr %param.i, i32 0, i32 3
  %186 = ptrtoint ptr %tx_ant.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %tx_ant.i, align 1
  %phy7.i = getelementptr inbounds %struct.mt7915_dev, ptr %164, i32 0, i32 4
  %cmp.i = icmp ne ptr %phy7.i, %1
  %conv9.i = zext i1 %cmp.i to i8
  %band.i = getelementptr inbounds %struct.mt7915_tm_rf_test, ptr %req.i, i32 0, i32 3, i32 0, i32 1, i32 1, i32 2
  %187 = ptrtoint ptr %band.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv9.i, ptr %band.i, align 2
  %width.i = getelementptr inbounds %struct.mt76_phy, ptr %166, i32 0, i32 5, i32 1
  %188 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %width.i, align 4
  %190 = zext i32 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %189, label %if.then15.mt7915_tm_set_tx_cont.exit_crit_edge [
    i32 2, label %if.then15.sw.epilog.sink.split.i_crit_edge
    i32 3, label %sw.bb10.i
    i32 4, label %sw.bb12.i
    i32 5, label %sw.bb14.i
    i32 6, label %sw.bb16.i
    i32 7, label %sw.bb18.i
    i32 1, label %if.then15.sw.epilog.i_crit_edge
    i32 0, label %if.then15.sw.epilog.i_crit_edge136
  ]

if.then15.sw.epilog.i_crit_edge136:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.then15.sw.epilog.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.then15.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.then15.mt7915_tm_set_tx_cont.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_set_tx_cont.exit

sw.bb10.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb12.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb14.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb16.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.bb18.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %if.then15.sw.epilog.sink.split.i_crit_edge
  %.sink.i94 = phi i8 [ 4, %sw.bb18.i ], [ 5, %sw.bb16.i ], [ 3, %sw.bb14.i ], [ 6, %sw.bb12.i ], [ 2, %sw.bb10.i ], [ 1, %if.then15.sw.epilog.sink.split.i_crit_edge ]
  %bw19.i = getelementptr inbounds %struct.tm_tx_cont, ptr %param.i, i32 0, i32 2
  %191 = ptrtoint ptr %bw19.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %.sink.i94, ptr %bw19.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.then15.sw.epilog.i_crit_edge, %if.then15.sw.epilog.i_crit_edge136
  br i1 %cmp14, label %if.end.i, label %if.then73.i

if.end.i:                                         ; preds = %sw.epilog.i
  %tx_rate_mode.i95 = getelementptr inbounds %struct.mt76_phy, ptr %170, i32 0, i32 17, i32 5
  %192 = ptrtoint ptr %tx_rate_mode.i95 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %tx_rate_mode.i95, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %193)
  %cmp31.i = icmp ult i8 %193, 2
  br i1 %cmp31.i, label %if.then33.i, label %if.end.i.if.end55.i_crit_edge

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55.i

if.then33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %194 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %195)
  %cmp36.i = icmp eq i32 %195, 1
  %sband_5g.i = getelementptr inbounds %struct.mt76_phy, ptr %170, i32 0, i32 11
  %sband_2g.i = getelementptr inbounds %struct.mt76_phy, ptr %170, i32 0, i32 10
  %sband.0.i = select i1 %cmp36.i, ptr %sband_5g.i, ptr %sband_2g.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %193)
  %cmp46.i = icmp eq i8 %193, 1
  %add.i96 = add i8 %172, 4
  %spec.select.i97 = select i1 %cmp46.i, i8 %add.i96, i8 %172
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0.i, i32 0, i32 1
  %196 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bitrates.i, align 4
  %idxprom.i98 = zext i8 %spec.select.i97 to i32
  %hw_value52.i = getelementptr %struct.ieee80211_rate, ptr %197, i32 %idxprom.i98, i32 2
  %198 = ptrtoint ptr %hw_value52.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %hw_value52.i, align 2
  %conv54.i = trunc i16 %199 to i8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then33.i, %if.end.i.if.end55.i_crit_edge
  %rate_idx.0.i = phi i8 [ %conv54.i, %if.then33.i ], [ %172, %if.end.i.if.end55.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %193)
  %200 = icmp ult i8 %193, 8
  br i1 %200, label %switch.lookup131, label %if.end55.i.mt7915_tm_set_tx_cont.exit_crit_edge

if.end55.i.mt7915_tm_set_tx_cont.exit_crit_edge:  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_set_tx_cont.exit

if.then73.i:                                      ; preds = %sw.epilog.i
  %201 = select i1 %cmp.i, i32 16777216, i32 0
  %202 = ptrtoint ptr %param.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %param.i, align 1
  %call.i1.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %164, i32 noundef 1261, ptr noundef nonnull %req.i, i32 noundef 88, i1 noundef zeroext true, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool104.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool104.not.i, label %if.end106.i, label %if.then73.i.mt7915_tm_set_tx_cont.exit_crit_edge

if.then73.i.mt7915_tm_set_tx_cont.exit_crit_edge: ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_set_tx_cont.exit

if.end106.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %req.i.i88) #4
  %203 = call ptr @memset(ptr %req.i.i88, i32 0, i32 88)
  %call.i.i.i99 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %164, i32 noundef 1261, ptr noundef nonnull %req.i.i88, i32 noundef 88, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %req.i.i88) #4
  br label %mt7915_tm_set_tx_cont.exit

switch.lookup131:                                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  %204 = sext i8 %193 to i32
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.mt7915_tm_set_state, i32 0, i32 %204
  %205 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %205)
  %switch.load = load i16, ptr %switch.gep, align 2
  %conv69.i = zext i8 %rate_idx.0.i to i16
  %or.i = or i16 %switch.load, %conv69.i
  %206 = tail call i16 @llvm.bswap.i16(i16 %or.i) #4
  %rateval71.i = getelementptr inbounds %struct.mt7915_tm_rf_test, ptr %req.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %207 = ptrtoint ptr %rateval71.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %206, ptr %rateval71.i, align 2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %req.i2.i) #4
  %208 = call ptr @memset(ptr %req.i2.i, i32 0, i32 88)
  %op.i3.i = getelementptr inbounds %struct.mt7915_tm_rf_test, ptr %req.i2.i, i32 0, i32 3
  %209 = ptrtoint ptr %op.i3.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 16777216, ptr %op.i3.i, align 1
  %call.i.i4.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %164, i32 noundef 1261, ptr noundef nonnull %req.i2.i, i32 noundef 88, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %req.i2.i) #4
  %210 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev1.i89, align 4
  %mutex.i.i100 = getelementptr inbounds %struct.mt76_dev, ptr %211, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mutex.i.i100) #4
  %call.i5.i = call i32 @mt7915_set_channel(ptr noundef %1) #4
  %212 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev1.i89, align 4
  %mutex2.i.i101 = getelementptr inbounds %struct.mt76_dev, ptr %213, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mutex2.i.i101, i32 noundef 0) #4
  %call22.i.i102 = call i32 @mt7915_mcu_set_chan_info(ptr noundef %1, i32 noundef 20205) #4
  %call.i6.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %164, i32 noundef 1261, ptr noundef nonnull %req.i, i32 noundef 88, i1 noundef zeroext true, ptr noundef null) #4
  br label %mt7915_tm_set_tx_cont.exit

mt7915_tm_set_tx_cont.exit:                       ; preds = %switch.lookup131, %if.end106.i, %if.then73.i.mt7915_tm_set_tx_cont.exit_crit_edge, %if.end55.i.mt7915_tm_set_tx_cont.exit_crit_edge, %if.then15.mt7915_tm_set_tx_cont.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %req.i) #4
  br label %if.end25

if.else17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp20 = icmp eq i32 %state, 0
  %or.cond71 = or i1 %cmp20, %cmp18
  br i1 %or.cond71, label %if.then21, label %if.else17.if.end25_crit_edge

if.else17.if.end25_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp22 = icmp ne i32 %state, 0
  %dev1.i104 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %214 = ptrtoint ptr %dev1.i104 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev1.i104, align 4
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 8
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %state.i, align 4
  %220 = and i32 %219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i = icmp eq i32 %220, 0
  br i1 %tobool.not.i, label %if.then21.if.end25_crit_edge, label %if.end.i108

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end.i108:                                      ; preds = %if.then21
  %lnot.i = xor i1 %cmp22, true
  %call3.i105 = tail call i32 @mt7915_mcu_set_sku_en(ptr noundef %1, i1 noundef zeroext %lnot.i) #4
  %frombool.i.i = zext i1 %cmp22 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i103) #4
  %221 = getelementptr inbounds %struct.anon.159, ptr %req.i.i103, i32 0, i32 1
  %222 = getelementptr inbounds %struct.anon.159, ptr %req.i.i103, i32 0, i32 2
  %223 = ptrtoint ptr %req.i.i103 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 6, ptr %req.i.i103, align 1
  %224 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %frombool.i.i, ptr %221, align 1
  %225 = ptrtoint ptr %222 to i32
  call void @__asan_storeN_noabort(i32 %225, i32 2)
  store i16 0, ptr %222, align 1
  %call.i.i.i106 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %215, i32 noundef 22765, ptr noundef nonnull %req.i.i103, i32 noundef 4, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i103) #4
  %226 = ptrtoint ptr %dev1.i104 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev1.i104, align 4
  %phy2.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %227, i32 0, i32 4
  %cmp.i.i107 = icmp ne ptr %phy2.i.i, %1
  %test.i.i = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 18
  %228 = ptrtoint ptr %test.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %test.i.i, align 8
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 8
  %test3.i.i = getelementptr inbounds %struct.mt76_phy, ptr %231, i32 0, i32 17
  %232 = ptrtoint ptr %test3.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %test3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp4.i.i = icmp eq i32 %233, 0
  br i1 %cmp4.i.i, label %for.cond.preheader.i.i, label %if.end.i.i112

for.cond.preheader.i.i:                           ; preds = %if.end.i108
  %bus.i.i109 = getelementptr inbounds %struct.mt76_dev, ptr %227, i32 0, i32 10
  %idxprom.i.i110 = zext i1 %cmp.i.i107 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0161.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i111, %for.body.i.i.for.body.i.i_crit_edge ]
  %234 = ptrtoint ptr %bus.i.i109 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %bus.i.i109, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wr.i.i, align 4
  %arrayidx.i.i = getelementptr [17 x %struct.reg_band], ptr @reg_backup_list, i32 0, i32 %i.0161.i.i
  %arrayidx6.i.i = getelementptr [2 x i32], ptr %arrayidx.i.i, i32 0, i32 %idxprom.i.i110
  %238 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %229, i32 %i.0161.i.i
  %240 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx7.i.i, align 4
  call void %237(ptr noundef %227, i32 noundef %239, i32 noundef %241) #4
  %inc.i.i111 = add nuw nsw i32 %i.0161.i.i, 1
  %exitcond162.not.i.i = icmp eq i32 %inc.i.i111, 17
  br i1 %exitcond162.not.i.i, label %for.body.i.i.mt7915_tm_reg_backup_restore.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i.mt7915_tm_reg_backup_restore.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_reg_backup_restore.exit.i

if.end.i.i112:                                    ; preds = %if.end.i108
  %tobool8.not.i.i = icmp eq ptr %229, null
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.end.i.i112.if.end30.i.i_crit_edge

if.end.i.i112.if.end30.i.i_crit_edge:             ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i112
  %dev10.i.i = getelementptr inbounds %struct.mt76_dev, ptr %227, i32 0, i32 13
  %242 = ptrtoint ptr %dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev10.i.i, align 8
  %call.i.i34.i = call noalias ptr @devm_kmalloc(ptr noundef %243, i32 noundef 68, i32 noundef 3520) #4
  %tobool11.not.i.i = icmp eq ptr %call.i.i34.i, null
  br i1 %tobool11.not.i.i, label %if.then9.i.i.mt7915_tm_reg_backup_restore.exit.i_crit_edge, label %if.end13.i.i

if.then9.i.i.mt7915_tm_reg_backup_restore.exit.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_reg_backup_restore.exit.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  %244 = ptrtoint ptr %test.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call.i.i34.i, ptr %test.i.i, align 8
  %bus19.i.i = getelementptr inbounds %struct.mt76_dev, ptr %227, i32 0, i32 10
  %idxprom23.i.i = zext i1 %cmp.i.i107 to i32
  br label %for.body18.i.i

for.body18.i.i:                                   ; preds = %for.body18.i.i.for.body18.i.i_crit_edge, %if.end13.i.i
  %i.1160.i.i = phi i32 [ 0, %if.end13.i.i ], [ %inc28.i.i, %for.body18.i.i.for.body18.i.i_crit_edge ]
  %245 = ptrtoint ptr %bus19.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %bus19.i.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %arrayidx20.i.i = getelementptr [17 x %struct.reg_band], ptr @reg_backup_list, i32 0, i32 %i.1160.i.i
  %arrayidx24.i.i = getelementptr [2 x i32], ptr %arrayidx20.i.i, i32 0, i32 %idxprom23.i.i
  %249 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx24.i.i, align 4
  %call25.i.i = call i32 %248(ptr noundef %227, i32 noundef %250) #4
  %arrayidx26.i.i = getelementptr i32, ptr %call.i.i34.i, i32 %i.1160.i.i
  %251 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %call25.i.i, ptr %arrayidx26.i.i, align 4
  %inc28.i.i = add nuw nsw i32 %i.1160.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc28.i.i, 17
  br i1 %exitcond.not.i.i, label %for.body18.i.i.if.end30.i.i_crit_edge, label %for.body18.i.i.for.body18.i.i_crit_edge

for.body18.i.i.for.body18.i.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18.i.i

for.body18.i.i.if.end30.i.i_crit_edge:            ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %for.body18.i.i.if.end30.i.i_crit_edge, %if.end.i.i112.if.end30.i.i_crit_edge
  %bus31.i.i = getelementptr inbounds %struct.mt76_dev, ptr %227, i32 0, i32 10
  %252 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %bus31.i.i, align 4
  %rmw.i.i113 = getelementptr inbounds %struct.mt76_bus_ops, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %rmw.i.i113 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rmw.i.i113, align 4
  %cond.i.i = select i1 %cmp.i.i107, i32 657408, i32 133120
  %add.i.i114 = or i32 %cond.i.i, 108
  %call33.i.i = call i32 %255(ptr noundef %227, i32 noundef %add.i.i114, i32 noundef 16215, i32 noundef 0) #4
  %256 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %bus31.i.i, align 4
  %rmw35.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %rmw35.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %rmw35.i.i, align 4
  %call39.i.i = call i32 %259(ptr noundef %227, i32 noundef %add.i.i114, i32 noundef 0, i32 noundef 32768) #4
  %260 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %bus31.i.i, align 4
  %wr41.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %wr41.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %wr41.i.i, align 4
  %add44.i.i = or i32 %cond.i.i, 112
  call void %263(ptr noundef %227, i32 noundef %add44.i.i, i32 noundef -7340033) #4
  %264 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %bus31.i.i, align 4
  %rmw46.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %265, i32 0, i32 2
  %266 = ptrtoint ptr %rmw46.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %rmw46.i.i, align 4
  %add49.i.i = or i32 %cond.i.i, 152
  %call50.i.i = call i32 %267(ptr noundef %227, i32 noundef %add49.i.i, i32 noundef 520159168, i32 noundef 0) #4
  %268 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %bus31.i.i, align 4
  %rmw52.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %rmw52.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %rmw52.i.i, align 4
  %call84.i.i = call i32 %271(ptr noundef %227, i32 noundef %add49.i.i, i32 noundef 520097664, i32 noundef 16777344) #4
  %272 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %bus31.i.i, align 4
  %wr86.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %wr86.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %wr86.i.i, align 4
  %cond88.i.i = select i1 %cmp.i.i107, i32 659456, i32 135168
  %add89.i.i = or i32 %cond88.i.i, 480
  call void %275(ptr noundef %227, i32 noundef %add89.i.i, i32 noundef 0) #4
  %276 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bus31.i.i, align 4
  %rmw91.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %rmw91.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %rmw91.i.i, align 4
  %call95.i.i = call i32 %279(ptr noundef %227, i32 noundef %cond88.i.i, i32 noundef 33554432, i32 noundef 0) #4
  %280 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %bus31.i.i, align 4
  %wr97.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %wr97.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %wr97.i.i, align 4
  %cond99.i.i = select i1 %cmp.i.i107, i32 660480, i32 136192
  call void %283(ptr noundef %227, i32 noundef %cond99.i.i, i32 noundef 849674) #4
  %284 = ptrtoint ptr %bus31.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %bus31.i.i, align 4
  %wr102.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %wr102.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %wr102.i.i, align 4
  %add105.i.i = or i32 %cond99.i.i, 4
  call void %287(ptr noundef %227, i32 noundef %add105.i.i, i32 noundef 0) #4
  br label %mt7915_tm_reg_backup_restore.exit.i

mt7915_tm_reg_backup_restore.exit.i:              ; preds = %if.end30.i.i, %if.then9.i.i.mt7915_tm_reg_backup_restore.exit.i_crit_edge, %for.body.i.i.mt7915_tm_reg_backup_restore.exit.i_crit_edge
  %frombool.i36.i = zext i1 %lnot.i to i8
  %288 = ptrtoint ptr %dev1.i104 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev1.i104, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i35.i) #4
  %290 = getelementptr inbounds i8, ptr %req.i35.i, i32 2
  %291 = call ptr @memset(ptr %290, i32 0, i32 74)
  %292 = ptrtoint ptr %req.i35.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 1, ptr %req.i35.i, align 1
  %param_idx.i.i115 = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i35.i, i32 0, i32 1
  %293 = ptrtoint ptr %param_idx.i.i115 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 1, ptr %param_idx.i.i115, align 1
  %param.i.i116 = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i35.i, i32 0, i32 3
  %294 = ptrtoint ptr %param.i.i116 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 3, ptr %param.i.i116, align 1
  %enable.i.i = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i.i116, i32 0, i32 1
  %295 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %frombool.i36.i, ptr %enable.i.i, align 1
  %band.i.i117 = getelementptr inbounds %struct.mt7915_tm_trx, ptr %param.i.i116, i32 0, i32 2
  %phy4.i.i118 = getelementptr inbounds %struct.mt7915_dev, ptr %289, i32 0, i32 4
  %cmp.i38.i = icmp ne ptr %phy4.i.i118, %1
  %conv6.i.i119 = zext i1 %cmp.i38.i to i8
  %296 = ptrtoint ptr %band.i.i117 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv6.i.i119, ptr %band.i.i117, align 1
  %call.i.i39.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %289, i32 noundef 15853, ptr noundef nonnull %req.i35.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i35.i) #4
  %monitor_vif.i120 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 3
  %297 = ptrtoint ptr %monitor_vif.i120 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %monitor_vif.i120, align 8
  %conv.i121 = zext i1 %cmp22 to i32
  %call10.i = call i32 @mt7915_mcu_add_bss_info(ptr noundef %1, ptr noundef %298, i32 noundef %conv.i121) #4
  %299 = ptrtoint ptr %monitor_vif.i120 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %monitor_vif.i120, align 8
  %call13.i = call i32 @mt7915_mcu_add_sta(ptr noundef %215, ptr noundef %300, ptr noundef null, i1 noundef zeroext %cmp22) #4
  br i1 %cmp22, label %mt7915_tm_reg_backup_restore.exit.i.if.end25_crit_edge, label %if.then15.i

mt7915_tm_reg_backup_restore.exit.i.if.end25_crit_edge: ; preds = %mt7915_tm_reg_backup_restore.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then15.i:                                      ; preds = %mt7915_tm_reg_backup_restore.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %301 = ptrtoint ptr %dev1.i104 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev1.i104, align 4
  %call.i.i122 = call i32 @mt7915_mcu_set_muru_ctrl(ptr noundef %302, i32 noundef 14, i32 noundef 1) #4
  br label %lor.lhs.false28

if.end25:                                         ; preds = %mt7915_tm_reg_backup_restore.exit.i.if.end25_crit_edge, %if.then21.if.end25_crit_edge, %if.else17.if.end25_crit_edge, %mt7915_tm_set_tx_cont.exit, %if.then9.if.end25_crit_edge, %if.end57.i.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp26 = icmp eq i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27 = icmp eq i32 %3, 0
  %or.cond72 = select i1 %cmp26, i1 %cmp27, i1 false
  br i1 %or.cond72, label %if.end25.if.then32_crit_edge, label %if.end25.lor.lhs.false28_crit_edge

if.end25.lor.lhs.false28_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false28

if.end25.if.then32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

lor.lhs.false28:                                  ; preds = %if.end25.lor.lhs.false28_crit_edge, %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp29 = icmp eq i32 %state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp31 = icmp eq i32 %3, 1
  %or.cond73 = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %or.cond73, label %lor.lhs.false28.if.then32_crit_edge, label %lor.lhs.false28.if.end40_crit_edge

lor.lhs.false28.if.end40_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

lor.lhs.false28.if.then32_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false28.if.then32_crit_edge, %if.end25.if.then32_crit_edge
  %arrayidx35 = getelementptr %struct.mt76_phy, ptr %mphy, i32 0, i32 17, i32 1, i32 0
  %303 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx35, align 4
  %and = lshr i32 %304, 16
  %and.lobit = and i32 %and, 1
  %and.1 = lshr i32 %304, 16
  %305 = and i32 %and.1, 2
  %changed.1.1 = or i32 %305, %and.lobit
  call fastcc void @mt7915_tm_update_params(ptr noundef %1, i32 noundef %changed.1.1)
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %lor.lhs.false28.if.end40_crit_edge, %if.then.i87, %if.end61.i, %lor.lhs.false.i.if.end40_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_tm_set_params(ptr nocapture noundef readonly %mphy, ptr nocapture noundef readonly %tb, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state)
  %cmp = icmp eq i32 %new_state, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %test = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17, i32 12
  %4 = ptrtoint ptr %tx_antenna_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_antenna_mask, align 1
  %conv = zext i8 %5 to i32
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 16
  %6 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chainmask, align 2
  %conv2 = zext i16 %7 to i32
  %neg = xor i32 %conv2, -1
  %and = and i32 %neg, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 16
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp ne ptr %9, null
  %or = zext i1 %tobool8.not to i32
  %arrayidx7.1 = getelementptr ptr, ptr %tb, i32 17
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7.1, align 4
  %tobool8.not.1 = icmp eq ptr %11, null
  %or.1 = select i1 %tobool8.not.1, i32 0, i32 2
  %changed.1.1 = or i32 %or.1, %or
  tail call fastcc void @mt7915_tm_update_params(ptr noundef %1, i32 noundef %changed.1.1)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_tm_dump_stats(ptr nocapture noundef %mphy, ptr noundef %msg) #0 align 64 {
entry:
  %tmp.i161 = alloca i8, align 1
  %tmp.i154 = alloca i8, align 1
  %tmp.i143 = alloca i8, align 1
  %tmp.i137 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev1 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %phy2 = getelementptr inbounds %struct.mt7915_dev, ptr %3, i32 0, i32 4
  %cmp.not = icmp eq ptr %1, %phy2
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 32775, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not168 = icmp eq ptr %5, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not168
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_freq_offset = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %last_freq_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_freq_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i134 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32770, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i134)
  %cmp.i.i135 = icmp slt i32 %call1.i.i134, 0
  %tobool8.not176 = icmp eq ptr %10, null
  %tobool8.not = select i1 %cmp.i.i135, i1 true, i1 %tobool8.not176
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %for.body.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end6
  %arrayidx = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i137) #4
  %13 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %tmp.i137, align 1
  %call.i138 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i137) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i137) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool14.not = icmp eq i32 %call.i138, 0
  br i1 %tobool14.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i137) #4
  %16 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i137, align 1
  %call.i138.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i137) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i137) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.1)
  %tobool14.not.1 = icmp eq i32 %call.i138.1, 0
  br i1 %tobool14.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i137) #4
  %19 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tmp.i137, align 1
  %call.i138.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i137) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i137) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.2)
  %tobool14.not.2 = icmp eq i32 %call.i138.2, 0
  br i1 %tobool14.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i137) #4
  %22 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp.i137, align 1
  %call.i138.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i137) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i137) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.3)
  %tobool14.not.3 = icmp eq i32 %call.i138.3, 0
  br i1 %tobool14.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %10, align 2
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i140 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32771, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i140)
  %cmp.i.i141 = icmp slt i32 %call1.i.i140, 0
  %tobool19.not177 = icmp eq ptr %26, null
  %tobool19.not = select i1 %cmp.i.i141, i1 true, i1 %tobool19.not177
  br i1 %tobool19.not, label %for.cond.3.cleanup_crit_edge, label %for.body24.preheader

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body24.preheader:                             ; preds = %for.cond.3
  %arrayidx26 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #4
  %29 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %tmp.i143, align 1
  %call.i144 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i143) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool28.not = icmp eq i32 %call.i144, 0
  br i1 %tobool28.not, label %for.cond22, label %for.body24.preheader.cleanup_crit_edge

for.body24.preheader.cleanup_crit_edge:           ; preds = %for.body24.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond22:                                       ; preds = %for.body24.preheader
  %arrayidx26.1 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx26.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #4
  %32 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tmp.i143, align 1
  %call.i144.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i143) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.1)
  %tobool28.not.1 = icmp eq i32 %call.i144.1, 0
  br i1 %tobool28.not.1, label %for.cond22.1, label %for.cond22.cleanup_crit_edge

for.cond22.cleanup_crit_edge:                     ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond22.1:                                     ; preds = %for.cond22
  %arrayidx26.2 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx26.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #4
  %35 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tmp.i143, align 1
  %call.i144.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i143) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.2)
  %tobool28.not.2 = icmp eq i32 %call.i144.2, 0
  br i1 %tobool28.not.2, label %for.cond22.2, label %for.cond22.1.cleanup_crit_edge

for.cond22.1.cleanup_crit_edge:                   ; preds = %for.cond22.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond22.2:                                     ; preds = %for.cond22.1
  %arrayidx26.3 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx26.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #4
  %38 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %tmp.i143, align 1
  %call.i144.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i143) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.3)
  %tobool28.not.3 = icmp eq i32 %call.i144.3, 0
  br i1 %tobool28.not.3, label %for.cond22.3, label %for.cond22.2.cleanup_crit_edge

for.cond22.2.cleanup_crit_edge:                   ; preds = %for.cond22.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond22.3:                                     ; preds = %for.cond22.2
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i146 = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i147 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i148 = sub i32 %sub.ptr.lhs.cast.i146, %sub.ptr.rhs.cast.i147
  %conv.i149 = trunc i32 %sub.ptr.sub.i148 to i16
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i149, ptr %26, align 2
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i151 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32772, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i151)
  %cmp.i.i152 = icmp slt i32 %call1.i.i151, 0
  %tobool36.not178 = icmp eq ptr %42, null
  %tobool36.not = select i1 %cmp.i.i152, i1 true, i1 %tobool36.not178
  br i1 %tobool36.not, label %for.cond22.3.cleanup_crit_edge, label %for.body41.preheader

for.cond22.3.cleanup_crit_edge:                   ; preds = %for.cond22.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body41.preheader:                             ; preds = %for.cond22.3
  %arrayidx43 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 4, i32 0
  %43 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i154) #4
  %45 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %tmp.i154, align 1
  %call.i155 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i154) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i154) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool45.not = icmp eq i32 %call.i155, 0
  br i1 %tobool45.not, label %for.cond39, label %for.body41.preheader.cleanup_crit_edge

for.body41.preheader.cleanup_crit_edge:           ; preds = %for.body41.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond39:                                       ; preds = %for.body41.preheader
  %arrayidx43.1 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx43.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i154) #4
  %48 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %tmp.i154, align 1
  %call.i155.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i154) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i154) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.1)
  %tobool45.not.1 = icmp eq i32 %call.i155.1, 0
  br i1 %tobool45.not.1, label %for.cond39.1, label %for.cond39.cleanup_crit_edge

for.cond39.cleanup_crit_edge:                     ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond39.1:                                     ; preds = %for.cond39
  %arrayidx43.2 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 4, i32 2
  %49 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx43.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i154) #4
  %51 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %tmp.i154, align 1
  %call.i155.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i154) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i154) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.2)
  %tobool45.not.2 = icmp eq i32 %call.i155.2, 0
  br i1 %tobool45.not.2, label %for.cond39.2, label %for.cond39.1.cleanup_crit_edge

for.cond39.1.cleanup_crit_edge:                   ; preds = %for.cond39.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond39.2:                                     ; preds = %for.cond39.1
  %arrayidx43.3 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 4, i32 3
  %52 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx43.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i154) #4
  %54 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %tmp.i154, align 1
  %call.i155.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i154) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i154) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.3)
  %tobool45.not.3 = icmp eq i32 %call.i155.3, 0
  br i1 %tobool45.not.3, label %for.cond39.3, label %for.cond39.2.cleanup_crit_edge

for.cond39.2.cleanup_crit_edge:                   ; preds = %for.cond39.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond39.3:                                     ; preds = %for.cond39.2
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i157 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i158 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i159 = sub i32 %sub.ptr.lhs.cast.i157, %sub.ptr.rhs.cast.i158
  %conv.i160 = trunc i32 %sub.ptr.sub.i159 to i16
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i160, ptr %42, align 2
  %last_snr = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 18, i32 5
  %58 = ptrtoint ptr %last_snr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %last_snr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i161) #4
  %60 = ptrtoint ptr %tmp.i161 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %tmp.i161, align 1
  %call.i162 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i161) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i161) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool54.not = icmp eq i32 %call.i162, 0
  br i1 %tobool54.not, label %if.end56, label %for.cond39.3.cleanup_crit_edge

for.cond39.3.cleanup_crit_edge:                   ; preds = %for.cond39.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end56:                                         ; preds = %for.cond39.3
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i164 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i165 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i166 = sub i32 %sub.ptr.lhs.cast.i164, %sub.ptr.rhs.cast.i165
  %conv.i167 = trunc i32 %sub.ptr.sub.i166 to i16
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i167, ptr %5, align 2
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 10
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %add = select i1 %cmp.not, i32 149524, i32 673812
  %call71 = call i32 %67(ptr noundef %3, i32 noundef %add) #4
  %cond74 = select i1 %cmp.not, i32 0, i32 3
  %conv.mask = and i32 %call71, 65535
  %conv75 = zext i32 %conv.mask to i64
  %rx_stats = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17, i32 25
  %arrayidx77 = getelementptr [5 x i64], ptr %rx_stats, i32 0, i32 %cond74
  %68 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx77, align 8
  %add78 = add i64 %69, %conv75
  store i64 %add78, ptr %arrayidx77, align 8
  %arrayidx82 = getelementptr %struct.mt76_phy, ptr %mphy, i32 0, i32 17, i32 25, i32 1, i32 %cond74
  %70 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx82, align 8
  %add83 = add i64 %71, %conv75
  store i64 %add83, ptr %arrayidx82, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %for.cond39.3.cleanup_crit_edge, %for.cond39.2.cleanup_crit_edge, %for.cond39.1.cleanup_crit_edge, %for.cond39.cleanup_crit_edge, %for.body41.preheader.cleanup_crit_edge, %for.cond22.3.cleanup_crit_edge, %for.cond22.2.cleanup_crit_edge, %for.cond22.1.cleanup_crit_edge, %for.cond22.cleanup_crit_edge, %for.body24.preheader.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %for.cond.3.cleanup_crit_edge ], [ -12, %for.cond22.3.cleanup_crit_edge ], [ -12, %for.cond39.3.cleanup_crit_edge ], [ -12, %for.cond39.2.cleanup_crit_edge ], [ -12, %for.cond39.1.cleanup_crit_edge ], [ -12, %for.cond39.cleanup_crit_edge ], [ -12, %for.body41.preheader.cleanup_crit_edge ], [ -12, %for.cond22.2.cleanup_crit_edge ], [ -12, %for.cond22.1.cleanup_crit_edge ], [ -12, %for.cond22.cleanup_crit_edge ], [ -12, %for.body24.preheader.cleanup_crit_edge ], [ -12, %for.cond.2.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ -12, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_tm_update_params(ptr noundef readonly %phy, i32 noundef %changed) unnamed_addr #0 align 64 {
entry:
  %req.i15 = alloca %struct.anon.160, align 1
  %req.i = alloca %struct.mt7915_tm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %test = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %and = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp, label %cond.true, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %freq_offset = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 17, i32 17
  %4 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq_offset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %frombool.i = zext i1 %cmp to i8
  %dev1.i = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %req.i) #4
  %8 = getelementptr inbounds i8, ptr %req.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 0, i32 74)
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool.i, ptr %req.i, align 1
  %param_idx.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i, i32 0, i32 1
  %11 = ptrtoint ptr %param_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %param_idx.i, align 1
  %param.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i, i32 0, i32 3
  %phy2.i = getelementptr inbounds %struct.mt7915_dev, ptr %7, i32 0, i32 4
  %cmp.i = icmp ne ptr %phy2.i, %phy
  %conv4.i = zext i1 %cmp.i to i8
  %12 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i, ptr %param.i, align 1
  %freq_offset.i = getelementptr inbounds %struct.mt7915_tm_cmd, ptr %req.i, i32 0, i32 3, i32 0, i32 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %cond) #4
  %14 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %freq_offset.i, align 1
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %7, i32 noundef 15853, ptr noundef nonnull %req.i, i32 noundef 76, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %req.i) #4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  %and5 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %dev1.i16 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 1
  %15 = ptrtoint ptr %dev1.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i16, align 4
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 8
  %center_freq1.i = getelementptr inbounds %struct.mt76_phy, ptr %18, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %center_freq1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i15) #4
  %21 = getelementptr inbounds %struct.anon.160, ptr %req.i15, i32 0, i32 1
  %22 = getelementptr inbounds %struct.anon.160, ptr %req.i15, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon.160, ptr %req.i15, i32 0, i32 3
  %24 = getelementptr inbounds %struct.anon.160, ptr %req.i15, i32 0, i32 4
  %25 = getelementptr inbounds %struct.anon.160, ptr %req.i15, i32 0, i32 5
  %26 = ptrtoint ptr %req.i15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 15, ptr %req.i15, align 1
  %phy3.i = getelementptr inbounds %struct.mt7915_dev, ptr %16, i32 0, i32 4
  %cmp.i17 = icmp ne ptr %phy3.i, %phy
  %conv4.i18 = zext i1 %cmp.i17 to i8
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i18, ptr %21, align 1
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %22, align 1
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %23, align 1
  %mul.i.i = mul i32 %20, 1000
  %call.i.i19 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #4
  %conv5.i = trunc i32 %call.i.i19 to i8
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv5.i, ptr %24, align 1
  %31 = call ptr @memset(ptr %25, i32 0, i32 3)
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp8.not.i = icmp eq i32 %35, 0
  br i1 %cmp8.not.i, label %if.then7.mt7915_tm_set_tx_power.exit_crit_edge, label %land.lhs.true.i

if.then7.mt7915_tm_set_tx_power.exit_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_set_tx_power.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %tx_power12.i = getelementptr inbounds %struct.mt76_phy, ptr %33, i32 0, i32 17, i32 18
  %36 = ptrtoint ptr %tx_power12.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_power12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not.i = icmp eq i8 %37, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.mt7915_tm_set_tx_power.exit_crit_edge, label %if.then15.i

land.lhs.true.i.mt7915_tm_set_tx_power.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt7915_tm_set_tx_power.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %22, align 1
  br label %mt7915_tm_set_tx_power.exit

mt7915_tm_set_tx_power.exit:                      ; preds = %if.then15.i, %land.lhs.true.i.mt7915_tm_set_tx_power.exit_crit_edge, %if.then7.mt7915_tm_set_tx_power.exit_crit_edge
  %call.i1.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %16, i32 noundef 22765, ptr noundef nonnull %req.i15, i32 noundef 8, i1 noundef zeroext false, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i15) #4
  br label %if.end9

if.end9:                                          ; preds = %mt7915_tm_set_tx_power.exit, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_send_and_get_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_set_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_chan_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_muru_ctrl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_update_edca(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_testmode_alloc_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_sku_en(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_bss_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_add_sta(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @mt7915_testmode_ops, !1, !"mt7915_testmode_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/testmode.c", i32 780, i32 32}
!2 = !{ptr @mt7915_tm_set_tx_frames.spe_idx_map, !3, !"spe_idx_map", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/testmode.c", i32 434, i32 18}
!4 = !{ptr @reg_backup_list, !5, !"reg_backup_list", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/testmode.c", i32 31, i32 30}
!6 = distinct !{null, !7, !"tm_change_map", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/testmode.c", i32 17, i32 17}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
