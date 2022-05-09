; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/wlan_cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wilc_cfg_byte = type { i16, i8 }
%struct.wilc_cfg_hword = type { i16, i16 }
%struct.wilc_cfg_word = type { i16, i32 }
%struct.wilc_cfg_str = type { i16, ptr }
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wilc_cfg_rsp = type { i8, i8 }
%struct.wilc_cfg_str_vals = type { [7 x i8], [129 x i8], [256 x i8] }

@g_cfg_byte = internal constant { [5 x %struct.wilc_cfg_byte], [44 x i8] } { [5 x %struct.wilc_cfg_byte] [%struct.wilc_cfg_byte { i16 5, i8 0 }, %struct.wilc_cfg_byte { i16 31, i8 0 }, %struct.wilc_cfg_byte { i16 38, i8 0 }, %struct.wilc_cfg_byte { i16 207, i8 0 }, %struct.wilc_cfg_byte { i16 -1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@g_cfg_hword = internal constant { [1 x %struct.wilc_cfg_hword], [28 x i8] } { [1 x %struct.wilc_cfg_hword] [%struct.wilc_cfg_hword { i16 -1, i16 0 }], [28 x i8] zeroinitializer }, align 32
@g_cfg_word = internal constant { [5 x %struct.wilc_cfg_word], [56 x i8] } { [5 x %struct.wilc_cfg_word] [%struct.wilc_cfg_word { i16 8192, i32 0 }, %struct.wilc_cfg_word { i16 8197, i32 0 }, %struct.wilc_cfg_word { i16 8200, i32 0 }, %struct.wilc_cfg_word { i16 8324, i32 0 }, %struct.wilc_cfg_word { i16 -1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@g_cfg_str = internal constant { [4 x %struct.wilc_cfg_str], [32 x i8] } { [4 x %struct.wilc_cfg_str] [%struct.wilc_cfg_str { i16 12289, ptr null }, %struct.wilc_cfg_str { i16 12300, ptr null }, %struct.wilc_cfg_str { i16 12320, ptr null }, %struct.wilc_cfg_str { i16 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 73, i64 78, i64 82, i64 83]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 65535]
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"g_cfg_byte\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 21, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"g_cfg_hword\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 29, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"g_cfg_word\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 33, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"g_cfg_str\00", align 1
@___asan_gen_.15 = private constant [54 x i8] c"../drivers/net/wireless/microchip/wilc1000/wlan_cfg.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 42, i32 34 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @g_cfg_byte, ptr @g_cfg_hword, ptr @g_cfg_word, ptr @g_cfg_str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cfg_byte to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cfg_hword to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cfg_word to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cfg_str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_cfg_set_wid(ptr nocapture noundef %frame, i32 noundef %offset, i16 noundef zeroext %id, ptr noundef readonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %id, 12
  %conv13 = zext i16 %0 to i32
  %1 = zext i32 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv13, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb22
    i32 3, label %sw.bb28
    i32 4, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %add.i = add i32 %offset, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1467, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 1467
  br i1 %cmp.i, label %if.then.sw.epilog_crit_edge, label %if.end.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %arrayidx.i = getelementptr i8, ptr %frame, i32 %offset
  %4 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %arrayidx.i, align 1
  %add1.i = add nsw i32 %offset, 2
  %arrayidx2.i = getelementptr i8, ptr %frame, i32 %add1.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 256, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %frame, i32 %add.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %arrayidx4.i, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp17 = icmp slt i32 %size, 2
  %8 = add i32 %offset, -1463
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1468, i32 %8)
  %cmp.i53 = icmp ult i32 %8, -1468
  %or.cond = or i1 %cmp.i53, %cmp17
  br i1 %or.cond, label %sw.bb16.sw.epilog_crit_edge, label %if.end.i58

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i58:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buf, align 2
  %arrayidx.i54 = getelementptr i8, ptr %frame, i32 %offset
  %11 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  %12 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %arrayidx.i54, align 1
  %add1.i55 = add nsw i32 %offset, 2
  %arrayidx2.i56 = getelementptr i8, ptr %frame, i32 %add1.i55
  %13 = ptrtoint ptr %arrayidx2.i56 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 512, ptr %arrayidx2.i56, align 1
  %add3.i = add nsw i32 %offset, 4
  %arrayidx4.i57 = getelementptr i8, ptr %frame, i32 %add3.i
  %14 = tail call i16 @llvm.bswap.i16(i16 %10) #7
  %15 = ptrtoint ptr %arrayidx4.i57 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx4.i57, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp23 = icmp slt i32 %size, 4
  %16 = add i32 %offset, -1461
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1468, i32 %16)
  %cmp.i60 = icmp ult i32 %16, -1468
  %or.cond86 = or i1 %cmp.i60, %cmp23
  br i1 %or.cond86, label %sw.bb22.sw.epilog_crit_edge, label %if.end.i66

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i66:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf, align 4
  %arrayidx.i61 = getelementptr i8, ptr %frame, i32 %offset
  %19 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  %20 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %arrayidx.i61, align 1
  %add1.i62 = add nsw i32 %offset, 2
  %arrayidx2.i63 = getelementptr i8, ptr %frame, i32 %add1.i62
  %21 = ptrtoint ptr %arrayidx2.i63 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 1024, ptr %arrayidx2.i63, align 1
  %add3.i64 = add nsw i32 %offset, 4
  %arrayidx4.i65 = getelementptr i8, ptr %frame, i32 %add3.i64
  %22 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %23 = ptrtoint ptr %arrayidx4.i65 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %arrayidx4.i65, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %add.i68 = add i32 %size, %offset
  %24 = add i32 %add.i68, -1464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1468, i32 %24)
  %cmp.i69 = icmp ult i32 %24, -1468
  br i1 %cmp.i69, label %sw.bb28.sw.epilog_crit_edge, label %if.end.i71

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i71:                                       ; preds = %sw.bb28
  %arrayidx.i70 = getelementptr i8, ptr %frame, i32 %offset
  %25 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  %26 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %arrayidx.i70, align 1
  %conv.i = trunc i32 %size to i16
  %add2.i = add i32 %offset, 2
  %arrayidx3.i = getelementptr i8, ptr %frame, i32 %add2.i
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %arrayidx3.i, align 1
  %tobool.not.i = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4.not.i = icmp eq i32 %size, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.end.i71.if.end9.i_crit_edge, label %if.then6.i

if.end.i71.if.end9.i_crit_edge:                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  %add7.i = add i32 %offset, 4
  %arrayidx8.i = getelementptr i8, ptr %frame, i32 %add7.i
  %29 = call ptr @memcpy(ptr %arrayidx8.i, ptr %buf, i32 %size)
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i71.if.end9.i_crit_edge
  %add10.i = add i32 %size, 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %add.i73 = add i32 %size, %offset
  %30 = add i32 %add.i73, -1463
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1468, i32 %30)
  %cmp.i74 = icmp ult i32 %30, -1468
  br i1 %cmp.i74, label %sw.bb30.sw.epilog_crit_edge, label %if.end.i82

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i82:                                       ; preds = %sw.bb30
  %arrayidx.i75 = getelementptr i8, ptr %frame, i32 %offset
  %31 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  %32 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %arrayidx.i75, align 1
  %conv.i76 = trunc i32 %size to i16
  %add2.i77 = add i32 %offset, 2
  %arrayidx3.i78 = getelementptr i8, ptr %frame, i32 %add2.i77
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv.i76) #7
  %34 = ptrtoint ptr %arrayidx3.i78 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %arrayidx3.i78, align 1
  %tobool.not.i79 = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4.not.i80 = icmp eq i32 %size, 0
  %or.cond.i81 = or i1 %tobool.not.i79, %cmp4.not.i80
  br i1 %or.cond.i81, label %if.end.i82.if.end18.i_crit_edge, label %for.body.lr.ph.i

if.end.i82.if.end18.i_crit_edge:                  ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

for.body.lr.ph.i:                                 ; preds = %if.end.i82
  %add7.i83 = add i32 %offset, 4
  %arrayidx8.i84 = getelementptr i8, ptr %frame, i32 %add7.i83
  %35 = call ptr @memcpy(ptr %arrayidx8.i84, ptr %buf, i32 %size)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %checksum.045.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %add16.i, %for.body.i.for.body.i_crit_edge ]
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add12.i = add i32 %i.044.i, %add7.i83
  %arrayidx13.i = getelementptr i8, ptr %frame, i32 %add12.i
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx13.i, align 1
  %add16.i = add i8 %37, %checksum.045.i
  %inc.i = add nuw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %size
  br i1 %exitcond.not.i, label %for.body.i.if.end18.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %for.body.i.if.end18.i_crit_edge, %if.end.i82.if.end18.i_crit_edge
  %checksum.1.i = phi i8 [ 0, %if.end.i82.if.end18.i_crit_edge ], [ %add16.i, %for.body.i.if.end18.i_crit_edge ]
  %add20.i = add i32 %add.i73, 4
  %arrayidx21.i = getelementptr i8, ptr %frame, i32 %add20.i
  %38 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %checksum.1.i, ptr %arrayidx21.i, align 1
  %add22.i = add i32 %size, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18.i, %sw.bb30.sw.epilog_crit_edge, %if.end9.i, %sw.bb28.sw.epilog_crit_edge, %if.end.i66, %sw.bb22.sw.epilog_crit_edge, %if.end.i58, %sw.bb16.sw.epilog_crit_edge, %if.end.i, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb22.sw.epilog_crit_edge ], [ 0, %sw.bb16.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 5, %if.end.i ], [ 0, %if.then.sw.epilog_crit_edge ], [ 6, %if.end.i58 ], [ 8, %if.end.i66 ], [ %add10.i, %if.end9.i ], [ 0, %sw.bb28.sw.epilog_crit_edge ], [ %add22.i, %if.end18.i ], [ 0, %sw.bb30.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @wilc_wlan_cfg_get_wid(ptr nocapture noundef writeonly %frame, i32 noundef %offset, i16 noundef zeroext %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %offset, -1466
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1468, i32 %0)
  %cmp = icmp ult i32 %0, -1468
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %frame, i32 %offset
  %1 = tail call i16 @llvm.bswap.i16(i16 %id) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_cfg_get_val(ptr nocapture noundef readonly %wl, i16 noundef zeroext %wid, ptr nocapture noundef writeonly %buffer, i32 noundef %buffer_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %wid)
  %cmp = icmp ult i16 %wid, 4096
  br i1 %cmp, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %entry
  %cfg14 = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40
  %0 = ptrtoint ptr %cfg14 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg14, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %arrayidx = getelementptr %struct.wilc_cfg_byte, ptr %1, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp18.not = icmp eq i16 %3, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %wid)
  %cmp25.not = icmp eq i16 %3, %wid
  %or.cond = or i1 %cmp18.not, %cmp25.not
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %cmp25.not, label %if.then34, label %while.end.if.end154_crit_edge

while.end.if.end154_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then34:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr %struct.wilc_cfg_byte, ptr %1, i32 %i.0, i32 1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 2
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buffer, align 1
  br label %if.end154

if.else:                                          ; preds = %entry
  %shr = lshr i16 %wid, 12
  %trunc = trunc i16 %shr to i4
  %7 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i4 %trunc, label %if.else.if.end154_crit_edge [
    i4 1, label %while.cond41.preheader
    i4 2, label %while.cond76.preheader
    i4 3, label %while.cond111.preheader
  ]

if.else.if.end154_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

while.cond111.preheader:                          ; preds = %if.else
  %s = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 4
  br label %while.cond111

while.cond76.preheader:                           ; preds = %if.else
  %w = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 2
  %10 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %w, align 4
  br label %while.cond76

while.cond41.preheader:                           ; preds = %if.else
  %hw = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  br label %while.cond41

while.cond41:                                     ; preds = %while.cond41.while.cond41_crit_edge, %while.cond41.preheader
  %i.1 = phi i32 [ %inc57, %while.cond41.while.cond41_crit_edge ], [ 0, %while.cond41.preheader ]
  %arrayidx42 = getelementptr %struct.wilc_cfg_hword, ptr %13, i32 %i.1
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp45.not = icmp eq i16 %15, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %wid)
  %cmp53.not = icmp eq i16 %15, %wid
  %or.cond207 = or i1 %cmp45.not, %cmp53.not
  %inc57 = add i32 %i.1, 1
  br i1 %or.cond207, label %while.end58, label %while.cond41.while.cond41_crit_edge

while.cond41.while.cond41_crit_edge:              ; preds = %while.cond41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond41

while.end58:                                      ; preds = %while.cond41
  br i1 %cmp53.not, label %if.then66, label %while.end58.if.end154_crit_edge

while.end58.if.end154_crit_edge:                  ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then66:                                        ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #9
  %val69 = getelementptr %struct.wilc_cfg_hword, ptr %13, i32 %i.1, i32 1
  %16 = ptrtoint ptr %val69 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %val69, align 2
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %buffer, align 1
  br label %if.end154

while.cond76:                                     ; preds = %while.cond76.while.cond76_crit_edge, %while.cond76.preheader
  %i.2 = phi i32 [ %inc92, %while.cond76.while.cond76_crit_edge ], [ 0, %while.cond76.preheader ]
  %arrayidx77 = getelementptr %struct.wilc_cfg_word, ptr %11, i32 %i.2
  %19 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp80.not = icmp eq i16 %20, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %wid)
  %cmp88.not = icmp eq i16 %20, %wid
  %or.cond208 = or i1 %cmp80.not, %cmp88.not
  %inc92 = add i32 %i.2, 1
  br i1 %or.cond208, label %while.end93, label %while.cond76.while.cond76_crit_edge

while.cond76.while.cond76_crit_edge:              ; preds = %while.cond76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond76

while.end93:                                      ; preds = %while.cond76
  br i1 %cmp88.not, label %if.then101, label %while.end93.if.end154_crit_edge

while.end93.if.end154_crit_edge:                  ; preds = %while.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then101:                                       ; preds = %while.end93
  call void @__sanitizer_cov_trace_pc() #9
  %val104 = getelementptr %struct.wilc_cfg_word, ptr %11, i32 %i.2, i32 1
  %21 = ptrtoint ptr %val104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val104, align 4
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %buffer, align 1
  br label %if.end154

while.cond111:                                    ; preds = %while.cond111.while.cond111_crit_edge, %while.cond111.preheader
  %i.3 = phi i32 [ %inc127, %while.cond111.while.cond111_crit_edge ], [ 0, %while.cond111.preheader ]
  %arrayidx112 = getelementptr %struct.wilc_cfg_str, ptr %9, i32 %i.3
  %24 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx112, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp115.not = icmp eq i16 %25, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %wid)
  %cmp123.not = icmp eq i16 %25, %wid
  %or.cond209 = or i1 %cmp115.not, %cmp123.not
  %inc127 = add i32 %i.3, 1
  br i1 %or.cond209, label %while.end128, label %while.cond111.while.cond111_crit_edge

while.cond111.while.cond111_crit_edge:            ; preds = %while.cond111
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond111

while.end128:                                     ; preds = %while.cond111
  br i1 %cmp123.not, label %if.then136, label %while.end128.if.end154_crit_edge

while.end128.if.end154_crit_edge:                 ; preds = %while.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then136:                                       ; preds = %while.end128
  %str = getelementptr %struct.wilc_cfg_str, ptr %9, i32 %i.3, i32 1
  %26 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %str, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %27, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #7
  %conv139 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv139, i32 %buffer_size)
  %cmp140.not = icmp ugt i32 %conv139, %buffer_size
  br i1 %cmp140.not, label %if.then136.if.end154_crit_edge, label %if.then142

if.then136.if.end154_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then142:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx146 = getelementptr i8, ptr %27, i32 2
  %31 = call ptr @memcpy(ptr %buffer, ptr %arrayidx146, i32 %conv139)
  br label %if.end154

if.end154:                                        ; preds = %if.then142, %if.then136.if.end154_crit_edge, %while.end128.if.end154_crit_edge, %if.then101, %while.end93.if.end154_crit_edge, %if.then66, %while.end58.if.end154_crit_edge, %if.else.if.end154_crit_edge, %if.then34, %while.end.if.end154_crit_edge
  %ret.1 = phi i32 [ 1, %if.then34 ], [ 0, %while.end.if.end154_crit_edge ], [ 2, %if.then66 ], [ 0, %while.end58.if.end154_crit_edge ], [ 4, %if.then101 ], [ 0, %while.end93.if.end154_crit_edge ], [ 0, %while.end128.if.end154_crit_edge ], [ 0, %if.else.if.end154_crit_edge ], [ %conv139, %if.then142 ], [ 0, %if.then136.if.end154_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wlan_cfg_indicate_rx(ptr noundef %wilc, ptr noundef %frame, i32 noundef %size, ptr nocapture noundef writeonly %rsp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %frame, align 1
  %arrayidx1 = getelementptr i8, ptr %frame, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %add.ptr = getelementptr i8, ptr %frame, i32 4
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rsp, align 1
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %1, label %sw.default [
    i8 82, label %sw.bb
    i8 73, label %sw.bb3
    i8 78, label %sw.bb7
    i8 83, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %sub = add i32 %size, -4
  %cfg1.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp198.i = icmp sgt i32 %sub, 0
  br i1 %cmp198.i, label %while.body.lr.ph.i, label %sw.bb.wilc_wlan_parse_response_frame.exit_crit_edge

sw.bb.wilc_wlan_parse_response_frame.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %wilc_wlan_parse_response_frame.exit

while.body.lr.ph.i:                               ; preds = %sw.bb
  %s.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 40, i32 3
  %w.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 40, i32 2
  %hw.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 40, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %info.addr.0201.i = phi ptr [ %add.ptr, %while.body.lr.ph.i ], [ %add.ptr.i, %sw.epilog.i.while.body.i_crit_edge ]
  %len.0200.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %len.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %size.addr.0199.i = phi i32 [ %sub, %while.body.lr.ph.i ], [ %sub.i, %sw.epilog.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %info.addr.0201.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %info.addr.0201.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  %9 = lshr i16 %8, 12
  %shr.i = zext i16 %9 to i32
  %10 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %shr.i, label %while.body.i.sw.epilog.i_crit_edge [
    i32 0, label %while.cond14.preheader.i
    i32 1, label %while.cond37.preheader.i
    i32 2, label %while.cond70.preheader.i
    i32 3, label %while.cond103.preheader.i
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

while.cond103.preheader.i:                        ; preds = %while.body.i
  %11 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s.i, align 4
  br label %while.cond103.i

while.cond70.preheader.i:                         ; preds = %while.body.i
  %13 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %w.i, align 4
  br label %while.cond70.i

while.cond37.preheader.i:                         ; preds = %while.body.i
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  br label %while.cond37.i

while.cond14.preheader.i:                         ; preds = %while.body.i
  %17 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg1.i, align 4
  br label %while.cond14.i

while.cond14.i:                                   ; preds = %while.cond14.i.while.cond14.i_crit_edge, %while.cond14.preheader.i
  %i.0.i = phi i32 [ %inc.i, %while.cond14.i.while.cond14.i_crit_edge ], [ 0, %while.cond14.preheader.i ]
  %arrayidx.i = getelementptr %struct.wilc_cfg_byte, ptr %18, i32 %i.0.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp16.not.i = icmp eq i16 %20, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %8)
  %cmp23.not.i = icmp eq i16 %20, %8
  %or.cond.i = select i1 %cmp16.not.i, i1 true, i1 %cmp23.not.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %while.end.i, label %while.cond14.i.while.cond14.i_crit_edge

while.cond14.i.while.cond14.i_crit_edge:          ; preds = %while.cond14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond14.i

while.end.i:                                      ; preds = %while.cond14.i
  br i1 %cmp23.not.i, label %if.then.i, label %while.end.i.sw.epilog.i_crit_edge

while.end.i.sw.epilog.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.i = getelementptr i8, ptr %info.addr.0201.i, i32 4
  %21 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx33.i, align 1
  %val.i = getelementptr %struct.wilc_cfg_byte, ptr %18, i32 %i.0.i, i32 1
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val.i, align 2
  br label %sw.epilog.i

while.cond37.i:                                   ; preds = %while.cond37.i.while.cond37.i_crit_edge, %while.cond37.preheader.i
  %i.1.i = phi i32 [ %inc53.i, %while.cond37.i.while.cond37.i_crit_edge ], [ 0, %while.cond37.preheader.i ]
  %arrayidx38.i = getelementptr %struct.wilc_cfg_hword, ptr %16, i32 %i.1.i
  %24 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx38.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp41.not.i = icmp eq i16 %25, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %8)
  %cmp49.not.i = icmp eq i16 %25, %8
  %or.cond192.i = select i1 %cmp41.not.i, i1 true, i1 %cmp49.not.i
  %inc53.i = add i32 %i.1.i, 1
  br i1 %or.cond192.i, label %while.end54.i, label %while.cond37.i.while.cond37.i_crit_edge

while.cond37.i.while.cond37.i_crit_edge:          ; preds = %while.cond37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond37.i

while.end54.i:                                    ; preds = %while.cond37.i
  br i1 %cmp49.not.i, label %if.then62.i, label %while.end54.i.sw.epilog.i_crit_edge

while.end54.i.sw.epilog.i_crit_edge:              ; preds = %while.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then62.i:                                      ; preds = %while.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx63.i = getelementptr i8, ptr %info.addr.0201.i, i32 4
  %26 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx63.i, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  %val67.i = getelementptr %struct.wilc_cfg_hword, ptr %16, i32 %i.1.i, i32 1
  %29 = ptrtoint ptr %val67.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %val67.i, align 2
  br label %sw.epilog.i

while.cond70.i:                                   ; preds = %while.cond70.i.while.cond70.i_crit_edge, %while.cond70.preheader.i
  %i.2.i = phi i32 [ %inc86.i, %while.cond70.i.while.cond70.i_crit_edge ], [ 0, %while.cond70.preheader.i ]
  %arrayidx71.i = getelementptr %struct.wilc_cfg_word, ptr %14, i32 %i.2.i
  %30 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp74.not.i = icmp eq i16 %31, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %8)
  %cmp82.not.i = icmp eq i16 %31, %8
  %or.cond193.i = select i1 %cmp74.not.i, i1 true, i1 %cmp82.not.i
  %inc86.i = add i32 %i.2.i, 1
  br i1 %or.cond193.i, label %while.end87.i, label %while.cond70.i.while.cond70.i_crit_edge

while.cond70.i.while.cond70.i_crit_edge:          ; preds = %while.cond70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond70.i

while.end87.i:                                    ; preds = %while.cond70.i
  br i1 %cmp82.not.i, label %if.then95.i, label %while.end87.i.sw.epilog.i_crit_edge

while.end87.i.sw.epilog.i_crit_edge:              ; preds = %while.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then95.i:                                      ; preds = %while.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx96.i = getelementptr i8, ptr %info.addr.0201.i, i32 4
  %32 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx96.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %val100.i = getelementptr %struct.wilc_cfg_word, ptr %14, i32 %i.2.i, i32 1
  %35 = ptrtoint ptr %val100.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val100.i, align 4
  br label %sw.epilog.i

while.cond103.i:                                  ; preds = %while.cond103.i.while.cond103.i_crit_edge, %while.cond103.preheader.i
  %i.3.i = phi i32 [ %inc119.i, %while.cond103.i.while.cond103.i_crit_edge ], [ 0, %while.cond103.preheader.i ]
  %arrayidx104.i = getelementptr %struct.wilc_cfg_str, ptr %12, i32 %i.3.i
  %36 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp107.not.i = icmp eq i16 %37, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %8)
  %cmp115.not.i = icmp eq i16 %37, %8
  %or.cond194.i = select i1 %cmp107.not.i, i1 true, i1 %cmp115.not.i
  %inc119.i = add i32 %i.3.i, 1
  br i1 %or.cond194.i, label %while.end120.i, label %while.cond103.i.while.cond103.i_crit_edge

while.cond103.i.while.cond103.i_crit_edge:        ; preds = %while.cond103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond103.i

while.end120.i:                                   ; preds = %while.cond103.i
  br i1 %cmp115.not.i, label %if.then128.i, label %while.end120.i.if.end134.i_crit_edge

while.end120.i.if.end134.i_crit_edge:             ; preds = %while.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134.i

if.then128.i:                                     ; preds = %while.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  %str.i = getelementptr %struct.wilc_cfg_str, ptr %12, i32 %i.3.i, i32 1
  %38 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %str.i, align 4
  %arrayidx131.i = getelementptr i8, ptr %info.addr.0201.i, i32 2
  %40 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx131.i, align 1
  %conv133.i = zext i8 %41 to i32
  %add.i = add nuw nsw i32 %conv133.i, 2
  %42 = call ptr @memcpy(ptr %39, ptr %arrayidx131.i, i32 %add.i)
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then128.i, %while.end120.i.if.end134.i_crit_edge
  %arrayidx135.i = getelementptr i8, ptr %info.addr.0201.i, i32 2
  %43 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx135.i, align 1
  %conv136.i = zext i8 %44 to i32
  %add137.i = add nuw nsw i32 %conv136.i, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end134.i, %if.then95.i, %while.end87.i.sw.epilog.i_crit_edge, %if.then62.i, %while.end54.i.sw.epilog.i_crit_edge, %if.then.i, %while.end.i.sw.epilog.i_crit_edge, %while.body.i.sw.epilog.i_crit_edge
  %len.1.i = phi i32 [ %len.0200.i, %while.body.i.sw.epilog.i_crit_edge ], [ %add137.i, %if.end134.i ], [ 3, %if.then.i ], [ 3, %while.end.i.sw.epilog.i_crit_edge ], [ 4, %if.then62.i ], [ 4, %while.end54.i.sw.epilog.i_crit_edge ], [ 6, %if.then95.i ], [ 6, %while.end87.i.sw.epilog.i_crit_edge ]
  %add138.i = add i32 %len.1.i, 2
  %sub.i = sub i32 %size.addr.0199.i, %add138.i
  %add.ptr.i = getelementptr i8, ptr %info.addr.0201.i, i32 %add138.i
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.wilc_wlan_parse_response_frame.exit_crit_edge

sw.epilog.i.wilc_wlan_parse_response_frame.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wilc_wlan_parse_response_frame.exit

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

wilc_wlan_parse_response_frame.exit:              ; preds = %sw.epilog.i.wilc_wlan_parse_response_frame.exit_crit_edge, %sw.bb.wilc_wlan_parse_response_frame.exit_crit_edge
  %45 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %rsp, align 1
  %seq_no = getelementptr inbounds %struct.wilc_cfg_rsp, ptr %rsp, i32 0, i32 1
  %46 = ptrtoint ptr %seq_no to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %3, ptr %seq_no, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr, align 1
  %arrayidx.i36 = getelementptr i8, ptr %frame, i32 6
  %49 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.i37 = icmp eq i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %48)
  %cmp3.i = icmp eq i16 %48, 1280
  %or.cond.i38 = select i1 %cmp.i37, i1 %cmp3.i, i1 false
  br i1 %or.cond.i38, label %while.cond.preheader.i, label %sw.bb3.wilc_wlan_parse_info_frame.exit_crit_edge

sw.bb3.wilc_wlan_parse_info_frame.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %wilc_wlan_parse_info_frame.exit

while.cond.preheader.i:                           ; preds = %sw.bb3
  %cfg.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 40
  %51 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i41, %while.cond.preheader.i
  %i.0.i39 = phi i32 [ %inc.i40, %while.body.i41 ], [ 0, %while.cond.preheader.i ]
  %arrayidx5.i = getelementptr %struct.wilc_cfg_byte, ptr %52, i32 %i.0.i39
  %53 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx5.i, align 2
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %54, label %while.body.i41 [
    i16 5, label %if.then23.i
    i16 -1, label %while.cond.i.wilc_wlan_parse_info_frame.exit_crit_edge
  ]

while.cond.i.wilc_wlan_parse_info_frame.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wilc_wlan_parse_info_frame.exit

while.body.i41:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i40 = add i32 %i.0.i39, 1
  br label %while.cond.i

if.then23.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx24.i = getelementptr i8, ptr %frame, i32 7
  %56 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx24.i, align 1
  %val.i42 = getelementptr %struct.wilc_cfg_byte, ptr %52, i32 %i.0.i39, i32 1
  %58 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %val.i42, align 2
  br label %wilc_wlan_parse_info_frame.exit

wilc_wlan_parse_info_frame.exit:                  ; preds = %if.then23.i, %while.cond.i.wilc_wlan_parse_info_frame.exit_crit_edge, %sw.bb3.wilc_wlan_parse_info_frame.exit_crit_edge
  %59 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %rsp, align 1
  %seq_no5 = getelementptr inbounds %struct.wilc_cfg_rsp, ptr %rsp, i32 0, i32 1
  %60 = ptrtoint ptr %seq_no5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %3, ptr %seq_no5, align 1
  tail call void @wilc_gnrl_async_info_received(ptr noundef %wilc, ptr noundef %frame, i32 noundef %size) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wilc_network_info_received(ptr noundef %wilc, ptr noundef %frame, i32 noundef %size) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wilc_scan_complete_received(ptr noundef %wilc, ptr noundef %frame, i32 noundef %size) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq_no13 = getelementptr inbounds %struct.wilc_cfg_rsp, ptr %rsp, i32 0, i32 1
  %61 = ptrtoint ptr %seq_no13 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %3, ptr %seq_no13, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb7, %wilc_wlan_parse_info_frame.exit, %wilc_wlan_parse_response_frame.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_gnrl_async_info_received(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_network_info_received(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_scan_complete_received(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_cfg_init(ptr nocapture noundef %wl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @g_cfg_byte, i32 noundef 20, i32 noundef 3264) #7
  %cfg = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cfg, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @kmemdup(ptr noundef nonnull @g_cfg_hword, i32 noundef 4, i32 noundef 3264) #7
  %hw = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 1
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %hw, align 4
  %tobool7.not = icmp eq ptr %call3, null
  br i1 %tobool7.not, label %if.end.out_b_crit_edge, label %if.end9

if.end.out_b_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_b

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @kmemdup(ptr noundef nonnull @g_cfg_word, i32 noundef 40, i32 noundef 3264) #7
  %w = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 2
  %2 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %w, align 4
  %tobool14.not = icmp eq ptr %call10, null
  br i1 %tobool14.not, label %if.end9.out_hw_crit_edge, label %if.end16

if.end9.out_hw_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_hw

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @kmemdup(ptr noundef nonnull @g_cfg_str, i32 noundef 32, i32 noundef 3264) #7
  %s = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 3
  %3 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %s, align 4
  %tobool21.not = icmp eq ptr %call17, null
  br i1 %tobool21.not, label %if.end16.out_w_crit_edge, label %if.end23

if.end16.out_w_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_w

if.end23:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 392) #10
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %out_s, label %if.end27

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %str_vals29 = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 4
  %5 = ptrtoint ptr %str_vals29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %str_vals29, align 4
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12289, ptr %7, align 4
  %firmware_version = getelementptr inbounds %struct.wilc_cfg_str_vals, ptr %call7.i.i, i32 0, i32 1
  %9 = load ptr, ptr %s, align 4
  %str = getelementptr inbounds %struct.wilc_cfg_str, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %firmware_version, ptr %str, align 4
  %11 = load ptr, ptr %s, align 4
  %arrayidx37 = getelementptr %struct.wilc_cfg_str, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 12300, ptr %arrayidx37, align 4
  %13 = load ptr, ptr %s, align 4
  %str43 = getelementptr %struct.wilc_cfg_str, ptr %13, i32 1, i32 1
  %14 = ptrtoint ptr %str43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %str43, align 4
  %15 = load ptr, ptr %s, align 4
  %arrayidx47 = getelementptr %struct.wilc_cfg_str, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 12320, ptr %arrayidx47, align 4
  %assoc_rsp = getelementptr inbounds %struct.wilc_cfg_str_vals, ptr %call7.i.i, i32 0, i32 2
  %17 = load ptr, ptr %s, align 4
  %str53 = getelementptr %struct.wilc_cfg_str, ptr %17, i32 2, i32 1
  %18 = ptrtoint ptr %str53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %assoc_rsp, ptr %str53, align 4
  %19 = load ptr, ptr %s, align 4
  %arrayidx57 = getelementptr %struct.wilc_cfg_str, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %arrayidx57, align 4
  %21 = load ptr, ptr %s, align 4
  %str62 = getelementptr %struct.wilc_cfg_str, ptr %21, i32 3, i32 1
  %22 = ptrtoint ptr %str62 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %str62, align 4
  br label %cleanup

out_s:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s, align 4
  tail call void @kfree(ptr noundef %24) #7
  br label %out_w

out_w:                                            ; preds = %out_s, %if.end16.out_w_crit_edge
  %25 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %w, align 4
  tail call void @kfree(ptr noundef %26) #7
  br label %out_hw

out_hw:                                           ; preds = %out_w, %if.end9.out_hw_crit_edge
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  tail call void @kfree(ptr noundef %28) #7
  br label %out_b

out_b:                                            ; preds = %out_hw, %if.end.out_b_crit_edge
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg, align 4
  tail call void @kfree(ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %out_b, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -12, %out_b ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wlan_cfg_deinit(ptr nocapture noundef readonly %wl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  tail call void @kfree(ptr noundef %1) #7
  %hw = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @kfree(ptr noundef %3) #7
  %w = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 2
  %4 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %w, align 4
  tail call void @kfree(ptr noundef %5) #7
  %s = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 3
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  tail call void @kfree(ptr noundef %7) #7
  %str_vals = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 40, i32 4
  %8 = ptrtoint ptr %str_vals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str_vals, align 4
  tail call void @kfree(ptr noundef %9) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @g_cfg_byte, !1, !"g_cfg_byte", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan_cfg.c", i32 21, i32 35}
!2 = !{ptr @g_cfg_hword, !3, !"g_cfg_hword", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan_cfg.c", i32 29, i32 36}
!4 = !{ptr @g_cfg_word, !5, !"g_cfg_word", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan_cfg.c", i32 33, i32 35}
!6 = !{ptr @g_cfg_str, !7, !"g_cfg_str", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/microchip/wilc1000/wlan_cfg.c", i32 42, i32 34}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
