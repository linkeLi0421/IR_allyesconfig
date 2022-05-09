; ModuleID = '/llk/IR_all_yes/net/mac80211/wep.c_pt.bc'
source_filename = "../net/mac80211/wep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_rx_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %union.anon.189 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, i16 }
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.144, %struct.anon.151, i32, %struct.ieee80211_key_conf }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.anon.151 = type { ptr, ptr, i32 }
%struct.ieee80211_tx_data = type { ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i32 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mac80211/wep.c\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [22 x i8] c"../net/mac80211/wep.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 139, i32 6 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_wep_init(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wep_iv = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 61
  tail call void @get_random_bytes(ptr noundef %wep_iv, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_wep_encrypt_data(ptr noundef %ctx, ptr noundef %rc4key, i32 noundef %klen, ptr noundef %data, i32 noundef %data_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef %data_len) #10
  %neg = xor i32 %call, -1
  %0 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %add.ptr = getelementptr i8, ptr %data, i32 %data_len
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %0, ptr %add.ptr, align 1
  %call1 = tail call i32 @arc4_setkey(ptr noundef %ctx, ptr noundef %rc4key, i32 noundef %klen) #7
  %add = add i32 %data_len, 4
  tail call void @arc4_crypt(ptr noundef %ctx, ptr noundef %data, ptr noundef %data, i32 noundef %add) #7
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 1032)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %ctx) #7, !srcloc !13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_wep_encrypt(ptr noundef %local, ptr noundef %skb, ptr nocapture noundef readonly %key, i32 noundef %keylen, i32 noundef %keyidx) local_unnamed_addr #0 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #7
  %0 = getelementptr inbounds [16 x i8], ptr %rc4key, i32 0, i32 3
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %1 = getelementptr inbounds i8, ptr %rc4key, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 13)
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 4
  br i1 %cmp, label %skb_tailroom.exit.do.end_crit_edge, label %if.end21, !prof !14

skb_tailroom.exit.do.end_crit_edge:               ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %skb_tailroom.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %skb_tailroom.exit
  %call22 = tail call fastcc ptr @ieee80211_wep_add_iv(ptr noundef %local, ptr noundef %skb, i32 noundef %keylen, i32 noundef %keyidx)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len26, align 4
  %add.ptr = getelementptr i8, ptr %call22, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %10
  %13 = call ptr @memcpy(ptr %rc4key, ptr %call22, i32 3)
  %14 = call ptr @memcpy(ptr %0, ptr %key, i32 %keylen)
  %call29 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #7
  %wep_tx_ctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 59
  %add = add i32 %keylen, 3
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr, i32 noundef %sub) #10
  %neg.i = xor i32 %call.i, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #7
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %sub
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %add.ptr.i, align 1
  %call1.i = call i32 @arc4_setkey(ptr noundef %wep_tx_ctx, ptr noundef nonnull %rc4key, i32 noundef %add) #7
  %add.i = add i32 %sub, 4
  call void @arc4_crypt(ptr noundef %wep_tx_ctx, ptr noundef %add.ptr, ptr noundef %add.ptr, i32 noundef %add.i) #7
  %17 = call ptr @memset(ptr %wep_tx_ctx, i32 0, i32 1032)
  call void asm sideeffect "", "r,~{memory}"(ptr %wep_tx_ctx) #7, !srcloc !13
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end25 ], [ -1, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_wep_add_iv(ptr nocapture noundef %local, ptr noundef %skb, i32 noundef %keylen, i32 noundef %keyidx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = or i16 %3, 64
  store i16 %4, ptr %1, align 2
  %5 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 4
  br i1 %cmp, label %do.end, label %if.end24, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call26 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %4) #11
  %call27 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #7
  %add.ptr = getelementptr i8, ptr %call27, i32 4
  %8 = call ptr @memmove(ptr %call27, ptr %add.ptr, i32 %call26)
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %9 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_key, align 4
  %tobool28.not = icmp eq ptr %10, null
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end24
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 8
  %13 = and i16 %12, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool31.not = icmp eq i16 %13, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end34_crit_edge, label %if.then32

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr33 = getelementptr i8, ptr %call27, i32 %call26
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %add.ptr35 = getelementptr i8, ptr %call27, i32 %call26
  %wep_iv.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 61
  %14 = ptrtoint ptr %wep_iv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wep_iv.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %wep_iv.i, align 4
  %and.i.i = and i32 %inc.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 65280
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end34.if.end.i_crit_edge

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.end34
  %shr.i.i = lshr i32 %inc.i, 16
  %conv2.i.i = and i32 %shr.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv2.i.i)
  %cmp3.i.i = icmp ult i32 %conv2.i.i, 3
  %add.i.i = add i32 %keylen, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i, i32 %add.i.i)
  %cmp6.i.i = icmp sge i32 %conv2.i.i, %add.i.i
  %switch.i.i = or i1 %cmp3.i.i, %cmp6.i.i
  br i1 %switch.i.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then.i

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %15, 257
  %16 = ptrtoint ptr %wep_iv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %wep_iv.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.i.i.if.end.i_crit_edge, %if.end34.if.end.i_crit_edge
  %tobool.not.i = icmp eq ptr %add.ptr35, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %wep_iv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wep_iv.i, align 4
  %shr.i = lshr i32 %18, 16
  %conv.i = trunc i32 %shr.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr35, i32 1
  %19 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %add.ptr35, align 1
  %20 = load i32, ptr %wep_iv.i, align 4
  %shr7.i = lshr i32 %20, 8
  %conv9.i = trunc i32 %shr7.i to i8
  %incdec.ptr10.i = getelementptr i8, ptr %add.ptr35, i32 2
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9.i, ptr %incdec.ptr.i, align 1
  %22 = load i32, ptr %wep_iv.i, align 4
  %conv13.i = trunc i32 %22 to i8
  %incdec.ptr14.i = getelementptr i8, ptr %add.ptr35, i32 3
  %23 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv13.i, ptr %incdec.ptr10.i, align 1
  %keyidx.tr.i = trunc i32 %keyidx to i8
  %conv15.i = shl i8 %keyidx.tr.i, 6
  %24 = ptrtoint ptr %incdec.ptr14.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15.i, ptr %incdec.ptr14.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i.cleanup_crit_edge, %if.then32, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr33, %if.then32 ], [ null, %if.end.i.cleanup_crit_edge ], [ %add.ptr35, %if.end4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_wep_decrypt_data(ptr noundef %ctx, ptr noundef %rc4key, i32 noundef %klen, ptr noundef %data, i32 noundef %data_len) local_unnamed_addr #0 align 64 {
entry:
  %crc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #7
  %call = tail call i32 @arc4_setkey(ptr noundef %ctx, ptr noundef %rc4key, i32 noundef %klen) #7
  %add = add i32 %data_len, 4
  tail call void @arc4_crypt(ptr noundef %ctx, ptr noundef %data, ptr noundef %data, i32 noundef %add) #7
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 1032)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %ctx) #7, !srcloc !13
  %call1 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef %data_len) #10
  %neg = xor i32 %call1, -1
  %1 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %2 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %crc, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %data_len
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %crc, ptr noundef dereferenceable(4) %add.ptr, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp ne i32 %bcmp, 0
  %. = sext i1 %cmp.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_wep_decrypt(ptr nocapture noundef readonly %rx) local_unnamed_addr #0 align 64 {
entry:
  %crc.i.i = alloca i32, align 4
  %rc4key.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp.i = icmp eq i16 %6, 2048
  %7 = and i16 %5, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %7)
  %cmp.i57 = icmp eq i16 %7, -20480
  %or.cond = or i1 %cmp.i, %cmp.i57
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.then4.if.end9_crit_edge, label %cond.true.i

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cond.true.i:                                      ; preds = %if.then4
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %11) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end9_crit_edge

cond.true.i.if.end9_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %cond.true.i.if.end9_crit_edge, %if.then4.if.end9_crit_edge
  %local = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 2
  %12 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %local, align 4
  %14 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb1, align 4
  %key = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %key, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key.i) #7
  %18 = getelementptr inbounds [16 x i8], ptr %rc4key.i, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 19
  %19 = call ptr @memset(ptr %18, i32 255, i32 13)
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %24 = and i16 %23, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i.not.i = icmp eq i16 %24, 0
  br i1 %cmp.i.not.i, label %if.end9.ieee80211_wep_decrypt.exit.thread_crit_edge, label %if.end.i

if.end9.ieee80211_wep_decrypt.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_wep_decrypt.exit.thread

if.end.i:                                         ; preds = %if.end9
  %call2.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %23) #11
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %25 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len3.i, align 4
  %add4.i = add i32 %call2.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add4.i)
  %cmp.i58 = icmp ult i32 %26, %add4.i
  br i1 %cmp.i58, label %if.end.i.ieee80211_wep_decrypt.exit.thread_crit_edge, label %if.end6.i

if.end.i.ieee80211_wep_decrypt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_wep_decrypt.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %26, %call2.i
  %sub9.i = add i32 %sub.i, -8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end6.i.ieee80211_wep_decrypt.exit.thread_crit_edge, label %lor.lhs.false.i

if.end6.i.ieee80211_wep_decrypt.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_wep_decrypt.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %add11.i = add i32 %call2.i, 3
  %arrayidx.i = getelementptr i8, ptr %21, i32 %add11.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = lshr i8 %28, 6
  %keyidx14.i = getelementptr inbounds %struct.ieee80211_key, ptr %17, i32 0, i32 8, i32 5
  %30 = ptrtoint ptr %keyidx14.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %keyidx14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp16.not.i = icmp eq i8 %29, %31
  br i1 %cmp16.not.i, label %ieee80211_wep_decrypt.exit, label %lor.lhs.false.i.ieee80211_wep_decrypt.exit.thread_crit_edge

lor.lhs.false.i.ieee80211_wep_decrypt.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_wep_decrypt.exit.thread

ieee80211_wep_decrypt.exit.thread:                ; preds = %lor.lhs.false.i.ieee80211_wep_decrypt.exit.thread_crit_edge, %if.end6.i.ieee80211_wep_decrypt.exit.thread_crit_edge, %if.end.i.ieee80211_wep_decrypt.exit.thread_crit_edge, %if.end9.ieee80211_wep_decrypt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key.i) #7
  br label %cleanup

ieee80211_wep_decrypt.exit:                       ; preds = %lor.lhs.false.i
  %keylen.i = getelementptr inbounds %struct.ieee80211_key, ptr %17, i32 0, i32 8, i32 7
  %32 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %keylen.i, align 2
  %conv21.i = zext i8 %33 to i32
  %add22.i = add nuw nsw i32 %conv21.i, 3
  %add.ptr.i = getelementptr i8, ptr %21, i32 %call2.i
  %34 = call ptr @memcpy(ptr %rc4key.i, ptr %add.ptr.i, i32 3)
  %key27.i = getelementptr inbounds %struct.ieee80211_key, ptr %17, i32 0, i32 8, i32 8
  %35 = call ptr @memcpy(ptr %18, ptr %key27.i, i32 %conv21.i)
  %wep_rx_ctx.i = getelementptr inbounds %struct.ieee80211_local, ptr %13, i32 0, i32 60
  %add.ptr35.i = getelementptr i8, ptr %add.ptr.i, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc.i.i) #7
  %call.i.i59 = call i32 @arc4_setkey(ptr noundef %wep_rx_ctx.i, ptr noundef nonnull %rc4key.i, i32 noundef %add22.i) #7
  %add.i.i = add i32 %sub.i, -4
  call void @arc4_crypt(ptr noundef %wep_rx_ctx.i, ptr noundef %add.ptr35.i, ptr noundef %add.ptr35.i, i32 noundef %add.i.i) #7
  %36 = call ptr @memset(ptr %wep_rx_ctx.i, i32 0, i32 1032)
  call void asm sideeffect "", "r,~{memory}"(ptr %wep_rx_ctx.i) #7, !srcloc !13
  %call1.i.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr35.i, i32 noundef %sub9.i) #10
  %neg.i.i = xor i32 %call1.i.i, -1
  %37 = call i32 @llvm.bswap.i32(i32 %neg.i.i) #7
  %38 = ptrtoint ptr %crc.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %crc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr35.i, i32 %sub9.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %crc.i.i, ptr noundef dereferenceable(4) %add.ptr.i.i, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.not.i.not.i.not = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc.i.i) #7
  %39 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len3.i, align 4
  %sub41.i = add i32 %40, -4
  call void @skb_trim(ptr noundef %15, i32 noundef %sub41.i) #7
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %42, i32 4
  %43 = call ptr @memmove(ptr %add.ptr43.i, ptr %42, i32 %call2.i)
  %call45.i = call ptr @skb_pull(ptr noundef %15, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key.i) #7
  br i1 %cmp.not.i.not.i.not, label %ieee80211_wep_decrypt.exit.if.end38_crit_edge, label %ieee80211_wep_decrypt.exit.cleanup_crit_edge

ieee80211_wep_decrypt.exit.cleanup_crit_edge:     ; preds = %ieee80211_wep_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ieee80211_wep_decrypt.exit.if.end38_crit_edge:    ; preds = %ieee80211_wep_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else:                                          ; preds = %if.end
  %and16 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then18:                                        ; preds = %if.else
  %call20 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %5) #11
  %add = add i32 %call20, 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i, align 4
  %data_len.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i60, align 8
  %sub.i.i = sub i32 %45, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i61, label %if.then18.if.end23_crit_edge, !prof !14

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i61:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add)
  %cmp3.i = icmp ult i32 %45, %add
  br i1 %cmp3.i, label %if.end.i61.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !14

if.end.i61.cleanup_crit_edge:                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i61
  %sub.i62 = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %sub.i62) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end23_crit_edge

pskb_may_pull.exit.if.end23_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %pskb_may_pull.exit.if.end23_crit_edge, %if.then18.if.end23_crit_edge
  %48 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb1, align 4
  %data.i64 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %data.i64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i64, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 2
  %call.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %53) #11
  %add.ptr.i65 = getelementptr i8, ptr %51, i32 4
  %54 = call ptr @memmove(ptr %add.ptr.i65, ptr %51, i32 %call.i)
  %call3.i = tail call ptr @skb_pull(ptr noundef %49, i32 noundef 4) #7
  %55 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flag, align 8
  %and28 = and i32 %56, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true30:                                  ; preds = %if.end23
  %57 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %sub = add i32 %60, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i66 = icmp ugt i32 %60, 3
  br i1 %cmp.i66, label %cond.true.i69, label %land.lhs.true30.if.end38_crit_edge

land.lhs.true30.if.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

cond.true.i69:                                    ; preds = %land.lhs.true30
  %data_len.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 7
  %61 = ptrtoint ptr %data_len.i.i67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i.i68 = icmp eq i32 %62, 0
  br i1 %tobool.not.i.i68, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %len, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %65, i32 %sub
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end38

pskb_trim.exit:                                   ; preds = %cond.true.i69
  %call.i.i70 = tail call i32 @___pskb_trim(ptr noundef %58, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool34.not = icmp eq i32 %call.i.i70, 0
  br i1 %tobool34.not, label %pskb_trim.exit.if.end38_crit_edge, label %pskb_trim.exit.cleanup_crit_edge

pskb_trim.exit.cleanup_crit_edge:                 ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_trim.exit.if.end38_crit_edge:                ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %pskb_trim.exit.if.end38_crit_edge, %__skb_trim.exit.i.i, %land.lhs.true30.if.end38_crit_edge, %if.end23.if.end38_crit_edge, %if.else.if.end38_crit_edge, %ieee80211_wep_decrypt.exit.if.end38_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %pskb_trim.exit.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i61.cleanup_crit_edge, %ieee80211_wep_decrypt.exit.cleanup_crit_edge, %ieee80211_wep_decrypt.exit.thread, %cond.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ 1, %ieee80211_wep_decrypt.exit.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %pskb_trim.exit.cleanup_crit_edge ], [ 1, %cond.true.i.cleanup_crit_edge ], [ 1, %ieee80211_wep_decrypt.exit.thread ], [ 1, %if.end.i61.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_wep_encrypt(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_tx_set_protected(ptr noundef %tx) #7
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %0 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.012 = load ptr, ptr %skbs, align 4
  %cmp.not13 = icmp eq ptr %skb.012, %skbs
  br i1 %cmp.not13, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %local18.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 2
  %key19.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %wep_encrypt_skb.exit.for.body_crit_edge, %for.body.lr.ph
  %skb.014 = phi ptr [ %skb.012, %for.body.lr.ph ], [ %skb.0, %wep_encrypt_skb.exit.for.body_crit_edge ]
  %hw_key1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.014, i32 0, i32 3, i32 28
  %1 = ptrtoint ptr %hw_key1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_key1.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %3 = ptrtoint ptr %local18.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local18.i, align 4
  %5 = ptrtoint ptr %key19.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key19.i, align 4
  %key2.i = getelementptr inbounds %struct.ieee80211_key, ptr %6, i32 0, i32 8, i32 8
  %keylen.i = getelementptr inbounds %struct.ieee80211_key, ptr %6, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %keylen.i, align 2
  %conv.i = zext i8 %8 to i32
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key, ptr %6, i32 0, i32 8, i32 5
  %9 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %keyidx.i, align 1
  %conv7.i = sext i8 %10 to i32
  %call8.i = tail call i32 @ieee80211_wep_encrypt(ptr noundef %4, ptr noundef %skb.014, ptr noundef %key2.i, i32 noundef %conv.i, i32 noundef %conv7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then.i.wep_encrypt_skb.exit_crit_edge, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.wep_encrypt_skb.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wep_encrypt_skb.exit

if.else.i:                                        ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %2, i32 0, i32 6
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i, align 8
  %13 = and i16 %12, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %if.else.i.wep_encrypt_skb.exit_crit_edge, label %if.then17.i

if.else.i.wep_encrypt_skb.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wep_encrypt_skb.exit

if.then17.i:                                      ; preds = %if.else.i
  %15 = ptrtoint ptr %local18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local18.i, align 4
  %17 = ptrtoint ptr %key19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %key19.i, align 4
  %keylen21.i = getelementptr inbounds %struct.ieee80211_key, ptr %18, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %keylen21.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %keylen21.i, align 2
  %conv22.i = zext i8 %20 to i32
  %keyidx25.i = getelementptr inbounds %struct.ieee80211_key, ptr %18, i32 0, i32 8, i32 5
  %21 = ptrtoint ptr %keyidx25.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %keyidx25.i, align 1
  %conv26.i = sext i8 %22 to i32
  %call27.i = tail call fastcc ptr @ieee80211_wep_add_iv(ptr noundef %16, ptr noundef %skb.014, i32 noundef %conv22.i, i32 noundef %conv26.i) #7
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.then17.i.if.then_crit_edge, label %if.then17.i.wep_encrypt_skb.exit_crit_edge

if.then17.i.wep_encrypt_skb.exit_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wep_encrypt_skb.exit

if.then17.i.if.then_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

wep_encrypt_skb.exit:                             ; preds = %if.then17.i.wep_encrypt_skb.exit_crit_edge, %if.else.i.wep_encrypt_skb.exit_crit_edge, %if.then.i.wep_encrypt_skb.exit_crit_edge
  %23 = ptrtoint ptr %skb.014 to i32
  call void @__asan_load4_noabort(i32 %23)
  %skb.0 = load ptr, ptr %skb.014, align 4
  %cmp.not = icmp eq ptr %skb.0, %skbs
  br i1 %cmp.not, label %wep_encrypt_skb.exit.cleanup_crit_edge, label %wep_encrypt_skb.exit.for.body_crit_edge

wep_encrypt_skb.exit.for.body_crit_edge:          ; preds = %wep_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

wep_encrypt_skb.exit.cleanup_crit_edge:           ; preds = %wep_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %if.then17.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %24 = ptrtoint ptr %local18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %local18.i, align 4
  %tx_handlers_drop_wep = getelementptr inbounds %struct.ieee80211_local, ptr %25, i32 0, i32 112
  %26 = ptrtoint ptr %tx_handlers_drop_wep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_handlers_drop_wep, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_handlers_drop_wep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %wep_encrypt_skb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %wep_encrypt_skb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_set_protected(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/wep.c", i32 139, i32 6}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2149312631}
!14 = !{!"branch_weights", i32 1, i32 2000}
