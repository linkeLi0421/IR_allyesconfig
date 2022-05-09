; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/mon.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/mon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.wilc_wfi_radiotap_cb_hdr = type { %struct.ieee80211_radiotap_header, i8, i8, i16 }
%struct.wilc_wfi_radiotap_hdr = type <{ %struct.ieee80211_radiotap_header, i8 }>
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_complete_mon_data = type { i32, ptr }

@wilc_wfi_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @wilc_wfi_mon_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register_netdevice failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fail to mgmt tx\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"wilc_wfi_netdev_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 212, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 237, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [49 x i8] c"../drivers/net/wireless/microchip/wilc1000/mon.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 203, i32 20 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @wilc_wfi_netdev_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_wfi_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wfi_monitor_rx(ptr noundef %mon_dev, ptr nocapture noundef readonly %buff, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mon_dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %mon_dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %buff, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool17.not = icmp eq i32 %5, 0
  br i1 %tobool17.not, label %if.else33, label %if.then18

if.then18:                                        ; preds = %if.end2
  %add = add i32 %size, 12
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool20.not = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.end22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %size) #8
  %6 = call ptr @memcpy(ptr %call.i, ptr %buff, i32 %size)
  %call24 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %it_len = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call24, i32 0, i32 2
  %7 = call ptr @memset(ptr %call24, i32 0, i32 12)
  %8 = ptrtoint ptr %it_len to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 3072, ptr %it_len, align 1
  %it_present = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call24, i32 0, i32 3
  %9 = ptrtoint ptr %it_present to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 75497472, ptr %it_present, align 1
  %rate = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, ptr %call24, i32 0, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %rate, align 1
  %11 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  %tx_flags31 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, ptr %call24, i32 0, i32 3
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %tx_flags31 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 4, ptr %tx_flags31, align 1
  br label %if.end48

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %tx_flags31 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 1, ptr %tx_flags31, align 1
  br label %if.end48

if.else33:                                        ; preds = %if.end2
  %add34 = add i32 %size, 9
  %call.i.i87 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add34, i32 noundef 2592) #8
  %tobool36.not = icmp eq ptr %call.i.i87, null
  br i1 %tobool36.not, label %if.else33.cleanup_crit_edge, label %if.end38

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  %call.i88 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i87, i32 noundef %size) #8
  %14 = call ptr @memcpy(ptr %call.i88, ptr %buff, i32 %size)
  %call40 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i87, i32 noundef 9) #8
  %it_len44 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call40, i32 0, i32 2
  %15 = ptrtoint ptr %call40 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %call40, align 1
  %16 = ptrtoint ptr %it_len44 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 2304, ptr %it_len44, align 1
  %it_present46 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call40, i32 0, i32 3
  %17 = ptrtoint ptr %it_present46 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 67108864, ptr %it_present46, align 1
  %rate47 = getelementptr inbounds %struct.wilc_wfi_radiotap_hdr, ptr %call40, i32 0, i32 1
  %18 = ptrtoint ptr %rate47 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %rate47, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.end38, %if.else, %if.then30
  %skb.0 = phi ptr [ %call.i.i, %if.then30 ], [ %call.i.i, %if.else ], [ %call.i.i87, %if.end38 ]
  %19 = getelementptr inbounds %struct.anon.0, ptr %skb.0, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mon_dev, ptr %19, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15
  %26 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, 6655
  %bf.set51 = or i16 %bf.clear, 25088
  store i16 %bf.set51, ptr %ip_summed, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %protocol, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %28 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call52 = tail call i32 @netif_rx(ptr noundef nonnull %skb.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.else33.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wilc_wfi_init_mon_interface(ptr nocapture noundef %wl, ptr noundef %name, ptr noundef %real_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %monitor_dev = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 42
  %0 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %monitor_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 4, i32 noundef 1, i32 noundef 1) #8
  %2 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %monitor_dev, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 803, ptr %type, align 16
  %4 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %monitor_dev, align 4
  %call10 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef %name, i32 noundef 16) #8
  %6 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitor_dev, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @wilc_wfi_netdev_ops, ptr %netdev_ops, align 8
  %9 = load ptr, ptr %monitor_dev, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 124
  %10 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %needs_free_netdev, align 8
  %11 = load ptr, ptr %monitor_dev, align 4
  %call14 = tail call i32 @cfg80211_register_netdevice(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %real_dev, ptr noundef nonnull @.str) #11
  %12 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %monitor_dev, align 4
  tail call void @free_netdev(ptr noundef %13) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %monitor_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 2304
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %real_dev, ptr %add.ptr.i, align 4
  %17 = load ptr, ptr %monitor_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then16 ], [ %17, %if.end18 ], [ %1, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wfi_deinit_mon_interface(ptr nocapture noundef %wl, i1 noundef zeroext %rtnl_locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %monitor_dev = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 42
  %0 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %monitor_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  br i1 %rtnl_locked, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %3) #8
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %1) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %4 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %monitor_dev, align 4
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_wfi_mon_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %srcadd = alloca [6 x i8], align 4
  %bssid = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %srcadd) #8
  %0 = getelementptr inbounds [6 x i8], ptr %srcadd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #8
  %1 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %it_len.i = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %it_len.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %it_len.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  %conv = zext i16 %6 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp ult i32 %8, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv) #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %12)
  %cmp8 = icmp eq i8 %12, -64
  br i1 %cmp8, label %land.lhs.true, label %if.end4.if.end30_crit_edge

if.end4.if.end30_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end4
  %arrayidx11 = getelementptr i8, ptr %10, i32 4
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11, align 2
  %add.ptr1.i = getelementptr i8, ptr %10, i32 6
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %16, %14
  %add.ptr3.i = getelementptr i8, ptr %10, i32 8
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %18
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then14, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then14:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %20, 12
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool17.not = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not, label %if.then14.cleanup_crit_edge, label %if.end19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %24) #8
  %25 = call ptr @memcpy(ptr %call.i, ptr %22, i32 %24)
  %call23 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %it_len = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call23, i32 0, i32 2
  %26 = call ptr @memset(ptr %call23, i32 0, i32 10)
  %27 = ptrtoint ptr %it_len to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 3072, ptr %it_len, align 1
  %it_present = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call23, i32 0, i32 3
  %28 = ptrtoint ptr %it_present to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 75497472, ptr %it_present, align 1
  %rate = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, ptr %call23, i32 0, i32 1
  %29 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 5, ptr %rate, align 1
  %tx_flags = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, ptr %call23, i32 0, i32 3
  %30 = ptrtoint ptr %tx_flags to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 4, ptr %tx_flags, align 1
  %31 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %31, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, 6655
  %bf.set28 = or i16 %bf.clear, 25088
  store i16 %bf.set28, ptr %ip_summed, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 4, ptr %protocol, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %40 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call29 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end4.if.end30_crit_edge
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %43 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %43, align 8
  %arrayidx33 = getelementptr i8, ptr %10, i32 10
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx33, align 4
  %47 = ptrtoint ptr %srcadd to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %srcadd, align 4
  %add.ptr.i93 = getelementptr i8, ptr %10, i32 14
  %48 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i93, align 2
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %0, align 4
  %arrayidx36 = getelementptr i8, ptr %10, i32 16
  %51 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx36, align 4
  %53 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %bssid, align 4
  %add.ptr.i95 = getelementptr i8, ptr %10, i32 20
  %54 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i95, align 2
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %1, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %srcadd, ptr noundef nonnull dereferenceable(6) %bssid, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool40.not = icmp eq i32 %bcmp, 0
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool40.not, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end30
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %if.then41.if.then47_crit_edge, label %if.end.i

if.then41.if.then47_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end.i:                                         ; preds = %if.then41
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 2592, i32 noundef 8) #13
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.then47_crit_edge, label %if.end3.i

if.end.i.if.then47_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @kmemdup(ptr noundef %10, i32 noundef %60, i32 noundef 2592) #8
  %buff.i = getelementptr inbounds %struct.tx_complete_mon_data, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %buff.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call4.i, ptr %buff.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %mon_mgmt_tx.exit

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.then47

mon_mgmt_tx.exit:                                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %60, ptr %call7.i.i, align 8
  %call11.i = tail call i32 @wilc_wlan_txq_add_mgmt_pkt(ptr noundef nonnull %58, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call4.i, i32 noundef %60, ptr noundef nonnull @mgmt_tx_complete) #8
  %66 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %67) #8
  br label %if.end48

if.then47:                                        ; preds = %if.then7.i, %if.end.i.if.then47_crit_edge, %if.then41.if.then47_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.if.then47_crit_edge ], [ -14, %if.then41.if.then47_crit_edge ], [ -12, %if.then7.i ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %mon_mgmt_tx.exit
  %retval.0.i100 = phi i32 [ %retval.0.i.ph, %if.then47 ], [ 0, %mon_mgmt_tx.exit ]
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call i32 @wilc_mac_xmit(ptr noundef %skb, ptr noundef %58) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end48, %if.end19, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -14, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ], [ %call50, %if.else ], [ %retval.0.i100, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %srcadd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_mac_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_txq_add_mgmt_pkt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgmt_tx_complete(ptr noundef %priv, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buff = getelementptr inbounds %struct.tx_complete_mon_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buff, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %priv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/mon.c", i32 237, i32 24}
!2 = !{ptr @wilc_wfi_netdev_ops, !3, !"wilc_wfi_netdev_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/microchip/wilc1000/mon.c", i32 212, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/microchip/wilc1000/mon.c", i32 203, i32 20}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
