; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/zstd_opt.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_opt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_optLdm_t = type { %struct.rawSeqStore_t, i32, i32, i32 }
%struct.rawSeqStore_t = type { ptr, i32, i32, i32, i32 }
%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.FSE_symbolCompressionTransform = type { i32, i32 }
%struct.ZSTD_optimal_t = type { i32, i32, i32, i32, [3 x i32] }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ZSTD_match_t = type { i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }
%struct.rawSeq = type { i32, i32, i32 }

@LL_bits = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [48 x i8] zeroinitializer }, align 32
@ZSTD_LLcode.LL_Code = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", [32 x i8] zeroinitializer }, align 32
@ML_bits = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [44 x i8] zeroinitializer }, align 32
@ZSTD_MLcode.ML_Code = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", [32 x i8] zeroinitializer }, align 32
@switch.table.ZSTD_compressBlock_opt_generic = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 4, i32 5, i32 6, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.ZSTD_compressBlock_opt_generic.1 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 4, i32 5, i32 6, i32 6], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_ = private constant [32 x i8] c"../lib/zstd/compress/zstd_opt.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"LL_bits\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 185, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"LL_Code\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 366, i32 23 }
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"ML_bits\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [47 x i8] c"../lib/zstd/compress/../common/zstd_internal.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 202, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"ML_Code\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [46 x i8] c"../lib/zstd/compress/zstd_compress_internal.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 383, i32 23 }
@___asan_gen_.18 = private unnamed_addr constant [44 x i8] c"switch.table.ZSTD_compressBlock_opt_generic\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [46 x i8] c"switch.table.ZSTD_compressBlock_opt_generic.1\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @LL_bits, ptr @ZSTD_LLcode.LL_Code, ptr @ML_bits, ptr @ZSTD_MLcode.ML_Code, ptr @switch.table.ZSTD_compressBlock_opt_generic, ptr @switch.table.ZSTD_compressBlock_opt_generic.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_bits to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_LLcode.LL_Code to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_bits to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_MLcode.ML_Code to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ZSTD_compressBlock_opt_generic to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ZSTD_compressBlock_opt_generic.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ZSTD_updateTree(ptr nocapture noundef %ms, ptr noundef %ip, ptr noundef %iend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %minMatch = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %minMatch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minMatch, align 4
  tail call fastcc void @ZSTD_updateTree_internal(ptr noundef %ms, ptr noundef %ip, ptr noundef %iend, i32 noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ZSTD_updateTree_internal(ptr nocapture noundef %ms, ptr noundef %ip, ptr noundef readnone %iend, i32 noundef %mls, i32 noundef %dictMode) unnamed_addr #0 align 64 {
entry:
  %dummy32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ip to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %nextToUpdate = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 2
  %2 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextToUpdate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.ptr.sub)
  %cmp17 = icmp ult i32 %3, %sub.ptr.sub
  br i1 %cmp17, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictMode)
  %cmp2 = icmp eq i32 %dictMode, 1
  %hashTable2.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 4
  %hashLog3.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 2
  %chainTable.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 6
  %chainLog.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 1
  %dictBase7.i = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 2
  %dictLimit9.i = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 3
  %lowLimit.i = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 4
  %searchLog.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %iend, i32 -3
  %add.ptr33.i.i = getelementptr i8, ptr %iend, i32 -1
  br label %while.body

while.body:                                       ; preds = %ZSTD_insertBt1.exit.while.body_crit_edge, %while.body.lr.ph
  %idx.018 = phi i32 [ %3, %while.body.lr.ph ], [ %add, %ZSTD_insertBt1.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.018
  %4 = ptrtoint ptr %hashTable2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hashTable2.i, align 4
  %6 = ptrtoint ptr %hashLog3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hashLog3.i, align 4
  %8 = zext i32 %mls to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mls, label %sw.bb.i.i [
    i32 8, label %sw.bb7.i.i
    i32 5, label %sw.bb1.i.i
    i32 6, label %sw.bb3.i.i
    i32 7, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr, align 1
  %mul.i.i.i.i = mul i32 %10, -1640531535
  %sub.i.i.i.i = sub i32 32, %7
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i.i
  br label %ZSTD_hashPtr.exit.i

sw.bb1.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #8
  %mul.i.i17.i.i = mul i64 %13, -3523014627271114752
  %sub.i.i18.i.i = sub i32 64, %7
  %sh_prom.i.i.i.i = zext i32 %sub.i.i18.i.i to i64
  %shr.i.i19.i.i = lshr i64 %mul.i.i17.i.i, %sh_prom.i.i.i.i
  %conv.i.i.i.i = trunc i64 %shr.i.i19.i.i to i32
  br label %ZSTD_hashPtr.exit.i

sw.bb3.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %add.ptr, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #8
  %mul.i.i20.i.i = mul i64 %16, -3523014627193847808
  %sub.i.i21.i.i = sub i32 64, %7
  %sh_prom.i.i22.i.i = zext i32 %sub.i.i21.i.i to i64
  %shr.i.i23.i.i = lshr i64 %mul.i.i20.i.i, %sh_prom.i.i22.i.i
  %conv.i.i24.i.i = trunc i64 %shr.i.i23.i.i to i32
  br label %ZSTD_hashPtr.exit.i

sw.bb5.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %add.ptr, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #8
  %mul.i.i25.i.i = mul i64 %19, -3523014627193167104
  %sub.i.i26.i.i = sub i32 64, %7
  %sh_prom.i.i27.i.i = zext i32 %sub.i.i26.i.i to i64
  %shr.i.i28.i.i = lshr i64 %mul.i.i25.i.i, %sh_prom.i.i27.i.i
  %conv.i.i29.i.i = trunc i64 %shr.i.i28.i.i to i32
  br label %ZSTD_hashPtr.exit.i

sw.bb7.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %add.ptr, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #8
  %mul.i.i30.i.i = mul i64 %22, -3523014627327384477
  %sub.i.i31.i.i = sub i32 64, %7
  %sh_prom.i.i32.i.i = zext i32 %sub.i.i31.i.i to i64
  %shr.i.i33.i.i = lshr i64 %mul.i.i30.i.i, %sh_prom.i.i32.i.i
  %conv.i.i34.i.i = trunc i64 %shr.i.i33.i.i to i32
  br label %ZSTD_hashPtr.exit.i

ZSTD_hashPtr.exit.i:                              ; preds = %sw.bb7.i.i, %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %shr.i.i.i.i, %sw.bb.i.i ], [ %conv.i.i29.i.i, %sw.bb5.i.i ], [ %conv.i.i24.i.i, %sw.bb3.i.i ], [ %conv.i.i.i.i, %sw.bb1.i.i ], [ %conv.i.i34.i.i, %sw.bb7.i.i ]
  %23 = ptrtoint ptr %chainTable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chainTable.i, align 4
  %25 = ptrtoint ptr %chainLog.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chainLog.i, align 4
  %sub.i = add i32 %26, -1
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub4.i = xor i32 %notmask.i, -1
  %arrayidx.i = getelementptr i32, ptr %5, i32 %retval.0.i.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base1, align 4
  %31 = ptrtoint ptr %dictBase7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dictBase7.i, align 4
  %33 = ptrtoint ptr %dictLimit9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dictLimit9.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %34
  %add.ptr10.i = getelementptr i8, ptr %30, i32 %34
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub.i, i32 %sub4.i) #8
  %and.i = and i32 %sub.ptr.sub.i, %sub4.i
  %mul.i = shl i32 %and.i, 1
  %add.ptr12.i = getelementptr i32, ptr %24, i32 %mul.i
  %add.ptr13.i = getelementptr i32, ptr %add.ptr12.i, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy32.i)
  %36 = ptrtoint ptr %dummy32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dummy32.i, align 4
  %37 = ptrtoint ptr %lowLimit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lowLimit.i, align 4
  %add15.i = add i32 %sub.ptr.sub.i, 9
  %39 = ptrtoint ptr %searchLog.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %searchLog.i, align 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.ptr.sub.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %38)
  %cmp18.not229.i = icmp ult i32 %28, %38
  br i1 %cmp18.not229.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %ZSTD_hashPtr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %add.ptr13.i, align 4
  %43 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %add.ptr12.i, align 4
  br label %ZSTD_insertBt1.exit

for.body.lr.ph.i:                                 ; preds = %ZSTD_hashPtr.exit.i
  %shl16.i = shl nuw i32 1, %40
  %sub.ptr.lhs.cast.i209.i = ptrtoint ptr %add.ptr.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nbCompares.0237.i = phi i32 [ %shl16.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %bestLength.0236.i = phi i32 [ 8, %for.body.lr.ph.i ], [ %107, %for.inc.i.for.body.i_crit_edge ]
  %matchEndIdx.0235.i = phi i32 [ %add15.i, %for.body.lr.ph.i ], [ %matchEndIdx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %largerPtr.0234.i = phi ptr [ %add.ptr13.i, %for.body.lr.ph.i ], [ %largerPtr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %smallerPtr.0233.i = phi ptr [ %add.ptr12.i, %for.body.lr.ph.i ], [ %smallerPtr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %commonLengthLarger.0232.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %commonLengthLarger.1.i, %for.inc.i.for.body.i_crit_edge ]
  %commonLengthSmaller.0231.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %commonLengthSmaller.1.i, %for.inc.i.for.body.i_crit_edge ]
  %matchIndex.0230.i = phi i32 [ %28, %for.body.lr.ph.i ], [ %matchIndex.1.i, %for.inc.i.for.body.i_crit_edge ]
  %and19.i = and i32 %matchIndex.0230.i, %sub4.i
  %mul20.i = shl i32 %and19.i, 1
  %add.ptr21.i = getelementptr i32, ptr %24, i32 %mul20.i
  %44 = tail call i32 @llvm.umin.i32(i32 %commonLengthSmaller.0231.i, i32 %commonLengthLarger.0232.i) #8
  %add28.i = add i32 %44, %matchIndex.0230.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i, i32 %34)
  %cmp29.not.i = icmp ult i32 %add28.i, %34
  %or.cond205.i = select i1 %cmp2, i1 %cmp29.not.i, i1 false
  br i1 %or.cond205.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %add.ptr30.i = getelementptr i8, ptr %30, i32 %matchIndex.0230.i
  %add.ptr31.i = getelementptr i8, ptr %add.ptr, i32 %44
  %add.ptr32.i = getelementptr i8, ptr %add.ptr30.i, i32 %44
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr31.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.if.end20.i.i_crit_edge

if.then.i.if.end20.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %45 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr32.i, align 1
  %47 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %add.ptr31.i, align 1
  %xor.i.i = xor i32 %48, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.while.cond.i.i_crit_edge, label %cleanup.i.i

if.then.i.i.while.cond.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.cond.i.i

cleanup.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i, i1 true) #8, !range !23
  %50 = lshr i32 %49, 3
  br label %ZSTD_count.exit.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.i.i.while.cond.i.i_crit_edge
  %pIn.pn.i.i = phi ptr [ %pIn.addr.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %add.ptr31.i, %if.then.i.i.while.cond.i.i_crit_edge ]
  %pMatch.pn.i.i = phi ptr [ %pMatch.addr.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %add.ptr32.i, %if.then.i.i.while.cond.i.i_crit_edge ]
  %pMatch.addr.0.i.i = getelementptr i8, ptr %pMatch.pn.i.i, i32 4
  %pIn.addr.0.i.i = getelementptr i8, ptr %pIn.pn.i.i, i32 4
  %cmp6.i.i = icmp ult ptr %pIn.addr.0.i.i, %add.ptr.i.i
  br i1 %cmp6.i.i, label %while.body.i.i, label %while.cond.i.i.if.end20.i.i_crit_edge

while.cond.i.i.if.end20.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %51 = ptrtoint ptr %pMatch.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %pMatch.addr.0.i.i, align 1
  %53 = ptrtoint ptr %pIn.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %pIn.addr.0.i.i, align 1
  %xor10.i.i = xor i32 %54, %52
  %tobool11.not.i.i = icmp eq i32 %xor10.i.i, 0
  br i1 %tobool11.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %cleanup18.thread.i.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

cleanup18.thread.i.i:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i, i1 true) #8, !range !23
  %56 = lshr i32 %55, 3
  %add.ptr17.i.i = getelementptr i8, ptr %pIn.addr.0.i.i, i32 %56
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr17.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr31.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %ZSTD_count.exit.i

if.end20.i.i:                                     ; preds = %while.cond.i.i.if.end20.i.i_crit_edge, %if.then.i.if.end20.i.i_crit_edge
  %pIn.addr.2.i.i = phi ptr [ %add.ptr31.i, %if.then.i.if.end20.i.i_crit_edge ], [ %pIn.addr.0.i.i, %while.cond.i.i.if.end20.i.i_crit_edge ]
  %pMatch.addr.2.i.i = phi ptr [ %add.ptr32.i, %if.then.i.if.end20.i.i_crit_edge ], [ %pMatch.addr.0.i.i, %while.cond.i.i.if.end20.i.i_crit_edge ]
  %cmp34.i.i = icmp ult ptr %pIn.addr.2.i.i, %add.ptr33.i.i
  br i1 %cmp34.i.i, label %land.lhs.true35.i.i, label %if.end20.i.i.if.end44.i.i_crit_edge

if.end20.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

land.lhs.true35.i.i:                              ; preds = %if.end20.i.i
  %57 = ptrtoint ptr %pMatch.addr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %pMatch.addr.2.i.i, align 1
  %59 = ptrtoint ptr %pIn.addr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %pIn.addr.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp39.i.i = icmp eq i16 %58, %60
  br i1 %cmp39.i.i, label %if.then41.i.i, label %land.lhs.true35.i.i.if.end44.i.i_crit_edge

land.lhs.true35.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

if.then41.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i = getelementptr i8, ptr %pIn.addr.2.i.i, i32 2
  %add.ptr43.i.i = getelementptr i8, ptr %pMatch.addr.2.i.i, i32 2
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then41.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge, %if.end20.i.i.if.end44.i.i_crit_edge
  %pIn.addr.4.i.i = phi ptr [ %add.ptr42.i.i, %if.then41.i.i ], [ %pIn.addr.2.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge ], [ %pIn.addr.2.i.i, %if.end20.i.i.if.end44.i.i_crit_edge ]
  %pMatch.addr.4.i.i = phi ptr [ %add.ptr43.i.i, %if.then41.i.i ], [ %pMatch.addr.2.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge ], [ %pMatch.addr.2.i.i, %if.end20.i.i.if.end44.i.i_crit_edge ]
  %cmp45.i.i = icmp ult ptr %pIn.addr.4.i.i, %iend
  br i1 %cmp45.i.i, label %land.lhs.true47.i.i, label %if.end44.i.i.if.end53.i.i_crit_edge

if.end44.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i

land.lhs.true47.i.i:                              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %pMatch.addr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pMatch.addr.4.i.i, align 1
  %63 = ptrtoint ptr %pIn.addr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pIn.addr.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp50.i.i = icmp eq i8 %62, %64
  %spec.select.idx.i.i = zext i1 %cmp50.i.i to i32
  %spec.select.i.i = getelementptr i8, ptr %pIn.addr.4.i.i, i32 %spec.select.idx.i.i
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %land.lhs.true47.i.i, %if.end44.i.i.if.end53.i.i_crit_edge
  %pIn.addr.5.i.i = phi ptr [ %pIn.addr.4.i.i, %if.end44.i.i.if.end53.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true47.i.i ]
  %sub.ptr.lhs.cast54.i.i = ptrtoint ptr %pIn.addr.5.i.i to i32
  %sub.ptr.rhs.cast55.i.i = ptrtoint ptr %add.ptr31.i to i32
  %sub.ptr.sub56.i.i = sub i32 %sub.ptr.lhs.cast54.i.i, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %if.end53.i.i, %cleanup18.thread.i.i, %cleanup.i.i
  %retval.3.i.i = phi i32 [ %sub.ptr.sub56.i.i, %if.end53.i.i ], [ %50, %cleanup.i.i ], [ %sub.ptr.sub.i.i, %cleanup18.thread.i.i ]
  %add34.i = add i32 %retval.3.i.i, %44
  %.pre.i = add i32 %add34.i, %matchIndex.0230.i
  br label %if.end44.i

if.else.i:                                        ; preds = %for.body.i
  %add.ptr35.i = getelementptr i8, ptr %32, i32 %matchIndex.0230.i
  %add.ptr36.i = getelementptr i8, ptr %add.ptr, i32 %44
  %add.ptr37.i = getelementptr i8, ptr %add.ptr35.i, i32 %44
  %sub.ptr.rhs.cast.i210.i = ptrtoint ptr %add.ptr37.i to i32
  %sub.ptr.sub.i211.i = sub i32 %sub.ptr.lhs.cast.i209.i, %sub.ptr.rhs.cast.i210.i
  %add.ptr.i212.i = getelementptr i8, ptr %add.ptr36.i, i32 %sub.ptr.sub.i211.i
  %cmp.i213.i = icmp ult ptr %add.ptr.i212.i, %iend
  %add.ptr.iEnd.i.i = select i1 %cmp.i213.i, ptr %add.ptr.i212.i, ptr %iend
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.iEnd.i.i, i32 -3
  %cmp.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr36.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.if.end20.i.i.i_crit_edge

if.else.i.if.end20.i.i.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  %65 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %add.ptr37.i, align 1
  %67 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %add.ptr36.i, align 1
  %xor.i.i.i = xor i32 %68, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %xor.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.while.cond.i.i.i_crit_edge, label %cleanup.i.i.i

if.then.i.i.i.while.cond.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %while.cond.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i.i, i1 true) #8, !range !23
  %70 = lshr i32 %69, 3
  br label %ZSTD_count.exit.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.then.i.i.i.while.cond.i.i.i_crit_edge
  %pIn.pn.i.i.i = phi ptr [ %pIn.addr.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %add.ptr36.i, %if.then.i.i.i.while.cond.i.i.i_crit_edge ]
  %pMatch.pn.i.i.i = phi ptr [ %pMatch.addr.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %add.ptr37.i, %if.then.i.i.i.while.cond.i.i.i_crit_edge ]
  %pMatch.addr.0.i.i.i = getelementptr i8, ptr %pMatch.pn.i.i.i, i32 4
  %pIn.addr.0.i.i.i = getelementptr i8, ptr %pIn.pn.i.i.i, i32 4
  %cmp6.i.i.i = icmp ult ptr %pIn.addr.0.i.i.i, %add.ptr.i.i.i
  br i1 %cmp6.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.if.end20.i.i.i_crit_edge

while.cond.i.i.i.if.end20.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %71 = ptrtoint ptr %pMatch.addr.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %pMatch.addr.0.i.i.i, align 1
  %73 = ptrtoint ptr %pIn.addr.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %pIn.addr.0.i.i.i, align 1
  %xor10.i.i.i = xor i32 %74, %72
  %tobool11.not.i.i.i = icmp eq i32 %xor10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %cleanup18.thread.i.i.i

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

cleanup18.thread.i.i.i:                           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i.i, i1 true) #8, !range !23
  %76 = lshr i32 %75, 3
  %add.ptr17.i.i.i = getelementptr i8, ptr %pIn.addr.0.i.i.i, i32 %76
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr17.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr36.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %ZSTD_count.exit.i.i

if.end20.i.i.i:                                   ; preds = %while.cond.i.i.i.if.end20.i.i.i_crit_edge, %if.else.i.if.end20.i.i.i_crit_edge
  %pIn.addr.2.i.i.i = phi ptr [ %add.ptr36.i, %if.else.i.if.end20.i.i.i_crit_edge ], [ %pIn.addr.0.i.i.i, %while.cond.i.i.i.if.end20.i.i.i_crit_edge ]
  %pMatch.addr.2.i.i.i = phi ptr [ %add.ptr37.i, %if.else.i.if.end20.i.i.i_crit_edge ], [ %pMatch.addr.0.i.i.i, %while.cond.i.i.i.if.end20.i.i.i_crit_edge ]
  %add.ptr33.i.i.i = getelementptr i8, ptr %add.ptr.iEnd.i.i, i32 -1
  %cmp34.i.i.i = icmp ult ptr %pIn.addr.2.i.i.i, %add.ptr33.i.i.i
  br i1 %cmp34.i.i.i, label %land.lhs.true35.i.i.i, label %if.end20.i.i.i.if.end44.i.i.i_crit_edge

if.end20.i.i.i.if.end44.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i.i

land.lhs.true35.i.i.i:                            ; preds = %if.end20.i.i.i
  %77 = ptrtoint ptr %pMatch.addr.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %pMatch.addr.2.i.i.i, align 1
  %79 = ptrtoint ptr %pIn.addr.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %pIn.addr.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp39.i.i.i = icmp eq i16 %78, %80
  br i1 %cmp39.i.i.i, label %if.then41.i.i.i, label %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge

land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge:   ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i.i

if.then41.i.i.i:                                  ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i.i = getelementptr i8, ptr %pIn.addr.2.i.i.i, i32 2
  %add.ptr43.i.i.i = getelementptr i8, ptr %pMatch.addr.2.i.i.i, i32 2
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then41.i.i.i, %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge, %if.end20.i.i.i.if.end44.i.i.i_crit_edge
  %pIn.addr.4.i.i.i = phi ptr [ %add.ptr42.i.i.i, %if.then41.i.i.i ], [ %pIn.addr.2.i.i.i, %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge ], [ %pIn.addr.2.i.i.i, %if.end20.i.i.i.if.end44.i.i.i_crit_edge ]
  %pMatch.addr.4.i.i.i = phi ptr [ %add.ptr43.i.i.i, %if.then41.i.i.i ], [ %pMatch.addr.2.i.i.i, %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge ], [ %pMatch.addr.2.i.i.i, %if.end20.i.i.i.if.end44.i.i.i_crit_edge ]
  %cmp45.i.i.i = icmp ult ptr %pIn.addr.4.i.i.i, %add.ptr.iEnd.i.i
  br i1 %cmp45.i.i.i, label %land.lhs.true47.i.i.i, label %if.end44.i.i.i.if.end53.i.i.i_crit_edge

if.end44.i.i.i.if.end53.i.i.i_crit_edge:          ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i.i

land.lhs.true47.i.i.i:                            ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %pMatch.addr.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pMatch.addr.4.i.i.i, align 1
  %83 = ptrtoint ptr %pIn.addr.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pIn.addr.4.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp50.i.i.i = icmp eq i8 %82, %84
  %spec.select.idx.i.i.i = zext i1 %cmp50.i.i.i to i32
  %spec.select.i.i.i = getelementptr i8, ptr %pIn.addr.4.i.i.i, i32 %spec.select.idx.i.i.i
  br label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %land.lhs.true47.i.i.i, %if.end44.i.i.i.if.end53.i.i.i_crit_edge
  %pIn.addr.5.i.i.i = phi ptr [ %pIn.addr.4.i.i.i, %if.end44.i.i.i.if.end53.i.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true47.i.i.i ]
  %sub.ptr.lhs.cast54.i.i.i = ptrtoint ptr %pIn.addr.5.i.i.i to i32
  %sub.ptr.rhs.cast55.i.i.i = ptrtoint ptr %add.ptr36.i to i32
  %sub.ptr.sub56.i.i.i = sub i32 %sub.ptr.lhs.cast54.i.i.i, %sub.ptr.rhs.cast55.i.i.i
  br label %ZSTD_count.exit.i.i

ZSTD_count.exit.i.i:                              ; preds = %if.end53.i.i.i, %cleanup18.thread.i.i.i, %cleanup.i.i.i
  %retval.3.i.i.i = phi i32 [ %sub.ptr.sub56.i.i.i, %if.end53.i.i.i ], [ %70, %cleanup.i.i.i ], [ %sub.ptr.sub.i.i.i, %cleanup18.thread.i.i.i ]
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr37.i, i32 %retval.3.i.i.i
  %cmp6.not.i.i = icmp eq ptr %add.ptr5.i.i, %add.ptr.i
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge

ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge: ; preds = %ZSTD_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_count_2segments.exit.i

if.end.i.i:                                       ; preds = %ZSTD_count.exit.i.i
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr36.i, i32 %retval.3.i.i.i
  %cmp.i24.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr7.i.i
  br i1 %cmp.i24.i.i, label %if.then.i27.i.i, label %if.end.i.i.if.end20.i47.i.i_crit_edge

if.end.i.i.if.end20.i47.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i.i

if.then.i27.i.i:                                  ; preds = %if.end.i.i
  %85 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %add.ptr10.i, align 1
  %87 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %add.ptr7.i.i, align 1
  %xor.i25.i.i = xor i32 %88, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i.i)
  %tobool.not.i26.i.i = icmp eq i32 %xor.i25.i.i, 0
  br i1 %tobool.not.i26.i.i, label %if.then.i27.i.i.while.cond.i34.i.i_crit_edge, label %cleanup.i28.i.i

if.then.i27.i.i.while.cond.i34.i.i_crit_edge:     ; preds = %if.then.i27.i.i
  br label %while.cond.i34.i.i

cleanup.i28.i.i:                                  ; preds = %if.then.i27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i.i, i1 true) #8, !range !23
  %90 = lshr i32 %89, 3
  br label %ZSTD_count.exit67.i.i

while.cond.i34.i.i:                               ; preds = %while.body.i37.i.i.while.cond.i34.i.i_crit_edge, %if.then.i27.i.i.while.cond.i34.i.i_crit_edge
  %pIn.pn.i29.i.i = phi ptr [ %pIn.addr.0.i32.i.i, %while.body.i37.i.i.while.cond.i34.i.i_crit_edge ], [ %add.ptr7.i.i, %if.then.i27.i.i.while.cond.i34.i.i_crit_edge ]
  %pMatch.pn.i30.i.i = phi ptr [ %pMatch.addr.0.i31.i.i, %while.body.i37.i.i.while.cond.i34.i.i_crit_edge ], [ %add.ptr10.i, %if.then.i27.i.i.while.cond.i34.i.i_crit_edge ]
  %pMatch.addr.0.i31.i.i = getelementptr i8, ptr %pMatch.pn.i30.i.i, i32 4
  %pIn.addr.0.i32.i.i = getelementptr i8, ptr %pIn.pn.i29.i.i, i32 4
  %cmp6.i33.i.i = icmp ult ptr %pIn.addr.0.i32.i.i, %add.ptr.i.i
  br i1 %cmp6.i33.i.i, label %while.body.i37.i.i, label %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge

while.cond.i34.i.i.if.end20.i47.i.i_crit_edge:    ; preds = %while.cond.i34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i.i

while.body.i37.i.i:                               ; preds = %while.cond.i34.i.i
  %91 = ptrtoint ptr %pMatch.addr.0.i31.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %pMatch.addr.0.i31.i.i, align 1
  %93 = ptrtoint ptr %pIn.addr.0.i32.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %pIn.addr.0.i32.i.i, align 1
  %xor10.i35.i.i = xor i32 %94, %92
  %tobool11.not.i36.i.i = icmp eq i32 %xor10.i35.i.i, 0
  br i1 %tobool11.not.i36.i.i, label %while.body.i37.i.i.while.cond.i34.i.i_crit_edge, label %cleanup18.thread.i42.i.i

while.body.i37.i.i.while.cond.i34.i.i_crit_edge:  ; preds = %while.body.i37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i34.i.i

cleanup18.thread.i42.i.i:                         ; preds = %while.body.i37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i.i, i1 true) #8, !range !23
  %96 = lshr i32 %95, 3
  %add.ptr17.i38.i.i = getelementptr i8, ptr %pIn.addr.0.i32.i.i, i32 %96
  %sub.ptr.lhs.cast.i39.i.i = ptrtoint ptr %add.ptr17.i38.i.i to i32
  %sub.ptr.rhs.cast.i40.i.i = ptrtoint ptr %add.ptr7.i.i to i32
  %sub.ptr.sub.i41.i.i = sub i32 %sub.ptr.lhs.cast.i39.i.i, %sub.ptr.rhs.cast.i40.i.i
  br label %ZSTD_count.exit67.i.i

if.end20.i47.i.i:                                 ; preds = %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge, %if.end.i.i.if.end20.i47.i.i_crit_edge
  %pIn.addr.2.i43.i.i = phi ptr [ %add.ptr7.i.i, %if.end.i.i.if.end20.i47.i.i_crit_edge ], [ %pIn.addr.0.i32.i.i, %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge ]
  %pMatch.addr.2.i44.i.i = phi ptr [ %add.ptr10.i, %if.end.i.i.if.end20.i47.i.i_crit_edge ], [ %pMatch.addr.0.i31.i.i, %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge ]
  %cmp34.i46.i.i = icmp ult ptr %pIn.addr.2.i43.i.i, %add.ptr33.i.i
  br i1 %cmp34.i46.i.i, label %land.lhs.true35.i49.i.i, label %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge

if.end20.i47.i.i.if.end44.i56.i.i_crit_edge:      ; preds = %if.end20.i47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i.i

land.lhs.true35.i49.i.i:                          ; preds = %if.end20.i47.i.i
  %97 = ptrtoint ptr %pMatch.addr.2.i44.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %pMatch.addr.2.i44.i.i, align 1
  %99 = ptrtoint ptr %pIn.addr.2.i43.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %pIn.addr.2.i43.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp39.i48.i.i = icmp eq i16 %98, %100
  br i1 %cmp39.i48.i.i, label %if.then41.i52.i.i, label %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge

land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge: ; preds = %land.lhs.true35.i49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i.i

if.then41.i52.i.i:                                ; preds = %land.lhs.true35.i49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i50.i.i = getelementptr i8, ptr %pIn.addr.2.i43.i.i, i32 2
  %add.ptr43.i51.i.i = getelementptr i8, ptr %pMatch.addr.2.i44.i.i, i32 2
  br label %if.end44.i56.i.i

if.end44.i56.i.i:                                 ; preds = %if.then41.i52.i.i, %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge, %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge
  %pIn.addr.4.i53.i.i = phi ptr [ %add.ptr42.i50.i.i, %if.then41.i52.i.i ], [ %pIn.addr.2.i43.i.i, %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge ], [ %pIn.addr.2.i43.i.i, %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge ]
  %pMatch.addr.4.i54.i.i = phi ptr [ %add.ptr43.i51.i.i, %if.then41.i52.i.i ], [ %pMatch.addr.2.i44.i.i, %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge ], [ %pMatch.addr.2.i44.i.i, %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge ]
  %cmp45.i55.i.i = icmp ult ptr %pIn.addr.4.i53.i.i, %iend
  br i1 %cmp45.i55.i.i, label %land.lhs.true47.i60.i.i, label %if.end44.i56.i.i.if.end53.i65.i.i_crit_edge

if.end44.i56.i.i.if.end53.i65.i.i_crit_edge:      ; preds = %if.end44.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i65.i.i

land.lhs.true47.i60.i.i:                          ; preds = %if.end44.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %pMatch.addr.4.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %pMatch.addr.4.i54.i.i, align 1
  %103 = ptrtoint ptr %pIn.addr.4.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pIn.addr.4.i53.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp50.i57.i.i = icmp eq i8 %102, %104
  %spec.select.idx.i58.i.i = zext i1 %cmp50.i57.i.i to i32
  %spec.select.i59.i.i = getelementptr i8, ptr %pIn.addr.4.i53.i.i, i32 %spec.select.idx.i58.i.i
  br label %if.end53.i65.i.i

if.end53.i65.i.i:                                 ; preds = %land.lhs.true47.i60.i.i, %if.end44.i56.i.i.if.end53.i65.i.i_crit_edge
  %pIn.addr.5.i61.i.i = phi ptr [ %pIn.addr.4.i53.i.i, %if.end44.i56.i.i.if.end53.i65.i.i_crit_edge ], [ %spec.select.i59.i.i, %land.lhs.true47.i60.i.i ]
  %sub.ptr.lhs.cast54.i62.i.i = ptrtoint ptr %pIn.addr.5.i61.i.i to i32
  %sub.ptr.rhs.cast55.i63.i.i = ptrtoint ptr %add.ptr7.i.i to i32
  %sub.ptr.sub56.i64.i.i = sub i32 %sub.ptr.lhs.cast54.i62.i.i, %sub.ptr.rhs.cast55.i63.i.i
  br label %ZSTD_count.exit67.i.i

ZSTD_count.exit67.i.i:                            ; preds = %if.end53.i65.i.i, %cleanup18.thread.i42.i.i, %cleanup.i28.i.i
  %retval.3.i66.i.i = phi i32 [ %sub.ptr.sub56.i64.i.i, %if.end53.i65.i.i ], [ %90, %cleanup.i28.i.i ], [ %sub.ptr.sub.i41.i.i, %cleanup18.thread.i42.i.i ]
  %add.i.i = add i32 %retval.3.i66.i.i, %retval.3.i.i.i
  br label %ZSTD_count_2segments.exit.i

ZSTD_count_2segments.exit.i:                      ; preds = %ZSTD_count.exit67.i.i, %ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge
  %retval.0.i214.i = phi i32 [ %add.i.i, %ZSTD_count.exit67.i.i ], [ %retval.3.i.i.i, %ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge ]
  %add39.i = add i32 %retval.0.i214.i, %44
  %add40.i = add i32 %add39.i, %matchIndex.0230.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.i, i32 %34)
  %cmp41.not.i = icmp ult i32 %add40.i, %34
  %spec.select206.i = select i1 %cmp41.not.i, ptr %32, ptr %30
  br label %if.end44.i

if.end44.i:                                       ; preds = %ZSTD_count_2segments.exit.i, %ZSTD_count.exit.i
  %add50.pre-phi.i = phi i32 [ %add40.i, %ZSTD_count_2segments.exit.i ], [ %.pre.i, %ZSTD_count.exit.i ]
  %105 = phi ptr [ %spec.select206.i, %ZSTD_count_2segments.exit.i ], [ %30, %ZSTD_count.exit.i ]
  %matchLength.0.i = phi i32 [ %add39.i, %ZSTD_count_2segments.exit.i ], [ %add34.i, %ZSTD_count.exit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %matchLength.0.i, i32 %bestLength.0236.i)
  %cmp45.i = icmp ugt i32 %matchLength.0.i, %bestLength.0236.i
  %sub47.i = sub i32 %matchEndIdx.0235.i, %matchIndex.0230.i
  call void @__sanitizer_cov_trace_cmp4(i32 %matchLength.0.i, i32 %sub47.i)
  %cmp48.i = icmp ugt i32 %matchLength.0.i, %sub47.i
  %106 = select i1 %cmp45.i, i1 %cmp48.i, i1 false
  %matchEndIdx.1.i = select i1 %106, i32 %add50.pre-phi.i, i32 %matchEndIdx.0235.i
  %107 = tail call i32 @llvm.umax.i32(i32 %matchLength.0.i, i32 %bestLength.0236.i) #8
  %add.ptr53.i = getelementptr i8, ptr %add.ptr, i32 %matchLength.0.i
  %cmp54.i = icmp eq ptr %add.ptr53.i, %iend
  br i1 %cmp54.i, label %if.end44.i.for.end.i_crit_edge, label %if.end56.i

if.end44.i.for.end.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end56.i:                                       ; preds = %if.end44.i
  %108 = getelementptr i8, ptr %105, i32 %matchIndex.0230.i
  %arrayidx57.i = getelementptr i8, ptr %108, i32 %matchLength.0.i
  %109 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx57.i, align 1
  %111 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr53.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %112)
  %cmp60.i = icmp ult i8 %110, %112
  br i1 %cmp60.i, label %if.then62.i, label %if.else69.i

if.then62.i:                                      ; preds = %if.end56.i
  %113 = ptrtoint ptr %smallerPtr.0233.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %matchIndex.0230.i, ptr %smallerPtr.0233.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %matchIndex.0230.i, i32 %35)
  %cmp63.not.i = icmp ugt i32 %matchIndex.0230.i, %35
  br i1 %cmp63.not.i, label %if.end66.i, label %if.then62.i.for.end.i_crit_edge

if.then62.i.for.end.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end66.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr67.i = getelementptr i32, ptr %add.ptr21.i, i32 1
  br label %for.inc.i

if.else69.i:                                      ; preds = %if.end56.i
  %114 = ptrtoint ptr %largerPtr.0234.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %matchIndex.0230.i, ptr %largerPtr.0234.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %matchIndex.0230.i, i32 %35)
  %cmp70.not.i = icmp ugt i32 %matchIndex.0230.i, %35
  br i1 %cmp70.not.i, label %if.else69.i.for.inc.i_crit_edge, label %if.else69.i.for.end.i_crit_edge

if.else69.i.for.end.i_crit_edge:                  ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.else69.i.for.inc.i_crit_edge:                  ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else69.i.for.inc.i_crit_edge, %if.end66.i
  %matchIndex.1.in.i = phi ptr [ %add.ptr67.i, %if.end66.i ], [ %add.ptr21.i, %if.else69.i.for.inc.i_crit_edge ]
  %commonLengthSmaller.1.i = phi i32 [ %matchLength.0.i, %if.end66.i ], [ %commonLengthSmaller.0231.i, %if.else69.i.for.inc.i_crit_edge ]
  %commonLengthLarger.1.i = phi i32 [ %commonLengthLarger.0232.i, %if.end66.i ], [ %matchLength.0.i, %if.else69.i.for.inc.i_crit_edge ]
  %smallerPtr.1.i = phi ptr [ %add.ptr67.i, %if.end66.i ], [ %smallerPtr.0233.i, %if.else69.i.for.inc.i_crit_edge ]
  %largerPtr.1.i = phi ptr [ %largerPtr.0234.i, %if.end66.i ], [ %add.ptr21.i, %if.else69.i.for.inc.i_crit_edge ]
  %115 = ptrtoint ptr %matchIndex.1.in.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %matchIndex.1.i = load i32, ptr %matchIndex.1.in.i, align 4
  %dec.i = add i32 %nbCompares.0237.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %matchIndex.1.i, i32 %38)
  %cmp18.not.i = icmp ult i32 %matchIndex.1.i, %38
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp18.not.i
  br i1 %or.cond.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else69.i.for.end.i_crit_edge, %if.then62.i.for.end.i_crit_edge, %if.end44.i.for.end.i_crit_edge
  %smallerPtr.3.i = phi ptr [ %smallerPtr.1.i, %for.inc.i.for.end.i_crit_edge ], [ %smallerPtr.0233.i, %if.end44.i.for.end.i_crit_edge ], [ %dummy32.i, %if.then62.i.for.end.i_crit_edge ], [ %smallerPtr.0233.i, %if.else69.i.for.end.i_crit_edge ]
  %largerPtr.3.i = phi ptr [ %largerPtr.1.i, %for.inc.i.for.end.i_crit_edge ], [ %largerPtr.0234.i, %if.end44.i.for.end.i_crit_edge ], [ %largerPtr.0234.i, %if.then62.i.for.end.i_crit_edge ], [ %dummy32.i, %if.else69.i.for.end.i_crit_edge ]
  %116 = ptrtoint ptr %largerPtr.3.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %largerPtr.3.i, align 4
  %117 = ptrtoint ptr %smallerPtr.3.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %smallerPtr.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %107)
  %cmp77.i = icmp ugt i32 %107, 384
  %sub80.i = add i32 %107, -384
  %118 = tail call i32 @llvm.umin.i32(i32 %sub80.i, i32 192) #8
  %spec.select.i = select i1 %cmp77.i, i32 %118, i32 0
  br label %ZSTD_insertBt1.exit

ZSTD_insertBt1.exit:                              ; preds = %for.end.i, %for.end.thread.i
  %matchEndIdx.2265.i = phi i32 [ %add15.i, %for.end.thread.i ], [ %matchEndIdx.1.i, %for.end.i ]
  %119 = phi i32 [ 0, %for.end.thread.i ], [ %spec.select.i, %for.end.i ]
  %add.neg.i = sub i32 -8, %sub.ptr.sub.i
  %sub90.i = add i32 %add.neg.i, %matchEndIdx.2265.i
  %120 = tail call i32 @llvm.umax.i32(i32 %119, i32 %sub90.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy32.i)
  %add = add i32 %120, %idx.018
  %cmp = icmp ult i32 %add, %sub.ptr.sub
  br i1 %cmp, label %ZSTD_insertBt1.exit.while.body_crit_edge, label %ZSTD_insertBt1.exit.while.end_crit_edge

ZSTD_insertBt1.exit.while.end_crit_edge:          ; preds = %ZSTD_insertBt1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

ZSTD_insertBt1.exit.while.body_crit_edge:         ; preds = %ZSTD_insertBt1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %ZSTD_insertBt1.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %121 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub.ptr.sub, ptr %nextToUpdate, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btopt(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef %optLevel, i32 noundef %dictMode) unnamed_addr #1 align 64 {
entry:
  %lit93.i = alloca i32, align 4
  %nextToUpdate3 = alloca i32, align 4
  %optLdm = alloca %struct.ZSTD_optLdm_t, align 4
  %nbMatches = alloca i32, align 4
  %nbMatches217 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %opt = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -8
  %base2 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 1
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  %dictLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 3
  %2 = ptrtoint ptr %dictLimit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dictLimit, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  %targetLength = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %targetLength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %targetLength, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4095)
  %minMatch7 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 4
  %7 = ptrtoint ptr %minMatch7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %minMatch7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp8 = icmp eq i32 %8, 3
  %cond9 = select i1 %cmp8, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextToUpdate3) #8
  %nextToUpdate = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 2
  %9 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nextToUpdate, align 4
  %11 = ptrtoint ptr %nextToUpdate3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nextToUpdate3, align 4
  %priceTable = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 5
  %12 = ptrtoint ptr %priceTable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priceTable, align 4
  %matchTable = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %matchTable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %matchTable, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %optLdm) #8
  %16 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 3
  %ldmSeqStore = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 11
  %19 = call ptr @memset(ptr %optLdm, i32 255, i32 20)
  %20 = ptrtoint ptr %ldmSeqStore to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ldmSeqStore, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %cond.false14, label %cond.true12

cond.true12:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = call ptr @memcpy(ptr %optLdm, ptr %21, i32 20)
  br label %cond.end15

cond.false14:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = call ptr @memset(ptr %optLdm, i32 0, i32 20)
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true12
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %18, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %17, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %src to i32
  %sub.ptr.lhs.cast16 = ptrtoint ptr %add.ptr to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull %optLdm, i32 noundef 0, i32 noundef %srcSize)
  %literalCompressionMode.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 16
  %27 = ptrtoint ptr %literalCompressionMode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %literalCompressionMode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, 2
  %priceType.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 14
  %29 = ptrtoint ptr %priceType.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %priceType.i, align 4
  %litLengthSum.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 7
  %30 = ptrtoint ptr %litLengthSum.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %litLengthSum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.then.i, label %if.else131.i

if.then.i:                                        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %srcSize)
  %cmp1.i = icmp ult i32 %srcSize, 1025
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %priceType.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %priceType.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %symbolCosts.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 15
  %33 = ptrtoint ptr %symbolCosts.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %symbolCosts.i, align 4
  %repeatMode.i = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %repeatMode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %repeatMode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp4.i = icmp eq i32 %36, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %priceType.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %priceType.i, align 4
  br i1 %cmp.i.not.i, label %if.then5.i.if.end16.i_crit_edge, label %if.then7.i

if.then5.i.if.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then7.i:                                       ; preds = %if.then5.i
  %litSum.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 6
  %38 = ptrtoint ptr %litSum.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %litSum.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then7.i
  %lit.0293.i = phi i32 [ 0, %if.then7.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %symbolCosts.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %symbolCosts.i, align 4
  %call11.i = call i32 @HUF_getNbBits(ptr noundef %40, i32 noundef %lit.0293.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %sub.i = sub i32 11, %call11.i
  %shl.i = shl nuw i32 1, %sub.i
  %cond.i = select i1 %tobool12.not.i, i32 1, i32 %shl.i
  %41 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %opt, align 4
  %arrayidx.i = getelementptr i32, ptr %42, i32 %lit.0293.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond.i, ptr %arrayidx.i, align 4
  %44 = load ptr, ptr %opt, align 4
  %arrayidx14.i = getelementptr i32, ptr %44, i32 %lit.0293.i
  %45 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx14.i, align 4
  %47 = ptrtoint ptr %litSum.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %litSum.i, align 4
  %add.i = add i32 %48, %46
  store i32 %add.i, ptr %litSum.i, align 4
  %inc.i = add nuw nsw i32 %lit.0293.i, 1
  %exitcond298.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond298.not.i, label %for.body.i.if.end16.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.body.i.if.end16.i_crit_edge, %if.then5.i.if.end16.i_crit_edge
  %49 = ptrtoint ptr %symbolCosts.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %symbolCosts.i, align 4
  %litlengthCTable.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %50, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %litlengthCTable.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %litlengthCTable.i, align 1
  %conv.i220.i = zext i16 %52 to i32
  %add.ptr.i.i = getelementptr %struct.ZSTD_entropyCTables_t, ptr %50, i32 0, i32 1, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i.i = icmp eq i16 %52, 0
  %sub.i.i = add nsw i32 %conv.i220.i, -1
  %shl2.i.i = shl nuw i32 1, %sub.i.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 %shl2.i.i
  %add.ptr3.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %cond.i.i
  %53 = ptrtoint ptr %litLengthSum.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %litLengthSum.i, align 4
  %litLengthFreq.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 1
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %if.end16.i
  %ll.0294.i = phi i32 [ 0, %if.end16.i ], [ %inc39.i, %for.body22.i.for.body22.i_crit_edge ]
  %deltaNbBits.i.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i, i32 %ll.0294.i, i32 1
  %54 = ptrtoint ptr %deltaNbBits.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %deltaNbBits.i.i, align 4
  %add.i.i = add i32 %55, 65535
  %shr.i.i = lshr i32 %add.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i.i)
  %tobool26.not.i = icmp ult i32 %add.i.i, 65536
  %sub28.i = sub nsw i32 10, %shr.i.i
  %shl29.i = shl nuw nsw i32 1, %sub28.i
  %cond32.i = select i1 %tobool26.not.i, i32 1, i32 %shl29.i
  %56 = ptrtoint ptr %litLengthFreq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %litLengthFreq.i, align 4
  %arrayidx33.i = getelementptr i32, ptr %57, i32 %ll.0294.i
  %58 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond32.i, ptr %arrayidx33.i, align 4
  %59 = load ptr, ptr %litLengthFreq.i, align 4
  %arrayidx35.i = getelementptr i32, ptr %59, i32 %ll.0294.i
  %60 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx35.i, align 4
  %62 = ptrtoint ptr %litLengthSum.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %litLengthSum.i, align 4
  %add37.i = add i32 %63, %61
  store i32 %add37.i, ptr %litLengthSum.i, align 4
  %inc39.i = add nuw nsw i32 %ll.0294.i, 1
  %exitcond299.not.i = icmp eq i32 %inc39.i, 36
  br i1 %exitcond299.not.i, label %for.end40.i, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.i

for.end40.i:                                      ; preds = %for.body22.i
  %64 = ptrtoint ptr %symbolCosts.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %symbolCosts.i, align 4
  %matchlengthCTable.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %65, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %matchlengthCTable.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %matchlengthCTable.i, align 1
  %conv.i221.i = zext i16 %67 to i32
  %add.ptr.i223.i = getelementptr %struct.ZSTD_entropyCTables_t, ptr %65, i32 0, i32 1, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i225.i = icmp eq i16 %67, 0
  %sub.i226.i = add nsw i32 %conv.i221.i, -1
  %shl2.i227.i = shl nuw i32 1, %sub.i226.i
  %cond.i228.i = select i1 %tobool.not.i225.i, i32 1, i32 %shl2.i227.i
  %add.ptr3.i229.i = getelementptr i32, ptr %add.ptr.i223.i, i32 %cond.i228.i
  %matchLengthSum.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 8
  %68 = ptrtoint ptr %matchLengthSum.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %matchLengthSum.i, align 4
  %matchLengthFreq.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 2
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %for.end40.i
  %ml.0295.i = phi i32 [ 0, %for.end40.i ], [ %inc64.i, %for.body46.i.for.body46.i_crit_edge ]
  %deltaNbBits.i232.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i229.i, i32 %ml.0295.i, i32 1
  %69 = ptrtoint ptr %deltaNbBits.i232.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %deltaNbBits.i232.i, align 4
  %add.i233.i = add i32 %70, 65535
  %shr.i234.i = lshr i32 %add.i233.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i233.i)
  %tobool51.not.i = icmp ult i32 %add.i233.i, 65536
  %sub53.i = sub nsw i32 10, %shr.i234.i
  %shl54.i = shl nuw nsw i32 1, %sub53.i
  %cond57.i = select i1 %tobool51.not.i, i32 1, i32 %shl54.i
  %71 = ptrtoint ptr %matchLengthFreq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %matchLengthFreq.i, align 4
  %arrayidx58.i = getelementptr i32, ptr %72, i32 %ml.0295.i
  %73 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cond57.i, ptr %arrayidx58.i, align 4
  %74 = load ptr, ptr %matchLengthFreq.i, align 4
  %arrayidx60.i = getelementptr i32, ptr %74, i32 %ml.0295.i
  %75 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx60.i, align 4
  %77 = ptrtoint ptr %matchLengthSum.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %matchLengthSum.i, align 4
  %add62.i = add i32 %78, %76
  store i32 %add62.i, ptr %matchLengthSum.i, align 4
  %inc64.i = add nuw nsw i32 %ml.0295.i, 1
  %exitcond300.not.i = icmp eq i32 %inc64.i, 53
  br i1 %exitcond300.not.i, label %for.end65.i, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46.i

for.end65.i:                                      ; preds = %for.body46.i
  %79 = ptrtoint ptr %symbolCosts.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %symbolCosts.i, align 4
  %fse67.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %fse67.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %fse67.i, align 1
  %conv.i235.i = zext i16 %82 to i32
  %add.ptr.i237.i = getelementptr %struct.ZSTD_entropyCTables_t, ptr %80, i32 0, i32 1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i239.i = icmp eq i16 %82, 0
  %sub.i240.i = add nsw i32 %conv.i235.i, -1
  %shl2.i241.i = shl nuw i32 1, %sub.i240.i
  %cond.i242.i = select i1 %tobool.not.i239.i, i32 1, i32 %shl2.i241.i
  %add.ptr3.i243.i = getelementptr i32, ptr %add.ptr.i237.i, i32 %cond.i242.i
  %offCodeSum.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 9
  %83 = ptrtoint ptr %offCodeSum.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %offCodeSum.i, align 4
  %offCodeFreq.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 3
  br label %for.body71.i

for.body71.i:                                     ; preds = %for.body71.i.for.body71.i_crit_edge, %for.end65.i
  %of.0296.i = phi i32 [ 0, %for.end65.i ], [ %inc89.i, %for.body71.i.for.body71.i_crit_edge ]
  %deltaNbBits.i246.i = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i243.i, i32 %of.0296.i, i32 1
  %84 = ptrtoint ptr %deltaNbBits.i246.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %deltaNbBits.i246.i, align 4
  %add.i247.i = add i32 %85, 65535
  %shr.i248.i = lshr i32 %add.i247.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i247.i)
  %tobool76.not.i = icmp ult i32 %add.i247.i, 65536
  %sub78.i = sub nsw i32 10, %shr.i248.i
  %shl79.i = shl nuw nsw i32 1, %sub78.i
  %cond82.i = select i1 %tobool76.not.i, i32 1, i32 %shl79.i
  %86 = ptrtoint ptr %offCodeFreq.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %offCodeFreq.i, align 4
  %arrayidx83.i = getelementptr i32, ptr %87, i32 %of.0296.i
  %88 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond82.i, ptr %arrayidx83.i, align 4
  %89 = load ptr, ptr %offCodeFreq.i, align 4
  %arrayidx85.i = getelementptr i32, ptr %89, i32 %of.0296.i
  %90 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx85.i, align 4
  %92 = ptrtoint ptr %offCodeSum.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offCodeSum.i, align 4
  %add87.i = add i32 %93, %91
  store i32 %add87.i, ptr %offCodeSum.i, align 4
  %inc89.i = add nuw nsw i32 %of.0296.i, 1
  %exitcond301.not.i = icmp eq i32 %inc89.i, 32
  br i1 %exitcond301.not.i, label %for.body71.i.ZSTD_rescaleFreqs.exit_crit_edge, label %for.body71.i.for.body71.i_crit_edge

for.body71.i.for.body71.i_crit_edge:              ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body71.i

for.body71.i.ZSTD_rescaleFreqs.exit_crit_edge:    ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_rescaleFreqs.exit

if.else.i:                                        ; preds = %if.end.i
  br i1 %cmp.i.not.i, label %if.else.i.if.end99.i_crit_edge, label %if.then92.i

if.else.i.if.end99.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then92.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lit93.i) #8
  %94 = ptrtoint ptr %lit93.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 255, ptr %lit93.i, align 4
  %95 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %opt, align 4
  %call95.i = call i32 @HIST_count_simple(ptr noundef %96, ptr noundef nonnull %lit93.i, ptr noundef %src, i32 noundef %srcSize) #8
  %97 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %opt, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then92.i
  %sum.015.i.i = phi i32 [ 0, %if.then92.i ], [ %add5.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %s.014.i.i = phi i32 [ 0, %if.then92.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %98, i32 %s.014.i.i
  %99 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i249.i = lshr i32 %100, 5
  %add2.i.i = add nuw nsw i32 %shr.i249.i, 1
  store i32 %add2.i.i, ptr %arrayidx.i.i, align 4
  %add5.i.i = add i32 %add2.i.i, %sum.015.i.i
  %inc.i.i = add nuw nsw i32 %s.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %s.014.i.i, 255
  br i1 %exitcond.not.i.i, label %ZSTD_downscaleStat.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ZSTD_downscaleStat.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %litSum98.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 6
  %101 = ptrtoint ptr %litSum98.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add5.i.i, ptr %litSum98.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lit93.i) #8
  br label %if.end99.i

if.end99.i:                                       ; preds = %ZSTD_downscaleStat.exit.i, %if.else.i.if.end99.i_crit_edge
  %litLengthFreq104.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 1
  %102 = ptrtoint ptr %litLengthFreq104.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %litLengthFreq104.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %103, align 4
  %105 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.1.i = getelementptr i32, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx105.1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %arrayidx105.1.i, align 4
  %107 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.2.i = getelementptr i32, ptr %107, i32 2
  %108 = ptrtoint ptr %arrayidx105.2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %arrayidx105.2.i, align 4
  %109 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.3.i = getelementptr i32, ptr %109, i32 3
  %110 = ptrtoint ptr %arrayidx105.3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %arrayidx105.3.i, align 4
  %111 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.4.i = getelementptr i32, ptr %111, i32 4
  %112 = ptrtoint ptr %arrayidx105.4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %arrayidx105.4.i, align 4
  %113 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.5.i = getelementptr i32, ptr %113, i32 5
  %114 = ptrtoint ptr %arrayidx105.5.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %arrayidx105.5.i, align 4
  %115 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.6.i = getelementptr i32, ptr %115, i32 6
  %116 = ptrtoint ptr %arrayidx105.6.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %arrayidx105.6.i, align 4
  %117 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.7.i = getelementptr i32, ptr %117, i32 7
  %118 = ptrtoint ptr %arrayidx105.7.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %arrayidx105.7.i, align 4
  %119 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.8.i = getelementptr i32, ptr %119, i32 8
  %120 = ptrtoint ptr %arrayidx105.8.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %arrayidx105.8.i, align 4
  %121 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.9.i = getelementptr i32, ptr %121, i32 9
  %122 = ptrtoint ptr %arrayidx105.9.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %arrayidx105.9.i, align 4
  %123 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.10.i = getelementptr i32, ptr %123, i32 10
  %124 = ptrtoint ptr %arrayidx105.10.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %arrayidx105.10.i, align 4
  %125 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.11.i = getelementptr i32, ptr %125, i32 11
  %126 = ptrtoint ptr %arrayidx105.11.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %arrayidx105.11.i, align 4
  %127 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.12.i = getelementptr i32, ptr %127, i32 12
  %128 = ptrtoint ptr %arrayidx105.12.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %arrayidx105.12.i, align 4
  %129 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.13.i = getelementptr i32, ptr %129, i32 13
  %130 = ptrtoint ptr %arrayidx105.13.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %arrayidx105.13.i, align 4
  %131 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.14.i = getelementptr i32, ptr %131, i32 14
  %132 = ptrtoint ptr %arrayidx105.14.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %arrayidx105.14.i, align 4
  %133 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.15.i = getelementptr i32, ptr %133, i32 15
  %134 = ptrtoint ptr %arrayidx105.15.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %arrayidx105.15.i, align 4
  %135 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.16.i = getelementptr i32, ptr %135, i32 16
  %136 = ptrtoint ptr %arrayidx105.16.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %arrayidx105.16.i, align 4
  %137 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.17.i = getelementptr i32, ptr %137, i32 17
  %138 = ptrtoint ptr %arrayidx105.17.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %arrayidx105.17.i, align 4
  %139 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.18.i = getelementptr i32, ptr %139, i32 18
  %140 = ptrtoint ptr %arrayidx105.18.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %arrayidx105.18.i, align 4
  %141 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.19.i = getelementptr i32, ptr %141, i32 19
  %142 = ptrtoint ptr %arrayidx105.19.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %arrayidx105.19.i, align 4
  %143 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.20.i = getelementptr i32, ptr %143, i32 20
  %144 = ptrtoint ptr %arrayidx105.20.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %arrayidx105.20.i, align 4
  %145 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.21.i = getelementptr i32, ptr %145, i32 21
  %146 = ptrtoint ptr %arrayidx105.21.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %arrayidx105.21.i, align 4
  %147 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.22.i = getelementptr i32, ptr %147, i32 22
  %148 = ptrtoint ptr %arrayidx105.22.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %arrayidx105.22.i, align 4
  %149 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.23.i = getelementptr i32, ptr %149, i32 23
  %150 = ptrtoint ptr %arrayidx105.23.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %arrayidx105.23.i, align 4
  %151 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.24.i = getelementptr i32, ptr %151, i32 24
  %152 = ptrtoint ptr %arrayidx105.24.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %arrayidx105.24.i, align 4
  %153 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.25.i = getelementptr i32, ptr %153, i32 25
  %154 = ptrtoint ptr %arrayidx105.25.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %arrayidx105.25.i, align 4
  %155 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.26.i = getelementptr i32, ptr %155, i32 26
  %156 = ptrtoint ptr %arrayidx105.26.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1, ptr %arrayidx105.26.i, align 4
  %157 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.27.i = getelementptr i32, ptr %157, i32 27
  %158 = ptrtoint ptr %arrayidx105.27.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %arrayidx105.27.i, align 4
  %159 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.28.i = getelementptr i32, ptr %159, i32 28
  %160 = ptrtoint ptr %arrayidx105.28.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1, ptr %arrayidx105.28.i, align 4
  %161 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.29.i = getelementptr i32, ptr %161, i32 29
  %162 = ptrtoint ptr %arrayidx105.29.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %arrayidx105.29.i, align 4
  %163 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.30.i = getelementptr i32, ptr %163, i32 30
  %164 = ptrtoint ptr %arrayidx105.30.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1, ptr %arrayidx105.30.i, align 4
  %165 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.31.i = getelementptr i32, ptr %165, i32 31
  %166 = ptrtoint ptr %arrayidx105.31.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %arrayidx105.31.i, align 4
  %167 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.32.i = getelementptr i32, ptr %167, i32 32
  %168 = ptrtoint ptr %arrayidx105.32.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %arrayidx105.32.i, align 4
  %169 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.33.i = getelementptr i32, ptr %169, i32 33
  %170 = ptrtoint ptr %arrayidx105.33.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %arrayidx105.33.i, align 4
  %171 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.34.i = getelementptr i32, ptr %171, i32 34
  %172 = ptrtoint ptr %arrayidx105.34.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %arrayidx105.34.i, align 4
  %173 = load ptr, ptr %litLengthFreq104.i, align 4
  %arrayidx105.35.i = getelementptr i32, ptr %173, i32 35
  %174 = ptrtoint ptr %arrayidx105.35.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %arrayidx105.35.i, align 4
  %175 = ptrtoint ptr %litLengthSum.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 36, ptr %litLengthSum.i, align 4
  %matchLengthFreq114.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 2
  br label %for.body113.i

for.body113.i:                                    ; preds = %for.body113.i.for.body113.i_crit_edge, %if.end99.i
  %ml110.0291.i = phi i32 [ 0, %if.end99.i ], [ %inc117.i, %for.body113.i.for.body113.i_crit_edge ]
  %176 = ptrtoint ptr %matchLengthFreq114.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %matchLengthFreq114.i, align 4
  %arrayidx115.i = getelementptr i32, ptr %177, i32 %ml110.0291.i
  %178 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %arrayidx115.i, align 4
  %inc117.i = add nuw nsw i32 %ml110.0291.i, 1
  %exitcond.not.i = icmp eq i32 %inc117.i, 53
  br i1 %exitcond.not.i, label %for.end118.i, label %for.body113.i.for.body113.i_crit_edge

for.body113.i.for.body113.i_crit_edge:            ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body113.i

for.end118.i:                                     ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #10
  %matchLengthSum119.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 8
  %179 = ptrtoint ptr %matchLengthSum119.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 53, ptr %matchLengthSum119.i, align 4
  %offCodeFreq124.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 3
  %180 = ptrtoint ptr %offCodeFreq124.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %offCodeFreq124.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %181, align 4
  %183 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.1.i = getelementptr i32, ptr %183, i32 1
  %184 = ptrtoint ptr %arrayidx125.1.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %arrayidx125.1.i, align 4
  %185 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.2.i = getelementptr i32, ptr %185, i32 2
  %186 = ptrtoint ptr %arrayidx125.2.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 1, ptr %arrayidx125.2.i, align 4
  %187 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.3.i = getelementptr i32, ptr %187, i32 3
  %188 = ptrtoint ptr %arrayidx125.3.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %arrayidx125.3.i, align 4
  %189 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.4.i = getelementptr i32, ptr %189, i32 4
  %190 = ptrtoint ptr %arrayidx125.4.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %arrayidx125.4.i, align 4
  %191 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.5.i = getelementptr i32, ptr %191, i32 5
  %192 = ptrtoint ptr %arrayidx125.5.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %arrayidx125.5.i, align 4
  %193 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.6.i = getelementptr i32, ptr %193, i32 6
  %194 = ptrtoint ptr %arrayidx125.6.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 1, ptr %arrayidx125.6.i, align 4
  %195 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.7.i = getelementptr i32, ptr %195, i32 7
  %196 = ptrtoint ptr %arrayidx125.7.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %arrayidx125.7.i, align 4
  %197 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.8.i = getelementptr i32, ptr %197, i32 8
  %198 = ptrtoint ptr %arrayidx125.8.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %arrayidx125.8.i, align 4
  %199 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.9.i = getelementptr i32, ptr %199, i32 9
  %200 = ptrtoint ptr %arrayidx125.9.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1, ptr %arrayidx125.9.i, align 4
  %201 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.10.i = getelementptr i32, ptr %201, i32 10
  %202 = ptrtoint ptr %arrayidx125.10.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %arrayidx125.10.i, align 4
  %203 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.11.i = getelementptr i32, ptr %203, i32 11
  %204 = ptrtoint ptr %arrayidx125.11.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1, ptr %arrayidx125.11.i, align 4
  %205 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.12.i = getelementptr i32, ptr %205, i32 12
  %206 = ptrtoint ptr %arrayidx125.12.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %arrayidx125.12.i, align 4
  %207 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.13.i = getelementptr i32, ptr %207, i32 13
  %208 = ptrtoint ptr %arrayidx125.13.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1, ptr %arrayidx125.13.i, align 4
  %209 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.14.i = getelementptr i32, ptr %209, i32 14
  %210 = ptrtoint ptr %arrayidx125.14.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 1, ptr %arrayidx125.14.i, align 4
  %211 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.15.i = getelementptr i32, ptr %211, i32 15
  %212 = ptrtoint ptr %arrayidx125.15.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1, ptr %arrayidx125.15.i, align 4
  %213 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.16.i = getelementptr i32, ptr %213, i32 16
  %214 = ptrtoint ptr %arrayidx125.16.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %arrayidx125.16.i, align 4
  %215 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.17.i = getelementptr i32, ptr %215, i32 17
  %216 = ptrtoint ptr %arrayidx125.17.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %arrayidx125.17.i, align 4
  %217 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.18.i = getelementptr i32, ptr %217, i32 18
  %218 = ptrtoint ptr %arrayidx125.18.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1, ptr %arrayidx125.18.i, align 4
  %219 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.19.i = getelementptr i32, ptr %219, i32 19
  %220 = ptrtoint ptr %arrayidx125.19.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1, ptr %arrayidx125.19.i, align 4
  %221 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.20.i = getelementptr i32, ptr %221, i32 20
  %222 = ptrtoint ptr %arrayidx125.20.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1, ptr %arrayidx125.20.i, align 4
  %223 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.21.i = getelementptr i32, ptr %223, i32 21
  %224 = ptrtoint ptr %arrayidx125.21.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %arrayidx125.21.i, align 4
  %225 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.22.i = getelementptr i32, ptr %225, i32 22
  %226 = ptrtoint ptr %arrayidx125.22.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 1, ptr %arrayidx125.22.i, align 4
  %227 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.23.i = getelementptr i32, ptr %227, i32 23
  %228 = ptrtoint ptr %arrayidx125.23.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %arrayidx125.23.i, align 4
  %229 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.24.i = getelementptr i32, ptr %229, i32 24
  %230 = ptrtoint ptr %arrayidx125.24.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 1, ptr %arrayidx125.24.i, align 4
  %231 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.25.i = getelementptr i32, ptr %231, i32 25
  %232 = ptrtoint ptr %arrayidx125.25.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 1, ptr %arrayidx125.25.i, align 4
  %233 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.26.i = getelementptr i32, ptr %233, i32 26
  %234 = ptrtoint ptr %arrayidx125.26.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 1, ptr %arrayidx125.26.i, align 4
  %235 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.27.i = getelementptr i32, ptr %235, i32 27
  %236 = ptrtoint ptr %arrayidx125.27.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1, ptr %arrayidx125.27.i, align 4
  %237 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.28.i = getelementptr i32, ptr %237, i32 28
  %238 = ptrtoint ptr %arrayidx125.28.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 1, ptr %arrayidx125.28.i, align 4
  %239 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.29.i = getelementptr i32, ptr %239, i32 29
  %240 = ptrtoint ptr %arrayidx125.29.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 1, ptr %arrayidx125.29.i, align 4
  %241 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.30.i = getelementptr i32, ptr %241, i32 30
  %242 = ptrtoint ptr %arrayidx125.30.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1, ptr %arrayidx125.30.i, align 4
  %243 = load ptr, ptr %offCodeFreq124.i, align 4
  %arrayidx125.31.i = getelementptr i32, ptr %243, i32 31
  %244 = ptrtoint ptr %arrayidx125.31.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 1, ptr %arrayidx125.31.i, align 4
  br label %if.end147.sink.split.i

if.else131.i:                                     ; preds = %cond.end15
  br i1 %cmp.i.not.i, label %if.else131.i.if.end137.i_crit_edge, label %if.then133.i

if.else131.i.if.end137.i_crit_edge:               ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137.i

if.then133.i:                                     ; preds = %if.else131.i
  %245 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %opt, align 4
  br label %for.body.i258.i

for.body.i258.i:                                  ; preds = %for.body.i258.i.for.body.i258.i_crit_edge, %if.then133.i
  %sum.015.i250.i = phi i32 [ 0, %if.then133.i ], [ %add5.i255.i, %for.body.i258.i.for.body.i258.i_crit_edge ]
  %s.014.i251.i = phi i32 [ 0, %if.then133.i ], [ %inc.i256.i, %for.body.i258.i.for.body.i258.i_crit_edge ]
  %arrayidx.i252.i = getelementptr i32, ptr %246, i32 %s.014.i251.i
  %247 = ptrtoint ptr %arrayidx.i252.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.i252.i, align 4
  %shr.i253.i = lshr i32 %248, 5
  %add2.i254.i = add nuw nsw i32 %shr.i253.i, 1
  store i32 %add2.i254.i, ptr %arrayidx.i252.i, align 4
  %add5.i255.i = add i32 %add2.i254.i, %sum.015.i250.i
  %inc.i256.i = add nuw nsw i32 %s.014.i251.i, 1
  %exitcond.not.i257.i = icmp eq i32 %s.014.i251.i, 255
  br i1 %exitcond.not.i257.i, label %ZSTD_downscaleStat.exit259.i, label %for.body.i258.i.for.body.i258.i_crit_edge

for.body.i258.i.for.body.i258.i_crit_edge:        ; preds = %for.body.i258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i258.i

ZSTD_downscaleStat.exit259.i:                     ; preds = %for.body.i258.i
  call void @__sanitizer_cov_trace_pc() #10
  %litSum136.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 6
  %249 = ptrtoint ptr %litSum136.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %add5.i255.i, ptr %litSum136.i, align 4
  br label %if.end137.i

if.end137.i:                                      ; preds = %ZSTD_downscaleStat.exit259.i, %if.else131.i.if.end137.i_crit_edge
  %litLengthFreq138.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 1
  %250 = ptrtoint ptr %litLengthFreq138.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %litLengthFreq138.i, align 4
  br label %for.body.i268.i

for.body.i268.i:                                  ; preds = %for.body.i268.i.for.body.i268.i_crit_edge, %if.end137.i
  %sum.015.i260.i = phi i32 [ 0, %if.end137.i ], [ %add5.i265.i, %for.body.i268.i.for.body.i268.i_crit_edge ]
  %s.014.i261.i = phi i32 [ 0, %if.end137.i ], [ %inc.i266.i, %for.body.i268.i.for.body.i268.i_crit_edge ]
  %arrayidx.i262.i = getelementptr i32, ptr %251, i32 %s.014.i261.i
  %252 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i262.i, align 4
  %shr.i263.i = lshr i32 %253, 4
  %add2.i264.i = add nuw nsw i32 %shr.i263.i, 1
  store i32 %add2.i264.i, ptr %arrayidx.i262.i, align 4
  %add5.i265.i = add i32 %add2.i264.i, %sum.015.i260.i
  %inc.i266.i = add nuw nsw i32 %s.014.i261.i, 1
  %exitcond.not.i267.i = icmp eq i32 %s.014.i261.i, 35
  br i1 %exitcond.not.i267.i, label %ZSTD_downscaleStat.exit269.i, label %for.body.i268.i.for.body.i268.i_crit_edge

for.body.i268.i.for.body.i268.i_crit_edge:        ; preds = %for.body.i268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i268.i

ZSTD_downscaleStat.exit269.i:                     ; preds = %for.body.i268.i
  %254 = ptrtoint ptr %litLengthSum.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %add5.i265.i, ptr %litLengthSum.i, align 4
  %matchLengthFreq141.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 2
  %255 = ptrtoint ptr %matchLengthFreq141.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %matchLengthFreq141.i, align 4
  br label %for.body.i278.i

for.body.i278.i:                                  ; preds = %for.body.i278.i.for.body.i278.i_crit_edge, %ZSTD_downscaleStat.exit269.i
  %sum.015.i270.i = phi i32 [ 0, %ZSTD_downscaleStat.exit269.i ], [ %add5.i275.i, %for.body.i278.i.for.body.i278.i_crit_edge ]
  %s.014.i271.i = phi i32 [ 0, %ZSTD_downscaleStat.exit269.i ], [ %inc.i276.i, %for.body.i278.i.for.body.i278.i_crit_edge ]
  %arrayidx.i272.i = getelementptr i32, ptr %256, i32 %s.014.i271.i
  %257 = ptrtoint ptr %arrayidx.i272.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx.i272.i, align 4
  %shr.i273.i = lshr i32 %258, 4
  %add2.i274.i = add nuw nsw i32 %shr.i273.i, 1
  store i32 %add2.i274.i, ptr %arrayidx.i272.i, align 4
  %add5.i275.i = add i32 %add2.i274.i, %sum.015.i270.i
  %inc.i276.i = add nuw nsw i32 %s.014.i271.i, 1
  %exitcond.not.i277.i = icmp eq i32 %s.014.i271.i, 52
  br i1 %exitcond.not.i277.i, label %ZSTD_downscaleStat.exit279.i, label %for.body.i278.i.for.body.i278.i_crit_edge

for.body.i278.i.for.body.i278.i_crit_edge:        ; preds = %for.body.i278.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i278.i

ZSTD_downscaleStat.exit279.i:                     ; preds = %for.body.i278.i
  %matchLengthSum143.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 8
  %259 = ptrtoint ptr %matchLengthSum143.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %add5.i275.i, ptr %matchLengthSum143.i, align 4
  %offCodeFreq144.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 3
  %260 = ptrtoint ptr %offCodeFreq144.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %offCodeFreq144.i, align 4
  br label %for.body.i288.i

for.body.i288.i:                                  ; preds = %for.body.i288.i.for.body.i288.i_crit_edge, %ZSTD_downscaleStat.exit279.i
  %sum.015.i280.i = phi i32 [ 0, %ZSTD_downscaleStat.exit279.i ], [ %add5.i285.i, %for.body.i288.i.for.body.i288.i_crit_edge ]
  %s.014.i281.i = phi i32 [ 0, %ZSTD_downscaleStat.exit279.i ], [ %inc.i286.i, %for.body.i288.i.for.body.i288.i_crit_edge ]
  %arrayidx.i282.i = getelementptr i32, ptr %261, i32 %s.014.i281.i
  %262 = ptrtoint ptr %arrayidx.i282.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx.i282.i, align 4
  %shr.i283.i = lshr i32 %263, 4
  %add2.i284.i = add nuw nsw i32 %shr.i283.i, 1
  store i32 %add2.i284.i, ptr %arrayidx.i282.i, align 4
  %add5.i285.i = add i32 %add2.i284.i, %sum.015.i280.i
  %inc.i286.i = add nuw nsw i32 %s.014.i281.i, 1
  %exitcond.not.i287.i = icmp eq i32 %s.014.i281.i, 31
  br i1 %exitcond.not.i287.i, label %for.body.i288.i.if.end147.sink.split.i_crit_edge, label %for.body.i288.i.for.body.i288.i_crit_edge

for.body.i288.i.for.body.i288.i_crit_edge:        ; preds = %for.body.i288.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i288.i

for.body.i288.i.if.end147.sink.split.i_crit_edge: ; preds = %for.body.i288.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147.sink.split.i

if.end147.sink.split.i:                           ; preds = %for.body.i288.i.if.end147.sink.split.i_crit_edge, %for.end118.i
  %.sink.i = phi i32 [ 32, %for.end118.i ], [ %add5.i285.i, %for.body.i288.i.if.end147.sink.split.i_crit_edge ]
  %offCodeSum129.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 9
  %264 = ptrtoint ptr %offCodeSum129.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %.sink.i, ptr %offCodeSum129.i, align 4
  br label %ZSTD_rescaleFreqs.exit

ZSTD_rescaleFreqs.exit:                           ; preds = %if.end147.sink.split.i, %for.body71.i.ZSTD_rescaleFreqs.exit_crit_edge
  call fastcc void @ZSTD_setBasePrices(ptr noundef %opt, i32 noundef %optLevel) #8
  %cmp19 = icmp eq ptr %add.ptr4, %src
  %conv = zext i1 %cmp19 to i32
  %add.ptr20 = getelementptr i8, ptr %src, i32 %conv
  %cmp211228 = icmp ult ptr %add.ptr20, %add.ptr1
  br i1 %cmp211228, label %while.body.lr.ph, label %ZSTD_rescaleFreqs.exit.while.end428_crit_edge

ZSTD_rescaleFreqs.exit.while.end428_crit_edge:    ; preds = %ZSTD_rescaleFreqs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end428

while.body.lr.ph:                                 ; preds = %ZSTD_rescaleFreqs.exit
  %mlen = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %13, i32 0, i32 2
  %litlen41 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %13, i32 0, i32 3
  %litLengthSumBasePrice.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optLevel)
  %tobool3.not.i = icmp eq i32 %optLevel, 0
  %litLengthFreq8.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 1
  %spec.select1177 = select i1 %tobool3.not.i, i32 0, i32 256
  %litSumBasePrice.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 10
  %reps.sroa.7.0.rep.sroa_idx = getelementptr i8, ptr %rep, i32 4
  %reps.sroa.10.0.rep.sroa_idx = getelementptr i8, ptr %rep, i32 8
  %litSum.i1036 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 6
  %offCodeFreq.i1045 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 3
  %offCodeSum.i1047 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 9
  %matchLengthFreq.i1051 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 2
  %matchLengthSum.i1053 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 8
  %add.ptr.i1054 = getelementptr i8, ptr %add.ptr, i32 -32
  %lit7.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 3
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i1054 to i32
  %longLengthID.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 9
  %sequences.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 1
  %longLengthPos.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 10
  %arrayidx38 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 0, i32 4, i32 0
  %arrayidx38.1 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 0, i32 4, i32 1
  %arrayidx38.2 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 0, i32 4, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup424.while.body_crit_edge, %while.body.lr.ph
  %ip.01234 = phi ptr [ %add.ptr20, %while.body.lr.ph ], [ %ip.4, %cleanup424.while.body_crit_edge ]
  %anchor.01233 = phi ptr [ %src, %while.body.lr.ph ], [ %anchor.3, %cleanup424.while.body_crit_edge ]
  %lastSequence.sroa.0.01232 = phi i32 [ -1, %while.body.lr.ph ], [ %lastSequence.sroa.0.2, %cleanup424.while.body_crit_edge ]
  %lastSequence.sroa.33.01231 = phi i32 [ -1, %while.body.lr.ph ], [ %lastSequence.sroa.33.2, %cleanup424.while.body_crit_edge ]
  %lastSequence.sroa.38.01230 = phi i32 [ -1, %while.body.lr.ph ], [ %lastSequence.sroa.38.2, %cleanup424.while.body_crit_edge ]
  %lastSequence.sroa.43.01229 = phi i32 [ -1, %while.body.lr.ph ], [ %lastSequence.sroa.43.2, %cleanup424.while.body_crit_edge ]
  %sub.ptr.lhs.cast23 = ptrtoint ptr %ip.01234 to i32
  %sub.ptr.rhs.cast24 = ptrtoint ptr %anchor.01233 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub25)
  %tobool26.not = icmp eq i32 %sub.ptr.sub25, 0
  %lnot.ext = zext i1 %tobool26.not to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbMatches) #8
  %265 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %base2, align 4
  %267 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %nextToUpdate, align 4
  %add.ptr.i = getelementptr i8, ptr %266, i32 %268
  %cmp.i801 = icmp ugt ptr %add.ptr.i, %ip.01234
  br i1 %cmp.i801, label %while.body.ZSTD_BtGetAllMatches.exit_crit_edge, label %if.end.i802

while.body.ZSTD_BtGetAllMatches.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_BtGetAllMatches.exit

if.end.i802:                                      ; preds = %while.body
  %269 = ptrtoint ptr %minMatch7 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %minMatch7, align 4
  call fastcc void @ZSTD_updateTree_internal(ptr noundef %ms, ptr noundef %ip.01234, ptr noundef %add.ptr, i32 noundef %270, i32 noundef %dictMode) #8
  %switch.tableidx = add i32 %270, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %271 = icmp ult i32 %switch.tableidx, 5
  br i1 %271, label %switch.lookup, label %if.end.i802.cleanup.sink.split.i_crit_edge

if.end.i802.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i802
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

switch.lookup:                                    ; preds = %if.end.i802
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ZSTD_compressBlock_opt_generic, i32 0, i32 %switch.tableidx
  %272 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %272)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup, %if.end.i802.cleanup.sink.split.i_crit_edge
  %.sink.i803 = phi i32 [ %switch.load, %switch.lookup ], [ 4, %if.end.i802.cleanup.sink.split.i_crit_edge ]
  %call7.i = call fastcc i32 @ZSTD_insertBtAndGetAllMatches(ptr noundef %15, ptr noundef %ms, ptr noundef nonnull %nextToUpdate3, ptr noundef %ip.01234, ptr noundef %add.ptr, i32 noundef %dictMode, ptr noundef %rep, i32 noundef %lnot.ext, i32 noundef %cond9, i32 noundef %.sink.i803) #8
  br label %ZSTD_BtGetAllMatches.exit

ZSTD_BtGetAllMatches.exit:                        ; preds = %cleanup.sink.split.i, %while.body.ZSTD_BtGetAllMatches.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.body.ZSTD_BtGetAllMatches.exit_crit_edge ], [ %call7.i, %cleanup.sink.split.i ]
  %273 = ptrtoint ptr %nbMatches to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %retval.0.i, ptr %nbMatches, align 4
  %sub.ptr.sub29 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.lhs.cast
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.lhs.cast23
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %optLdm, ptr noundef %15, ptr noundef nonnull %nbMatches, i32 noundef %sub.ptr.sub29, i32 noundef %sub.ptr.sub32)
  %274 = ptrtoint ptr %nbMatches to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %nbMatches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool33.not = icmp eq i32 %275, 0
  br i1 %tobool33.not, label %cleanup98.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %ZSTD_BtGetAllMatches.exit
  %276 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %rep, align 4
  %278 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %arrayidx38, align 4
  %279 = ptrtoint ptr %reps.sroa.7.0.rep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %reps.sroa.7.0.rep.sroa_idx, align 4
  %281 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %arrayidx38.1, align 4
  %282 = ptrtoint ptr %reps.sroa.10.0.rep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %reps.sroa.10.0.rep.sroa_idx, align 4
  %284 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %arrayidx38.2, align 4
  %285 = ptrtoint ptr %mlen to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %mlen, align 4
  %286 = ptrtoint ptr %litlen41 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %sub.ptr.sub25, ptr %litlen41, align 4
  %287 = ptrtoint ptr %priceType.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %priceType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %288)
  %cmp.i805 = icmp eq i32 %288, 1
  br i1 %cmp.i805, label %if.then.i806, label %if.end.i808

cleanup98.thread:                                 ; preds = %ZSTD_BtGetAllMatches.exit
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr i8, ptr %ip.01234, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbMatches) #8
  br label %cleanup424

if.then.i806:                                     ; preds = %for.body.preheader
  %add.i21.i = add i32 %sub.ptr.sub25, 1
  %289 = call i32 @llvm.ctlz.i32(i32 %add.i21.i, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then.i806
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i.i = xor i32 %289, 31
  %mul.i.i = shl nuw nsw i32 %xor.i.i.i, 8
  %shl.i.i = shl i32 %add.i21.i, 8
  %shr.i.i807 = lshr i32 %shl.i.i, %xor.i.i.i
  %add1.i.i = add i32 %mul.i.i, %shr.i.i807
  br label %ZSTD_litLengthPrice.exit

cond.false.i:                                     ; preds = %if.then.i806
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i22.i = shl nuw nsw i32 %289, 8
  %mul.i23.i = xor i32 %xor.i.i22.i, 7936
  br label %ZSTD_litLengthPrice.exit

if.end.i808:                                      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.ptr.sub25)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub25, 63
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end.i808
  call void @__sanitizer_cov_trace_pc() #10
  %290 = call i32 @llvm.ctlz.i32(i32 %sub.ptr.sub25, i1 true) #8, !range !23
  %add.i24.i = sub nuw nsw i32 50, %290
  br label %ZSTD_LLcode.exit.i

cond.false.i.i:                                   ; preds = %if.end.i808
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i809 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %sub.ptr.sub25
  %291 = ptrtoint ptr %arrayidx.i.i809 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx.i.i809, align 1
  %conv.i.i = zext i8 %292 to i32
  br label %ZSTD_LLcode.exit.i

ZSTD_LLcode.exit.i:                               ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i810 = phi i32 [ %add.i24.i, %cond.true.i.i ], [ %conv.i.i, %cond.false.i.i ]
  %arrayidx.i811 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %cond.i.i810
  %293 = ptrtoint ptr %arrayidx.i811 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx.i811, align 4
  %mul.i = shl i32 %294, 8
  %295 = ptrtoint ptr %litLengthSumBasePrice.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %litLengthSumBasePrice.i, align 4
  %add.i812 = add i32 %mul.i, %296
  %297 = ptrtoint ptr %litLengthFreq8.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %litLengthFreq8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %298, i32 %cond.i.i810
  %299 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx9.i, align 4
  %add.i31.i = add i32 %300, 1
  %301 = call i32 @llvm.ctlz.i32(i32 %add.i31.i, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false7.i, label %cond.true4.i

cond.true4.i:                                     ; preds = %ZSTD_LLcode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i26.i = xor i32 %301, 31
  %mul.i27.neg.i = mul nsw i32 %xor.i.i26.i, -256
  %shl.i28.i = shl i32 %add.i31.i, 8
  %shr.i29.i = lshr i32 %shl.i28.i, %xor.i.i26.i
  %add1.i30.neg.i = sub i32 %mul.i27.neg.i, %shr.i29.i
  br label %cond.end11.i

cond.false7.i:                                    ; preds = %ZSTD_LLcode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i32.i = shl nuw nsw i32 %301, 8
  %302 = xor i32 %xor.i.i32.i, -7937
  %mul.i33.neg.i = add nsw i32 %302, 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false7.i, %cond.true4.i
  %cond12.neg34.i = phi i32 [ %add1.i30.neg.i, %cond.true4.i ], [ %mul.i33.neg.i, %cond.false7.i ]
  %sub.i813 = add i32 %add.i812, %cond12.neg34.i
  br label %ZSTD_litLengthPrice.exit

ZSTD_litLengthPrice.exit:                         ; preds = %cond.end11.i, %cond.false.i, %cond.true.i
  %retval.0.i814 = phi i32 [ %sub.i813, %cond.end11.i ], [ %add1.i.i, %cond.true.i ], [ %mul.i23.i, %cond.false.i ]
  %303 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %retval.0.i814, ptr %13, align 4
  %sub = add i32 %275, -1
  %len = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %sub, i32 1
  %304 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %305, i32 %6)
  %cmp47 = icmp ugt i32 %305, %6
  br i1 %cmp47, label %_shortestPath.thread, label %cleanup.cont

_shortestPath.thread:                             ; preds = %ZSTD_litLengthPrice.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %sub
  %306 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbMatches) #8
  br label %if.then364

cleanup.cont:                                     ; preds = %ZSTD_litLengthPrice.exit
  %308 = ptrtoint ptr %priceType.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %priceType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %309)
  %cmp.i817 = icmp eq i32 %309, 1
  br i1 %cmp.i817, label %cleanup.cont.ZSTD_litLengthPrice.exit847_crit_edge, label %if.end.i822

cleanup.cont.ZSTD_litLengthPrice.exit847_crit_edge: ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_litLengthPrice.exit847

if.end.i822:                                      ; preds = %cleanup.cont
  %310 = ptrtoint ptr %litLengthSumBasePrice.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %litLengthSumBasePrice.i, align 4
  %312 = ptrtoint ptr %litLengthFreq8.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %litLengthFreq8.i, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %313, align 4
  %add.i31.i832 = add i32 %315, 1
  %316 = call i32 @llvm.ctlz.i32(i32 %add.i31.i832, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false7.i842, label %cond.true4.i839

cond.true4.i839:                                  ; preds = %if.end.i822
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i26.i834 = xor i32 %316, 31
  %mul.i27.neg.i835 = mul nsw i32 %xor.i.i26.i834, -256
  %shl.i28.i836 = shl i32 %add.i31.i832, 8
  %shr.i29.i837 = lshr i32 %shl.i28.i836, %xor.i.i26.i834
  %add1.i30.neg.i838 = sub i32 %mul.i27.neg.i835, %shr.i29.i837
  br label %cond.end11.i845

cond.false7.i842:                                 ; preds = %if.end.i822
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i32.i840 = shl nuw nsw i32 %316, 8
  %317 = xor i32 %xor.i.i32.i840, -7937
  %mul.i33.neg.i841 = add nsw i32 %317, 1
  br label %cond.end11.i845

cond.end11.i845:                                  ; preds = %cond.false7.i842, %cond.true4.i839
  %cond12.neg34.i843 = phi i32 [ %add1.i30.neg.i838, %cond.true4.i839 ], [ %mul.i33.neg.i841, %cond.false7.i842 ]
  %sub.i844 = add i32 %cond12.neg34.i843, %311
  br label %ZSTD_litLengthPrice.exit847

ZSTD_litLengthPrice.exit847:                      ; preds = %cond.end11.i845, %cleanup.cont.ZSTD_litLengthPrice.exit847_crit_edge
  %retval.0.i846 = phi i32 [ %sub.i844, %cond.end11.i845 ], [ %spec.select1177, %cleanup.cont.ZSTD_litLengthPrice.exit847_crit_edge ]
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %ZSTD_litLengthPrice.exit847
  %pos.01186 = phi i32 [ 1, %ZSTD_litLengthPrice.exit847 ], [ %inc66, %for.body62.for.body62_crit_edge ]
  %arrayidx63 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %pos.01186
  %318 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 1073741824, ptr %arrayidx63, align 4
  %inc66 = add nuw nsw i32 %pos.01186, 1
  %exitcond.not = icmp eq i32 %inc66, %cond9
  br i1 %exitcond.not, label %for.body71.preheader, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.body71.preheader:                             ; preds = %for.body62
  %add = add i32 %retval.0.i846, %retval.0.i814
  %umax1240 = call i32 @llvm.umax.i32(i32 %275, i32 1)
  br label %for.body71

for.body71:                                       ; preds = %for.end93.for.body71_crit_edge, %for.body71.preheader
  %matchNb.01191 = phi i32 [ %inc95, %for.end93.for.body71_crit_edge ], [ 0, %for.body71.preheader ]
  %pos.11190 = phi i32 [ %pos.2.lcssa, %for.end93.for.body71_crit_edge ], [ %cond9, %for.body71.preheader ]
  %arrayidx73 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %matchNb.01191
  %319 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx73, align 4
  %len76 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %matchNb.01191, i32 1
  %321 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %len76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.11190, i32 %322)
  %cmp78.not1187 = icmp ugt i32 %pos.11190, %322
  br i1 %cmp78.not1187, label %for.body71.for.end93_crit_edge, label %for.body71.for.body80_crit_edge

for.body71.for.body80_crit_edge:                  ; preds = %for.body71
  br label %for.body80

for.body71.for.end93_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.body71.for.body80_crit_edge
  %pos.21188 = phi i32 [ %inc92, %for.body80.for.body80_crit_edge ], [ %pos.11190, %for.body71.for.body80_crit_edge ]
  %call81 = call fastcc i32 @ZSTD_getMatchPrice(i32 noundef %320, i32 noundef %pos.21188, ptr noundef %opt, i32 noundef %optLevel)
  %add82 = add i32 %add, %call81
  %arrayidx83 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %pos.21188
  %mlen84 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %pos.21188, i32 2
  %323 = ptrtoint ptr %mlen84 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %pos.21188, ptr %mlen84, align 4
  %off86 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %pos.21188, i32 1
  %324 = ptrtoint ptr %off86 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %320, ptr %off86, align 4
  %litlen88 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %pos.21188, i32 3
  %325 = ptrtoint ptr %litlen88 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %sub.ptr.sub25, ptr %litlen88, align 4
  %326 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %add82, ptr %arrayidx83, align 4
  %inc92 = add i32 %pos.21188, 1
  %cmp78.not = icmp ugt i32 %inc92, %322
  br i1 %cmp78.not, label %for.body80.for.end93_crit_edge, label %for.body80.for.body80_crit_edge

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80

for.body80.for.end93_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end93

for.end93:                                        ; preds = %for.body80.for.end93_crit_edge, %for.body71.for.end93_crit_edge
  %pos.2.lcssa = phi i32 [ %pos.11190, %for.body71.for.end93_crit_edge ], [ %inc92, %for.body80.for.end93_crit_edge ]
  %inc95 = add nuw i32 %matchNb.01191, 1
  %exitcond1241.not = icmp eq i32 %inc95, %umax1240
  br i1 %exitcond1241.not, label %for.cond68.cleanup98_crit_edge, label %for.end93.for.body71_crit_edge

for.end93.for.body71_crit_edge:                   ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body71

for.cond68.cleanup98_crit_edge:                   ; preds = %for.end93
  %sub97 = add i32 %pos.2.lcssa, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbMatches) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub97)
  %cmp104.not1208 = icmp eq i32 %sub97, 0
  br i1 %cmp104.not1208, label %for.cond68.cleanup98_crit_edge.for.end350_crit_edge, label %for.cond68.cleanup98_crit_edge.for.body106_crit_edge

for.cond68.cleanup98_crit_edge.for.body106_crit_edge: ; preds = %for.cond68.cleanup98_crit_edge
  br label %for.body106

for.cond68.cleanup98_crit_edge.for.end350_crit_edge: ; preds = %for.cond68.cleanup98_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end350

for.body106:                                      ; preds = %for.inc348.for.body106_crit_edge, %for.cond68.cleanup98_crit_edge.for.body106_crit_edge
  %last_pos.21212 = phi i32 [ %last_pos.111132, %for.inc348.for.body106_crit_edge ], [ %sub97, %for.cond68.cleanup98_crit_edge.for.body106_crit_edge ]
  %cur.21209 = phi i32 [ %inc349, %for.inc348.for.body106_crit_edge ], [ 1, %for.cond68.cleanup98_crit_edge.for.body106_crit_edge ]
  %add.ptr107 = getelementptr i8, ptr %ip.01234, i32 %cur.21209
  %sub109 = add i32 %cur.21209, -1
  %arrayidx110 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %sub109
  %mlen111 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %sub109, i32 2
  %327 = ptrtoint ptr %mlen111 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %mlen111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp112 = icmp eq i32 %328, 0
  br i1 %cmp112, label %cond.true114, label %for.body106.cond.end120_crit_edge

for.body106.cond.end120_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end120

cond.true114:                                     ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  %litlen117 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %sub109, i32 3
  %329 = ptrtoint ptr %litlen117 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %litlen117, align 4
  %add118 = add i32 %330, 1
  br label %cond.end120

cond.end120:                                      ; preds = %cond.true114, %for.body106.cond.end120_crit_edge
  %cond121 = phi i32 [ %add118, %cond.true114 ], [ 1, %for.body106.cond.end120_crit_edge ]
  %331 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx110, align 4
  %add.ptr127 = getelementptr i8, ptr %add.ptr107, i32 -1
  %333 = ptrtoint ptr %literalCompressionMode.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %literalCompressionMode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %334)
  %cmp.i.not.i849 = icmp eq i32 %334, 2
  br i1 %cmp.i.not.i849, label %cond.end120.ZSTD_rawLiteralsCost.exit_crit_edge, label %if.end2.i

cond.end120.ZSTD_rawLiteralsCost.exit_crit_edge:  ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_rawLiteralsCost.exit

if.end2.i:                                        ; preds = %cond.end120
  %335 = ptrtoint ptr %priceType.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %priceType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %336)
  %cmp3.i = icmp eq i32 %336, 1
  br i1 %cmp3.i, label %ZSTD_rawLiteralsCost.exit.thread, label %if.end7.i

ZSTD_rawLiteralsCost.exit.thread:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %add1291091 = add i32 %332, 1536
  br label %if.then.i865

if.end7.i:                                        ; preds = %if.end2.i
  %337 = ptrtoint ptr %litSumBasePrice.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %litSumBasePrice.i, align 4
  %339 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %opt, align 4
  %341 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %add.ptr127, align 1
  %idxprom15.i = zext i8 %342 to i32
  %arrayidx16.i = getelementptr i32, ptr %340, i32 %idxprom15.i
  %343 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx16.i, align 4
  %add.i1.i = add i32 %344, 1
  %345 = call i32 @llvm.ctlz.i32(i32 %add.i1.i, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false.i857, label %cond.true.i856

cond.true.i856:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i.i851 = xor i32 %345, 31
  %mul.i.i852 = shl nuw nsw i32 %xor.i.i.i851, 8
  %shl.i.i853 = shl i32 %add.i1.i, 8
  %shr.i.i854 = lshr i32 %shl.i.i853, %xor.i.i.i851
  %add1.i.i855 = add i32 %mul.i.i852, %shr.i.i854
  br label %cond.end.i

cond.false.i857:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i2.i = shl nuw nsw i32 %345, 8
  %mul.i3.i = xor i32 %xor.i.i2.i, 7936
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i857, %cond.true.i856
  %cond.i858 = phi i32 [ %add1.i.i855, %cond.true.i856 ], [ %mul.i3.i, %cond.false.i857 ]
  %sub.i859 = sub i32 %338, %cond.i858
  br label %ZSTD_rawLiteralsCost.exit

ZSTD_rawLiteralsCost.exit:                        ; preds = %cond.end.i, %cond.end120.ZSTD_rawLiteralsCost.exit_crit_edge
  %retval.0.i860.ph = phi i32 [ %sub.i859, %cond.end.i ], [ 2048, %cond.end120.ZSTD_rawLiteralsCost.exit_crit_edge ]
  %346 = ptrtoint ptr %priceType.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %.pr = load i32, ptr %priceType.i, align 4
  %add129 = add i32 %retval.0.i860.ph, %332
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i862 = icmp eq i32 %.pr, 1
  br i1 %cmp.i862, label %ZSTD_rawLiteralsCost.exit.if.then.i865_crit_edge, label %if.end.i876

ZSTD_rawLiteralsCost.exit.if.then.i865_crit_edge: ; preds = %ZSTD_rawLiteralsCost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i865

if.then.i865:                                     ; preds = %ZSTD_rawLiteralsCost.exit.if.then.i865_crit_edge, %ZSTD_rawLiteralsCost.exit.thread
  %add1291094 = phi i32 [ %add1291091, %ZSTD_rawLiteralsCost.exit.thread ], [ %add129, %ZSTD_rawLiteralsCost.exit.if.then.i865_crit_edge ]
  %add.i21.i864 = add i32 %cond121, 1
  %347 = call i32 @llvm.ctlz.i32(i32 %add.i21.i864, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %ZSTD_litLengthPrice.exit905, label %cond.true.i871

cond.true.i871:                                   ; preds = %if.then.i865
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i.i866 = xor i32 %347, 31
  %mul.i.i867 = shl nuw nsw i32 %xor.i.i.i866, 8
  %shl.i.i868 = shl i32 %add.i21.i864, 8
  %shr.i.i869 = lshr i32 %shl.i.i868, %xor.i.i.i866
  %add1.i.i870 = add i32 %mul.i.i867, %shr.i.i869
  %add1311105 = add i32 %add1.i.i870, %add1291094
  %348 = call i32 @llvm.ctlz.i32(i32 %cond121, i1 false) #8, !range !23
  %xor.i.i.i910 = xor i32 %348, 31
  %mul.i.i911 = shl nuw nsw i32 %xor.i.i.i910, 8
  %shl.i.i912 = shl i32 %cond121, 8
  %shr.i.i913 = lshr i32 %shl.i.i912, %xor.i.i.i910
  %add1.i.i914 = add i32 %mul.i.i911, %shr.i.i913
  br label %ZSTD_litLengthPrice.exit949

if.end.i876:                                      ; preds = %ZSTD_rawLiteralsCost.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cond121)
  %cmp.i.i875 = icmp ugt i32 %cond121, 63
  br i1 %cmp.i.i875, label %cond.true.i.i878, label %cond.false.i.i881

cond.true.i.i878:                                 ; preds = %if.end.i876
  call void @__sanitizer_cov_trace_pc() #10
  %349 = call i32 @llvm.ctlz.i32(i32 %cond121, i1 true) #8, !range !23
  %add.i24.i877 = sub nuw nsw i32 50, %349
  br label %ZSTD_LLcode.exit.i891

cond.false.i.i881:                                ; preds = %if.end.i876
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i879 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %cond121
  %350 = ptrtoint ptr %arrayidx.i.i879 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx.i.i879, align 1
  %conv.i.i880 = zext i8 %351 to i32
  br label %ZSTD_LLcode.exit.i891

ZSTD_LLcode.exit.i891:                            ; preds = %cond.false.i.i881, %cond.true.i.i878
  %cond.i.i882 = phi i32 [ %add.i24.i877, %cond.true.i.i878 ], [ %conv.i.i880, %cond.false.i.i881 ]
  %arrayidx.i883 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %cond.i.i882
  %352 = ptrtoint ptr %arrayidx.i883 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx.i883, align 4
  %mul.i884 = shl i32 %353, 8
  %354 = ptrtoint ptr %litLengthSumBasePrice.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %litLengthSumBasePrice.i, align 4
  %356 = ptrtoint ptr %litLengthFreq8.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %litLengthFreq8.i, align 4
  %arrayidx9.i889 = getelementptr i32, ptr %357, i32 %cond.i.i882
  %358 = ptrtoint ptr %arrayidx9.i889 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx9.i889, align 4
  %add.i31.i890 = add i32 %359, 1
  %360 = call i32 @llvm.ctlz.i32(i32 %add.i31.i890, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false7.i900, label %cond.true4.i897

cond.true4.i897:                                  ; preds = %ZSTD_LLcode.exit.i891
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i26.i892 = xor i32 %360, 31
  %mul.i27.neg.i893 = mul nsw i32 %xor.i.i26.i892, -256
  %shl.i28.i894 = shl i32 %add.i31.i890, 8
  %shr.i29.i895 = lshr i32 %shl.i28.i894, %xor.i.i26.i892
  %add1.i30.neg.i896 = sub i32 %mul.i27.neg.i893, %shr.i29.i895
  br label %ZSTD_litLengthPrice.exit905.thread

cond.false7.i900:                                 ; preds = %ZSTD_LLcode.exit.i891
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i32.i898 = shl nuw nsw i32 %360, 8
  %361 = xor i32 %xor.i.i32.i898, -7937
  %mul.i33.neg.i899 = add nsw i32 %361, 1
  br label %ZSTD_litLengthPrice.exit905.thread

ZSTD_litLengthPrice.exit905.thread:               ; preds = %cond.false7.i900, %cond.true4.i897
  %cond12.neg34.i901 = phi i32 [ %add1.i30.neg.i896, %cond.true4.i897 ], [ %mul.i33.neg.i899, %cond.false7.i900 ]
  %add.i886 = add i32 %355, %add129
  %sub.i902 = add i32 %add.i886, %mul.i884
  %add1311100 = add i32 %sub.i902, %cond12.neg34.i901
  %sub1321104 = add i32 %cond121, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub1321104)
  %cmp.i.i919 = icmp ugt i32 %sub1321104, 63
  br i1 %cmp.i.i919, label %cond.true.i.i922, label %cond.false.i.i925

ZSTD_litLengthPrice.exit905:                      ; preds = %if.then.i865
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i22.i872 = shl nuw nsw i32 %347, 8
  %mul.i23.i873 = xor i32 %xor.i.i22.i872, 7936
  %add131 = add i32 %add1291094, %mul.i23.i873
  %362 = call i32 @llvm.ctlz.i32(i32 %cond121, i1 false) #8, !range !23
  %xor.i.i22.i916 = shl nuw nsw i32 %362, 8
  %mul.i23.i917 = xor i32 %xor.i.i22.i916, 7936
  br label %ZSTD_litLengthPrice.exit949

cond.true.i.i922:                                 ; preds = %ZSTD_litLengthPrice.exit905.thread
  call void @__sanitizer_cov_trace_pc() #10
  %363 = call i32 @llvm.ctlz.i32(i32 %sub1321104, i1 true) #8, !range !23
  %add.i24.i921 = sub nuw nsw i32 50, %363
  br label %ZSTD_LLcode.exit.i935

cond.false.i.i925:                                ; preds = %ZSTD_litLengthPrice.exit905.thread
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i923 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %sub1321104
  %364 = ptrtoint ptr %arrayidx.i.i923 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx.i.i923, align 1
  %conv.i.i924 = zext i8 %365 to i32
  br label %ZSTD_LLcode.exit.i935

ZSTD_LLcode.exit.i935:                            ; preds = %cond.false.i.i925, %cond.true.i.i922
  %cond.i.i926 = phi i32 [ %add.i24.i921, %cond.true.i.i922 ], [ %conv.i.i924, %cond.false.i.i925 ]
  %arrayidx.i927 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %cond.i.i926
  %366 = ptrtoint ptr %arrayidx.i927 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx.i927, align 4
  %mul.i928 = shl i32 %367, 8
  %368 = ptrtoint ptr %litLengthSumBasePrice.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %litLengthSumBasePrice.i, align 4
  %add.i930 = add i32 %mul.i928, %369
  %370 = ptrtoint ptr %litLengthFreq8.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %litLengthFreq8.i, align 4
  %arrayidx9.i933 = getelementptr i32, ptr %371, i32 %cond.i.i926
  %372 = ptrtoint ptr %arrayidx9.i933 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx9.i933, align 4
  %add.i31.i934 = add i32 %373, 1
  %374 = call i32 @llvm.ctlz.i32(i32 %add.i31.i934, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false7.i944, label %cond.true4.i941

cond.true4.i941:                                  ; preds = %ZSTD_LLcode.exit.i935
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i26.i936 = xor i32 %374, 31
  %mul.i27.neg.i937 = mul nsw i32 %xor.i.i26.i936, -256
  %shl.i28.i938 = shl i32 %add.i31.i934, 8
  %shr.i29.i939 = lshr i32 %shl.i28.i938, %xor.i.i26.i936
  %add1.i30.neg.i940 = sub i32 %mul.i27.neg.i937, %shr.i29.i939
  br label %cond.end11.i947

cond.false7.i944:                                 ; preds = %ZSTD_LLcode.exit.i935
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i32.i942 = shl nuw nsw i32 %374, 8
  %375 = xor i32 %xor.i.i32.i942, -7937
  %mul.i33.neg.i943 = add nsw i32 %375, 1
  br label %cond.end11.i947

cond.end11.i947:                                  ; preds = %cond.false7.i944, %cond.true4.i941
  %cond12.neg34.i945 = phi i32 [ %add1.i30.neg.i940, %cond.true4.i941 ], [ %mul.i33.neg.i943, %cond.false7.i944 ]
  %sub.i946 = add i32 %add.i930, %cond12.neg34.i945
  br label %ZSTD_litLengthPrice.exit949

ZSTD_litLengthPrice.exit949:                      ; preds = %cond.end11.i947, %ZSTD_litLengthPrice.exit905, %cond.true.i871
  %add1311102 = phi i32 [ %add1311100, %cond.end11.i947 ], [ %add1311105, %cond.true.i871 ], [ %add131, %ZSTD_litLengthPrice.exit905 ]
  %retval.0.i948 = phi i32 [ %sub.i946, %cond.end11.i947 ], [ %add1.i.i914, %cond.true.i871 ], [ %mul.i23.i917, %ZSTD_litLengthPrice.exit905 ]
  %sub134 = sub i32 %add1311102, %retval.0.i948
  %arrayidx135 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209
  %376 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub134, i32 %377)
  %cmp137.not = icmp sgt i32 %sub134, %377
  br i1 %cmp137.not, label %ZSTD_litLengthPrice.exit949.if.end148_crit_edge, label %if.then139

ZSTD_litLengthPrice.exit949.if.end148_crit_edge:  ; preds = %ZSTD_litLengthPrice.exit949
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then139:                                       ; preds = %ZSTD_litLengthPrice.exit949
  call void @__sanitizer_cov_trace_pc() #10
  %mlen141 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 2
  %378 = ptrtoint ptr %mlen141 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %mlen141, align 4
  %off143 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 1
  %379 = ptrtoint ptr %off143 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %off143, align 4
  %litlen145 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 3
  %380 = ptrtoint ptr %litlen145 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %cond121, ptr %litlen145, align 4
  %381 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %sub134, ptr %arrayidx135, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then139, %ZSTD_litLengthPrice.exit949.if.end148_crit_edge
  %mlen150 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 2
  %382 = ptrtoint ptr %mlen150 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %mlen150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %cmp151.not = icmp eq i32 %383, 0
  br i1 %cmp151.not, label %if.else168, label %if.then153

if.then153:                                       ; preds = %if.end148
  %sub156 = sub i32 %cur.21209, %383
  %rep158 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %sub156, i32 4
  %off160 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 1
  %384 = ptrtoint ptr %off160 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %off160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %385)
  %cmp.i950 = icmp ugt i32 %385, 2
  br i1 %cmp.i950, label %if.then.i953, label %if.else.i955

if.then.i953:                                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i951 = getelementptr i32, ptr %rep158, i32 1
  %sub.i952 = add i32 %385, -2
  br label %ZSTD_updateRep.exit

if.else.i955:                                     ; preds = %if.then153
  %litlen162 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 3
  %386 = ptrtoint ptr %litlen162 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %litlen162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %cmp163 = icmp eq i32 %387, 0
  %conv164 = zext i1 %cmp163 to i32
  %add.i954 = add nuw nsw i32 %385, %conv164
  %388 = zext i32 %add.i954 to i64
  call void @__sanitizer_cov_trace_switch(i64 %388, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %add.i954, label %cond.false.i957 [
    i32 0, label %if.else28.i
    i32 3, label %cond.true.i956
  ]

cond.true.i956:                                   ; preds = %if.else.i955
  call void @__sanitizer_cov_trace_pc() #10
  %389 = ptrtoint ptr %rep158 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %rep158, align 4, !noalias !24
  %sub12.i = add i32 %390, -1
  br label %cond.end.i959

cond.false.i957:                                  ; preds = %if.else.i955
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i = getelementptr i32, ptr %rep158, i32 %add.i954
  %391 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx13.i, align 4, !noalias !24
  br label %cond.end.i959

cond.end.i959:                                    ; preds = %cond.false.i957, %cond.true.i956
  %cond.i958 = phi i32 [ %sub12.i, %cond.true.i956 ], [ %392, %cond.false.i957 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i954)
  %cmp14.i = icmp ugt i32 %add.i954, 1
  %cond20.in.v.i = select i1 %cmp14.i, i32 1, i32 2
  %cond20.in.i = getelementptr i32, ptr %rep158, i32 %cond20.in.v.i
  br label %ZSTD_updateRep.exit

if.else28.i:                                      ; preds = %if.else.i955
  call void @__sanitizer_cov_trace_pc() #10
  %393 = ptrtoint ptr %rep158 to i32
  call void @__asan_load4_noabort(i32 %393)
  %newReps.sroa.0.0.copyload1064 = load i32, ptr %rep158, align 4
  %newReps.sroa.7.0.rep158.sroa_idx = getelementptr inbounds i8, ptr %rep158, i32 4
  %newReps.sroa.10.0.rep158.sroa_idx = getelementptr inbounds i8, ptr %rep158, i32 8
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %if.else28.i, %cond.end.i959, %if.then.i953
  %newReps.sroa.10.0.in = phi ptr [ %arrayidx.i951, %if.then.i953 ], [ %cond20.in.i, %cond.end.i959 ], [ %newReps.sroa.10.0.rep158.sroa_idx, %if.else28.i ]
  %newReps.sroa.7.0.in = phi ptr [ %rep158, %if.then.i953 ], [ %rep158, %cond.end.i959 ], [ %newReps.sroa.7.0.rep158.sroa_idx, %if.else28.i ]
  %newReps.sroa.0.0 = phi i32 [ %sub.i952, %if.then.i953 ], [ %cond.i958, %cond.end.i959 ], [ %newReps.sroa.0.0.copyload1064, %if.else28.i ]
  %394 = ptrtoint ptr %newReps.sroa.7.0.in to i32
  call void @__asan_load4_noabort(i32 %394)
  %newReps.sroa.7.0 = load i32, ptr %newReps.sroa.7.0.in, align 4
  %395 = ptrtoint ptr %newReps.sroa.10.0.in to i32
  call void @__asan_load4_noabort(i32 %395)
  %newReps.sroa.10.0 = load i32, ptr %newReps.sroa.10.0.in, align 4
  %rep166 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 4
  %396 = ptrtoint ptr %rep166 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %newReps.sroa.0.0, ptr %rep166, align 4
  %newReps.sroa.7.0.rep166.sroa_idx = getelementptr inbounds i8, ptr %rep166, i32 4
  %397 = ptrtoint ptr %newReps.sroa.7.0.rep166.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %newReps.sroa.7.0, ptr %newReps.sroa.7.0.rep166.sroa_idx, align 4
  %newReps.sroa.10.0.rep166.sroa_idx = getelementptr inbounds i8, ptr %rep166, i32 8
  %398 = ptrtoint ptr %newReps.sroa.10.0.rep166.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %newReps.sroa.10.0, ptr %newReps.sroa.10.0.rep166.sroa_idx, align 4
  br label %if.end176

if.else168:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %rep170 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 4
  %rep174 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %sub109, i32 4
  %399 = call ptr @memcpy(ptr %rep170, ptr %rep174, i32 12)
  br label %if.end176

if.end176:                                        ; preds = %if.else168, %ZSTD_updateRep.exit
  %cmp177 = icmp ugt ptr %add.ptr107, %add.ptr1
  br i1 %cmp177, label %if.end176.for.inc348_crit_edge, label %if.end180

if.end176.for.inc348_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc348

if.end180:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_cmp4(i32 %cur.21209, i32 %last_pos.21212)
  %cmp181 = icmp eq i32 %cur.21209, %last_pos.21212
  br i1 %cmp181, label %if.end180.for.end350_crit_edge, label %if.end184

if.end180.for.end350_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end350

if.end184:                                        ; preds = %if.end180
  br i1 %tobool3.not.i, label %land.lhs.true, label %if.end184.if.end196_crit_edge

if.end184.if.end196_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

land.lhs.true:                                    ; preds = %if.end184
  %add187 = add i32 %cur.21209, 1
  %arrayidx188 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add187
  %400 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx188, align 4
  %402 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx135, align 4
  %add192 = add i32 %403, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %401, i32 %add192)
  %cmp193.not = icmp sgt i32 %401, %add192
  br i1 %cmp193.not, label %land.lhs.true.if.end196_crit_edge, label %land.lhs.true.for.inc348_crit_edge

land.lhs.true.for.inc348_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc348

land.lhs.true.if.end196_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.end196:                                        ; preds = %land.lhs.true.if.end196_crit_edge, %if.end184.if.end196_crit_edge
  %404 = ptrtoint ptr %mlen150 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %mlen150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %cmp200 = icmp ne i32 %405, 0
  %conv201 = zext i1 %cmp200 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %cmp205 = icmp eq i32 %405, 0
  br i1 %cmp205, label %cond.true207, label %if.end196.cond.end211_crit_edge

if.end196.cond.end211_crit_edge:                  ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end211

cond.true207:                                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  %litlen209 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 3
  %406 = ptrtoint ptr %litlen209 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %litlen209, align 4
  br label %cond.end211

cond.end211:                                      ; preds = %cond.true207, %if.end196.cond.end211_crit_edge
  %cond212 = phi i32 [ %407, %cond.true207 ], [ 0, %if.end196.cond.end211_crit_edge ]
  %408 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx135, align 4
  %410 = ptrtoint ptr %priceType.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %priceType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %411)
  %cmp.i961 = icmp eq i32 %411, 1
  br i1 %cmp.i961, label %cond.end211.ZSTD_litLengthPrice.exit991_crit_edge, label %if.end.i966

cond.end211.ZSTD_litLengthPrice.exit991_crit_edge: ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_litLengthPrice.exit991

if.end.i966:                                      ; preds = %cond.end211
  %412 = ptrtoint ptr %litLengthSumBasePrice.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %litLengthSumBasePrice.i, align 4
  %414 = ptrtoint ptr %litLengthFreq8.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %litLengthFreq8.i, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %415, align 4
  %add.i31.i976 = add i32 %417, 1
  %418 = call i32 @llvm.ctlz.i32(i32 %add.i31.i976, i1 false) #8, !range !23
  br i1 %tobool3.not.i, label %cond.false7.i986, label %cond.true4.i983

cond.true4.i983:                                  ; preds = %if.end.i966
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i26.i978 = xor i32 %418, 31
  %mul.i27.neg.i979 = mul nsw i32 %xor.i.i26.i978, -256
  %shl.i28.i980 = shl i32 %add.i31.i976, 8
  %shr.i29.i981 = lshr i32 %shl.i28.i980, %xor.i.i26.i978
  %add1.i30.neg.i982 = sub i32 %mul.i27.neg.i979, %shr.i29.i981
  br label %cond.end11.i989

cond.false7.i986:                                 ; preds = %if.end.i966
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i32.i984 = shl nuw nsw i32 %418, 8
  %419 = xor i32 %xor.i.i32.i984, -7937
  %mul.i33.neg.i985 = add nsw i32 %419, 1
  br label %cond.end11.i989

cond.end11.i989:                                  ; preds = %cond.false7.i986, %cond.true4.i983
  %cond12.neg34.i987 = phi i32 [ %add1.i30.neg.i982, %cond.true4.i983 ], [ %mul.i33.neg.i985, %cond.false7.i986 ]
  %sub.i988 = add i32 %cond12.neg34.i987, %413
  br label %ZSTD_litLengthPrice.exit991

ZSTD_litLengthPrice.exit991:                      ; preds = %cond.end11.i989, %cond.end211.ZSTD_litLengthPrice.exit991_crit_edge
  %retval.0.i990 = phi i32 [ %sub.i988, %cond.end11.i989 ], [ %spec.select1177, %cond.end211.ZSTD_litLengthPrice.exit991_crit_edge ]
  %add216 = add i32 %retval.0.i990, %409
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbMatches217) #8
  %rep219 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 4
  %420 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %base2, align 4
  %422 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %nextToUpdate, align 4
  %add.ptr.i994 = getelementptr i8, ptr %421, i32 %423
  %cmp.i995 = icmp ugt ptr %add.ptr.i994, %add.ptr107
  br i1 %cmp.i995, label %ZSTD_litLengthPrice.exit991.ZSTD_BtGetAllMatches.exit1005_crit_edge, label %if.end.i997

ZSTD_litLengthPrice.exit991.ZSTD_BtGetAllMatches.exit1005_crit_edge: ; preds = %ZSTD_litLengthPrice.exit991
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_BtGetAllMatches.exit1005

if.end.i997:                                      ; preds = %ZSTD_litLengthPrice.exit991
  %424 = ptrtoint ptr %minMatch7 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %minMatch7, align 4
  call fastcc void @ZSTD_updateTree_internal(ptr noundef %ms, ptr noundef %add.ptr107, ptr noundef %add.ptr, i32 noundef %425, i32 noundef %dictMode) #8
  %switch.tableidx1253 = add i32 %425, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx1253)
  %426 = icmp ult i32 %switch.tableidx1253, 5
  br i1 %426, label %switch.lookup1252, label %if.end.i997.cleanup.sink.split.i1003_crit_edge

if.end.i997.cleanup.sink.split.i1003_crit_edge:   ; preds = %if.end.i997
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i1003

switch.lookup1252:                                ; preds = %if.end.i997
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep1254 = getelementptr inbounds [5 x i32], ptr @switch.table.ZSTD_compressBlock_opt_generic.1, i32 0, i32 %switch.tableidx1253
  %427 = ptrtoint ptr %switch.gep1254 to i32
  call void @__asan_load4_noabort(i32 %427)
  %switch.load1255 = load i32, ptr %switch.gep1254, align 4
  br label %cleanup.sink.split.i1003

cleanup.sink.split.i1003:                         ; preds = %switch.lookup1252, %if.end.i997.cleanup.sink.split.i1003_crit_edge
  %.sink.i1001 = phi i32 [ %switch.load1255, %switch.lookup1252 ], [ 4, %if.end.i997.cleanup.sink.split.i1003_crit_edge ]
  %call7.i1002 = call fastcc i32 @ZSTD_insertBtAndGetAllMatches(ptr noundef %15, ptr noundef %ms, ptr noundef nonnull %nextToUpdate3, ptr noundef %add.ptr107, ptr noundef %add.ptr, i32 noundef %dictMode, ptr noundef %rep219, i32 noundef %conv201, i32 noundef %cond9, i32 noundef %.sink.i1001) #8
  br label %ZSTD_BtGetAllMatches.exit1005

ZSTD_BtGetAllMatches.exit1005:                    ; preds = %cleanup.sink.split.i1003, %ZSTD_litLengthPrice.exit991.ZSTD_BtGetAllMatches.exit1005_crit_edge
  %retval.0.i1004 = phi i32 [ 0, %ZSTD_litLengthPrice.exit991.ZSTD_BtGetAllMatches.exit1005_crit_edge ], [ %call7.i1002, %cleanup.sink.split.i1003 ]
  %428 = ptrtoint ptr %nbMatches217 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %retval.0.i1004, ptr %nbMatches217, align 4
  %sub.ptr.lhs.cast223 = ptrtoint ptr %add.ptr107 to i32
  %sub.ptr.sub225 = sub i32 %sub.ptr.lhs.cast223, %sub.ptr.lhs.cast
  %sub.ptr.sub228 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.lhs.cast223
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %optLdm, ptr noundef %15, ptr noundef nonnull %nbMatches217, i32 noundef %sub.ptr.sub225, i32 noundef %sub.ptr.sub228)
  %429 = ptrtoint ptr %nbMatches217 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %nbMatches217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %tobool229.not = icmp eq i32 %430, 0
  br i1 %tobool229.not, label %ZSTD_BtGetAllMatches.exit1005.cleanup345.thread1141_crit_edge, label %if.end231

ZSTD_BtGetAllMatches.exit1005.cleanup345.thread1141_crit_edge: ; preds = %ZSTD_BtGetAllMatches.exit1005
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup345.thread1141

if.end231:                                        ; preds = %ZSTD_BtGetAllMatches.exit1005
  %sub233 = add i32 %430, -1
  %len235 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %sub233, i32 1
  %431 = ptrtoint ptr %len235 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %len235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %432, i32 %6)
  %cmp236 = icmp ugt i32 %432, %6
  %add238 = add i32 %432, %cur.21209
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add238)
  %cmp239 = icmp ugt i32 %add238, 4095
  %or.cond = select i1 %cmp236, i1 true, i1 %cmp239
  br i1 %or.cond, label %if.then241, label %if.end231.for.body272_crit_edge

if.end231.for.body272_crit_edge:                  ; preds = %if.end231
  br label %for.body272

if.then241:                                       ; preds = %if.end231
  %arrayidx244 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %sub233
  %433 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx244, align 4
  %435 = ptrtoint ptr %mlen150 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %mlen150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %cmp250 = icmp eq i32 %436, 0
  br i1 %cmp250, label %cond.true252, label %if.then241.cleanup345_crit_edge

if.then241.cleanup345_crit_edge:                  ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup345

cond.true252:                                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  %litlen254 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.21209, i32 3
  %437 = ptrtoint ptr %litlen254 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %litlen254, align 4
  br label %cleanup345

for.body272:                                      ; preds = %for.end333.for.body272_crit_edge, %if.end231.for.body272_crit_edge
  %matchNb222.01205 = phi i32 [ %inc335, %for.end333.for.body272_crit_edge ], [ 0, %if.end231.for.body272_crit_edge ]
  %last_pos.41204 = phi i32 [ %last_pos.5.lcssa, %for.end333.for.body272_crit_edge ], [ %last_pos.21212, %if.end231.for.body272_crit_edge ]
  %arrayidx274 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %matchNb222.01205
  %439 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %arrayidx274, align 4
  %len277 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %matchNb222.01205, i32 1
  %441 = ptrtoint ptr %len277 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %len277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matchNb222.01205)
  %cmp278.not = icmp eq i32 %matchNb222.01205, 0
  br i1 %cmp278.not, label %for.body272.cond.end286_crit_edge, label %cond.true280

for.body272.cond.end286_crit_edge:                ; preds = %for.body272
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end286

cond.true280:                                     ; preds = %for.body272
  call void @__sanitizer_cov_trace_pc() #10
  %sub281 = add i32 %matchNb222.01205, -1
  %len283 = getelementptr %struct.ZSTD_match_t, ptr %15, i32 %sub281, i32 1
  %443 = ptrtoint ptr %len283 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %len283, align 4
  %add284 = add i32 %444, 1
  br label %cond.end286

cond.end286:                                      ; preds = %cond.true280, %for.body272.cond.end286_crit_edge
  %cond287 = phi i32 [ %add284, %cond.true280 ], [ %cond9, %for.body272.cond.end286_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %442, i32 %cond287)
  %cmp290.not1196 = icmp ult i32 %442, %cond287
  br i1 %cmp290.not1196, label %cond.end286.for.end333_crit_edge, label %cond.end286.for.body292_crit_edge

cond.end286.for.body292_crit_edge:                ; preds = %cond.end286
  br label %for.body292

cond.end286.for.end333_crit_edge:                 ; preds = %cond.end286
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end333

for.body292:                                      ; preds = %for.inc332.for.body292_crit_edge, %cond.end286.for.body292_crit_edge
  %mlen288.01199 = phi i32 [ %dec, %for.inc332.for.body292_crit_edge ], [ %442, %cond.end286.for.body292_crit_edge ]
  %last_pos.51197 = phi i32 [ %last_pos.7, %for.inc332.for.body292_crit_edge ], [ %last_pos.41204, %cond.end286.for.body292_crit_edge ]
  %add294 = add i32 %mlen288.01199, %cur.21209
  %call296 = call fastcc i32 @ZSTD_getMatchPrice(i32 noundef %440, i32 noundef %mlen288.01199, ptr noundef %opt, i32 noundef %optLevel)
  %add297 = add i32 %add216, %call296
  call void @__sanitizer_cov_trace_cmp4(i32 %add294, i32 %last_pos.51197)
  %cmp298 = icmp ugt i32 %add294, %last_pos.51197
  br i1 %cmp298, label %for.body292.while.body309_crit_edge, label %lor.lhs.false300

for.body292.while.body309_crit_edge:              ; preds = %for.body292
  br label %while.body309

lor.lhs.false300:                                 ; preds = %for.body292
  %arrayidx301 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add294
  %445 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %arrayidx301, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add297, i32 %446)
  %cmp303 = icmp slt i32 %add297, %446
  br i1 %cmp303, label %lor.lhs.false300.while.end_crit_edge, label %if.else322

lor.lhs.false300.while.end_crit_edge:             ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body309:                                    ; preds = %while.body309.while.body309_crit_edge, %for.body292.while.body309_crit_edge
  %last_pos.61194 = phi i32 [ %add310, %while.body309.while.body309_crit_edge ], [ %last_pos.51197, %for.body292.while.body309_crit_edge ]
  %add310 = add nuw i32 %last_pos.61194, 1
  %arrayidx311 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add310
  %447 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 1073741824, ptr %arrayidx311, align 4
  %cmp307 = icmp ult i32 %add310, %add294
  br i1 %cmp307, label %while.body309.while.body309_crit_edge, label %while.body309.while.end_crit_edge

while.body309.while.end_crit_edge:                ; preds = %while.body309
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body309.while.body309_crit_edge:            ; preds = %while.body309
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body309

while.end:                                        ; preds = %while.body309.while.end_crit_edge, %lor.lhs.false300.while.end_crit_edge
  %last_pos.6.lcssa = phi i32 [ %last_pos.51197, %lor.lhs.false300.while.end_crit_edge ], [ %add310, %while.body309.while.end_crit_edge ]
  %arrayidx314 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add294
  %mlen315 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add294, i32 2
  %448 = ptrtoint ptr %mlen315 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %mlen288.01199, ptr %mlen315, align 4
  %off317 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add294, i32 1
  %449 = ptrtoint ptr %off317 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %440, ptr %off317, align 4
  %litlen319 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add294, i32 3
  %450 = ptrtoint ptr %litlen319 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %cond212, ptr %litlen319, align 4
  %451 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %add297, ptr %arrayidx314, align 4
  br label %for.inc332

if.else322:                                       ; preds = %lor.lhs.false300
  br i1 %tobool3.not.i, label %if.else322.for.end333_crit_edge, label %if.else322.for.inc332_crit_edge

if.else322.for.inc332_crit_edge:                  ; preds = %if.else322
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc332

if.else322.for.end333_crit_edge:                  ; preds = %if.else322
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end333

for.inc332:                                       ; preds = %if.else322.for.inc332_crit_edge, %while.end
  %last_pos.7 = phi i32 [ %last_pos.6.lcssa, %while.end ], [ %last_pos.51197, %if.else322.for.inc332_crit_edge ]
  %dec = add i32 %mlen288.01199, -1
  %cmp290.not = icmp ult i32 %dec, %cond287
  br i1 %cmp290.not, label %for.inc332.for.end333_crit_edge, label %for.inc332.for.body292_crit_edge

for.inc332.for.body292_crit_edge:                 ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body292

for.inc332.for.end333_crit_edge:                  ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end333

for.end333:                                       ; preds = %for.inc332.for.end333_crit_edge, %if.else322.for.end333_crit_edge, %cond.end286.for.end333_crit_edge
  %last_pos.5.lcssa = phi i32 [ %last_pos.41204, %cond.end286.for.end333_crit_edge ], [ %last_pos.51197, %if.else322.for.end333_crit_edge ], [ %last_pos.7, %for.inc332.for.end333_crit_edge ]
  %inc335 = add nuw i32 %matchNb222.01205, 1
  %exitcond1242.not = icmp eq i32 %inc335, %430
  br i1 %exitcond1242.not, label %for.end333.cleanup345.thread1141_crit_edge, label %for.end333.for.body272_crit_edge

for.end333.for.body272_crit_edge:                 ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body272

for.end333.cleanup345.thread1141_crit_edge:       ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup345.thread1141

cleanup345.thread1141:                            ; preds = %for.end333.cleanup345.thread1141_crit_edge, %ZSTD_BtGetAllMatches.exit1005.cleanup345.thread1141_crit_edge
  %last_pos.10.ph = phi i32 [ %last_pos.21212, %ZSTD_BtGetAllMatches.exit1005.cleanup345.thread1141_crit_edge ], [ %last_pos.5.lcssa, %for.end333.cleanup345.thread1141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbMatches217) #8
  br label %for.inc348

cleanup345:                                       ; preds = %cond.true252, %if.then241.cleanup345_crit_edge
  %cond257 = phi i32 [ %438, %cond.true252 ], [ 0, %if.then241.cleanup345_crit_edge ]
  %sub258 = sub i32 %cur.21209, %cond257
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub258)
  %cmp261 = icmp ugt i32 %sub258, 4096
  %spec.select798 = select i1 %cmp261, i32 0, i32 %sub258
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbMatches217) #8
  br label %_shortestPath

for.inc348:                                       ; preds = %cleanup345.thread1141, %land.lhs.true.for.inc348_crit_edge, %if.end176.for.inc348_crit_edge
  %last_pos.111132 = phi i32 [ %last_pos.10.ph, %cleanup345.thread1141 ], [ %last_pos.21212, %if.end176.for.inc348_crit_edge ], [ %last_pos.21212, %land.lhs.true.for.inc348_crit_edge ]
  %inc349 = add i32 %cur.21209, 1
  %cmp104.not = icmp ugt i32 %inc349, %last_pos.111132
  br i1 %cmp104.not, label %for.inc348.for.end350_crit_edge, label %for.inc348.for.body106_crit_edge

for.inc348.for.body106_crit_edge:                 ; preds = %for.inc348
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body106

for.inc348.for.end350_crit_edge:                  ; preds = %for.inc348
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end350

for.end350:                                       ; preds = %for.inc348.for.end350_crit_edge, %if.end180.for.end350_crit_edge, %for.cond68.cleanup98_crit_edge.for.end350_crit_edge
  %last_pos.2.lcssa = phi i32 [ 0, %for.cond68.cleanup98_crit_edge.for.end350_crit_edge ], [ %last_pos.21212, %if.end180.for.end350_crit_edge ], [ %last_pos.111132, %for.inc348.for.end350_crit_edge ]
  %arrayidx351 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %last_pos.2.lcssa
  %452 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load4_noabort(i32 %452)
  %lastSequence.sroa.0.0.copyload = load i32, ptr %arrayidx351, align 4
  %lastSequence.sroa.9.0.arrayidx351.sroa_idx = getelementptr inbounds i8, ptr %arrayidx351, i32 4
  %453 = ptrtoint ptr %lastSequence.sroa.9.0.arrayidx351.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %453)
  %lastSequence.sroa.9.0.copyload = load i32, ptr %lastSequence.sroa.9.0.arrayidx351.sroa_idx, align 4
  %lastSequence.sroa.17.0.arrayidx351.sroa_idx = getelementptr inbounds i8, ptr %arrayidx351, i32 8
  %454 = ptrtoint ptr %lastSequence.sroa.17.0.arrayidx351.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %454)
  %lastSequence.sroa.17.0.copyload = load i32, ptr %lastSequence.sroa.17.0.arrayidx351.sroa_idx, align 4
  %lastSequence.sroa.25.0.arrayidx351.sroa_idx = getelementptr inbounds i8, ptr %arrayidx351, i32 12
  %455 = ptrtoint ptr %lastSequence.sroa.25.0.arrayidx351.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %455)
  %lastSequence.sroa.25.0.copyload = load i32, ptr %lastSequence.sroa.25.0.arrayidx351.sroa_idx, align 4
  %lastSequence.sroa.33.0.arrayidx351.sroa_idx = getelementptr inbounds i8, ptr %arrayidx351, i32 16
  %456 = ptrtoint ptr %lastSequence.sroa.33.0.arrayidx351.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %456)
  %lastSequence.sroa.33.0.copyload = load i32, ptr %lastSequence.sroa.33.0.arrayidx351.sroa_idx, align 4
  %lastSequence.sroa.38.0.arrayidx351.sroa_idx = getelementptr inbounds i8, ptr %arrayidx351, i32 20
  %457 = ptrtoint ptr %lastSequence.sroa.38.0.arrayidx351.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %457)
  %lastSequence.sroa.38.0.copyload = load i32, ptr %lastSequence.sroa.38.0.arrayidx351.sroa_idx, align 4
  %lastSequence.sroa.43.0.arrayidx351.sroa_idx = getelementptr inbounds i8, ptr %arrayidx351, i32 24
  %458 = ptrtoint ptr %lastSequence.sroa.43.0.arrayidx351.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %458)
  %lastSequence.sroa.43.0.copyload = load i32, ptr %lastSequence.sroa.43.0.arrayidx351.sroa_idx, align 4
  %add.i1007 = add i32 %lastSequence.sroa.25.0.copyload, %lastSequence.sroa.17.0.copyload
  %459 = call i32 @llvm.usub.sat.i32(i32 %last_pos.2.lcssa, i32 %add.i1007)
  br label %_shortestPath

_shortestPath:                                    ; preds = %for.end350, %cleanup345
  %lastSequence.sroa.43.1 = phi i32 [ %lastSequence.sroa.43.01229, %cleanup345 ], [ %lastSequence.sroa.43.0.copyload, %for.end350 ]
  %lastSequence.sroa.38.1 = phi i32 [ %lastSequence.sroa.38.01230, %cleanup345 ], [ %lastSequence.sroa.38.0.copyload, %for.end350 ]
  %lastSequence.sroa.33.1 = phi i32 [ %lastSequence.sroa.33.01231, %cleanup345 ], [ %lastSequence.sroa.33.0.copyload, %for.end350 ]
  %lastSequence.sroa.25.7 = phi i32 [ %cond212, %cleanup345 ], [ %lastSequence.sroa.25.0.copyload, %for.end350 ]
  %lastSequence.sroa.17.7 = phi i32 [ %432, %cleanup345 ], [ %lastSequence.sroa.17.0.copyload, %for.end350 ]
  %lastSequence.sroa.9.7 = phi i32 [ %434, %cleanup345 ], [ %lastSequence.sroa.9.0.copyload, %for.end350 ]
  %lastSequence.sroa.0.1 = phi i32 [ %lastSequence.sroa.0.01232, %cleanup345 ], [ %lastSequence.sroa.0.0.copyload, %for.end350 ]
  %cur.7 = phi i32 [ %spec.select798, %cleanup345 ], [ %459, %for.end350 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lastSequence.sroa.17.7)
  %cmp362.not = icmp eq i32 %lastSequence.sroa.17.7, 0
  br i1 %cmp362.not, label %if.else372, label %_shortestPath.if.then364_crit_edge

_shortestPath.if.then364_crit_edge:               ; preds = %_shortestPath
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then364

if.then364:                                       ; preds = %_shortestPath.if.then364_crit_edge, %_shortestPath.thread
  %cur.71176 = phi i32 [ 0, %_shortestPath.thread ], [ %cur.7, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.0.11174 = phi i32 [ %lastSequence.sroa.0.01232, %_shortestPath.thread ], [ %lastSequence.sroa.0.1, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.9.71172 = phi i32 [ %307, %_shortestPath.thread ], [ %lastSequence.sroa.9.7, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.17.71170 = phi i32 [ %305, %_shortestPath.thread ], [ %lastSequence.sroa.17.7, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.25.71167 = phi i32 [ %sub.ptr.sub25, %_shortestPath.thread ], [ %lastSequence.sroa.25.7, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.33.11166 = phi i32 [ %lastSequence.sroa.33.01231, %_shortestPath.thread ], [ %lastSequence.sroa.33.1, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.38.11164 = phi i32 [ %lastSequence.sroa.38.01230, %_shortestPath.thread ], [ %lastSequence.sroa.38.1, %_shortestPath.if.then364_crit_edge ]
  %lastSequence.sroa.43.11162 = phi i32 [ %lastSequence.sroa.43.01229, %_shortestPath.thread ], [ %lastSequence.sroa.43.1, %_shortestPath.if.then364_crit_edge ]
  %rep366 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.71176, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lastSequence.sroa.9.71172)
  %cmp.i1009 = icmp ugt i32 %lastSequence.sroa.9.71172, 2
  br i1 %cmp.i1009, label %if.then.i1012, label %if.else.i1014

if.then.i1012:                                    ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i1010 = getelementptr i32, ptr %rep366, i32 1
  %sub.i1011 = add i32 %lastSequence.sroa.9.71172, -2
  br label %ZSTD_updateRep.exit1026

if.else.i1014:                                    ; preds = %if.then364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lastSequence.sroa.25.71167)
  %cmp370 = icmp eq i32 %lastSequence.sroa.25.71167, 0
  %conv371 = zext i1 %cmp370 to i32
  %add.i1013 = add nuw nsw i32 %lastSequence.sroa.9.71172, %conv371
  %460 = zext i32 %add.i1013 to i64
  call void @__sanitizer_cov_trace_switch(i64 %460, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %add.i1013, label %cond.false.i1018 [
    i32 0, label %if.else28.i1025
    i32 3, label %cond.true.i1016
  ]

cond.true.i1016:                                  ; preds = %if.else.i1014
  call void @__sanitizer_cov_trace_pc() #10
  %461 = ptrtoint ptr %rep366 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %rep366, align 4, !noalias !27
  %sub12.i1015 = add i32 %462, -1
  br label %cond.end.i1024

cond.false.i1018:                                 ; preds = %if.else.i1014
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i1017 = getelementptr i32, ptr %rep366, i32 %add.i1013
  %463 = ptrtoint ptr %arrayidx13.i1017 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %arrayidx13.i1017, align 4, !noalias !27
  br label %cond.end.i1024

cond.end.i1024:                                   ; preds = %cond.false.i1018, %cond.true.i1016
  %cond.i1019 = phi i32 [ %sub12.i1015, %cond.true.i1016 ], [ %464, %cond.false.i1018 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i1013)
  %cmp14.i1020 = icmp ugt i32 %add.i1013, 1
  %cond20.in.v.i1021 = select i1 %cmp14.i1020, i32 1, i32 2
  %cond20.in.i1022 = getelementptr i32, ptr %rep366, i32 %cond20.in.v.i1021
  br label %ZSTD_updateRep.exit1026

if.else28.i1025:                                  ; preds = %if.else.i1014
  call void @__sanitizer_cov_trace_pc() #10
  %465 = ptrtoint ptr %rep366 to i32
  call void @__asan_load4_noabort(i32 %465)
  %reps.sroa.0.0.copyload1061 = load i32, ptr %rep366, align 4
  %reps.sroa.7.0.rep366.sroa_idx = getelementptr inbounds i8, ptr %rep366, i32 4
  %reps.sroa.10.0.rep366.sroa_idx = getelementptr inbounds i8, ptr %rep366, i32 8
  br label %ZSTD_updateRep.exit1026

ZSTD_updateRep.exit1026:                          ; preds = %if.else28.i1025, %cond.end.i1024, %if.then.i1012
  %reps.sroa.10.0.in = phi ptr [ %arrayidx.i1010, %if.then.i1012 ], [ %cond20.in.i1022, %cond.end.i1024 ], [ %reps.sroa.10.0.rep366.sroa_idx, %if.else28.i1025 ]
  %reps.sroa.7.0.in = phi ptr [ %rep366, %if.then.i1012 ], [ %rep366, %cond.end.i1024 ], [ %reps.sroa.7.0.rep366.sroa_idx, %if.else28.i1025 ]
  %reps.sroa.0.0 = phi i32 [ %sub.i1011, %if.then.i1012 ], [ %cond.i1019, %cond.end.i1024 ], [ %reps.sroa.0.0.copyload1061, %if.else28.i1025 ]
  %466 = ptrtoint ptr %reps.sroa.7.0.in to i32
  call void @__asan_load4_noabort(i32 %466)
  %reps.sroa.7.0 = load i32, ptr %reps.sroa.7.0.in, align 4
  %467 = ptrtoint ptr %reps.sroa.10.0.in to i32
  call void @__asan_load4_noabort(i32 %467)
  %reps.sroa.10.0 = load i32, ptr %reps.sroa.10.0.in, align 4
  %468 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 %reps.sroa.0.0, ptr %rep, align 4
  %469 = ptrtoint ptr %reps.sroa.7.0.rep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %reps.sroa.7.0, ptr %reps.sroa.7.0.rep.sroa_idx, align 4
  %470 = ptrtoint ptr %reps.sroa.10.0.rep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %reps.sroa.10.0, ptr %reps.sroa.10.0.rep.sroa_idx, align 4
  br label %if.end376

if.else372:                                       ; preds = %_shortestPath
  call void @__sanitizer_cov_trace_pc() #10
  %rep374 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %cur.7, i32 4
  %471 = call ptr @memcpy(ptr %rep, ptr %rep374, i32 12)
  br label %if.end376

if.end376:                                        ; preds = %if.else372, %ZSTD_updateRep.exit1026
  %cur.71175 = phi i32 [ %cur.7, %if.else372 ], [ %cur.71176, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.0.11173 = phi i32 [ %lastSequence.sroa.0.1, %if.else372 ], [ %lastSequence.sroa.0.11174, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.9.71171 = phi i32 [ %lastSequence.sroa.9.7, %if.else372 ], [ %lastSequence.sroa.9.71172, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.17.71169 = phi i32 [ 0, %if.else372 ], [ %lastSequence.sroa.17.71170, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.25.71168 = phi i32 [ %lastSequence.sroa.25.7, %if.else372 ], [ %lastSequence.sroa.25.71167, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.33.11165 = phi i32 [ %lastSequence.sroa.33.1, %if.else372 ], [ %lastSequence.sroa.33.11166, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.38.11163 = phi i32 [ %lastSequence.sroa.38.1, %if.else372 ], [ %lastSequence.sroa.38.11164, %ZSTD_updateRep.exit1026 ]
  %lastSequence.sroa.43.11161 = phi i32 [ %lastSequence.sroa.43.1, %if.else372 ], [ %lastSequence.sroa.43.11162, %ZSTD_updateRep.exit1026 ]
  %add377 = add i32 %cur.71175, 1
  %arrayidx378 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %add377
  %472 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %lastSequence.sroa.0.11173, ptr %arrayidx378, align 4
  %lastSequence.sroa.9.0.arrayidx378.sroa_idx = getelementptr inbounds i8, ptr %arrayidx378, i32 4
  %473 = ptrtoint ptr %lastSequence.sroa.9.0.arrayidx378.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %lastSequence.sroa.9.71171, ptr %lastSequence.sroa.9.0.arrayidx378.sroa_idx, align 4
  %lastSequence.sroa.17.0.arrayidx378.sroa_idx = getelementptr inbounds i8, ptr %arrayidx378, i32 8
  %474 = ptrtoint ptr %lastSequence.sroa.17.0.arrayidx378.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %lastSequence.sroa.17.71169, ptr %lastSequence.sroa.17.0.arrayidx378.sroa_idx, align 4
  %lastSequence.sroa.25.0.arrayidx378.sroa_idx = getelementptr inbounds i8, ptr %arrayidx378, i32 12
  %475 = ptrtoint ptr %lastSequence.sroa.25.0.arrayidx378.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %lastSequence.sroa.25.71168, ptr %lastSequence.sroa.25.0.arrayidx378.sroa_idx, align 4
  %lastSequence.sroa.33.0.arrayidx378.sroa_idx = getelementptr inbounds i8, ptr %arrayidx378, i32 16
  %476 = ptrtoint ptr %lastSequence.sroa.33.0.arrayidx378.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %lastSequence.sroa.33.11165, ptr %lastSequence.sroa.33.0.arrayidx378.sroa_idx, align 4
  %lastSequence.sroa.38.0.arrayidx378.sroa_idx = getelementptr inbounds i8, ptr %arrayidx378, i32 20
  %477 = ptrtoint ptr %lastSequence.sroa.38.0.arrayidx378.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %lastSequence.sroa.38.11163, ptr %lastSequence.sroa.38.0.arrayidx378.sroa_idx, align 4
  %lastSequence.sroa.43.0.arrayidx378.sroa_idx = getelementptr inbounds i8, ptr %arrayidx378, i32 24
  %478 = ptrtoint ptr %lastSequence.sroa.43.0.arrayidx378.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %lastSequence.sroa.43.11161, ptr %lastSequence.sroa.43.0.arrayidx378.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.71175)
  %cmp380.not1215 = icmp eq i32 %cur.71175, 0
  br i1 %cmp380.not1215, label %if.end376.for.body399.preheader_crit_edge, label %if.end376.while.body382_crit_edge

if.end376.while.body382_crit_edge:                ; preds = %if.end376
  br label %while.body382

if.end376.for.body399.preheader_crit_edge:        ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body399.preheader

for.cond396.preheader:                            ; preds = %while.body382
  call void @__sanitizer_cov_trace_cmp4(i32 %dec385, i32 %add377)
  %cmp397.not1219 = icmp ugt i32 %dec385, %add377
  br i1 %cmp397.not1219, label %for.cond396.preheader.for.end423_crit_edge, label %for.cond396.preheader.for.body399.preheader_crit_edge

for.cond396.preheader.for.body399.preheader_crit_edge: ; preds = %for.cond396.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body399.preheader

for.cond396.preheader.for.end423_crit_edge:       ; preds = %for.cond396.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end423

for.body399.preheader:                            ; preds = %for.cond396.preheader.for.body399.preheader_crit_edge, %if.end376.for.body399.preheader_crit_edge
  %storePos.01224.ph = phi i32 [ 1, %if.end376.for.body399.preheader_crit_edge ], [ %dec385, %for.cond396.preheader.for.body399.preheader_crit_edge ]
  br label %for.body399

while.body382:                                    ; preds = %while.body382.while.body382_crit_edge, %if.end376.while.body382_crit_edge
  %seqPos.01217 = phi i32 [ %482, %while.body382.while.body382_crit_edge ], [ %cur.71175, %if.end376.while.body382_crit_edge ]
  %storeStart.01216 = phi i32 [ %dec385, %while.body382.while.body382_crit_edge ], [ %add377, %if.end376.while.body382_crit_edge ]
  %arrayidx383 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %seqPos.01217
  %.elt788 = getelementptr inbounds [7 x i32], ptr %arrayidx383, i32 0, i32 2
  %479 = ptrtoint ptr %.elt788 to i32
  call void @__asan_load4_noabort(i32 %479)
  %.unpack789 = load i32, ptr %.elt788, align 4
  %.elt790 = getelementptr inbounds [7 x i32], ptr %arrayidx383, i32 0, i32 3
  %480 = ptrtoint ptr %.elt790 to i32
  call void @__asan_load4_noabort(i32 %480)
  %.unpack791 = load i32, ptr %.elt790, align 4
  %add.i1027 = add i32 %.unpack791, %.unpack789
  %dec385 = add i32 %storeStart.01216, -1
  %arrayidx386 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %dec385
  %481 = call ptr @memcpy(ptr %arrayidx386, ptr %arrayidx383, i32 28)
  %482 = call i32 @llvm.usub.sat.i32(i32 %seqPos.01217, i32 %add.i1027)
  %cmp380.not.not = icmp ugt i32 %seqPos.01217, %add.i1027
  br i1 %cmp380.not.not, label %while.body382.while.body382_crit_edge, label %for.cond396.preheader

while.body382.while.body382_crit_edge:            ; preds = %while.body382
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body382

for.body399:                                      ; preds = %cleanup415.for.body399_crit_edge, %for.body399.preheader
  %storePos.01224 = phi i32 [ %inc422, %cleanup415.for.body399_crit_edge ], [ %storePos.01224.ph, %for.body399.preheader ]
  %anchor.11220 = phi ptr [ %anchor.2, %cleanup415.for.body399_crit_edge ], [ %anchor.01233, %for.body399.preheader ]
  %litlen401 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %storePos.01224, i32 3
  %483 = ptrtoint ptr %litlen401 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %litlen401, align 4
  %mlen404 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %storePos.01224, i32 2
  %485 = ptrtoint ptr %mlen404 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %mlen404, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %cmp408 = icmp eq i32 %486, 0
  br i1 %cmp408, label %if.then410, label %if.end412

if.then410:                                       ; preds = %for.body399
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr411 = getelementptr i8, ptr %anchor.11220, i32 %484
  br label %cleanup415

if.end412:                                        ; preds = %for.body399
  %add407 = add i32 %486, %484
  %off406 = getelementptr %struct.ZSTD_optimal_t, ptr %13, i32 %storePos.01224, i32 1
  %487 = ptrtoint ptr %off406 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %off406, align 4
  %489 = ptrtoint ptr %literalCompressionMode.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %literalCompressionMode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %490)
  %cmp.i.not.i1029 = icmp eq i32 %490, 2
  br i1 %cmp.i.not.i1029, label %if.end412.if.end.i1037_crit_edge, label %for.cond.preheader.i

if.end412.if.end.i1037_crit_edge:                 ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1037

for.cond.preheader.i:                             ; preds = %if.end412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %cmp37.not.i = icmp eq i32 %484, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i1034_crit_edge

for.cond.preheader.i.for.body.i1034_crit_edge:    ; preds = %for.cond.preheader.i
  br label %for.body.i1034

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i1034:                                   ; preds = %for.body.i1034.for.body.i1034_crit_edge, %for.cond.preheader.i.for.body.i1034_crit_edge
  %u.038.i = phi i32 [ %inc.i1032, %for.body.i1034.for.body.i1034_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i1034_crit_edge ]
  %491 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %opt, align 4
  %arrayidx.i1030 = getelementptr i8, ptr %anchor.11220, i32 %u.038.i
  %493 = ptrtoint ptr %arrayidx.i1030 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %arrayidx.i1030, align 1
  %idxprom.i = zext i8 %494 to i32
  %arrayidx1.i = getelementptr i32, ptr %492, i32 %idxprom.i
  %495 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx1.i, align 4
  %add.i1031 = add i32 %496, 2
  store i32 %add.i1031, ptr %arrayidx1.i, align 4
  %inc.i1032 = add nuw i32 %u.038.i, 1
  %exitcond.not.i1033 = icmp eq i32 %inc.i1032, %484
  br i1 %exitcond.not.i1033, label %for.body.i1034.for.end.i_crit_edge, label %for.body.i1034.for.body.i1034_crit_edge

for.body.i1034.for.body.i1034_crit_edge:          ; preds = %for.body.i1034
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i1034

for.body.i1034.for.end.i_crit_edge:               ; preds = %for.body.i1034
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i1034.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %mul.i1035 = shl i32 %484, 1
  %497 = ptrtoint ptr %litSum.i1036 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %litSum.i1036, align 4
  %add2.i = add i32 %498, %mul.i1035
  store i32 %add2.i, ptr %litSum.i1036, align 4
  br label %if.end.i1037

if.end.i1037:                                     ; preds = %for.end.i, %if.end412.if.end.i1037_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %484)
  %cmp.i28.i = icmp ugt i32 %484, 63
  br i1 %cmp.i28.i, label %cond.true.i.i1039, label %cond.false.i.i1041

cond.true.i.i1039:                                ; preds = %if.end.i1037
  call void @__sanitizer_cov_trace_pc() #10
  %499 = call i32 @llvm.ctlz.i32(i32 %484, i1 true) #8, !range !23
  %add.i.i1038 = sub nuw nsw i32 50, %499
  br label %ZSTD_LLcode.exit.i1049

cond.false.i.i1041:                               ; preds = %if.end.i1037
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i1040 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %484
  %500 = ptrtoint ptr %arrayidx.i.i1040 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx.i.i1040, align 1
  %conv.i29.i = zext i8 %501 to i32
  br label %ZSTD_LLcode.exit.i1049

ZSTD_LLcode.exit.i1049:                           ; preds = %cond.false.i.i1041, %cond.true.i.i1039
  %cond.i.i1042 = phi i32 [ %add.i.i1038, %cond.true.i.i1039 ], [ %conv.i29.i, %cond.false.i.i1041 ]
  %502 = ptrtoint ptr %litLengthFreq8.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %litLengthFreq8.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %503, i32 %cond.i.i1042
  %504 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx4.i, align 4
  %inc5.i = add i32 %505, 1
  store i32 %inc5.i, ptr %arrayidx4.i, align 4
  %506 = ptrtoint ptr %litLengthSum.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %litLengthSum.i, align 4
  %inc6.i = add i32 %507, 1
  store i32 %inc6.i, ptr %litLengthSum.i, align 4
  %add7.i = add i32 %488, 1
  %508 = call i32 @llvm.ctlz.i32(i32 %add7.i, i1 false) #8, !range !23
  %xor.i.i = xor i32 %508, 31
  %509 = ptrtoint ptr %offCodeFreq.i1045 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %offCodeFreq.i1045, align 4
  %arrayidx9.i1046 = getelementptr i32, ptr %510, i32 %xor.i.i
  %511 = ptrtoint ptr %arrayidx9.i1046 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx9.i1046, align 4
  %inc10.i = add i32 %512, 1
  store i32 %inc10.i, ptr %arrayidx9.i1046, align 4
  %513 = ptrtoint ptr %offCodeSum.i1047 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %offCodeSum.i1047, align 4
  %inc11.i = add i32 %514, 1
  store i32 %inc11.i, ptr %offCodeSum.i1047, align 4
  %sub.i1048 = add i32 %486, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.i1048)
  %cmp.i30.i = icmp ugt i32 %sub.i1048, 127
  br i1 %cmp.i30.i, label %cond.true.i32.i, label %cond.false.i35.i

cond.true.i32.i:                                  ; preds = %ZSTD_LLcode.exit.i1049
  call void @__sanitizer_cov_trace_pc() #10
  %515 = call i32 @llvm.ctlz.i32(i32 %sub.i1048, i1 true) #8, !range !23
  %add.i31.i1050 = sub nuw nsw i32 67, %515
  br label %ZSTD_updateStats.exit

cond.false.i35.i:                                 ; preds = %ZSTD_LLcode.exit.i1049
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i33.i = getelementptr [128 x i8], ptr @ZSTD_MLcode.ML_Code, i32 0, i32 %sub.i1048
  %516 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %arrayidx.i33.i, align 1
  %conv.i34.i = zext i8 %517 to i32
  br label %ZSTD_updateStats.exit

ZSTD_updateStats.exit:                            ; preds = %cond.false.i35.i, %cond.true.i32.i
  %cond.i36.i = phi i32 [ %add.i31.i1050, %cond.true.i32.i ], [ %conv.i34.i, %cond.false.i35.i ]
  %518 = ptrtoint ptr %matchLengthFreq.i1051 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %matchLengthFreq.i1051, align 4
  %arrayidx13.i1052 = getelementptr i32, ptr %519, i32 %cond.i36.i
  %520 = ptrtoint ptr %arrayidx13.i1052 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx13.i1052, align 4
  %inc14.i = add i32 %521, 1
  store i32 %inc14.i, ptr %arrayidx13.i1052, align 4
  %522 = ptrtoint ptr %matchLengthSum.i1053 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %matchLengthSum.i1053, align 4
  %inc15.i = add i32 %523, 1
  store i32 %inc15.i, ptr %matchLengthSum.i1053, align 4
  %add.ptr1.i = getelementptr i8, ptr %anchor.11220, i32 %484
  %cmp.not.i = icmp ugt ptr %add.ptr1.i, %add.ptr.i1054
  %524 = ptrtoint ptr %lit7.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %lit7.i, align 4
  br i1 %cmp.not.i, label %if.else.i1058, label %if.then.i1055

if.then.i1055:                                    ; preds = %ZSTD_updateStats.exit
  %526 = call ptr @memcpy(ptr %525, ptr %anchor.11220, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %484)
  %cmp2.i = icmp ugt i32 %484, 16
  %527 = ptrtoint ptr %lit7.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %lit7.i, align 4
  br i1 %cmp2.i, label %if.then3.i, label %if.end8.thread.i

if.end8.thread.i:                                 ; preds = %if.then.i1055
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1062.i = getelementptr i8, ptr %528, i32 %484
  %529 = ptrtoint ptr %lit7.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %add.ptr1062.i, ptr %lit7.i, align 4
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.then.i1055
  %add.ptr5.i = getelementptr i8, ptr %528, i32 16
  %add.ptr6.i = getelementptr i8, ptr %anchor.11220, i32 16
  %sub.i1056 = add i32 %484, -16
  %add.ptr.i.i1057 = getelementptr i8, ptr %528, i32 %484
  %530 = call ptr @memcpy(ptr %add.ptr5.i, ptr %add.ptr6.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i1056)
  %cmp5.i.i = icmp slt i32 %sub.i1056, 17
  br i1 %cmp5.i.i, label %if.then3.i.if.end8.i_crit_edge, label %if.end.i.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end.i.i:                                       ; preds = %if.then3.i
  %add.ptr7.i.i = getelementptr i8, ptr %528, i32 32
  br label %do.body9.i.i

do.body9.i.i:                                     ; preds = %do.body9.i.i.do.body9.i.i_crit_edge, %if.end.i.i
  %src.pn.i.i = phi ptr [ %add.ptr6.i, %if.end.i.i ], [ %add.ptr11.i.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %op.1.i.i = phi ptr [ %add.ptr7.i.i, %if.end.i.i ], [ %add.ptr12.i.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %ip.1.i.i = getelementptr i8, ptr %src.pn.i.i, i32 16
  %531 = call ptr @memcpy(ptr %op.1.i.i, ptr %ip.1.i.i, i32 16)
  %add.ptr10.i.i = getelementptr i8, ptr %op.1.i.i, i32 16
  %add.ptr11.i.i = getelementptr i8, ptr %src.pn.i.i, i32 32
  %532 = call ptr @memcpy(ptr %add.ptr10.i.i, ptr %add.ptr11.i.i, i32 16)
  %add.ptr12.i.i = getelementptr i8, ptr %op.1.i.i, i32 32
  %cmp15.i.i = icmp ult ptr %add.ptr12.i.i, %add.ptr.i.i1057
  br i1 %cmp15.i.i, label %do.body9.i.i.do.body9.i.i_crit_edge, label %do.body9.i.i.if.end8.i_crit_edge

do.body9.i.i.if.end8.i_crit_edge:                 ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

do.body9.i.i.do.body9.i.i_crit_edge:              ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i.i

if.else.i1058:                                    ; preds = %ZSTD_updateStats.exit
  %iend19.i.i = ptrtoint ptr %add.ptr1.i to i32
  %cmp.not.i.i = icmp ult ptr %add.ptr.i1054, %anchor.11220
  br i1 %cmp.not.i.i, label %if.else.i1058.if.end.i60.i_crit_edge, label %if.then.i.i

if.else.i1058.if.end.i60.i_crit_edge:             ; preds = %if.else.i1058
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i60.i

if.then.i.i:                                      ; preds = %if.else.i1058
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %anchor.11220 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %525, i32 %sub.ptr.sub.i.i
  %533 = call ptr @memcpy(ptr %525, ptr %anchor.11220, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.ptr.sub.i.i)
  %cmp5.i.i.i = icmp slt i32 %sub.ptr.sub.i.i, 17
  br i1 %cmp5.i.i.i, label %if.then.i.i.if.end.i60.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i60.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i60.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %add.ptr7.i.i.i = getelementptr i8, ptr %525, i32 16
  br label %do.body9.i.i.i

do.body9.i.i.i:                                   ; preds = %do.body9.i.i.i.do.body9.i.i.i_crit_edge, %if.end.i.i.i
  %src.pn.i.i.i = phi ptr [ %anchor.11220, %if.end.i.i.i ], [ %add.ptr11.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ]
  %op.1.i.i.i = phi ptr [ %add.ptr7.i.i.i, %if.end.i.i.i ], [ %add.ptr12.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ]
  %ip.1.i.i.i = getelementptr i8, ptr %src.pn.i.i.i, i32 16
  %534 = call ptr @memcpy(ptr %op.1.i.i.i, ptr %ip.1.i.i.i, i32 16)
  %add.ptr10.i.i.i = getelementptr i8, ptr %op.1.i.i.i, i32 16
  %add.ptr11.i.i.i = getelementptr i8, ptr %src.pn.i.i.i, i32 32
  %535 = call ptr @memcpy(ptr %add.ptr10.i.i.i, ptr %add.ptr11.i.i.i, i32 16)
  %add.ptr12.i.i.i = getelementptr i8, ptr %op.1.i.i.i, i32 32
  %cmp15.i.i.i = icmp ult ptr %add.ptr12.i.i.i, %add.ptr.i.i.i
  br i1 %cmp15.i.i.i, label %do.body9.i.i.i.do.body9.i.i.i_crit_edge, label %do.body9.i.i.i.if.end.i60.i_crit_edge

do.body9.i.i.i.if.end.i60.i_crit_edge:            ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i60.i

do.body9.i.i.i.do.body9.i.i.i_crit_edge:          ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i.i.i

if.end.i60.i:                                     ; preds = %do.body9.i.i.i.if.end.i60.i_crit_edge, %if.then.i.i.if.end.i60.i_crit_edge, %if.else.i1058.if.end.i60.i_crit_edge
  %ip.addr.0.i.i = phi ptr [ %add.ptr.i1054, %if.then.i.i.if.end.i60.i_crit_edge ], [ %anchor.11220, %if.else.i1058.if.end.i60.i_crit_edge ], [ %add.ptr.i1054, %do.body9.i.i.i.if.end.i60.i_crit_edge ]
  %op.addr.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.if.end.i60.i_crit_edge ], [ %525, %if.else.i1058.if.end.i60.i_crit_edge ], [ %add.ptr.i.i.i, %do.body9.i.i.i.if.end.i60.i_crit_edge ]
  %cmp416.i.i = icmp ult ptr %ip.addr.0.i.i, %add.ptr1.i
  br i1 %cmp416.i.i, label %while.body.preheader.i.i, label %if.end.i60.i.if.end8.i_crit_edge

if.end.i60.i.if.end8.i_crit_edge:                 ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

while.body.preheader.i.i:                         ; preds = %if.end.i60.i
  %ip.addr.020.i.i = ptrtoint ptr %ip.addr.0.i.i to i32
  %536 = sub i32 %iend19.i.i, %ip.addr.020.i.i
  %uglygep.i.i = getelementptr i8, ptr %ip.addr.0.i.i, i32 %536
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %op.addr.118.i.i = phi ptr [ %incdec.ptr5.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %op.addr.0.i.i, %while.body.preheader.i.i ]
  %ip.addr.117.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %ip.addr.0.i.i, %while.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ip.addr.117.i.i, i32 1
  %537 = ptrtoint ptr %ip.addr.117.i.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %ip.addr.117.i.i, align 1
  %incdec.ptr5.i.i = getelementptr i8, ptr %op.addr.118.i.i, i32 1
  %539 = ptrtoint ptr %op.addr.118.i.i to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 %538, ptr %op.addr.118.i.i, align 1
  %exitcond.not.i.i1059 = icmp eq ptr %incdec.ptr.i.i, %uglygep.i.i
  br i1 %exitcond.not.i.i1059, label %while.body.i.i.if.end8.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.if.end8.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %while.body.i.i.if.end8.i_crit_edge, %if.end.i60.i.if.end8.i_crit_edge, %do.body9.i.i.if.end8.i_crit_edge, %if.then3.i.if.end8.i_crit_edge
  %540 = ptrtoint ptr %lit7.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %lit7.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %541, i32 %484
  store ptr %add.ptr10.i, ptr %lit7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %484)
  %cmp11.i = icmp ugt i32 %484, 65535
  br i1 %cmp11.i, label %if.then12.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %542 = ptrtoint ptr %longLengthID.i to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 1, ptr %longLengthID.i, align 4
  %543 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %sequences.i, align 4
  %545 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %seqStore, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %544 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %546 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %547 = ptrtoint ptr %longLengthPos.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 %sub.ptr.div.i, ptr %longLengthPos.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge, %if.end8.thread.i
  %conv.i = trunc i32 %484 to i16
  %548 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %sequences.i, align 4
  %litLength15.i = getelementptr inbounds %struct.seqDef_s, ptr %549, i32 0, i32 1
  %550 = ptrtoint ptr %litLength15.i to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 %conv.i, ptr %litLength15.i, align 4
  %551 = load ptr, ptr %sequences.i, align 4
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %add7.i, ptr %551, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i1048)
  %cmp18.i = icmp ugt i32 %sub.i1048, 65535
  br i1 %cmp18.i, label %if.then20.i, label %if.end13.i.ZSTD_storeSeq.exit_crit_edge

if.end13.i.ZSTD_storeSeq.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_storeSeq.exit

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %553 = ptrtoint ptr %longLengthID.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 2, ptr %longLengthID.i, align 4
  %554 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %sequences.i, align 4
  %556 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %seqStore, align 4
  %sub.ptr.lhs.cast24.i = ptrtoint ptr %555 to i32
  %sub.ptr.rhs.cast25.i = ptrtoint ptr %557 to i32
  %sub.ptr.sub26.i = sub i32 %sub.ptr.lhs.cast24.i, %sub.ptr.rhs.cast25.i
  %sub.ptr.div27.i = ashr exact i32 %sub.ptr.sub26.i, 3
  %558 = ptrtoint ptr %longLengthPos.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 %sub.ptr.div27.i, ptr %longLengthPos.i, align 4
  br label %ZSTD_storeSeq.exit

ZSTD_storeSeq.exit:                               ; preds = %if.then20.i, %if.end13.i.ZSTD_storeSeq.exit_crit_edge
  %conv30.i = trunc i32 %sub.i1048 to i16
  %559 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %sequences.i, align 4
  %matchLength.i = getelementptr inbounds %struct.seqDef_s, ptr %560, i32 0, i32 2
  %561 = ptrtoint ptr %matchLength.i to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 %conv30.i, ptr %matchLength.i, align 2
  %562 = load ptr, ptr %sequences.i, align 4
  %incdec.ptr.i = getelementptr %struct.seqDef_s, ptr %562, i32 1
  store ptr %incdec.ptr.i, ptr %sequences.i, align 4
  %add.ptr414 = getelementptr i8, ptr %anchor.11220, i32 %add407
  br label %cleanup415

cleanup415:                                       ; preds = %ZSTD_storeSeq.exit, %if.then410
  %anchor.2 = phi ptr [ %anchor.11220, %if.then410 ], [ %add.ptr414, %ZSTD_storeSeq.exit ]
  %ip.3 = phi ptr [ %add.ptr411, %if.then410 ], [ %add.ptr414, %ZSTD_storeSeq.exit ]
  %inc422 = add i32 %storePos.01224, 1
  %cmp397.not = icmp ugt i32 %inc422, %add377
  br i1 %cmp397.not, label %cleanup415.for.end423_crit_edge, label %cleanup415.for.body399_crit_edge

cleanup415.for.body399_crit_edge:                 ; preds = %cleanup415
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body399

cleanup415.for.end423_crit_edge:                  ; preds = %cleanup415
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end423

for.end423:                                       ; preds = %cleanup415.for.end423_crit_edge, %for.cond396.preheader.for.end423_crit_edge
  %anchor.1.lcssa = phi ptr [ %anchor.01233, %for.cond396.preheader.for.end423_crit_edge ], [ %anchor.2, %cleanup415.for.end423_crit_edge ]
  %ip.2.lcssa = phi ptr [ %ip.01234, %for.cond396.preheader.for.end423_crit_edge ], [ %ip.3, %cleanup415.for.end423_crit_edge ]
  call fastcc void @ZSTD_setBasePrices(ptr noundef %opt, i32 noundef %optLevel)
  br label %cleanup424

cleanup424:                                       ; preds = %for.end423, %cleanup98.thread
  %lastSequence.sroa.43.2 = phi i32 [ %lastSequence.sroa.43.11161, %for.end423 ], [ %lastSequence.sroa.43.01229, %cleanup98.thread ]
  %lastSequence.sroa.38.2 = phi i32 [ %lastSequence.sroa.38.11163, %for.end423 ], [ %lastSequence.sroa.38.01230, %cleanup98.thread ]
  %lastSequence.sroa.33.2 = phi i32 [ %lastSequence.sroa.33.11165, %for.end423 ], [ %lastSequence.sroa.33.01231, %cleanup98.thread ]
  %lastSequence.sroa.0.2 = phi i32 [ %lastSequence.sroa.0.11173, %for.end423 ], [ %lastSequence.sroa.0.01232, %cleanup98.thread ]
  %anchor.3 = phi ptr [ %anchor.1.lcssa, %for.end423 ], [ %anchor.01233, %cleanup98.thread ]
  %ip.4 = phi ptr [ %ip.2.lcssa, %for.end423 ], [ %incdec.ptr, %cleanup98.thread ]
  %cmp21 = icmp ult ptr %ip.4, %add.ptr1
  br i1 %cmp21, label %cleanup424.while.body_crit_edge, label %while.end428.loopexit

cleanup424.while.body_crit_edge:                  ; preds = %cleanup424
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end428.loopexit:                            ; preds = %cleanup424
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = ptrtoint ptr %anchor.3 to i32
  br label %while.end428

while.end428:                                     ; preds = %while.end428.loopexit, %ZSTD_rescaleFreqs.exit.while.end428_crit_edge
  %sub.ptr.rhs.cast430.pre-phi = phi i32 [ %.pre, %while.end428.loopexit ], [ %sub.ptr.lhs.cast, %ZSTD_rescaleFreqs.exit.while.end428_crit_edge ]
  %sub.ptr.sub431 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast430.pre-phi
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %optLdm) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextToUpdate3) #8
  ret i32 %sub.ptr.sub431
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra2(ptr noundef %ms, ptr noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  %tmpRep.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %src to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %litLengthSum = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %litLengthSum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %litLengthSum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sequences = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 1
  %4 = ptrtoint ptr %sequences to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sequences, align 4
  %6 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %seqStore, align 4
  %cmp1 = icmp eq ptr %5, %7
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %dictLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 3
  %8 = ptrtoint ptr %dictLimit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dictLimit, align 4
  %lowLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 4
  %10 = ptrtoint ptr %lowLimit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lowLimit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5 = icmp eq i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %9)
  %cmp9 = icmp eq i32 %sub.ptr.sub, %9
  %or.cond = select i1 %cmp5, i1 %cmp9, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %srcSize)
  %cmp11 = icmp ugt i32 %srcSize, 1024
  %or.cond26 = and i1 %cmp11, %or.cond
  br i1 %or.cond26, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpRep.i) #8
  %12 = call ptr @memcpy(ptr %tmpRep.i, ptr %rep, i32 12)
  %call.i = call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef nonnull %tmpRep.i, ptr noundef %src, i32 noundef %srcSize, i32 noundef 2, i32 noundef 0) #8
  tail call void @ZSTD_resetSeqStore(ptr noundef %seqStore) #8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %idx.neg.i = sub i32 0, %srcSize
  %add.ptr.i = getelementptr i8, ptr %14, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %base, align 4
  %15 = ptrtoint ptr %dictLimit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dictLimit, align 4
  %add.i = add i32 %16, %srcSize
  store i32 %add.i, ptr %dictLimit, align 4
  %17 = ptrtoint ptr %lowLimit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %lowLimit, align 4
  %nextToUpdate.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 2
  %18 = ptrtoint ptr %nextToUpdate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %nextToUpdate.i, align 4
  %literalCompressionMode.i.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 16
  %19 = ptrtoint ptr %literalCompressionMode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %literalCompressionMode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i.not.i.i = icmp eq i32 %20, 2
  br i1 %cmp.i.not.i.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  %opt.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8
  %21 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %opt.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %sum.03.i.i.i = phi i32 [ %add4.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i ]
  %s.02.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i ]
  %arrayidx.i.i.i = getelementptr i32, ptr %22, i32 %s.02.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %shl.i.i.i = shl i32 %24, 4
  %dec.i.i.i = add i32 %shl.i.i.i, -1
  store i32 %dec.i.i.i, ptr %arrayidx.i.i.i, align 4
  %add4.i.i.i = add i32 %dec.i.i.i, %sum.03.i.i.i
  %inc.i.i.i = add nuw nsw i32 %s.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %s.02.i.i.i, 255
  br i1 %exitcond.not.i.i.i, label %ZSTD_upscaleStat.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

ZSTD_upscaleStat.exit.i.i:                        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %litSum.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %litSum.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add4.i.i.i, ptr %litSum.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %ZSTD_upscaleStat.exit.i.i, %if.then.if.end.i.i_crit_edge
  %litLengthFreq.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %litLengthFreq.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %litLengthFreq.i.i, align 4
  br label %for.body.i21.i.i

for.body.i21.i.i:                                 ; preds = %for.body.i21.i.i.for.body.i21.i.i_crit_edge, %if.end.i.i
  %sum.03.i13.i.i = phi i32 [ %add4.i18.i.i, %for.body.i21.i.i.for.body.i21.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %s.02.i14.i.i = phi i32 [ %inc.i19.i.i, %for.body.i21.i.i.for.body.i21.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %arrayidx.i15.i.i = getelementptr i32, ptr %27, i32 %s.02.i14.i.i
  %28 = ptrtoint ptr %arrayidx.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i15.i.i, align 4
  %shl.i16.i.i = shl i32 %29, 4
  %dec.i17.i.i = add i32 %shl.i16.i.i, -1
  store i32 %dec.i17.i.i, ptr %arrayidx.i15.i.i, align 4
  %add4.i18.i.i = add i32 %dec.i17.i.i, %sum.03.i13.i.i
  %inc.i19.i.i = add nuw nsw i32 %s.02.i14.i.i, 1
  %exitcond.not.i20.i.i = icmp eq i32 %s.02.i14.i.i, 35
  br i1 %exitcond.not.i20.i.i, label %ZSTD_upscaleStat.exit22.i.i, label %for.body.i21.i.i.for.body.i21.i.i_crit_edge

for.body.i21.i.i.for.body.i21.i.i_crit_edge:      ; preds = %for.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21.i.i

ZSTD_upscaleStat.exit22.i.i:                      ; preds = %for.body.i21.i.i
  %30 = ptrtoint ptr %litLengthSum to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add4.i18.i.i, ptr %litLengthSum, align 4
  %matchLengthFreq.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %matchLengthFreq.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %matchLengthFreq.i.i, align 4
  br label %for.body.i31.i.i

for.body.i31.i.i:                                 ; preds = %for.body.i31.i.i.for.body.i31.i.i_crit_edge, %ZSTD_upscaleStat.exit22.i.i
  %sum.03.i23.i.i = phi i32 [ %add4.i28.i.i, %for.body.i31.i.i.for.body.i31.i.i_crit_edge ], [ 0, %ZSTD_upscaleStat.exit22.i.i ]
  %s.02.i24.i.i = phi i32 [ %inc.i29.i.i, %for.body.i31.i.i.for.body.i31.i.i_crit_edge ], [ 0, %ZSTD_upscaleStat.exit22.i.i ]
  %arrayidx.i25.i.i = getelementptr i32, ptr %32, i32 %s.02.i24.i.i
  %33 = ptrtoint ptr %arrayidx.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i25.i.i, align 4
  %shl.i26.i.i = shl i32 %34, 4
  %dec.i27.i.i = add i32 %shl.i26.i.i, -1
  store i32 %dec.i27.i.i, ptr %arrayidx.i25.i.i, align 4
  %add4.i28.i.i = add i32 %dec.i27.i.i, %sum.03.i23.i.i
  %inc.i29.i.i = add nuw nsw i32 %s.02.i24.i.i, 1
  %exitcond.not.i30.i.i = icmp eq i32 %s.02.i24.i.i, 52
  br i1 %exitcond.not.i30.i.i, label %ZSTD_upscaleStat.exit32.i.i, label %for.body.i31.i.i.for.body.i31.i.i_crit_edge

for.body.i31.i.i.for.body.i31.i.i_crit_edge:      ; preds = %for.body.i31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i31.i.i

ZSTD_upscaleStat.exit32.i.i:                      ; preds = %for.body.i31.i.i
  %matchLengthSum.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 8
  %35 = ptrtoint ptr %matchLengthSum.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add4.i28.i.i, ptr %matchLengthSum.i.i, align 4
  %offCodeFreq.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %offCodeFreq.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %offCodeFreq.i.i, align 4
  br label %for.body.i41.i.i

for.body.i41.i.i:                                 ; preds = %for.body.i41.i.i.for.body.i41.i.i_crit_edge, %ZSTD_upscaleStat.exit32.i.i
  %sum.03.i33.i.i = phi i32 [ %add4.i38.i.i, %for.body.i41.i.i.for.body.i41.i.i_crit_edge ], [ 0, %ZSTD_upscaleStat.exit32.i.i ]
  %s.02.i34.i.i = phi i32 [ %inc.i39.i.i, %for.body.i41.i.i.for.body.i41.i.i_crit_edge ], [ 0, %ZSTD_upscaleStat.exit32.i.i ]
  %arrayidx.i35.i.i = getelementptr i32, ptr %37, i32 %s.02.i34.i.i
  %38 = ptrtoint ptr %arrayidx.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i35.i.i, align 4
  %shl.i36.i.i = shl i32 %39, 4
  %dec.i37.i.i = add i32 %shl.i36.i.i, -1
  store i32 %dec.i37.i.i, ptr %arrayidx.i35.i.i, align 4
  %add4.i38.i.i = add i32 %dec.i37.i.i, %sum.03.i33.i.i
  %inc.i39.i.i = add nuw nsw i32 %s.02.i34.i.i, 1
  %exitcond.not.i40.i.i = icmp eq i32 %s.02.i34.i.i, 31
  br i1 %exitcond.not.i40.i.i, label %ZSTD_initStats_ultra.exit, label %for.body.i41.i.i.for.body.i41.i.i_crit_edge

for.body.i41.i.i.for.body.i41.i.i_crit_edge:      ; preds = %for.body.i41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i41.i.i

ZSTD_initStats_ultra.exit:                        ; preds = %for.body.i41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %offCodeSum.i.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 8, i32 9
  %40 = ptrtoint ptr %offCodeSum.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add4.i38.i.i, ptr %offCodeSum.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpRep.i) #8
  br label %if.end

if.end:                                           ; preds = %ZSTD_initStats_ultra.exit, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 2, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btopt_extDict(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra_extDict(ptr noundef %ms, ptr nocapture noundef %seqStore, ptr nocapture noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize, i32 noundef 2, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %optLdm, i32 noundef %currPosInBlock, i32 noundef %blockBytesRemaining) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.rawSeqStore_t, ptr %optLdm, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %pos = getelementptr inbounds %struct.rawSeqStore_t, ptr %optLdm, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp4.not = icmp ult i32 %3, %1
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %startPosInBlock = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 1
  %4 = ptrtoint ptr %startPosInBlock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %startPosInBlock, align 4
  %endPosInBlock = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 2
  %5 = ptrtoint ptr %endPosInBlock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %endPosInBlock, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %optLdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %optLdm, align 4
  %arrayidx = getelementptr %struct.rawSeq, ptr %7, i32 %3
  %currSeq.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %8 = ptrtoint ptr %currSeq.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %currSeq.sroa.5.0.copyload = load i32, ptr %currSeq.sroa.5.0.arrayidx.sroa_idx, align 4
  %currSeq.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %9 = ptrtoint ptr %currSeq.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %currSeq.sroa.9.0.copyload = load i32, ptr %currSeq.sroa.9.0.arrayidx.sroa_idx, align 4
  %add = add i32 %blockBytesRemaining, %currPosInBlock
  %posInSequence = getelementptr inbounds %struct.rawSeqStore_t, ptr %optLdm, i32 0, i32 2
  %10 = ptrtoint ptr %posInSequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %posInSequence, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %currSeq.sroa.5.0.copyload, i32 %11)
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %11, i32 %currSeq.sroa.5.0.copyload)
  %spec.select135 = sub i32 %currSeq.sroa.9.0.copyload, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %blockBytesRemaining)
  %cmp24.not = icmp ult i32 %12, %blockBytesRemaining
  br i1 %cmp24.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end
  %startPosInBlock26 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 1
  %14 = ptrtoint ptr %startPosInBlock26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %startPosInBlock26, align 4
  %endPosInBlock27 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 2
  %15 = ptrtoint ptr %endPosInBlock27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %endPosInBlock27, align 4
  %add.i = add i32 %11, %blockBytesRemaining
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not38.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not38.i, label %if.then25.if.then13.i_crit_edge, label %if.then25.land.rhs.i_crit_edge

if.then25.land.rhs.i_crit_edge:                   ; preds = %if.then25
  br label %land.rhs.i

if.then25.if.then13.i_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %if.then25.land.rhs.i_crit_edge
  %currPos.039.i = phi i32 [ %sub.i, %cleanup.i.land.rhs.i_crit_edge ], [ %add.i, %if.then25.land.rhs.i_crit_edge ]
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp.i = icmp ult i32 %17, %1
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.lor.lhs.false.i_crit_edge

land.rhs.i.lor.lhs.false.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

while.body.i:                                     ; preds = %land.rhs.i
  %arrayidx.i = getelementptr %struct.rawSeq, ptr %7, i32 %17
  %currSeq.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %18 = ptrtoint ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %currSeq.sroa.4.0.copyload.i = load i32, ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %currSeq.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %19 = ptrtoint ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %currSeq.sroa.7.0.copyload.i = load i32, ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %add2.i = add i32 %currSeq.sroa.7.0.copyload.i, %currSeq.sroa.4.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %currPos.039.i, i32 %add2.i)
  %cmp3.not.i = icmp ult i32 %currPos.039.i, %add2.i
  br i1 %cmp3.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %currPos.039.i, ptr %posInSequence, align 4
  br label %lor.lhs.false.i

cleanup.i:                                        ; preds = %while.body.i
  %sub.i = sub i32 %currPos.039.i, %add2.i
  %inc.i = add nuw i32 %17, 1
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i, ptr %pos, align 4
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %cleanup.i.if.then13.i_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

cleanup.i.if.then13.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %cleanup.thread.i, %land.rhs.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp12.i = icmp eq i32 %17, %1
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %cleanup.i.if.then13.i_crit_edge, %if.then25.if.then13.i_crit_edge
  %22 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %posInSequence, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %currSeq.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %add30 = add i32 %12, %currPosInBlock
  %startPosInBlock31 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 1
  %24 = ptrtoint ptr %startPosInBlock31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add30, ptr %startPosInBlock31, align 4
  %add33 = add i32 %add30, %spec.select135
  %endPosInBlock34 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 2
  %25 = ptrtoint ptr %endPosInBlock34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add33, ptr %endPosInBlock34, align 4
  %offset35 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 3
  %26 = ptrtoint ptr %offset35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %currSeq.sroa.0.0.copyload, ptr %offset35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %add)
  %cmp37 = icmp ugt i32 %add33, %add
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end29
  %27 = ptrtoint ptr %endPosInBlock34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %endPosInBlock34, align 4
  %add.i84 = add i32 %11, %blockBytesRemaining
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i84)
  %tobool.not38.i85 = icmp eq i32 %add.i84, 0
  br i1 %tobool.not38.i85, label %if.then38.if.then13.i107_crit_edge, label %if.then38.land.rhs.i91_crit_edge

if.then38.land.rhs.i91_crit_edge:                 ; preds = %if.then38
  br label %land.rhs.i91

if.then38.if.then13.i107_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i107

land.rhs.i91:                                     ; preds = %cleanup.i104.land.rhs.i91_crit_edge, %if.then38.land.rhs.i91_crit_edge
  %currPos.039.i89 = phi i32 [ %sub.i101, %cleanup.i104.land.rhs.i91_crit_edge ], [ %add.i84, %if.then38.land.rhs.i91_crit_edge ]
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %1)
  %cmp.i90 = icmp ult i32 %29, %1
  br i1 %cmp.i90, label %while.body.i99, label %land.rhs.i91.lor.lhs.false.i106_crit_edge

land.rhs.i91.lor.lhs.false.i106_crit_edge:        ; preds = %land.rhs.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i106

while.body.i99:                                   ; preds = %land.rhs.i91
  %arrayidx.i92 = getelementptr %struct.rawSeq, ptr %7, i32 %29
  %currSeq.sroa.4.0.arrayidx.sroa_idx.i93 = getelementptr inbounds i8, ptr %arrayidx.i92, i32 4
  %30 = ptrtoint ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %currSeq.sroa.4.0.copyload.i94 = load i32, ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i93, align 4
  %currSeq.sroa.7.0.arrayidx.sroa_idx.i95 = getelementptr inbounds i8, ptr %arrayidx.i92, i32 8
  %31 = ptrtoint ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %currSeq.sroa.7.0.copyload.i96 = load i32, ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i95, align 4
  %add2.i97 = add i32 %currSeq.sroa.7.0.copyload.i96, %currSeq.sroa.4.0.copyload.i94
  call void @__sanitizer_cov_trace_cmp4(i32 %currPos.039.i89, i32 %add2.i97)
  %cmp3.not.i98 = icmp ult i32 %currPos.039.i89, %add2.i97
  br i1 %cmp3.not.i98, label %cleanup.thread.i100, label %cleanup.i104

cleanup.thread.i100:                              ; preds = %while.body.i99
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %currPos.039.i89, ptr %posInSequence, align 4
  br label %lor.lhs.false.i106

cleanup.i104:                                     ; preds = %while.body.i99
  %sub.i101 = sub i32 %currPos.039.i89, %add2.i97
  %inc.i102 = add nuw i32 %29, 1
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i102, ptr %pos, align 4
  %tobool.not.i103 = icmp eq i32 %sub.i101, 0
  br i1 %tobool.not.i103, label %cleanup.i104.if.then13.i107_crit_edge, label %cleanup.i104.land.rhs.i91_crit_edge

cleanup.i104.land.rhs.i91_crit_edge:              ; preds = %cleanup.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i91

cleanup.i104.if.then13.i107_crit_edge:            ; preds = %cleanup.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i107

lor.lhs.false.i106:                               ; preds = %cleanup.thread.i100, %land.rhs.i91.lor.lhs.false.i106_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %1)
  %cmp12.i105 = icmp eq i32 %29, %1
  br i1 %cmp12.i105, label %lor.lhs.false.i106.if.then13.i107_crit_edge, label %lor.lhs.false.i106.cleanup_crit_edge

lor.lhs.false.i106.cleanup_crit_edge:             ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i106.if.then13.i107_crit_edge:      ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i107

if.then13.i107:                                   ; preds = %lor.lhs.false.i106.if.then13.i107_crit_edge, %cleanup.i104.if.then13.i107_crit_edge, %if.then38.if.then13.i107_crit_edge
  %34 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %posInSequence, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end29
  %add43 = add i32 %12, %11
  %add.i110 = add i32 %add43, %spec.select135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i110)
  %tobool.not38.i111 = icmp eq i32 %add.i110, 0
  br i1 %tobool.not38.i111, label %if.else.if.then13.i133_crit_edge, label %if.else.land.rhs.i117_crit_edge

if.else.land.rhs.i117_crit_edge:                  ; preds = %if.else
  br label %land.rhs.i117

if.else.if.then13.i133_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i133

land.rhs.i117:                                    ; preds = %cleanup.i130.land.rhs.i117_crit_edge, %if.else.land.rhs.i117_crit_edge
  %currPos.039.i115 = phi i32 [ %sub.i127, %cleanup.i130.land.rhs.i117_crit_edge ], [ %add.i110, %if.else.land.rhs.i117_crit_edge ]
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %1)
  %cmp.i116 = icmp ult i32 %36, %1
  br i1 %cmp.i116, label %while.body.i125, label %land.rhs.i117.lor.lhs.false.i132_crit_edge

land.rhs.i117.lor.lhs.false.i132_crit_edge:       ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i132

while.body.i125:                                  ; preds = %land.rhs.i117
  %arrayidx.i118 = getelementptr %struct.rawSeq, ptr %7, i32 %36
  %currSeq.sroa.4.0.arrayidx.sroa_idx.i119 = getelementptr inbounds i8, ptr %arrayidx.i118, i32 4
  %37 = ptrtoint ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i119 to i32
  call void @__asan_load4_noabort(i32 %37)
  %currSeq.sroa.4.0.copyload.i120 = load i32, ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i119, align 4
  %currSeq.sroa.7.0.arrayidx.sroa_idx.i121 = getelementptr inbounds i8, ptr %arrayidx.i118, i32 8
  %38 = ptrtoint ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i121 to i32
  call void @__asan_load4_noabort(i32 %38)
  %currSeq.sroa.7.0.copyload.i122 = load i32, ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i121, align 4
  %add2.i123 = add i32 %currSeq.sroa.7.0.copyload.i122, %currSeq.sroa.4.0.copyload.i120
  call void @__sanitizer_cov_trace_cmp4(i32 %currPos.039.i115, i32 %add2.i123)
  %cmp3.not.i124 = icmp ult i32 %currPos.039.i115, %add2.i123
  br i1 %cmp3.not.i124, label %cleanup.thread.i126, label %cleanup.i130

cleanup.thread.i126:                              ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %currPos.039.i115, ptr %posInSequence, align 4
  br label %lor.lhs.false.i132

cleanup.i130:                                     ; preds = %while.body.i125
  %sub.i127 = sub i32 %currPos.039.i115, %add2.i123
  %inc.i128 = add nuw i32 %36, 1
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc.i128, ptr %pos, align 4
  %tobool.not.i129 = icmp eq i32 %sub.i127, 0
  br i1 %tobool.not.i129, label %cleanup.i130.if.then13.i133_crit_edge, label %cleanup.i130.land.rhs.i117_crit_edge

cleanup.i130.land.rhs.i117_crit_edge:             ; preds = %cleanup.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i117

cleanup.i130.if.then13.i133_crit_edge:            ; preds = %cleanup.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i133

lor.lhs.false.i132:                               ; preds = %cleanup.thread.i126, %land.rhs.i117.lor.lhs.false.i132_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %1)
  %cmp12.i131 = icmp eq i32 %36, %1
  br i1 %cmp12.i131, label %lor.lhs.false.i132.if.then13.i133_crit_edge, label %lor.lhs.false.i132.cleanup_crit_edge

lor.lhs.false.i132.cleanup_crit_edge:             ; preds = %lor.lhs.false.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i132.if.then13.i133_crit_edge:      ; preds = %lor.lhs.false.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i133

if.then13.i133:                                   ; preds = %lor.lhs.false.i132.if.then13.i133_crit_edge, %cleanup.i130.if.then13.i133_crit_edge, %if.else.if.then13.i133_crit_edge
  %41 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %posInSequence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i133, %lor.lhs.false.i132.cleanup_crit_edge, %if.then13.i107, %lor.lhs.false.i106.cleanup_crit_edge, %if.then13.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %optLdm, ptr nocapture noundef %matches, ptr nocapture noundef %nbMatches, i32 noundef %currPosInBlock, i32 noundef %remainingBytes) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.rawSeqStore_t, ptr %optLdm, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pos = getelementptr inbounds %struct.rawSeqStore_t, ptr %optLdm, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp4.not = icmp ult i32 %3, %1
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %endPosInBlock = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 2
  %4 = ptrtoint ptr %endPosInBlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %endPosInBlock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %currPosInBlock)
  %cmp5.not = icmp ugt i32 %5, %currPosInBlock
  br i1 %cmp5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %currPosInBlock)
  %cmp8 = icmp ult i32 %5, %currPosInBlock
  br i1 %cmp8, label %if.then9, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  %sub = sub i32 %currPosInBlock, %5
  %posInSequence.i = getelementptr inbounds %struct.rawSeqStore_t, ptr %optLdm, i32 0, i32 2
  %6 = ptrtoint ptr %posInSequence.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %posInSequence.i, align 4
  %add.i = add i32 %7, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not38.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not38.i, label %if.then9.if.then13.i_crit_edge, label %if.then9.land.rhs.i_crit_edge

if.then9.land.rhs.i_crit_edge:                    ; preds = %if.then9
  br label %land.rhs.i

if.then9.if.then13.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %if.then9.land.rhs.i_crit_edge
  %currPos.039.i = phi i32 [ %sub.i, %cleanup.i.land.rhs.i_crit_edge ], [ %add.i, %if.then9.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp.i = icmp ult i32 %9, %1
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.lor.lhs.false.i_crit_edge

land.rhs.i.lor.lhs.false.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

while.body.i:                                     ; preds = %land.rhs.i
  %10 = ptrtoint ptr %optLdm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %optLdm, align 4
  %arrayidx.i = getelementptr %struct.rawSeq, ptr %11, i32 %9
  %currSeq.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %12 = ptrtoint ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %currSeq.sroa.4.0.copyload.i = load i32, ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %currSeq.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %13 = ptrtoint ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %currSeq.sroa.7.0.copyload.i = load i32, ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %add2.i = add i32 %currSeq.sroa.7.0.copyload.i, %currSeq.sroa.4.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %currPos.039.i, i32 %add2.i)
  %cmp3.not.i = icmp ult i32 %currPos.039.i, %add2.i
  br i1 %cmp3.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %posInSequence.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %currPos.039.i, ptr %posInSequence.i, align 4
  br label %lor.lhs.false.i

cleanup.i:                                        ; preds = %while.body.i
  %sub.i = sub i32 %currPos.039.i, %add2.i
  %inc.i = add nuw i32 %9, 1
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i, ptr %pos, align 4
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %cleanup.i.if.then13.i_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

cleanup.i.if.then13.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %cleanup.thread.i, %land.rhs.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp12.i = icmp eq i32 %9, %1
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.if.end12_crit_edge

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %cleanup.i.if.then13.i_crit_edge, %if.then9.if.then13.i_crit_edge
  %16 = ptrtoint ptr %posInSequence.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %posInSequence.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then13.i, %lor.lhs.false.i.if.end12_crit_edge, %if.then6.if.end12_crit_edge
  tail call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %optLdm, i32 noundef %currPosInBlock, i32 noundef %remainingBytes)
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %startPosInBlock.i = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 1
  %17 = ptrtoint ptr %startPosInBlock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %startPosInBlock.i, align 4
  %sub.neg.i = sub i32 %18, %currPosInBlock
  %19 = ptrtoint ptr %endPosInBlock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %endPosInBlock, align 4
  %sub2.i = sub i32 %20, %18
  %sub3.i = add i32 %sub2.i, %sub.neg.i
  %offset.i = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %optLdm, i32 0, i32 3
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.i27 = add i32 %22, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %currPosInBlock)
  %cmp.i28 = icmp ugt i32 %18, %currPosInBlock
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %currPosInBlock)
  %cmp6.not.i = icmp ule i32 %20, %currPosInBlock
  %or.cond.i = select i1 %cmp.i28, i1 true, i1 %cmp6.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub3.i)
  %cmp8.i = icmp ult i32 %sub3.i, 3
  %or.cond37.i = select i1 %or.cond.i, i1 true, i1 %cmp8.i
  br i1 %or.cond37.i, label %if.end13.return_crit_edge, label %if.end.i

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %nbMatches to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbMatches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i = icmp eq i32 %24, 0
  br i1 %cmp9.i, label %if.end.i.if.then14.i_crit_edge, label %lor.lhs.false10.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

lor.lhs.false10.i:                                ; preds = %if.end.i
  %sub11.i = add i32 %24, -1
  %len.i = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %sub11.i, i32 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %26)
  %cmp12.i29 = icmp ugt i32 %sub3.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %24)
  %cmp13.i = icmp ult i32 %24, 4096
  %or.cond38.i = select i1 %cmp12.i29, i1 %cmp13.i, i1 false
  br i1 %or.cond38.i, label %lor.lhs.false10.i.if.then14.i_crit_edge, label %lor.lhs.false10.i.return_crit_edge

lor.lhs.false10.i.return_crit_edge:               ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false10.i.if.then14.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then14.i:                                      ; preds = %lor.lhs.false10.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge
  %len16.i = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %24, i32 1
  %27 = ptrtoint ptr %len16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub3.i, ptr %len16.i, align 4
  %28 = ptrtoint ptr %nbMatches to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbMatches, align 4
  %arrayidx17.i = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %29
  %30 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i27, ptr %arrayidx17.i, align 4
  %31 = load i32, ptr %nbMatches, align 4
  %inc.i30 = add i32 %31, 1
  store i32 %inc.i30, ptr %nbMatches, align 4
  br label %return

return:                                           ; preds = %if.then14.i, %lor.lhs.false10.i.return_crit_edge, %if.end13.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ZSTD_getMatchPrice(i32 noundef %offset, i32 noundef %matchLength, ptr nocapture noundef readonly %optPtr, i32 noundef %optLevel) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 false) #8, !range !23
  %xor.i = xor i32 %0, 31
  %sub = add i32 %matchLength, -3
  %priceType = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 14
  %1 = ptrtoint ptr %priceType to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priceType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optLevel)
  %tobool.not = icmp eq i32 %optLevel, 0
  %add.i65 = add i32 %matchLength, -2
  %3 = tail call i32 @llvm.ctlz.i32(i32 %add.i65, i1 false) #8, !range !23
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i = xor i32 %3, 31
  %mul.i = shl nuw nsw i32 %xor.i.i, 8
  %shl.i = shl i32 %add.i65, 8
  %shr.i = lshr i32 %shl.i, %xor.i.i
  %add1.i = add i32 %mul.i, %shr.i
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i66 = shl nuw nsw i32 %3, 8
  %mul.i67 = xor i32 %xor.i.i66, 7936
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add1.i, %cond.true ], [ %mul.i67, %cond.false ]
  %add3 = shl nuw nsw i32 %xor.i, 8
  %mul = add nuw nsw i32 %add3, 4096
  %add4 = add i32 %mul, %cond
  br label %cleanup

if.end:                                           ; preds = %entry
  %offCodeSumBasePrice = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 13
  %4 = ptrtoint ptr %offCodeSumBasePrice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offCodeSumBasePrice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optLevel)
  %tobool6.not = icmp eq i32 %optLevel, 0
  %offCodeFreq10 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 3
  %6 = ptrtoint ptr %offCodeFreq10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %offCodeFreq10, align 4
  %arrayidx11 = getelementptr i32, ptr %7, i32 %xor.i
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %add.i74 = add i32 %9, 1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %add.i74, i1 false) #8, !range !23
  br i1 %tobool6.not, label %cond.false9, label %cond.true7

cond.true7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i69 = xor i32 %10, 31
  %mul.i70.neg = mul nsw i32 %xor.i.i69, -256
  %shl.i71 = shl i32 %add.i74, 8
  %shr.i72 = lshr i32 %shl.i71, %xor.i.i69
  %add1.i73.neg = sub i32 %mul.i70.neg, %shr.i72
  br label %cond.end13

cond.false9:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i75 = shl nuw nsw i32 %10, 8
  %11 = xor i32 %xor.i.i75, -7937
  %mul.i76.neg = add nsw i32 %11, 1
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false9, %cond.true7
  %cond14.neg87 = phi i32 [ %add1.i73.neg, %cond.true7 ], [ %mul.i76.neg, %cond.false9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %optLevel)
  %cmp17 = icmp slt i32 %optLevel, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %xor.i)
  %cmp18 = icmp ugt i32 %xor.i, 19
  %or.cond = select i1 %cmp17, i1 %cmp18, i1 false
  %sub20 = shl nuw nsw i32 %xor.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, 127
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #8, !range !23
  %add.i77 = sub nuw nsw i32 67, %12
  br label %ZSTD_MLcode.exit

cond.false.i:                                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [128 x i8], ptr @ZSTD_MLcode.ML_Code, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  br label %ZSTD_MLcode.exit

ZSTD_MLcode.exit:                                 ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i77, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %arrayidx26 = getelementptr [53 x i32], ptr @ML_bits, i32 0, i32 %cond.i
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx26, align 4
  %matchLengthSumBasePrice = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 12
  %17 = ptrtoint ptr %matchLengthSumBasePrice to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %matchLengthSumBasePrice, align 4
  %matchLengthFreq33 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 2
  %19 = ptrtoint ptr %matchLengthFreq33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %matchLengthFreq33, align 4
  %arrayidx34 = getelementptr i32, ptr %20, i32 %cond.i
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx34, align 4
  %add.i84 = add i32 %22, 1
  %23 = tail call i32 @llvm.ctlz.i32(i32 %add.i84, i1 false) #8, !range !23
  br i1 %tobool6.not, label %cond.false32, label %cond.true29

cond.true29:                                      ; preds = %ZSTD_MLcode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i79 = xor i32 %23, 31
  %mul.i80.neg = mul nsw i32 %xor.i.i79, -256
  %shl.i81 = shl i32 %add.i84, 8
  %shr.i82 = lshr i32 %shl.i81, %xor.i.i79
  %add1.i83.neg = sub i32 %mul.i80.neg, %shr.i82
  br label %cond.end36

cond.false32:                                     ; preds = %ZSTD_MLcode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i85 = shl nuw nsw i32 %23, 8
  %24 = xor i32 %xor.i.i85, -7937
  %mul.i86.neg = add nsw i32 %24, 1
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %cond.true29
  %cond37.neg88 = phi i32 [ %add1.i83.neg, %cond.true29 ], [ %mul.i86.neg, %cond.false32 ]
  %reass.add = add i32 %16, %xor.i
  %reass.mul = shl i32 %reass.add, 8
  %mul22.op = add nsw i32 %sub20, -9677
  %add39 = select i1 %or.cond, i32 %mul22.op, i32 51
  %sub15 = add i32 %add39, %5
  %add16 = add i32 %sub15, %cond14.neg87
  %price.0 = add i32 %add16, %18
  %add40 = add i32 %price.0, %reass.mul
  %add41 = add i32 %add40, %cond37.neg88
  br label %cleanup

cleanup:                                          ; preds = %cond.end36, %cond.end
  %retval.0 = phi i32 [ %add4, %cond.end ], [ %add41, %cond.end36 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ZSTD_setBasePrices(ptr nocapture noundef %optPtr, i32 noundef %optLevel) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %literalCompressionMode.i = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 16
  %0 = ptrtoint ptr %literalCompressionMode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %literalCompressionMode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optLevel)
  %tobool1.not = icmp eq i32 %optLevel, 0
  %litSum3 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 6
  %2 = ptrtoint ptr %litSum3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %litSum3, align 4
  %add.i46 = add i32 %3, 1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %add.i46, i1 false) #8, !range !23
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i = xor i32 %4, 31
  %mul.i = shl nuw nsw i32 %xor.i.i, 8
  %shl.i = shl i32 %add.i46, 8
  %shr.i = lshr i32 %shl.i, %xor.i.i
  %add1.i = add i32 %mul.i, %shr.i
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i47 = shl nuw nsw i32 %4, 8
  %mul.i48 = xor i32 %xor.i.i47, 7936
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add1.i, %cond.true ], [ %mul.i48, %cond.false ]
  %litSumBasePrice = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 10
  %5 = ptrtoint ptr %litSumBasePrice to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %litSumBasePrice, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optLevel)
  %tobool5.not = icmp eq i32 %optLevel, 0
  %litLengthSum9 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 7
  %6 = ptrtoint ptr %litLengthSum9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %litLengthSum9, align 4
  %add.i67 = add i32 %7, 1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %add.i67, i1 false) #8, !range !23
  br i1 %tobool5.not, label %cond.false8, label %cond.true6

cond.true6:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i50 = xor i32 %8, 31
  %mul.i51 = shl nuw nsw i32 %xor.i.i50, 8
  %shl.i52 = shl i32 %add.i67, 8
  %shr.i53 = lshr i32 %shl.i52, %xor.i.i50
  %add1.i54 = add i32 %mul.i51, %shr.i53
  %matchLengthSum = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 8
  %9 = ptrtoint ptr %matchLengthSum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %matchLengthSum, align 4
  %add.i55 = add i32 %10, 1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %add.i55, i1 false) #8, !range !23
  %xor.i.i56 = xor i32 %11, 31
  %mul.i57 = shl nuw nsw i32 %xor.i.i56, 8
  %shl.i58 = shl i32 %add.i55, 8
  %shr.i59 = lshr i32 %shl.i58, %xor.i.i56
  %add1.i60 = add i32 %mul.i57, %shr.i59
  %offCodeSum = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 9
  %12 = ptrtoint ptr %offCodeSum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offCodeSum, align 4
  %add.i61 = add i32 %13, 1
  %14 = tail call i32 @llvm.ctlz.i32(i32 %add.i61, i1 false) #8, !range !23
  %xor.i.i62 = xor i32 %14, 31
  %mul.i63 = shl nuw nsw i32 %xor.i.i62, 8
  %shl.i64 = shl i32 %add.i61, 8
  %shr.i65 = lshr i32 %shl.i64, %xor.i.i62
  %add1.i66 = add i32 %mul.i63, %shr.i65
  br label %cond.end27

cond.false8:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i68 = shl nuw nsw i32 %8, 8
  %mul.i69 = xor i32 %xor.i.i68, 7936
  %matchLengthSum17 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 8
  %15 = ptrtoint ptr %matchLengthSum17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %matchLengthSum17, align 4
  %add.i70 = add i32 %16, 1
  %17 = tail call i32 @llvm.ctlz.i32(i32 %add.i70, i1 false) #8, !range !23
  %xor.i.i71 = shl nuw nsw i32 %17, 8
  %mul.i72 = xor i32 %xor.i.i71, 7936
  %offCodeSum25 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 9
  %18 = ptrtoint ptr %offCodeSum25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offCodeSum25, align 4
  %add.i73 = add i32 %19, 1
  %20 = tail call i32 @llvm.ctlz.i32(i32 %add.i73, i1 false) #8, !range !23
  %xor.i.i74 = shl nuw nsw i32 %20, 8
  %mul.i75 = xor i32 %xor.i.i74, 7936
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false8, %cond.true6
  %add1.i54.sink = phi i32 [ %mul.i69, %cond.false8 ], [ %add1.i54, %cond.true6 ]
  %add1.i60.sink = phi i32 [ %mul.i72, %cond.false8 ], [ %add1.i60, %cond.true6 ]
  %cond28 = phi i32 [ %mul.i75, %cond.false8 ], [ %add1.i66, %cond.true6 ]
  %21 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 11
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add1.i54.sink, ptr %21, align 4
  %23 = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 12
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add1.i60.sink, ptr %23, align 4
  %offCodeSumBasePrice = getelementptr inbounds %struct.optState_t, ptr %optPtr, i32 0, i32 13
  %25 = ptrtoint ptr %offCodeSumBasePrice to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond28, ptr %offCodeSumBasePrice, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_getNbBits(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_insertBtAndGetAllMatches(ptr nocapture noundef writeonly %matches, ptr nocapture noundef %ms, ptr nocapture noundef %nextToUpdate3, ptr noundef %ip, ptr noundef readnone %iLimit, i32 noundef %dictMode, ptr nocapture noundef readonly %rep, i32 noundef %ll0, i32 noundef %lengthToBeat, i32 noundef %mls) unnamed_addr #0 align 64 {
entry:
  %dummy32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cParams1 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10
  %targetLength = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %targetLength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %targetLength, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 4095)
  %base3 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 1
  %3 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base3, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ip to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %hashLog4 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %hashLog4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hashLog4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mls)
  %cmp5 = icmp eq i32 %mls, 3
  %cond6 = select i1 %cmp5, i32 3, i32 4
  %hashTable7 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 4
  %7 = ptrtoint ptr %hashTable7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hashTable7, align 4
  %9 = zext i32 %mls to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mls, label %sw.bb.i [
    i32 8, label %sw.bb7.i
    i32 5, label %sw.bb1.i
    i32 6, label %sw.bb3.i
    i32 7, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ip, align 1
  %mul.i.i.i = mul i32 %11, -1640531535
  %sub.i.i.i = sub i32 32, %6
  %shr.i.i.i = lshr i32 %mul.i.i.i, %sub.i.i.i
  br label %ZSTD_hashPtr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %ip, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  %mul.i.i17.i = mul i64 %14, -3523014627271114752
  %sub.i.i18.i = sub i32 64, %6
  %sh_prom.i.i.i = zext i32 %sub.i.i18.i to i64
  %shr.i.i19.i = lshr i64 %mul.i.i17.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i19.i to i32
  br label %ZSTD_hashPtr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %ip, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #8
  %mul.i.i20.i = mul i64 %17, -3523014627193847808
  %sub.i.i21.i = sub i32 64, %6
  %sh_prom.i.i22.i = zext i32 %sub.i.i21.i to i64
  %shr.i.i23.i = lshr i64 %mul.i.i20.i, %sh_prom.i.i22.i
  %conv.i.i24.i = trunc i64 %shr.i.i23.i to i32
  br label %ZSTD_hashPtr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %ip, align 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #8
  %mul.i.i25.i = mul i64 %20, -3523014627193167104
  %sub.i.i26.i = sub i32 64, %6
  %sh_prom.i.i27.i = zext i32 %sub.i.i26.i to i64
  %shr.i.i28.i = lshr i64 %mul.i.i25.i, %sh_prom.i.i27.i
  %conv.i.i29.i = trunc i64 %shr.i.i28.i to i32
  br label %ZSTD_hashPtr.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %ip, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  %mul.i.i30.i = mul i64 %23, -3523014627327384477
  %sub.i.i31.i = sub i32 64, %6
  %sh_prom.i.i32.i = zext i32 %sub.i.i31.i to i64
  %shr.i.i33.i = lshr i64 %mul.i.i30.i, %sh_prom.i.i32.i
  %conv.i.i34.i = trunc i64 %shr.i.i33.i to i32
  br label %ZSTD_hashPtr.exit

ZSTD_hashPtr.exit:                                ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %shr.i.i.i, %sw.bb.i ], [ %conv.i.i29.i, %sw.bb5.i ], [ %conv.i.i24.i, %sw.bb3.i ], [ %conv.i.i.i, %sw.bb1.i ], [ %conv.i.i34.i, %sw.bb7.i ]
  %arrayidx = getelementptr i32, ptr %8, i32 %retval.0.i
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %chainTable = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 6
  %26 = ptrtoint ptr %chainTable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chainTable, align 4
  %chainLog = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %chainLog to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chainLog, align 4
  %sub = add i32 %29, -1
  %notmask = shl nsw i32 -1, %sub
  %sub8 = xor i32 %notmask, -1
  %dictBase10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 2
  %30 = ptrtoint ptr %dictBase10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dictBase10, align 4
  %dictLimit12 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 3
  %32 = ptrtoint ptr %dictLimit12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dictLimit12, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 %33
  %add.ptr13 = getelementptr i8, ptr %4, i32 %33
  %34 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub, i32 %sub8)
  %35 = ptrtoint ptr %cParams1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cParams1, align 4
  %shl.i = shl nuw i32 1, %36
  %lowLimit.i = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 4
  %37 = ptrtoint ptr %lowLimit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lowLimit.i, align 4
  %sub.i = sub i32 %sub.ptr.sub, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shl.i)
  %cmp.i = icmp ugt i32 %sub.i, %shl.i
  %sub1.i = sub i32 %sub.ptr.sub, %shl.i
  %loadedDictEnd.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 1
  %39 = ptrtoint ptr %loadedDictEnd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %loadedDictEnd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp2.not.i = icmp eq i32 %40, 0
  %41 = select i1 %cmp2.not.i, i1 %cmp.i, i1 false
  %cond6.i = select i1 %41, i32 %sub1.i, i32 %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond6.i)
  %tobool.not = icmp eq i32 %cond6.i, 0
  %cond24 = select i1 %tobool.not, i32 1, i32 %cond6.i
  %and = and i32 %sub.ptr.sub, %sub8
  %mul = shl i32 %and, 1
  %add.ptr25 = getelementptr i32, ptr %27, i32 %mul
  %add.ptr29 = getelementptr i32, ptr %add.ptr25, i32 1
  %add30 = add i32 %sub.ptr.sub, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy32)
  %42 = ptrtoint ptr %dummy32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %dummy32, align 4
  %searchLog = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 3
  %43 = ptrtoint ptr %searchLog to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %searchLog, align 4
  %shl31 = shl nuw i32 1, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dictMode)
  %cmp32 = icmp eq i32 %dictMode, 2
  br i1 %cmp32, label %cond.true83, label %ZSTD_hashPtr.exit.cond.end87_crit_edge

ZSTD_hashPtr.exit.cond.end87_crit_edge:           ; preds = %ZSTD_hashPtr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end87

cond.true83:                                      ; preds = %ZSTD_hashPtr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dictMatchState = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 9
  %45 = ptrtoint ptr %dictMatchState to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dictMatchState, align 4
  %base46 = getelementptr inbounds %struct.ZSTD_window_t, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %base46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base46, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %sub.ptr.lhs.cast581418 = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast591419 = ptrtoint ptr %48 to i32
  %sub.ptr.sub601420 = sub i32 %sub.ptr.lhs.cast581418, %sub.ptr.rhs.cast591419
  %lowLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %46, i32 0, i32 4
  %51 = ptrtoint ptr %lowLimit to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lowLimit, align 4
  %sub721443 = sub i32 %cond6.i, %sub.ptr.sub601420
  %hashLog78 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %46, i32 0, i32 10, i32 2
  %53 = ptrtoint ptr %hashLog78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hashLog78, align 4
  %chainLog84 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %46, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %chainLog84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chainLog84, align 4
  %sub85 = add i32 %56, -1
  %.pre = shl nsw i32 -1, %sub85
  %.pre1662 = xor i32 %.pre, -1
  br label %cond.end87

cond.end87:                                       ; preds = %cond.true83, %ZSTD_hashPtr.exit.cond.end87_crit_edge
  %cond95 = phi i32 [ 0, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %.pre1662, %cond.true83 ]
  %cond811487 = phi i32 [ %6, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %54, %cond.true83 ]
  %cond63143414451485 = phi i32 [ 0, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %sub.ptr.sub601420, %cond.true83 ]
  %sub.ptr.lhs.cast58143114471483 = phi i32 [ 0, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %sub.ptr.lhs.cast581418, %cond.true83 ]
  %cond55142814491481 = phi ptr [ null, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %50, %cond.true83 ]
  %cond3614011410142414531478 = phi ptr [ null, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %46, %cond.true83 ]
  %cond491412142214551476 = phi ptr [ null, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %48, %cond.true83 ]
  %cond6914571474 = phi i32 [ 0, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %52, %cond.true83 ]
  %spec.select82014601472 = phi i32 [ 0, %ZSTD_hashPtr.exit.cond.end87_crit_edge ], [ %sub721443, %cond.true83 ]
  %sub97 = sub i32 %cond63143414451485, %cond6914571474
  call void @__sanitizer_cov_trace_cmp4(i32 %cond95, i32 %sub97)
  %cmp98 = icmp ult i32 %cond95, %sub97
  %or.cond = select i1 %cmp32, i1 %cmp98, i1 false
  %sub100 = sub i32 %cond63143414451485, %cond95
  %cond103 = select i1 %or.cond, i32 %sub100, i32 %cond6914571474
  %sub104 = add i32 %lengthToBeat, -1
  %add105 = add i32 %ll0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %ll0)
  %cmp1061587 = icmp ult i32 %ll0, -3
  br i1 %cmp1061587, label %for.body.lr.ph, label %cond.end87.cleanup.cont215_crit_edge

cond.end87.cleanup.cont215_crit_edge:             ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.cont215

for.body.lr.ph:                                   ; preds = %cond.end87
  %idx.neg138 = sub i32 0, %spec.select82014601472
  %sub117 = sub i32 %sub.ptr.sub, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictMode)
  %cmp144 = icmp eq i32 %dictMode, 1
  %sub148 = sub i32 %sub.ptr.sub, %cond6.i
  %add.ptr163 = getelementptr i8, ptr %ip, i32 %cond6
  %sub.ptr.lhs.cast.i840 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast55.i.i = ptrtoint ptr %add.ptr163 to i32
  %add.ptr.i23.i = getelementptr i8, ptr %iLimit, i32 -3
  %add.ptr33.i45.i = getelementptr i8, ptr %iLimit, i32 -1
  %57 = add i32 %cond6914571474, %spec.select82014601472
  %sub173 = sub i32 %sub.ptr.sub, %57
  %cmp.i835 = icmp ugt ptr %add.ptr.i23.i, %add.ptr163
  %add.ptr137 = getelementptr i8, ptr %cond491412142214551476, i32 %idx.neg138
  %cond143.v = select i1 %cmp32, ptr %add.ptr137, ptr %31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %repCode.01592 = phi i32 [ %ll0, %for.body.lr.ph ], [ %inc211, %for.inc.for.body_crit_edge ]
  %bestLength.01590 = phi i32 [ %sub104, %for.body.lr.ph ], [ %bestLength.1, %for.inc.for.body_crit_edge ]
  %mnum.01588 = phi i32 [ 0, %for.body.lr.ph ], [ %mnum.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %repCode.01592)
  %cmp107 = icmp eq i32 %repCode.01592, 3
  br i1 %cmp107, label %cond.true108, label %cond.false111

cond.true108:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rep, align 4
  %sub110 = add i32 %59, -1
  br label %cond.end113

cond.false111:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx112 = getelementptr i32, ptr %rep, i32 %repCode.01592
  %60 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx112, align 4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true108
  %cond114 = phi i32 [ %sub110, %cond.true108 ], [ %61, %cond.false111 ]
  %sub115 = sub i32 %sub.ptr.sub, %cond114
  %sub116 = add i32 %cond114, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub116, i32 %sub117)
  %cmp118 = icmp ult i32 %sub116, %sub117
  br i1 %cmp118, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end113
  call void @__sanitizer_cov_trace_cmp4(i32 %sub115, i32 %cond6.i)
  %cmp119 = icmp uge i32 %sub115, %cond6.i
  %62 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ip, align 1
  %shr.i = lshr i32 %63, 8
  %retval.0.i832 = select i1 %cmp5, i32 %shr.i, i32 %63
  %idx.neg = sub i32 0, %cond114
  %add.ptr121 = getelementptr i8, ptr %ip, i32 %idx.neg
  %64 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %add.ptr121, align 1
  %shr.i833 = lshr i32 %65, 8
  %retval.0.i834 = select i1 %cmp5, i32 %shr.i833, i32 %65
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i832, i32 %retval.0.i834)
  %cmp123 = icmp eq i32 %retval.0.i832, %retval.0.i834
  %and125817 = and i1 %cmp119, %cmp123
  br i1 %and125817, label %if.then127, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then127:                                       ; preds = %if.then
  %add.ptr131 = getelementptr i8, ptr %add.ptr163, i32 %idx.neg
  br i1 %cmp.i835, label %if.then.i, label %if.then127.if.end20.i_crit_edge

if.then127.if.end20.i_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then.i:                                        ; preds = %if.then127
  %66 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr131, align 1
  %68 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %add.ptr163, align 1
  %xor.i = xor i32 %69, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %if.then.i.while.cond.i_crit_edge, label %cleanup.i

if.then.i.while.cond.i_crit_edge:                 ; preds = %if.then.i
  br label %while.cond.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = tail call i32 @llvm.ctlz.i32(i32 %xor.i, i1 true) #8, !range !23
  %71 = lshr i32 %70, 3
  br label %ZSTD_count.exit

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then.i.while.cond.i_crit_edge
  %pIn.pn.i = phi ptr [ %pIn.addr.0.i, %while.body.i.while.cond.i_crit_edge ], [ %add.ptr163, %if.then.i.while.cond.i_crit_edge ]
  %pMatch.pn.i = phi ptr [ %pMatch.addr.0.i, %while.body.i.while.cond.i_crit_edge ], [ %add.ptr131, %if.then.i.while.cond.i_crit_edge ]
  %pMatch.addr.0.i = getelementptr i8, ptr %pMatch.pn.i, i32 4
  %pIn.addr.0.i = getelementptr i8, ptr %pIn.pn.i, i32 4
  %cmp6.i = icmp ult ptr %pIn.addr.0.i, %add.ptr.i23.i
  br i1 %cmp6.i, label %while.body.i, label %while.cond.i.if.end20.i_crit_edge

while.cond.i.if.end20.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

while.body.i:                                     ; preds = %while.cond.i
  %72 = ptrtoint ptr %pMatch.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %pMatch.addr.0.i, align 1
  %74 = ptrtoint ptr %pIn.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %pIn.addr.0.i, align 1
  %xor10.i = xor i32 %75, %73
  %tobool11.not.i = icmp eq i32 %xor10.i, 0
  br i1 %tobool11.not.i, label %while.body.i.while.cond.i_crit_edge, label %cleanup18.thread.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

cleanup18.thread.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i, i1 true) #8, !range !23
  %77 = lshr i32 %76, 3
  %add.ptr17.i = getelementptr i8, ptr %pIn.addr.0.i, i32 %77
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit

if.end20.i:                                       ; preds = %while.cond.i.if.end20.i_crit_edge, %if.then127.if.end20.i_crit_edge
  %pIn.addr.2.i = phi ptr [ %add.ptr163, %if.then127.if.end20.i_crit_edge ], [ %pIn.addr.0.i, %while.cond.i.if.end20.i_crit_edge ]
  %pMatch.addr.2.i = phi ptr [ %add.ptr131, %if.then127.if.end20.i_crit_edge ], [ %pMatch.addr.0.i, %while.cond.i.if.end20.i_crit_edge ]
  %cmp34.i = icmp ult ptr %pIn.addr.2.i, %add.ptr33.i45.i
  br i1 %cmp34.i, label %land.lhs.true35.i, label %if.end20.i.if.end44.i_crit_edge

if.end20.i.if.end44.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

land.lhs.true35.i:                                ; preds = %if.end20.i
  %78 = ptrtoint ptr %pMatch.addr.2.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %pMatch.addr.2.i, align 1
  %80 = ptrtoint ptr %pIn.addr.2.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %pIn.addr.2.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %81)
  %cmp39.i = icmp eq i16 %79, %81
  br i1 %cmp39.i, label %if.then41.i, label %land.lhs.true35.i.if.end44.i_crit_edge

land.lhs.true35.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then41.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i = getelementptr i8, ptr %pIn.addr.2.i, i32 2
  %add.ptr43.i = getelementptr i8, ptr %pMatch.addr.2.i, i32 2
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true35.i.if.end44.i_crit_edge, %if.end20.i.if.end44.i_crit_edge
  %pIn.addr.4.i = phi ptr [ %add.ptr42.i, %if.then41.i ], [ %pIn.addr.2.i, %land.lhs.true35.i.if.end44.i_crit_edge ], [ %pIn.addr.2.i, %if.end20.i.if.end44.i_crit_edge ]
  %pMatch.addr.4.i = phi ptr [ %add.ptr43.i, %if.then41.i ], [ %pMatch.addr.2.i, %land.lhs.true35.i.if.end44.i_crit_edge ], [ %pMatch.addr.2.i, %if.end20.i.if.end44.i_crit_edge ]
  %cmp45.i = icmp ult ptr %pIn.addr.4.i, %iLimit
  br i1 %cmp45.i, label %land.lhs.true47.i, label %if.end44.i.if.end53.i_crit_edge

if.end44.i.if.end53.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

land.lhs.true47.i:                                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %pMatch.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pMatch.addr.4.i, align 1
  %84 = ptrtoint ptr %pIn.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pIn.addr.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %85)
  %cmp50.i = icmp eq i8 %83, %85
  %spec.select.idx.i = zext i1 %cmp50.i to i32
  %spec.select.i = getelementptr i8, ptr %pIn.addr.4.i, i32 %spec.select.idx.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %land.lhs.true47.i, %if.end44.i.if.end53.i_crit_edge
  %pIn.addr.5.i = phi ptr [ %pIn.addr.4.i, %if.end44.i.if.end53.i_crit_edge ], [ %spec.select.i, %land.lhs.true47.i ]
  %sub.ptr.lhs.cast54.i = ptrtoint ptr %pIn.addr.5.i to i32
  %sub.ptr.sub56.i = sub i32 %sub.ptr.lhs.cast54.i, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %if.end53.i, %cleanup18.thread.i, %cleanup.i
  %retval.3.i = phi i32 [ %sub.ptr.sub56.i, %if.end53.i ], [ %71, %cleanup.i ], [ %sub.ptr.sub.i, %cleanup18.thread.i ]
  %add133 = add i32 %retval.3.i, %cond6
  br label %if.end193

if.else:                                          ; preds = %cond.end113
  %cond143 = getelementptr i8, ptr %cond143.v, i32 %sub115
  br i1 %cmp144, label %land.lhs.true146, label %if.else.if.end167_crit_edge

if.else.if.end167_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

land.lhs.true146:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %sub116, i32 %sub148)
  %cmp149 = icmp ult i32 %sub116, %sub148
  %86 = xor i32 %sub115, -1
  %sub152 = add i32 %33, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub152)
  %cmp153 = icmp ugt i32 %sub152, 2
  %and155816 = and i1 %cmp149, %cmp153
  br i1 %and155816, label %land.lhs.true157, label %land.lhs.true146.if.end167_crit_edge

land.lhs.true146.if.end167_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

land.lhs.true157:                                 ; preds = %land.lhs.true146
  %87 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %ip, align 1
  %shr.i836 = lshr i32 %88, 8
  %retval.0.i837 = select i1 %cmp5, i32 %shr.i836, i32 %88
  %89 = ptrtoint ptr %cond143 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %cond143, align 1
  %shr.i838 = lshr i32 %90, 8
  %retval.0.i839 = select i1 %cmp5, i32 %shr.i838, i32 %90
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i837, i32 %retval.0.i839)
  %cmp160 = icmp eq i32 %retval.0.i837, %retval.0.i839
  br i1 %cmp160, label %if.then162, label %land.lhs.true157.if.end167_crit_edge

land.lhs.true157.if.end167_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then162:                                       ; preds = %land.lhs.true157
  %add.ptr164 = getelementptr i8, ptr %cond143, i32 %cond6
  %sub.ptr.rhs.cast.i841 = ptrtoint ptr %add.ptr164 to i32
  %sub.ptr.sub.i842 = sub i32 %sub.ptr.lhs.cast.i840, %sub.ptr.rhs.cast.i841
  %add.ptr.i843 = getelementptr i8, ptr %add.ptr163, i32 %sub.ptr.sub.i842
  %cmp.i844 = icmp ult ptr %add.ptr.i843, %iLimit
  %add.ptr.iEnd.i = select i1 %cmp.i844, ptr %add.ptr.i843, ptr %iLimit
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.iEnd.i, i32 -3
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr163
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then162.if.end20.i.i_crit_edge

if.then162.if.end20.i.i_crit_edge:                ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then.i.i:                                      ; preds = %if.then162
  %91 = ptrtoint ptr %add.ptr164 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %add.ptr164, align 1
  %93 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %add.ptr163, align 1
  %xor.i.i = xor i32 %94, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.while.cond.i.i_crit_edge, label %cleanup.i.i

if.then.i.i.while.cond.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.cond.i.i

cleanup.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i, i1 true) #8, !range !23
  %96 = lshr i32 %95, 3
  br label %ZSTD_count.exit.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.i.i.while.cond.i.i_crit_edge
  %pIn.pn.i.i = phi ptr [ %pIn.addr.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %add.ptr163, %if.then.i.i.while.cond.i.i_crit_edge ]
  %pMatch.pn.i.i = phi ptr [ %pMatch.addr.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %add.ptr164, %if.then.i.i.while.cond.i.i_crit_edge ]
  %pMatch.addr.0.i.i = getelementptr i8, ptr %pMatch.pn.i.i, i32 4
  %pIn.addr.0.i.i = getelementptr i8, ptr %pIn.pn.i.i, i32 4
  %cmp6.i.i = icmp ult ptr %pIn.addr.0.i.i, %add.ptr.i.i
  br i1 %cmp6.i.i, label %while.body.i.i, label %while.cond.i.i.if.end20.i.i_crit_edge

while.cond.i.i.if.end20.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %97 = ptrtoint ptr %pMatch.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %pMatch.addr.0.i.i, align 1
  %99 = ptrtoint ptr %pIn.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %pIn.addr.0.i.i, align 1
  %xor10.i.i = xor i32 %100, %98
  %tobool11.not.i.i = icmp eq i32 %xor10.i.i, 0
  br i1 %tobool11.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %cleanup18.thread.i.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

cleanup18.thread.i.i:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i, i1 true) #8, !range !23
  %102 = lshr i32 %101, 3
  %add.ptr17.i.i = getelementptr i8, ptr %pIn.addr.0.i.i, i32 %102
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr17.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit.i

if.end20.i.i:                                     ; preds = %while.cond.i.i.if.end20.i.i_crit_edge, %if.then162.if.end20.i.i_crit_edge
  %pIn.addr.2.i.i = phi ptr [ %add.ptr163, %if.then162.if.end20.i.i_crit_edge ], [ %pIn.addr.0.i.i, %while.cond.i.i.if.end20.i.i_crit_edge ]
  %pMatch.addr.2.i.i = phi ptr [ %add.ptr164, %if.then162.if.end20.i.i_crit_edge ], [ %pMatch.addr.0.i.i, %while.cond.i.i.if.end20.i.i_crit_edge ]
  %add.ptr33.i.i = getelementptr i8, ptr %add.ptr.iEnd.i, i32 -1
  %cmp34.i.i = icmp ult ptr %pIn.addr.2.i.i, %add.ptr33.i.i
  br i1 %cmp34.i.i, label %land.lhs.true35.i.i, label %if.end20.i.i.if.end44.i.i_crit_edge

if.end20.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

land.lhs.true35.i.i:                              ; preds = %if.end20.i.i
  %103 = ptrtoint ptr %pMatch.addr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %pMatch.addr.2.i.i, align 1
  %105 = ptrtoint ptr %pIn.addr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %pIn.addr.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %104, i16 %106)
  %cmp39.i.i = icmp eq i16 %104, %106
  br i1 %cmp39.i.i, label %if.then41.i.i, label %land.lhs.true35.i.i.if.end44.i.i_crit_edge

land.lhs.true35.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i

if.then41.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i = getelementptr i8, ptr %pIn.addr.2.i.i, i32 2
  %add.ptr43.i.i = getelementptr i8, ptr %pMatch.addr.2.i.i, i32 2
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then41.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge, %if.end20.i.i.if.end44.i.i_crit_edge
  %pIn.addr.4.i.i = phi ptr [ %add.ptr42.i.i, %if.then41.i.i ], [ %pIn.addr.2.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge ], [ %pIn.addr.2.i.i, %if.end20.i.i.if.end44.i.i_crit_edge ]
  %pMatch.addr.4.i.i = phi ptr [ %add.ptr43.i.i, %if.then41.i.i ], [ %pMatch.addr.2.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge ], [ %pMatch.addr.2.i.i, %if.end20.i.i.if.end44.i.i_crit_edge ]
  %cmp45.i.i = icmp ult ptr %pIn.addr.4.i.i, %add.ptr.iEnd.i
  br i1 %cmp45.i.i, label %land.lhs.true47.i.i, label %if.end44.i.i.if.end53.i.i_crit_edge

if.end44.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i

land.lhs.true47.i.i:                              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %pMatch.addr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pMatch.addr.4.i.i, align 1
  %109 = ptrtoint ptr %pIn.addr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %pIn.addr.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %110)
  %cmp50.i.i = icmp eq i8 %108, %110
  %spec.select.idx.i.i = zext i1 %cmp50.i.i to i32
  %spec.select.i.i = getelementptr i8, ptr %pIn.addr.4.i.i, i32 %spec.select.idx.i.i
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %land.lhs.true47.i.i, %if.end44.i.i.if.end53.i.i_crit_edge
  %pIn.addr.5.i.i = phi ptr [ %pIn.addr.4.i.i, %if.end44.i.i.if.end53.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true47.i.i ]
  %sub.ptr.lhs.cast54.i.i = ptrtoint ptr %pIn.addr.5.i.i to i32
  %sub.ptr.sub56.i.i = sub i32 %sub.ptr.lhs.cast54.i.i, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %if.end53.i.i, %cleanup18.thread.i.i, %cleanup.i.i
  %retval.3.i.i = phi i32 [ %sub.ptr.sub56.i.i, %if.end53.i.i ], [ %96, %cleanup.i.i ], [ %sub.ptr.sub.i.i, %cleanup18.thread.i.i ]
  %add.ptr5.i = getelementptr i8, ptr %add.ptr164, i32 %retval.3.i.i
  %cmp6.not.i = icmp eq ptr %add.ptr5.i, %add.ptr
  br i1 %cmp6.not.i, label %if.end.i, label %ZSTD_count.exit.i.ZSTD_count_2segments.exit_crit_edge

ZSTD_count.exit.i.ZSTD_count_2segments.exit_crit_edge: ; preds = %ZSTD_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_count_2segments.exit

if.end.i:                                         ; preds = %ZSTD_count.exit.i
  %add.ptr7.i = getelementptr i8, ptr %add.ptr163, i32 %retval.3.i.i
  %cmp.i24.i = icmp ugt ptr %add.ptr.i23.i, %add.ptr7.i
  br i1 %cmp.i24.i, label %if.then.i27.i, label %if.end.i.if.end20.i47.i_crit_edge

if.end.i.if.end20.i47.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i

if.then.i27.i:                                    ; preds = %if.end.i
  %111 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %add.ptr13, align 1
  %113 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %add.ptr7.i, align 1
  %xor.i25.i = xor i32 %114, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i)
  %tobool.not.i26.i = icmp eq i32 %xor.i25.i, 0
  br i1 %tobool.not.i26.i, label %if.then.i27.i.while.cond.i34.i_crit_edge, label %cleanup.i28.i

if.then.i27.i.while.cond.i34.i_crit_edge:         ; preds = %if.then.i27.i
  br label %while.cond.i34.i

cleanup.i28.i:                                    ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i, i1 true) #8, !range !23
  %116 = lshr i32 %115, 3
  br label %ZSTD_count.exit67.i

while.cond.i34.i:                                 ; preds = %while.body.i37.i.while.cond.i34.i_crit_edge, %if.then.i27.i.while.cond.i34.i_crit_edge
  %pIn.pn.i29.i = phi ptr [ %pIn.addr.0.i32.i, %while.body.i37.i.while.cond.i34.i_crit_edge ], [ %add.ptr7.i, %if.then.i27.i.while.cond.i34.i_crit_edge ]
  %pMatch.pn.i30.i = phi ptr [ %pMatch.addr.0.i31.i, %while.body.i37.i.while.cond.i34.i_crit_edge ], [ %add.ptr13, %if.then.i27.i.while.cond.i34.i_crit_edge ]
  %pMatch.addr.0.i31.i = getelementptr i8, ptr %pMatch.pn.i30.i, i32 4
  %pIn.addr.0.i32.i = getelementptr i8, ptr %pIn.pn.i29.i, i32 4
  %cmp6.i33.i = icmp ult ptr %pIn.addr.0.i32.i, %add.ptr.i23.i
  br i1 %cmp6.i33.i, label %while.body.i37.i, label %while.cond.i34.i.if.end20.i47.i_crit_edge

while.cond.i34.i.if.end20.i47.i_crit_edge:        ; preds = %while.cond.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i

while.body.i37.i:                                 ; preds = %while.cond.i34.i
  %117 = ptrtoint ptr %pMatch.addr.0.i31.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %pMatch.addr.0.i31.i, align 1
  %119 = ptrtoint ptr %pIn.addr.0.i32.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %pIn.addr.0.i32.i, align 1
  %xor10.i35.i = xor i32 %120, %118
  %tobool11.not.i36.i = icmp eq i32 %xor10.i35.i, 0
  br i1 %tobool11.not.i36.i, label %while.body.i37.i.while.cond.i34.i_crit_edge, label %cleanup18.thread.i42.i

while.body.i37.i.while.cond.i34.i_crit_edge:      ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i34.i

cleanup18.thread.i42.i:                           ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i, i1 true) #8, !range !23
  %122 = lshr i32 %121, 3
  %add.ptr17.i38.i = getelementptr i8, ptr %pIn.addr.0.i32.i, i32 %122
  %sub.ptr.lhs.cast.i39.i = ptrtoint ptr %add.ptr17.i38.i to i32
  %sub.ptr.rhs.cast.i40.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.sub.i41.i = sub i32 %sub.ptr.lhs.cast.i39.i, %sub.ptr.rhs.cast.i40.i
  br label %ZSTD_count.exit67.i

if.end20.i47.i:                                   ; preds = %while.cond.i34.i.if.end20.i47.i_crit_edge, %if.end.i.if.end20.i47.i_crit_edge
  %pIn.addr.2.i43.i = phi ptr [ %add.ptr7.i, %if.end.i.if.end20.i47.i_crit_edge ], [ %pIn.addr.0.i32.i, %while.cond.i34.i.if.end20.i47.i_crit_edge ]
  %pMatch.addr.2.i44.i = phi ptr [ %add.ptr13, %if.end.i.if.end20.i47.i_crit_edge ], [ %pMatch.addr.0.i31.i, %while.cond.i34.i.if.end20.i47.i_crit_edge ]
  %cmp34.i46.i = icmp ult ptr %pIn.addr.2.i43.i, %add.ptr33.i45.i
  br i1 %cmp34.i46.i, label %land.lhs.true35.i49.i, label %if.end20.i47.i.if.end44.i56.i_crit_edge

if.end20.i47.i.if.end44.i56.i_crit_edge:          ; preds = %if.end20.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i

land.lhs.true35.i49.i:                            ; preds = %if.end20.i47.i
  %123 = ptrtoint ptr %pMatch.addr.2.i44.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %pMatch.addr.2.i44.i, align 1
  %125 = ptrtoint ptr %pIn.addr.2.i43.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %pIn.addr.2.i43.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %126)
  %cmp39.i48.i = icmp eq i16 %124, %126
  br i1 %cmp39.i48.i, label %if.then41.i52.i, label %land.lhs.true35.i49.i.if.end44.i56.i_crit_edge

land.lhs.true35.i49.i.if.end44.i56.i_crit_edge:   ; preds = %land.lhs.true35.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i

if.then41.i52.i:                                  ; preds = %land.lhs.true35.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i50.i = getelementptr i8, ptr %pIn.addr.2.i43.i, i32 2
  %add.ptr43.i51.i = getelementptr i8, ptr %pMatch.addr.2.i44.i, i32 2
  br label %if.end44.i56.i

if.end44.i56.i:                                   ; preds = %if.then41.i52.i, %land.lhs.true35.i49.i.if.end44.i56.i_crit_edge, %if.end20.i47.i.if.end44.i56.i_crit_edge
  %pIn.addr.4.i53.i = phi ptr [ %add.ptr42.i50.i, %if.then41.i52.i ], [ %pIn.addr.2.i43.i, %land.lhs.true35.i49.i.if.end44.i56.i_crit_edge ], [ %pIn.addr.2.i43.i, %if.end20.i47.i.if.end44.i56.i_crit_edge ]
  %pMatch.addr.4.i54.i = phi ptr [ %add.ptr43.i51.i, %if.then41.i52.i ], [ %pMatch.addr.2.i44.i, %land.lhs.true35.i49.i.if.end44.i56.i_crit_edge ], [ %pMatch.addr.2.i44.i, %if.end20.i47.i.if.end44.i56.i_crit_edge ]
  %cmp45.i55.i = icmp ult ptr %pIn.addr.4.i53.i, %iLimit
  br i1 %cmp45.i55.i, label %land.lhs.true47.i60.i, label %if.end44.i56.i.if.end53.i65.i_crit_edge

if.end44.i56.i.if.end53.i65.i_crit_edge:          ; preds = %if.end44.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i65.i

land.lhs.true47.i60.i:                            ; preds = %if.end44.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %pMatch.addr.4.i54.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %pMatch.addr.4.i54.i, align 1
  %129 = ptrtoint ptr %pIn.addr.4.i53.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pIn.addr.4.i53.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %130)
  %cmp50.i57.i = icmp eq i8 %128, %130
  %spec.select.idx.i58.i = zext i1 %cmp50.i57.i to i32
  %spec.select.i59.i = getelementptr i8, ptr %pIn.addr.4.i53.i, i32 %spec.select.idx.i58.i
  br label %if.end53.i65.i

if.end53.i65.i:                                   ; preds = %land.lhs.true47.i60.i, %if.end44.i56.i.if.end53.i65.i_crit_edge
  %pIn.addr.5.i61.i = phi ptr [ %pIn.addr.4.i53.i, %if.end44.i56.i.if.end53.i65.i_crit_edge ], [ %spec.select.i59.i, %land.lhs.true47.i60.i ]
  %sub.ptr.lhs.cast54.i62.i = ptrtoint ptr %pIn.addr.5.i61.i to i32
  %sub.ptr.rhs.cast55.i63.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.sub56.i64.i = sub i32 %sub.ptr.lhs.cast54.i62.i, %sub.ptr.rhs.cast55.i63.i
  br label %ZSTD_count.exit67.i

ZSTD_count.exit67.i:                              ; preds = %if.end53.i65.i, %cleanup18.thread.i42.i, %cleanup.i28.i
  %retval.3.i66.i = phi i32 [ %sub.ptr.sub56.i64.i, %if.end53.i65.i ], [ %116, %cleanup.i28.i ], [ %sub.ptr.sub.i41.i, %cleanup18.thread.i42.i ]
  %add.i = add i32 %retval.3.i66.i, %retval.3.i.i
  br label %ZSTD_count_2segments.exit

ZSTD_count_2segments.exit:                        ; preds = %ZSTD_count.exit67.i, %ZSTD_count.exit.i.ZSTD_count_2segments.exit_crit_edge
  %retval.0.i845 = phi i32 [ %add.i, %ZSTD_count.exit67.i ], [ %retval.3.i.i, %ZSTD_count.exit.i.ZSTD_count_2segments.exit_crit_edge ]
  %add166 = add i32 %retval.0.i845, %cond6
  br label %if.end167

if.end167:                                        ; preds = %ZSTD_count_2segments.exit, %land.lhs.true157.if.end167_crit_edge, %land.lhs.true146.if.end167_crit_edge, %if.else.if.end167_crit_edge
  %repLen.0 = phi i32 [ %add166, %ZSTD_count_2segments.exit ], [ 0, %land.lhs.true157.if.end167_crit_edge ], [ 0, %land.lhs.true146.if.end167_crit_edge ], [ 0, %if.else.if.end167_crit_edge ]
  br i1 %cmp32, label %land.lhs.true170, label %if.end167.if.end193_crit_edge

if.end167.if.end193_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

land.lhs.true170:                                 ; preds = %if.end167
  call void @__sanitizer_cov_trace_cmp4(i32 %sub116, i32 %sub173)
  %cmp174 = icmp ult i32 %sub116, %sub173
  %131 = xor i32 %sub115, -1
  %sub177 = add i32 %33, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub177)
  %cmp178 = icmp ugt i32 %sub177, 2
  %and180815 = and i1 %cmp174, %cmp178
  br i1 %and180815, label %land.lhs.true182, label %land.lhs.true170.if.end193_crit_edge

land.lhs.true170.if.end193_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

land.lhs.true182:                                 ; preds = %land.lhs.true170
  %132 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %ip, align 1
  %shr.i847 = lshr i32 %133, 8
  %retval.0.i848 = select i1 %cmp5, i32 %shr.i847, i32 %133
  %134 = ptrtoint ptr %cond143 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %cond143, align 1
  %shr.i849 = lshr i32 %135, 8
  %retval.0.i850 = select i1 %cmp5, i32 %shr.i849, i32 %135
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i848, i32 %retval.0.i850)
  %cmp185 = icmp eq i32 %retval.0.i848, %retval.0.i850
  br i1 %cmp185, label %if.then187, label %land.lhs.true182.if.end193_crit_edge

land.lhs.true182.if.end193_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then187:                                       ; preds = %land.lhs.true182
  %add.ptr189 = getelementptr i8, ptr %cond143, i32 %cond6
  %sub.ptr.rhs.cast.i852 = ptrtoint ptr %add.ptr189 to i32
  %sub.ptr.sub.i853 = sub i32 %sub.ptr.lhs.cast58143114471483, %sub.ptr.rhs.cast.i852
  %add.ptr.i854 = getelementptr i8, ptr %add.ptr163, i32 %sub.ptr.sub.i853
  %cmp.i855 = icmp ult ptr %add.ptr.i854, %iLimit
  %add.ptr.iEnd.i856 = select i1 %cmp.i855, ptr %add.ptr.i854, ptr %iLimit
  %add.ptr.i.i857 = getelementptr i8, ptr %add.ptr.iEnd.i856, i32 -3
  %cmp.i.i858 = icmp ugt ptr %add.ptr.i.i857, %add.ptr163
  br i1 %cmp.i.i858, label %if.then.i.i861, label %if.then187.if.end20.i.i881_crit_edge

if.then187.if.end20.i.i881_crit_edge:             ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i881

if.then.i.i861:                                   ; preds = %if.then187
  %136 = ptrtoint ptr %add.ptr189 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %add.ptr189, align 1
  %138 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %add.ptr163, align 1
  %xor.i.i859 = xor i32 %139, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i859)
  %tobool.not.i.i860 = icmp eq i32 %xor.i.i859, 0
  br i1 %tobool.not.i.i860, label %if.then.i.i861.while.cond.i.i868_crit_edge, label %cleanup.i.i862

if.then.i.i861.while.cond.i.i868_crit_edge:       ; preds = %if.then.i.i861
  br label %while.cond.i.i868

cleanup.i.i862:                                   ; preds = %if.then.i.i861
  call void @__sanitizer_cov_trace_pc() #10
  %140 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i859, i1 true) #8, !range !23
  %141 = lshr i32 %140, 3
  br label %ZSTD_count.exit.i903

while.cond.i.i868:                                ; preds = %while.body.i.i871.while.cond.i.i868_crit_edge, %if.then.i.i861.while.cond.i.i868_crit_edge
  %pIn.pn.i.i863 = phi ptr [ %pIn.addr.0.i.i866, %while.body.i.i871.while.cond.i.i868_crit_edge ], [ %add.ptr163, %if.then.i.i861.while.cond.i.i868_crit_edge ]
  %pMatch.pn.i.i864 = phi ptr [ %pMatch.addr.0.i.i865, %while.body.i.i871.while.cond.i.i868_crit_edge ], [ %add.ptr189, %if.then.i.i861.while.cond.i.i868_crit_edge ]
  %pMatch.addr.0.i.i865 = getelementptr i8, ptr %pMatch.pn.i.i864, i32 4
  %pIn.addr.0.i.i866 = getelementptr i8, ptr %pIn.pn.i.i863, i32 4
  %cmp6.i.i867 = icmp ult ptr %pIn.addr.0.i.i866, %add.ptr.i.i857
  br i1 %cmp6.i.i867, label %while.body.i.i871, label %while.cond.i.i868.if.end20.i.i881_crit_edge

while.cond.i.i868.if.end20.i.i881_crit_edge:      ; preds = %while.cond.i.i868
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i881

while.body.i.i871:                                ; preds = %while.cond.i.i868
  %142 = ptrtoint ptr %pMatch.addr.0.i.i865 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %pMatch.addr.0.i.i865, align 1
  %144 = ptrtoint ptr %pIn.addr.0.i.i866 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %pIn.addr.0.i.i866, align 1
  %xor10.i.i869 = xor i32 %145, %143
  %tobool11.not.i.i870 = icmp eq i32 %xor10.i.i869, 0
  br i1 %tobool11.not.i.i870, label %while.body.i.i871.while.cond.i.i868_crit_edge, label %cleanup18.thread.i.i876

while.body.i.i871.while.cond.i.i868_crit_edge:    ; preds = %while.body.i.i871
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i868

cleanup18.thread.i.i876:                          ; preds = %while.body.i.i871
  call void @__sanitizer_cov_trace_pc() #10
  %146 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i869, i1 true) #8, !range !23
  %147 = lshr i32 %146, 3
  %add.ptr17.i.i872 = getelementptr i8, ptr %pIn.addr.0.i.i866, i32 %147
  %sub.ptr.lhs.cast.i.i873 = ptrtoint ptr %add.ptr17.i.i872 to i32
  %sub.ptr.sub.i.i875 = sub i32 %sub.ptr.lhs.cast.i.i873, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit.i903

if.end20.i.i881:                                  ; preds = %while.cond.i.i868.if.end20.i.i881_crit_edge, %if.then187.if.end20.i.i881_crit_edge
  %pIn.addr.2.i.i877 = phi ptr [ %add.ptr163, %if.then187.if.end20.i.i881_crit_edge ], [ %pIn.addr.0.i.i866, %while.cond.i.i868.if.end20.i.i881_crit_edge ]
  %pMatch.addr.2.i.i878 = phi ptr [ %add.ptr189, %if.then187.if.end20.i.i881_crit_edge ], [ %pMatch.addr.0.i.i865, %while.cond.i.i868.if.end20.i.i881_crit_edge ]
  %add.ptr33.i.i879 = getelementptr i8, ptr %add.ptr.iEnd.i856, i32 -1
  %cmp34.i.i880 = icmp ult ptr %pIn.addr.2.i.i877, %add.ptr33.i.i879
  br i1 %cmp34.i.i880, label %land.lhs.true35.i.i883, label %if.end20.i.i881.if.end44.i.i890_crit_edge

if.end20.i.i881.if.end44.i.i890_crit_edge:        ; preds = %if.end20.i.i881
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i890

land.lhs.true35.i.i883:                           ; preds = %if.end20.i.i881
  %148 = ptrtoint ptr %pMatch.addr.2.i.i878 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %pMatch.addr.2.i.i878, align 1
  %150 = ptrtoint ptr %pIn.addr.2.i.i877 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %pIn.addr.2.i.i877, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %149, i16 %151)
  %cmp39.i.i882 = icmp eq i16 %149, %151
  br i1 %cmp39.i.i882, label %if.then41.i.i886, label %land.lhs.true35.i.i883.if.end44.i.i890_crit_edge

land.lhs.true35.i.i883.if.end44.i.i890_crit_edge: ; preds = %land.lhs.true35.i.i883
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i890

if.then41.i.i886:                                 ; preds = %land.lhs.true35.i.i883
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i884 = getelementptr i8, ptr %pIn.addr.2.i.i877, i32 2
  %add.ptr43.i.i885 = getelementptr i8, ptr %pMatch.addr.2.i.i878, i32 2
  br label %if.end44.i.i890

if.end44.i.i890:                                  ; preds = %if.then41.i.i886, %land.lhs.true35.i.i883.if.end44.i.i890_crit_edge, %if.end20.i.i881.if.end44.i.i890_crit_edge
  %pIn.addr.4.i.i887 = phi ptr [ %add.ptr42.i.i884, %if.then41.i.i886 ], [ %pIn.addr.2.i.i877, %land.lhs.true35.i.i883.if.end44.i.i890_crit_edge ], [ %pIn.addr.2.i.i877, %if.end20.i.i881.if.end44.i.i890_crit_edge ]
  %pMatch.addr.4.i.i888 = phi ptr [ %add.ptr43.i.i885, %if.then41.i.i886 ], [ %pMatch.addr.2.i.i878, %land.lhs.true35.i.i883.if.end44.i.i890_crit_edge ], [ %pMatch.addr.2.i.i878, %if.end20.i.i881.if.end44.i.i890_crit_edge ]
  %cmp45.i.i889 = icmp ult ptr %pIn.addr.4.i.i887, %add.ptr.iEnd.i856
  br i1 %cmp45.i.i889, label %land.lhs.true47.i.i894, label %if.end44.i.i890.if.end53.i.i899_crit_edge

if.end44.i.i890.if.end53.i.i899_crit_edge:        ; preds = %if.end44.i.i890
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i899

land.lhs.true47.i.i894:                           ; preds = %if.end44.i.i890
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %pMatch.addr.4.i.i888 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %pMatch.addr.4.i.i888, align 1
  %154 = ptrtoint ptr %pIn.addr.4.i.i887 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %pIn.addr.4.i.i887, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %153, i8 %155)
  %cmp50.i.i891 = icmp eq i8 %153, %155
  %spec.select.idx.i.i892 = zext i1 %cmp50.i.i891 to i32
  %spec.select.i.i893 = getelementptr i8, ptr %pIn.addr.4.i.i887, i32 %spec.select.idx.i.i892
  br label %if.end53.i.i899

if.end53.i.i899:                                  ; preds = %land.lhs.true47.i.i894, %if.end44.i.i890.if.end53.i.i899_crit_edge
  %pIn.addr.5.i.i895 = phi ptr [ %pIn.addr.4.i.i887, %if.end44.i.i890.if.end53.i.i899_crit_edge ], [ %spec.select.i.i893, %land.lhs.true47.i.i894 ]
  %sub.ptr.lhs.cast54.i.i896 = ptrtoint ptr %pIn.addr.5.i.i895 to i32
  %sub.ptr.sub56.i.i898 = sub i32 %sub.ptr.lhs.cast54.i.i896, %sub.ptr.rhs.cast55.i.i
  br label %ZSTD_count.exit.i903

ZSTD_count.exit.i903:                             ; preds = %if.end53.i.i899, %cleanup18.thread.i.i876, %cleanup.i.i862
  %retval.3.i.i900 = phi i32 [ %sub.ptr.sub56.i.i898, %if.end53.i.i899 ], [ %141, %cleanup.i.i862 ], [ %sub.ptr.sub.i.i875, %cleanup18.thread.i.i876 ]
  %add.ptr5.i901 = getelementptr i8, ptr %add.ptr189, i32 %retval.3.i.i900
  %cmp6.not.i902 = icmp eq ptr %add.ptr5.i901, %cond55142814491481
  br i1 %cmp6.not.i902, label %if.end.i907, label %ZSTD_count.exit.i903.ZSTD_count_2segments.exit954_crit_edge

ZSTD_count.exit.i903.ZSTD_count_2segments.exit954_crit_edge: ; preds = %ZSTD_count.exit.i903
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_count_2segments.exit954

if.end.i907:                                      ; preds = %ZSTD_count.exit.i903
  %add.ptr7.i904 = getelementptr i8, ptr %add.ptr163, i32 %retval.3.i.i900
  %cmp.i24.i906 = icmp ugt ptr %add.ptr.i23.i, %add.ptr7.i904
  br i1 %cmp.i24.i906, label %if.then.i27.i910, label %if.end.i907.if.end20.i47.i930_crit_edge

if.end.i907.if.end20.i47.i930_crit_edge:          ; preds = %if.end.i907
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i930

if.then.i27.i910:                                 ; preds = %if.end.i907
  %156 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %add.ptr13, align 1
  %158 = ptrtoint ptr %add.ptr7.i904 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %add.ptr7.i904, align 1
  %xor.i25.i908 = xor i32 %159, %157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i908)
  %tobool.not.i26.i909 = icmp eq i32 %xor.i25.i908, 0
  br i1 %tobool.not.i26.i909, label %if.then.i27.i910.while.cond.i34.i917_crit_edge, label %cleanup.i28.i911

if.then.i27.i910.while.cond.i34.i917_crit_edge:   ; preds = %if.then.i27.i910
  br label %while.cond.i34.i917

cleanup.i28.i911:                                 ; preds = %if.then.i27.i910
  call void @__sanitizer_cov_trace_pc() #10
  %160 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i908, i1 true) #8, !range !23
  %161 = lshr i32 %160, 3
  br label %ZSTD_count.exit67.i951

while.cond.i34.i917:                              ; preds = %while.body.i37.i920.while.cond.i34.i917_crit_edge, %if.then.i27.i910.while.cond.i34.i917_crit_edge
  %pIn.pn.i29.i912 = phi ptr [ %pIn.addr.0.i32.i915, %while.body.i37.i920.while.cond.i34.i917_crit_edge ], [ %add.ptr7.i904, %if.then.i27.i910.while.cond.i34.i917_crit_edge ]
  %pMatch.pn.i30.i913 = phi ptr [ %pMatch.addr.0.i31.i914, %while.body.i37.i920.while.cond.i34.i917_crit_edge ], [ %add.ptr13, %if.then.i27.i910.while.cond.i34.i917_crit_edge ]
  %pMatch.addr.0.i31.i914 = getelementptr i8, ptr %pMatch.pn.i30.i913, i32 4
  %pIn.addr.0.i32.i915 = getelementptr i8, ptr %pIn.pn.i29.i912, i32 4
  %cmp6.i33.i916 = icmp ult ptr %pIn.addr.0.i32.i915, %add.ptr.i23.i
  br i1 %cmp6.i33.i916, label %while.body.i37.i920, label %while.cond.i34.i917.if.end20.i47.i930_crit_edge

while.cond.i34.i917.if.end20.i47.i930_crit_edge:  ; preds = %while.cond.i34.i917
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i930

while.body.i37.i920:                              ; preds = %while.cond.i34.i917
  %162 = ptrtoint ptr %pMatch.addr.0.i31.i914 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %pMatch.addr.0.i31.i914, align 1
  %164 = ptrtoint ptr %pIn.addr.0.i32.i915 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %pIn.addr.0.i32.i915, align 1
  %xor10.i35.i918 = xor i32 %165, %163
  %tobool11.not.i36.i919 = icmp eq i32 %xor10.i35.i918, 0
  br i1 %tobool11.not.i36.i919, label %while.body.i37.i920.while.cond.i34.i917_crit_edge, label %cleanup18.thread.i42.i925

while.body.i37.i920.while.cond.i34.i917_crit_edge: ; preds = %while.body.i37.i920
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i34.i917

cleanup18.thread.i42.i925:                        ; preds = %while.body.i37.i920
  call void @__sanitizer_cov_trace_pc() #10
  %166 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i918, i1 true) #8, !range !23
  %167 = lshr i32 %166, 3
  %add.ptr17.i38.i921 = getelementptr i8, ptr %pIn.addr.0.i32.i915, i32 %167
  %sub.ptr.lhs.cast.i39.i922 = ptrtoint ptr %add.ptr17.i38.i921 to i32
  %sub.ptr.rhs.cast.i40.i923 = ptrtoint ptr %add.ptr7.i904 to i32
  %sub.ptr.sub.i41.i924 = sub i32 %sub.ptr.lhs.cast.i39.i922, %sub.ptr.rhs.cast.i40.i923
  br label %ZSTD_count.exit67.i951

if.end20.i47.i930:                                ; preds = %while.cond.i34.i917.if.end20.i47.i930_crit_edge, %if.end.i907.if.end20.i47.i930_crit_edge
  %pIn.addr.2.i43.i926 = phi ptr [ %add.ptr7.i904, %if.end.i907.if.end20.i47.i930_crit_edge ], [ %pIn.addr.0.i32.i915, %while.cond.i34.i917.if.end20.i47.i930_crit_edge ]
  %pMatch.addr.2.i44.i927 = phi ptr [ %add.ptr13, %if.end.i907.if.end20.i47.i930_crit_edge ], [ %pMatch.addr.0.i31.i914, %while.cond.i34.i917.if.end20.i47.i930_crit_edge ]
  %cmp34.i46.i929 = icmp ult ptr %pIn.addr.2.i43.i926, %add.ptr33.i45.i
  br i1 %cmp34.i46.i929, label %land.lhs.true35.i49.i932, label %if.end20.i47.i930.if.end44.i56.i939_crit_edge

if.end20.i47.i930.if.end44.i56.i939_crit_edge:    ; preds = %if.end20.i47.i930
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i939

land.lhs.true35.i49.i932:                         ; preds = %if.end20.i47.i930
  %168 = ptrtoint ptr %pMatch.addr.2.i44.i927 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 2)
  %169 = load i16, ptr %pMatch.addr.2.i44.i927, align 1
  %170 = ptrtoint ptr %pIn.addr.2.i43.i926 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %pIn.addr.2.i43.i926, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %169, i16 %171)
  %cmp39.i48.i931 = icmp eq i16 %169, %171
  br i1 %cmp39.i48.i931, label %if.then41.i52.i935, label %land.lhs.true35.i49.i932.if.end44.i56.i939_crit_edge

land.lhs.true35.i49.i932.if.end44.i56.i939_crit_edge: ; preds = %land.lhs.true35.i49.i932
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i939

if.then41.i52.i935:                               ; preds = %land.lhs.true35.i49.i932
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i50.i933 = getelementptr i8, ptr %pIn.addr.2.i43.i926, i32 2
  %add.ptr43.i51.i934 = getelementptr i8, ptr %pMatch.addr.2.i44.i927, i32 2
  br label %if.end44.i56.i939

if.end44.i56.i939:                                ; preds = %if.then41.i52.i935, %land.lhs.true35.i49.i932.if.end44.i56.i939_crit_edge, %if.end20.i47.i930.if.end44.i56.i939_crit_edge
  %pIn.addr.4.i53.i936 = phi ptr [ %add.ptr42.i50.i933, %if.then41.i52.i935 ], [ %pIn.addr.2.i43.i926, %land.lhs.true35.i49.i932.if.end44.i56.i939_crit_edge ], [ %pIn.addr.2.i43.i926, %if.end20.i47.i930.if.end44.i56.i939_crit_edge ]
  %pMatch.addr.4.i54.i937 = phi ptr [ %add.ptr43.i51.i934, %if.then41.i52.i935 ], [ %pMatch.addr.2.i44.i927, %land.lhs.true35.i49.i932.if.end44.i56.i939_crit_edge ], [ %pMatch.addr.2.i44.i927, %if.end20.i47.i930.if.end44.i56.i939_crit_edge ]
  %cmp45.i55.i938 = icmp ult ptr %pIn.addr.4.i53.i936, %iLimit
  br i1 %cmp45.i55.i938, label %land.lhs.true47.i60.i943, label %if.end44.i56.i939.if.end53.i65.i948_crit_edge

if.end44.i56.i939.if.end53.i65.i948_crit_edge:    ; preds = %if.end44.i56.i939
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i65.i948

land.lhs.true47.i60.i943:                         ; preds = %if.end44.i56.i939
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %pMatch.addr.4.i54.i937 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %pMatch.addr.4.i54.i937, align 1
  %174 = ptrtoint ptr %pIn.addr.4.i53.i936 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %pIn.addr.4.i53.i936, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %175)
  %cmp50.i57.i940 = icmp eq i8 %173, %175
  %spec.select.idx.i58.i941 = zext i1 %cmp50.i57.i940 to i32
  %spec.select.i59.i942 = getelementptr i8, ptr %pIn.addr.4.i53.i936, i32 %spec.select.idx.i58.i941
  br label %if.end53.i65.i948

if.end53.i65.i948:                                ; preds = %land.lhs.true47.i60.i943, %if.end44.i56.i939.if.end53.i65.i948_crit_edge
  %pIn.addr.5.i61.i944 = phi ptr [ %pIn.addr.4.i53.i936, %if.end44.i56.i939.if.end53.i65.i948_crit_edge ], [ %spec.select.i59.i942, %land.lhs.true47.i60.i943 ]
  %sub.ptr.lhs.cast54.i62.i945 = ptrtoint ptr %pIn.addr.5.i61.i944 to i32
  %sub.ptr.rhs.cast55.i63.i946 = ptrtoint ptr %add.ptr7.i904 to i32
  %sub.ptr.sub56.i64.i947 = sub i32 %sub.ptr.lhs.cast54.i62.i945, %sub.ptr.rhs.cast55.i63.i946
  br label %ZSTD_count.exit67.i951

ZSTD_count.exit67.i951:                           ; preds = %if.end53.i65.i948, %cleanup18.thread.i42.i925, %cleanup.i28.i911
  %retval.3.i66.i949 = phi i32 [ %sub.ptr.sub56.i64.i947, %if.end53.i65.i948 ], [ %161, %cleanup.i28.i911 ], [ %sub.ptr.sub.i41.i924, %cleanup18.thread.i42.i925 ]
  %add.i950 = add i32 %retval.3.i66.i949, %retval.3.i.i900
  br label %ZSTD_count_2segments.exit954

ZSTD_count_2segments.exit954:                     ; preds = %ZSTD_count.exit67.i951, %ZSTD_count.exit.i903.ZSTD_count_2segments.exit954_crit_edge
  %retval.0.i952 = phi i32 [ %add.i950, %ZSTD_count.exit67.i951 ], [ %retval.3.i.i900, %ZSTD_count.exit.i903.ZSTD_count_2segments.exit954_crit_edge ]
  %add191 = add i32 %retval.0.i952, %cond6
  br label %if.end193

if.end193:                                        ; preds = %ZSTD_count_2segments.exit954, %land.lhs.true182.if.end193_crit_edge, %land.lhs.true170.if.end193_crit_edge, %if.end167.if.end193_crit_edge, %ZSTD_count.exit
  %repLen.2 = phi i32 [ %add133, %ZSTD_count.exit ], [ %add191, %ZSTD_count_2segments.exit954 ], [ %repLen.0, %land.lhs.true182.if.end193_crit_edge ], [ %repLen.0, %land.lhs.true170.if.end193_crit_edge ], [ %repLen.0, %if.end167.if.end193_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %repLen.2, i32 %bestLength.01590)
  %cmp194 = icmp ugt i32 %repLen.2, %bestLength.01590
  br i1 %cmp194, label %if.then196, label %if.end193.for.inc_crit_edge

if.end193.for.inc_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then196:                                       ; preds = %if.end193
  %sub197 = sub nuw i32 %repCode.01592, %ll0
  %arrayidx198 = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %mnum.01588
  %176 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %sub197, ptr %arrayidx198, align 4
  %len = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %mnum.01588, i32 1
  %177 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %repLen.2, ptr %len, align 4
  %inc = add i32 %mnum.01588, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %repLen.2, i32 %2)
  %cmp200 = icmp ugt i32 %repLen.2, %2
  %add.ptr202 = getelementptr i8, ptr %ip, i32 %repLen.2
  %cmp203 = icmp eq ptr %add.ptr202, %iLimit
  %or814 = or i1 %cmp200, %cmp203
  br i1 %or814, label %if.then196.cleanup472_crit_edge, label %if.then196.for.inc_crit_edge

if.then196.for.inc_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then196.cleanup472_crit_edge:                  ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup472

for.inc:                                          ; preds = %if.then196.for.inc_crit_edge, %if.end193.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %mnum.1 = phi i32 [ %inc, %if.then196.for.inc_crit_edge ], [ %mnum.01588, %if.end193.for.inc_crit_edge ], [ %mnum.01588, %if.then.for.inc_crit_edge ]
  %bestLength.1 = phi i32 [ %repLen.2, %if.then196.for.inc_crit_edge ], [ %bestLength.01590, %if.end193.for.inc_crit_edge ], [ %bestLength.01590, %if.then.for.inc_crit_edge ]
  %inc211 = add nuw i32 %repCode.01592, 1
  %cmp106 = icmp ult i32 %inc211, %add105
  br i1 %cmp106, label %for.inc.for.body_crit_edge, label %for.inc.cleanup.cont215_crit_edge

for.inc.cleanup.cont215_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.cont215

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.cont215:                                  ; preds = %for.inc.cleanup.cont215_crit_edge, %cond.end87.cleanup.cont215_crit_edge
  %bestLength.31510 = phi i32 [ %sub104, %cond.end87.cleanup.cont215_crit_edge ], [ %bestLength.1, %for.inc.cleanup.cont215_crit_edge ]
  %mnum.31509 = phi i32 [ 0, %cond.end87.cleanup.cont215_crit_edge ], [ %mnum.1, %for.inc.cleanup.cont215_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bestLength.31510)
  %cmp219 = icmp ult i32 %bestLength.31510, 3
  %or.cond821 = select i1 %cmp5, i1 %cmp219, i1 false
  br i1 %or.cond821, label %if.then221, label %cleanup.cont215.if.end273_crit_edge

cleanup.cont215.if.end273_crit_edge:              ; preds = %cleanup.cont215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then221:                                       ; preds = %cleanup.cont215
  %hashTable31.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 5
  %178 = ptrtoint ptr %hashTable31.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hashTable31.i, align 4
  %hashLog32.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 3
  %180 = ptrtoint ptr %hashLog32.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %hashLog32.i, align 4
  %182 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base3, align 4
  %184 = ptrtoint ptr %nextToUpdate3 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %nextToUpdate3, align 4
  %sub.ptr.rhs.cast.i956 = ptrtoint ptr %183 to i32
  %sub.ptr.sub.i957 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i956
  %186 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %ip, align 1
  %sub.i.i.i958 = sub i32 32, %181
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %sub.ptr.sub.i957)
  %cmp20.i = icmp ult i32 %185, %sub.ptr.sub.i957
  br i1 %cmp20.i, label %if.then221.while.body.i963_crit_edge, label %if.then221.ZSTD_insertAndFindFirstIndexHash3.exit_crit_edge

if.then221.ZSTD_insertAndFindFirstIndexHash3.exit_crit_edge: ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_insertAndFindFirstIndexHash3.exit

if.then221.while.body.i963_crit_edge:             ; preds = %if.then221
  br label %while.body.i963

while.body.i963:                                  ; preds = %while.body.i963.while.body.i963_crit_edge, %if.then221.while.body.i963_crit_edge
  %idx.021.i = phi i32 [ %inc.i, %while.body.i963.while.body.i963_crit_edge ], [ %185, %if.then221.while.body.i963_crit_edge ]
  %add.ptr.i959 = getelementptr i8, ptr %183, i32 %idx.021.i
  %188 = ptrtoint ptr %add.ptr.i959 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %add.ptr.i959, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #8
  %mul.i.i17.i960 = mul i32 %190, 900185344
  %shr.i.i19.i961 = lshr i32 %mul.i.i17.i960, %sub.i.i.i958
  %arrayidx.i = getelementptr i32, ptr %179, i32 %shr.i.i19.i961
  %191 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %idx.021.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %idx.021.i, 1
  %cmp.i962 = icmp ult i32 %inc.i, %sub.ptr.sub.i957
  br i1 %cmp.i962, label %while.body.i963.while.body.i963_crit_edge, label %while.body.i963.ZSTD_insertAndFindFirstIndexHash3.exit_crit_edge

while.body.i963.ZSTD_insertAndFindFirstIndexHash3.exit_crit_edge: ; preds = %while.body.i963
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_insertAndFindFirstIndexHash3.exit

while.body.i963.while.body.i963_crit_edge:        ; preds = %while.body.i963
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i963

ZSTD_insertAndFindFirstIndexHash3.exit:           ; preds = %while.body.i963.ZSTD_insertAndFindFirstIndexHash3.exit_crit_edge, %if.then221.ZSTD_insertAndFindFirstIndexHash3.exit_crit_edge
  %192 = tail call i32 @llvm.bswap.i32(i32 %187) #8
  %mul.i.i.i964 = mul i32 %192, 900185344
  %shr.i.i.i965 = lshr i32 %mul.i.i.i964, %sub.i.i.i958
  %193 = ptrtoint ptr %nextToUpdate3 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %sub.ptr.sub.i957, ptr %nextToUpdate3, align 4
  %arrayidx5.i = getelementptr i32, ptr %179, i32 %shr.i.i.i965
  %194 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %cond24)
  %cmp223 = icmp uge i32 %195, %cond24
  %sub225 = sub i32 %sub.ptr.sub, %195
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %sub225)
  %cmp226 = icmp ult i32 %sub225, 262144
  %and228812 = and i1 %cmp223, %cmp226
  br i1 %and228812, label %if.then230, label %ZSTD_insertAndFindFirstIndexHash3.exit.if.end273_crit_edge

ZSTD_insertAndFindFirstIndexHash3.exit.if.end273_crit_edge: ; preds = %ZSTD_insertAndFindFirstIndexHash3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then230:                                       ; preds = %ZSTD_insertAndFindFirstIndexHash3.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictMode)
  %cmp231 = icmp eq i32 %dictMode, 0
  %brmerge = or i1 %cmp231, %cmp32
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %33)
  %cmp236.not = icmp ult i32 %195, %33
  %or.cond822 = select i1 %brmerge.not, i1 %cmp236.not, i1 false
  br i1 %or.cond822, label %if.else241, label %if.then238

if.then238:                                       ; preds = %if.then230
  %add.ptr239 = getelementptr i8, ptr %4, i32 %195
  %add.ptr.i966 = getelementptr i8, ptr %iLimit, i32 -3
  %cmp.i967 = icmp ugt ptr %add.ptr.i966, %ip
  br i1 %cmp.i967, label %if.then.i970, label %if.then238.if.end20.i990_crit_edge

if.then238.if.end20.i990_crit_edge:               ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i990

if.then.i970:                                     ; preds = %if.then238
  %196 = ptrtoint ptr %add.ptr239 to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %197 = load i32, ptr %add.ptr239, align 1
  %198 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %ip, align 1
  %xor.i968 = xor i32 %199, %197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i968)
  %tobool.not.i969 = icmp eq i32 %xor.i968, 0
  br i1 %tobool.not.i969, label %if.then.i970.while.cond.i977_crit_edge, label %cleanup.i971

if.then.i970.while.cond.i977_crit_edge:           ; preds = %if.then.i970
  br label %while.cond.i977

cleanup.i971:                                     ; preds = %if.then.i970
  call void @__sanitizer_cov_trace_pc() #10
  %200 = tail call i32 @llvm.ctlz.i32(i32 %xor.i968, i1 true) #8, !range !23
  %201 = lshr i32 %200, 3
  br label %if.end245

while.cond.i977:                                  ; preds = %while.body.i980.while.cond.i977_crit_edge, %if.then.i970.while.cond.i977_crit_edge
  %pIn.pn.i972 = phi ptr [ %pIn.addr.0.i975, %while.body.i980.while.cond.i977_crit_edge ], [ %ip, %if.then.i970.while.cond.i977_crit_edge ]
  %pMatch.pn.i973 = phi ptr [ %pMatch.addr.0.i974, %while.body.i980.while.cond.i977_crit_edge ], [ %add.ptr239, %if.then.i970.while.cond.i977_crit_edge ]
  %pMatch.addr.0.i974 = getelementptr i8, ptr %pMatch.pn.i973, i32 4
  %pIn.addr.0.i975 = getelementptr i8, ptr %pIn.pn.i972, i32 4
  %cmp6.i976 = icmp ult ptr %pIn.addr.0.i975, %add.ptr.i966
  br i1 %cmp6.i976, label %while.body.i980, label %while.cond.i977.if.end20.i990_crit_edge

while.cond.i977.if.end20.i990_crit_edge:          ; preds = %while.cond.i977
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i990

while.body.i980:                                  ; preds = %while.cond.i977
  %202 = ptrtoint ptr %pMatch.addr.0.i974 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %pMatch.addr.0.i974, align 1
  %204 = ptrtoint ptr %pIn.addr.0.i975 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %pIn.addr.0.i975, align 1
  %xor10.i978 = xor i32 %205, %203
  %tobool11.not.i979 = icmp eq i32 %xor10.i978, 0
  br i1 %tobool11.not.i979, label %while.body.i980.while.cond.i977_crit_edge, label %cleanup18.thread.i985

while.body.i980.while.cond.i977_crit_edge:        ; preds = %while.body.i980
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i977

cleanup18.thread.i985:                            ; preds = %while.body.i980
  call void @__sanitizer_cov_trace_pc() #10
  %206 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i978, i1 true) #8, !range !23
  %207 = lshr i32 %206, 3
  %add.ptr17.i981 = getelementptr i8, ptr %pIn.addr.0.i975, i32 %207
  %sub.ptr.lhs.cast.i982 = ptrtoint ptr %add.ptr17.i981 to i32
  %sub.ptr.sub.i984 = sub i32 %sub.ptr.lhs.cast.i982, %sub.ptr.lhs.cast
  br label %if.end245

if.end20.i990:                                    ; preds = %while.cond.i977.if.end20.i990_crit_edge, %if.then238.if.end20.i990_crit_edge
  %pIn.addr.2.i986 = phi ptr [ %ip, %if.then238.if.end20.i990_crit_edge ], [ %pIn.addr.0.i975, %while.cond.i977.if.end20.i990_crit_edge ]
  %pMatch.addr.2.i987 = phi ptr [ %add.ptr239, %if.then238.if.end20.i990_crit_edge ], [ %pMatch.addr.0.i974, %while.cond.i977.if.end20.i990_crit_edge ]
  %add.ptr33.i988 = getelementptr i8, ptr %iLimit, i32 -1
  %cmp34.i989 = icmp ult ptr %pIn.addr.2.i986, %add.ptr33.i988
  br i1 %cmp34.i989, label %land.lhs.true35.i992, label %if.end20.i990.if.end44.i999_crit_edge

if.end20.i990.if.end44.i999_crit_edge:            ; preds = %if.end20.i990
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i999

land.lhs.true35.i992:                             ; preds = %if.end20.i990
  %208 = ptrtoint ptr %pMatch.addr.2.i987 to i32
  call void @__asan_loadN_noabort(i32 %208, i32 2)
  %209 = load i16, ptr %pMatch.addr.2.i987, align 1
  %210 = ptrtoint ptr %pIn.addr.2.i986 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %pIn.addr.2.i986, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %209, i16 %211)
  %cmp39.i991 = icmp eq i16 %209, %211
  br i1 %cmp39.i991, label %if.then41.i995, label %land.lhs.true35.i992.if.end44.i999_crit_edge

land.lhs.true35.i992.if.end44.i999_crit_edge:     ; preds = %land.lhs.true35.i992
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i999

if.then41.i995:                                   ; preds = %land.lhs.true35.i992
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i993 = getelementptr i8, ptr %pIn.addr.2.i986, i32 2
  %add.ptr43.i994 = getelementptr i8, ptr %pMatch.addr.2.i987, i32 2
  br label %if.end44.i999

if.end44.i999:                                    ; preds = %if.then41.i995, %land.lhs.true35.i992.if.end44.i999_crit_edge, %if.end20.i990.if.end44.i999_crit_edge
  %pIn.addr.4.i996 = phi ptr [ %add.ptr42.i993, %if.then41.i995 ], [ %pIn.addr.2.i986, %land.lhs.true35.i992.if.end44.i999_crit_edge ], [ %pIn.addr.2.i986, %if.end20.i990.if.end44.i999_crit_edge ]
  %pMatch.addr.4.i997 = phi ptr [ %add.ptr43.i994, %if.then41.i995 ], [ %pMatch.addr.2.i987, %land.lhs.true35.i992.if.end44.i999_crit_edge ], [ %pMatch.addr.2.i987, %if.end20.i990.if.end44.i999_crit_edge ]
  %cmp45.i998 = icmp ult ptr %pIn.addr.4.i996, %iLimit
  br i1 %cmp45.i998, label %land.lhs.true47.i1003, label %if.end44.i999.if.end53.i1008_crit_edge

if.end44.i999.if.end53.i1008_crit_edge:           ; preds = %if.end44.i999
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i1008

land.lhs.true47.i1003:                            ; preds = %if.end44.i999
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %pMatch.addr.4.i997 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %pMatch.addr.4.i997, align 1
  %214 = ptrtoint ptr %pIn.addr.4.i996 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %pIn.addr.4.i996, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %213, i8 %215)
  %cmp50.i1000 = icmp eq i8 %213, %215
  %spec.select.idx.i1001 = zext i1 %cmp50.i1000 to i32
  %spec.select.i1002 = getelementptr i8, ptr %pIn.addr.4.i996, i32 %spec.select.idx.i1001
  br label %if.end53.i1008

if.end53.i1008:                                   ; preds = %land.lhs.true47.i1003, %if.end44.i999.if.end53.i1008_crit_edge
  %pIn.addr.5.i1004 = phi ptr [ %pIn.addr.4.i996, %if.end44.i999.if.end53.i1008_crit_edge ], [ %spec.select.i1002, %land.lhs.true47.i1003 ]
  %sub.ptr.lhs.cast54.i1005 = ptrtoint ptr %pIn.addr.5.i1004 to i32
  %sub.ptr.sub56.i1007 = sub i32 %sub.ptr.lhs.cast54.i1005, %sub.ptr.lhs.cast
  br label %if.end245

if.else241:                                       ; preds = %if.then230
  %add.ptr243 = getelementptr i8, ptr %31, i32 %195
  %sub.ptr.lhs.cast.i1011 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i1012 = ptrtoint ptr %add.ptr243 to i32
  %sub.ptr.sub.i1013 = sub i32 %sub.ptr.lhs.cast.i1011, %sub.ptr.rhs.cast.i1012
  %add.ptr.i1014 = getelementptr i8, ptr %ip, i32 %sub.ptr.sub.i1013
  %cmp.i1015 = icmp ult ptr %add.ptr.i1014, %iLimit
  %add.ptr.iEnd.i1016 = select i1 %cmp.i1015, ptr %add.ptr.i1014, ptr %iLimit
  %add.ptr.i.i1017 = getelementptr i8, ptr %add.ptr.iEnd.i1016, i32 -3
  %cmp.i.i1018 = icmp ugt ptr %add.ptr.i.i1017, %ip
  br i1 %cmp.i.i1018, label %if.then.i.i1021, label %if.else241.if.end20.i.i1041_crit_edge

if.else241.if.end20.i.i1041_crit_edge:            ; preds = %if.else241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i1041

if.then.i.i1021:                                  ; preds = %if.else241
  %216 = ptrtoint ptr %add.ptr243 to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %add.ptr243, align 1
  %218 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %ip, align 1
  %xor.i.i1019 = xor i32 %219, %217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i1019)
  %tobool.not.i.i1020 = icmp eq i32 %xor.i.i1019, 0
  br i1 %tobool.not.i.i1020, label %if.then.i.i1021.while.cond.i.i1028_crit_edge, label %cleanup.i.i1022

if.then.i.i1021.while.cond.i.i1028_crit_edge:     ; preds = %if.then.i.i1021
  br label %while.cond.i.i1028

cleanup.i.i1022:                                  ; preds = %if.then.i.i1021
  call void @__sanitizer_cov_trace_pc() #10
  %220 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i1019, i1 true) #8, !range !23
  %221 = lshr i32 %220, 3
  br label %ZSTD_count.exit.i1063

while.cond.i.i1028:                               ; preds = %while.body.i.i1031.while.cond.i.i1028_crit_edge, %if.then.i.i1021.while.cond.i.i1028_crit_edge
  %pIn.pn.i.i1023 = phi ptr [ %pIn.addr.0.i.i1026, %while.body.i.i1031.while.cond.i.i1028_crit_edge ], [ %ip, %if.then.i.i1021.while.cond.i.i1028_crit_edge ]
  %pMatch.pn.i.i1024 = phi ptr [ %pMatch.addr.0.i.i1025, %while.body.i.i1031.while.cond.i.i1028_crit_edge ], [ %add.ptr243, %if.then.i.i1021.while.cond.i.i1028_crit_edge ]
  %pMatch.addr.0.i.i1025 = getelementptr i8, ptr %pMatch.pn.i.i1024, i32 4
  %pIn.addr.0.i.i1026 = getelementptr i8, ptr %pIn.pn.i.i1023, i32 4
  %cmp6.i.i1027 = icmp ult ptr %pIn.addr.0.i.i1026, %add.ptr.i.i1017
  br i1 %cmp6.i.i1027, label %while.body.i.i1031, label %while.cond.i.i1028.if.end20.i.i1041_crit_edge

while.cond.i.i1028.if.end20.i.i1041_crit_edge:    ; preds = %while.cond.i.i1028
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i1041

while.body.i.i1031:                               ; preds = %while.cond.i.i1028
  %222 = ptrtoint ptr %pMatch.addr.0.i.i1025 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %pMatch.addr.0.i.i1025, align 1
  %224 = ptrtoint ptr %pIn.addr.0.i.i1026 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %pIn.addr.0.i.i1026, align 1
  %xor10.i.i1029 = xor i32 %225, %223
  %tobool11.not.i.i1030 = icmp eq i32 %xor10.i.i1029, 0
  br i1 %tobool11.not.i.i1030, label %while.body.i.i1031.while.cond.i.i1028_crit_edge, label %cleanup18.thread.i.i1036

while.body.i.i1031.while.cond.i.i1028_crit_edge:  ; preds = %while.body.i.i1031
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i1028

cleanup18.thread.i.i1036:                         ; preds = %while.body.i.i1031
  call void @__sanitizer_cov_trace_pc() #10
  %226 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i1029, i1 true) #8, !range !23
  %227 = lshr i32 %226, 3
  %add.ptr17.i.i1032 = getelementptr i8, ptr %pIn.addr.0.i.i1026, i32 %227
  %sub.ptr.lhs.cast.i.i1033 = ptrtoint ptr %add.ptr17.i.i1032 to i32
  %sub.ptr.sub.i.i1035 = sub i32 %sub.ptr.lhs.cast.i.i1033, %sub.ptr.lhs.cast
  br label %ZSTD_count.exit.i1063

if.end20.i.i1041:                                 ; preds = %while.cond.i.i1028.if.end20.i.i1041_crit_edge, %if.else241.if.end20.i.i1041_crit_edge
  %pIn.addr.2.i.i1037 = phi ptr [ %ip, %if.else241.if.end20.i.i1041_crit_edge ], [ %pIn.addr.0.i.i1026, %while.cond.i.i1028.if.end20.i.i1041_crit_edge ]
  %pMatch.addr.2.i.i1038 = phi ptr [ %add.ptr243, %if.else241.if.end20.i.i1041_crit_edge ], [ %pMatch.addr.0.i.i1025, %while.cond.i.i1028.if.end20.i.i1041_crit_edge ]
  %add.ptr33.i.i1039 = getelementptr i8, ptr %add.ptr.iEnd.i1016, i32 -1
  %cmp34.i.i1040 = icmp ult ptr %pIn.addr.2.i.i1037, %add.ptr33.i.i1039
  br i1 %cmp34.i.i1040, label %land.lhs.true35.i.i1043, label %if.end20.i.i1041.if.end44.i.i1050_crit_edge

if.end20.i.i1041.if.end44.i.i1050_crit_edge:      ; preds = %if.end20.i.i1041
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i1050

land.lhs.true35.i.i1043:                          ; preds = %if.end20.i.i1041
  %228 = ptrtoint ptr %pMatch.addr.2.i.i1038 to i32
  call void @__asan_loadN_noabort(i32 %228, i32 2)
  %229 = load i16, ptr %pMatch.addr.2.i.i1038, align 1
  %230 = ptrtoint ptr %pIn.addr.2.i.i1037 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %pIn.addr.2.i.i1037, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %229, i16 %231)
  %cmp39.i.i1042 = icmp eq i16 %229, %231
  br i1 %cmp39.i.i1042, label %if.then41.i.i1046, label %land.lhs.true35.i.i1043.if.end44.i.i1050_crit_edge

land.lhs.true35.i.i1043.if.end44.i.i1050_crit_edge: ; preds = %land.lhs.true35.i.i1043
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i1050

if.then41.i.i1046:                                ; preds = %land.lhs.true35.i.i1043
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i1044 = getelementptr i8, ptr %pIn.addr.2.i.i1037, i32 2
  %add.ptr43.i.i1045 = getelementptr i8, ptr %pMatch.addr.2.i.i1038, i32 2
  br label %if.end44.i.i1050

if.end44.i.i1050:                                 ; preds = %if.then41.i.i1046, %land.lhs.true35.i.i1043.if.end44.i.i1050_crit_edge, %if.end20.i.i1041.if.end44.i.i1050_crit_edge
  %pIn.addr.4.i.i1047 = phi ptr [ %add.ptr42.i.i1044, %if.then41.i.i1046 ], [ %pIn.addr.2.i.i1037, %land.lhs.true35.i.i1043.if.end44.i.i1050_crit_edge ], [ %pIn.addr.2.i.i1037, %if.end20.i.i1041.if.end44.i.i1050_crit_edge ]
  %pMatch.addr.4.i.i1048 = phi ptr [ %add.ptr43.i.i1045, %if.then41.i.i1046 ], [ %pMatch.addr.2.i.i1038, %land.lhs.true35.i.i1043.if.end44.i.i1050_crit_edge ], [ %pMatch.addr.2.i.i1038, %if.end20.i.i1041.if.end44.i.i1050_crit_edge ]
  %cmp45.i.i1049 = icmp ult ptr %pIn.addr.4.i.i1047, %add.ptr.iEnd.i1016
  br i1 %cmp45.i.i1049, label %land.lhs.true47.i.i1054, label %if.end44.i.i1050.if.end53.i.i1059_crit_edge

if.end44.i.i1050.if.end53.i.i1059_crit_edge:      ; preds = %if.end44.i.i1050
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i1059

land.lhs.true47.i.i1054:                          ; preds = %if.end44.i.i1050
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %pMatch.addr.4.i.i1048 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pMatch.addr.4.i.i1048, align 1
  %234 = ptrtoint ptr %pIn.addr.4.i.i1047 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %pIn.addr.4.i.i1047, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %233, i8 %235)
  %cmp50.i.i1051 = icmp eq i8 %233, %235
  %spec.select.idx.i.i1052 = zext i1 %cmp50.i.i1051 to i32
  %spec.select.i.i1053 = getelementptr i8, ptr %pIn.addr.4.i.i1047, i32 %spec.select.idx.i.i1052
  br label %if.end53.i.i1059

if.end53.i.i1059:                                 ; preds = %land.lhs.true47.i.i1054, %if.end44.i.i1050.if.end53.i.i1059_crit_edge
  %pIn.addr.5.i.i1055 = phi ptr [ %pIn.addr.4.i.i1047, %if.end44.i.i1050.if.end53.i.i1059_crit_edge ], [ %spec.select.i.i1053, %land.lhs.true47.i.i1054 ]
  %sub.ptr.lhs.cast54.i.i1056 = ptrtoint ptr %pIn.addr.5.i.i1055 to i32
  %sub.ptr.sub56.i.i1058 = sub i32 %sub.ptr.lhs.cast54.i.i1056, %sub.ptr.lhs.cast
  br label %ZSTD_count.exit.i1063

ZSTD_count.exit.i1063:                            ; preds = %if.end53.i.i1059, %cleanup18.thread.i.i1036, %cleanup.i.i1022
  %retval.3.i.i1060 = phi i32 [ %sub.ptr.sub56.i.i1058, %if.end53.i.i1059 ], [ %221, %cleanup.i.i1022 ], [ %sub.ptr.sub.i.i1035, %cleanup18.thread.i.i1036 ]
  %add.ptr5.i1061 = getelementptr i8, ptr %add.ptr243, i32 %retval.3.i.i1060
  %cmp6.not.i1062 = icmp eq ptr %add.ptr5.i1061, %add.ptr
  br i1 %cmp6.not.i1062, label %if.end.i1067, label %ZSTD_count.exit.i1063.if.end245_crit_edge

ZSTD_count.exit.i1063.if.end245_crit_edge:        ; preds = %ZSTD_count.exit.i1063
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.end.i1067:                                     ; preds = %ZSTD_count.exit.i1063
  %add.ptr7.i1064 = getelementptr i8, ptr %ip, i32 %retval.3.i.i1060
  %add.ptr.i23.i1065 = getelementptr i8, ptr %iLimit, i32 -3
  %cmp.i24.i1066 = icmp ugt ptr %add.ptr.i23.i1065, %add.ptr7.i1064
  br i1 %cmp.i24.i1066, label %if.then.i27.i1070, label %if.end.i1067.if.end20.i47.i1090_crit_edge

if.end.i1067.if.end20.i47.i1090_crit_edge:        ; preds = %if.end.i1067
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i1090

if.then.i27.i1070:                                ; preds = %if.end.i1067
  %236 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %add.ptr13, align 1
  %238 = ptrtoint ptr %add.ptr7.i1064 to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %add.ptr7.i1064, align 1
  %xor.i25.i1068 = xor i32 %239, %237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i1068)
  %tobool.not.i26.i1069 = icmp eq i32 %xor.i25.i1068, 0
  br i1 %tobool.not.i26.i1069, label %if.then.i27.i1070.while.cond.i34.i1077_crit_edge, label %cleanup.i28.i1071

if.then.i27.i1070.while.cond.i34.i1077_crit_edge: ; preds = %if.then.i27.i1070
  br label %while.cond.i34.i1077

cleanup.i28.i1071:                                ; preds = %if.then.i27.i1070
  call void @__sanitizer_cov_trace_pc() #10
  %240 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i1068, i1 true) #8, !range !23
  %241 = lshr i32 %240, 3
  br label %ZSTD_count.exit67.i1111

while.cond.i34.i1077:                             ; preds = %while.body.i37.i1080.while.cond.i34.i1077_crit_edge, %if.then.i27.i1070.while.cond.i34.i1077_crit_edge
  %pIn.pn.i29.i1072 = phi ptr [ %pIn.addr.0.i32.i1075, %while.body.i37.i1080.while.cond.i34.i1077_crit_edge ], [ %add.ptr7.i1064, %if.then.i27.i1070.while.cond.i34.i1077_crit_edge ]
  %pMatch.pn.i30.i1073 = phi ptr [ %pMatch.addr.0.i31.i1074, %while.body.i37.i1080.while.cond.i34.i1077_crit_edge ], [ %add.ptr13, %if.then.i27.i1070.while.cond.i34.i1077_crit_edge ]
  %pMatch.addr.0.i31.i1074 = getelementptr i8, ptr %pMatch.pn.i30.i1073, i32 4
  %pIn.addr.0.i32.i1075 = getelementptr i8, ptr %pIn.pn.i29.i1072, i32 4
  %cmp6.i33.i1076 = icmp ult ptr %pIn.addr.0.i32.i1075, %add.ptr.i23.i1065
  br i1 %cmp6.i33.i1076, label %while.body.i37.i1080, label %while.cond.i34.i1077.if.end20.i47.i1090_crit_edge

while.cond.i34.i1077.if.end20.i47.i1090_crit_edge: ; preds = %while.cond.i34.i1077
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i1090

while.body.i37.i1080:                             ; preds = %while.cond.i34.i1077
  %242 = ptrtoint ptr %pMatch.addr.0.i31.i1074 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %pMatch.addr.0.i31.i1074, align 1
  %244 = ptrtoint ptr %pIn.addr.0.i32.i1075 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %pIn.addr.0.i32.i1075, align 1
  %xor10.i35.i1078 = xor i32 %245, %243
  %tobool11.not.i36.i1079 = icmp eq i32 %xor10.i35.i1078, 0
  br i1 %tobool11.not.i36.i1079, label %while.body.i37.i1080.while.cond.i34.i1077_crit_edge, label %cleanup18.thread.i42.i1085

while.body.i37.i1080.while.cond.i34.i1077_crit_edge: ; preds = %while.body.i37.i1080
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i34.i1077

cleanup18.thread.i42.i1085:                       ; preds = %while.body.i37.i1080
  call void @__sanitizer_cov_trace_pc() #10
  %246 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i1078, i1 true) #8, !range !23
  %247 = lshr i32 %246, 3
  %add.ptr17.i38.i1081 = getelementptr i8, ptr %pIn.addr.0.i32.i1075, i32 %247
  %sub.ptr.lhs.cast.i39.i1082 = ptrtoint ptr %add.ptr17.i38.i1081 to i32
  %sub.ptr.rhs.cast.i40.i1083 = ptrtoint ptr %add.ptr7.i1064 to i32
  %sub.ptr.sub.i41.i1084 = sub i32 %sub.ptr.lhs.cast.i39.i1082, %sub.ptr.rhs.cast.i40.i1083
  br label %ZSTD_count.exit67.i1111

if.end20.i47.i1090:                               ; preds = %while.cond.i34.i1077.if.end20.i47.i1090_crit_edge, %if.end.i1067.if.end20.i47.i1090_crit_edge
  %pIn.addr.2.i43.i1086 = phi ptr [ %add.ptr7.i1064, %if.end.i1067.if.end20.i47.i1090_crit_edge ], [ %pIn.addr.0.i32.i1075, %while.cond.i34.i1077.if.end20.i47.i1090_crit_edge ]
  %pMatch.addr.2.i44.i1087 = phi ptr [ %add.ptr13, %if.end.i1067.if.end20.i47.i1090_crit_edge ], [ %pMatch.addr.0.i31.i1074, %while.cond.i34.i1077.if.end20.i47.i1090_crit_edge ]
  %add.ptr33.i45.i1088 = getelementptr i8, ptr %iLimit, i32 -1
  %cmp34.i46.i1089 = icmp ult ptr %pIn.addr.2.i43.i1086, %add.ptr33.i45.i1088
  br i1 %cmp34.i46.i1089, label %land.lhs.true35.i49.i1092, label %if.end20.i47.i1090.if.end44.i56.i1099_crit_edge

if.end20.i47.i1090.if.end44.i56.i1099_crit_edge:  ; preds = %if.end20.i47.i1090
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i1099

land.lhs.true35.i49.i1092:                        ; preds = %if.end20.i47.i1090
  %248 = ptrtoint ptr %pMatch.addr.2.i44.i1087 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 2)
  %249 = load i16, ptr %pMatch.addr.2.i44.i1087, align 1
  %250 = ptrtoint ptr %pIn.addr.2.i43.i1086 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 2)
  %251 = load i16, ptr %pIn.addr.2.i43.i1086, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %249, i16 %251)
  %cmp39.i48.i1091 = icmp eq i16 %249, %251
  br i1 %cmp39.i48.i1091, label %if.then41.i52.i1095, label %land.lhs.true35.i49.i1092.if.end44.i56.i1099_crit_edge

land.lhs.true35.i49.i1092.if.end44.i56.i1099_crit_edge: ; preds = %land.lhs.true35.i49.i1092
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i1099

if.then41.i52.i1095:                              ; preds = %land.lhs.true35.i49.i1092
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i50.i1093 = getelementptr i8, ptr %pIn.addr.2.i43.i1086, i32 2
  %add.ptr43.i51.i1094 = getelementptr i8, ptr %pMatch.addr.2.i44.i1087, i32 2
  br label %if.end44.i56.i1099

if.end44.i56.i1099:                               ; preds = %if.then41.i52.i1095, %land.lhs.true35.i49.i1092.if.end44.i56.i1099_crit_edge, %if.end20.i47.i1090.if.end44.i56.i1099_crit_edge
  %pIn.addr.4.i53.i1096 = phi ptr [ %add.ptr42.i50.i1093, %if.then41.i52.i1095 ], [ %pIn.addr.2.i43.i1086, %land.lhs.true35.i49.i1092.if.end44.i56.i1099_crit_edge ], [ %pIn.addr.2.i43.i1086, %if.end20.i47.i1090.if.end44.i56.i1099_crit_edge ]
  %pMatch.addr.4.i54.i1097 = phi ptr [ %add.ptr43.i51.i1094, %if.then41.i52.i1095 ], [ %pMatch.addr.2.i44.i1087, %land.lhs.true35.i49.i1092.if.end44.i56.i1099_crit_edge ], [ %pMatch.addr.2.i44.i1087, %if.end20.i47.i1090.if.end44.i56.i1099_crit_edge ]
  %cmp45.i55.i1098 = icmp ult ptr %pIn.addr.4.i53.i1096, %iLimit
  br i1 %cmp45.i55.i1098, label %land.lhs.true47.i60.i1103, label %if.end44.i56.i1099.if.end53.i65.i1108_crit_edge

if.end44.i56.i1099.if.end53.i65.i1108_crit_edge:  ; preds = %if.end44.i56.i1099
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i65.i1108

land.lhs.true47.i60.i1103:                        ; preds = %if.end44.i56.i1099
  call void @__sanitizer_cov_trace_pc() #10
  %252 = ptrtoint ptr %pMatch.addr.4.i54.i1097 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %pMatch.addr.4.i54.i1097, align 1
  %254 = ptrtoint ptr %pIn.addr.4.i53.i1096 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %pIn.addr.4.i53.i1096, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %253, i8 %255)
  %cmp50.i57.i1100 = icmp eq i8 %253, %255
  %spec.select.idx.i58.i1101 = zext i1 %cmp50.i57.i1100 to i32
  %spec.select.i59.i1102 = getelementptr i8, ptr %pIn.addr.4.i53.i1096, i32 %spec.select.idx.i58.i1101
  br label %if.end53.i65.i1108

if.end53.i65.i1108:                               ; preds = %land.lhs.true47.i60.i1103, %if.end44.i56.i1099.if.end53.i65.i1108_crit_edge
  %pIn.addr.5.i61.i1104 = phi ptr [ %pIn.addr.4.i53.i1096, %if.end44.i56.i1099.if.end53.i65.i1108_crit_edge ], [ %spec.select.i59.i1102, %land.lhs.true47.i60.i1103 ]
  %sub.ptr.lhs.cast54.i62.i1105 = ptrtoint ptr %pIn.addr.5.i61.i1104 to i32
  %sub.ptr.rhs.cast55.i63.i1106 = ptrtoint ptr %add.ptr7.i1064 to i32
  %sub.ptr.sub56.i64.i1107 = sub i32 %sub.ptr.lhs.cast54.i62.i1105, %sub.ptr.rhs.cast55.i63.i1106
  br label %ZSTD_count.exit67.i1111

ZSTD_count.exit67.i1111:                          ; preds = %if.end53.i65.i1108, %cleanup18.thread.i42.i1085, %cleanup.i28.i1071
  %retval.3.i66.i1109 = phi i32 [ %sub.ptr.sub56.i64.i1107, %if.end53.i65.i1108 ], [ %241, %cleanup.i28.i1071 ], [ %sub.ptr.sub.i41.i1084, %cleanup18.thread.i42.i1085 ]
  %add.i1110 = add i32 %retval.3.i66.i1109, %retval.3.i.i1060
  br label %if.end245

if.end245:                                        ; preds = %ZSTD_count.exit67.i1111, %ZSTD_count.exit.i1063.if.end245_crit_edge, %if.end53.i1008, %cleanup18.thread.i985, %cleanup.i971
  %mlen.0 = phi i32 [ %sub.ptr.sub56.i1007, %if.end53.i1008 ], [ %201, %cleanup.i971 ], [ %sub.ptr.sub.i984, %cleanup18.thread.i985 ], [ %add.i1110, %ZSTD_count.exit67.i1111 ], [ %retval.3.i.i1060, %ZSTD_count.exit.i1063.if.end245_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mlen.0)
  %cmp246 = icmp ugt i32 %mlen.0, 2
  br i1 %cmp246, label %if.then248, label %if.end245.if.end273_crit_edge

if.end245.if.end273_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then248:                                       ; preds = %if.end245
  %add250 = add i32 %sub225, 2
  %256 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %add250, ptr %matches, align 4
  %len254 = getelementptr inbounds %struct.ZSTD_match_t, ptr %matches, i32 0, i32 1
  %257 = ptrtoint ptr %len254 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %mlen.0, ptr %len254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mlen.0, i32 %2)
  %cmp255 = icmp ugt i32 %mlen.0, %2
  %add.ptr257 = getelementptr i8, ptr %ip, i32 %mlen.0
  %cmp258 = icmp eq ptr %add.ptr257, %iLimit
  %or260813 = or i1 %cmp255, %cmp258
  br i1 %or260813, label %cleanup270, label %if.then248.if.end273_crit_edge

if.then248.if.end273_crit_edge:                   ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

cleanup270:                                       ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  %add263 = add i32 %sub.ptr.sub, 1
  br label %cleanup472.sink.split

if.end273:                                        ; preds = %if.then248.if.end273_crit_edge, %if.end245.if.end273_crit_edge, %ZSTD_insertAndFindFirstIndexHash3.exit.if.end273_crit_edge, %cleanup.cont215.if.end273_crit_edge
  %mnum.8 = phi i32 [ %mnum.31509, %cleanup.cont215.if.end273_crit_edge ], [ %mnum.31509, %ZSTD_insertAndFindFirstIndexHash3.exit.if.end273_crit_edge ], [ %mnum.31509, %if.end245.if.end273_crit_edge ], [ 1, %if.then248.if.end273_crit_edge ]
  %bestLength.8 = phi i32 [ %bestLength.31510, %cleanup.cont215.if.end273_crit_edge ], [ 2, %ZSTD_insertAndFindFirstIndexHash3.exit.if.end273_crit_edge ], [ 2, %if.end245.if.end273_crit_edge ], [ %mlen.0, %if.then248.if.end273_crit_edge ]
  %258 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %sub.ptr.sub, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictMode)
  %cmp290 = icmp eq i32 %dictMode, 0
  %brmerge823 = or i1 %cmp290, %cmp32
  %brmerge823.not = xor i1 %brmerge823, true
  %add.ptr.i1115 = getelementptr i8, ptr %iLimit, i32 -3
  %add.ptr33.i1137 = getelementptr i8, ptr %iLimit, i32 -1
  %sub.ptr.lhs.cast.i1160 = ptrtoint ptr %add.ptr to i32
  %sub331 = add i32 %sub.ptr.sub, 2
  br label %land.rhs

for.end378.thread:                                ; preds = %for.inc377
  call void @__sanitizer_cov_trace_pc() #10
  %259 = ptrtoint ptr %largerPtr.1 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %largerPtr.1, align 4
  %260 = ptrtoint ptr %smallerPtr.1 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %smallerPtr.1, align 4
  br label %if.end469

land.rhs:                                         ; preds = %for.inc377.land.rhs_crit_edge, %if.end273
  %bestLength.91610 = phi i32 [ %bestLength.8, %if.end273 ], [ %bestLength.10, %for.inc377.land.rhs_crit_edge ]
  %nbCompares.01607 = phi i32 [ %shl31, %if.end273 ], [ %dec, %for.inc377.land.rhs_crit_edge ]
  %mnum.91606 = phi i32 [ %mnum.8, %if.end273 ], [ %mnum.10, %for.inc377.land.rhs_crit_edge ]
  %matchEndIdx.01605 = phi i32 [ %add30, %if.end273 ], [ %matchEndIdx.2, %for.inc377.land.rhs_crit_edge ]
  %largerPtr.01603 = phi ptr [ %add.ptr29, %if.end273 ], [ %largerPtr.1, %for.inc377.land.rhs_crit_edge ]
  %smallerPtr.01601 = phi ptr [ %add.ptr25, %if.end273 ], [ %smallerPtr.1, %for.inc377.land.rhs_crit_edge ]
  %commonLengthLarger.01600 = phi i32 [ 0, %if.end273 ], [ %commonLengthLarger.1, %for.inc377.land.rhs_crit_edge ]
  %commonLengthSmaller.01599 = phi i32 [ 0, %if.end273 ], [ %commonLengthSmaller.1, %for.inc377.land.rhs_crit_edge ]
  %matchIndex.01597 = phi i32 [ %25, %if.end273 ], [ %matchIndex.1, %for.inc377.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %matchIndex.01597, i32 %cond24)
  %cmp277.not = icmp ult i32 %matchIndex.01597, %cond24
  br i1 %cmp277.not, label %land.rhs.for.end378_crit_edge, label %for.body279

land.rhs.for.end378_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end378

for.body279:                                      ; preds = %land.rhs
  %and280 = and i32 %matchIndex.01597, %sub8
  %mul281 = shl i32 %and280, 1
  %add.ptr282 = getelementptr i32, ptr %27, i32 %mul281
  %261 = tail call i32 @llvm.umin.i32(i32 %commonLengthSmaller.01599, i32 %commonLengthLarger.01600)
  %add296 = add i32 %261, %matchIndex.01597
  call void @__sanitizer_cov_trace_cmp4(i32 %add296, i32 %33)
  %cmp297.not = icmp ult i32 %add296, %33
  %or.cond824 = select i1 %brmerge823.not, i1 %cmp297.not, i1 false
  br i1 %or.cond824, label %if.else309, label %if.then299

if.then299:                                       ; preds = %for.body279
  %add.ptr300 = getelementptr i8, ptr %4, i32 %matchIndex.01597
  %add.ptr305 = getelementptr i8, ptr %ip, i32 %261
  %add.ptr306 = getelementptr i8, ptr %add.ptr300, i32 %261
  %cmp.i1116 = icmp ugt ptr %add.ptr.i1115, %add.ptr305
  br i1 %cmp.i1116, label %if.then.i1119, label %if.then299.if.end20.i1139_crit_edge

if.then299.if.end20.i1139_crit_edge:              ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i1139

if.then.i1119:                                    ; preds = %if.then299
  %262 = ptrtoint ptr %add.ptr306 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %add.ptr306, align 1
  %264 = ptrtoint ptr %add.ptr305 to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %add.ptr305, align 1
  %xor.i1117 = xor i32 %265, %263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i1117)
  %tobool.not.i1118 = icmp eq i32 %xor.i1117, 0
  br i1 %tobool.not.i1118, label %if.then.i1119.while.cond.i1126_crit_edge, label %cleanup.i1120

if.then.i1119.while.cond.i1126_crit_edge:         ; preds = %if.then.i1119
  br label %while.cond.i1126

cleanup.i1120:                                    ; preds = %if.then.i1119
  call void @__sanitizer_cov_trace_pc() #10
  %266 = tail call i32 @llvm.ctlz.i32(i32 %xor.i1117, i1 true) #8, !range !23
  %267 = lshr i32 %266, 3
  br label %ZSTD_count.exit1159

while.cond.i1126:                                 ; preds = %while.body.i1129.while.cond.i1126_crit_edge, %if.then.i1119.while.cond.i1126_crit_edge
  %pIn.pn.i1121 = phi ptr [ %pIn.addr.0.i1124, %while.body.i1129.while.cond.i1126_crit_edge ], [ %add.ptr305, %if.then.i1119.while.cond.i1126_crit_edge ]
  %pMatch.pn.i1122 = phi ptr [ %pMatch.addr.0.i1123, %while.body.i1129.while.cond.i1126_crit_edge ], [ %add.ptr306, %if.then.i1119.while.cond.i1126_crit_edge ]
  %pMatch.addr.0.i1123 = getelementptr i8, ptr %pMatch.pn.i1122, i32 4
  %pIn.addr.0.i1124 = getelementptr i8, ptr %pIn.pn.i1121, i32 4
  %cmp6.i1125 = icmp ult ptr %pIn.addr.0.i1124, %add.ptr.i1115
  br i1 %cmp6.i1125, label %while.body.i1129, label %while.cond.i1126.if.end20.i1139_crit_edge

while.cond.i1126.if.end20.i1139_crit_edge:        ; preds = %while.cond.i1126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i1139

while.body.i1129:                                 ; preds = %while.cond.i1126
  %268 = ptrtoint ptr %pMatch.addr.0.i1123 to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %pMatch.addr.0.i1123, align 1
  %270 = ptrtoint ptr %pIn.addr.0.i1124 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 4)
  %271 = load i32, ptr %pIn.addr.0.i1124, align 1
  %xor10.i1127 = xor i32 %271, %269
  %tobool11.not.i1128 = icmp eq i32 %xor10.i1127, 0
  br i1 %tobool11.not.i1128, label %while.body.i1129.while.cond.i1126_crit_edge, label %cleanup18.thread.i1134

while.body.i1129.while.cond.i1126_crit_edge:      ; preds = %while.body.i1129
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i1126

cleanup18.thread.i1134:                           ; preds = %while.body.i1129
  call void @__sanitizer_cov_trace_pc() #10
  %272 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i1127, i1 true) #8, !range !23
  %273 = lshr i32 %272, 3
  %add.ptr17.i1130 = getelementptr i8, ptr %pIn.addr.0.i1124, i32 %273
  %sub.ptr.lhs.cast.i1131 = ptrtoint ptr %add.ptr17.i1130 to i32
  %sub.ptr.rhs.cast.i1132 = ptrtoint ptr %add.ptr305 to i32
  %sub.ptr.sub.i1133 = sub i32 %sub.ptr.lhs.cast.i1131, %sub.ptr.rhs.cast.i1132
  br label %ZSTD_count.exit1159

if.end20.i1139:                                   ; preds = %while.cond.i1126.if.end20.i1139_crit_edge, %if.then299.if.end20.i1139_crit_edge
  %pIn.addr.2.i1135 = phi ptr [ %add.ptr305, %if.then299.if.end20.i1139_crit_edge ], [ %pIn.addr.0.i1124, %while.cond.i1126.if.end20.i1139_crit_edge ]
  %pMatch.addr.2.i1136 = phi ptr [ %add.ptr306, %if.then299.if.end20.i1139_crit_edge ], [ %pMatch.addr.0.i1123, %while.cond.i1126.if.end20.i1139_crit_edge ]
  %cmp34.i1138 = icmp ult ptr %pIn.addr.2.i1135, %add.ptr33.i1137
  br i1 %cmp34.i1138, label %land.lhs.true35.i1141, label %if.end20.i1139.if.end44.i1148_crit_edge

if.end20.i1139.if.end44.i1148_crit_edge:          ; preds = %if.end20.i1139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i1148

land.lhs.true35.i1141:                            ; preds = %if.end20.i1139
  %274 = ptrtoint ptr %pMatch.addr.2.i1136 to i32
  call void @__asan_loadN_noabort(i32 %274, i32 2)
  %275 = load i16, ptr %pMatch.addr.2.i1136, align 1
  %276 = ptrtoint ptr %pIn.addr.2.i1135 to i32
  call void @__asan_loadN_noabort(i32 %276, i32 2)
  %277 = load i16, ptr %pIn.addr.2.i1135, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %275, i16 %277)
  %cmp39.i1140 = icmp eq i16 %275, %277
  br i1 %cmp39.i1140, label %if.then41.i1144, label %land.lhs.true35.i1141.if.end44.i1148_crit_edge

land.lhs.true35.i1141.if.end44.i1148_crit_edge:   ; preds = %land.lhs.true35.i1141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i1148

if.then41.i1144:                                  ; preds = %land.lhs.true35.i1141
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i1142 = getelementptr i8, ptr %pIn.addr.2.i1135, i32 2
  %add.ptr43.i1143 = getelementptr i8, ptr %pMatch.addr.2.i1136, i32 2
  br label %if.end44.i1148

if.end44.i1148:                                   ; preds = %if.then41.i1144, %land.lhs.true35.i1141.if.end44.i1148_crit_edge, %if.end20.i1139.if.end44.i1148_crit_edge
  %pIn.addr.4.i1145 = phi ptr [ %add.ptr42.i1142, %if.then41.i1144 ], [ %pIn.addr.2.i1135, %land.lhs.true35.i1141.if.end44.i1148_crit_edge ], [ %pIn.addr.2.i1135, %if.end20.i1139.if.end44.i1148_crit_edge ]
  %pMatch.addr.4.i1146 = phi ptr [ %add.ptr43.i1143, %if.then41.i1144 ], [ %pMatch.addr.2.i1136, %land.lhs.true35.i1141.if.end44.i1148_crit_edge ], [ %pMatch.addr.2.i1136, %if.end20.i1139.if.end44.i1148_crit_edge ]
  %cmp45.i1147 = icmp ult ptr %pIn.addr.4.i1145, %iLimit
  br i1 %cmp45.i1147, label %land.lhs.true47.i1152, label %if.end44.i1148.if.end53.i1157_crit_edge

if.end44.i1148.if.end53.i1157_crit_edge:          ; preds = %if.end44.i1148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i1157

land.lhs.true47.i1152:                            ; preds = %if.end44.i1148
  call void @__sanitizer_cov_trace_pc() #10
  %278 = ptrtoint ptr %pMatch.addr.4.i1146 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %pMatch.addr.4.i1146, align 1
  %280 = ptrtoint ptr %pIn.addr.4.i1145 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %pIn.addr.4.i1145, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %279, i8 %281)
  %cmp50.i1149 = icmp eq i8 %279, %281
  %spec.select.idx.i1150 = zext i1 %cmp50.i1149 to i32
  %spec.select.i1151 = getelementptr i8, ptr %pIn.addr.4.i1145, i32 %spec.select.idx.i1150
  br label %if.end53.i1157

if.end53.i1157:                                   ; preds = %land.lhs.true47.i1152, %if.end44.i1148.if.end53.i1157_crit_edge
  %pIn.addr.5.i1153 = phi ptr [ %pIn.addr.4.i1145, %if.end44.i1148.if.end53.i1157_crit_edge ], [ %spec.select.i1151, %land.lhs.true47.i1152 ]
  %sub.ptr.lhs.cast54.i1154 = ptrtoint ptr %pIn.addr.5.i1153 to i32
  %sub.ptr.rhs.cast55.i1155 = ptrtoint ptr %add.ptr305 to i32
  %sub.ptr.sub56.i1156 = sub i32 %sub.ptr.lhs.cast54.i1154, %sub.ptr.rhs.cast55.i1155
  br label %ZSTD_count.exit1159

ZSTD_count.exit1159:                              ; preds = %if.end53.i1157, %cleanup18.thread.i1134, %cleanup.i1120
  %retval.3.i1158 = phi i32 [ %sub.ptr.sub56.i1156, %if.end53.i1157 ], [ %267, %cleanup.i1120 ], [ %sub.ptr.sub.i1133, %cleanup18.thread.i1134 ]
  %add308 = add i32 %retval.3.i1158, %261
  br label %if.end321

if.else309:                                       ; preds = %for.body279
  %add.ptr310 = getelementptr i8, ptr %31, i32 %matchIndex.01597
  %add.ptr311 = getelementptr i8, ptr %ip, i32 %261
  %add.ptr312 = getelementptr i8, ptr %add.ptr310, i32 %261
  %sub.ptr.rhs.cast.i1161 = ptrtoint ptr %add.ptr312 to i32
  %sub.ptr.sub.i1162 = sub i32 %sub.ptr.lhs.cast.i1160, %sub.ptr.rhs.cast.i1161
  %add.ptr.i1163 = getelementptr i8, ptr %add.ptr311, i32 %sub.ptr.sub.i1162
  %cmp.i1164 = icmp ult ptr %add.ptr.i1163, %iLimit
  %add.ptr.iEnd.i1165 = select i1 %cmp.i1164, ptr %add.ptr.i1163, ptr %iLimit
  %add.ptr.i.i1166 = getelementptr i8, ptr %add.ptr.iEnd.i1165, i32 -3
  %cmp.i.i1167 = icmp ugt ptr %add.ptr.i.i1166, %add.ptr311
  br i1 %cmp.i.i1167, label %if.then.i.i1170, label %if.else309.if.end20.i.i1190_crit_edge

if.else309.if.end20.i.i1190_crit_edge:            ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i1190

if.then.i.i1170:                                  ; preds = %if.else309
  %282 = ptrtoint ptr %add.ptr312 to i32
  call void @__asan_loadN_noabort(i32 %282, i32 4)
  %283 = load i32, ptr %add.ptr312, align 1
  %284 = ptrtoint ptr %add.ptr311 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %add.ptr311, align 1
  %xor.i.i1168 = xor i32 %285, %283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i1168)
  %tobool.not.i.i1169 = icmp eq i32 %xor.i.i1168, 0
  br i1 %tobool.not.i.i1169, label %if.then.i.i1170.while.cond.i.i1177_crit_edge, label %cleanup.i.i1171

if.then.i.i1170.while.cond.i.i1177_crit_edge:     ; preds = %if.then.i.i1170
  br label %while.cond.i.i1177

cleanup.i.i1171:                                  ; preds = %if.then.i.i1170
  call void @__sanitizer_cov_trace_pc() #10
  %286 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i1168, i1 true) #8, !range !23
  %287 = lshr i32 %286, 3
  br label %ZSTD_count.exit.i1212

while.cond.i.i1177:                               ; preds = %while.body.i.i1180.while.cond.i.i1177_crit_edge, %if.then.i.i1170.while.cond.i.i1177_crit_edge
  %pIn.pn.i.i1172 = phi ptr [ %pIn.addr.0.i.i1175, %while.body.i.i1180.while.cond.i.i1177_crit_edge ], [ %add.ptr311, %if.then.i.i1170.while.cond.i.i1177_crit_edge ]
  %pMatch.pn.i.i1173 = phi ptr [ %pMatch.addr.0.i.i1174, %while.body.i.i1180.while.cond.i.i1177_crit_edge ], [ %add.ptr312, %if.then.i.i1170.while.cond.i.i1177_crit_edge ]
  %pMatch.addr.0.i.i1174 = getelementptr i8, ptr %pMatch.pn.i.i1173, i32 4
  %pIn.addr.0.i.i1175 = getelementptr i8, ptr %pIn.pn.i.i1172, i32 4
  %cmp6.i.i1176 = icmp ult ptr %pIn.addr.0.i.i1175, %add.ptr.i.i1166
  br i1 %cmp6.i.i1176, label %while.body.i.i1180, label %while.cond.i.i1177.if.end20.i.i1190_crit_edge

while.cond.i.i1177.if.end20.i.i1190_crit_edge:    ; preds = %while.cond.i.i1177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i1190

while.body.i.i1180:                               ; preds = %while.cond.i.i1177
  %288 = ptrtoint ptr %pMatch.addr.0.i.i1174 to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %289 = load i32, ptr %pMatch.addr.0.i.i1174, align 1
  %290 = ptrtoint ptr %pIn.addr.0.i.i1175 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %pIn.addr.0.i.i1175, align 1
  %xor10.i.i1178 = xor i32 %291, %289
  %tobool11.not.i.i1179 = icmp eq i32 %xor10.i.i1178, 0
  br i1 %tobool11.not.i.i1179, label %while.body.i.i1180.while.cond.i.i1177_crit_edge, label %cleanup18.thread.i.i1185

while.body.i.i1180.while.cond.i.i1177_crit_edge:  ; preds = %while.body.i.i1180
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i1177

cleanup18.thread.i.i1185:                         ; preds = %while.body.i.i1180
  call void @__sanitizer_cov_trace_pc() #10
  %292 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i1178, i1 true) #8, !range !23
  %293 = lshr i32 %292, 3
  %add.ptr17.i.i1181 = getelementptr i8, ptr %pIn.addr.0.i.i1175, i32 %293
  %sub.ptr.lhs.cast.i.i1182 = ptrtoint ptr %add.ptr17.i.i1181 to i32
  %sub.ptr.rhs.cast.i.i1183 = ptrtoint ptr %add.ptr311 to i32
  %sub.ptr.sub.i.i1184 = sub i32 %sub.ptr.lhs.cast.i.i1182, %sub.ptr.rhs.cast.i.i1183
  br label %ZSTD_count.exit.i1212

if.end20.i.i1190:                                 ; preds = %while.cond.i.i1177.if.end20.i.i1190_crit_edge, %if.else309.if.end20.i.i1190_crit_edge
  %pIn.addr.2.i.i1186 = phi ptr [ %add.ptr311, %if.else309.if.end20.i.i1190_crit_edge ], [ %pIn.addr.0.i.i1175, %while.cond.i.i1177.if.end20.i.i1190_crit_edge ]
  %pMatch.addr.2.i.i1187 = phi ptr [ %add.ptr312, %if.else309.if.end20.i.i1190_crit_edge ], [ %pMatch.addr.0.i.i1174, %while.cond.i.i1177.if.end20.i.i1190_crit_edge ]
  %add.ptr33.i.i1188 = getelementptr i8, ptr %add.ptr.iEnd.i1165, i32 -1
  %cmp34.i.i1189 = icmp ult ptr %pIn.addr.2.i.i1186, %add.ptr33.i.i1188
  br i1 %cmp34.i.i1189, label %land.lhs.true35.i.i1192, label %if.end20.i.i1190.if.end44.i.i1199_crit_edge

if.end20.i.i1190.if.end44.i.i1199_crit_edge:      ; preds = %if.end20.i.i1190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i1199

land.lhs.true35.i.i1192:                          ; preds = %if.end20.i.i1190
  %294 = ptrtoint ptr %pMatch.addr.2.i.i1187 to i32
  call void @__asan_loadN_noabort(i32 %294, i32 2)
  %295 = load i16, ptr %pMatch.addr.2.i.i1187, align 1
  %296 = ptrtoint ptr %pIn.addr.2.i.i1186 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 2)
  %297 = load i16, ptr %pIn.addr.2.i.i1186, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %295, i16 %297)
  %cmp39.i.i1191 = icmp eq i16 %295, %297
  br i1 %cmp39.i.i1191, label %if.then41.i.i1195, label %land.lhs.true35.i.i1192.if.end44.i.i1199_crit_edge

land.lhs.true35.i.i1192.if.end44.i.i1199_crit_edge: ; preds = %land.lhs.true35.i.i1192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i1199

if.then41.i.i1195:                                ; preds = %land.lhs.true35.i.i1192
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i1193 = getelementptr i8, ptr %pIn.addr.2.i.i1186, i32 2
  %add.ptr43.i.i1194 = getelementptr i8, ptr %pMatch.addr.2.i.i1187, i32 2
  br label %if.end44.i.i1199

if.end44.i.i1199:                                 ; preds = %if.then41.i.i1195, %land.lhs.true35.i.i1192.if.end44.i.i1199_crit_edge, %if.end20.i.i1190.if.end44.i.i1199_crit_edge
  %pIn.addr.4.i.i1196 = phi ptr [ %add.ptr42.i.i1193, %if.then41.i.i1195 ], [ %pIn.addr.2.i.i1186, %land.lhs.true35.i.i1192.if.end44.i.i1199_crit_edge ], [ %pIn.addr.2.i.i1186, %if.end20.i.i1190.if.end44.i.i1199_crit_edge ]
  %pMatch.addr.4.i.i1197 = phi ptr [ %add.ptr43.i.i1194, %if.then41.i.i1195 ], [ %pMatch.addr.2.i.i1187, %land.lhs.true35.i.i1192.if.end44.i.i1199_crit_edge ], [ %pMatch.addr.2.i.i1187, %if.end20.i.i1190.if.end44.i.i1199_crit_edge ]
  %cmp45.i.i1198 = icmp ult ptr %pIn.addr.4.i.i1196, %add.ptr.iEnd.i1165
  br i1 %cmp45.i.i1198, label %land.lhs.true47.i.i1203, label %if.end44.i.i1199.if.end53.i.i1208_crit_edge

if.end44.i.i1199.if.end53.i.i1208_crit_edge:      ; preds = %if.end44.i.i1199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i1208

land.lhs.true47.i.i1203:                          ; preds = %if.end44.i.i1199
  call void @__sanitizer_cov_trace_pc() #10
  %298 = ptrtoint ptr %pMatch.addr.4.i.i1197 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %pMatch.addr.4.i.i1197, align 1
  %300 = ptrtoint ptr %pIn.addr.4.i.i1196 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %pIn.addr.4.i.i1196, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %299, i8 %301)
  %cmp50.i.i1200 = icmp eq i8 %299, %301
  %spec.select.idx.i.i1201 = zext i1 %cmp50.i.i1200 to i32
  %spec.select.i.i1202 = getelementptr i8, ptr %pIn.addr.4.i.i1196, i32 %spec.select.idx.i.i1201
  br label %if.end53.i.i1208

if.end53.i.i1208:                                 ; preds = %land.lhs.true47.i.i1203, %if.end44.i.i1199.if.end53.i.i1208_crit_edge
  %pIn.addr.5.i.i1204 = phi ptr [ %pIn.addr.4.i.i1196, %if.end44.i.i1199.if.end53.i.i1208_crit_edge ], [ %spec.select.i.i1202, %land.lhs.true47.i.i1203 ]
  %sub.ptr.lhs.cast54.i.i1205 = ptrtoint ptr %pIn.addr.5.i.i1204 to i32
  %sub.ptr.rhs.cast55.i.i1206 = ptrtoint ptr %add.ptr311 to i32
  %sub.ptr.sub56.i.i1207 = sub i32 %sub.ptr.lhs.cast54.i.i1205, %sub.ptr.rhs.cast55.i.i1206
  br label %ZSTD_count.exit.i1212

ZSTD_count.exit.i1212:                            ; preds = %if.end53.i.i1208, %cleanup18.thread.i.i1185, %cleanup.i.i1171
  %retval.3.i.i1209 = phi i32 [ %sub.ptr.sub56.i.i1207, %if.end53.i.i1208 ], [ %287, %cleanup.i.i1171 ], [ %sub.ptr.sub.i.i1184, %cleanup18.thread.i.i1185 ]
  %add.ptr5.i1210 = getelementptr i8, ptr %add.ptr312, i32 %retval.3.i.i1209
  %cmp6.not.i1211 = icmp eq ptr %add.ptr5.i1210, %add.ptr
  br i1 %cmp6.not.i1211, label %if.end.i1216, label %ZSTD_count.exit.i1212.ZSTD_count_2segments.exit1263_crit_edge

ZSTD_count.exit.i1212.ZSTD_count_2segments.exit1263_crit_edge: ; preds = %ZSTD_count.exit.i1212
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_count_2segments.exit1263

if.end.i1216:                                     ; preds = %ZSTD_count.exit.i1212
  %add.ptr7.i1213 = getelementptr i8, ptr %add.ptr311, i32 %retval.3.i.i1209
  %cmp.i24.i1215 = icmp ugt ptr %add.ptr.i1115, %add.ptr7.i1213
  br i1 %cmp.i24.i1215, label %if.then.i27.i1219, label %if.end.i1216.if.end20.i47.i1239_crit_edge

if.end.i1216.if.end20.i47.i1239_crit_edge:        ; preds = %if.end.i1216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i1239

if.then.i27.i1219:                                ; preds = %if.end.i1216
  %302 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %302, i32 4)
  %303 = load i32, ptr %add.ptr13, align 1
  %304 = ptrtoint ptr %add.ptr7.i1213 to i32
  call void @__asan_loadN_noabort(i32 %304, i32 4)
  %305 = load i32, ptr %add.ptr7.i1213, align 1
  %xor.i25.i1217 = xor i32 %305, %303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i1217)
  %tobool.not.i26.i1218 = icmp eq i32 %xor.i25.i1217, 0
  br i1 %tobool.not.i26.i1218, label %if.then.i27.i1219.while.cond.i34.i1226_crit_edge, label %cleanup.i28.i1220

if.then.i27.i1219.while.cond.i34.i1226_crit_edge: ; preds = %if.then.i27.i1219
  br label %while.cond.i34.i1226

cleanup.i28.i1220:                                ; preds = %if.then.i27.i1219
  call void @__sanitizer_cov_trace_pc() #10
  %306 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i1217, i1 true) #8, !range !23
  %307 = lshr i32 %306, 3
  br label %ZSTD_count.exit67.i1260

while.cond.i34.i1226:                             ; preds = %while.body.i37.i1229.while.cond.i34.i1226_crit_edge, %if.then.i27.i1219.while.cond.i34.i1226_crit_edge
  %pIn.pn.i29.i1221 = phi ptr [ %pIn.addr.0.i32.i1224, %while.body.i37.i1229.while.cond.i34.i1226_crit_edge ], [ %add.ptr7.i1213, %if.then.i27.i1219.while.cond.i34.i1226_crit_edge ]
  %pMatch.pn.i30.i1222 = phi ptr [ %pMatch.addr.0.i31.i1223, %while.body.i37.i1229.while.cond.i34.i1226_crit_edge ], [ %add.ptr13, %if.then.i27.i1219.while.cond.i34.i1226_crit_edge ]
  %pMatch.addr.0.i31.i1223 = getelementptr i8, ptr %pMatch.pn.i30.i1222, i32 4
  %pIn.addr.0.i32.i1224 = getelementptr i8, ptr %pIn.pn.i29.i1221, i32 4
  %cmp6.i33.i1225 = icmp ult ptr %pIn.addr.0.i32.i1224, %add.ptr.i1115
  br i1 %cmp6.i33.i1225, label %while.body.i37.i1229, label %while.cond.i34.i1226.if.end20.i47.i1239_crit_edge

while.cond.i34.i1226.if.end20.i47.i1239_crit_edge: ; preds = %while.cond.i34.i1226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i1239

while.body.i37.i1229:                             ; preds = %while.cond.i34.i1226
  %308 = ptrtoint ptr %pMatch.addr.0.i31.i1223 to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %309 = load i32, ptr %pMatch.addr.0.i31.i1223, align 1
  %310 = ptrtoint ptr %pIn.addr.0.i32.i1224 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %pIn.addr.0.i32.i1224, align 1
  %xor10.i35.i1227 = xor i32 %311, %309
  %tobool11.not.i36.i1228 = icmp eq i32 %xor10.i35.i1227, 0
  br i1 %tobool11.not.i36.i1228, label %while.body.i37.i1229.while.cond.i34.i1226_crit_edge, label %cleanup18.thread.i42.i1234

while.body.i37.i1229.while.cond.i34.i1226_crit_edge: ; preds = %while.body.i37.i1229
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i34.i1226

cleanup18.thread.i42.i1234:                       ; preds = %while.body.i37.i1229
  call void @__sanitizer_cov_trace_pc() #10
  %312 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i1227, i1 true) #8, !range !23
  %313 = lshr i32 %312, 3
  %add.ptr17.i38.i1230 = getelementptr i8, ptr %pIn.addr.0.i32.i1224, i32 %313
  %sub.ptr.lhs.cast.i39.i1231 = ptrtoint ptr %add.ptr17.i38.i1230 to i32
  %sub.ptr.rhs.cast.i40.i1232 = ptrtoint ptr %add.ptr7.i1213 to i32
  %sub.ptr.sub.i41.i1233 = sub i32 %sub.ptr.lhs.cast.i39.i1231, %sub.ptr.rhs.cast.i40.i1232
  br label %ZSTD_count.exit67.i1260

if.end20.i47.i1239:                               ; preds = %while.cond.i34.i1226.if.end20.i47.i1239_crit_edge, %if.end.i1216.if.end20.i47.i1239_crit_edge
  %pIn.addr.2.i43.i1235 = phi ptr [ %add.ptr7.i1213, %if.end.i1216.if.end20.i47.i1239_crit_edge ], [ %pIn.addr.0.i32.i1224, %while.cond.i34.i1226.if.end20.i47.i1239_crit_edge ]
  %pMatch.addr.2.i44.i1236 = phi ptr [ %add.ptr13, %if.end.i1216.if.end20.i47.i1239_crit_edge ], [ %pMatch.addr.0.i31.i1223, %while.cond.i34.i1226.if.end20.i47.i1239_crit_edge ]
  %cmp34.i46.i1238 = icmp ult ptr %pIn.addr.2.i43.i1235, %add.ptr33.i1137
  br i1 %cmp34.i46.i1238, label %land.lhs.true35.i49.i1241, label %if.end20.i47.i1239.if.end44.i56.i1248_crit_edge

if.end20.i47.i1239.if.end44.i56.i1248_crit_edge:  ; preds = %if.end20.i47.i1239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i1248

land.lhs.true35.i49.i1241:                        ; preds = %if.end20.i47.i1239
  %314 = ptrtoint ptr %pMatch.addr.2.i44.i1236 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 2)
  %315 = load i16, ptr %pMatch.addr.2.i44.i1236, align 1
  %316 = ptrtoint ptr %pIn.addr.2.i43.i1235 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 2)
  %317 = load i16, ptr %pIn.addr.2.i43.i1235, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %315, i16 %317)
  %cmp39.i48.i1240 = icmp eq i16 %315, %317
  br i1 %cmp39.i48.i1240, label %if.then41.i52.i1244, label %land.lhs.true35.i49.i1241.if.end44.i56.i1248_crit_edge

land.lhs.true35.i49.i1241.if.end44.i56.i1248_crit_edge: ; preds = %land.lhs.true35.i49.i1241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i1248

if.then41.i52.i1244:                              ; preds = %land.lhs.true35.i49.i1241
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i50.i1242 = getelementptr i8, ptr %pIn.addr.2.i43.i1235, i32 2
  %add.ptr43.i51.i1243 = getelementptr i8, ptr %pMatch.addr.2.i44.i1236, i32 2
  br label %if.end44.i56.i1248

if.end44.i56.i1248:                               ; preds = %if.then41.i52.i1244, %land.lhs.true35.i49.i1241.if.end44.i56.i1248_crit_edge, %if.end20.i47.i1239.if.end44.i56.i1248_crit_edge
  %pIn.addr.4.i53.i1245 = phi ptr [ %add.ptr42.i50.i1242, %if.then41.i52.i1244 ], [ %pIn.addr.2.i43.i1235, %land.lhs.true35.i49.i1241.if.end44.i56.i1248_crit_edge ], [ %pIn.addr.2.i43.i1235, %if.end20.i47.i1239.if.end44.i56.i1248_crit_edge ]
  %pMatch.addr.4.i54.i1246 = phi ptr [ %add.ptr43.i51.i1243, %if.then41.i52.i1244 ], [ %pMatch.addr.2.i44.i1236, %land.lhs.true35.i49.i1241.if.end44.i56.i1248_crit_edge ], [ %pMatch.addr.2.i44.i1236, %if.end20.i47.i1239.if.end44.i56.i1248_crit_edge ]
  %cmp45.i55.i1247 = icmp ult ptr %pIn.addr.4.i53.i1245, %iLimit
  br i1 %cmp45.i55.i1247, label %land.lhs.true47.i60.i1252, label %if.end44.i56.i1248.if.end53.i65.i1257_crit_edge

if.end44.i56.i1248.if.end53.i65.i1257_crit_edge:  ; preds = %if.end44.i56.i1248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i65.i1257

land.lhs.true47.i60.i1252:                        ; preds = %if.end44.i56.i1248
  call void @__sanitizer_cov_trace_pc() #10
  %318 = ptrtoint ptr %pMatch.addr.4.i54.i1246 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %pMatch.addr.4.i54.i1246, align 1
  %320 = ptrtoint ptr %pIn.addr.4.i53.i1245 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %pIn.addr.4.i53.i1245, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %319, i8 %321)
  %cmp50.i57.i1249 = icmp eq i8 %319, %321
  %spec.select.idx.i58.i1250 = zext i1 %cmp50.i57.i1249 to i32
  %spec.select.i59.i1251 = getelementptr i8, ptr %pIn.addr.4.i53.i1245, i32 %spec.select.idx.i58.i1250
  br label %if.end53.i65.i1257

if.end53.i65.i1257:                               ; preds = %land.lhs.true47.i60.i1252, %if.end44.i56.i1248.if.end53.i65.i1257_crit_edge
  %pIn.addr.5.i61.i1253 = phi ptr [ %pIn.addr.4.i53.i1245, %if.end44.i56.i1248.if.end53.i65.i1257_crit_edge ], [ %spec.select.i59.i1251, %land.lhs.true47.i60.i1252 ]
  %sub.ptr.lhs.cast54.i62.i1254 = ptrtoint ptr %pIn.addr.5.i61.i1253 to i32
  %sub.ptr.rhs.cast55.i63.i1255 = ptrtoint ptr %add.ptr7.i1213 to i32
  %sub.ptr.sub56.i64.i1256 = sub i32 %sub.ptr.lhs.cast54.i62.i1254, %sub.ptr.rhs.cast55.i63.i1255
  br label %ZSTD_count.exit67.i1260

ZSTD_count.exit67.i1260:                          ; preds = %if.end53.i65.i1257, %cleanup18.thread.i42.i1234, %cleanup.i28.i1220
  %retval.3.i66.i1258 = phi i32 [ %sub.ptr.sub56.i64.i1256, %if.end53.i65.i1257 ], [ %307, %cleanup.i28.i1220 ], [ %sub.ptr.sub.i41.i1233, %cleanup18.thread.i42.i1234 ]
  %add.i1259 = add i32 %retval.3.i66.i1258, %retval.3.i.i1209
  br label %ZSTD_count_2segments.exit1263

ZSTD_count_2segments.exit1263:                    ; preds = %ZSTD_count.exit67.i1260, %ZSTD_count.exit.i1212.ZSTD_count_2segments.exit1263_crit_edge
  %retval.0.i1261 = phi i32 [ %add.i1259, %ZSTD_count.exit67.i1260 ], [ %retval.3.i.i1209, %ZSTD_count.exit.i1212.ZSTD_count_2segments.exit1263_crit_edge ]
  %add314 = add i32 %retval.0.i1261, %261
  %add315 = add i32 %add314, %matchIndex.01597
  call void @__sanitizer_cov_trace_cmp4(i32 %add315, i32 %33)
  %cmp316.not = icmp ult i32 %add315, %33
  %spec.select825 = select i1 %cmp316.not, ptr %31, ptr %4
  br label %if.end321

if.end321:                                        ; preds = %ZSTD_count_2segments.exit1263, %ZSTD_count.exit1159
  %322 = phi ptr [ %4, %ZSTD_count.exit1159 ], [ %spec.select825, %ZSTD_count_2segments.exit1263 ]
  %matchLength.0 = phi i32 [ %add308, %ZSTD_count.exit1159 ], [ %add314, %ZSTD_count_2segments.exit1263 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %matchLength.0, i32 %bestLength.91610)
  %cmp322 = icmp ugt i32 %matchLength.0, %bestLength.91610
  br i1 %cmp322, label %if.then324, label %if.end321.if.end351_crit_edge

if.end321.if.end351_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end351

if.then324:                                       ; preds = %if.end321
  %sub325 = sub i32 %matchEndIdx.01605, %matchIndex.01597
  call void @__sanitizer_cov_trace_cmp4(i32 %matchLength.0, i32 %sub325)
  %cmp326 = icmp ugt i32 %matchLength.0, %sub325
  %add329 = add i32 %matchLength.0, %matchIndex.01597
  %spec.select826 = select i1 %cmp326, i32 %add329, i32 %matchEndIdx.01605
  %add332 = sub i32 %sub331, %matchIndex.01597
  %arrayidx333 = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %mnum.91606
  %323 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %add332, ptr %arrayidx333, align 4
  %len336 = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %mnum.91606, i32 1
  %324 = ptrtoint ptr %len336 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %matchLength.0, ptr %len336, align 4
  %inc337 = add i32 %mnum.91606, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %matchLength.0)
  %cmp338 = icmp ugt i32 %matchLength.0, 4096
  %add.ptr340 = getelementptr i8, ptr %ip, i32 %matchLength.0
  %cmp341 = icmp eq ptr %add.ptr340, %iLimit
  %or343811 = or i1 %cmp338, %cmp341
  br i1 %or343811, label %if.then345, label %if.then324.if.end351_crit_edge

if.then324.if.end351_crit_edge:                   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end351

if.then345:                                       ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select827 = select i1 %cmp32, i32 0, i32 %nbCompares.01607
  br label %for.end378

if.end351:                                        ; preds = %if.then324.if.end351_crit_edge, %if.end321.if.end351_crit_edge
  %matchEndIdx.2 = phi i32 [ %spec.select826, %if.then324.if.end351_crit_edge ], [ %matchEndIdx.01605, %if.end321.if.end351_crit_edge ]
  %mnum.10 = phi i32 [ %inc337, %if.then324.if.end351_crit_edge ], [ %mnum.91606, %if.end321.if.end351_crit_edge ]
  %bestLength.10 = phi i32 [ %matchLength.0, %if.then324.if.end351_crit_edge ], [ %bestLength.91610, %if.end321.if.end351_crit_edge ]
  %325 = getelementptr i8, ptr %322, i32 %matchIndex.01597
  %arrayidx352 = getelementptr i8, ptr %325, i32 %matchLength.0
  %326 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx352, align 1
  %arrayidx354 = getelementptr i8, ptr %ip, i32 %matchLength.0
  %328 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx354, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %327, i8 %329)
  %cmp356 = icmp ult i8 %327, %329
  br i1 %cmp356, label %if.then358, label %if.else365

if.then358:                                       ; preds = %if.end351
  %330 = ptrtoint ptr %smallerPtr.01601 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %matchIndex.01597, ptr %smallerPtr.01601, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %matchIndex.01597, i32 %34)
  %cmp359.not = icmp ugt i32 %matchIndex.01597, %34
  br i1 %cmp359.not, label %if.end362, label %if.then358.for.end378_crit_edge

if.then358.for.end378_crit_edge:                  ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end378

if.end362:                                        ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr363 = getelementptr i32, ptr %add.ptr282, i32 1
  br label %for.inc377

if.else365:                                       ; preds = %if.end351
  %331 = ptrtoint ptr %largerPtr.01603 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %matchIndex.01597, ptr %largerPtr.01603, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %matchIndex.01597, i32 %34)
  %cmp366.not = icmp ugt i32 %matchIndex.01597, %34
  br i1 %cmp366.not, label %if.else365.for.inc377_crit_edge, label %if.else365.for.end378_crit_edge

if.else365.for.end378_crit_edge:                  ; preds = %if.else365
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end378

if.else365.for.inc377_crit_edge:                  ; preds = %if.else365
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc377

for.inc377:                                       ; preds = %if.else365.for.inc377_crit_edge, %if.end362
  %matchIndex.1.in = phi ptr [ %add.ptr363, %if.end362 ], [ %add.ptr282, %if.else365.for.inc377_crit_edge ]
  %commonLengthSmaller.1 = phi i32 [ %matchLength.0, %if.end362 ], [ %commonLengthSmaller.01599, %if.else365.for.inc377_crit_edge ]
  %commonLengthLarger.1 = phi i32 [ %commonLengthLarger.01600, %if.end362 ], [ %matchLength.0, %if.else365.for.inc377_crit_edge ]
  %smallerPtr.1 = phi ptr [ %add.ptr363, %if.end362 ], [ %smallerPtr.01601, %if.else365.for.inc377_crit_edge ]
  %largerPtr.1 = phi ptr [ %largerPtr.01603, %if.end362 ], [ %add.ptr282, %if.else365.for.inc377_crit_edge ]
  %332 = ptrtoint ptr %matchIndex.1.in to i32
  call void @__asan_load4_noabort(i32 %332)
  %matchIndex.1 = load i32, ptr %matchIndex.1.in, align 4
  %dec = add i32 %nbCompares.01607, -1
  %tobool276.not = icmp eq i32 %dec, 0
  br i1 %tobool276.not, label %for.end378.thread, label %for.inc377.land.rhs_crit_edge

for.inc377.land.rhs_crit_edge:                    ; preds = %for.inc377
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end378:                                       ; preds = %if.else365.for.end378_crit_edge, %if.then358.for.end378_crit_edge, %if.then345, %land.rhs.for.end378_crit_edge
  %smallerPtr.3 = phi ptr [ %smallerPtr.01601, %if.then345 ], [ %dummy32, %if.then358.for.end378_crit_edge ], [ %smallerPtr.01601, %if.else365.for.end378_crit_edge ], [ %smallerPtr.01601, %land.rhs.for.end378_crit_edge ]
  %largerPtr.3 = phi ptr [ %largerPtr.01603, %if.then345 ], [ %largerPtr.01603, %if.then358.for.end378_crit_edge ], [ %dummy32, %if.else365.for.end378_crit_edge ], [ %largerPtr.01603, %land.rhs.for.end378_crit_edge ]
  %matchEndIdx.4 = phi i32 [ %spec.select826, %if.then345 ], [ %matchEndIdx.2, %if.then358.for.end378_crit_edge ], [ %matchEndIdx.2, %if.else365.for.end378_crit_edge ], [ %matchEndIdx.01605, %land.rhs.for.end378_crit_edge ]
  %mnum.12 = phi i32 [ %inc337, %if.then345 ], [ %mnum.10, %if.then358.for.end378_crit_edge ], [ %mnum.10, %if.else365.for.end378_crit_edge ], [ %mnum.91606, %land.rhs.for.end378_crit_edge ]
  %nbCompares.3 = phi i32 [ %spec.select827, %if.then345 ], [ %nbCompares.01607, %land.rhs.for.end378_crit_edge ], [ %nbCompares.01607, %if.then358.for.end378_crit_edge ], [ %nbCompares.01607, %if.else365.for.end378_crit_edge ]
  %bestLength.12 = phi i32 [ %matchLength.0, %if.then345 ], [ %bestLength.10, %if.then358.for.end378_crit_edge ], [ %bestLength.10, %if.else365.for.end378_crit_edge ], [ %bestLength.91610, %land.rhs.for.end378_crit_edge ]
  %333 = ptrtoint ptr %largerPtr.3 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %largerPtr.3, align 4
  %334 = ptrtoint ptr %smallerPtr.3 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 0, ptr %smallerPtr.3, align 4
  %cmp32.not = xor i1 %cmp32, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbCompares.3)
  %tobool382.not = icmp eq i32 %nbCompares.3, 0
  %or.cond828 = select i1 %cmp32.not, i1 true, i1 %tobool382.not
  br i1 %or.cond828, label %for.end378.if.end469_crit_edge, label %if.then383

for.end378.if.end469_crit_edge:                   ; preds = %for.end378
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

if.then383:                                       ; preds = %for.end378
  %335 = zext i32 %mls to i64
  call void @__sanitizer_cov_trace_switch(i64 %335, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mls, label %sw.bb.i1267 [
    i32 8, label %sw.bb7.i1291
    i32 5, label %sw.bb1.i1273
    i32 6, label %sw.bb3.i1279
    i32 7, label %sw.bb5.i1285
  ]

sw.bb.i1267:                                      ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #10
  %336 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %336, i32 4)
  %337 = load i32, ptr %ip, align 1
  %mul.i.i.i1264 = mul i32 %337, -1640531535
  %sub.i.i.i1265 = sub i32 32, %cond811487
  %shr.i.i.i1266 = lshr i32 %mul.i.i.i1264, %sub.i.i.i1265
  br label %ZSTD_hashPtr.exit1293

sw.bb1.i1273:                                     ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #10
  %338 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %338, i32 8)
  %339 = load i64, ptr %ip, align 1
  %340 = tail call i64 @llvm.bswap.i64(i64 %339) #8
  %mul.i.i17.i1268 = mul i64 %340, -3523014627271114752
  %sub.i.i18.i1269 = sub i32 64, %cond811487
  %sh_prom.i.i.i1270 = zext i32 %sub.i.i18.i1269 to i64
  %shr.i.i19.i1271 = lshr i64 %mul.i.i17.i1268, %sh_prom.i.i.i1270
  %conv.i.i.i1272 = trunc i64 %shr.i.i19.i1271 to i32
  br label %ZSTD_hashPtr.exit1293

sw.bb3.i1279:                                     ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #10
  %341 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %341, i32 8)
  %342 = load i64, ptr %ip, align 1
  %343 = tail call i64 @llvm.bswap.i64(i64 %342) #8
  %mul.i.i20.i1274 = mul i64 %343, -3523014627193847808
  %sub.i.i21.i1275 = sub i32 64, %cond811487
  %sh_prom.i.i22.i1276 = zext i32 %sub.i.i21.i1275 to i64
  %shr.i.i23.i1277 = lshr i64 %mul.i.i20.i1274, %sh_prom.i.i22.i1276
  %conv.i.i24.i1278 = trunc i64 %shr.i.i23.i1277 to i32
  br label %ZSTD_hashPtr.exit1293

sw.bb5.i1285:                                     ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #10
  %344 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %344, i32 8)
  %345 = load i64, ptr %ip, align 1
  %346 = tail call i64 @llvm.bswap.i64(i64 %345) #8
  %mul.i.i25.i1280 = mul i64 %346, -3523014627193167104
  %sub.i.i26.i1281 = sub i32 64, %cond811487
  %sh_prom.i.i27.i1282 = zext i32 %sub.i.i26.i1281 to i64
  %shr.i.i28.i1283 = lshr i64 %mul.i.i25.i1280, %sh_prom.i.i27.i1282
  %conv.i.i29.i1284 = trunc i64 %shr.i.i28.i1283 to i32
  br label %ZSTD_hashPtr.exit1293

sw.bb7.i1291:                                     ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #10
  %347 = ptrtoint ptr %ip to i32
  call void @__asan_loadN_noabort(i32 %347, i32 8)
  %348 = load i64, ptr %ip, align 1
  %349 = tail call i64 @llvm.bswap.i64(i64 %348) #8
  %mul.i.i30.i1286 = mul i64 %349, -3523014627327384477
  %sub.i.i31.i1287 = sub i32 64, %cond811487
  %sh_prom.i.i32.i1288 = zext i32 %sub.i.i31.i1287 to i64
  %shr.i.i33.i1289 = lshr i64 %mul.i.i30.i1286, %sh_prom.i.i32.i1288
  %conv.i.i34.i1290 = trunc i64 %shr.i.i33.i1289 to i32
  br label %ZSTD_hashPtr.exit1293

ZSTD_hashPtr.exit1293:                            ; preds = %sw.bb7.i1291, %sw.bb5.i1285, %sw.bb3.i1279, %sw.bb1.i1273, %sw.bb.i1267
  %retval.0.i1292 = phi i32 [ %shr.i.i.i1266, %sw.bb.i1267 ], [ %conv.i.i29.i1284, %sw.bb5.i1285 ], [ %conv.i.i24.i1278, %sw.bb3.i1279 ], [ %conv.i.i.i1272, %sw.bb1.i1273 ], [ %conv.i.i34.i1290, %sw.bb7.i1291 ]
  %hashTable385 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %cond3614011410142414531478, i32 0, i32 4
  %350 = ptrtoint ptr %hashTable385 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %hashTable385, align 4
  %arrayidx386 = getelementptr i32, ptr %351, i32 %retval.0.i1292
  %chainTable387 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %cond3614011410142414531478, i32 0, i32 6
  %352 = ptrtoint ptr %chainTable387 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %chainTable387, align 4
  %354 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %354)
  %dictMatchIndex.01611 = load i32, ptr %arrayidx386, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dictMatchIndex.01611, i32 %cond6914571474)
  %cmp3911613 = icmp ugt i32 %dictMatchIndex.01611, %cond6914571474
  br i1 %cmp3911613, label %for.body394.lr.ph, label %ZSTD_hashPtr.exit1293.if.end469_crit_edge

ZSTD_hashPtr.exit1293.if.end469_crit_edge:        ; preds = %ZSTD_hashPtr.exit1293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

for.body394.lr.ph:                                ; preds = %ZSTD_hashPtr.exit1293
  %add.ptr416 = getelementptr i8, ptr %4, i32 %spec.select82014601472
  br label %for.body394

for.body394:                                      ; preds = %for.inc466.for.body394_crit_edge, %for.body394.lr.ph
  %dictMatchIndex.01621 = phi i32 [ %dictMatchIndex.01611, %for.body394.lr.ph ], [ %dictMatchIndex.0, %for.inc466.for.body394_crit_edge ]
  %bestLength.131620 = phi i32 [ %bestLength.12, %for.body394.lr.ph ], [ %bestLength.14, %for.inc466.for.body394_crit_edge ]
  %nbCompares.41619 = phi i32 [ %nbCompares.3, %for.body394.lr.ph ], [ %dec467, %for.inc466.for.body394_crit_edge ]
  %mnum.131618 = phi i32 [ %mnum.12, %for.body394.lr.ph ], [ %mnum.14, %for.inc466.for.body394_crit_edge ]
  %matchEndIdx.51617 = phi i32 [ %matchEndIdx.4, %for.body394.lr.ph ], [ %matchEndIdx.7, %for.inc466.for.body394_crit_edge ]
  %commonLengthLarger.31616 = phi i32 [ 0, %for.body394.lr.ph ], [ %commonLengthLarger.4, %for.inc466.for.body394_crit_edge ]
  %commonLengthSmaller.31615 = phi i32 [ 0, %for.body394.lr.ph ], [ %commonLengthSmaller.4, %for.inc466.for.body394_crit_edge ]
  %and396 = and i32 %dictMatchIndex.01621, %cond95
  %mul397 = shl i32 %and396, 1
  %add.ptr398 = getelementptr i32, ptr %353, i32 %mul397
  %355 = tail call i32 @llvm.umin.i32(i32 %commonLengthSmaller.31615, i32 %commonLengthLarger.31616)
  %add.ptr407 = getelementptr i8, ptr %cond491412142214551476, i32 %dictMatchIndex.01621
  %add.ptr408 = getelementptr i8, ptr %ip, i32 %355
  %add.ptr409 = getelementptr i8, ptr %add.ptr407, i32 %355
  %sub.ptr.rhs.cast.i1295 = ptrtoint ptr %add.ptr409 to i32
  %sub.ptr.sub.i1296 = sub i32 %sub.ptr.lhs.cast58143114471483, %sub.ptr.rhs.cast.i1295
  %add.ptr.i1297 = getelementptr i8, ptr %add.ptr408, i32 %sub.ptr.sub.i1296
  %cmp.i1298 = icmp ult ptr %add.ptr.i1297, %iLimit
  %add.ptr.iEnd.i1299 = select i1 %cmp.i1298, ptr %add.ptr.i1297, ptr %iLimit
  %add.ptr.i.i1300 = getelementptr i8, ptr %add.ptr.iEnd.i1299, i32 -3
  %cmp.i.i1301 = icmp ugt ptr %add.ptr.i.i1300, %add.ptr408
  br i1 %cmp.i.i1301, label %if.then.i.i1304, label %for.body394.if.end20.i.i1324_crit_edge

for.body394.if.end20.i.i1324_crit_edge:           ; preds = %for.body394
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i1324

if.then.i.i1304:                                  ; preds = %for.body394
  %356 = ptrtoint ptr %add.ptr409 to i32
  call void @__asan_loadN_noabort(i32 %356, i32 4)
  %357 = load i32, ptr %add.ptr409, align 1
  %358 = ptrtoint ptr %add.ptr408 to i32
  call void @__asan_loadN_noabort(i32 %358, i32 4)
  %359 = load i32, ptr %add.ptr408, align 1
  %xor.i.i1302 = xor i32 %359, %357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i1302)
  %tobool.not.i.i1303 = icmp eq i32 %xor.i.i1302, 0
  br i1 %tobool.not.i.i1303, label %if.then.i.i1304.while.cond.i.i1311_crit_edge, label %cleanup.i.i1305

if.then.i.i1304.while.cond.i.i1311_crit_edge:     ; preds = %if.then.i.i1304
  br label %while.cond.i.i1311

cleanup.i.i1305:                                  ; preds = %if.then.i.i1304
  call void @__sanitizer_cov_trace_pc() #10
  %360 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i1302, i1 true) #8, !range !23
  %361 = lshr i32 %360, 3
  br label %ZSTD_count.exit.i1346

while.cond.i.i1311:                               ; preds = %while.body.i.i1314.while.cond.i.i1311_crit_edge, %if.then.i.i1304.while.cond.i.i1311_crit_edge
  %pIn.pn.i.i1306 = phi ptr [ %pIn.addr.0.i.i1309, %while.body.i.i1314.while.cond.i.i1311_crit_edge ], [ %add.ptr408, %if.then.i.i1304.while.cond.i.i1311_crit_edge ]
  %pMatch.pn.i.i1307 = phi ptr [ %pMatch.addr.0.i.i1308, %while.body.i.i1314.while.cond.i.i1311_crit_edge ], [ %add.ptr409, %if.then.i.i1304.while.cond.i.i1311_crit_edge ]
  %pMatch.addr.0.i.i1308 = getelementptr i8, ptr %pMatch.pn.i.i1307, i32 4
  %pIn.addr.0.i.i1309 = getelementptr i8, ptr %pIn.pn.i.i1306, i32 4
  %cmp6.i.i1310 = icmp ult ptr %pIn.addr.0.i.i1309, %add.ptr.i.i1300
  br i1 %cmp6.i.i1310, label %while.body.i.i1314, label %while.cond.i.i1311.if.end20.i.i1324_crit_edge

while.cond.i.i1311.if.end20.i.i1324_crit_edge:    ; preds = %while.cond.i.i1311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i1324

while.body.i.i1314:                               ; preds = %while.cond.i.i1311
  %362 = ptrtoint ptr %pMatch.addr.0.i.i1308 to i32
  call void @__asan_loadN_noabort(i32 %362, i32 4)
  %363 = load i32, ptr %pMatch.addr.0.i.i1308, align 1
  %364 = ptrtoint ptr %pIn.addr.0.i.i1309 to i32
  call void @__asan_loadN_noabort(i32 %364, i32 4)
  %365 = load i32, ptr %pIn.addr.0.i.i1309, align 1
  %xor10.i.i1312 = xor i32 %365, %363
  %tobool11.not.i.i1313 = icmp eq i32 %xor10.i.i1312, 0
  br i1 %tobool11.not.i.i1313, label %while.body.i.i1314.while.cond.i.i1311_crit_edge, label %cleanup18.thread.i.i1319

while.body.i.i1314.while.cond.i.i1311_crit_edge:  ; preds = %while.body.i.i1314
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i1311

cleanup18.thread.i.i1319:                         ; preds = %while.body.i.i1314
  call void @__sanitizer_cov_trace_pc() #10
  %366 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i1312, i1 true) #8, !range !23
  %367 = lshr i32 %366, 3
  %add.ptr17.i.i1315 = getelementptr i8, ptr %pIn.addr.0.i.i1309, i32 %367
  %sub.ptr.lhs.cast.i.i1316 = ptrtoint ptr %add.ptr17.i.i1315 to i32
  %sub.ptr.rhs.cast.i.i1317 = ptrtoint ptr %add.ptr408 to i32
  %sub.ptr.sub.i.i1318 = sub i32 %sub.ptr.lhs.cast.i.i1316, %sub.ptr.rhs.cast.i.i1317
  br label %ZSTD_count.exit.i1346

if.end20.i.i1324:                                 ; preds = %while.cond.i.i1311.if.end20.i.i1324_crit_edge, %for.body394.if.end20.i.i1324_crit_edge
  %pIn.addr.2.i.i1320 = phi ptr [ %add.ptr408, %for.body394.if.end20.i.i1324_crit_edge ], [ %pIn.addr.0.i.i1309, %while.cond.i.i1311.if.end20.i.i1324_crit_edge ]
  %pMatch.addr.2.i.i1321 = phi ptr [ %add.ptr409, %for.body394.if.end20.i.i1324_crit_edge ], [ %pMatch.addr.0.i.i1308, %while.cond.i.i1311.if.end20.i.i1324_crit_edge ]
  %add.ptr33.i.i1322 = getelementptr i8, ptr %add.ptr.iEnd.i1299, i32 -1
  %cmp34.i.i1323 = icmp ult ptr %pIn.addr.2.i.i1320, %add.ptr33.i.i1322
  br i1 %cmp34.i.i1323, label %land.lhs.true35.i.i1326, label %if.end20.i.i1324.if.end44.i.i1333_crit_edge

if.end20.i.i1324.if.end44.i.i1333_crit_edge:      ; preds = %if.end20.i.i1324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i1333

land.lhs.true35.i.i1326:                          ; preds = %if.end20.i.i1324
  %368 = ptrtoint ptr %pMatch.addr.2.i.i1321 to i32
  call void @__asan_loadN_noabort(i32 %368, i32 2)
  %369 = load i16, ptr %pMatch.addr.2.i.i1321, align 1
  %370 = ptrtoint ptr %pIn.addr.2.i.i1320 to i32
  call void @__asan_loadN_noabort(i32 %370, i32 2)
  %371 = load i16, ptr %pIn.addr.2.i.i1320, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %369, i16 %371)
  %cmp39.i.i1325 = icmp eq i16 %369, %371
  br i1 %cmp39.i.i1325, label %if.then41.i.i1329, label %land.lhs.true35.i.i1326.if.end44.i.i1333_crit_edge

land.lhs.true35.i.i1326.if.end44.i.i1333_crit_edge: ; preds = %land.lhs.true35.i.i1326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i1333

if.then41.i.i1329:                                ; preds = %land.lhs.true35.i.i1326
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i1327 = getelementptr i8, ptr %pIn.addr.2.i.i1320, i32 2
  %add.ptr43.i.i1328 = getelementptr i8, ptr %pMatch.addr.2.i.i1321, i32 2
  br label %if.end44.i.i1333

if.end44.i.i1333:                                 ; preds = %if.then41.i.i1329, %land.lhs.true35.i.i1326.if.end44.i.i1333_crit_edge, %if.end20.i.i1324.if.end44.i.i1333_crit_edge
  %pIn.addr.4.i.i1330 = phi ptr [ %add.ptr42.i.i1327, %if.then41.i.i1329 ], [ %pIn.addr.2.i.i1320, %land.lhs.true35.i.i1326.if.end44.i.i1333_crit_edge ], [ %pIn.addr.2.i.i1320, %if.end20.i.i1324.if.end44.i.i1333_crit_edge ]
  %pMatch.addr.4.i.i1331 = phi ptr [ %add.ptr43.i.i1328, %if.then41.i.i1329 ], [ %pMatch.addr.2.i.i1321, %land.lhs.true35.i.i1326.if.end44.i.i1333_crit_edge ], [ %pMatch.addr.2.i.i1321, %if.end20.i.i1324.if.end44.i.i1333_crit_edge ]
  %cmp45.i.i1332 = icmp ult ptr %pIn.addr.4.i.i1330, %add.ptr.iEnd.i1299
  br i1 %cmp45.i.i1332, label %land.lhs.true47.i.i1337, label %if.end44.i.i1333.if.end53.i.i1342_crit_edge

if.end44.i.i1333.if.end53.i.i1342_crit_edge:      ; preds = %if.end44.i.i1333
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i1342

land.lhs.true47.i.i1337:                          ; preds = %if.end44.i.i1333
  call void @__sanitizer_cov_trace_pc() #10
  %372 = ptrtoint ptr %pMatch.addr.4.i.i1331 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %pMatch.addr.4.i.i1331, align 1
  %374 = ptrtoint ptr %pIn.addr.4.i.i1330 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %pIn.addr.4.i.i1330, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %373, i8 %375)
  %cmp50.i.i1334 = icmp eq i8 %373, %375
  %spec.select.idx.i.i1335 = zext i1 %cmp50.i.i1334 to i32
  %spec.select.i.i1336 = getelementptr i8, ptr %pIn.addr.4.i.i1330, i32 %spec.select.idx.i.i1335
  br label %if.end53.i.i1342

if.end53.i.i1342:                                 ; preds = %land.lhs.true47.i.i1337, %if.end44.i.i1333.if.end53.i.i1342_crit_edge
  %pIn.addr.5.i.i1338 = phi ptr [ %pIn.addr.4.i.i1330, %if.end44.i.i1333.if.end53.i.i1342_crit_edge ], [ %spec.select.i.i1336, %land.lhs.true47.i.i1337 ]
  %sub.ptr.lhs.cast54.i.i1339 = ptrtoint ptr %pIn.addr.5.i.i1338 to i32
  %sub.ptr.rhs.cast55.i.i1340 = ptrtoint ptr %add.ptr408 to i32
  %sub.ptr.sub56.i.i1341 = sub i32 %sub.ptr.lhs.cast54.i.i1339, %sub.ptr.rhs.cast55.i.i1340
  br label %ZSTD_count.exit.i1346

ZSTD_count.exit.i1346:                            ; preds = %if.end53.i.i1342, %cleanup18.thread.i.i1319, %cleanup.i.i1305
  %retval.3.i.i1343 = phi i32 [ %sub.ptr.sub56.i.i1341, %if.end53.i.i1342 ], [ %361, %cleanup.i.i1305 ], [ %sub.ptr.sub.i.i1318, %cleanup18.thread.i.i1319 ]
  %add.ptr5.i1344 = getelementptr i8, ptr %add.ptr409, i32 %retval.3.i.i1343
  %cmp6.not.i1345 = icmp eq ptr %add.ptr5.i1344, %cond55142814491481
  br i1 %cmp6.not.i1345, label %if.end.i1350, label %ZSTD_count.exit.i1346.ZSTD_count_2segments.exit1397_crit_edge

ZSTD_count.exit.i1346.ZSTD_count_2segments.exit1397_crit_edge: ; preds = %ZSTD_count.exit.i1346
  call void @__sanitizer_cov_trace_pc() #10
  br label %ZSTD_count_2segments.exit1397

if.end.i1350:                                     ; preds = %ZSTD_count.exit.i1346
  %add.ptr7.i1347 = getelementptr i8, ptr %add.ptr408, i32 %retval.3.i.i1343
  %cmp.i24.i1349 = icmp ugt ptr %add.ptr.i1115, %add.ptr7.i1347
  br i1 %cmp.i24.i1349, label %if.then.i27.i1353, label %if.end.i1350.if.end20.i47.i1373_crit_edge

if.end.i1350.if.end20.i47.i1373_crit_edge:        ; preds = %if.end.i1350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i1373

if.then.i27.i1353:                                ; preds = %if.end.i1350
  %376 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %376, i32 4)
  %377 = load i32, ptr %add.ptr13, align 1
  %378 = ptrtoint ptr %add.ptr7.i1347 to i32
  call void @__asan_loadN_noabort(i32 %378, i32 4)
  %379 = load i32, ptr %add.ptr7.i1347, align 1
  %xor.i25.i1351 = xor i32 %379, %377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i1351)
  %tobool.not.i26.i1352 = icmp eq i32 %xor.i25.i1351, 0
  br i1 %tobool.not.i26.i1352, label %if.then.i27.i1353.while.cond.i34.i1360_crit_edge, label %cleanup.i28.i1354

if.then.i27.i1353.while.cond.i34.i1360_crit_edge: ; preds = %if.then.i27.i1353
  br label %while.cond.i34.i1360

cleanup.i28.i1354:                                ; preds = %if.then.i27.i1353
  call void @__sanitizer_cov_trace_pc() #10
  %380 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i1351, i1 true) #8, !range !23
  %381 = lshr i32 %380, 3
  br label %ZSTD_count.exit67.i1394

while.cond.i34.i1360:                             ; preds = %while.body.i37.i1363.while.cond.i34.i1360_crit_edge, %if.then.i27.i1353.while.cond.i34.i1360_crit_edge
  %pIn.pn.i29.i1355 = phi ptr [ %pIn.addr.0.i32.i1358, %while.body.i37.i1363.while.cond.i34.i1360_crit_edge ], [ %add.ptr7.i1347, %if.then.i27.i1353.while.cond.i34.i1360_crit_edge ]
  %pMatch.pn.i30.i1356 = phi ptr [ %pMatch.addr.0.i31.i1357, %while.body.i37.i1363.while.cond.i34.i1360_crit_edge ], [ %add.ptr13, %if.then.i27.i1353.while.cond.i34.i1360_crit_edge ]
  %pMatch.addr.0.i31.i1357 = getelementptr i8, ptr %pMatch.pn.i30.i1356, i32 4
  %pIn.addr.0.i32.i1358 = getelementptr i8, ptr %pIn.pn.i29.i1355, i32 4
  %cmp6.i33.i1359 = icmp ult ptr %pIn.addr.0.i32.i1358, %add.ptr.i1115
  br i1 %cmp6.i33.i1359, label %while.body.i37.i1363, label %while.cond.i34.i1360.if.end20.i47.i1373_crit_edge

while.cond.i34.i1360.if.end20.i47.i1373_crit_edge: ; preds = %while.cond.i34.i1360
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i47.i1373

while.body.i37.i1363:                             ; preds = %while.cond.i34.i1360
  %382 = ptrtoint ptr %pMatch.addr.0.i31.i1357 to i32
  call void @__asan_loadN_noabort(i32 %382, i32 4)
  %383 = load i32, ptr %pMatch.addr.0.i31.i1357, align 1
  %384 = ptrtoint ptr %pIn.addr.0.i32.i1358 to i32
  call void @__asan_loadN_noabort(i32 %384, i32 4)
  %385 = load i32, ptr %pIn.addr.0.i32.i1358, align 1
  %xor10.i35.i1361 = xor i32 %385, %383
  %tobool11.not.i36.i1362 = icmp eq i32 %xor10.i35.i1361, 0
  br i1 %tobool11.not.i36.i1362, label %while.body.i37.i1363.while.cond.i34.i1360_crit_edge, label %cleanup18.thread.i42.i1368

while.body.i37.i1363.while.cond.i34.i1360_crit_edge: ; preds = %while.body.i37.i1363
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i34.i1360

cleanup18.thread.i42.i1368:                       ; preds = %while.body.i37.i1363
  call void @__sanitizer_cov_trace_pc() #10
  %386 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i1361, i1 true) #8, !range !23
  %387 = lshr i32 %386, 3
  %add.ptr17.i38.i1364 = getelementptr i8, ptr %pIn.addr.0.i32.i1358, i32 %387
  %sub.ptr.lhs.cast.i39.i1365 = ptrtoint ptr %add.ptr17.i38.i1364 to i32
  %sub.ptr.rhs.cast.i40.i1366 = ptrtoint ptr %add.ptr7.i1347 to i32
  %sub.ptr.sub.i41.i1367 = sub i32 %sub.ptr.lhs.cast.i39.i1365, %sub.ptr.rhs.cast.i40.i1366
  br label %ZSTD_count.exit67.i1394

if.end20.i47.i1373:                               ; preds = %while.cond.i34.i1360.if.end20.i47.i1373_crit_edge, %if.end.i1350.if.end20.i47.i1373_crit_edge
  %pIn.addr.2.i43.i1369 = phi ptr [ %add.ptr7.i1347, %if.end.i1350.if.end20.i47.i1373_crit_edge ], [ %pIn.addr.0.i32.i1358, %while.cond.i34.i1360.if.end20.i47.i1373_crit_edge ]
  %pMatch.addr.2.i44.i1370 = phi ptr [ %add.ptr13, %if.end.i1350.if.end20.i47.i1373_crit_edge ], [ %pMatch.addr.0.i31.i1357, %while.cond.i34.i1360.if.end20.i47.i1373_crit_edge ]
  %cmp34.i46.i1372 = icmp ult ptr %pIn.addr.2.i43.i1369, %add.ptr33.i1137
  br i1 %cmp34.i46.i1372, label %land.lhs.true35.i49.i1375, label %if.end20.i47.i1373.if.end44.i56.i1382_crit_edge

if.end20.i47.i1373.if.end44.i56.i1382_crit_edge:  ; preds = %if.end20.i47.i1373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i1382

land.lhs.true35.i49.i1375:                        ; preds = %if.end20.i47.i1373
  %388 = ptrtoint ptr %pMatch.addr.2.i44.i1370 to i32
  call void @__asan_loadN_noabort(i32 %388, i32 2)
  %389 = load i16, ptr %pMatch.addr.2.i44.i1370, align 1
  %390 = ptrtoint ptr %pIn.addr.2.i43.i1369 to i32
  call void @__asan_loadN_noabort(i32 %390, i32 2)
  %391 = load i16, ptr %pIn.addr.2.i43.i1369, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %389, i16 %391)
  %cmp39.i48.i1374 = icmp eq i16 %389, %391
  br i1 %cmp39.i48.i1374, label %if.then41.i52.i1378, label %land.lhs.true35.i49.i1375.if.end44.i56.i1382_crit_edge

land.lhs.true35.i49.i1375.if.end44.i56.i1382_crit_edge: ; preds = %land.lhs.true35.i49.i1375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i56.i1382

if.then41.i52.i1378:                              ; preds = %land.lhs.true35.i49.i1375
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i50.i1376 = getelementptr i8, ptr %pIn.addr.2.i43.i1369, i32 2
  %add.ptr43.i51.i1377 = getelementptr i8, ptr %pMatch.addr.2.i44.i1370, i32 2
  br label %if.end44.i56.i1382

if.end44.i56.i1382:                               ; preds = %if.then41.i52.i1378, %land.lhs.true35.i49.i1375.if.end44.i56.i1382_crit_edge, %if.end20.i47.i1373.if.end44.i56.i1382_crit_edge
  %pIn.addr.4.i53.i1379 = phi ptr [ %add.ptr42.i50.i1376, %if.then41.i52.i1378 ], [ %pIn.addr.2.i43.i1369, %land.lhs.true35.i49.i1375.if.end44.i56.i1382_crit_edge ], [ %pIn.addr.2.i43.i1369, %if.end20.i47.i1373.if.end44.i56.i1382_crit_edge ]
  %pMatch.addr.4.i54.i1380 = phi ptr [ %add.ptr43.i51.i1377, %if.then41.i52.i1378 ], [ %pMatch.addr.2.i44.i1370, %land.lhs.true35.i49.i1375.if.end44.i56.i1382_crit_edge ], [ %pMatch.addr.2.i44.i1370, %if.end20.i47.i1373.if.end44.i56.i1382_crit_edge ]
  %cmp45.i55.i1381 = icmp ult ptr %pIn.addr.4.i53.i1379, %iLimit
  br i1 %cmp45.i55.i1381, label %land.lhs.true47.i60.i1386, label %if.end44.i56.i1382.if.end53.i65.i1391_crit_edge

if.end44.i56.i1382.if.end53.i65.i1391_crit_edge:  ; preds = %if.end44.i56.i1382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i65.i1391

land.lhs.true47.i60.i1386:                        ; preds = %if.end44.i56.i1382
  call void @__sanitizer_cov_trace_pc() #10
  %392 = ptrtoint ptr %pMatch.addr.4.i54.i1380 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %pMatch.addr.4.i54.i1380, align 1
  %394 = ptrtoint ptr %pIn.addr.4.i53.i1379 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %pIn.addr.4.i53.i1379, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %393, i8 %395)
  %cmp50.i57.i1383 = icmp eq i8 %393, %395
  %spec.select.idx.i58.i1384 = zext i1 %cmp50.i57.i1383 to i32
  %spec.select.i59.i1385 = getelementptr i8, ptr %pIn.addr.4.i53.i1379, i32 %spec.select.idx.i58.i1384
  br label %if.end53.i65.i1391

if.end53.i65.i1391:                               ; preds = %land.lhs.true47.i60.i1386, %if.end44.i56.i1382.if.end53.i65.i1391_crit_edge
  %pIn.addr.5.i61.i1387 = phi ptr [ %pIn.addr.4.i53.i1379, %if.end44.i56.i1382.if.end53.i65.i1391_crit_edge ], [ %spec.select.i59.i1385, %land.lhs.true47.i60.i1386 ]
  %sub.ptr.lhs.cast54.i62.i1388 = ptrtoint ptr %pIn.addr.5.i61.i1387 to i32
  %sub.ptr.rhs.cast55.i63.i1389 = ptrtoint ptr %add.ptr7.i1347 to i32
  %sub.ptr.sub56.i64.i1390 = sub i32 %sub.ptr.lhs.cast54.i62.i1388, %sub.ptr.rhs.cast55.i63.i1389
  br label %ZSTD_count.exit67.i1394

ZSTD_count.exit67.i1394:                          ; preds = %if.end53.i65.i1391, %cleanup18.thread.i42.i1368, %cleanup.i28.i1354
  %retval.3.i66.i1392 = phi i32 [ %sub.ptr.sub56.i64.i1390, %if.end53.i65.i1391 ], [ %381, %cleanup.i28.i1354 ], [ %sub.ptr.sub.i41.i1367, %cleanup18.thread.i42.i1368 ]
  %add.i1393 = add i32 %retval.3.i66.i1392, %retval.3.i.i1343
  br label %ZSTD_count_2segments.exit1397

ZSTD_count_2segments.exit1397:                    ; preds = %ZSTD_count.exit67.i1394, %ZSTD_count.exit.i1346.ZSTD_count_2segments.exit1397_crit_edge
  %retval.0.i1395 = phi i32 [ %add.i1393, %ZSTD_count.exit67.i1394 ], [ %retval.3.i.i1343, %ZSTD_count.exit.i1346.ZSTD_count_2segments.exit1397_crit_edge ]
  %add411 = add i32 %retval.0.i1395, %355
  %add412 = add i32 %add411, %dictMatchIndex.01621
  call void @__sanitizer_cov_trace_cmp4(i32 %add412, i32 %cond63143414451485)
  %cmp413.not = icmp ult i32 %add412, %cond63143414451485
  %add.ptr417 = getelementptr i8, ptr %add.ptr416, i32 %dictMatchIndex.01621
  %match406.0 = select i1 %cmp413.not, ptr %add.ptr407, ptr %add.ptr417
  call void @__sanitizer_cov_trace_cmp4(i32 %add411, i32 %bestLength.131620)
  %cmp419 = icmp ugt i32 %add411, %bestLength.131620
  br i1 %cmp419, label %if.then421, label %ZSTD_count_2segments.exit1397.if.end445_crit_edge

ZSTD_count_2segments.exit1397.if.end445_crit_edge: ; preds = %ZSTD_count_2segments.exit1397
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end445

if.then421:                                       ; preds = %ZSTD_count_2segments.exit1397
  %add422 = add i32 %dictMatchIndex.01621, %spec.select82014601472
  %sub423 = sub i32 %matchEndIdx.51617, %add422
  call void @__sanitizer_cov_trace_cmp4(i32 %add411, i32 %sub423)
  %cmp424 = icmp ugt i32 %add411, %sub423
  %add427 = add i32 %add411, %add422
  %spec.select830 = select i1 %cmp424, i32 %add427, i32 %matchEndIdx.51617
  %add430 = sub i32 %sub331, %add422
  %arrayidx431 = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %mnum.131618
  %396 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %add430, ptr %arrayidx431, align 4
  %len434 = getelementptr %struct.ZSTD_match_t, ptr %matches, i32 %mnum.131618, i32 1
  %397 = ptrtoint ptr %len434 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %add411, ptr %len434, align 4
  %inc435 = add i32 %mnum.131618, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add411)
  %cmp436 = icmp ugt i32 %add411, 4096
  %add.ptr438 = getelementptr i8, ptr %ip, i32 %add411
  %cmp439 = icmp eq ptr %add.ptr438, %iLimit
  %or441810 = or i1 %cmp436, %cmp439
  br i1 %or441810, label %if.then421.if.end469_crit_edge, label %if.then421.if.end445_crit_edge

if.then421.if.end445_crit_edge:                   ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end445

if.then421.if.end469_crit_edge:                   ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

if.end445:                                        ; preds = %if.then421.if.end445_crit_edge, %ZSTD_count_2segments.exit1397.if.end445_crit_edge
  %matchEndIdx.7 = phi i32 [ %spec.select830, %if.then421.if.end445_crit_edge ], [ %matchEndIdx.51617, %ZSTD_count_2segments.exit1397.if.end445_crit_edge ]
  %mnum.14 = phi i32 [ %inc435, %if.then421.if.end445_crit_edge ], [ %mnum.131618, %ZSTD_count_2segments.exit1397.if.end445_crit_edge ]
  %bestLength.14 = phi i32 [ %add411, %if.then421.if.end445_crit_edge ], [ %bestLength.131620, %ZSTD_count_2segments.exit1397.if.end445_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dictMatchIndex.01621, i32 %cond103)
  %cmp446.not = icmp ugt i32 %dictMatchIndex.01621, %cond103
  br i1 %cmp446.not, label %for.inc466, label %if.end445.if.end469_crit_edge

if.end445.if.end469_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

for.inc466:                                       ; preds = %if.end445
  %arrayidx450 = getelementptr i8, ptr %match406.0, i32 %add411
  %398 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx450, align 1
  %arrayidx452 = getelementptr i8, ptr %ip, i32 %add411
  %400 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx452, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %399, i8 %401)
  %cmp454 = icmp ult i8 %399, %401
  %commonLengthSmaller.4 = select i1 %cmp454, i32 %add411, i32 %commonLengthSmaller.31615
  %commonLengthLarger.4 = select i1 %cmp454, i32 %commonLengthLarger.31616, i32 %add411
  %dictMatchIndex.1.in.idx = zext i1 %cmp454 to i32
  %dictMatchIndex.1.in = getelementptr i32, ptr %add.ptr398, i32 %dictMatchIndex.1.in.idx
  %dec467 = add i32 %nbCompares.41619, -1
  %402 = ptrtoint ptr %dictMatchIndex.1.in to i32
  call void @__asan_load4_noabort(i32 %402)
  %dictMatchIndex.0 = load i32, ptr %dictMatchIndex.1.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec467)
  %tobool389.not = icmp ne i32 %dec467, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %dictMatchIndex.0, i32 %cond6914571474)
  %cmp391 = icmp ugt i32 %dictMatchIndex.0, %cond6914571474
  %or.cond829 = select i1 %tobool389.not, i1 %cmp391, i1 false
  br i1 %or.cond829, label %for.inc466.for.body394_crit_edge, label %for.inc466.if.end469_crit_edge

for.inc466.if.end469_crit_edge:                   ; preds = %for.inc466
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

for.inc466.for.body394_crit_edge:                 ; preds = %for.inc466
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body394

if.end469:                                        ; preds = %for.inc466.if.end469_crit_edge, %if.end445.if.end469_crit_edge, %if.then421.if.end469_crit_edge, %ZSTD_hashPtr.exit1293.if.end469_crit_edge, %for.end378.if.end469_crit_edge, %for.end378.thread
  %matchEndIdx.10 = phi i32 [ %matchEndIdx.4, %for.end378.if.end469_crit_edge ], [ %matchEndIdx.2, %for.end378.thread ], [ %matchEndIdx.4, %ZSTD_hashPtr.exit1293.if.end469_crit_edge ], [ %matchEndIdx.7, %for.inc466.if.end469_crit_edge ], [ %spec.select830, %if.then421.if.end469_crit_edge ], [ %matchEndIdx.7, %if.end445.if.end469_crit_edge ]
  %mnum.17 = phi i32 [ %mnum.12, %for.end378.if.end469_crit_edge ], [ %mnum.10, %for.end378.thread ], [ %mnum.12, %ZSTD_hashPtr.exit1293.if.end469_crit_edge ], [ %mnum.14, %for.inc466.if.end469_crit_edge ], [ %inc435, %if.then421.if.end469_crit_edge ], [ %mnum.14, %if.end445.if.end469_crit_edge ]
  %sub470 = add i32 %matchEndIdx.10, -8
  br label %cleanup472.sink.split

cleanup472.sink.split:                            ; preds = %if.end469, %cleanup270
  %add263.sink = phi i32 [ %add263, %cleanup270 ], [ %sub470, %if.end469 ]
  %retval.6.ph = phi i32 [ 1, %cleanup270 ], [ %mnum.17, %if.end469 ]
  %nextToUpdate = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 2
  %403 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %add263.sink, ptr %nextToUpdate, align 4
  br label %cleanup472

cleanup472:                                       ; preds = %cleanup472.sink.split, %if.then196.cleanup472_crit_edge
  %retval.6 = phi i32 [ %retval.6.ph, %cleanup472.sink.split ], [ %inc, %if.then196.cleanup472_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy32)
  ret i32 %retval.6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_resetSeqStore(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"kNullRawSeqStore", i1 false, i1 false}
!1 = !{!"../lib/zstd/compress/zstd_compress_internal.h", i32 98, i32 40}
!2 = !{ptr @ZSTD_LLcode.LL_Code, !3, !"LL_Code", i1 false, i1 false}
!3 = !{!"../lib/zstd/compress/zstd_compress_internal.h", i32 366, i32 23}
!4 = distinct !{null, !5, !"LL_deltaCode", i1 false, i1 false}
!5 = !{!"../lib/zstd/compress/zstd_compress_internal.h", i32 374, i32 22}
!6 = !{ptr @LL_bits, !7, !"LL_bits", i1 false, i1 false}
!7 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 185, i32 30}
!8 = !{ptr @ZSTD_MLcode.ML_Code, !9, !"ML_Code", i1 false, i1 false}
!9 = !{!"../lib/zstd/compress/zstd_compress_internal.h", i32 383, i32 23}
!10 = distinct !{null, !11, !"ML_deltaCode", i1 false, i1 false}
!11 = !{!"../lib/zstd/compress/zstd_compress_internal.h", i32 391, i32 22}
!12 = !{ptr @ML_bits, !13, !"ML_bits", i1 false, i1 false}
!13 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 202, i32 30}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i32 0, i32 33}
!24 = !{!25}
!25 = distinct !{!25, !26, !"ZSTD_updateRep: %agg.result"}
!26 = distinct !{!26, !"ZSTD_updateRep"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"ZSTD_updateRep: %agg.result"}
!29 = distinct !{!29, !"ZSTD_updateRep"}
