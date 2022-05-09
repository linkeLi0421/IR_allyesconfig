; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/zstd_compress_sequences.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress_sequences.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.FSE_symbolCompressionTransform = type { i32, i32 }
%struct.ZSTD_BuildCTableWksp = type { [53 x i16], [182 x i32] }
%struct.seqDef_s = type { i32, i16, i16 }

@kInverseProbabilityLog256 = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 0, i32 2048, i32 1792, i32 1642, i32 1536, i32 1453, i32 1386, i32 1329, i32 1280, i32 1236, i32 1197, i32 1162, i32 1130, i32 1100, i32 1073, i32 1047, i32 1024, i32 1001, i32 980, i32 960, i32 941, i32 923, i32 906, i32 889, i32 874, i32 859, i32 844, i32 830, i32 817, i32 804, i32 791, i32 779, i32 768, i32 756, i32 745, i32 734, i32 724, i32 714, i32 704, i32 694, i32 685, i32 676, i32 667, i32 658, i32 650, i32 642, i32 633, i32 626, i32 618, i32 610, i32 603, i32 595, i32 588, i32 581, i32 574, i32 567, i32 561, i32 554, i32 548, i32 542, i32 535, i32 529, i32 523, i32 517, i32 512, i32 506, i32 500, i32 495, i32 489, i32 484, i32 478, i32 473, i32 468, i32 463, i32 458, i32 453, i32 448, i32 443, i32 438, i32 434, i32 429, i32 424, i32 420, i32 415, i32 411, i32 407, i32 402, i32 398, i32 394, i32 390, i32 386, i32 382, i32 377, i32 373, i32 370, i32 366, i32 362, i32 358, i32 354, i32 350, i32 347, i32 343, i32 339, i32 336, i32 332, i32 329, i32 325, i32 322, i32 318, i32 315, i32 311, i32 308, i32 305, i32 302, i32 298, i32 295, i32 292, i32 289, i32 286, i32 282, i32 279, i32 276, i32 273, i32 270, i32 267, i32 264, i32 261, i32 258, i32 256, i32 253, i32 250, i32 247, i32 244, i32 241, i32 239, i32 236, i32 233, i32 230, i32 228, i32 225, i32 222, i32 220, i32 217, i32 215, i32 212, i32 209, i32 207, i32 204, i32 202, i32 199, i32 197, i32 194, i32 192, i32 190, i32 187, i32 185, i32 182, i32 180, i32 178, i32 175, i32 173, i32 171, i32 168, i32 166, i32 164, i32 162, i32 159, i32 157, i32 155, i32 153, i32 151, i32 149, i32 146, i32 144, i32 142, i32 140, i32 138, i32 136, i32 134, i32 132, i32 130, i32 128, i32 126, i32 123, i32 121, i32 119, i32 117, i32 115, i32 114, i32 112, i32 110, i32 108, i32 106, i32 104, i32 102, i32 100, i32 98, i32 96, i32 94, i32 93, i32 91, i32 89, i32 87, i32 85, i32 83, i32 82, i32 80, i32 78, i32 76, i32 74, i32 73, i32 71, i32 69, i32 67, i32 66, i32 64, i32 62, i32 61, i32 59, i32 57, i32 55, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 44, i32 42, i32 41, i32 39, i32 37, i32 36, i32 34, i32 33, i32 31, i32 30, i32 28, i32 26, i32 25, i32 23, i32 22, i32 20, i32 19, i32 17, i32 16, i32 14, i32 13, i32 11, i32 10, i32 8, i32 7, i32 5, i32 4, i32 2, i32 1], [256 x i8] zeroinitializer }, align 32
@LL_bits = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [48 x i8] zeroinitializer }, align 32
@ML_bits = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [44 x i8] zeroinitializer }, align 32
@BIT_mask = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"kInverseProbabilityLog256\00", align 1
@___asan_gen_.2 = private constant [47 x i8] c"../lib/zstd/compress/zstd_compress_sequences.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 23 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"LL_bits\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 185, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"ML_bits\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [47 x i8] c"../lib/zstd/compress/../common/zstd_internal.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 202, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"BIT_mask\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [43 x i8] c"../lib/zstd/compress/../common/bitstream.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 153, i32 23 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @kInverseProbabilityLog256, ptr @LL_bits, ptr @ML_bits, ptr @BIT_mask], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kInverseProbabilityLog256 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_bits to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_bits to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_fseBitCost(ptr noundef %ctable, ptr nocapture noundef readonly %count, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctable to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ctable, align 1
  %conv.i = zext i16 %1 to i32
  %add.ptr.i = getelementptr i16, ptr %ctable, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  %sub.i = add nsw i32 %conv.i, -1
  %shl2.i = shl nuw i32 1, %sub.i
  %cond.i = select i1 %tobool.not.i, i32 1, i32 %shl2.i
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i, i32 %cond.i
  %add.ptr.i27 = getelementptr i16, ptr %ctable, i32 1
  %2 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr.i27, align 1
  %conv.i28 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i28, i32 %max)
  %cmp = icmp ult i32 %conv.i28, %max
  br i1 %cmp, label %entry.cleanup13_crit_edge, label %for.cond.preheader

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

for.cond.preheader:                               ; preds = %entry
  %shl1.neg1.i = shl nsw i32 -1, %conv.i
  %add = shl nuw nsw i32 %conv.i, 8
  %shl = add nuw nsw i32 %add, 256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %s.036 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %cost.035 = phi i32 [ 0, %for.cond.preheader ], [ %cost.1.ph, %for.inc.for.body_crit_edge ]
  %deltaNbBits.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i, i32 %s.036, i32 1
  %4 = ptrtoint ptr %deltaNbBits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %deltaNbBits.i, align 4
  %shr.i = lshr i32 %5, 16
  %add.i = add nuw nsw i32 %shr.i, 1
  %shl.i29 = shl i32 %add.i, 16
  %add4.neg.i = sub i32 %shl1.neg1.i, %5
  %sub.i30 = add i32 %add4.neg.i, %shl.i29
  %shl5.i = shl i32 %sub.i30, 8
  %shr6.i = lshr i32 %shl5.i, %conv.i
  %mul.i = shl nuw nsw i32 %add.i, 8
  %sub9.i = sub i32 %mul.i, %shr6.i
  %arrayidx = getelementptr i32, ptr %count, i32 %s.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %shl)
  %cmp6.not = icmp ult i32 %sub9.i, %shl
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup13_crit_edge

if.end5.cleanup13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %sub9.i, %7
  %add10 = add i32 %mul, %cost.035
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %cost.1.ph = phi i32 [ %cost.035, %for.body.for.inc_crit_edge ], [ %add10, %if.end8 ]
  %inc = add i32 %s.036, 1
  %cmp1.not = icmp ugt i32 %inc, %max
  br i1 %cmp1.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %cost.1.ph, 8
  br label %cleanup13

cleanup13:                                        ; preds = %for.end, %if.end5.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.2 = phi i32 [ %shr, %for.end ], [ -1, %entry.cleanup13_crit_edge ], [ -1, %if.end5.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_crossEntropyCost(ptr nocapture noundef readonly %norm, i32 noundef %accuracyLog, ptr nocapture noundef readonly %count, i32 noundef %max) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 8, %accuracyLog
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %s.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %cost.013 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %norm, i32 %s.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp1.not = icmp eq i16 %1, -1
  %narrow = select i1 %cmp1.not, i16 1, i16 %1
  %spec.select = sext i16 %narrow to i32
  %shl = shl i32 %spec.select, %sub
  %arrayidx5 = getelementptr i32, ptr %count, i32 %s.014
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr [256 x i32], ptr @kInverseProbabilityLog256, i32 0, i32 %shl
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %mul = mul i32 %5, %3
  %add = add i32 %mul, %cost.013
  %inc = add i32 %s.014, 1
  %cmp.not = icmp ugt i32 %inc, %max
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %add, 8
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_selectEncodingType(ptr nocapture noundef %repeatMode, ptr noundef %count, i32 noundef %max, i32 noundef %mostFrequent, i32 noundef %nbSeq, i32 noundef %FSELog, ptr nocapture noundef readonly %prevCTable, ptr nocapture noundef readonly %defaultNorm, i32 noundef %defaultNormLog, i32 noundef %isDefaultAllowed, i32 noundef %strategy) local_unnamed_addr #3 align 64 {
entry:
  %wksp.i = alloca [512 x i8], align 1
  %norm.i = alloca [53 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %mostFrequent, i32 %nbSeq)
  %cmp = icmp eq i32 %mostFrequent, %nbSeq
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %repeatMode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %repeatMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isDefaultAllowed)
  %tobool.not = icmp eq i32 %isDefaultAllowed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mostFrequent)
  %cmp1 = icmp ugt i32 %mostFrequent, 2
  %not.or.cond = or i1 %cmp1, %tobool.not
  %spec.select = zext i1 %not.or.cond to i32
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %strategy)
  %cmp4 = icmp ult i32 %strategy, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isDefaultAllowed)
  %tobool6.not = icmp eq i32 %isDefaultAllowed, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  br i1 %tobool6.not, label %if.then5.if.end50_crit_edge, label %if.then7

if.then5.if.end50_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then7:                                         ; preds = %if.then5
  %1 = ptrtoint ptr %repeatMode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %repeatMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp8 = icmp eq i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %nbSeq)
  %cmp10 = icmp ult i32 %nbSeq, 1000
  %or.cond79 = and i1 %cmp10, %cmp8
  br i1 %or.cond79, label %if.then7.return_crit_edge, label %if.end12

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end12:                                         ; preds = %if.then7
  %sub = sub nuw nsw i32 10, %strategy
  %mul = shl i32 %sub, %defaultNormLog
  %shr = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %nbSeq)
  %cmp13 = icmp ugt i32 %shr, %nbSeq
  br i1 %cmp13, label %if.end12.if.then17_crit_edge, label %lor.lhs.false

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end12
  %sub14 = add i32 %defaultNormLog, -1
  %shr15 = lshr i32 %nbSeq, %sub14
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15, i32 %mostFrequent)
  %cmp16 = icmp ugt i32 %shr15, %mostFrequent
  br i1 %cmp16, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end50_crit_edge

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %3 = ptrtoint ptr %repeatMode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %repeatMode, align 4
  br label %return

if.else:                                          ; preds = %if.end3
  br i1 %tobool6.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.else
  %sub.i = sub i32 8, %defaultNormLog
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.true
  %s.014.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %cost.013.i = phi i32 [ 0, %cond.true ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %defaultNorm, i32 %s.014.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp1.not.i = icmp eq i16 %5, -1
  %narrow.i = select i1 %cmp1.not.i, i16 1, i16 %5
  %spec.select.i = sext i16 %narrow.i to i32
  %shl.i = shl i32 %spec.select.i, %sub.i
  %arrayidx5.i = getelementptr i32, ptr %count, i32 %s.014.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr [256 x i32], ptr @kInverseProbabilityLog256, i32 0, i32 %shl.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %mul.i = mul i32 %9, %7
  %add.i = add i32 %mul.i, %cost.013.i
  %inc.i = add i32 %s.014.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %max
  br i1 %cmp.not.i, label %ZSTD_crossEntropyCost.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ZSTD_crossEntropyCost.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %add.i, 8
  br label %cond.end

cond.end:                                         ; preds = %ZSTD_crossEntropyCost.exit, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %shr.i, %ZSTD_crossEntropyCost.exit ], [ -1, %if.else.cond.end_crit_edge ]
  %10 = ptrtoint ptr %repeatMode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %repeatMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp24.not = icmp eq i32 %11, 0
  br i1 %cmp24.not, label %cond.end.cond.end28_crit_edge, label %cond.true25

cond.end.cond.end28_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end28

cond.true25:                                      ; preds = %cond.end
  %12 = ptrtoint ptr %prevCTable to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %prevCTable, align 1
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i16, ptr %prevCTable, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %shl2.i.i = shl nuw i32 1, %sub.i.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 %shl2.i.i
  %add.ptr3.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %cond.i.i
  %add.ptr.i27.i = getelementptr i16, ptr %prevCTable, i32 1
  %14 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr.i27.i, align 1
  %conv.i28.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i28.i, i32 %max)
  %cmp.i = icmp ult i32 %conv.i28.i, %max
  br i1 %cmp.i, label %cond.true25.cond.end28_crit_edge, label %for.cond.preheader.i

cond.true25.cond.end28_crit_edge:                 ; preds = %cond.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end28

for.cond.preheader.i:                             ; preds = %cond.true25
  %shl1.neg1.i.i = shl nsw i32 -1, %conv.i.i
  %add.i83 = shl nuw nsw i32 %conv.i.i, 8
  %shl.i84 = add nuw nsw i32 %add.i83, 256
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.inc.i.for.body.i86_crit_edge, %for.cond.preheader.i
  %s.036.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i88, %for.inc.i.for.body.i86_crit_edge ]
  %cost.035.i = phi i32 [ 0, %for.cond.preheader.i ], [ %cost.1.ph.i, %for.inc.i.for.body.i86_crit_edge ]
  %deltaNbBits.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i, i32 %s.036.i, i32 1
  %16 = ptrtoint ptr %deltaNbBits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %deltaNbBits.i.i, align 4
  %shr.i.i = lshr i32 %17, 16
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %shl.i29.i = shl i32 %add.i.i, 16
  %add4.neg.i.i = sub i32 %shl1.neg1.i.i, %17
  %sub.i30.i = add i32 %add4.neg.i.i, %shl.i29.i
  %shl5.i.i = shl i32 %sub.i30.i, 8
  %shr6.i.i = lshr i32 %shl5.i.i, %conv.i.i
  %mul.i.i = shl nuw nsw i32 %add.i.i, 8
  %sub9.i.i = sub i32 %mul.i.i, %shr6.i.i
  %arrayidx.i85 = getelementptr i32, ptr %count, i32 %s.036.i
  %18 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp3.i = icmp eq i32 %19, 0
  br i1 %cmp3.i, label %for.body.i86.for.inc.i_crit_edge, label %if.end5.i

for.body.i86.for.inc.i_crit_edge:                 ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i.i, i32 %shl.i84)
  %cmp6.not.i = icmp ult i32 %sub9.i.i, %shl.i84
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end5.i.cond.end28_crit_edge

if.end5.i.cond.end28_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end28

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i87 = mul i32 %sub9.i.i, %19
  %add10.i = add i32 %mul.i87, %cost.035.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i86.for.inc.i_crit_edge
  %cost.1.ph.i = phi i32 [ %cost.035.i, %for.body.i86.for.inc.i_crit_edge ], [ %add10.i, %if.end8.i ]
  %inc.i88 = add i32 %s.036.i, 1
  %cmp1.not.i89 = icmp ugt i32 %inc.i88, %max
  br i1 %cmp1.not.i89, label %for.end.i, label %for.inc.i.for.body.i86_crit_edge

for.inc.i.for.body.i86_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i86

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i90 = lshr i32 %cost.1.ph.i, 8
  br label %cond.end28

cond.end28:                                       ; preds = %for.end.i, %if.end5.i.cond.end28_crit_edge, %cond.true25.cond.end28_crit_edge, %cond.end.cond.end28_crit_edge
  %cond29 = phi i32 [ -1, %cond.end.cond.end28_crit_edge ], [ %shr.i90, %for.end.i ], [ -1, %cond.true25.cond.end28_crit_edge ], [ -1, %if.end5.i.cond.end28_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %wksp.i) #7
  %20 = call ptr @memset(ptr %wksp.i, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %norm.i) #7
  %21 = call ptr @memset(ptr %norm.i, i32 255, i32 106)
  %call.i = tail call i32 @FSE_optimalTableLog(i32 noundef %FSELog, i32 noundef %nbSeq, i32 noundef %max) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %nbSeq)
  %cmp.i.i = icmp ugt i32 %nbSeq, 2047
  %conv.i.i91 = zext i1 %cmp.i.i to i32
  %call2.i = call i32 @FSE_normalizeCount(ptr noundef nonnull %norm.i, i32 noundef %call.i, ptr noundef %count, i32 noundef %nbSeq, i32 noundef %max, i32 noundef %conv.i.i91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call2.i)
  %cmp.i16.i = icmp ult i32 %call2.i, -119
  br i1 %cmp.i16.i, label %do.end.i, label %cond.end28.ZSTD_NCountCost.exit_crit_edge

cond.end28.ZSTD_NCountCost.exit_crit_edge:        ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %ZSTD_NCountCost.exit

do.end.i:                                         ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 @FSE_writeNCount(ptr noundef nonnull %wksp.i, i32 noundef 512, ptr noundef nonnull %norm.i, i32 noundef %max, i32 noundef %call.i) #7
  br label %ZSTD_NCountCost.exit

ZSTD_NCountCost.exit:                             ; preds = %do.end.i, %cond.end28.ZSTD_NCountCost.exit_crit_edge
  %retval.1.i = phi i32 [ %call6.i, %do.end.i ], [ %call2.i, %cond.end28.ZSTD_NCountCost.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %norm.i) #7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %wksp.i) #7
  br label %for.body.i99

for.body.i99:                                     ; preds = %for.body.i99.for.body.i99_crit_edge, %ZSTD_NCountCost.exit
  %s.016.i = phi i32 [ 0, %ZSTD_NCountCost.exit ], [ %inc.i97, %for.body.i99.for.body.i99_crit_edge ]
  %cost.015.i = phi i32 [ 0, %ZSTD_NCountCost.exit ], [ %add.i96, %for.body.i99.for.body.i99_crit_edge ]
  %arrayidx.i92 = getelementptr i32, ptr %count, i32 %s.016.i
  %22 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i92, align 4
  %mul.i93 = shl i32 %23, 8
  %div.i = udiv i32 %mul.i93, %nbSeq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.not.i = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i93, i32 %nbSeq)
  %cmp3.i94 = icmp ult i32 %mul.i93, %nbSeq
  %spec.store.select.i = select i1 %cmp3.i94, i32 1, i32 %div.i
  %norm.0.i = select i1 %cmp2.not.i, i32 %div.i, i32 %spec.store.select.i
  %arrayidx5.i95 = getelementptr [256 x i32], ptr @kInverseProbabilityLog256, i32 0, i32 %norm.0.i
  %24 = ptrtoint ptr %arrayidx5.i95 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i95, align 4
  %mul6.i = mul i32 %25, %23
  %add.i96 = add i32 %mul6.i, %cost.015.i
  %inc.i97 = add i32 %s.016.i, 1
  %cmp.not.i98 = icmp ugt i32 %inc.i97, %max
  br i1 %cmp.not.i98, label %ZSTD_entropyCost.exit, label %for.body.i99.for.body.i99_crit_edge

for.body.i99.for.body.i99_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i99

ZSTD_entropyCost.exit:                            ; preds = %for.body.i99
  %shl31 = shl i32 %retval.1.i, 3
  %shr.i100 = lshr i32 %add.i96, 8
  %add = add i32 %shr.i100, %shl31
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cond29)
  %cmp36.not = icmp ugt i32 %cond, %cond29
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add)
  %cmp38.not = icmp ugt i32 %cond, %add
  %or.cond80 = select i1 %cmp36.not, i1 true, i1 %cmp38.not
  br i1 %or.cond80, label %if.end40, label %if.then39

if.then39:                                        ; preds = %ZSTD_entropyCost.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %repeatMode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %repeatMode, align 4
  br label %return

if.end40:                                         ; preds = %ZSTD_entropyCost.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %add)
  %cmp41.not = icmp ugt i32 %cond29, %add
  br i1 %cmp41.not, label %if.end40.if.end50_crit_edge, label %if.end40.return_crit_edge

if.end40.return_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50:                                         ; preds = %if.end40.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge, %if.then5.if.end50_crit_edge
  %27 = ptrtoint ptr %repeatMode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %repeatMode, align 4
  br label %return

return:                                           ; preds = %if.end50, %if.end40.return_crit_edge, %if.then39, %if.then17, %if.then7.return_crit_edge, %if.then
  %retval.2 = phi i32 [ 2, %if.end50 ], [ %spec.select, %if.then ], [ 3, %if.then7.return_crit_edge ], [ 0, %if.then17 ], [ 3, %if.end40.return_crit_edge ], [ 0, %if.then39 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_buildCTable(ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %nextCTable, i32 noundef %FSELog, i32 noundef %type, ptr noundef %count, i32 noundef %max, ptr nocapture noundef readonly %codeTable, i32 noundef %nbSeq, ptr noundef %defaultNorm, i32 noundef %defaultNormLog, i32 noundef %defaultMax, ptr nocapture noundef readonly %prevCTable, i32 noundef %prevCTableSize, ptr noundef %entropyWorkspace, i32 noundef %entropyWorkspaceSize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup82_crit_edge [
    i32 1, label %do.body
    i32 3, label %sw.bb5
    i32 0, label %do.body7
    i32 2, label %sw.bb19
  ]

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

do.body:                                          ; preds = %entry
  %conv = trunc i32 %max to i8
  %call = tail call i32 @FSE_buildCTable_rle(ptr noundef %nextCTable, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %do.end, label %do.body.cleanup82_crit_edge

do.body.cleanup82_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstCapacity)
  %cmp = icmp eq i32 %dstCapacity, 0
  br i1 %cmp, label %do.end.cleanup82_crit_edge, label %if.end4

do.end.cleanup82_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %codeTable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %codeTable, align 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %dst, align 1
  br label %cleanup82

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %nextCTable, ptr %prevCTable, i32 %prevCTableSize)
  br label %cleanup82

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @FSE_buildCTable_wksp(ptr noundef %nextCTable, ptr noundef %defaultNorm, i32 noundef %defaultMax, i32 noundef %defaultNormLog, ptr noundef %entropyWorkspace, i32 noundef %entropyWorkspaceSize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call9)
  %cmp.i128 = icmp ult i32 %call9, -119
  %spec.select = select i1 %cmp.i128, i32 0, i32 %call9
  br label %cleanup82

sw.bb19:                                          ; preds = %entry
  %call20 = tail call i32 @FSE_optimalTableLog(i32 noundef %FSELog, i32 noundef %nbSeq, i32 noundef %max) #7
  %sub = add i32 %nbSeq, -1
  %arrayidx21 = getelementptr i8, ptr %codeTable, i32 %sub
  %5 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx21, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx22 = getelementptr i32, ptr %count, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp23 = icmp ugt i32 %8, 1
  br i1 %cmp23, label %if.then25, label %sw.bb19.if.end31_crit_edge

sw.bb19.if.end31_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %8, -1
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %arrayidx22, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %sw.bb19.if.end31_crit_edge
  %nbSeq_1.0 = phi i32 [ %sub, %if.then25 ], [ %nbSeq, %sw.bb19.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %nbSeq_1.0)
  %cmp.i130 = icmp ugt i32 %nbSeq_1.0, 2047
  %conv.i131 = zext i1 %cmp.i130 to i32
  %call35 = tail call i32 @FSE_normalizeCount(ptr noundef %entropyWorkspace, i32 noundef %call20, ptr noundef %count, i32 noundef %nbSeq_1.0, i32 noundef %max, i32 noundef %conv.i131) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call35)
  %cmp.i132 = icmp ult i32 %call35, -119
  br i1 %cmp.i132, label %do.end44, label %if.end31.cleanup82_crit_edge

if.end31.cleanup82_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

do.end44:                                         ; preds = %if.end31
  %call47 = tail call i32 @FSE_writeNCount(ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %entropyWorkspace, i32 noundef %max, i32 noundef %call20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call47)
  %cmp.i134 = icmp ult i32 %call47, -119
  br i1 %cmp.i134, label %do.body59, label %do.end44.cleanup82_crit_edge

do.end44.cleanup82_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

do.body59:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %wksp63 = getelementptr inbounds %struct.ZSTD_BuildCTableWksp, ptr %entropyWorkspace, i32 0, i32 1
  %call65 = tail call i32 @FSE_buildCTable_wksp(ptr noundef %nextCTable, ptr noundef %entropyWorkspace, i32 noundef %max, i32 noundef %call20, ptr noundef %wksp63, i32 noundef 728) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call65)
  %cmp.i136 = icmp ult i32 %call65, -119
  %spec.select127 = select i1 %cmp.i136, i32 %call47, i32 %call65
  br label %cleanup82

cleanup82:                                        ; preds = %do.body59, %do.end44.cleanup82_crit_edge, %if.end31.cleanup82_crit_edge, %do.body7, %sw.bb5, %if.end4, %do.end.cleanup82_crit_edge, %do.body.cleanup82_crit_edge, %entry.cleanup82_crit_edge
  %retval.7 = phi i32 [ 0, %sw.bb5 ], [ 1, %if.end4 ], [ %call, %do.body.cleanup82_crit_edge ], [ -70, %do.end.cleanup82_crit_edge ], [ %call35, %if.end31.cleanup82_crit_edge ], [ %call47, %do.end44.cleanup82_crit_edge ], [ -1, %entry.cleanup82_crit_edge ], [ %spec.select, %do.body7 ], [ %spec.select127, %do.body59 ]
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_rle(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_optimalTableLog(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_writeNCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_encodeSequences(ptr noundef %dst, i32 noundef %dstCapacity, ptr nocapture noundef readonly %CTable_MatchLength, ptr nocapture noundef readonly %mlCodeTable, ptr nocapture noundef readonly %CTable_OffsetBits, ptr nocapture noundef readonly %ofCodeTable, ptr nocapture noundef readonly %CTable_LitLength, ptr nocapture noundef readonly %llCodeTable, ptr nocapture noundef readonly %sequences, i32 noundef %nbSeq, i32 noundef %longOffsets, i32 noundef %bmi2) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %dstCapacity
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dstCapacity)
  %cmp.i.i.i = icmp ugt i32 %dstCapacity, 4
  br i1 %cmp.i.i.i, label %if.end.i.i, label %entry.ZSTD_encodeSequences_default.exit_crit_edge

entry.ZSTD_encodeSequences_default.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ZSTD_encodeSequences_default.exit

if.end.i.i:                                       ; preds = %entry
  %sub.i.i = add i32 %nbSeq, -1
  %arrayidx.i.i = getelementptr i8, ptr %mlCodeTable, i32 %sub.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %2 = ptrtoint ptr %CTable_MatchLength to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %CTable_MatchLength, align 1
  %conv.i.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i.i = getelementptr i16, ptr %CTable_MatchLength, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i.i = icmp eq i16 %3, 0
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -1
  %shl2.i.i.i.i = shl nuw i32 1, %sub.i.i.i.i
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %shl2.i.i.i.i
  %add.ptr3.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 %cond.i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i.i.i, i32 %conv.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %symbolTT.sroa.0.0.copyload.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 4
  %5 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %symbolTT.sroa.5.0.copyload.i.i.i = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i.i.i, align 4
  %add.i.i.i = add i32 %symbolTT.sroa.5.0.copyload.i.i.i, 32768
  %shr.i.i.i = lshr i32 %add.i.i.i, 16
  %shl.i.i.i = and i32 %add.i.i.i, -65536
  %sub.i.i.i = sub i32 %shl.i.i.i, %symbolTT.sroa.5.0.copyload.i.i.i
  %shr5.i.i.i = ashr i32 %sub.i.i.i, %shr.i.i.i
  %add6.i.i.i = add i32 %shr5.i.i.i, %symbolTT.sroa.0.0.copyload.i.i.i
  %arrayidx7.i.i.i = getelementptr i16, ptr %add.ptr.i.i.i.i, i32 %add6.i.i.i
  %6 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx7.i.i.i, align 2
  %arrayidx3.i.i = getelementptr i8, ptr %ofCodeTable, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %CTable_OffsetBits to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %CTable_OffsetBits, align 1
  %conv.i.i213.i.i = zext i16 %11 to i32
  %add.ptr.i.i215.i.i = getelementptr i16, ptr %CTable_OffsetBits, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i217.i.i = icmp eq i16 %11, 0
  %sub.i.i218.i.i = add nsw i32 %conv.i.i213.i.i, -1
  %shl2.i.i219.i.i = shl nuw i32 1, %sub.i.i218.i.i
  %cond.i.i220.i.i = select i1 %tobool.not.i.i217.i.i, i32 1, i32 %shl2.i.i219.i.i
  %add.ptr3.i.i221.i.i = getelementptr i32, ptr %add.ptr.i.i215.i.i, i32 %cond.i.i220.i.i
  %arrayidx.i224.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i221.i.i, i32 %conv4.i.i
  %12 = ptrtoint ptr %arrayidx.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %symbolTT.sroa.0.0.copyload.i225.i.i = load i32, ptr %arrayidx.i224.i.i, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i226.i.i = getelementptr inbounds i8, ptr %arrayidx.i224.i.i, i32 4
  %13 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %symbolTT.sroa.5.0.copyload.i227.i.i = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i226.i.i, align 4
  %add.i228.i.i = add i32 %symbolTT.sroa.5.0.copyload.i227.i.i, 32768
  %shr.i229.i.i = lshr i32 %add.i228.i.i, 16
  %shl.i230.i.i = and i32 %add.i228.i.i, -65536
  %sub.i231.i.i = sub i32 %shl.i230.i.i, %symbolTT.sroa.5.0.copyload.i227.i.i
  %shr5.i232.i.i = ashr i32 %sub.i231.i.i, %shr.i229.i.i
  %add6.i233.i.i = add i32 %shr5.i232.i.i, %symbolTT.sroa.0.0.copyload.i225.i.i
  %arrayidx7.i234.i.i = getelementptr i16, ptr %add.ptr.i.i215.i.i, i32 %add6.i233.i.i
  %14 = ptrtoint ptr %arrayidx7.i234.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx7.i234.i.i, align 2
  %arrayidx6.i.i = getelementptr i8, ptr %llCodeTable, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %CTable_LitLength to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %CTable_LitLength, align 1
  %conv.i.i236.i.i = zext i16 %19 to i32
  %add.ptr.i.i238.i.i = getelementptr i16, ptr %CTable_LitLength, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i.i240.i.i = icmp eq i16 %19, 0
  %sub.i.i241.i.i = add nsw i32 %conv.i.i236.i.i, -1
  %shl2.i.i242.i.i = shl nuw i32 1, %sub.i.i241.i.i
  %cond.i.i243.i.i = select i1 %tobool.not.i.i240.i.i, i32 1, i32 %shl2.i.i242.i.i
  %add.ptr3.i.i244.i.i = getelementptr i32, ptr %add.ptr.i.i238.i.i, i32 %cond.i.i243.i.i
  %arrayidx.i247.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i244.i.i, i32 %conv7.i.i
  %20 = ptrtoint ptr %arrayidx.i247.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %symbolTT.sroa.0.0.copyload.i248.i.i = load i32, ptr %arrayidx.i247.i.i, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i249.i.i = getelementptr inbounds i8, ptr %arrayidx.i247.i.i, i32 4
  %21 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i249.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %symbolTT.sroa.5.0.copyload.i250.i.i = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i249.i.i, align 4
  %add.i251.i.i = add i32 %symbolTT.sroa.5.0.copyload.i250.i.i, 32768
  %shr.i252.i.i = lshr i32 %add.i251.i.i, 16
  %shl.i253.i.i = and i32 %add.i251.i.i, -65536
  %sub.i254.i.i = sub i32 %shl.i253.i.i, %symbolTT.sroa.5.0.copyload.i250.i.i
  %shr5.i255.i.i = ashr i32 %sub.i254.i.i, %shr.i252.i.i
  %add6.i256.i.i = add i32 %shr5.i255.i.i, %symbolTT.sroa.0.0.copyload.i248.i.i
  %arrayidx7.i257.i.i = getelementptr i16, ptr %add.ptr.i.i238.i.i, i32 %add6.i256.i.i
  %22 = ptrtoint ptr %arrayidx7.i257.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx7.i257.i.i, align 2
  %arrayidx9.i.i = getelementptr %struct.seqDef_s, ptr %sequences, i32 %sub.i.i
  %litLength.i.i = getelementptr %struct.seqDef_s, ptr %sequences, i32 %sub.i.i, i32 1
  %24 = ptrtoint ptr %litLength.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %litLength.i.i, align 4
  %conv10.i.i = zext i16 %25 to i32
  %arrayidx13.i.i = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %conv7.i.i
  %26 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13.i.i, align 4
  %arrayidx.i259.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i259.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i259.i.i, align 4
  %and.i.i.i = and i32 %29, %conv10.i.i
  %shr.i264.i.i = lshr i32 %27, 3
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #7
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %dst, align 1
  %add.ptr.i266.i.i = getelementptr i8, ptr %dst, i32 %shr.i264.i.i
  %cmp.i268.i.i = icmp ugt ptr %add.ptr.i266.i.i, %add.ptr4.i.i.i
  %spec.store.select.i.i.i = select i1 %cmp.i268.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i266.i.i
  %and.i269.i.i = and i32 %27, 7
  %mul.i.i.i = and i32 %27, -8
  %shr7.i.i.i = lshr i32 %and.i.i.i, %mul.i.i.i
  %matchLength.i.i = getelementptr %struct.seqDef_s, ptr %sequences, i32 %sub.i.i, i32 2
  %32 = ptrtoint ptr %matchLength.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %matchLength.i.i, align 2
  %conv20.i.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom23.i.i = zext i8 %35 to i32
  %arrayidx24.i.i = getelementptr [53 x i32], ptr @ML_bits, i32 0, i32 %idxprom23.i.i
  %36 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24.i.i, align 4
  %arrayidx.i270.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i270.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i270.i.i, align 4
  %and.i271.i.i = and i32 %39, %conv20.i.i
  %shl.i273.i.i = shl nuw nsw i32 %and.i271.i.i, %and.i269.i.i
  %or.i274.i.i = or i32 %shl.i273.i.i, %shr7.i.i.i
  %add.i275.i.i = add i32 %37, %and.i269.i.i
  %shr.i277.i.i = lshr i32 %add.i275.i.i, 3
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i274.i.i) #7
  %41 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %spec.store.select.i.i.i, align 1
  %add.ptr.i279.i.i = getelementptr i8, ptr %spec.store.select.i.i.i, i32 %shr.i277.i.i
  %cmp.i281.i.i = icmp ugt ptr %add.ptr.i279.i.i, %add.ptr4.i.i.i
  %spec.store.select.i282.i.i = select i1 %cmp.i281.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i279.i.i
  %and.i283.i.i = and i32 %add.i275.i.i, 7
  %mul.i284.i.i = and i32 %add.i275.i.i, -8
  %shr7.i285.i.i = lshr i32 %or.i274.i.i, %mul.i284.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %longOffsets)
  %tobool29.not.i.i = icmp eq i32 %longOffsets, 0
  br i1 %tobool29.not.i.i, label %if.else.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end.i.i
  %42 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx3.i.i, align 1
  %conv33.i.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %43)
  %cmp.i.i = icmp ult i8 %43, 24
  br i1 %cmp.i.i, label %if.then30.i.i.if.end48.i.i_crit_edge, label %cond.end.i.i

if.then30.i.i.if.end48.i.i_crit_edge:             ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

cond.end.i.i:                                     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %43)
  %tobool44.not.i.i = icmp eq i8 %43, 24
  br i1 %tobool44.not.i.i, label %cond.end.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

cond.end.i.i.if.end48.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub43.i.i = add nsw i32 %conv33.i.i, -24
  %44 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx.i286.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %sub43.i.i
  %46 = ptrtoint ptr %arrayidx.i286.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i286.i.i, align 4
  %and.i287.i.i = and i32 %47, %45
  %shl.i289.i.i = shl i32 %and.i287.i.i, %and.i283.i.i
  %or.i290.i.i = or i32 %shl.i289.i.i, %shr7.i285.i.i
  %add.i291.i.i = add nsw i32 %sub43.i.i, %and.i283.i.i
  %shr.i293.i.i = lshr i32 %add.i291.i.i, 3
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i290.i.i) #7
  %49 = ptrtoint ptr %spec.store.select.i282.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %spec.store.select.i282.i.i, align 1
  %add.ptr.i295.i.i = getelementptr i8, ptr %spec.store.select.i282.i.i, i32 %shr.i293.i.i
  %cmp.i297.i.i = icmp ugt ptr %add.ptr.i295.i.i, %add.ptr4.i.i.i
  %spec.store.select.i298.i.i = select i1 %cmp.i297.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i295.i.i
  %and.i299.i.i = and i32 %add.i291.i.i, 7
  %mul.i300.i.i = and i32 %add.i291.i.i, -8
  %shr7.i301.i.i = lshr i32 %or.i290.i.i, %mul.i300.i.i
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %cond.end.i.i.if.end48.i.i_crit_edge, %if.then30.i.i.if.end48.i.i_crit_edge
  %sub43645.i.i = phi i32 [ 0, %cond.end.i.i.if.end48.i.i_crit_edge ], [ %sub43.i.i, %if.then45.i.i ], [ 0, %if.then30.i.i.if.end48.i.i_crit_edge ]
  %cond42644.i.i = phi i32 [ 24, %cond.end.i.i.if.end48.i.i_crit_edge ], [ 24, %if.then45.i.i ], [ %conv33.i.i, %if.then30.i.i.if.end48.i.i_crit_edge ]
  %blockStream.sroa.153.0.i.i = phi ptr [ %spec.store.select.i282.i.i, %cond.end.i.i.if.end48.i.i_crit_edge ], [ %spec.store.select.i298.i.i, %if.then45.i.i ], [ %spec.store.select.i282.i.i, %if.then30.i.i.if.end48.i.i_crit_edge ]
  %blockStream.sroa.76.0.i.i = phi i32 [ %and.i283.i.i, %cond.end.i.i.if.end48.i.i_crit_edge ], [ %and.i299.i.i, %if.then45.i.i ], [ %and.i283.i.i, %if.then30.i.i.if.end48.i.i_crit_edge ]
  %blockStream.sroa.0.0.i.i = phi i32 [ %shr7.i285.i.i, %cond.end.i.i.if.end48.i.i_crit_edge ], [ %shr7.i301.i.i, %if.then45.i.i ], [ %shr7.i285.i.i, %if.then30.i.i.if.end48.i.i_crit_edge ]
  %50 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx9.i.i, align 4
  %shr.i.i = lshr i32 %51, %sub43645.i.i
  %arrayidx.i302.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %cond42644.i.i
  %52 = ptrtoint ptr %arrayidx.i302.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i302.i.i, align 4
  %and.i303.i.i = and i32 %53, %shr.i.i
  %shl.i305.i.i = shl i32 %and.i303.i.i, %blockStream.sroa.76.0.i.i
  %or.i306.i.i = or i32 %shl.i305.i.i, %blockStream.sroa.0.0.i.i
  %add.i307.i.i = add nuw nsw i32 %blockStream.sroa.76.0.i.i, %cond42644.i.i
  br label %if.end59.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx9.i.i, align 4
  %56 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx3.i.i, align 1
  %conv58.i.i = zext i8 %57 to i32
  %arrayidx.i308.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv58.i.i
  %58 = ptrtoint ptr %arrayidx.i308.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i308.i.i, align 4
  %and.i309.i.i = and i32 %59, %55
  %shl.i311.i.i = shl i32 %and.i309.i.i, %and.i283.i.i
  %or.i312.i.i = or i32 %shl.i311.i.i, %shr7.i285.i.i
  %add.i313.i.i = add nuw nsw i32 %and.i283.i.i, %conv58.i.i
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.else.i.i, %if.end48.i.i
  %blockStream.sroa.153.1.i.i = phi ptr [ %spec.store.select.i282.i.i, %if.else.i.i ], [ %blockStream.sroa.153.0.i.i, %if.end48.i.i ]
  %blockStream.sroa.76.1.i.i = phi i32 [ %add.i313.i.i, %if.else.i.i ], [ %add.i307.i.i, %if.end48.i.i ]
  %blockStream.sroa.0.1.i.i = phi i32 [ %or.i312.i.i, %if.else.i.i ], [ %or.i306.i.i, %if.end48.i.i ]
  %shr.i315.i.i = lshr i32 %blockStream.sroa.76.1.i.i, 3
  %60 = tail call i32 @llvm.bswap.i32(i32 %blockStream.sroa.0.1.i.i) #7
  %61 = ptrtoint ptr %blockStream.sroa.153.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %blockStream.sroa.153.1.i.i, align 1
  %add.ptr.i317.i.i = getelementptr i8, ptr %blockStream.sroa.153.1.i.i, i32 %shr.i315.i.i
  %cmp.i319.i.i = icmp ugt ptr %add.ptr.i317.i.i, %add.ptr4.i.i.i
  %spec.store.select.i320.i.i = select i1 %cmp.i319.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i317.i.i
  %mul.i322.i.i = and i32 %blockStream.sroa.76.1.i.i, -8
  %shr7.i323.i.i = lshr i32 %blockStream.sroa.0.1.i.i, %mul.i322.i.i
  %stateLitLength.sroa.0.0656.i.i = zext i16 %23 to i32
  %stateOffsetBits.sroa.0.0657.i.i = zext i16 %15 to i32
  %stateMatchLength.sroa.0.0658.i.i = zext i16 %7 to i32
  %blockStream.sroa.76.2659.i.i = and i32 %blockStream.sroa.76.1.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nbSeq)
  %cmp61660.i.i = icmp ugt i32 %nbSeq, 1
  br i1 %cmp61660.i.i, label %for.body.preheader.i.i, label %if.end59.i.i.for.end.i.i_crit_edge

if.end59.i.i.for.end.i.i_crit_edge:               ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end59.i.i
  %sub60.i.i = add i32 %nbSeq, -2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end138.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %blockStream.sroa.76.2667.i.i = phi i32 [ %blockStream.sroa.76.2.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %blockStream.sroa.76.2659.i.i, %for.body.preheader.i.i ]
  %stateMatchLength.sroa.0.0666.i.i = phi i32 [ %stateMatchLength.sroa.0.0.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %stateMatchLength.sroa.0.0658.i.i, %for.body.preheader.i.i ]
  %stateOffsetBits.sroa.0.0665.i.i = phi i32 [ %stateOffsetBits.sroa.0.0.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %stateOffsetBits.sroa.0.0657.i.i, %for.body.preheader.i.i ]
  %stateLitLength.sroa.0.0664.i.i = phi i32 [ %stateLitLength.sroa.0.0.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %stateLitLength.sroa.0.0656.i.i, %for.body.preheader.i.i ]
  %n.0663.i.i = phi i32 [ %dec.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %sub60.i.i, %for.body.preheader.i.i ]
  %blockStream.sroa.0.2662.i.i = phi i32 [ %shr7.i460.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %shr7.i323.i.i, %for.body.preheader.i.i ]
  %blockStream.sroa.153.2661.i.i = phi ptr [ %spec.store.select.i457.i.i, %if.end138.i.i.for.body.i.i_crit_edge ], [ %spec.store.select.i320.i.i, %for.body.preheader.i.i ]
  %arrayidx63.i.i = getelementptr i8, ptr %llCodeTable, i32 %n.0663.i.i
  %62 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx63.i.i, align 1
  %arrayidx64.i.i = getelementptr i8, ptr %ofCodeTable, i32 %n.0663.i.i
  %64 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx64.i.i, align 1
  %arrayidx65.i.i = getelementptr i8, ptr %mlCodeTable, i32 %n.0663.i.i
  %66 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx65.i.i, align 1
  %idxprom66.i.i = zext i8 %63 to i32
  %arrayidx67.i.i = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %idxprom66.i.i
  %68 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx67.i.i, align 4
  %conv69.i.i = zext i8 %65 to i32
  %idxprom70.i.i = zext i8 %67 to i32
  %arrayidx71.i.i = getelementptr [53 x i32], ptr @ML_bits, i32 0, i32 %idxprom70.i.i
  %70 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx71.i.i, align 4
  %arrayidx.i324.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i221.i.i, i32 %conv69.i.i
  %72 = ptrtoint ptr %arrayidx.i324.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %symbolTT.sroa.0.0.copyload.i325.i.i = load i32, ptr %arrayidx.i324.i.i, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i326.i.i = getelementptr inbounds i8, ptr %arrayidx.i324.i.i, i32 4
  %73 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i326.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %symbolTT.sroa.5.0.copyload.i327.i.i = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i326.i.i, align 4
  %add.i328.i.i = add i32 %symbolTT.sroa.5.0.copyload.i327.i.i, %stateOffsetBits.sroa.0.0665.i.i
  %shr.i329.i.i = lshr i32 %add.i328.i.i, 16
  %arrayidx.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %shr.i329.i.i
  %74 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %75, %stateOffsetBits.sroa.0.0665.i.i
  %shl.i.i330.i.i = shl i32 %and.i.i.i.i, %blockStream.sroa.76.2667.i.i
  %or.i.i.i.i = or i32 %shl.i.i330.i.i, %blockStream.sroa.0.2662.i.i
  %add.i.i.i.i = add nuw nsw i32 %shr.i329.i.i, %blockStream.sroa.76.2667.i.i
  %shr5.i331653.i.i = lshr i32 %stateOffsetBits.sroa.0.0665.i.i, %shr.i329.i.i
  %add6.i332.i.i = add i32 %shr5.i331653.i.i, %symbolTT.sroa.0.0.copyload.i325.i.i
  %arrayidx7.i333.i.i = getelementptr i16, ptr %add.ptr.i.i215.i.i, i32 %add6.i332.i.i
  %76 = ptrtoint ptr %arrayidx7.i333.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx7.i333.i.i, align 2
  %arrayidx.i336.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i.i.i, i32 %idxprom70.i.i
  %78 = ptrtoint ptr %arrayidx.i336.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %symbolTT.sroa.0.0.copyload.i337.i.i = load i32, ptr %arrayidx.i336.i.i, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i338.i.i = getelementptr inbounds i8, ptr %arrayidx.i336.i.i, i32 4
  %79 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i338.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %symbolTT.sroa.5.0.copyload.i339.i.i = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i338.i.i, align 4
  %add.i341.i.i = add i32 %symbolTT.sroa.5.0.copyload.i339.i.i, %stateMatchLength.sroa.0.0666.i.i
  %shr.i342.i.i = lshr i32 %add.i341.i.i, 16
  %arrayidx.i.i343.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %shr.i342.i.i
  %80 = ptrtoint ptr %arrayidx.i.i343.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i343.i.i, align 4
  %and.i.i344.i.i = and i32 %81, %stateMatchLength.sroa.0.0666.i.i
  %shl.i.i346.i.i = shl i32 %and.i.i344.i.i, %add.i.i.i.i
  %or.i.i347.i.i = or i32 %or.i.i.i.i, %shl.i.i346.i.i
  %add.i.i348.i.i = add nuw nsw i32 %shr.i342.i.i, %add.i.i.i.i
  %shr5.i349654.i.i = lshr i32 %stateMatchLength.sroa.0.0666.i.i, %shr.i342.i.i
  %add6.i350.i.i = add i32 %shr5.i349654.i.i, %symbolTT.sroa.0.0.copyload.i337.i.i
  %arrayidx7.i351.i.i = getelementptr i16, ptr %add.ptr.i.i.i.i, i32 %add6.i350.i.i
  %82 = ptrtoint ptr %arrayidx7.i351.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx7.i351.i.i, align 2
  %shr.i354.i.i = lshr i32 %add.i.i348.i.i, 3
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i.i347.i.i) #7
  %85 = ptrtoint ptr %blockStream.sroa.153.2661.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %blockStream.sroa.153.2661.i.i, align 1
  %add.ptr.i356.i.i = getelementptr i8, ptr %blockStream.sroa.153.2661.i.i, i32 %shr.i354.i.i
  %cmp.i358.i.i = icmp ugt ptr %add.ptr.i356.i.i, %add.ptr4.i.i.i
  %spec.store.select.i359.i.i = select i1 %cmp.i358.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i356.i.i
  %and.i360.i.i = and i32 %add.i.i348.i.i, 7
  %mul.i361.i.i = and i32 %add.i.i348.i.i, 262136
  %shr7.i362.i.i = lshr i32 %or.i.i347.i.i, %mul.i361.i.i
  %arrayidx.i364.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i244.i.i, i32 %idxprom66.i.i
  %86 = ptrtoint ptr %arrayidx.i364.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %symbolTT.sroa.0.0.copyload.i365.i.i = load i32, ptr %arrayidx.i364.i.i, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i366.i.i = getelementptr inbounds i8, ptr %arrayidx.i364.i.i, i32 4
  %87 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i366.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %symbolTT.sroa.5.0.copyload.i367.i.i = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i366.i.i, align 4
  %add.i369.i.i = add i32 %symbolTT.sroa.5.0.copyload.i367.i.i, %stateLitLength.sroa.0.0664.i.i
  %shr.i370.i.i = lshr i32 %add.i369.i.i, 16
  %arrayidx.i.i371.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %shr.i370.i.i
  %88 = ptrtoint ptr %arrayidx.i.i371.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i371.i.i, align 4
  %and.i.i372.i.i = and i32 %89, %stateLitLength.sroa.0.0664.i.i
  %shl.i.i374.i.i = shl nuw nsw i32 %and.i.i372.i.i, %and.i360.i.i
  %or.i.i375.i.i = or i32 %shl.i.i374.i.i, %shr7.i362.i.i
  %add.i.i376.i.i = add nuw nsw i32 %shr.i370.i.i, %and.i360.i.i
  %shr5.i377655.i.i = lshr i32 %stateLitLength.sroa.0.0664.i.i, %shr.i370.i.i
  %add6.i378.i.i = add i32 %shr5.i377655.i.i, %symbolTT.sroa.0.0.copyload.i365.i.i
  %arrayidx7.i379.i.i = getelementptr i16, ptr %add.ptr.i.i238.i.i, i32 %add6.i378.i.i
  %90 = ptrtoint ptr %arrayidx7.i379.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx7.i379.i.i, align 2
  %shr.i382.i.i = lshr i32 %add.i.i376.i.i, 3
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i375.i.i) #7
  %93 = ptrtoint ptr %spec.store.select.i359.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %spec.store.select.i359.i.i, align 1
  %add.ptr.i384.i.i = getelementptr i8, ptr %spec.store.select.i359.i.i, i32 %shr.i382.i.i
  %cmp.i386.i.i = icmp ugt ptr %add.ptr.i384.i.i, %add.ptr4.i.i.i
  %spec.store.select.i387.i.i = select i1 %cmp.i386.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i384.i.i
  %and.i388.i.i = and i32 %add.i.i376.i.i, 7
  %mul.i389.i.i = and i32 %add.i.i376.i.i, 131064
  %shr7.i390.i.i = lshr i32 %or.i.i375.i.i, %mul.i389.i.i
  %arrayidx86.i.i = getelementptr %struct.seqDef_s, ptr %sequences, i32 %n.0663.i.i
  %litLength87.i.i = getelementptr %struct.seqDef_s, ptr %sequences, i32 %n.0663.i.i, i32 1
  %94 = ptrtoint ptr %litLength87.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %litLength87.i.i, align 4
  %conv88.i.i = zext i16 %95 to i32
  %arrayidx.i391.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %69
  %96 = ptrtoint ptr %arrayidx.i391.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i391.i.i, align 4
  %and.i392.i.i = and i32 %97, %conv88.i.i
  %shl.i394.i.i = shl nuw nsw i32 %and.i392.i.i, %and.i388.i.i
  %or.i395.i.i = or i32 %shl.i394.i.i, %shr7.i390.i.i
  %add.i396.i.i = add i32 %and.i388.i.i, %69
  %add91.i.i = add i32 %71, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add91.i.i)
  %cmp92.i.i = icmp ugt i32 %add91.i.i, 24
  br i1 %cmp92.i.i, label %if.then94.i.i, label %for.body.i.i.if.end95.i.i_crit_edge

for.body.i.i.if.end95.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i.i

if.then94.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i398.i.i = lshr i32 %add.i396.i.i, 3
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i395.i.i) #7
  %99 = ptrtoint ptr %spec.store.select.i387.i.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %spec.store.select.i387.i.i, align 1
  %add.ptr.i400.i.i = getelementptr i8, ptr %spec.store.select.i387.i.i, i32 %shr.i398.i.i
  %cmp.i402.i.i = icmp ugt ptr %add.ptr.i400.i.i, %add.ptr4.i.i.i
  %spec.store.select.i403.i.i = select i1 %cmp.i402.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i400.i.i
  %and.i404.i.i = and i32 %add.i396.i.i, 7
  %mul.i405.i.i = and i32 %add.i396.i.i, -8
  %shr7.i406.i.i = lshr i32 %or.i395.i.i, %mul.i405.i.i
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.then94.i.i, %for.body.i.i.if.end95.i.i_crit_edge
  %blockStream.sroa.153.3.i.i = phi ptr [ %spec.store.select.i403.i.i, %if.then94.i.i ], [ %spec.store.select.i387.i.i, %for.body.i.i.if.end95.i.i_crit_edge ]
  %blockStream.sroa.76.3.i.i = phi i32 [ %and.i404.i.i, %if.then94.i.i ], [ %add.i396.i.i, %for.body.i.i.if.end95.i.i_crit_edge ]
  %blockStream.sroa.0.3.i.i = phi i32 [ %shr7.i406.i.i, %if.then94.i.i ], [ %or.i395.i.i, %for.body.i.i.if.end95.i.i_crit_edge ]
  %matchLength97.i.i = getelementptr %struct.seqDef_s, ptr %sequences, i32 %n.0663.i.i, i32 2
  %100 = ptrtoint ptr %matchLength97.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %matchLength97.i.i, align 2
  %conv98.i.i = zext i16 %101 to i32
  %arrayidx.i407.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %71
  %102 = ptrtoint ptr %arrayidx.i407.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i407.i.i, align 4
  %and.i408.i.i = and i32 %103, %conv98.i.i
  %shl.i410.i.i = shl i32 %and.i408.i.i, %blockStream.sroa.76.3.i.i
  %or.i411.i.i = or i32 %shl.i410.i.i, %blockStream.sroa.0.3.i.i
  %add.i412.i.i = add i32 %blockStream.sroa.76.3.i.i, %71
  %shr.i414.i.i = lshr i32 %add.i412.i.i, 3
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i411.i.i) #7
  %105 = ptrtoint ptr %blockStream.sroa.153.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %blockStream.sroa.153.3.i.i, align 1
  %add.ptr.i416.i.i = getelementptr i8, ptr %blockStream.sroa.153.3.i.i, i32 %shr.i414.i.i
  %cmp.i418.i.i = icmp ugt ptr %add.ptr.i416.i.i, %add.ptr4.i.i.i
  %spec.store.select.i419.i.i = select i1 %cmp.i418.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i416.i.i
  %and.i420.i.i = and i32 %add.i412.i.i, 7
  %mul.i421.i.i = and i32 %add.i412.i.i, -8
  %shr7.i422.i.i = lshr i32 %or.i411.i.i, %mul.i421.i.i
  br i1 %tobool29.not.i.i, label %if.else135.i.i, label %if.then109.i.i

if.then109.i.i:                                   ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %65)
  %cmp115.i.i = icmp ult i8 %65, 24
  br i1 %cmp115.i.i, label %if.then109.i.i.if.end130.i.i_crit_edge, label %cond.end123.i.i

if.then109.i.i.if.end130.i.i_crit_edge:           ; preds = %if.then109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i.i

cond.end123.i.i:                                  ; preds = %if.then109.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %65)
  %tobool126.not.i.i = icmp eq i8 %65, 24
  br i1 %tobool126.not.i.i, label %cond.end123.i.i.if.end130.i.i_crit_edge, label %if.then127.i.i

cond.end123.i.i.if.end130.i.i_crit_edge:          ; preds = %cond.end123.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i.i

if.then127.i.i:                                   ; preds = %cond.end123.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub125.i.i = add nsw i32 %conv69.i.i, -24
  %106 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx86.i.i, align 4
  %arrayidx.i423.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %sub125.i.i
  %108 = ptrtoint ptr %arrayidx.i423.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i423.i.i, align 4
  %and.i424.i.i = and i32 %109, %107
  %shl.i426.i.i = shl i32 %and.i424.i.i, %and.i420.i.i
  %or.i427.i.i = or i32 %shl.i426.i.i, %shr7.i422.i.i
  %add.i428.i.i = add nsw i32 %and.i420.i.i, %sub125.i.i
  %shr.i430.i.i = lshr i32 %add.i428.i.i, 3
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i427.i.i) #7
  %111 = ptrtoint ptr %spec.store.select.i419.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %110, ptr %spec.store.select.i419.i.i, align 1
  %add.ptr.i432.i.i = getelementptr i8, ptr %spec.store.select.i419.i.i, i32 %shr.i430.i.i
  %cmp.i434.i.i = icmp ugt ptr %add.ptr.i432.i.i, %add.ptr4.i.i.i
  %spec.store.select.i435.i.i = select i1 %cmp.i434.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i432.i.i
  %and.i436.i.i = and i32 %add.i428.i.i, 7
  %mul.i437.i.i = and i32 %add.i428.i.i, -8
  %shr7.i438.i.i = lshr i32 %or.i427.i.i, %mul.i437.i.i
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %if.then127.i.i, %cond.end123.i.i.if.end130.i.i_crit_edge, %if.then109.i.i.if.end130.i.i_crit_edge
  %sub125650.i.i = phi i32 [ 0, %cond.end123.i.i.if.end130.i.i_crit_edge ], [ %sub125.i.i, %if.then127.i.i ], [ 0, %if.then109.i.i.if.end130.i.i_crit_edge ]
  %cond124649.i.i = phi i32 [ 24, %cond.end123.i.i.if.end130.i.i_crit_edge ], [ 24, %if.then127.i.i ], [ %conv69.i.i, %if.then109.i.i.if.end130.i.i_crit_edge ]
  %blockStream.sroa.153.4.i.i = phi ptr [ %spec.store.select.i419.i.i, %cond.end123.i.i.if.end130.i.i_crit_edge ], [ %spec.store.select.i435.i.i, %if.then127.i.i ], [ %spec.store.select.i419.i.i, %if.then109.i.i.if.end130.i.i_crit_edge ]
  %blockStream.sroa.76.4.i.i = phi i32 [ %and.i420.i.i, %cond.end123.i.i.if.end130.i.i_crit_edge ], [ %and.i436.i.i, %if.then127.i.i ], [ %and.i420.i.i, %if.then109.i.i.if.end130.i.i_crit_edge ]
  %blockStream.sroa.0.4.i.i = phi i32 [ %shr7.i422.i.i, %cond.end123.i.i.if.end130.i.i_crit_edge ], [ %shr7.i438.i.i, %if.then127.i.i ], [ %shr7.i422.i.i, %if.then109.i.i.if.end130.i.i_crit_edge ]
  %112 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx86.i.i, align 4
  %shr133.i.i = lshr i32 %113, %sub125650.i.i
  %arrayidx.i439.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %cond124649.i.i
  %114 = ptrtoint ptr %arrayidx.i439.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i439.i.i, align 4
  %and.i440.i.i = and i32 %115, %shr133.i.i
  %shl.i442.i.i = shl i32 %and.i440.i.i, %blockStream.sroa.76.4.i.i
  %or.i443.i.i = or i32 %shl.i442.i.i, %blockStream.sroa.0.4.i.i
  %add.i444.i.i = add nuw nsw i32 %blockStream.sroa.76.4.i.i, %cond124649.i.i
  br label %if.end138.i.i

if.else135.i.i:                                   ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx86.i.i, align 4
  %arrayidx.i445.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv69.i.i
  %118 = ptrtoint ptr %arrayidx.i445.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i445.i.i, align 4
  %and.i446.i.i = and i32 %119, %117
  %shl.i448.i.i = shl i32 %and.i446.i.i, %and.i420.i.i
  %or.i449.i.i = or i32 %shl.i448.i.i, %shr7.i422.i.i
  %add.i450.i.i = add nuw nsw i32 %and.i420.i.i, %conv69.i.i
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.else135.i.i, %if.end130.i.i
  %blockStream.sroa.153.5.i.i = phi ptr [ %spec.store.select.i419.i.i, %if.else135.i.i ], [ %blockStream.sroa.153.4.i.i, %if.end130.i.i ]
  %blockStream.sroa.76.5.i.i = phi i32 [ %add.i450.i.i, %if.else135.i.i ], [ %add.i444.i.i, %if.end130.i.i ]
  %blockStream.sroa.0.5.i.i = phi i32 [ %or.i449.i.i, %if.else135.i.i ], [ %or.i443.i.i, %if.end130.i.i ]
  %shr.i452.i.i = lshr i32 %blockStream.sroa.76.5.i.i, 3
  %120 = tail call i32 @llvm.bswap.i32(i32 %blockStream.sroa.0.5.i.i) #7
  %121 = ptrtoint ptr %blockStream.sroa.153.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %blockStream.sroa.153.5.i.i, align 1
  %add.ptr.i454.i.i = getelementptr i8, ptr %blockStream.sroa.153.5.i.i, i32 %shr.i452.i.i
  %cmp.i456.i.i = icmp ugt ptr %add.ptr.i454.i.i, %add.ptr4.i.i.i
  %spec.store.select.i457.i.i = select i1 %cmp.i456.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i454.i.i
  %mul.i459.i.i = and i32 %blockStream.sroa.76.5.i.i, -8
  %shr7.i460.i.i = lshr i32 %blockStream.sroa.0.5.i.i, %mul.i459.i.i
  %dec.i.i = add i32 %n.0663.i.i, -1
  %stateLitLength.sroa.0.0.i.i = zext i16 %91 to i32
  %stateOffsetBits.sroa.0.0.i.i = zext i16 %77 to i32
  %stateMatchLength.sroa.0.0.i.i = zext i16 %83 to i32
  %blockStream.sroa.76.2.i.i = and i32 %blockStream.sroa.76.5.i.i, 7
  %cmp61.i.i = icmp ult i32 %dec.i.i, %nbSeq
  br i1 %cmp61.i.i, label %if.end138.i.i.for.body.i.i_crit_edge, label %for.end.i.i.loopexit

if.end138.i.i.for.body.i.i_crit_edge:             ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i.loopexit:                             ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %stateLitLength.sroa.0.0.i.i.le = zext i16 %91 to i32
  %stateOffsetBits.sroa.0.0.i.i.le = zext i16 %77 to i32
  %stateMatchLength.sroa.0.0.i.i.le = zext i16 %83 to i32
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %if.end59.i.i.for.end.i.i_crit_edge
  %blockStream.sroa.153.2.lcssa.i.i = phi ptr [ %spec.store.select.i320.i.i, %if.end59.i.i.for.end.i.i_crit_edge ], [ %spec.store.select.i457.i.i, %for.end.i.i.loopexit ]
  %blockStream.sroa.0.2.lcssa.i.i = phi i32 [ %shr7.i323.i.i, %if.end59.i.i.for.end.i.i_crit_edge ], [ %shr7.i460.i.i, %for.end.i.i.loopexit ]
  %stateLitLength.sroa.0.0.lcssa.i.i = phi i32 [ %stateLitLength.sroa.0.0656.i.i, %if.end59.i.i.for.end.i.i_crit_edge ], [ %stateLitLength.sroa.0.0.i.i.le, %for.end.i.i.loopexit ]
  %stateOffsetBits.sroa.0.0.lcssa.i.i = phi i32 [ %stateOffsetBits.sroa.0.0657.i.i, %if.end59.i.i.for.end.i.i_crit_edge ], [ %stateOffsetBits.sroa.0.0.i.i.le, %for.end.i.i.loopexit ]
  %stateMatchLength.sroa.0.0.lcssa.i.i = phi i32 [ %stateMatchLength.sroa.0.0658.i.i, %if.end59.i.i.for.end.i.i_crit_edge ], [ %stateMatchLength.sroa.0.0.i.i.le, %for.end.i.i.loopexit ]
  %blockStream.sroa.76.2.lcssa.i.i = phi i32 [ %blockStream.sroa.76.2659.i.i, %if.end59.i.i.for.end.i.i_crit_edge ], [ %blockStream.sroa.76.2.i.i, %for.end.i.i.loopexit ]
  %arrayidx.i.i461.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i.i.i.i
  %122 = ptrtoint ptr %arrayidx.i.i461.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i.i461.i.i, align 4
  %and.i.i462.i.i = and i32 %123, %stateMatchLength.sroa.0.0.lcssa.i.i
  %shl.i.i464.i.i = shl nuw nsw i32 %and.i.i462.i.i, %blockStream.sroa.76.2.lcssa.i.i
  %or.i.i465.i.i = or i32 %shl.i.i464.i.i, %blockStream.sroa.0.2.lcssa.i.i
  %add.i.i466.i.i = add nuw nsw i32 %blockStream.sroa.76.2.lcssa.i.i, %conv.i.i.i.i
  %shr.i.i.i.i = lshr i32 %add.i.i466.i.i, 3
  %124 = tail call i32 @llvm.bswap.i32(i32 %or.i.i465.i.i) #7
  %125 = ptrtoint ptr %blockStream.sroa.153.2.lcssa.i.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %blockStream.sroa.153.2.lcssa.i.i, align 1
  %add.ptr.i.i467.i.i = getelementptr i8, ptr %blockStream.sroa.153.2.lcssa.i.i, i32 %shr.i.i.i.i
  %cmp.i.i.i.i = icmp ugt ptr %add.ptr.i.i467.i.i, %add.ptr4.i.i.i
  %spec.store.select.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i.i467.i.i
  %and.i4.i.i.i = and i32 %add.i.i466.i.i, 7
  %mul.i.i.i.i = and i32 %add.i.i466.i.i, 131064
  %shr7.i.i.i.i = lshr i32 %or.i.i465.i.i, %mul.i.i.i.i
  %arrayidx.i.i469.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i.i213.i.i
  %126 = ptrtoint ptr %arrayidx.i.i469.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i469.i.i, align 4
  %and.i.i470.i.i = and i32 %127, %stateOffsetBits.sroa.0.0.lcssa.i.i
  %shl.i.i472.i.i = shl nuw nsw i32 %and.i.i470.i.i, %and.i4.i.i.i
  %or.i.i473.i.i = or i32 %shr7.i.i.i.i, %shl.i.i472.i.i
  %add.i.i474.i.i = add nuw nsw i32 %and.i4.i.i.i, %conv.i.i213.i.i
  %shr.i.i475.i.i = lshr i32 %add.i.i474.i.i, 3
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i.i473.i.i) #7
  %129 = ptrtoint ptr %spec.store.select.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %spec.store.select.i.i.i.i, align 1
  %add.ptr.i.i477.i.i = getelementptr i8, ptr %spec.store.select.i.i.i.i, i32 %shr.i.i475.i.i
  %cmp.i.i479.i.i = icmp ugt ptr %add.ptr.i.i477.i.i, %add.ptr4.i.i.i
  %spec.store.select.i.i480.i.i = select i1 %cmp.i.i479.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i.i477.i.i
  %and.i4.i481.i.i = and i32 %add.i.i474.i.i, 7
  %mul.i.i482.i.i = and i32 %add.i.i474.i.i, 131064
  %shr7.i.i483.i.i = lshr i32 %or.i.i473.i.i, %mul.i.i482.i.i
  %arrayidx.i.i485.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i.i236.i.i
  %130 = ptrtoint ptr %arrayidx.i.i485.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i485.i.i, align 4
  %and.i.i486.i.i = and i32 %131, %stateLitLength.sroa.0.0.lcssa.i.i
  %shl.i.i488.i.i = shl nuw nsw i32 %and.i.i486.i.i, %and.i4.i481.i.i
  %or.i.i489.i.i = or i32 %shr7.i.i483.i.i, %shl.i.i488.i.i
  %add.i.i490.i.i = add nuw nsw i32 %and.i4.i481.i.i, %conv.i.i236.i.i
  %shr.i.i491.i.i = lshr i32 %add.i.i490.i.i, 3
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i.i489.i.i) #7
  %133 = ptrtoint ptr %spec.store.select.i.i480.i.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %spec.store.select.i.i480.i.i, align 1
  %add.ptr.i.i493.i.i = getelementptr i8, ptr %spec.store.select.i.i480.i.i, i32 %shr.i.i491.i.i
  %cmp.i.i495.i.i = icmp ugt ptr %add.ptr.i.i493.i.i, %add.ptr4.i.i.i
  %spec.store.select.i.i496.i.i = select i1 %cmp.i.i495.i.i, ptr %add.ptr4.i.i.i, ptr %add.ptr.i.i493.i.i
  %and.i4.i497.i.i = and i32 %add.i.i490.i.i, 7
  %mul.i.i498.i.i = and i32 %add.i.i490.i.i, 131064
  %shr7.i.i499.i.i = lshr i32 %or.i.i489.i.i, %mul.i.i498.i.i
  %shl.i.i501.i.i = shl nuw nsw i32 1, %and.i4.i497.i.i
  %or.i.i502.i.i = or i32 %shr7.i.i499.i.i, %shl.i.i501.i.i
  %add.i.i503.i.i = add nuw nsw i32 %and.i4.i497.i.i, 1
  %shr.i.i504.i.i = lshr i32 %add.i.i503.i.i, 3
  %134 = tail call i32 @llvm.bswap.i32(i32 %or.i.i502.i.i) #7
  %135 = ptrtoint ptr %spec.store.select.i.i496.i.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %134, ptr %spec.store.select.i.i496.i.i, align 1
  %add.ptr.i.i506.i.i = getelementptr i8, ptr %spec.store.select.i.i496.i.i, i32 %shr.i.i504.i.i
  %cmp.not.i.i.i = icmp ugt ptr %add.ptr4.i.i.i, %add.ptr.i.i506.i.i
  br i1 %cmp.not.i.i.i, label %BIT_closeCStream.exit.i.i, label %for.end.i.i.BIT_closeCStream.exit.thread.i.i_crit_edge

for.end.i.i.BIT_closeCStream.exit.thread.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_closeCStream.exit.thread.i.i

BIT_closeCStream.exit.i.i:                        ; preds = %for.end.i.i
  %and.i.i510.i.i = and i32 %add.i.i503.i.i, 7
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i506.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %dst to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i510.i.i)
  %cmp2.i.i.i = icmp ne i32 %and.i.i510.i.i, 0
  %conv.i513.i.i = zext i1 %cmp2.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %conv.i513.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i514.i.i = add i32 %sub.ptr.sub.i.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i514.i.i)
  %cmp140.i.i = icmp eq i32 %add.i514.i.i, 0
  br i1 %cmp140.i.i, label %BIT_closeCStream.exit.i.i.BIT_closeCStream.exit.thread.i.i_crit_edge, label %BIT_closeCStream.exit.i.i.ZSTD_encodeSequences_default.exit_crit_edge

BIT_closeCStream.exit.i.i.ZSTD_encodeSequences_default.exit_crit_edge: ; preds = %BIT_closeCStream.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ZSTD_encodeSequences_default.exit

BIT_closeCStream.exit.i.i.BIT_closeCStream.exit.thread.i.i_crit_edge: ; preds = %BIT_closeCStream.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_closeCStream.exit.thread.i.i

BIT_closeCStream.exit.thread.i.i:                 ; preds = %BIT_closeCStream.exit.i.i.BIT_closeCStream.exit.thread.i.i_crit_edge, %for.end.i.i.BIT_closeCStream.exit.thread.i.i_crit_edge
  br label %ZSTD_encodeSequences_default.exit

ZSTD_encodeSequences_default.exit:                ; preds = %BIT_closeCStream.exit.thread.i.i, %BIT_closeCStream.exit.i.i.ZSTD_encodeSequences_default.exit_crit_edge, %entry.ZSTD_encodeSequences_default.exit_crit_edge
  %retval.1.i.i = phi i32 [ -70, %entry.ZSTD_encodeSequences_default.exit_crit_edge ], [ -70, %BIT_closeCStream.exit.thread.i.i ], [ %add.i514.i.i, %BIT_closeCStream.exit.i.i.ZSTD_encodeSequences_default.exit_crit_edge ]
  ret i32 %retval.1.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @kInverseProbabilityLog256, !1, !"kInverseProbabilityLog256", i1 false, i1 false}
!1 = !{!"../lib/zstd/compress/zstd_compress_sequences.c", i32 21, i32 23}
!2 = !{ptr @BIT_mask, !3, !"BIT_mask", i1 false, i1 false}
!3 = !{!"../lib/zstd/compress/../common/bitstream.h", i32 153, i32 23}
!4 = !{ptr @LL_bits, !5, !"LL_bits", i1 false, i1 false}
!5 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 185, i32 30}
!6 = !{ptr @ML_bits, !7, !"ML_bits", i1 false, i1 false}
!7 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 202, i32 30}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
