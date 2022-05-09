; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.agere_ext_scan_info = type <{ i16, i8, i8, i8, i8, [2 x i16], i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16, [6 x i8], [6 x i8], i16, i64, i16, i16, [0 x i8] }>
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.agere_scan_apinfo = type { i16, i16, i16, [6 x i8], i16, i16, i16, [32 x i8] }
%struct.symbol_scan_apinfo = type { i8, i8, i16, i16, [6 x i8], i16, i16, i16, [32 x i8], [5 x i16], i16, [6 x i8], [8 x i8] }
%struct.prism2_scan_apinfo = type { i16, i16, i16, [6 x i8], i16, i16, i16, [32 x i8], [10 x i8], i16, i16 }

@orinoco_add_hostscan_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Invalid atom_len in scan data: %zu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"orinoco_add_hostscan_results\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intersil/orinoco/scan.c\00", [51 x i8] zeroinitializer }, align 32
@orinoco_add_hostscan_results._entry_ptr = internal global ptr @orinoco_add_hostscan_results._entry, section ".printk_index", align 4
@orinoco_add_hostscan_results._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: Unexpected scan data length %zu, atom_len %zu, offset %d\0A\00", [32 x i8] zeroinitializer }, align 32
@orinoco_add_hostscan_results._entry_ptr.5 = internal global ptr @orinoco_add_hostscan_results._entry.3, section ".printk_index", align 4
@orinoco_add_hostscan_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017Invalid channel designation %04X(%04X)\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"orinoco_add_hostscan_result\00", [36 x i8] zeroinitializer }, align 32
@orinoco_add_hostscan_result._entry_ptr = internal global ptr @orinoco_add_hostscan_result._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 205, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 222, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [48 x i8] c"../drivers/net/wireless/intersil/orinoco/scan.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 117, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @orinoco_add_hostscan_result._entry, ptr @orinoco_add_hostscan_result._entry_ptr, ptr @orinoco_add_hostscan_results._entry, ptr @orinoco_add_hostscan_results._entry.3, ptr @orinoco_add_hostscan_results._entry_ptr, ptr @orinoco_add_hostscan_results._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_add_hostscan_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_add_hostscan_results._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_add_hostscan_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_add_extscan_result(ptr noundef %priv, ptr noundef %bss, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %priv, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !26

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #5, !srcloc !27
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %sub = add i32 %len, -68
  %data = getelementptr inbounds %struct.agere_ext_scan_info, ptr %bss, i32 0, i32 20
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 3, ptr noundef %data, i32 noundef %sub, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %priv_to_wiphy.exit.cond.end_crit_edge, label %cond.true

priv_to_wiphy.exit.cond.end_crit_edge:            ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %priv_to_wiphy.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %priv_to_wiphy.exit.cond.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -1408
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %cond, i32 noundef 0) #5
  %2 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %2
  %call.i39 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %add.ptr.i, i32 noundef %mul.i) #5
  %timestamp4 = getelementptr inbounds %struct.agere_ext_scan_info, ptr %bss, i32 0, i32 17
  %3 = ptrtoint ptr %timestamp4 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %timestamp4, align 1
  %capabilities = getelementptr inbounds %struct.agere_ext_scan_info, ptr %bss, i32 0, i32 19
  %5 = ptrtoint ptr %capabilities to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %capabilities, align 1
  %beacon_interval5 = getelementptr inbounds %struct.agere_ext_scan_info, ptr %bss, i32 0, i32 18
  %7 = ptrtoint ptr %beacon_interval5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %beacon_interval5, align 1
  %level = getelementptr inbounds %struct.agere_ext_scan_info, ptr %bss, i32 0, i32 2
  %9 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level, align 1
  %11 = tail call i8 @llvm.umax.i8(i8 %10, i8 47)
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 -118)
  %13 = zext i8 %12 to i32
  %14 = tail call i16 @llvm.bswap.i16(i16 %8)
  %15 = tail call i16 @llvm.bswap.i16(i16 %6)
  %16 = tail call i64 @llvm.bswap.i64(i64 %4)
  %17 = mul nuw nsw i32 %13, 100
  %mul = add nuw nsw i32 %17, -14900
  %bssid = getelementptr inbounds %struct.agere_ext_scan_info, ptr %bss, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #5
  %18 = getelementptr inbounds i8, ptr %data.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i39, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %21 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %scan_width.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %18, align 8
  %call.i40 = call ptr @cfg80211_inform_bss_data(ptr noundef %add.ptr.i, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %bssid, i64 noundef %16, i16 noundef zeroext %15, i16 noundef zeroext %14, ptr noundef %data, i32 noundef %sub, i32 noundef 3264) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #5
  call void @cfg80211_put_bss(ptr noundef %add.ptr.i, ptr noundef %call.i40) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_add_hostscan_results(ptr noundef %priv, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca %struct.cfg80211_inform_bss, align 8
  %ie_buf.i = alloca [46 x i8], align 1
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.scan_abort_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 1, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.scan_abort_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %scan_abort

sw.bb1:                                           ; preds = %entry
  %rem = urem i32 %len, 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.else, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  %rem2 = urem i32 %len, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool3.not = icmp eq i32 %rem2, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1291, i32 %len)
  %cmp = icmp ugt i32 %len, 1291
  br i1 %cmp, label %land.lhs.true, label %if.else5.if.else9_crit_edge

if.else5.if.else9_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else9

land.lhs.true:                                    ; preds = %if.else5
  %arrayidx = getelementptr i8, ptr %buf, i32 68
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp6 = icmp eq i8 %4, 0
  br i1 %cmp6, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else9

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %if.else5.if.else9_crit_edge
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %has_hostscan = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %5 = ptrtoint ptr %has_hostscan to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %has_hostscan, align 2
  %6 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool13.not = icmp eq i16 %6, 0
  br i1 %tobool13.not, label %sw.bb12.sw.epilog_crit_edge, label %if.then14

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb12
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buf, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #5
  %conv15 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %9)
  %cmp16 = icmp ult i16 %9, 64
  br i1 %cmp16, label %do.end, label %if.then14.sw.epilog_crit_edge

if.then14.sw.epilog_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %conv15) #8
  br label %scan_abort

sw.epilog:                                        ; preds = %if.then14.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %if.else9, %land.lhs.true.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %atom_len.1 = phi i32 [ %conv15, %if.then14.sw.epilog_crit_edge ], [ 50, %entry.sw.epilog_crit_edge ], [ 68, %if.else9 ], [ 68, %sw.bb1.sw.epilog_crit_edge ], [ 76, %if.else.sw.epilog_crit_edge ], [ 76, %land.lhs.true.sw.epilog_crit_edge ], [ 62, %sw.bb12.sw.epilog_crit_edge ]
  %offset.0 = phi i32 [ 4, %if.then14.sw.epilog_crit_edge ], [ %1, %entry.sw.epilog_crit_edge ], [ 0, %if.else9 ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.else.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 4, %sw.bb12.sw.epilog_crit_edge ]
  %sub = sub i32 %len, %offset.0
  %rem23 = urem i32 %sub, %atom_len.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23)
  %tobool24.not = icmp eq i32 %rem23, 0
  br i1 %tobool24.not, label %for.cond.preheader, label %do.end28

for.cond.preheader:                               ; preds = %sw.epilog
  %add67 = add nuw nsw i32 %offset.0, %atom_len.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %len)
  %cmp35.not68 = icmp ugt i32 %add67, %len
  br i1 %cmp35.not68, label %for.cond.preheader.scan_abort_crit_edge, label %for.body.lr.ph

for.cond.preheader.scan_abort_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %scan_abort

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i.i = icmp eq ptr %priv, null
  %add.ptr.i.i = getelementptr i8, ptr %priv, i32 -1408
  %12 = getelementptr inbounds i8, ptr %ie_buf.i, i32 2
  %arrayidx2.i = getelementptr inbounds [46 x i8], ptr %ie_buf.i, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %data.i.i, i32 8
  %scan_width.i.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i.i, i32 0, i32 1
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %for.body.preheader, !prof !26

for.body.preheader:                               ; preds = %for.body.lr.ph
  %add.ptr.i = getelementptr inbounds i8, ptr %ie_buf.i, i32 2
  br label %for.body

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %ndev30 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %14 = ptrtoint ptr %ndev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev30, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %15, i32 noundef %len, i32 noundef %atom_len.1, i32 noundef %offset.0) #8
  br label %scan_abort

for.body:                                         ; preds = %orinoco_add_hostscan_result.exit.for.body_crit_edge, %for.body.preheader
  %add70 = phi i32 [ %add, %orinoco_add_hostscan_result.exit.for.body_crit_edge ], [ %add67, %for.body.preheader ]
  %offset.169 = phi i32 [ %add70, %orinoco_add_hostscan_result.exit.for.body_crit_edge ], [ %offset.0, %for.body.preheader ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset.169
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %ie_buf.i) #5
  %essid_len.i = getelementptr inbounds %struct.agere_scan_apinfo, ptr %add.ptr, i32 0, i32 6
  %16 = ptrtoint ptr %essid_len.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %essid_len.i, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #5
  %conv.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %ie_buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ie_buf.i, align 1
  %conv1.i = trunc i16 %18 to i8
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %essid.i = getelementptr inbounds %struct.agere_scan_apinfo, ptr %add.ptr, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %18)
  %21 = icmp ugt i16 %18, 43
  %22 = sub nsw i32 44, %conv.i
  %23 = select i1 %21, i32 0, i32 %22
  %24 = getelementptr i8, ptr %12, i32 %conv.i
  %25 = call ptr @memset(ptr %24, i32 255, i32 %23)
  %26 = call ptr @memcpy(ptr %12, ptr %essid.i, i32 %conv.i)
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %conv1.mask.i = and i16 %18, 255
  %narrow.i = add nuw nsw i16 %conv1.mask.i, 2
  %add.i = zext i16 %narrow.i to i32
  %27 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %firmware_type, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %28, label %for.body.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb11.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.body4.i.i:                                     ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #5, !srcloc !27
  unreachable

sw.bb.i:                                          ; preds = %for.body
  %rates.i = getelementptr inbounds %struct.symbol_scan_apinfo, ptr %add.ptr, i32 0, i32 9
  %30 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %add.ptr5.i, align 1
  %31 = ptrtoint ptr %rates.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rates.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %32)
  %cmp3.i.i = icmp ult i16 %32, 256
  br i1 %cmp3.i.i, label %sw.bb.i.symbol_build_supp_rates.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.symbol_build_supp_rates.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symbol_build_supp_rates.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %33 = lshr i16 %32, 8
  %conv.i.i = trunc i16 %33 to i8
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr5.i, i32 2
  %34 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i.i, ptr %arrayidx5.i.i, align 1
  %arrayidx1.1.i.i = getelementptr %struct.symbol_scan_apinfo, ptr %add.ptr, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx1.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %36)
  %cmp3.1.i.i = icmp ult i16 %36, 256
  br i1 %cmp3.1.i.i, label %if.end.i.i.symbol_build_supp_rates.exit.i_crit_edge, label %if.end.1.i.i

if.end.i.i.symbol_build_supp_rates.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symbol_build_supp_rates.exit.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %37 = lshr i16 %36, 8
  %conv.1.i.i = trunc i16 %37 to i8
  %arrayidx5.1.i.i = getelementptr i8, ptr %add.ptr5.i, i32 3
  %38 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.1.i.i, ptr %arrayidx5.1.i.i, align 1
  %arrayidx1.2.i.i = getelementptr %struct.symbol_scan_apinfo, ptr %add.ptr, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx1.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %40)
  %cmp3.2.i.i = icmp ult i16 %40, 256
  br i1 %cmp3.2.i.i, label %if.end.1.i.i.symbol_build_supp_rates.exit.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.symbol_build_supp_rates.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symbol_build_supp_rates.exit.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %41 = lshr i16 %40, 8
  %conv.2.i.i = trunc i16 %41 to i8
  %arrayidx5.2.i.i = getelementptr i8, ptr %add.ptr5.i, i32 4
  %42 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.2.i.i, ptr %arrayidx5.2.i.i, align 1
  %arrayidx1.3.i.i = getelementptr %struct.symbol_scan_apinfo, ptr %add.ptr, i32 0, i32 9, i32 3
  %43 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx1.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %44)
  %cmp3.3.i.i = icmp ult i16 %44, 256
  br i1 %cmp3.3.i.i, label %if.end.2.i.i.symbol_build_supp_rates.exit.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.symbol_build_supp_rates.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symbol_build_supp_rates.exit.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  %45 = lshr i16 %44, 8
  %conv.3.i.i = trunc i16 %45 to i8
  %arrayidx5.3.i.i = getelementptr i8, ptr %add.ptr5.i, i32 5
  %46 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.3.i.i, ptr %arrayidx5.3.i.i, align 1
  %arrayidx1.4.i.i = getelementptr %struct.symbol_scan_apinfo, ptr %add.ptr, i32 0, i32 9, i32 4
  %47 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx1.4.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %48)
  %cmp3.4.i.i = icmp ult i16 %48, 256
  br i1 %cmp3.4.i.i, label %if.end.3.i.i.symbol_build_supp_rates.exit.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.symbol_build_supp_rates.exit.i_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symbol_build_supp_rates.exit.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = lshr i16 %48, 8
  %conv.4.i.i = trunc i16 %49 to i8
  %arrayidx5.4.i.i = getelementptr i8, ptr %add.ptr5.i, i32 6
  %50 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.4.i.i, ptr %arrayidx5.4.i.i, align 1
  br label %symbol_build_supp_rates.exit.i

symbol_build_supp_rates.exit.i:                   ; preds = %if.end.4.i.i, %if.end.3.i.i.symbol_build_supp_rates.exit.i_crit_edge, %if.end.2.i.i.symbol_build_supp_rates.exit.i_crit_edge, %if.end.1.i.i.symbol_build_supp_rates.exit.i_crit_edge, %if.end.i.i.symbol_build_supp_rates.exit.i_crit_edge, %sw.bb.i.symbol_build_supp_rates.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %sw.bb.i.symbol_build_supp_rates.exit.i_crit_edge ], [ 1, %if.end.i.i.symbol_build_supp_rates.exit.i_crit_edge ], [ 2, %if.end.1.i.i.symbol_build_supp_rates.exit.i_crit_edge ], [ 3, %if.end.2.i.i.symbol_build_supp_rates.exit.i_crit_edge ], [ 4, %if.end.3.i.i.symbol_build_supp_rates.exit.i_crit_edge ], [ 5, %if.end.4.i.i ]
  %conv6.i.i = trunc i32 %i.0.lcssa.i.i to i8
  %arrayidx7.i.i = getelementptr i8, ptr %add.ptr5.i, i32 1
  %51 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %add8.i.i = add nuw nsw i32 %add.i, 2
  %add10.i = add nuw nsw i32 %add8.i.i, %i.0.lcssa.i.i
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %for.body
  %rates12.i = getelementptr inbounds %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8
  %52 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %add.ptr5.i, align 1
  %53 = ptrtoint ptr %rates12.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rates12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp2.i.i = icmp eq i8 %54, 0
  br i1 %cmp2.i.i, label %sw.bb11.i._crit_edge, label %if.end.i73.i

sw.bb11.i._crit_edge:                             ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.i73.i:                                     ; preds = %sw.bb11.i
  %arrayidx5.i71.i = getelementptr i8, ptr %add.ptr5.i, i32 2
  %55 = ptrtoint ptr %arrayidx5.i71.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx5.i71.i, align 1
  %arrayidx1.1.i72.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %arrayidx1.1.i72.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx1.1.i72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp2.1.i.i = icmp eq i8 %57, 0
  br i1 %cmp2.1.i.i, label %if.end.i73.i._crit_edge, label %if.end.1.i76.i

if.end.i73.i._crit_edge:                          ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.1.i76.i:                                   ; preds = %if.end.i73.i
  %arrayidx5.1.i74.i = getelementptr i8, ptr %add.ptr5.i, i32 3
  %58 = ptrtoint ptr %arrayidx5.1.i74.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx5.1.i74.i, align 1
  %arrayidx1.2.i75.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 2
  %59 = ptrtoint ptr %arrayidx1.2.i75.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx1.2.i75.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp2.2.i.i = icmp eq i8 %60, 0
  br i1 %cmp2.2.i.i, label %if.end.1.i76.i._crit_edge, label %if.end.2.i79.i

if.end.1.i76.i._crit_edge:                        ; preds = %if.end.1.i76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.2.i79.i:                                   ; preds = %if.end.1.i76.i
  %arrayidx5.2.i77.i = getelementptr i8, ptr %add.ptr5.i, i32 4
  %61 = ptrtoint ptr %arrayidx5.2.i77.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx5.2.i77.i, align 1
  %arrayidx1.3.i78.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 3
  %62 = ptrtoint ptr %arrayidx1.3.i78.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx1.3.i78.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp2.3.i.i = icmp eq i8 %63, 0
  br i1 %cmp2.3.i.i, label %if.end.2.i79.i._crit_edge, label %if.end.3.i82.i

if.end.2.i79.i._crit_edge:                        ; preds = %if.end.2.i79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.3.i82.i:                                   ; preds = %if.end.2.i79.i
  %arrayidx5.3.i80.i = getelementptr i8, ptr %add.ptr5.i, i32 5
  %64 = ptrtoint ptr %arrayidx5.3.i80.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx5.3.i80.i, align 1
  %arrayidx1.4.i81.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 4
  %65 = ptrtoint ptr %arrayidx1.4.i81.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.4.i81.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp2.4.i.i = icmp eq i8 %66, 0
  br i1 %cmp2.4.i.i, label %if.end.3.i82.i._crit_edge, label %if.end.4.i84.i

if.end.3.i82.i._crit_edge:                        ; preds = %if.end.3.i82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.4.i84.i:                                   ; preds = %if.end.3.i82.i
  %arrayidx5.4.i83.i = getelementptr i8, ptr %add.ptr5.i, i32 6
  %67 = ptrtoint ptr %arrayidx5.4.i83.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx5.4.i83.i, align 1
  %arrayidx1.5.i.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 5
  %68 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp2.5.i.i = icmp eq i8 %69, 0
  br i1 %cmp2.5.i.i, label %if.end.4.i84.i._crit_edge, label %if.end.5.i.i

if.end.4.i84.i._crit_edge:                        ; preds = %if.end.4.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.5.i.i:                                     ; preds = %if.end.4.i84.i
  %arrayidx5.5.i.i = getelementptr i8, ptr %add.ptr5.i, i32 7
  %70 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx5.5.i.i, align 1
  %arrayidx1.6.i.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 6
  %71 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx1.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp2.6.i.i = icmp eq i8 %72, 0
  br i1 %cmp2.6.i.i, label %if.end.5.i.i._crit_edge, label %if.end.6.i.i

if.end.5.i.i._crit_edge:                          ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  %arrayidx5.6.i.i = getelementptr i8, ptr %add.ptr5.i, i32 8
  %73 = ptrtoint ptr %arrayidx5.6.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx5.6.i.i, align 1
  %arrayidx1.7.i.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 7
  %74 = ptrtoint ptr %arrayidx1.7.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx1.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp2.7.i.i = icmp eq i8 %75, 0
  br i1 %cmp2.7.i.i, label %if.end.6.i.i._crit_edge, label %land.lhs.true.i.i

if.end.6.i.i._crit_edge:                          ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %85

land.lhs.true.i.i:                                ; preds = %if.end.6.i.i
  %arrayidx5.7.i.i = getelementptr i8, ptr %add.ptr5.i, i32 9
  %76 = ptrtoint ptr %arrayidx5.7.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx5.7.i.i, align 1
  %arrayidx7.i85.i = getelementptr i8, ptr %add.ptr5.i, i32 1
  %77 = ptrtoint ptr %arrayidx7.i85.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 8, ptr %arrayidx7.i85.i, align 1
  %arrayidx10.i.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 8
  %78 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp12.not.i.i = icmp eq i8 %79, 0
  br i1 %cmp12.not.i.i, label %land.lhs.true.i.i.prism_build_supp_rates.exit.i_crit_edge, label %if.end25.i.i

land.lhs.true.i.i.prism_build_supp_rates.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prism_build_supp_rates.exit.i

if.end25.i.i:                                     ; preds = %land.lhs.true.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %add.ptr5.i, i32 10
  %80 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx15.i.i, align 1
  %arrayidx20.1.i.i = getelementptr %struct.prism2_scan_apinfo, ptr %add.ptr, i32 0, i32 8, i32 9
  %81 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx20.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp22.1.i.i = icmp eq i8 %82, 0
  %arrayidx33.i.i = getelementptr i8, ptr %add.ptr5.i, i32 11
  br i1 %cmp22.1.i.i, label %if.end34.i.i, label %if.end25.1.i.i

if.end25.1.i.i:                                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %arrayidx33.i.i, align 1
  br label %prism_build_supp_rates.exit.i

if.end34.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %arrayidx33.i.i, align 1
  br label %prism_build_supp_rates.exit.i

85:                                               ; preds = %if.end.6.i.i._crit_edge, %if.end.5.i.i._crit_edge, %if.end.4.i84.i._crit_edge, %if.end.3.i82.i._crit_edge, %if.end.2.i79.i._crit_edge, %if.end.1.i76.i._crit_edge, %if.end.i73.i._crit_edge, %sw.bb11.i._crit_edge
  %i.085.lcssa.i.i = phi i32 [ 0, %sw.bb11.i._crit_edge ], [ 1, %if.end.i73.i._crit_edge ], [ 2, %if.end.1.i76.i._crit_edge ], [ 3, %if.end.2.i79.i._crit_edge ], [ 4, %if.end.3.i82.i._crit_edge ], [ 5, %if.end.4.i84.i._crit_edge ], [ 6, %if.end.5.i.i._crit_edge ], [ 7, %if.end.6.i.i._crit_edge ]
  %conv664.i.i = trunc i32 %i.085.lcssa.i.i to i8
  %arrayidx765.i.i = getelementptr i8, ptr %add.ptr5.i, i32 1
  %86 = ptrtoint ptr %arrayidx765.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv664.i.i, ptr %arrayidx765.i.i, align 1
  %add3776.i.i = add nuw nsw i32 %i.085.lcssa.i.i, 2
  br label %prism_build_supp_rates.exit.i

prism_build_supp_rates.exit.i:                    ; preds = %85, %if.end34.i.i, %if.end25.1.i.i, %land.lhs.true.i.i.prism_build_supp_rates.exit.i_crit_edge
  %87 = phi i32 [ %add3776.i.i, %85 ], [ 13, %if.end34.i.i ], [ 14, %if.end25.1.i.i ], [ 12, %land.lhs.true.i.i.prism_build_supp_rates.exit.i_crit_edge ]
  %add15.i = add nuw nsw i32 %87, %add.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %prism_build_supp_rates.exit.i, %symbol_build_supp_rates.exit.i, %for.body.sw.epilog.i_crit_edge
  %ie_len.0.i = phi i32 [ %add.i, %for.body.sw.epilog.i_crit_edge ], [ %add15.i, %prism_build_supp_rates.exit.i ], [ %add10.i, %symbol_build_supp_rates.exit.i ]
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %add.ptr, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89) #5
  %conv18.i = zext i16 %90 to i32
  %call.i.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv18.i, i32 noundef 0) #5
  %div.i.i = udiv i32 %call.i.i, 1000
  %mul.i.i = mul nuw i32 %div.i.i, 1000
  %call.i86.i = call ptr @ieee80211_get_channel_khz(ptr noundef %add.ptr.i.i, i32 noundef %mul.i.i) #5
  %tobool.not.i = icmp eq ptr %call.i86.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %add.ptr, align 1
  %conv22.i = zext i16 %92 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv22.i, i32 noundef %div.i.i) #8
  br label %orinoco_add_hostscan_result.exit

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %capabilities.i = getelementptr inbounds %struct.agere_scan_apinfo, ptr %add.ptr, i32 0, i32 5
  %93 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %capabilities.i, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #5
  %beacon_interv.i = getelementptr inbounds %struct.agere_scan_apinfo, ptr %add.ptr, i32 0, i32 4
  %96 = ptrtoint ptr %beacon_interv.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %beacon_interv.i, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97) #5
  %level.i = getelementptr inbounds %struct.agere_scan_apinfo, ptr %add.ptr, i32 0, i32 2
  %99 = ptrtoint ptr %level.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %level.i, align 1
  %101 = call i16 @llvm.bswap.i16(i16 %100) #5
  %102 = call i16 @llvm.umax.i16(i16 %101, i16 47) #5
  %103 = call i16 @llvm.umin.i16(i16 %102, i16 138) #5
  %narrow89.i = mul nuw nsw i16 %103, 100
  %104 = zext i16 %narrow89.i to i32
  %mul.i = add nuw nsw i32 %104, -14900
  %bssid.i = getelementptr inbounds %struct.agere_scan_apinfo, ptr %add.ptr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i.i) #5
  %105 = call ptr @memset(ptr %13, i32 0, i32 40)
  %106 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i86.i, ptr %data.i.i, align 8
  %107 = ptrtoint ptr %scan_width.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %scan_width.i.i, align 4
  %108 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul.i, ptr %13, align 8
  %call.i87.i = call ptr @cfg80211_inform_bss_data(ptr noundef %add.ptr.i.i, ptr noundef nonnull %data.i.i, i32 noundef 0, ptr noundef %bssid.i, i64 noundef 0, i16 noundef zeroext %95, i16 noundef zeroext %98, ptr noundef nonnull %ie_buf.i, i32 noundef %ie_len.0.i, i32 noundef 3264) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i.i) #5
  call void @cfg80211_put_bss(ptr noundef %add.ptr.i.i, ptr noundef %call.i87.i) #5
  br label %orinoco_add_hostscan_result.exit

orinoco_add_hostscan_result.exit:                 ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %ie_buf.i) #5
  %add = add i32 %add70, %atom_len.1
  %cmp35.not = icmp ugt i32 %add, %len
  br i1 %cmp35.not, label %orinoco_add_hostscan_result.exit.scan_abort_crit_edge, label %orinoco_add_hostscan_result.exit.for.body_crit_edge

orinoco_add_hostscan_result.exit.for.body_crit_edge: ; preds = %orinoco_add_hostscan_result.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

orinoco_add_hostscan_result.exit.scan_abort_crit_edge: ; preds = %orinoco_add_hostscan_result.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %scan_abort

scan_abort:                                       ; preds = %orinoco_add_hostscan_result.exit.scan_abort_crit_edge, %do.end28, %for.cond.preheader.scan_abort_crit_edge, %do.end, %entry.scan_abort_crit_edge
  %abort.0.off0 = phi i1 [ true, %do.end ], [ true, %do.end28 ], [ true, %entry.scan_abort_crit_edge ], [ false, %for.cond.preheader.scan_abort_crit_edge ], [ false, %orinoco_add_hostscan_result.exit.scan_abort_crit_edge ]
  %scan_request = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 54
  %109 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %scan_request, align 4
  %tobool38.not = icmp eq ptr %110, null
  br i1 %tobool38.not, label %scan_abort.if.end43_crit_edge, label %if.then39

scan_abort.if.end43_crit_edge:                    ; preds = %scan_abort
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then39:                                        ; preds = %scan_abort
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #5
  %111 = getelementptr inbounds i8, ptr %info, i32 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 -1, ptr %111, align 8
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %frombool = zext i1 %abort.0.off0 to i8
  %113 = call ptr @memset(ptr %info, i32 0, i32 14)
  %114 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %frombool, ptr %aborted, align 2
  call void @cfg80211_scan_done(ptr noundef nonnull %110, ptr noundef nonnull %info) #5
  %115 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %scan_request, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %scan_abort.if.end43_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_scan_done(ptr nocapture noundef %priv, i1 noundef zeroext %abort) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_request = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 54
  %0 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_request, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %abort to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #5
  %2 = getelementptr inbounds i8, ptr %info, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %4 = call ptr @memset(ptr %info, i32 0, i32 14)
  %5 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %aborted, align 2
  call void @cfg80211_scan_done(ptr noundef nonnull %1, ptr noundef nonnull %info) #5
  %6 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %scan_request, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/scan.c", i32 205, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @orinoco_add_hostscan_results._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @orinoco_add_hostscan_results._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/orinoco/scan.c", i32 222, i32 3}
!8 = !{ptr @orinoco_add_hostscan_results._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @orinoco_add_hostscan_results._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/orinoco/scan.c", i32 117, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @orinoco_add_hostscan_result._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @orinoco_add_hostscan_result._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2156976632, i64 2156977120, i64 2156976669, i64 2156976725, i64 2156976759, i64 2156976783, i64 2156976824, i64 2156976845, i64 2156976873, i64 2156976907}
