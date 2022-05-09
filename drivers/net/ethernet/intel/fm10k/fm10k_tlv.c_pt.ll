; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_tlv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fm10k_tlv_attr = type { i32, i32, i16 }
%struct.fm10k_msg_data = type { i32, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }

@fm10k_tlv_msg_test_attr = dso_local constant { [14 x %struct.fm10k_tlv_attr], [56 x i8] } { [14 x %struct.fm10k_tlv_attr] [%struct.fm10k_tlv_attr { i32 1, i32 0, i16 80 }, %struct.fm10k_tlv_attr { i32 2, i32 1, i16 6 }, %struct.fm10k_tlv_attr { i32 3, i32 3, i16 1 }, %struct.fm10k_tlv_attr { i32 4, i32 3, i16 2 }, %struct.fm10k_tlv_attr { i32 5, i32 3, i16 4 }, %struct.fm10k_tlv_attr { i32 6, i32 3, i16 8 }, %struct.fm10k_tlv_attr { i32 7, i32 4, i16 1 }, %struct.fm10k_tlv_attr { i32 8, i32 4, i16 2 }, %struct.fm10k_tlv_attr { i32 9, i32 4, i16 4 }, %struct.fm10k_tlv_attr { i32 10, i32 4, i16 8 }, %struct.fm10k_tlv_attr { i32 11, i32 5, i16 8 }, %struct.fm10k_tlv_attr { i32 12, i32 6, i16 0 }, %struct.fm10k_tlv_attr { i32 13, i32 4, i16 4 }, %struct.fm10k_tlv_attr { i32 -1, i32 0, i16 0 }], [56 x i8] zeroinitializer }, align 32
@test_str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fm10k\00", [26 x i8] zeroinitializer }, align 32
@test_le = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2018915346, i32 -253838182], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"fm10k_tlv_msg_test_attr\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 616, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"test_str\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 597, i32 28 }
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"test_le\00", align 1
@___asan_gen_.9 = private constant [48 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_tlv.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 609, i32 21 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @fm10k_tlv_msg_test_attr, ptr @test_str, ptr @test_le], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_tlv_msg_test_attr to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_le to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @fm10k_tlv_msg_init(ptr noundef writeonly %msg, i16 noundef zeroext %msg_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %msg_id to i32
  %or = or i32 %conv, 65536
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %msg, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_put_mac_vlan(ptr noundef %msg, i16 noundef zeroext %attr_id, ptr noundef readonly %mac_addr, i16 noundef zeroext %vlan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  %tobool1.not = icmp eq ptr %mac_addr, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %add = add i32 %1, 3145728
  %shr = lshr i32 %add, 22
  %add3 = add nuw nsw i32 %shr, 1
  %arrayidx = getelementptr i32, ptr %msg, i32 %add3
  %conv4 = zext i16 %attr_id to i32
  %or = or i32 %conv4, 6291456
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_addr, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx7 = getelementptr i32, ptr %arrayidx, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i8, ptr %mac_addr, i32 4
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx8, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv9 = zext i16 %9 to i32
  %arrayidx10 = getelementptr i32, ptr %arrayidx, i32 2
  %conv11 = zext i16 %vlan to i32
  %shl = shl nuw i32 %conv11, 16
  %or13 = or i32 %shl, %conv9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or13, ptr %arrayidx10, align 4
  %add17 = add i32 %1, 12582912
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add17, ptr %msg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef readonly %attr, ptr noundef writeonly %mac_addr, ptr nocapture noundef writeonly %vlan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_addr, null
  %tobool1.not = icmp eq ptr %attr, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %attr, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mac_addr, align 4
  %arrayidx3 = getelementptr i32, ptr %attr, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %arrayidx4 = getelementptr i8, ptr %mac_addr, i32 4
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %arrayidx4, align 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %shr = lshr i32 %9, 16
  %conv6 = trunc i32 %shr to i16
  %10 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6, ptr %vlan, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_put_bool(ptr noundef %msg, i16 noundef zeroext %attr_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %attr_id to i32
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %add = add i32 %1, 3145728
  %shr = lshr i32 %add, 22
  %add3 = add nuw nsw i32 %shr, 1
  %arrayidx = getelementptr i32, ptr %msg, i32 %add3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %arrayidx, align 4
  %add4 = add i32 %1, 4194304
  store i32 %add4, ptr %msg, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_put_value(ptr noundef %msg, i16 noundef zeroext %attr_id, i64 noundef %value, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %msg, null
  %0 = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %1 = icmp ult i32 %0, 8
  %or.cond50.not = and i1 %tobool.not, %1
  %2 = tail call i32 @llvm.ctpop.i32(i32 %len), !range !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %tobool4.not = icmp ult i32 %2, 2
  %or.cond51 = and i1 %tobool4.not, %or.cond50.not
  br i1 %or.cond51, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg, align 4
  %add = add i32 %4, 3145728
  %shr = lshr i32 %add, 22
  %add7 = add nuw nsw i32 %shr, 1
  %arrayidx = getelementptr i32, ptr %msg, i32 %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp8 = icmp ult i32 %len, 4
  %conv11 = trunc i64 %value to i32
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %len, 3
  %notmask = shl nsw i32 -1, %mul
  %sub12 = xor i32 %notmask, -1
  %and13 = and i32 %sub12, %conv11
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.end
  %arrayidx16 = getelementptr i32, ptr %arrayidx, i32 1
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv11, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp17.not = icmp eq i32 %len, 4
  br i1 %cmp17.not, label %if.else.if.end24_crit_edge, label %if.then19

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %6 = lshr i64 %value, 32
  %conv21 = trunc i64 %6 to i32
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then19, %if.then10
  %.sink = phi i32 [ 2, %if.then19 ], [ 1, %if.then10 ]
  %conv21.sink = phi i32 [ %conv21, %if.then19 ], [ %and13, %if.then10 ]
  %arrayidx22 = getelementptr i32, ptr %arrayidx, i32 %.sink
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv21.sink, ptr %arrayidx22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else.if.end24_crit_edge
  %shl25 = shl nuw nsw i32 %len, 20
  %conv26 = zext i16 %attr_id to i32
  %or = or i32 %shl25, %conv26
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %arrayidx, align 4
  %add29 = add nuw nsw i32 %shl25, 7340032
  %and30 = and i32 %add29, -4194304
  %add31 = add i32 %4, %and30
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add31, ptr %msg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_get_value(ptr noundef readonly %attr, ptr noundef writeonly %value, i32 noundef %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %attr, null
  %tobool1.not = icmp eq ptr %value, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 4
  %shr = lshr i32 %1, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %len)
  %cmp.not = icmp eq i32 %shr, %len
  br i1 %cmp.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %if.else18 [
    i32 8, label %if.then5
    i32 4, label %if.then10
    i32 2, label %if.then15
  ]

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %attr, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %4 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx6 = getelementptr i32, ptr %attr, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  %conv7 = zext i32 %6 to i64
  %or = or i64 %shl, %conv7
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %value, align 8
  br label %return

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11 = getelementptr i32, ptr %attr, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 4
  br label %return

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16 = getelementptr i32, ptr %attr, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %conv17 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv17, ptr %value, align 2
  br label %return

if.else18:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx19 = getelementptr i32, ptr %attr, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv20, ptr %value, align 1
  br label %return

return:                                           ; preds = %if.else18, %if.then15, %if.then10, %if.then5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -2, %entry.return_crit_edge ], [ -2, %if.end.return_crit_edge ], [ 0, %if.then10 ], [ 0, %if.else18 ], [ 0, %if.then15 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_put_le_struct(ptr noundef %msg, i16 noundef zeroext %attr_id, ptr nocapture noundef readonly %le_struct, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %msg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp ne i32 %len, 0
  %or.cond.not = and i1 %tobool.not, %tobool1.not
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  %or.cond32 = and i1 %or.cond.not, %tobool3.not
  br i1 %or.cond32, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %add = add i32 %1, 3145728
  %shr = lshr i32 %add, 22
  %add5 = add nuw nsw i32 %shr, 1
  %arrayidx = getelementptr i32, ptr %msg, i32 %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp33.not = icmp ult i32 %len, 4
  br i1 %cmp33.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %div31 = lshr i32 %len, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %add8, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx7 = getelementptr i32, ptr %le_struct, i32 %i.034
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx7, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add8 = add nuw nsw i32 %i.034, 1
  %arrayidx9 = getelementptr i32, ptr %arrayidx, i32 %add8
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx9, align 4
  %exitcond.not = icmp eq i32 %add8, %div31
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %shl = shl i32 %len, 20
  %conv10 = zext i16 %attr_id to i32
  %or = or i32 %shl, %conv10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %arrayidx, align 4
  %add13 = add i32 %shl, 7340032
  %and14 = and i32 %add13, -4194304
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg, align 4
  %add15 = add i32 %8, %and14
  store i32 %add15, ptr %msg, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_tlv_attr_get_le_struct(ptr noundef readonly %attr, ptr noundef writeonly %le_struct, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %le_struct, null
  %tobool1.not = icmp eq ptr %attr, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 4
  %shr = lshr i32 %1, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %len)
  %cmp.not = icmp eq i32 %shr, %len
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i32, ptr %attr, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not15 = icmp eq i32 %len, 0
  br i1 %tobool4.not15, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %len.addr.016 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %len, %if.end3.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %incdec.ptr, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx5 = getelementptr i32, ptr %le_struct, i32 %i.017
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5, align 4
  %inc = add i32 %i.017, 1
  %sub = add i32 %len.addr.016, -4
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_tlv_msg_parse(ptr noundef %hw, ptr noundef %msg, ptr noundef %mbx, ptr noundef readonly %data) local_unnamed_addr #6 align 64 {
entry:
  %results = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %results) #11
  %0 = call ptr @memset(ptr %results, i32 255, i32 128)
  %tobool.not = icmp eq ptr %msg, null
  %tobool1.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %2, 65535
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end4
  %data.addr.0 = phi ptr [ %data, %if.end4 ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %3 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.addr.0, align 4
  %cmp = icmp ult i32 %4, %and5
  %incdec.ptr = getelementptr %struct.fm10k_msg_data, ptr %data.addr.0, i32 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and5)
  %cmp7.not = icmp eq i32 %4, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp11.not35 = icmp eq i32 %4, -1
  %or.cond37 = or i1 %cmp7.not, %cmp11.not35
  br i1 %or.cond37, label %while.end.if.end15_crit_edge, label %while.end.while.body12_crit_edge

while.end.while.body12_crit_edge:                 ; preds = %while.end
  br label %while.body12

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

while.body12:                                     ; preds = %while.body12.while.body12_crit_edge, %while.end.while.body12_crit_edge
  %data.addr.136 = phi ptr [ %incdec.ptr13, %while.body12.while.body12_crit_edge ], [ %data.addr.0, %while.end.while.body12_crit_edge ]
  %incdec.ptr13 = getelementptr %struct.fm10k_msg_data, ptr %data.addr.136, i32 1
  %5 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %incdec.ptr13, align 4
  %cmp11.not = icmp eq i32 %.pr, -1
  br i1 %cmp11.not, label %while.body12.if.end15_crit_edge, label %while.body12.while.body12_crit_edge

while.body12.while.body12_crit_edge:              ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12

while.body12.if.end15_crit_edge:                  ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %while.body12.if.end15_crit_edge, %while.end.if.end15_crit_edge
  %data.addr.2 = phi ptr [ %data.addr.0, %while.end.if.end15_crit_edge ], [ %incdec.ptr13, %while.body12.if.end15_crit_edge ]
  %attr = getelementptr inbounds %struct.fm10k_msg_data, ptr %data.addr.2, i32 0, i32 1
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = call fastcc i32 @fm10k_tlv_attr_parse(ptr noundef nonnull %msg, ptr noundef nonnull %results, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %func = getelementptr inbounds %struct.fm10k_msg_data, ptr %data.addr.2, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  %call20 = call i32 %9(ptr noundef %hw, ptr noundef nonnull %results, ptr noundef %mbx) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %results) #11
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_tlv_attr_parse(ptr noundef %attr, ptr noundef writeonly %results, ptr noundef readonly %tlv_attr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %attr, null
  %tobool1.not = icmp eq ptr %results, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = call ptr @memset(ptr %results, i32 0, i32 128)
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %attr, align 4
  %shr = lshr i32 %2, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %2)
  %tobool2.not = icmp ult i32 %2, 1048576
  br i1 %tobool2.not, label %for.body.preheader.cleanup_crit_edge, label %if.end4

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %for.body.preheader
  %tobool5.not = icmp eq ptr %tlv_attr, null
  br i1 %tobool5.not, label %if.then6, label %while.body.preheader

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %attr, ptr %results, align 4
  br label %cleanup

while.body.preheader:                             ; preds = %if.end4
  %incdec.ptr = getelementptr i32, ptr %attr, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.preheader
  %offset.077 = phi i32 [ %add30, %if.end24.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %attr.addr.075 = phi ptr [ %arrayidx37, %if.end24.while.body_crit_edge ], [ %incdec.ptr, %while.body.preheader ]
  %4 = ptrtoint ptr %attr.addr.075 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr.addr.075, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and)
  %cmp12 = icmp ugt i32 %and, 31
  br i1 %cmp12, label %while.body.cleanup_crit_edge, label %if.end15

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %while.body
  %shr.i = lshr i32 %5, 20
  %conv.i = trunc i32 %shr.i to i16
  %and1.i = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end15.while.cond.i_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.while.cond.i_crit_edge:                  ; preds = %if.end15
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end15.while.cond.i_crit_edge
  %tlv_attr.addr.0.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ], [ %tlv_attr, %if.end15.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %tlv_attr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tlv_attr.addr.0.i, align 4
  %cmp.i = icmp ult i32 %7, %and
  %incdec.ptr.i = getelementptr %struct.fm10k_tlv_attr, ptr %tlv_attr.addr.0.i, i32 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and)
  %cmp4.not.i = icmp eq i32 %7, %and
  br i1 %cmp4.not.i, label %if.end7.i, label %while.end.i.if.end24_crit_edge

while.end.i.if.end24_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end7.i:                                        ; preds = %while.end.i
  %incdec.ptr8.i = getelementptr i32, ptr %attr.addr.075, i32 1
  %type.i = getelementptr inbounds %struct.fm10k_tlv_attr, ptr %tlv_attr.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %9, label %if.end7.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb24.i
    i32 2, label %sw.bb30.i
    i32 3, label %if.end7.i.sw.bb34.i_crit_edge
    i32 4, label %if.end7.i.sw.bb34.i_crit_edge78
    i32 5, label %sw.bb42.i
    i32 6, label %sw.bb54.i
  ]

if.end7.i.sw.bb34.i_crit_edge78:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34.i

if.end7.i.sw.bb34.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool9.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool9.not.i, label %sw.bb.i.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %sub.i = add nsw i32 %shr.i, -1
  %sub.i.frozen = freeze i32 %sub.i
  %div.i = sdiv i32 %sub.i.frozen, 4
  %arrayidx.i = getelementptr i32, ptr %incdec.ptr8.i, i32 %div.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %sub.i.frozen, %13
  %mul.i = shl nsw i32 %rem.i.decomposed, 3
  %shl.i = shl i32 255, %mul.i
  %and13.i = and i32 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %len18.i = getelementptr inbounds %struct.fm10k_tlv_attr, ptr %tlv_attr.addr.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %len18.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len18.i, align 4
  %conv19.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv19.i)
  %cmp20.i = icmp ugt i32 %shr.i, %conv19.i
  br i1 %cmp20.i, label %if.end16.i.cleanup_crit_edge, label %if.end16.i.if.else21_crit_edge

if.end16.i.if.else21_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb24.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr.i)
  %cmp26.not.i = icmp eq i32 %shr.i, 6
  br i1 %cmp26.not.i, label %sw.bb24.i.if.else21_crit_edge, label %sw.bb24.i.cleanup_crit_edge

sw.bb24.i.cleanup_crit_edge:                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb24.i.if.else21_crit_edge:                    ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

sw.bb30.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool31.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool31.not.i, label %sw.bb30.i.if.else21_crit_edge, label %sw.bb30.i.cleanup_crit_edge

sw.bb30.i.cleanup_crit_edge:                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb30.i.if.else21_crit_edge:                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

sw.bb34.i:                                        ; preds = %if.end7.i.sw.bb34.i_crit_edge, %if.end7.i.sw.bb34.i_crit_edge78
  %len36.i = getelementptr inbounds %struct.fm10k_tlv_attr, ptr %tlv_attr.addr.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %len36.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len36.i, align 4
  %conv37.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv37.i)
  %cmp38.not.i = icmp eq i32 %shr.i, %conv37.i
  br i1 %cmp38.not.i, label %sw.bb34.i.if.else21_crit_edge, label %sw.bb34.i.cleanup_crit_edge

sw.bb34.i.cleanup_crit_edge:                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb34.i.if.else21_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

sw.bb42.i:                                        ; preds = %if.end7.i
  %18 = and i32 %5, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool45.not.i = icmp eq i32 %18, 0
  br i1 %tobool45.not.i, label %lor.lhs.false46.i, label %sw.bb42.i.cleanup_crit_edge

sw.bb42.i.cleanup_crit_edge:                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false46.i:                                ; preds = %sw.bb42.i
  %len48.i = getelementptr inbounds %struct.fm10k_tlv_attr, ptr %tlv_attr.addr.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %len48.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len48.i, align 4
  %conv49.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv49.i)
  %cmp50.not.i = icmp eq i32 %shr.i, %conv49.i
  br i1 %cmp50.not.i, label %lor.lhs.false46.i.if.else21_crit_edge, label %lor.lhs.false46.i.cleanup_crit_edge

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false46.i.if.else21_crit_edge:            ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

sw.bb54.i:                                        ; preds = %if.end7.i
  %21 = and i32 %5, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool57.not.i = icmp eq i32 %21, 0
  br i1 %tobool57.not.i, label %sw.bb54.i.if.else21_crit_edge, label %sw.bb54.i.cleanup_crit_edge

sw.bb54.i.cleanup_crit_edge:                      ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb54.i.if.else21_crit_edge:                    ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.else21:                                        ; preds = %sw.bb54.i.if.else21_crit_edge, %lor.lhs.false46.i.if.else21_crit_edge, %sw.bb34.i.if.else21_crit_edge, %sw.bb30.i.if.else21_crit_edge, %sw.bb24.i.if.else21_crit_edge, %if.end16.i.if.else21_crit_edge
  %arrayidx22 = getelementptr ptr, ptr %results, i32 %and
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %attr.addr.075, ptr %arrayidx22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %while.end.i.if.end24_crit_edge
  %23 = ptrtoint ptr %attr.addr.075 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attr.addr.075, align 4
  %add = add i32 %24, 3145728
  %shr26 = lshr i32 %add, 22
  %add29 = add nuw nsw i32 %shr26, 1
  %mul = shl nuw nsw i32 %add29, 2
  %add30 = add i32 %mul, %offset.077
  %arrayidx37 = getelementptr i32, ptr %attr.addr.075, i32 %add29
  %cmp10 = icmp ult i32 %add30, %shr
  br i1 %cmp10, label %if.end24.while.body_crit_edge, label %while.end

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %shr)
  %cmp39.not = icmp eq i32 %add30, %shr
  %. = select i1 %cmp39.not, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.bb54.i.cleanup_crit_edge, %lor.lhs.false46.i.cleanup_crit_edge, %sw.bb42.i.cleanup_crit_edge, %sw.bb34.i.cleanup_crit_edge, %sw.bb30.i.cleanup_crit_edge, %sw.bb24.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then6, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -2, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ %., %while.end ], [ -2, %if.end7.i.cleanup_crit_edge ], [ -2, %sw.bb54.i.cleanup_crit_edge ], [ -2, %sw.bb42.i.cleanup_crit_edge ], [ -2, %lor.lhs.false46.i.cleanup_crit_edge ], [ -2, %sw.bb34.i.cleanup_crit_edge ], [ -2, %sw.bb30.i.cleanup_crit_edge ], [ -2, %sw.bb24.i.cleanup_crit_edge ], [ -2, %if.end16.i.cleanup_crit_edge ], [ -2, %sw.bb.i.cleanup_crit_edge ], [ -2, %lor.lhs.false.i.cleanup_crit_edge ], [ -2, %if.end15.cleanup_crit_edge ], [ 2147483647, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_tlv_msg_error(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %results, ptr nocapture noundef readnone %mbx) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2147483647
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_tlv_msg_test_create(ptr noundef %msg, i32 noundef %attr_flags) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %msg, null
  br i1 %tobool.not.i, label %fm10k_tlv_msg_init.exit, label %fm10k_tlv_msg_init.exit.thread

fm10k_tlv_msg_init.exit:                          ; preds = %entry
  tail call fastcc void @fm10k_tlv_msg_test_generate_data(ptr noundef null, i32 noundef %attr_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %attr_flags)
  %tobool.not = icmp ult i32 %attr_flags, 4096
  br i1 %tobool.not, label %fm10k_tlv_msg_init.exit.if.end_crit_edge, label %fm10k_tlv_attr_nest_start.exit

fm10k_tlv_msg_init.exit.if.end_crit_edge:         ; preds = %fm10k_tlv_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fm10k_tlv_msg_init.exit.thread:                   ; preds = %entry
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %msg, align 4
  tail call fastcc void @fm10k_tlv_msg_test_generate_data(ptr noundef nonnull %msg, i32 noundef %attr_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %attr_flags)
  %tobool.not18 = icmp ult i32 %attr_flags, 4096
  br i1 %tobool.not18, label %fm10k_tlv_msg_init.exit.thread.if.end_crit_edge, label %if.end.i17

fm10k_tlv_msg_init.exit.thread.if.end_crit_edge:  ; preds = %fm10k_tlv_msg_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fm10k_tlv_attr_nest_start.exit:                   ; preds = %fm10k_tlv_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %attr_flags, 12
  tail call fastcc void @fm10k_tlv_msg_test_generate_data(ptr noundef null, i32 noundef %shr)
  br label %if.end

if.end.i17:                                       ; preds = %fm10k_tlv_msg_init.exit.thread
  %shr19 = lshr i32 %attr_flags, 12
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg, align 4
  %add.i = add i32 %2, 3145728
  %shr.i = lshr i32 %add.i, 22
  %add2.i = add nuw nsw i32 %shr.i, 1
  %arrayidx.i = getelementptr i32, ptr %msg, i32 %add2.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %arrayidx.i, align 4
  tail call fastcc void @fm10k_tlv_msg_test_generate_data(ptr noundef %arrayidx.i, i32 noundef %shr19)
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg, align 4
  %add.i13 = add i32 %5, 3145728
  %shr.i14 = lshr i32 %add.i13, 22
  %add2.i15 = add nuw nsw i32 %shr.i14, 1
  %arrayidx.i16 = getelementptr i32, ptr %msg, i32 %add2.i15
  %6 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i16, align 4
  %shr4.i = and i32 %7, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr4.i)
  %tobool5.not.i = icmp eq i32 %shr4.i, 0
  br i1 %tobool5.not.i, label %if.end.i17.if.end_crit_edge, label %if.then6.i

if.end.i17.if.end_crit_edge:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6.i:                                       ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  %add7.i = add i32 %5, 4194304
  %add8.i = add i32 %add7.i, %shr4.i
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add8.i, ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6.i, %if.end.i17.if.end_crit_edge, %fm10k_tlv_attr_nest_start.exit, %fm10k_tlv_msg_init.exit.thread.if.end_crit_edge, %fm10k_tlv_msg_init.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_tlv_msg_test_generate_data(ptr noundef %msg, i32 noundef %attr_flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %attr_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %tobool1.not.i = icmp eq ptr %msg, null
  br i1 %tobool1.not.i, label %if.then.if.end15_crit_edge, label %if.end8.5.i

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end8.5.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %add.i = add i32 %1, 3145728
  %shr.i = lshr i32 %add.i, 22
  %add3.i = add nuw nsw i32 %shr.i, 1
  %arrayidx.i = getelementptr i32, ptr %msg, i32 %add3.i
  %arrayidx7.4.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %2 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 808545638, ptr %arrayidx7.4.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %arrayidx.i, i32 2
  %3 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 107, ptr %arrayidx14.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6291457, ptr %arrayidx.i, align 4
  %add22.i = add i32 %1, 12582912
  store i32 %add22.i, ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.end8.5.i, %entry.if.end_crit_edge
  %and1 = and i32 %attr_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %tobool.not.i = icmp eq ptr %msg, null
  %or.cond = or i1 %tobool.not.i, %tobool2.not
  br i1 %or.cond, label %if.end.if.end5_crit_edge, label %if.end.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %add.i71 = add i32 %6, 3145728
  %shr.i72 = lshr i32 %add.i71, 22
  %add3.i73 = add nuw nsw i32 %shr.i72, 1
  %arrayidx.i74 = getelementptr i32, ptr %msg, i32 %add3.i73
  %7 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6291458, ptr %arrayidx.i74, align 4
  %arrayidx7.i = getelementptr i32, ptr %arrayidx.i74, i32 1
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2018915346, ptr %arrayidx7.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %arrayidx.i74, i32 2
  %9 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 267238554, ptr %arrayidx10.i, align 4
  %add17.i = add i32 %6, 12582912
  store i32 %add17.i, ptr %msg, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end.i, %if.end.if.end5_crit_edge
  %and6 = and i32 %attr_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  %tobool.not.i75.not = icmp eq ptr %msg, null
  br i1 %tobool.not.i75.not, label %if.then8.if.end15_crit_edge, label %if.end.i79

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i79:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg, align 4
  %add.i76 = add i32 %11, 3145728
  %shr.i77 = lshr i32 %add.i76, 22
  %add7.i = add nuw nsw i32 %shr.i77, 1
  %arrayidx.i78 = getelementptr i32, ptr %msg, i32 %add7.i
  %arrayidx22.i = getelementptr i32, ptr %arrayidx.i78, i32 1
  %12 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 135, ptr %arrayidx22.i, align 4
  %13 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1048579, ptr %arrayidx.i78, align 4
  %add31.i = add i32 %11, 8388608
  store i32 %add31.i, ptr %msg, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i79, %if.end5.if.end10_crit_edge
  %and11 = and i32 %attr_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %tobool.not.i81 = icmp ne ptr %msg, null
  %or.cond174 = and i1 %tobool.not.i81, %tobool12.not
  br i1 %or.cond174, label %if.end.i86, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i86:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg, align 4
  %add.i82 = add i32 %15, 3145728
  %shr.i83 = lshr i32 %add.i82, 22
  %add7.i84 = add nuw nsw i32 %shr.i83, 1
  %arrayidx.i85 = getelementptr i32, ptr %msg, i32 %add7.i84
  %arrayidx22.i87 = getelementptr i32, ptr %arrayidx.i85, i32 1
  %16 = ptrtoint ptr %arrayidx22.i87 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 34661, ptr %arrayidx22.i87, align 4
  %17 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2097156, ptr %arrayidx.i85, align 4
  %add31.i88 = add i32 %15, 8388608
  store i32 %add31.i88, ptr %msg, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i86, %if.end10.if.end15_crit_edge, %if.then8.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %and16 = and i32 %attr_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %tobool.not.i91.not = icmp eq ptr %msg, null
  br i1 %tobool.not.i91.not, label %if.then18.if.end35_crit_edge, label %if.end.i96

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end.i96:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg, align 4
  %add.i92 = add i32 %19, 3145728
  %shr.i93 = lshr i32 %add.i92, 22
  %add7.i94 = add nuw nsw i32 %shr.i93, 1
  %arrayidx.i95 = getelementptr i32, ptr %msg, i32 %add7.i94
  %arrayidx16.i = getelementptr i32, ptr %arrayidx.i95, i32 1
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2023406815, ptr %arrayidx16.i, align 4
  %21 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4194309, ptr %arrayidx.i95, align 4
  %add31.i97 = add i32 %19, 8388608
  store i32 %add31.i97, ptr %msg, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i96, %if.end15.if.end20_crit_edge
  %and21 = and i32 %attr_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  %tobool.not.i100 = icmp ne ptr %msg, null
  %or.cond175 = and i1 %tobool.not.i100, %tobool22.not
  br i1 %or.cond175, label %if.end.i105, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i105:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg, align 4
  %add.i101 = add i32 %23, 3145728
  %shr.i102 = lshr i32 %add.i101, 22
  %add7.i103 = add nuw nsw i32 %shr.i102, 1
  %arrayidx.i104 = getelementptr i32, ptr %msg, i32 %add7.i103
  %arrayidx16.i106 = getelementptr i32, ptr %arrayidx.i104, i32 1
  %24 = ptrtoint ptr %arrayidx16.i106 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1985229328, ptr %arrayidx16.i106, align 4
  %arrayidx22.i107 = getelementptr i32, ptr %arrayidx.i104, i32 2
  %25 = ptrtoint ptr %arrayidx22.i107 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -19088744, ptr %arrayidx22.i107, align 4
  %26 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8388614, ptr %arrayidx.i104, align 4
  %add31.i108 = add i32 %23, 12582912
  store i32 %add31.i108, ptr %msg, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end.i105, %if.end20.if.end25_crit_edge
  %and26 = and i32 %attr_flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  %tobool.not.i111.not = icmp eq ptr %msg, null
  br i1 %tobool.not.i111.not, label %if.then28.if.end35_crit_edge, label %if.end.i116

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end.i116:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg, align 4
  %add.i112 = add i32 %28, 3145728
  %shr.i113 = lshr i32 %add.i112, 22
  %add7.i114 = add nuw nsw i32 %shr.i113, 1
  %arrayidx.i115 = getelementptr i32, ptr %msg, i32 %add7.i114
  %arrayidx22.i117 = getelementptr i32, ptr %arrayidx.i115, i32 1
  %29 = ptrtoint ptr %arrayidx22.i117 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 238, ptr %arrayidx22.i117, align 4
  %30 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1048583, ptr %arrayidx.i115, align 4
  %add31.i118 = add i32 %28, 8388608
  store i32 %add31.i118, ptr %msg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i116, %if.end25.if.end30_crit_edge
  %and31 = and i32 %attr_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp ne i32 %and31, 0
  %tobool.not.i121 = icmp ne ptr %msg, null
  %or.cond176 = and i1 %tobool.not.i121, %tobool32.not
  br i1 %or.cond176, label %if.end.i126, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end.i126:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg, align 4
  %add.i122 = add i32 %32, 3145728
  %shr.i123 = lshr i32 %add.i122, 22
  %add7.i124 = add nuw nsw i32 %shr.i123, 1
  %arrayidx.i125 = getelementptr i32, ptr %msg, i32 %add7.i124
  %arrayidx22.i127 = getelementptr i32, ptr %arrayidx.i125, i32 1
  %33 = ptrtoint ptr %arrayidx22.i127 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 60876, ptr %arrayidx22.i127, align 4
  %34 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2097160, ptr %arrayidx.i125, align 4
  %add31.i128 = add i32 %32, 8388608
  store i32 %add31.i128, ptr %msg, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end.i126, %if.end30.if.end35_crit_edge, %if.then28.if.end35_crit_edge, %if.then18.if.end35_crit_edge
  %and36 = and i32 %attr_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  %tobool.not.i131.not = icmp eq ptr %msg, null
  br i1 %tobool.not.i131.not, label %if.then38.if.end50_crit_edge, label %if.end.i136

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end.i136:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg, align 4
  %add.i132 = add i32 %36, 3145728
  %shr.i133 = lshr i32 %add.i132, 22
  %add7.i134 = add nuw nsw i32 %shr.i133, 1
  %arrayidx.i135 = getelementptr i32, ptr %msg, i32 %add7.i134
  %arrayidx16.i137 = getelementptr i32, ptr %arrayidx.i135, i32 1
  %37 = ptrtoint ptr %arrayidx16.i137 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -19093112, ptr %arrayidx16.i137, align 4
  %38 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4194313, ptr %arrayidx.i135, align 4
  %add31.i138 = add i32 %36, 8388608
  store i32 %add31.i138, ptr %msg, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end.i136, %if.end35.if.end40_crit_edge
  %and41 = and i32 %attr_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp ne i32 %and41, 0
  %tobool.not.i141 = icmp ne ptr %msg, null
  %or.cond177 = and i1 %tobool.not.i141, %tobool42.not
  br i1 %or.cond177, label %if.end.i146, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end.i146:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg, align 4
  %add.i142 = add i32 %40, 3145728
  %shr.i143 = lshr i32 %add.i142, 22
  %add7.i144 = add nuw nsw i32 %shr.i143, 1
  %arrayidx.i145 = getelementptr i32, ptr %msg, i32 %add7.i144
  %arrayidx16.i147 = getelementptr i32, ptr %arrayidx.i145, i32 1
  %41 = ptrtoint ptr %arrayidx16.i147 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1698898192, ptr %arrayidx16.i147, align 4
  %arrayidx22.i148 = getelementptr i32, ptr %arrayidx.i145, i32 2
  %42 = ptrtoint ptr %arrayidx22.i148 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -305419897, ptr %arrayidx22.i148, align 4
  %43 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8388618, ptr %arrayidx.i145, align 4
  %add31.i149 = add i32 %40, 12582912
  store i32 %add31.i149, ptr %msg, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end.i146, %if.end40.if.end45_crit_edge
  %and46 = and i32 %attr_flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp ne i32 %and46, 0
  %tobool.not.i152 = icmp ne ptr %msg, null
  %or.cond178 = and i1 %tobool.not.i152, %tobool47.not
  br i1 %or.cond178, label %if.end.i156, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end.i156:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg, align 4
  %add.i153 = add i32 %45, 3145728
  %shr.i154 = lshr i32 %add.i153, 22
  %add5.i = add nuw nsw i32 %shr.i154, 1
  %arrayidx.i155 = getelementptr i32, ptr %msg, i32 %add5.i
  %arrayidx9.i = getelementptr i32, ptr %arrayidx.i155, i32 1
  %46 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 305419896, ptr %arrayidx9.i, align 4
  %arrayidx9.i.1 = getelementptr i32, ptr %arrayidx.i155, i32 2
  %47 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1698898192, ptr %arrayidx9.i.1, align 4
  %48 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8388619, ptr %arrayidx.i155, align 4
  %add15.i = add i32 %45, 12582912
  store i32 %add15.i, ptr %msg, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end.i156, %if.end45.if.end50_crit_edge, %if.then38.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_tlv_msg_test(ptr noundef %hw, ptr nocapture noundef readonly %results, ptr noundef %mbx) local_unnamed_addr #6 align 64 {
entry:
  %nest_results = alloca [32 x ptr], align 4
  %result_str = alloca [80 x i8], align 1
  %result_le = alloca [2 x i32], align 4
  %reply = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %nest_results) #11
  %0 = call ptr @memset(ptr %nest_results, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %result_str) #11
  %1 = call ptr @memset(ptr %result_str, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result_le) #11
  %2 = getelementptr inbounds [2 x i32], ptr %result_le, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #11
  %3 = getelementptr inbounds [3 x i32], ptr %reply, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i32], ptr %reply, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %results, i32 13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.parse_nested_crit_edge, label %if.then

entry.parse_nested_crit_edge:                     ; preds = %entry
  br label %parse_nested

if.then:                                          ; preds = %entry
  %test_result = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 21
  %tobool1.not.i = icmp eq ptr %test_result, null
  br i1 %tobool1.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shr.i.mask = and i32 %8, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %shr.i.mask)
  %cmp.not.i = icmp eq i32 %shr.i.mask, 4194304
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11.i = getelementptr i32, ptr %6, i32 1
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11.i, align 4
  %11 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %test_result, align 4
  br label %cleanup

parse_nested:                                     ; preds = %if.then181.parse_nested_crit_edge, %entry.parse_nested_crit_edge
  %results.addr.0 = phi ptr [ %nest_results, %if.then181.parse_nested_crit_edge ], [ %results, %entry.parse_nested_crit_edge ]
  %arrayidx2 = getelementptr ptr, ptr %results.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %parse_nested.if.end16_crit_edge, label %if.end.i287

parse_nested.if.end16_crit_edge:                  ; preds = %parse_nested
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end.i287:                                      ; preds = %parse_nested
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %incdec.ptr.i = getelementptr i32, ptr %13, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %15)
  %tobool2.not13.i = icmp ult i32 %15, 1048576
  br i1 %tobool2.not13.i, label %if.end.i287.if.end12_crit_edge, label %while.body.preheader.i

if.end.i287.if.end12_crit_edge:                   ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

while.body.preheader.i:                           ; preds = %if.end.i287
  %shr.i288 = lshr i32 %15, 20
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %len.014.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i288, %while.body.preheader.i ]
  %dec.i = add nsw i32 %len.014.i, -1
  %div12.i = lshr i32 %dec.i, 2
  %arrayidx.i = getelementptr i32, ptr %incdec.ptr.i, i32 %div12.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %rem.i = shl i32 %dec.i, 3
  %mul.i = and i32 %rem.i, 24
  %shr3.i = lshr i32 %17, %mul.i
  %conv.i = trunc i32 %shr3.i to i8
  %arrayidx4.i = getelementptr i8, ptr %result_str, i32 %dec.i
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %arrayidx4.i, align 1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end12_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.if.end12_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %while.body.i.if.end12_crit_edge, %if.end.i287.if.end12_crit_edge
  %bcmp274 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @test_str, ptr noundef nonnull dereferenceable(6) %result_str, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp274)
  %tobool10.not = icmp eq i32 %bcmp274, 0
  br i1 %tobool10.not, label %if.end12.if.end16_crit_edge, label %if.end12.report_result_crit_edge

if.end12.report_result_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %parse_nested.if.end16_crit_edge
  %arrayidx17 = getelementptr ptr, ptr %results.addr.0, i32 2
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end16.if.end37_crit_edge, label %if.end28

if.end16.if.end37_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end28:                                         ; preds = %if.end16
  %arrayidx.i291 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx.i291 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i291, align 4
  %arrayidx3.i = getelementptr i32, ptr %20, i32 2
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx3.i, align 4
  %conv.i292 = trunc i32 %24 to i16
  %25 = xor i32 %22, 2018915346
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = xor i16 %conv.i292, -17254
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %xor3.i = zext i16 %28 to i32
  %or.i = or i32 %26, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %shr.i294.mask = and i32 %24, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 267190272, i32 %shr.i294.mask)
  %cmp.not = icmp eq i32 %shr.i294.mask, 267190272
  %or.cond = select i1 %cmp.i, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end28.if.end37_crit_edge, label %if.end28.report_result_crit_edge

if.end28.report_result_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end37:                                         ; preds = %if.end28.if.end37_crit_edge, %if.end16.if.end37_crit_edge
  %arrayidx38 = getelementptr ptr, ptr %results.addr.0, i32 3
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %30, null
  br i1 %tobool39.not, label %if.end37.if.end53_crit_edge, label %if.end.i300

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end.i300:                                      ; preds = %if.end37
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %shr.i298.mask = and i32 %32, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %shr.i298.mask)
  %cmp.not.i299 = icmp eq i32 %shr.i298.mask, 1048576
  br i1 %cmp.not.i299, label %land.lhs.true44, label %if.end.i300.report_result_crit_edge

if.end.i300.report_result_crit_edge:              ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true44:                                  ; preds = %if.end.i300
  %arrayidx19.i = getelementptr i32, ptr %30, i32 1
  %33 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19.i, align 4
  %conv20.i = trunc i32 %34 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %conv20.i)
  %cmp46.not = icmp eq i8 %conv20.i, -121
  br i1 %cmp46.not, label %land.lhs.true44.if.end53_crit_edge, label %land.lhs.true44.report_result_crit_edge

land.lhs.true44.report_result_crit_edge:          ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true44.if.end53_crit_edge, %if.end37.if.end53_crit_edge
  %arrayidx54 = getelementptr ptr, ptr %results.addr.0, i32 4
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %36, null
  br i1 %tobool55.not, label %if.end53.if.end69_crit_edge, label %if.end.i307

if.end53.if.end69_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end.i307:                                      ; preds = %if.end53
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %shr.i305.mask = and i32 %38, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %shr.i305.mask)
  %cmp.not.i306 = icmp eq i32 %shr.i305.mask, 2097152
  br i1 %cmp.not.i306, label %land.lhs.true60, label %if.end.i307.report_result_crit_edge

if.end.i307.report_result_crit_edge:              ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true60:                                  ; preds = %if.end.i307
  %arrayidx16.i = getelementptr i32, ptr %36, i32 1
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx16.i, align 4
  %conv17.i = trunc i32 %40 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30875, i16 %conv17.i)
  %cmp62.not = icmp eq i16 %conv17.i, -30875
  br i1 %cmp62.not, label %land.lhs.true60.if.end69_crit_edge, label %land.lhs.true60.report_result_crit_edge

land.lhs.true60.report_result_crit_edge:          ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true60.if.end69_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true60.if.end69_crit_edge, %if.end53.if.end69_crit_edge
  %arrayidx70 = getelementptr ptr, ptr %results.addr.0, i32 5
  %41 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %42, null
  br i1 %tobool71.not, label %if.end69.if.end84_crit_edge, label %if.end.i314

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.end.i314:                                      ; preds = %if.end69
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %shr.i312.mask = and i32 %44, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %shr.i312.mask)
  %cmp.not.i313 = icmp eq i32 %shr.i312.mask, 4194304
  br i1 %cmp.not.i313, label %land.lhs.true76, label %if.end.i314.report_result_crit_edge

if.end.i314.report_result_crit_edge:              ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true76:                                  ; preds = %if.end.i314
  %arrayidx11.i316 = getelementptr i32, ptr %42, i32 1
  %45 = ptrtoint ptr %arrayidx11.i316 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.i316, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2023406815, i32 %46)
  %cmp77.not = icmp eq i32 %46, -2023406815
  br i1 %cmp77.not, label %land.lhs.true76.if.end84_crit_edge, label %land.lhs.true76.report_result_crit_edge

land.lhs.true76.report_result_crit_edge:          ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true76.if.end84_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.end84:                                         ; preds = %land.lhs.true76.if.end84_crit_edge, %if.end69.if.end84_crit_edge
  %arrayidx85 = getelementptr ptr, ptr %results.addr.0, i32 6
  %47 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %48, null
  br i1 %tobool86.not, label %if.end84.if.end99_crit_edge, label %if.end.i322

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.end.i322:                                      ; preds = %if.end84
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %shr.i320.mask = and i32 %50, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %shr.i320.mask)
  %cmp.not.i321 = icmp eq i32 %shr.i320.mask, 8388608
  br i1 %cmp.not.i321, label %land.lhs.true91, label %if.end.i322.report_result_crit_edge

if.end.i322.report_result_crit_edge:              ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true91:                                  ; preds = %if.end.i322
  %arrayidx.i324 = getelementptr i32, ptr %48, i32 2
  %51 = ptrtoint ptr %arrayidx.i324 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i324, align 4
  %conv.i325 = zext i32 %52 to i64
  %shl.i = shl nuw i64 %conv.i325, 32
  %arrayidx6.i = getelementptr i32, ptr %48, i32 1
  %53 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx6.i, align 4
  %conv7.i = zext i32 %54 to i64
  %or.i326 = or i64 %shl.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -81985529216486896, i64 %or.i326)
  %cmp92.not = icmp eq i64 %or.i326, -81985529216486896
  br i1 %cmp92.not, label %land.lhs.true91.if.end99_crit_edge, label %land.lhs.true91.report_result_crit_edge

land.lhs.true91.report_result_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true91.if.end99_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.end99:                                         ; preds = %land.lhs.true91.if.end99_crit_edge, %if.end84.if.end99_crit_edge
  %arrayidx100 = getelementptr ptr, ptr %results.addr.0, i32 7
  %55 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx100, align 4
  %tobool101.not = icmp eq ptr %56, null
  br i1 %tobool101.not, label %if.end99.if.end115_crit_edge, label %if.end.i332

if.end99.if.end115_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.end.i332:                                      ; preds = %if.end99
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %shr.i330.mask = and i32 %58, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %shr.i330.mask)
  %cmp.not.i331 = icmp eq i32 %shr.i330.mask, 1048576
  br i1 %cmp.not.i331, label %land.lhs.true106, label %if.end.i332.report_result_crit_edge

if.end.i332.report_result_crit_edge:              ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true106:                                 ; preds = %if.end.i332
  %arrayidx19.i334 = getelementptr i32, ptr %56, i32 1
  %59 = ptrtoint ptr %arrayidx19.i334 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx19.i334, align 4
  %conv20.i335 = trunc i32 %60 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %conv20.i335)
  %cmp108.not = icmp eq i8 %conv20.i335, -18
  br i1 %cmp108.not, label %land.lhs.true106.if.end115_crit_edge, label %land.lhs.true106.report_result_crit_edge

land.lhs.true106.report_result_crit_edge:         ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true106.if.end115_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.end115:                                        ; preds = %land.lhs.true106.if.end115_crit_edge, %if.end99.if.end115_crit_edge
  %arrayidx116 = getelementptr ptr, ptr %results.addr.0, i32 8
  %61 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx116, align 4
  %tobool117.not = icmp eq ptr %62, null
  br i1 %tobool117.not, label %if.end115.if.end131_crit_edge, label %if.end.i341

if.end115.if.end131_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.end.i341:                                      ; preds = %if.end115
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %shr.i339.mask = and i32 %64, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %shr.i339.mask)
  %cmp.not.i340 = icmp eq i32 %shr.i339.mask, 2097152
  br i1 %cmp.not.i340, label %land.lhs.true122, label %if.end.i341.report_result_crit_edge

if.end.i341.report_result_crit_edge:              ; preds = %if.end.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true122:                                 ; preds = %if.end.i341
  %arrayidx16.i343 = getelementptr i32, ptr %62, i32 1
  %65 = ptrtoint ptr %arrayidx16.i343 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx16.i343, align 4
  %conv17.i344 = trunc i32 %66 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4660, i16 %conv17.i344)
  %cmp124.not = icmp eq i16 %conv17.i344, -4660
  br i1 %cmp124.not, label %land.lhs.true122.if.end131_crit_edge, label %land.lhs.true122.report_result_crit_edge

land.lhs.true122.report_result_crit_edge:         ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true122.if.end131_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true122.if.end131_crit_edge, %if.end115.if.end131_crit_edge
  %arrayidx132 = getelementptr ptr, ptr %results.addr.0, i32 9
  %67 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx132, align 4
  %tobool133.not = icmp eq ptr %68, null
  br i1 %tobool133.not, label %if.end131.if.end146_crit_edge, label %if.end.i350

if.end131.if.end146_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.end.i350:                                      ; preds = %if.end131
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %shr.i348.mask = and i32 %70, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %shr.i348.mask)
  %cmp.not.i349 = icmp eq i32 %shr.i348.mask, 4194304
  br i1 %cmp.not.i349, label %land.lhs.true138, label %if.end.i350.report_result_crit_edge

if.end.i350.report_result_crit_edge:              ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true138:                                 ; preds = %if.end.i350
  %arrayidx11.i352 = getelementptr i32, ptr %68, i32 1
  %71 = ptrtoint ptr %arrayidx11.i352 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx11.i352, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19093112, i32 %72)
  %cmp139.not = icmp eq i32 %72, -19093112
  br i1 %cmp139.not, label %land.lhs.true138.if.end146_crit_edge, label %land.lhs.true138.report_result_crit_edge

land.lhs.true138.report_result_crit_edge:         ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true138.if.end146_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.end146:                                        ; preds = %land.lhs.true138.if.end146_crit_edge, %if.end131.if.end146_crit_edge
  %arrayidx147 = getelementptr ptr, ptr %results.addr.0, i32 10
  %73 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx147, align 4
  %tobool148.not = icmp eq ptr %74, null
  br i1 %tobool148.not, label %if.end146.if.end161_crit_edge, label %if.end.i358

if.end146.if.end161_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.end.i358:                                      ; preds = %if.end146
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %shr.i356.mask = and i32 %76, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %shr.i356.mask)
  %cmp.not.i357 = icmp eq i32 %shr.i356.mask, 8388608
  br i1 %cmp.not.i357, label %land.lhs.true153, label %if.end.i358.report_result_crit_edge

if.end.i358.report_result_crit_edge:              ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true153:                                 ; preds = %if.end.i358
  %arrayidx.i360 = getelementptr i32, ptr %74, i32 2
  %77 = ptrtoint ptr %arrayidx.i360 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i360, align 4
  %conv.i361 = zext i32 %78 to i64
  %shl.i362 = shl nuw i64 %conv.i361, 32
  %arrayidx6.i363 = getelementptr i32, ptr %74, i32 1
  %79 = ptrtoint ptr %arrayidx6.i363 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx6.i363, align 4
  %conv7.i364 = zext i32 %80 to i64
  %or.i365 = or i64 %shl.i362, %conv7.i364
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1311768467463790320, i64 %or.i365)
  %cmp154.not = icmp eq i64 %or.i365, -1311768467463790320
  br i1 %cmp154.not, label %land.lhs.true153.if.end161_crit_edge, label %land.lhs.true153.report_result_crit_edge

land.lhs.true153.report_result_crit_edge:         ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

land.lhs.true153.if.end161_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.end161:                                        ; preds = %land.lhs.true153.if.end161_crit_edge, %if.end146.if.end161_crit_edge
  %arrayidx162 = getelementptr ptr, ptr %results.addr.0, i32 11
  %81 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx162, align 4
  %tobool163.not = icmp eq ptr %82, null
  br i1 %tobool163.not, label %if.end161.if.end178_crit_edge, label %if.end.i371

if.end161.if.end178_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.end.i371:                                      ; preds = %if.end161
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %shr.i369.mask = and i32 %84, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %shr.i369.mask)
  %cmp.not.i370 = icmp eq i32 %shr.i369.mask, 8388608
  br i1 %cmp.not.i370, label %if.end3.i373, label %if.end.i371.report_result_crit_edge

if.end.i371.report_result_crit_edge:              ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

if.end3.i373:                                     ; preds = %if.end.i371
  %incdec.ptr.i372 = getelementptr i32, ptr %82, i32 1
  %85 = ptrtoint ptr %incdec.ptr.i372 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr.i372, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #11
  %88 = ptrtoint ptr %result_le to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %result_le, align 4
  %arrayidx.i374.1 = getelementptr i32, ptr %82, i32 2
  %89 = ptrtoint ptr %arrayidx.i374.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i374.1, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #11
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %2, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) @test_le, ptr noundef nonnull dereferenceable(8) %result_le, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool172.not = icmp eq i32 %bcmp, 0
  br i1 %tobool172.not, label %if.end3.i373.if.end178_crit_edge, label %if.end3.i373.report_result_crit_edge

if.end3.i373.report_result_crit_edge:             ; preds = %if.end3.i373
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

if.end3.i373.if.end178_crit_edge:                 ; preds = %if.end3.i373
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.end178:                                        ; preds = %if.end3.i373.if.end178_crit_edge, %if.end161.if.end178_crit_edge
  %arrayidx179 = getelementptr ptr, ptr %results.addr.0, i32 12
  %93 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx179, align 4
  %tobool180.not = icmp eq ptr %94, null
  br i1 %tobool180.not, label %if.end178.report_result_crit_edge, label %if.then181

if.end178.report_result_crit_edge:                ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

if.then181:                                       ; preds = %if.end178
  %95 = call ptr @memset(ptr %nest_results, i32 0, i32 128)
  %96 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx179, align 4
  %call185 = call fastcc i32 @fm10k_tlv_attr_parse(ptr noundef %97, ptr noundef nonnull %nest_results, ptr noundef nonnull @fm10k_tlv_msg_test_attr)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.then181.parse_nested_crit_edge, label %if.then181.report_result_crit_edge

if.then181.report_result_crit_edge:               ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_result

if.then181.parse_nested_crit_edge:                ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_nested

report_result:                                    ; preds = %if.then181.report_result_crit_edge, %if.end178.report_result_crit_edge, %if.end3.i373.report_result_crit_edge, %if.end.i371.report_result_crit_edge, %land.lhs.true153.report_result_crit_edge, %if.end.i358.report_result_crit_edge, %land.lhs.true138.report_result_crit_edge, %if.end.i350.report_result_crit_edge, %land.lhs.true122.report_result_crit_edge, %if.end.i341.report_result_crit_edge, %land.lhs.true106.report_result_crit_edge, %if.end.i332.report_result_crit_edge, %land.lhs.true91.report_result_crit_edge, %if.end.i322.report_result_crit_edge, %land.lhs.true76.report_result_crit_edge, %if.end.i314.report_result_crit_edge, %land.lhs.true60.report_result_crit_edge, %if.end.i307.report_result_crit_edge, %land.lhs.true44.report_result_crit_edge, %if.end.i300.report_result_crit_edge, %if.end28.report_result_crit_edge, %if.end12.report_result_crit_edge
  %err.24 = phi i32 [ -9, %if.end12.report_result_crit_edge ], [ %call185, %if.then181.report_result_crit_edge ], [ 0, %if.end178.report_result_crit_edge ], [ -9, %if.end28.report_result_crit_edge ], [ -2, %if.end.i300.report_result_crit_edge ], [ -9, %land.lhs.true44.report_result_crit_edge ], [ -2, %if.end.i307.report_result_crit_edge ], [ -9, %land.lhs.true60.report_result_crit_edge ], [ -2, %if.end.i314.report_result_crit_edge ], [ -9, %land.lhs.true76.report_result_crit_edge ], [ -2, %if.end.i322.report_result_crit_edge ], [ -9, %land.lhs.true91.report_result_crit_edge ], [ -2, %if.end.i332.report_result_crit_edge ], [ -9, %land.lhs.true106.report_result_crit_edge ], [ -2, %if.end.i341.report_result_crit_edge ], [ -9, %land.lhs.true122.report_result_crit_edge ], [ -2, %if.end.i350.report_result_crit_edge ], [ -9, %land.lhs.true138.report_result_crit_edge ], [ -2, %if.end.i358.report_result_crit_edge ], [ -9, %land.lhs.true153.report_result_crit_edge ], [ -2, %if.end.i371.report_result_crit_edge ], [ -9, %if.end3.i373.report_result_crit_edge ]
  %98 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %err.24, ptr %4, align 4
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4194317, ptr %3, align 4
  %100 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 8454144, ptr %reply, align 4
  %enqueue_tx = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 5
  %101 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %enqueue_tx, align 4
  %call197 = call i32 %102(ptr noundef %hw, ptr noundef %mbx, ptr noundef nonnull %reply) #11
  br label %cleanup

cleanup:                                          ; preds = %report_result, %if.end3.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call197, %report_result ], [ -2, %if.then.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ], [ 0, %if.end3.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result_le) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %result_str) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %nest_results) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @fm10k_tlv_msg_test_attr, !1, !"fm10k_tlv_msg_test_attr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_tlv.c", i32 616, i32 29}
!2 = !{ptr @test_str, !3, !"test_str", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_tlv.c", i32 597, i32 28}
!4 = distinct !{null, !5, !"test_mac", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_tlv.c", i32 598, i32 28}
!6 = !{ptr @test_le, !7, !"test_le", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_tlv.c", i32 609, i32 21}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i32 0, i32 33}
