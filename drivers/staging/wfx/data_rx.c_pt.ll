; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/data_rx.c_pt.bc'
source_filename = "../drivers/staging/wfx/data_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hif_ind_rx = type { i32, i8, i8, i8, i8, i32, [0 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.138, [16 x i8] }
%struct.anon.138 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.145 = type { i8, %union.anon.146 }
%union.anon.146 = type <{ %struct.anon.151, [17 x i8] }>
%struct.anon.151 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }

@wfx_rx_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"malformed SDU received\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wfx_rx_cb\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/wfx/data_rx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_rx_cb._entry_ptr = internal global ptr @wfx_rx_cb._entry, section ".printk_index", align 4
@wfx_rx_cb._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"received frame without RSSI data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wfx_rx_cb._entry_ptr.8 = internal global ptr @wfx_rx_cb._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 285212672]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 52, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [33 x i8] c"../drivers/staging/wfx/data_rx.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 71, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @wfx_rx_cb._entry, ptr @wfx_rx_cb._entry.5, ptr @wfx_rx_cb._entry_ptr, ptr @wfx_rx_cb._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_rx_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_rx_cb._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_rx_cb(ptr nocapture noundef readonly %wvif, ptr nocapture noundef readonly %arg, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %arg, align 1
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.drop_crit_edge [
    i32 285212672, label %if.then
    i32 0, label %entry.if.end4_crit_edge
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flag, align 8
  %or = or i32 %7, 17
  store i32 %or, ptr %flag, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp5 = icmp ult i32 %9, 16
  br i1 %cmp5, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wvif, align 4
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str) #6
  br label %drop

if.end7:                                          ; preds = %if.end4
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %14 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %band, align 4
  %channel_number = getelementptr inbounds %struct.hif_ind_rx, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %channel_number to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel_number, align 1
  %conv = zext i8 %16 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv, i32 noundef 0) #3
  %div.i = udiv i32 %call.i, 1000
  %conv11 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %17 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv11, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %freq, align 4
  %rxed_rate = getelementptr inbounds %struct.hif_ind_rx, ptr %arg, i32 0, i32 3
  %18 = ptrtoint ptr %rxed_rate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxed_rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %19)
  %cmp13 = icmp ugt i8 %19, 13
  br i1 %cmp13, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %20 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load16 = load i16, ptr %encoding, align 1
  %bf.clear17 = and i16 %bf.load16, 16383
  %bf.set18 = or i16 %bf.clear17, 16384
  store i16 %bf.set18, ptr %encoding, align 1
  %21 = ptrtoint ptr %rxed_rate to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rxed_rate, align 1
  %sub = add i8 %22, -14
  br label %if.end37

if.else22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp25 = icmp ugt i8 %19, 3
  %sub30 = add nsw i8 %19, -2
  %spec.select = select i1 %cmp25, i8 %sub30, i8 %19
  br label %if.end37

if.end37:                                         ; preds = %if.else22, %if.then15
  %sub30.sink = phi i8 [ %sub, %if.then15 ], [ %spec.select, %if.else22 ]
  %rate_idx32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %23 = ptrtoint ptr %rate_idx32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %sub30.sink, ptr %rate_idx32, align 1
  %rcpi_rssi = getelementptr inbounds %struct.hif_ind_rx, ptr %arg, i32 0, i32 4
  %24 = ptrtoint ptr %rcpi_rssi to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rcpi_rssi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool38.not = icmp eq i8 %25, 0
  br i1 %tobool38.not, label %if.then39, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %flag40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %26 = ptrtoint ptr %flag40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flag40, align 8
  %or41 = or i32 %27, 256
  store i32 %or41, ptr %flag40, align 8
  %28 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wvif, align 4
  %dev46 = getelementptr inbounds %struct.wfx_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.6) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end37.if.end47_crit_edge
  %32 = ptrtoint ptr %rcpi_rssi to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rcpi_rssi, align 1
  %34 = lshr i8 %33, 1
  %sub50 = add nsw i8 %34, -110
  %signal = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %35 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sub50, ptr %signal, align 2
  %antenna = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %36 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %antenna, align 1
  %encryp = getelementptr inbounds %struct.hif_ind_rx, ptr %arg, i32 0, i32 5
  %37 = ptrtoint ptr %encryp to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load52 = load i32, ptr %encryp, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load52)
  %tobool53.not = icmp ult i32 %bf.load52, 536870912
  br i1 %tobool53.not, label %if.end47.if.end57_crit_edge, label %if.then54

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  %flag55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %38 = ptrtoint ptr %flag55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flag55, align 8
  %or56 = or i32 %39, 2
  store i32 %or56, ptr %flag55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end47.if.end57_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 2
  %42 = and i16 %41, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %42)
  %cmp.i = icmp eq i16 %42, -12288
  br i1 %cmp.i, label %land.lhs.true, label %if.end57.if.end68_crit_edge

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end57
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %u, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp61 = icmp eq i8 %44, 3
  br i1 %cmp61, label %land.lhs.true63, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %46)
  %cmp65 = icmp ugt i32 %46, 25
  br i1 %cmp65, label %if.then67, label %land.lhs.true63.if.end68_crit_edge

land.lhs.true63.if.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then67:                                        ; preds = %land.lhs.true63
  %47 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wvif, align 4
  %call.i104 = tail call zeroext i1 @wfx_api_older_than(ptr noundef %48, i32 noundef 3, i32 noundef 6) #3
  br i1 %call.i104, label %if.then67.drop_crit_edge, label %if.end.i

if.then67.drop_crit_edge:                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end.i:                                         ; preds = %if.then67
  %u1.i = getelementptr inbounds %struct.anon.145, ptr %u, i32 0, i32 1
  %49 = ptrtoint ptr %u1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %u1.i, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %50, label %if.end.i.drop_crit_edge [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb6.i
  ]

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %capab.i = getelementptr inbounds %struct.anon.145, ptr %u, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %capab.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %capab.i, align 1
  %54 = lshr i16 %53, 10
  %55 = and i16 %54, 15
  %vif.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %56 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vif.i, align 4
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %conv.i.i = zext i16 %55 to i32
  tail call void @ieee80211_manage_rx_ba_offl(ptr noundef %57, ptr noundef %sa.i, i32 noundef %conv.i.i) #3
  br label %drop

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %params9.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 1
  %58 = ptrtoint ptr %params9.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %params9.i, align 1
  %60 = lshr i16 %59, 4
  %61 = and i16 %60, 15
  %vif13.i = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 1
  %62 = ptrtoint ptr %vif13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vif13.i, align 4
  %sa14.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %64 = or i16 %61, 16
  %add.i.i = zext i16 %64 to i32
  tail call void @ieee80211_manage_rx_ba_offl(ptr noundef %63, ptr noundef %sa14.i, i32 noundef %add.i.i) #3
  br label %drop

if.end68:                                         ; preds = %land.lhs.true63.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end57.if.end68_crit_edge
  %65 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wvif, align 4
  %hw = getelementptr inbounds %struct.wfx_dev, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %68, ptr noundef %skb) #3
  br label %cleanup

drop:                                             ; preds = %sw.bb6.i, %sw.bb.i, %if.end.i.drop_crit_edge, %if.then67.drop_crit_edge, %do.end, %entry.drop_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #3
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end68
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_api_older_than(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_manage_rx_ba_offl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/data_rx.c", i32 52, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wfx_rx_cb._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wfx_rx_cb._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/data_rx.c", i32 71, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wfx_rx_cb._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @wfx_rx_cb._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/net/mac80211.h", i32 6209, i32 6}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
