; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mt7615_dev = type { %union.anon, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.157, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.148 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.148 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.157 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.158], %struct.work_struct, %struct.wait_queue_head, %struct.anon.159, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.160 }
%struct.anon.158 = type { ptr, ptr }
%struct.anon.159 = type { %struct.spinlock, i32 }
%struct.anon.160 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7615_mcu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mt7663s_mcu_init.mt7663s_mcu_ops = internal constant { %struct.mt76_mcu_ops, [56 x i8] } { %struct.mt76_mcu_ops { i32 64, i32 4, ptr null, ptr @mt7663s_mcu_send_message, ptr @mt7615_mcu_parse_response, ptr @mt76_connac_mcu_reg_rr, ptr @mt76_connac_mcu_reg_wr, ptr null, ptr null, ptr @mt7615_mcu_restart }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c\00", [43 x i8] zeroinitializer }, align 32
@__mt7663s_mcu_drv_pmctrl._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 70, ptr @.str.3, ptr @.str.4 }, align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot get ownership from device\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__mt7663s_mcu_drv_pmctrl\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__mt7663s_mcu_drv_pmctrl._entry_ptr = internal global ptr @__mt7663s_mcu_drv_pmctrl._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt7663s_mcu_fw_pmctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot set ownership to device\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7663s_mcu_fw_pmctrl\00", [42 x i8] zeroinitializer }, align 32
@mt7663s_mcu_fw_pmctrl._entry_ptr = internal global ptr @mt7663s_mcu_fw_pmctrl._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"mt7663s_mcu_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 135, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 67, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 70, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 118, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__mt7663s_mcu_drv_pmctrl._entry, ptr @__mt7663s_mcu_drv_pmctrl._entry_ptr, ptr @mt7663s_mcu_fw_pmctrl._entry, ptr @mt7663s_mcu_fw_pmctrl._entry_ptr, ptr @mt7663s_mcu_init.mt7663s_mcu_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_mcu_init.mt7663s_mcu_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663s_mcu_fw_pmctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7663s_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mt7663s_mcu_drv_pmctrl(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcu_ops1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt7663s_mcu_init.mt7663s_mcu_ops, ptr %mcu_ops1, align 4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %reg_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_map, align 8
  %arrayidx = getelementptr i32, ptr %6, i32 21
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, 4416
  %call14 = tail call i32 %4(ptr noundef %dev, i32 noundef %add) #3
  %9 = and i32 %call14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.end.if.end24_crit_edge, label %if.then16

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then16:                                        ; preds = %if.end
  %call17 = tail call i32 @mt7615_mcu_restart(ptr noundef %dev) #3
  %10 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map, align 8
  %arrayidx19 = getelementptr i32, ptr %11, i32 21
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %13, 4416
  %call21 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %add20, i32 noundef 4, i32 noundef 0, i32 noundef 500) #3
  br i1 %call21, label %if.then16.if.end24_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %call25 = tail call i32 @__mt7663_load_firmware(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %dev29 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %14 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29, align 8
  %mcu_ops30 = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 7
  %16 = ptrtoint ptr %mcu_ops30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcu_ops30, align 16
  %call31 = tail call ptr @devm_kmemdup(ptr noundef %15, ptr noundef %17, i32 noundef 40, i32 noundef 3264) #3
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %set_drv_ctrl = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %call31, i32 0, i32 7
  %18 = ptrtoint ptr %set_drv_ctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mt7663s_mcu_drv_pmctrl, ptr %set_drv_ctrl, align 4
  %set_fw_ctrl = getelementptr inbounds %struct.mt7615_mcu_ops, ptr %call31, i32 0, i32 8
  %19 = ptrtoint ptr %set_fw_ctrl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mt7663s_mcu_fw_pmctrl, ptr %set_fw_ctrl, align 4
  %20 = ptrtoint ptr %mcu_ops30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call31, ptr %mcu_ops30, align 16
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_map, align 8
  %arrayidx.i = getelementptr i32, ptr %26, i32 8
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, 272
  %call.i = tail call i32 %24(ptr noundef %dev, i32 noundef %add.i) #3
  %and.i = and i32 %call.i, 4095
  %sched.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6
  %29 = ptrtoint ptr %sched.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i, ptr %sched.i, align 4
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_map, align 8
  %arrayidx32.i = getelementptr i32, ptr %35, i32 8
  %36 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %37, 280
  %call34.i = tail call i32 %33(ptr noundef %dev, i32 noundef %add33.i) #3
  %and35.i = and i32 %call34.i, 4095
  %pse_mcu_quota.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 8
  %38 = ptrtoint ptr %pse_mcu_quota.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and35.i, ptr %pse_mcu_quota.i, align 4
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_map, align 8
  %arrayidx57.i = getelementptr i32, ptr %44, i32 7
  %45 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx57.i, align 4
  %add58.i = add i32 %46, 272
  %call59.i = tail call i32 %42(ptr noundef %dev, i32 noundef %add58.i) #3
  %and60.i = and i32 %call59.i, 4095
  %ple_data_quota.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 6, i32 4
  %47 = ptrtoint ptr %ple_data_quota.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and60.i, ptr %ple_data_quota.i, align 4
  %pse_page_size.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9
  %48 = ptrtoint ptr %pse_page_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %pse_page_size.i, align 4
  %49 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_map, align 8
  %arrayidx83.i = getelementptr i32, ptr %54, i32 23
  %55 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx83.i, align 4
  %call85.i = tail call i32 %52(ptr noundef %dev, i32 noundef %56) #3
  %57 = lshr i32 %call85.i, 6
  %shl.i = and i32 %57, 1020
  %deficit.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %deficit.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl.i, ptr %deficit.i, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.then16.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_mcu_send_message(ptr noundef %mdev, ptr noundef %skb, i32 noundef %cmd, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt7615_mcu_fill_msg(ptr noundef %mdev, ptr noundef %skb, i32 noundef %cmd, ptr noundef %seq) #3
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 24
  %0 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb_raw = getelementptr inbounds %struct.mt76_queue_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_queue_skb_raw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue_skb_raw, align 4
  %q_mcu = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 22
  %4 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_mcu, align 16
  %call = tail call i32 %3(ptr noundef %mdev, ptr noundef %5, ptr noundef %skb, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_ops, align 4
  %kick = getelementptr inbounds %struct.mt76_queue_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %kick to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kick, align 4
  %10 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q_mcu, align 16
  tail call void %9(ptr noundef %mdev, ptr noundef %11) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_parse_response(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_reg_rr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_mcu_reg_wr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_restart(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt7663s_mcu_drv_pmctrl(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #3
  tail call void @sdio_writel(ptr noundef %1, i32 noundef 512, i32 noundef 4, ptr noundef null) #3
  %call = tail call i64 @ktime_get() #3
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 68) #3
  %call1054 = tail call i32 @mt76s_read_pcr(ptr noundef %dev) #3
  %and55 = and i32 %call1054, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool.not56 = icmp eq i32 %and55, 0
  br i1 %tobool.not56, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call i32 @mt76s_read_pcr(ptr noundef %dev) #3
  br label %for.end

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #3
  %call10 = tail call i32 @mt76s_read_pcr(ptr noundef %dev) #3
  %and = and i32 %call10, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then21.land.lhs.true_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  %status.0 = phi i32 [ %call18, %if.then17 ], [ %call1054, %entry.for.end_crit_edge ], [ %call10, %if.then21.for.end_crit_edge ]
  %and23 = and i32 %status.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end29, label %if.else

do.end29:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev30 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %if.end36

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %state) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 12
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %stats, align 4
  %last_doze_event = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 12, i32 2
  %6 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_doze_event, align 4
  %sub = sub i32 %4, %7
  %doze_time = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 12, i32 3
  %8 = ptrtoint ptr %doze_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %doze_time, align 4
  %add35 = add i32 %sub, %9
  store i32 %add35, ptr %doze_time, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %do.end29
  %cond = phi i32 [ 0, %if.else ], [ -110, %do.end29 ]
  tail call void @sdio_release_host(ptr noundef %1) #3
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt7663_load_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_mcu_drv_pmctrl(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call fastcc i32 @__mt7663s_mcu_drv_pmctrl(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7663s_mcu_fw_pmctrl(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 4
  %mutex = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %dev1.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %token_count.i = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %token_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %token_count.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i:                                         ; preds = %entry
  %wake.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  %count.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 7, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %mt76_connac_skip_fw_pmctrl.exit, label %mt76_connac_skip_fw_pmctrl.exit.thread63

mt76_connac_skip_fw_pmctrl.exit.thread63:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  br label %out

mt76_connac_skip_fw_pmctrl.exit:                  ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %state.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.i.not = icmp eq i32 %call.i, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  br i1 %tobool4.i.not, label %if.end, label %mt76_connac_skip_fw_pmctrl.exit.out_crit_edge

mt76_connac_skip_fw_pmctrl.exit.out_crit_edge:    ; preds = %mt76_connac_skip_fw_pmctrl.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %mt76_connac_skip_fw_pmctrl.exit
  tail call void @sdio_claim_host(ptr noundef %1) #3
  tail call void @sdio_writel(ptr noundef %1, i32 noundef 256, i32 noundef 4, ptr noundef null) #3
  %call3 = tail call i64 @ktime_get() #3
  %add.i = add i64 %call3, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 116) #3
  %call1365 = tail call i32 @mt76s_read_pcr(ptr noundef %dev) #3
  %and66 = and i32 %call1365, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool.not67 = icmp eq i32 %and66, 0
  br i1 %tobool.not67, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

land.lhs.true:                                    ; preds = %if.then24.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then24

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call21 = tail call i32 @mt76s_read_pcr(ptr noundef %dev) #3
  br label %for.end

if.then24:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #3
  %call13 = tail call i32 @mt76s_read_pcr(ptr noundef %dev) #3
  %and = and i32 %call13, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then24.for.end_crit_edge, label %if.then24.land.lhs.true_crit_edge

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.then24.for.end_crit_edge, %if.then20, %if.end.for.end_crit_edge
  %status.0 = phi i32 [ %call21, %if.then20 ], [ %call1365, %if.end.for.end_crit_edge ], [ %call13, %if.then24.for.end_crit_edge ]
  %and26 = and i32 %status.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond = select i1 %tobool27.not, i32 0, i32 -110
  br i1 %tobool27.not, label %if.else, label %do.end32

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev33 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #6
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %state.i) #3
  br label %if.end39

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %stats = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 12
  %last_doze_event = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 12, i32 2
  %11 = ptrtoint ptr %last_doze_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_doze_event, align 4
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats, align 4
  %sub = sub i32 %10, %13
  %awake_time = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 27, i32 12, i32 1
  %14 = ptrtoint ptr %awake_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %awake_time, align 4
  %add38 = add i32 %sub, %15
  store i32 %add38, ptr %awake_time, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %do.end32
  tail call void @sdio_release_host(ptr noundef %1) #3
  br label %out

out:                                              ; preds = %if.end39, %mt76_connac_skip_fw_pmctrl.exit.out_crit_edge, %mt76_connac_skip_fw_pmctrl.exit.thread63, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %mt76_connac_skip_fw_pmctrl.exit.out_crit_edge ], [ %cond, %if.end39 ], [ 0, %mt76_connac_skip_fw_pmctrl.exit.thread63 ], [ 0, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mcu_fill_msg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76s_read_pcr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @mt7663s_mcu_init.mt7663s_mcu_ops, !1, !"mt7663s_mcu_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c", i32 135, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c", i32 67, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c", i32 70, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__mt7663s_mcu_drv_pmctrl._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @__mt7663s_mcu_drv_pmctrl._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/sdio_mcu.c", i32 118, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mt7663s_mcu_fw_pmctrl._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @mt7663s_mcu_fw_pmctrl._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
