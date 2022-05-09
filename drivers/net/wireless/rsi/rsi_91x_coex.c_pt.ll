; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_coex.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_coex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rsi_coex_ctrl_block = type { ptr, [5 x %struct.sk_buff_head], %struct.rsi_thread }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"common card ready received\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sleep notify received\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid coex queue\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Coex-Tx-Thread\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unable to init tx thrd\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rsi_coex_attach = private unnamed_addr constant [16 x i8] c"rsi_coex_attach\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rsi_init_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pevent->event_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/rsi/rsi_common.h\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 75, i32 22 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 80, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 112, i32 21 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 161, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 162, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1984, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 30, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 66, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 87, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/rsi/rsi_common.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 39, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [43 x i8] c"../drivers/net/wireless/rsi/rsi_91x_coex.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 44, i32 22 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @rsi_init_event.__key, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_init_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_coex_recv_pkt(ptr noundef %common, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %msg, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 6, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 58
  %3 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %hibernate_resume, align 4
  %call = tail call i32 @rsi_handle_card_ready(ptr noundef %common, ptr noundef %msg) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #7
  %call2 = tail call i32 @rsi_mgmt_pkt_recv(ptr noundef %common, ptr noundef %msg) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_handle_card_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_mgmt_pkt_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_coex_send_pkt(ptr noundef %priv, ptr noundef %skb, i8 noundef zeroext %hal_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %hal_queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %hal_queue, label %if.then [
    i8 0, label %entry.if.end5_crit_edge
    i8 3, label %entry.if.end5_crit_edge38
    i8 2, label %if.then4
  ]

entry.if.end5_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %coex_cb1 = getelementptr inbounds %struct.rsi_common, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %coex_cb1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %coex_cb1, align 4
  %arrayidx = getelementptr %struct.rsi_coex_ctrl_block, ptr %2, i32 0, i32 1, i32 1
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef %skb) #7
  %event = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %2, i32 0, i32 2, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #7
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %event, align 4
  %event_queue.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %2, i32 0, i32 2, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

if.end5:                                          ; preds = %entry.if.end5_crit_edge, %entry.if.end5_crit_edge38
  %iface_down = getelementptr inbounds %struct.rsi_common, ptr %priv, i32 0, i32 31
  %4 = ptrtoint ptr %iface_down to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iface_down, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end5.if.end12_crit_edge, label %if.then6

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end5
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  tail call void @rsi_indicate_tx_status(ptr noundef %9, ptr noundef %skb, i32 noundef -22) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp13 = icmp eq i32 %11, 4
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @rsi_send_mgmt_pkt(ptr noundef %priv, ptr noundef %skb) #7
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @rsi_send_data_pkt(ptr noundef %priv, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ %call15, %if.then14 ], [ %call16, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_indicate_tx_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_mgmt_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_data_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsi_coex_attach(ptr noundef %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 408) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %coex_cb1 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 2
  %1 = ptrtoint ptr %coex_cb1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %coex_cb1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %common, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 0
  %lock.i = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx.1 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 1
  %lock.i.1 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.i.1 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.1, ptr %prev.i.i.1, align 8
  %qlen.i.i.1 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i.1, align 4
  %arrayidx.2 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 2
  %lock.i.2 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.i.2 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.2, ptr %prev.i.i.2, align 8
  %qlen.i.i.2 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %11 = ptrtoint ptr %qlen.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i.2, align 4
  %arrayidx.3 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 3
  %lock.i.3 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.i.3 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.3, ptr %prev.i.i.3, align 8
  %qlen.i.i.3 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %14 = ptrtoint ptr %qlen.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i.3, align 4
  %arrayidx.4 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 4
  %lock.i.4 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i.i.4 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.4, ptr %prev.i.i.4, align 8
  %qlen.i.i.4 = getelementptr %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %17 = ptrtoint ptr %qlen.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i.4, align 4
  %event = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #7
  %18 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %event, align 4
  %event_queue.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %event_queue.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @rsi_init_event.__key) #7
  %completion.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %completion.i, align 8
  %wait.i.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #7
  %thread_done.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 4
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %thread_done.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %thread_done.i, align 4
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rsi_coex_scheduler_thread, ptr noundef %common, i32 noundef -1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rsi_create_kthread.exit, label %rsi_create_kthread.exit.thread

rsi_create_kthread.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #7
  %21 = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %21, align 8
  br label %cleanup

rsi_create_kthread.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %call7.i.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %23, align 8
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rsi_coex_attach) #7
  br label %cleanup

cleanup:                                          ; preds = %rsi_create_kthread.exit, %rsi_create_kthread.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rsi_create_kthread.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %rsi_create_kthread.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_coex_scheduler_thread(ptr nocapture noundef readonly %common) #3 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coex_cb1 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %coex_cb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coex_cb1, align 4
  %thread_done = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 4
  %event = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 3
  %event_queue.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 3, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 0, i32 1
  %qlen.i15.i.i = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 1, i32 1
  %qlen.i16.i.i = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 2, i32 1
  %arrayidx.i = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 1
  br label %do.body

do.body:                                          ; preds = %rsi_coex_sched_tx_pkts.exit.do.body_crit_edge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 40) #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #7
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.body.rsi_wait_event.exit_crit_edge, label %if.then4.i

do.body.rsi_wait_event.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_wait_event.exit

if.then4.i:                                       ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %4 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call68.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #7
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp910.i = icmp eq i32 %6, 0
  br i1 %cmp910.i, label %if.then4.i.for.end.i_crit_edge, label %if.then4.i.if.end.i_crit_edge

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  br label %if.end.i

if.then4.i.for.end.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then4.i.if.end.i_crit_edge
  %call611.i = phi i32 [ %call6.i, %cleanup.i.if.end.i_crit_edge ], [ %call68.i, %if.then4.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call611.i)
  %tobool11.not.i = icmp eq i32 %call611.i, 0
  br i1 %tobool11.not.i, label %cleanup.i, label %if.end.i.__out.i_crit_edge

if.end.i.__out.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #7
  %call6.i = call i32 @prepare_to_wait_event(ptr noundef %event_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #7
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %event, align 4
  %cmp9.i = icmp eq i32 %8, 0
  br i1 %cmp9.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then4.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %event_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %rsi_wait_event.exit

rsi_wait_event.exit:                              ; preds = %__out.i, %do.body.rsi_wait_event.exit_crit_edge
  %call.i.i.i11 = call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #7
  %9 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %event, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %rsi_wait_event.exit
  %10 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  %spec.select.i.i = sext i1 %cmp.not.i.i to i32
  %12 = ptrtoint ptr %qlen.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not.i.i = icmp eq i32 %13, 0
  %q_num.1.i.i = select i1 %cmp4.not.i.i, i32 %spec.select.i.i, i32 1
  %14 = ptrtoint ptr %qlen.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.not.i.i = icmp eq i32 %15, 0
  %q_num.2.i.i = select i1 %cmp10.not.i.i, i32 %q_num.1.i.i, i32 2
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %q_num.2.i.i) #7
  %16 = zext i32 %q_num.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %q_num.2.i.i, label %do.body.i.do.body.i.backedge_crit_edge [
    i32 1, label %if.then.i
    i32 -1, label %rsi_coex_sched_tx_pkts.exit
  ]

do.body.i.do.body.i.backedge_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.backedge

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call ptr @skb_dequeue(ptr noundef %arrayidx.i) #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call2.i = call i32 @rsi_send_bt_pkt(ptr noundef %18, ptr noundef %call1.i) #7
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %if.then.i, %do.body.i.do.body.i.backedge_crit_edge
  br label %do.body.i

rsi_coex_sched_tx_pkts.exit:                      ; preds = %do.body.i
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %thread_done, i32 noundef 4) #7
  %19 = ptrtoint ptr %thread_done to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %thread_done, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %rsi_coex_sched_tx_pkts.exit.do.body_crit_edge, label %do.end

rsi_coex_sched_tx_pkts.exit.do.body_crit_edge:    ; preds = %rsi_coex_sched_tx_pkts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %rsi_coex_sched_tx_pkts.exit
  call void @__sanitizer_cov_trace_pc() #9
  %completion = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 1
  call void @__asan_handle_no_return()
  call void @kthread_complete_and_exit(ptr noundef %completion, i32 noundef 0) #11
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_coex_detach(ptr nocapture noundef readonly %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coex_cb1 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %coex_cb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coex_cb1, align 4
  %thread_done.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_done.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %thread_done.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_done.i, ptr %thread_done.i, i32 1, ptr elementtype(i32) %thread_done.i) #7, !srcloc !37
  %event.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %event.i, align 4
  %event_queue.i.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 3, i32 1
  tail call void @__wake_up(ptr noundef %event_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %task.i = getelementptr inbounds %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %5) #7
  %arrayidx = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 0
  tail call void @skb_queue_purge(ptr noundef %arrayidx) #7
  %arrayidx.1 = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 1
  tail call void @skb_queue_purge(ptr noundef %arrayidx.1) #7
  %arrayidx.2 = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 2
  tail call void @skb_queue_purge(ptr noundef %arrayidx.2) #7
  %arrayidx.3 = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 3
  tail call void @skb_queue_purge(ptr noundef %arrayidx.3) #7
  %arrayidx.4 = getelementptr %struct.rsi_coex_ctrl_block, ptr %1, i32 0, i32 1, i32 4
  tail call void @skb_queue_purge(ptr noundef %arrayidx.4) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_bt_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 75, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 80, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 112, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 161, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 162, i32 21}
!10 = !{ptr @__func__.rsi_coex_attach, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 162, i32 53}
!12 = !{ptr @skb_queue_head_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rsi_init_event.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 30, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 66, i32 17}
!20 = !{ptr @init_completion.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../include/linux/completion.h", i32 87, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/rsi/rsi_common.h", i32 39, i32 12}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/rsi/rsi_91x_coex.c", i32 44, i32 22}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148377019, i64 2148377045, i64 2148377074, i64 2148377108, i64 2148377139, i64 2148377162}
