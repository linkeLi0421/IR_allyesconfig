; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/testmode.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/testmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.anon.110 = type { i16, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.137], ptr }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.136 }
%struct.anon.136 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.137 = type { ptr, ptr, i16 }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mt7921_rftest_cmd = type { i8, [3 x i8], i32, i32 }
%struct.mt7921_tm_cmd = type { i8, i32, i32 }
%struct.mt7921_dev = type { %union.anon.145, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.138, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.138 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
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
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.146], %struct.work_struct, %struct.wait_queue_head, %struct.anon.147, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.148 }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { %struct.spinlock, i32 }
%struct.anon.148 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt7921_hif_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7921_tm_evt = type { i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.111 }
%union.anon.111 = type { [6 x i32], [24 x i8] }
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
%struct.mt7921_rftest_evt = type { i32, i32 }

@mt76_tm_policy = external dso_local constant [25 x %struct.nla_policy], align 4
@mt7921_tm_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.110 } }, { i8, i8, i16, { %struct.anon.110 } }, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.110 } }, { i8, i8, i16, { %struct.anon.110 } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.110 } } { i8 11, i8 1, i16 0, { %struct.anon.110 } { %struct.anon.110 { i16 12, i16 12 } } }, { i8, i8, i16, { %struct.anon.110 } } { i8 11, i8 1, i16 0, { %struct.anon.110 } { %struct.anon.110 { i16 12, i16 12 } } }, %struct.nla_policy zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"mt7921_tm_policy\00", align 1
@___asan_gen_.3 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/testmode.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 28, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mt7921_tm_policy], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_tm_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_testmode_cmd(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %tb = alloca [25 x ptr], align 4
  %drv_tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tb) #4
  %0 = call ptr @memset(ptr %tb, i32 255, i32 100)
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %priv1 = getelementptr inbounds %struct.mt76_phy, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %lor.lhs.false

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup25

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup25_crit_edge, label %if.end

lor.lhs.false.cleanup25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup25

if.end:                                           ; preds = %lor.lhs.false
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 24, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @mt76_tm_policy, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup25_crit_edge

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup25

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 23
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.cleanup25_crit_edge, label %if.then8

if.end6.cleanup25_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup25

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drv_tb) #4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = call ptr @memset(ptr %drv_tb, i32 255, i32 16)
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %drv_tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mt7921_tm_policy, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool13.not = icmp eq i32 %call2.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.then8.cleanup.thread_crit_edge

if.then8.cleanup.thread_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end15:                                         ; preds = %if.then8
  %15 = getelementptr inbounds [4 x ptr], ptr %drv_tb, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mt7921_phy, ptr %4, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %call20 = call fastcc i32 @mt7921_tm_set(ptr noundef %19, ptr noundef %add.ptr.i)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then18, %if.then8.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call2.i, %if.then8.cleanup.thread_crit_edge ], [ %call20, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drv_tb) #4
  br label %cleanup25

cleanup:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drv_tb) #4
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup, %cleanup.thread, %if.end6.cleanup25_crit_edge, %if.end.cleanup25_crit_edge, %lor.lhs.false.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ -107, %lor.lhs.false.cleanup25_crit_edge ], [ -107, %entry.cleanup25_crit_edge ], [ %call.i, %if.end.cleanup25_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -22, %cleanup ], [ -22, %if.end6.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tb) #4
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7921_tm_set(ptr noundef %dev, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.mt7921_rftest_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds %struct.mt7921_rftest_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mt7921_rftest_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mt7921_rftest_cmd, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %req, align 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %cmd, align 1
  %6 = call ptr @memset(ptr %0, i32 0, i32 3)
  %param02 = getelementptr inbounds %struct.mt7921_tm_cmd, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %param02 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param02, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %1, align 1
  %param13 = getelementptr inbounds %struct.mt7921_tm_cmd, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %param13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %param13, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %2, align 1
  %pm4 = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp = icmp eq i8 %16, 0
  br i1 %cmp, label %if.end11, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end11:                                         ; preds = %entry
  %17 = ptrtoint ptr %param02 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param02, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8 = icmp eq i32 %18, 0
  br i1 %cmp8, label %if.end11.if.end15_crit_edge, label %if.then12

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pm4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pm4, align 4
  %ps_work = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #4
  %wake_work = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 9, i32 5
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work) #4
  %hif_ops = getelementptr inbounds %struct.mt7921_dev, ptr %dev, i32 0, i32 11
  %20 = ptrtoint ptr %hif_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hif_ops, align 4
  %drv_own = getelementptr inbounds %struct.mt7921_hif_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %drv_own to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_own, align 4
  %call14 = tail call i32 %23(ptr noundef %dev) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr, align 4
  %rxfilter = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 55
  %28 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxfilter, align 16
  tail call void %27(ptr noundef %dev, i32 noundef -2112991232, i32 noundef %29) #4
  %test = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 17
  %30 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %test, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end11.if.end15_crit_edge, %entry.if.end15_crit_edge
  %normal.0.off064 = phi i1 [ true, %if.then12 ], [ false, %if.end11.if.end15_crit_edge ], [ true, %entry.if.end15_crit_edge ]
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 17
  %31 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not = icmp eq i32 %32, 0
  br i1 %cmp.i.not, label %if.end15.out_crit_edge, label %if.end18

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end18:                                         ; preds = %if.end15
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 262145, ptr noundef nonnull %cmd, i32 noundef 12, i1 noundef zeroext false, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp ne i32 %call.i, 0
  %brmerge = or i1 %tobool32.not, %normal.0.off064
  br i1 %brmerge, label %if.end18.out_crit_edge, label %if.then36

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then36:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %test.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %test.i, align 8
  %34 = ptrtoint ptr %pm4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %pm4, align 4
  br label %out

out:                                              ; preds = %if.then36, %if.end18.out_crit_edge, %if.end15.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end18.out_crit_edge ], [ 0, %if.then36 ], [ -107, %if.end15.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7921_testmode_dump(ptr nocapture noundef readonly %hw, ptr noundef %msg, ptr nocapture noundef %cb, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %tb = alloca [25 x ptr], align 4
  %drv_tb = alloca [4 x ptr], align 4
  %evt_resp = alloca %struct.mt7921_tm_evt, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tb) #4
  %0 = call ptr @memset(ptr %tb, i32 255, i32 100)
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %priv1 = getelementptr inbounds %struct.mt76_phy, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %lor.lhs.false

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup35_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %2, i32 0, i32 17
  %10 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %lor.lhs.false3.cleanup35_crit_edge, label %if.end

lor.lhs.false3.cleanup35_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false3
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.end.cleanup35_crit_edge, label %if.end6

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

if.end6:                                          ; preds = %if.end
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 24, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @mt76_tm_policy, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup35_crit_edge

if.end6.cleanup35_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

if.end10:                                         ; preds = %if.end6
  %arrayidx11 = getelementptr inbounds [25 x ptr], ptr %tb, i32 0, i32 23
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end10.cleanup35_crit_edge, label %if.then13

if.end10.cleanup35_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drv_tb) #4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = call ptr @memset(ptr %drv_tb, i32 255, i32 16)
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %15, align 2
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %drv_tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mt7921_tm_policy, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool18.not = icmp eq i32 %call2.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.then13.cleanup31.thread_crit_edge

if.then13.cleanup31.thread_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31.thread

if.end20:                                         ; preds = %if.then13
  %19 = getelementptr inbounds [4 x ptr], ptr %drv_tb, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %cleanup31, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %evt_resp) #4
  %22 = ptrtoint ptr %evt_resp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %evt_resp, align 4, !annotation !11
  %23 = getelementptr inbounds %struct.mt7921_tm_evt, ptr %evt_resp, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !11
  %dev = getelementptr inbounds %struct.mt7921_phy, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %call25 = call fastcc i32 @mt7921_tm_query(ptr noundef %26, ptr noundef %add.ptr.i, ptr noundef nonnull %evt_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %evt_resp) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then23.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ %call25, %if.then23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evt_resp) #4
  br label %cleanup31.thread

cleanup31.thread:                                 ; preds = %cleanup, %if.then13.cleanup31.thread_crit_edge
  %retval.1.ph = phi i32 [ %call2.i, %if.then13.cleanup31.thread_crit_edge ], [ %retval.0, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drv_tb) #4
  br label %cleanup35

cleanup31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drv_tb) #4
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup31, %cleanup31.thread, %if.end10.cleanup35_crit_edge, %if.end6.cleanup35_crit_edge, %if.end.cleanup35_crit_edge, %lor.lhs.false3.cleanup35_crit_edge, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ -107, %lor.lhs.false3.cleanup35_crit_edge ], [ -107, %lor.lhs.false.cleanup35_crit_edge ], [ -107, %entry.cleanup35_crit_edge ], [ -2, %if.end.cleanup35_crit_edge ], [ %call.i, %if.end6.cleanup35_crit_edge ], [ %retval.1.ph, %cleanup31.thread ], [ -22, %cleanup31 ], [ -22, %if.end10.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tb) #4
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7921_tm_query(ptr noundef %dev, ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %evt_resp) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.mt7921_rftest_cmd, align 1
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds %struct.mt7921_rftest_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mt7921_rftest_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mt7921_rftest_cmd, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %req, align 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %cmd, align 1
  %6 = call ptr @memset(ptr %0, i32 0, i32 3)
  %param02 = getelementptr inbounds %struct.mt7921_tm_cmd, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %param02 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param02, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %1, align 1
  %param13 = getelementptr inbounds %struct.mt7921_tm_cmd, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %param13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %param13, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !11
  %call = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 262145, ptr noundef nonnull %cmd, i32 noundef 12, i1 noundef zeroext true, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %19, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %evt_resp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %evt_resp, align 4
  %param118 = getelementptr inbounds %struct.mt7921_rftest_evt, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %param118 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %param118, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %param119 = getelementptr inbounds %struct.mt7921_tm_evt, ptr %evt_resp, i32 0, i32 1
  %27 = ptrtoint ptr %param119 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %param119, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  call void @consume_skb(ptr noundef %29) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_send_and_get_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mt7921_tm_policy, !1, !"mt7921_tm_policy", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/testmode.c", i32 28, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
