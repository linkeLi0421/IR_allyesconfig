; ModuleID = '/llk/IR_all_yes/lib/lz4/lz4hc_compress.c_pt.bc'
source_filename = "../lib/lz4/lz4hc_compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+LZ4_compress_HC\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_compress_HC\09\09\09\09"
module asm "\09.long\09__crc_LZ4_compress_HC\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_compress_HC:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_compress_HC\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_compress_HC:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_loadDictHC\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_loadDictHC\09\09\09\09"
module asm "\09.long\09__crc_LZ4_loadDictHC\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_loadDictHC:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_loadDictHC\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_loadDictHC:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_compress_HC_continue\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_compress_HC_continue\09\09\09\09"
module asm "\09.long\09__crc_LZ4_compress_HC_continue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_compress_HC_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_compress_HC_continue\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_compress_HC_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_saveDictHC\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_saveDictHC\09\09\09\09"
module asm "\09.long\09__crc_LZ4_saveDictHC\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_saveDictHC:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_saveDictHC\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_saveDictHC:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.LZ4HC_CCtx_internal = type { [32768 x i32], [65536 x i16], ptr, ptr, ptr, i32, i32, i32, i32 }

@__kstrtab_LZ4_compress_HC = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_compress_HC = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_compress_HC = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_compress_HC to i32), ptr @__kstrtab_LZ4_compress_HC, ptr @__kstrtabns_LZ4_compress_HC }, section "___ksymtab+LZ4_compress_HC", align 4
@__kstrtab_LZ4_loadDictHC = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_loadDictHC = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_loadDictHC = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_loadDictHC to i32), ptr @__kstrtab_LZ4_loadDictHC, ptr @__kstrtabns_LZ4_loadDictHC }, section "___ksymtab+LZ4_loadDictHC", align 4
@__kstrtab_LZ4_compress_HC_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_compress_HC_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_compress_HC_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_compress_HC_continue to i32), ptr @__kstrtab_LZ4_compress_HC_continue, ptr @__kstrtabns_LZ4_compress_HC_continue }, section "___ksymtab+LZ4_compress_HC_continue", align 4
@__kstrtab_LZ4_saveDictHC = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_saveDictHC = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_saveDictHC = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_saveDictHC to i32), ptr @__kstrtab_LZ4_saveDictHC, ptr @__kstrtabns_LZ4_saveDictHC }, section "___ksymtab+LZ4_saveDictHC", align 4
@__UNIQUE_ID_file106 = internal constant [43 x i8] c"lz4hc_compress.file=lib/lz4/lz4hc_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [36 x i8] c"lz4hc_compress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [45 x i8] c"lz4hc_compress.description=LZ4 HC compressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_LZ4_compress_HC, ptr @__ksymtab_LZ4_compress_HC_continue, ptr @__ksymtab_LZ4_loadDictHC, ptr @__ksymtab_LZ4_saveDictHC], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_compress_HC(ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %maxDstSize, i32 noundef %compressionLevel, ptr noundef %wrkmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrkmem to i32
  %and.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.LZ4_compress_HC_extStateHC.exit_crit_edge

entry.LZ4_compress_HC_extStateHC.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_compress_HC_extStateHC.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = call ptr @memset(ptr %wrkmem, i32 0, i32 131072)
  %chainTable.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 1
  %2 = call ptr @memset(ptr %chainTable.i.i, i32 255, i32 131072)
  %nextToUpdate.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 7
  %3 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %nextToUpdate.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %src, i32 -65536
  %base.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 3
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i.i, ptr %base.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 2
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %src, ptr %end.i.i, align 4
  %dictBase.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 4
  %6 = ptrtoint ptr %dictBase.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %dictBase.i.i, align 4
  %dictLimit.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 5
  %7 = ptrtoint ptr %dictLimit.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %dictLimit.i.i, align 4
  %lowLimit.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %wrkmem, i32 0, i32 6
  %8 = ptrtoint ptr %lowLimit.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %lowLimit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %srcSize)
  %cmp.i.i = icmp ugt i32 %srcSize, 2113929216
  %div.i.i = udiv i32 %srcSize, 255
  %add.i.i = add i32 %srcSize, 16
  %add1.i.i = add i32 %add.i.i, %div.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 %add1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %maxDstSize)
  %cmp1.i = icmp sgt i32 %cond.i.i, %maxDstSize
  %..i = zext i1 %cmp1.i to i32
  %call4.i = tail call fastcc i32 @LZ4HC_compress_generic(ptr noundef %wrkmem, ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %maxDstSize, i32 noundef %compressionLevel, i32 noundef %..i) #4
  br label %LZ4_compress_HC_extStateHC.exit

LZ4_compress_HC_extStateHC.exit:                  ; preds = %if.end.i, %entry.LZ4_compress_HC_extStateHC.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.LZ4_compress_HC_extStateHC.exit_crit_edge ], [ %call4.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @LZ4_resetStreamHC(ptr nocapture noundef writeonly %LZ4_streamHCPtr, i32 noundef %compressionLevel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %base, align 4
  %compressionLevel1 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 8
  %1 = ptrtoint ptr %compressionLevel1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %compressionLevel, ptr %compressionLevel1, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_loadDictHC(ptr nocapture noundef %LZ4_streamHCPtr, ptr noundef %dictionary, i32 noundef %dictSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %dictSize)
  %cmp = icmp sgt i32 %dictSize, 65536
  %sub = add i32 %dictSize, -65536
  %dictionary.addr.0.idx = select i1 %cmp, i32 %sub, i32 0
  %dictionary.addr.0 = getelementptr i8, ptr %dictionary, i32 %dictionary.addr.0.idx
  %0 = tail call i32 @llvm.smin.i32(i32 %dictSize, i32 65536)
  %1 = call ptr @memset(ptr %LZ4_streamHCPtr, i32 0, i32 131072)
  %chainTable.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 1
  %2 = call ptr @memset(ptr %chainTable.i, i32 255, i32 131072)
  %nextToUpdate.i17 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 7
  %3 = ptrtoint ptr %nextToUpdate.i17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %nextToUpdate.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %dictionary.addr.0, i32 -65536
  %base.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i18, ptr %base.i, align 4
  %end.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 2
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dictionary.addr.0, ptr %end.i, align 4
  %dictBase.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 4
  %6 = ptrtoint ptr %dictBase.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i18, ptr %dictBase.i, align 4
  %dictLimit.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 5
  %7 = ptrtoint ptr %dictLimit.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %dictLimit.i, align 4
  %lowLimit.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 6
  %8 = ptrtoint ptr %lowLimit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %lowLimit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp1 = icmp sgt i32 %0, 3
  br i1 %cmp1, label %while.body.i.preheader, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

while.body.i.preheader:                           ; preds = %entry
  %gepdiff = add nuw nsw i32 %0, 65533
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %idx.025.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 65536, %while.body.i.preheader ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i18, i32 %idx.025.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %add.ptr.val.i = load i32, ptr %add.ptr.i, align 1
  %mul.i.i = mul i32 %add.ptr.val.i, -1640531535
  %shr.i.i = lshr i32 %mul.i.i, 17
  %arrayidx.i = getelementptr i32, ptr %LZ4_streamHCPtr, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %idx.025.i, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 65535) #4
  %conv.i = trunc i32 %12 to i16
  %idxprom.i = and i32 %idx.025.i, 65535
  %arrayidx7.i = getelementptr i16, ptr %chainTable.i, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayidx7.i, align 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %idx.025.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %idx.025.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %gepdiff
  br i1 %exitcond.not, label %LZ4HC_Insert.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

LZ4HC_Insert.exit:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %nextToUpdate.i17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %gepdiff, ptr %nextToUpdate.i17, align 4
  br label %if.end5

if.end5:                                          ; preds = %LZ4HC_Insert.exit, %entry.if.end5_crit_edge
  %add.ptr6 = getelementptr i8, ptr %dictionary.addr.0, i32 %0
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr6, ptr %end.i, align 4
  ret i32 %0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_compress_HC_continue(ptr noundef %LZ4_streamHCPtr, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %inputSize)
  %cmp.i = icmp ugt i32 %inputSize, 2113929216
  %div.i = udiv i32 %inputSize, 255
  %add.i = add i32 %inputSize, 16
  %add1.i = add i32 %add.i, %div.i
  %cond.i = select i1 %cmp.i, i32 0, i32 %add1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %maxOutputSize)
  %cmp = icmp sgt i32 %cond.i, %maxOutputSize
  %. = zext i1 %cmp to i32
  %call2 = tail call fastcc i32 @LZ4_compressHC_continue_generic(ptr noundef %LZ4_streamHCPtr, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %.)
  ret i32 %call2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_compressHC_continue_generic(ptr noundef %LZ4_streamHCPtr, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = call ptr @memset(ptr %LZ4_streamHCPtr, i32 0, i32 131072)
  %chainTable.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 1
  %3 = call ptr @memset(ptr %chainTable.i, i32 255, i32 131072)
  %nextToUpdate.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 7
  %4 = ptrtoint ptr %nextToUpdate.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %nextToUpdate.i, align 4
  %add.ptr.i = getelementptr i8, ptr %source, i32 -65536
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %base, align 4
  %end.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 2
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %source, ptr %end.i, align 4
  %dictBase.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 4
  %7 = ptrtoint ptr %dictBase.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %dictBase.i, align 4
  %dictLimit.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 5
  %8 = ptrtoint ptr %dictLimit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %dictLimit.i, align 4
  %lowLimit.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 6
  %9 = ptrtoint ptr %lowLimit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65536, ptr %lowLimit.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %end = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 2
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub.ptr.sub)
  %cmp2 = icmp ugt i32 %sub.ptr.sub, -2147483648
  br i1 %cmp2, label %if.then3, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %dictLimit = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 5
  %14 = ptrtoint ptr %dictLimit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dictLimit, align 4
  %sub = sub i32 %sub.ptr.sub, %15
  %16 = tail call i32 @llvm.umin.i32(i32 %sub, i32 65536)
  %idx.neg = sub nsw i32 0, %16
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.neg
  %17 = call ptr @memset(ptr %LZ4_streamHCPtr, i32 0, i32 131072)
  %chainTable.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 1
  %18 = call ptr @memset(ptr %chainTable.i.i, i32 255, i32 131072)
  %nextToUpdate.i17.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 7
  %19 = ptrtoint ptr %nextToUpdate.i17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %nextToUpdate.i17.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %add.ptr, i32 -65536
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i18.i, ptr %base, align 4
  %21 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %end, align 4
  %dictBase.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 4
  %22 = ptrtoint ptr %dictBase.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i18.i, ptr %dictBase.i.i, align 4
  %23 = ptrtoint ptr %dictLimit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %dictLimit, align 4
  %lowLimit.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 6
  %24 = ptrtoint ptr %lowLimit.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %lowLimit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp1.i = icmp ugt i32 %16, 3
  br i1 %cmp1.i, label %while.body.i.preheader.i, label %if.then3.LZ4_loadDictHC.exit_crit_edge

if.then3.LZ4_loadDictHC.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_loadDictHC.exit

while.body.i.preheader.i:                         ; preds = %if.then3
  %gepdiff.i = add nuw nsw i32 %16, 65533
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %idx.025.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 65536, %while.body.i.preheader.i ]
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i18.i, i32 %idx.025.i.i
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %add.ptr.val.i.i = load i32, ptr %add.ptr.i.i, align 1
  %mul.i.i.i = mul i32 %add.ptr.val.i.i, -1640531535
  %shr.i.i.i = lshr i32 %mul.i.i.i, 17
  %arrayidx.i.i = getelementptr i32, ptr %LZ4_streamHCPtr, i32 %shr.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %idx.025.i.i, %27
  %28 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 65535) #4
  %conv.i.i = trunc i32 %28 to i16
  %idxprom.i.i = and i32 %idx.025.i.i, 65535
  %arrayidx7.i.i = getelementptr i16, ptr %chainTable.i.i, i32 %idxprom.i.i
  %29 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i, ptr %arrayidx7.i.i, align 2
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %idx.025.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %idx.025.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i.i, %gepdiff.i
  br i1 %exitcond.not.i, label %LZ4HC_Insert.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

LZ4HC_Insert.exit.i:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %nextToUpdate.i17.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %gepdiff.i, ptr %nextToUpdate.i17.i, align 4
  br label %LZ4_loadDictHC.exit

LZ4_loadDictHC.exit:                              ; preds = %LZ4HC_Insert.exit.i, %if.then3.LZ4_loadDictHC.exit_crit_edge
  %32 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %11, ptr %end, align 4
  br label %if.end13

if.end13:                                         ; preds = %LZ4_loadDictHC.exit, %if.end.if.end13_crit_edge
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end, align 4
  %cmp15.not = icmp eq ptr %34, %source
  br i1 %cmp15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i80 = getelementptr i8, ptr %36, i32 4
  %cmp.not.i = icmp ult ptr %34, %add.ptr.i80
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i = ptrtoint ptr %36 to i32
  br label %LZ4HC_setExternalDict.exit

if.then.i:                                        ; preds = %if.then16
  %add.ptr2.i = getelementptr i8, ptr %34, i32 -3
  %chainTable1.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %nextToUpdate.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 7
  %37 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nextToUpdate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub.ptr.sub.i.i)
  %cmp24.i.i = icmp ult i32 %38, %sub.ptr.sub.i.i
  br i1 %cmp24.i.i, label %if.then.i.while.body.i.i92_crit_edge, label %if.then.i.LZ4HC_setExternalDict.exit_crit_edge

if.then.i.LZ4HC_setExternalDict.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_setExternalDict.exit

if.then.i.while.body.i.i92_crit_edge:             ; preds = %if.then.i
  br label %while.body.i.i92

while.body.i.i92:                                 ; preds = %while.body.i.i92.while.body.i.i92_crit_edge, %if.then.i.while.body.i.i92_crit_edge
  %idx.025.i.i81 = phi i32 [ %inc.i.i91, %while.body.i.i92.while.body.i.i92_crit_edge ], [ %38, %if.then.i.while.body.i.i92_crit_edge ]
  %add.ptr.i.i82 = getelementptr i8, ptr %36, i32 %idx.025.i.i81
  %39 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %add.ptr.val.i.i83 = load i32, ptr %add.ptr.i.i82, align 1
  %mul.i.i.i84 = mul i32 %add.ptr.val.i.i83, -1640531535
  %shr.i.i.i85 = lshr i32 %mul.i.i.i84, 17
  %arrayidx.i.i86 = getelementptr i32, ptr %LZ4_streamHCPtr, i32 %shr.i.i.i85
  %40 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i86, align 4
  %sub.i.i87 = sub i32 %idx.025.i.i81, %41
  %42 = tail call i32 @llvm.umin.i32(i32 %sub.i.i87, i32 65535) #4
  %conv.i.i88 = trunc i32 %42 to i16
  %idxprom.i.i89 = and i32 %idx.025.i.i81, 65535
  %arrayidx7.i.i90 = getelementptr i16, ptr %chainTable1.i.i, i32 %idxprom.i.i89
  %43 = ptrtoint ptr %arrayidx7.i.i90 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i.i88, ptr %arrayidx7.i.i90, align 2
  %44 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %idx.025.i.i81, ptr %arrayidx.i.i86, align 4
  %inc.i.i91 = add nuw i32 %idx.025.i.i81, 1
  %cmp.i.i = icmp ult i32 %inc.i.i91, %sub.ptr.sub.i.i
  br i1 %cmp.i.i, label %while.body.i.i92.while.body.i.i92_crit_edge, label %while.body.i.i92.LZ4HC_setExternalDict.exit_crit_edge

while.body.i.i92.LZ4HC_setExternalDict.exit_crit_edge: ; preds = %while.body.i.i92
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_setExternalDict.exit

while.body.i.i92.while.body.i.i92_crit_edge:      ; preds = %while.body.i.i92
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i92

LZ4HC_setExternalDict.exit:                       ; preds = %while.body.i.i92.LZ4HC_setExternalDict.exit_crit_edge, %if.then.i.LZ4HC_setExternalDict.exit_crit_edge, %entry.if.end_crit_edge.i
  %sub.ptr.rhs.cast.pre-phi.i = phi i32 [ %.pre.i, %entry.if.end_crit_edge.i ], [ %sub.ptr.rhs.cast.i.i, %if.then.i.LZ4HC_setExternalDict.exit_crit_edge ], [ %sub.ptr.rhs.cast.i.i, %while.body.i.i92.LZ4HC_setExternalDict.exit_crit_edge ]
  %dictLimit.i93 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 5
  %45 = ptrtoint ptr %dictLimit.i93 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dictLimit.i93, align 4
  %lowLimit.i94 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 6
  %47 = ptrtoint ptr %lowLimit.i94 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %lowLimit.i94, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.pre-phi.i
  store i32 %sub.ptr.sub.i, ptr %dictLimit.i93, align 4
  %dictBase.i95 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 4
  %48 = ptrtoint ptr %dictBase.i95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %36, ptr %dictBase.i95, align 4
  %idx.neg.i = sub i32 0, %sub.ptr.sub.i
  %add.ptr8.i = getelementptr i8, ptr %source, i32 %idx.neg.i
  %49 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr8.i, ptr %base, align 4
  %50 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %source, ptr %end, align 4
  %nextToUpdate.i96 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 7
  %51 = ptrtoint ptr %nextToUpdate.i96 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i, ptr %nextToUpdate.i96, align 4
  br label %if.end17

if.end17:                                         ; preds = %LZ4HC_setExternalDict.exit, %if.end13.if.end17_crit_edge
  %add.ptr18 = getelementptr i8, ptr %source, i32 %inputSize
  %dictBase = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 4
  %52 = ptrtoint ptr %dictBase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dictBase, align 4
  %lowLimit = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 6
  %54 = ptrtoint ptr %lowLimit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lowLimit, align 4
  %add.ptr19 = getelementptr i8, ptr %53, i32 %55
  %dictLimit21 = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 5
  %56 = ptrtoint ptr %dictLimit21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dictLimit21, align 4
  %add.ptr22 = getelementptr i8, ptr %53, i32 %57
  %cmp23 = icmp ugt ptr %add.ptr18, %add.ptr19
  %cmp24 = icmp ugt ptr %add.ptr22, %source
  %or.cond = select i1 %cmp23, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.then25, label %if.end17.if.end42_crit_edge

if.end17.if.end42_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %cmp26 = icmp ugt ptr %add.ptr18, %add.ptr22
  %spec.select = select i1 %cmp26, ptr %add.ptr22, ptr %add.ptr18
  %sub.ptr.lhs.cast30 = ptrtoint ptr %spec.select to i32
  %sub.ptr.rhs.cast31 = ptrtoint ptr %53 to i32
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %sub36 = sub i32 %57, %sub.ptr.sub32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub36)
  %cmp37 = icmp ult i32 %sub36, 4
  %spec.store.select = select i1 %cmp37, i32 %57, i32 %sub.ptr.sub32
  %58 = ptrtoint ptr %lowLimit to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.store.select, ptr %lowLimit, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then25, %if.end17.if.end42_crit_edge
  %compressionLevel = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 8
  %59 = ptrtoint ptr %compressionLevel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %compressionLevel, align 4
  %call43 = tail call fastcc i32 @LZ4HC_compress_generic(ptr noundef %LZ4_streamHCPtr, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %60, i32 noundef %limit)
  ret i32 %call43
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @LZ4_saveDictHC(ptr nocapture noundef %LZ4_streamHCPtr, ptr noundef %safeBuffer, i32 noundef %dictSize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 2
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end, align 4
  %base = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %dictLimit = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 5
  %4 = ptrtoint ptr %dictLimit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dictLimit, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = tail call i32 @llvm.smin.i32(i32 %dictSize, i32 65536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp1 = icmp slt i32 %6, 4
  %spec.store.select28 = select i1 %cmp1, i32 0, i32 %6
  %7 = tail call i32 @llvm.smin.i32(i32 %spec.store.select28, i32 %sub.ptr.sub)
  %idx.neg = sub i32 0, %7
  %add.ptr8 = getelementptr i8, ptr %1, i32 %idx.neg
  %8 = call ptr @memmove(ptr %safeBuffer, ptr %add.ptr8, i32 %7)
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end, align 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %sub.ptr.lhs.cast11 = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast12 = ptrtoint ptr %12 to i32
  %sub.ptr.sub13 = sub i32 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %add.ptr14 = getelementptr i8, ptr %safeBuffer, i32 %7
  store ptr %add.ptr14, ptr %end, align 4
  %idx.neg17 = sub i32 0, %sub.ptr.sub13
  %add.ptr18 = getelementptr i8, ptr %add.ptr14, i32 %idx.neg17
  store ptr %add.ptr18, ptr %base, align 4
  %sub = sub i32 %sub.ptr.sub13, %7
  %13 = ptrtoint ptr %dictLimit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %dictLimit, align 4
  %lowLimit = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 6
  %14 = ptrtoint ptr %lowLimit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %lowLimit, align 4
  %nextToUpdate = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %LZ4_streamHCPtr, i32 0, i32 7
  %15 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nextToUpdate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub)
  %cmp23 = icmp ult i32 %16, %sub
  br i1 %cmp23, label %if.then24, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %nextToUpdate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %nextToUpdate, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %entry.if.end27_crit_edge
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4HC_compress_generic(ptr noundef %ctx, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %compressionLevel, i32 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %source1345 = ptrtoint ptr %source to i32
  %add.ptr = getelementptr i8, ptr %source, i32 %inputSize
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -12
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -5
  %add.ptr3 = getelementptr i8, ptr %dest, i32 %maxOutputSize
  %0 = tail call i32 @llvm.smin.i32(i32 %compressionLevel, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp4 = icmp slt i32 %0, 1
  %.op = add i32 %0, -1
  %.op.op = shl nuw nsw i32 1, %.op
  %shl = select i1 %cmp4, i32 256, i32 %.op.op
  %end = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end, align 4
  %add.ptr7 = getelementptr i8, ptr %2, i32 %inputSize
  store ptr %add.ptr7, ptr %end, align 4
  %incdec.ptr = getelementptr i8, ptr %source, i32 1
  %cmp812101224 = icmp ult ptr %incdec.ptr, %add.ptr1
  br i1 %cmp812101224, label %while.body.lr.ph.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %chainTable1.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 1
  %base3.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 3
  %dictBase4.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 4
  %dictLimit5.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 5
  %lowLimit6.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 6
  %nextToUpdate.i.i = getelementptr inbounds %struct.LZ4HC_CCtx_internal, ptr %ctx, i32 0, i32 7
  %add.ptr.i128.i = getelementptr i8, ptr %add.ptr2, i32 -3
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr2, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %tobool.not.i892 = icmp ne i32 %limit, 0
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %ref3.0.ph1232 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %ref3.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %start3.0.ph1231 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %start3.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %ref2.0.ph1230 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %ref2.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %start2.0.ph1229 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %start2.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %ref.0.ph1228 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %ref.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %op.0.ph1227 = phi ptr [ %dest, %while.body.lr.ph.lr.ph ], [ %op.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %anchor.0.ph1226 = phi ptr [ %source, %while.body.lr.ph.lr.ph ], [ %ip.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %ip.0.ph1225 = phi ptr [ %incdec.ptr, %while.body.lr.ph.lr.ph ], [ %ip.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %3 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base3.i, align 4
  %5 = ptrtoint ptr %dictBase4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dictBase4.i, align 4
  %7 = ptrtoint ptr %dictLimit5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dictLimit5.i, align 4
  %9 = ptrtoint ptr %lowLimit6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lowLimit6.i, align 4
  %add.i = add i32 %10, 65536
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %add.ptr57.i = getelementptr i8, ptr %4, i32 %8
  br label %while.body

while.body:                                       ; preds = %if.then9.while.body_crit_edge, %while.body.lr.ph
  %ref.01213 = phi ptr [ %ref.0.ph1228, %while.body.lr.ph ], [ %ref.31095, %if.then9.while.body_crit_edge ]
  %ip.01211 = phi ptr [ %ip.0.ph1225, %while.body.lr.ph ], [ %incdec.ptr10, %if.then9.while.body_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ip.01211 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ugt i32 %add.i, %sub.ptr.sub.i
  %sub.i = add i32 %sub.ptr.sub.i, -65535
  %cond.i = select i1 %cmp.i, i32 %10, i32 %sub.i
  %11 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nextToUpdate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub.ptr.sub.i)
  %cmp24.i.i = icmp ult i32 %12, %sub.ptr.sub.i
  br i1 %cmp24.i.i, label %while.body.while.body.i.i_crit_edge, label %while.body.LZ4HC_Insert.exit.i_crit_edge

while.body.LZ4HC_Insert.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_Insert.exit.i

while.body.while.body.i.i_crit_edge:              ; preds = %while.body
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.while.body.i.i_crit_edge
  %idx.025.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %12, %while.body.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %idx.025.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %add.ptr.val.i.i = load i32, ptr %add.ptr.i.i, align 1
  %mul.i.i.i = mul i32 %add.ptr.val.i.i, -1640531535
  %shr.i.i.i = lshr i32 %mul.i.i.i, 17
  %arrayidx.i.i = getelementptr i32, ptr %ctx, i32 %shr.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %idx.025.i.i, %15
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 65535) #4
  %conv.i.i = trunc i32 %16 to i16
  %idxprom.i.i = and i32 %idx.025.i.i, 65535
  %arrayidx7.i.i = getelementptr i16, ptr %chainTable1.i, i32 %idxprom.i.i
  %17 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %arrayidx7.i.i, align 2
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx.025.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %idx.025.i.i, 1
  %cmp.i.i = icmp ult i32 %inc.i.i, %sub.ptr.sub.i
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.LZ4HC_Insert.exit.i_crit_edge

while.body.i.i.LZ4HC_Insert.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_Insert.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

LZ4HC_Insert.exit.i:                              ; preds = %while.body.i.i.LZ4HC_Insert.exit.i_crit_edge, %while.body.LZ4HC_Insert.exit.i_crit_edge
  %19 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub.i, ptr %nextToUpdate.i.i, align 4
  %20 = ptrtoint ptr %ip.01211 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %ip.val127.i = load i32, ptr %ip.01211, align 1
  %mul.i.i = mul i32 %ip.val127.i, -1640531535
  %shr.i.i = lshr i32 %mul.i.i, 17
  %arrayidx.i = getelementptr i32, ptr %ctx, i32 %shr.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %cond.i)
  %cmp11.not224.i = icmp ult i32 %22, %cond.i
  br i1 %cmp11.not224.i, label %LZ4HC_Insert.exit.i.if.then9_crit_edge, label %while.body.lr.ph.i

LZ4HC_Insert.exit.i.if.then9_crit_edge:           ; preds = %LZ4HC_Insert.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

while.body.lr.ph.i:                               ; preds = %LZ4HC_Insert.exit.i
  %add.ptr23.i = getelementptr i8, ptr %ip.01211, i32 4
  %cmp59.i.i = icmp ugt ptr %add.ptr.i128.i, %add.ptr23.i
  %sub.ptr.rhs.cast.i134.i = ptrtoint ptr %add.ptr23.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end67.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ref.1 = phi ptr [ %ref.01213, %while.body.lr.ph.i ], [ %ref.2, %if.end67.i.while.body.i_crit_edge ]
  %ml.0229.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %ml.5.i, %if.end67.i.while.body.i_crit_edge ]
  %nbAttempts.0228.i = phi i32 [ %shl, %while.body.lr.ph.i ], [ %dec.i, %if.end67.i.while.body.i_crit_edge ]
  %matchIndex.0227.i = phi i32 [ %22, %while.body.lr.ph.i ], [ %sub71.i, %if.end67.i.while.body.i_crit_edge ]
  %dec.i = add i32 %nbAttempts.0228.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %matchIndex.0227.i)
  %cmp12.not.i = icmp ugt i32 %8, %matchIndex.0227.i
  br i1 %cmp12.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 %matchIndex.0227.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %ml.0229.i
  %23 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr13.i, align 1
  %add.ptr14.i = getelementptr i8, ptr %ip.01211, i32 %ml.0229.i
  %25 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp16.i = icmp eq i8 %24, %26
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.then.i.if.end67.i_crit_edge

if.then.i.if.end67.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %add.ptr.val.i = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr.val.i, i32 %ip.val127.i)
  %cmp20.i = icmp eq i32 %add.ptr.val.i, %ip.val127.i
  br i1 %cmp20.i, label %if.then22.i, label %land.lhs.true.i.if.end67.i_crit_edge

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 4
  br i1 %cmp59.i.i, label %if.then22.i.while.body.i129.i_crit_edge, label %if.then22.i.while.end.i.i_crit_edge, !prof !22

if.then22.i.while.end.i.i_crit_edge:              ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

if.then22.i.while.body.i129.i_crit_edge:          ; preds = %if.then22.i
  br label %while.body.i129.i

while.body.i129.i:                                ; preds = %cleanup.i.i.while.body.i129.i_crit_edge, %if.then22.i.while.body.i129.i_crit_edge
  %pMatch.addr.061.i.i = phi ptr [ %add.ptr5.i.i, %cleanup.i.i.while.body.i129.i_crit_edge ], [ %add.ptr24.i, %if.then22.i.while.body.i129.i_crit_edge ]
  %pIn.addr.060.i.i = phi ptr [ %add.ptr4.i.i, %cleanup.i.i.while.body.i129.i_crit_edge ], [ %add.ptr23.i, %if.then22.i.while.body.i129.i_crit_edge ]
  %28 = ptrtoint ptr %pMatch.addr.061.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %pMatch.addr.0.val.i.i = load i32, ptr %pMatch.addr.061.i.i, align 1
  %29 = ptrtoint ptr %pIn.addr.060.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %pIn.addr.0.val.i.i = load i32, ptr %pIn.addr.060.i.i, align 1
  %xor.i.i = xor i32 %pIn.addr.0.val.i.i, %pMatch.addr.0.val.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool3.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool3.not.i.i, label %cleanup.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %while.body.i129.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i, i1 true) #4, !range !23
  %shr.i.i130.i = lshr i32 %30, 3
  %add.ptr7.i.i = getelementptr i8, ptr %pIn.addr.060.i.i, i32 %shr.i.i130.i
  br label %LZ4_count.exit.i

cleanup.i.i:                                      ; preds = %while.body.i129.i
  %add.ptr4.i.i = getelementptr i8, ptr %pIn.addr.060.i.i, i32 4
  %add.ptr5.i.i = getelementptr i8, ptr %pMatch.addr.061.i.i, i32 4
  %cmp.i131.i = icmp ult ptr %add.ptr4.i.i, %add.ptr.i128.i
  br i1 %cmp.i131.i, label %cleanup.i.i.while.body.i129.i_crit_edge, label %cleanup.i.i.while.end.i.i_crit_edge, !prof !22

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

cleanup.i.i.while.body.i129.i_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i129.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %if.then22.i.while.end.i.i_crit_edge
  %pIn.addr.0.lcssa.i.i = phi ptr [ %add.ptr23.i, %if.then22.i.while.end.i.i_crit_edge ], [ %add.ptr4.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %pMatch.addr.0.lcssa.i.i = phi ptr [ %add.ptr24.i, %if.then22.i.while.end.i.i_crit_edge ], [ %add.ptr5.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %cmp9.i.i = icmp ult ptr %pIn.addr.0.lcssa.i.i, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %while.end.i.i.if.end18.i.i_crit_edge

while.end.i.i.if.end18.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %31 = ptrtoint ptr %pMatch.addr.0.lcssa.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %pMatch.addr.0.val53.i.i = load i16, ptr %pMatch.addr.0.lcssa.i.i, align 1
  %32 = ptrtoint ptr %pIn.addr.0.lcssa.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %pIn.addr.0.val52.i.i = load i16, ptr %pIn.addr.0.lcssa.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i.i, i16 %pIn.addr.0.val52.i.i)
  %cmp13.i.i = icmp eq i16 %pMatch.addr.0.val53.i.i, %pIn.addr.0.val52.i.i
  br i1 %cmp13.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.if.end18.i.i_crit_edge

land.lhs.true.i.i.if.end18.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i.i, i32 2
  %add.ptr17.i.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i.i, i32 2
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge, %while.end.i.i.if.end18.i.i_crit_edge
  %pIn.addr.2.i.i = phi ptr [ %add.ptr16.i.i, %if.then15.i.i ], [ %pIn.addr.0.lcssa.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge ], [ %pIn.addr.0.lcssa.i.i, %while.end.i.i.if.end18.i.i_crit_edge ]
  %pMatch.addr.2.i.i = phi ptr [ %add.ptr17.i.i, %if.then15.i.i ], [ %pMatch.addr.0.lcssa.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge ], [ %pMatch.addr.0.lcssa.i.i, %while.end.i.i.if.end18.i.i_crit_edge ]
  %cmp19.i.i = icmp ult ptr %pIn.addr.2.i.i, %add.ptr2
  br i1 %cmp19.i.i, label %land.lhs.true21.i.i, label %if.end18.i.i.LZ4_count.exit.i_crit_edge

if.end18.i.i.LZ4_count.exit.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit.i

land.lhs.true21.i.i:                              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %pMatch.addr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pMatch.addr.2.i.i, align 1
  %35 = ptrtoint ptr %pIn.addr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pIn.addr.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp24.i132.i = icmp eq i8 %34, %36
  %spec.select.idx.i.i = zext i1 %cmp24.i132.i to i32
  %spec.select.i.i = getelementptr i8, ptr %pIn.addr.2.i.i, i32 %spec.select.idx.i.i
  br label %LZ4_count.exit.i

LZ4_count.exit.i:                                 ; preds = %land.lhs.true21.i.i, %if.end18.i.i.LZ4_count.exit.i_crit_edge, %cleanup.thread.i.i
  %add.ptr7.sink.i.i = phi ptr [ %add.ptr7.i.i, %cleanup.thread.i.i ], [ %pIn.addr.2.i.i, %if.end18.i.i.LZ4_count.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true21.i.i ]
  %sub.ptr.lhs.cast.i133.i = ptrtoint ptr %add.ptr7.sink.i.i to i32
  %sub.ptr.sub.i135.i = sub i32 %sub.ptr.lhs.cast.i133.i, %sub.ptr.rhs.cast.i134.i
  %add26.i = add i32 %sub.ptr.sub.i135.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %ml.0229.i)
  %cmp27.i = icmp ugt i32 %add26.i, %ml.0229.i
  br i1 %cmp27.i, label %LZ4_count.exit.i.if.end67.sink.split.i_crit_edge, label %LZ4_count.exit.i.if.end67.i_crit_edge

LZ4_count.exit.i.if.end67.i_crit_edge:            ; preds = %LZ4_count.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67.i

LZ4_count.exit.i.if.end67.sink.split.i_crit_edge: ; preds = %LZ4_count.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67.sink.split.i

if.else.i:                                        ; preds = %while.body.i
  %add.ptr32.i = getelementptr i8, ptr %6, i32 %matchIndex.0227.i
  %37 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %add.ptr32.val.i = load i32, ptr %add.ptr32.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr32.val.i, i32 %ip.val127.i)
  %cmp35.i = icmp eq i32 %add.ptr32.val.i, %ip.val127.i
  br i1 %cmp35.i, label %if.then37.i, label %if.else.i.if.end67.i_crit_edge

if.else.i.if.end67.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67.i

if.then37.i:                                      ; preds = %if.else.i
  %sub39.i = sub i32 %8, %matchIndex.0227.i
  %add.ptr40.i = getelementptr i8, ptr %ip.01211, i32 %sub39.i
  %cmp41.i = icmp ugt ptr %add.ptr40.i, %add.ptr2
  %spec.select.i = select i1 %cmp41.i, ptr %add.ptr2, ptr %add.ptr40.i
  %add.ptr46.i = getelementptr i8, ptr %add.ptr32.i, i32 4
  %add.ptr.i136.i = getelementptr i8, ptr %spec.select.i, i32 -3
  %cmp59.i137.i = icmp ugt ptr %add.ptr.i136.i, %add.ptr23.i
  br i1 %cmp59.i137.i, label %if.then37.i.while.body.i144.i_crit_edge, label %if.then37.i.while.end.i156.i_crit_edge, !prof !22

if.then37.i.while.end.i156.i_crit_edge:           ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i156.i

if.then37.i.while.body.i144.i_crit_edge:          ; preds = %if.then37.i
  br label %while.body.i144.i

while.body.i144.i:                                ; preds = %cleanup.i151.i.while.body.i144.i_crit_edge, %if.then37.i.while.body.i144.i_crit_edge
  %pMatch.addr.061.i138.i = phi ptr [ %add.ptr5.i149.i, %cleanup.i151.i.while.body.i144.i_crit_edge ], [ %add.ptr46.i, %if.then37.i.while.body.i144.i_crit_edge ]
  %pIn.addr.060.i139.i = phi ptr [ %add.ptr4.i148.i, %cleanup.i151.i.while.body.i144.i_crit_edge ], [ %add.ptr23.i, %if.then37.i.while.body.i144.i_crit_edge ]
  %38 = ptrtoint ptr %pMatch.addr.061.i138.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %pMatch.addr.0.val.i140.i = load i32, ptr %pMatch.addr.061.i138.i, align 1
  %39 = ptrtoint ptr %pIn.addr.060.i139.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %pIn.addr.0.val.i141.i = load i32, ptr %pIn.addr.060.i139.i, align 1
  %xor.i142.i = xor i32 %pIn.addr.0.val.i141.i, %pMatch.addr.0.val.i140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i142.i)
  %tobool3.not.i143.i = icmp eq i32 %xor.i142.i, 0
  br i1 %tobool3.not.i143.i, label %cleanup.i151.i, label %cleanup.thread.i147.i

cleanup.thread.i147.i:                            ; preds = %while.body.i144.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = tail call i32 @llvm.ctlz.i32(i32 %xor.i142.i, i1 true) #4, !range !23
  %shr.i.i145.i = lshr i32 %40, 3
  %add.ptr7.i146.i = getelementptr i8, ptr %pIn.addr.060.i139.i, i32 %shr.i.i145.i
  br label %LZ4_count.exit176.i

cleanup.i151.i:                                   ; preds = %while.body.i144.i
  %add.ptr4.i148.i = getelementptr i8, ptr %pIn.addr.060.i139.i, i32 4
  %add.ptr5.i149.i = getelementptr i8, ptr %pMatch.addr.061.i138.i, i32 4
  %cmp.i150.i = icmp ult ptr %add.ptr4.i148.i, %add.ptr.i136.i
  br i1 %cmp.i150.i, label %cleanup.i151.i.while.body.i144.i_crit_edge, label %cleanup.i151.i.while.end.i156.i_crit_edge, !prof !22

cleanup.i151.i.while.end.i156.i_crit_edge:        ; preds = %cleanup.i151.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i156.i

cleanup.i151.i.while.body.i144.i_crit_edge:       ; preds = %cleanup.i151.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i144.i

while.end.i156.i:                                 ; preds = %cleanup.i151.i.while.end.i156.i_crit_edge, %if.then37.i.while.end.i156.i_crit_edge
  %pIn.addr.0.lcssa.i152.i = phi ptr [ %add.ptr23.i, %if.then37.i.while.end.i156.i_crit_edge ], [ %add.ptr4.i148.i, %cleanup.i151.i.while.end.i156.i_crit_edge ]
  %pMatch.addr.0.lcssa.i153.i = phi ptr [ %add.ptr46.i, %if.then37.i.while.end.i156.i_crit_edge ], [ %add.ptr5.i149.i, %cleanup.i151.i.while.end.i156.i_crit_edge ]
  %add.ptr8.i154.i = getelementptr i8, ptr %spec.select.i, i32 -1
  %cmp9.i155.i = icmp ult ptr %pIn.addr.0.lcssa.i152.i, %add.ptr8.i154.i
  br i1 %cmp9.i155.i, label %land.lhs.true.i160.i, label %while.end.i156.i.if.end18.i167.i_crit_edge

while.end.i156.i.if.end18.i167.i_crit_edge:       ; preds = %while.end.i156.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i167.i

land.lhs.true.i160.i:                             ; preds = %while.end.i156.i
  %41 = ptrtoint ptr %pMatch.addr.0.lcssa.i153.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %pMatch.addr.0.val53.i157.i = load i16, ptr %pMatch.addr.0.lcssa.i153.i, align 1
  %42 = ptrtoint ptr %pIn.addr.0.lcssa.i152.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %pIn.addr.0.val52.i158.i = load i16, ptr %pIn.addr.0.lcssa.i152.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i157.i, i16 %pIn.addr.0.val52.i158.i)
  %cmp13.i159.i = icmp eq i16 %pMatch.addr.0.val53.i157.i, %pIn.addr.0.val52.i158.i
  br i1 %cmp13.i159.i, label %if.then15.i163.i, label %land.lhs.true.i160.i.if.end18.i167.i_crit_edge

land.lhs.true.i160.i.if.end18.i167.i_crit_edge:   ; preds = %land.lhs.true.i160.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i167.i

if.then15.i163.i:                                 ; preds = %land.lhs.true.i160.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i161.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i152.i, i32 2
  %add.ptr17.i162.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i153.i, i32 2
  br label %if.end18.i167.i

if.end18.i167.i:                                  ; preds = %if.then15.i163.i, %land.lhs.true.i160.i.if.end18.i167.i_crit_edge, %while.end.i156.i.if.end18.i167.i_crit_edge
  %pIn.addr.2.i164.i = phi ptr [ %add.ptr16.i161.i, %if.then15.i163.i ], [ %pIn.addr.0.lcssa.i152.i, %land.lhs.true.i160.i.if.end18.i167.i_crit_edge ], [ %pIn.addr.0.lcssa.i152.i, %while.end.i156.i.if.end18.i167.i_crit_edge ]
  %pMatch.addr.2.i165.i = phi ptr [ %add.ptr17.i162.i, %if.then15.i163.i ], [ %pMatch.addr.0.lcssa.i153.i, %land.lhs.true.i160.i.if.end18.i167.i_crit_edge ], [ %pMatch.addr.0.lcssa.i153.i, %while.end.i156.i.if.end18.i167.i_crit_edge ]
  %cmp19.i166.i = icmp ult ptr %pIn.addr.2.i164.i, %spec.select.i
  br i1 %cmp19.i166.i, label %land.lhs.true21.i171.i, label %if.end18.i167.i.LZ4_count.exit176.i_crit_edge

if.end18.i167.i.LZ4_count.exit176.i_crit_edge:    ; preds = %if.end18.i167.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit176.i

land.lhs.true21.i171.i:                           ; preds = %if.end18.i167.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %pMatch.addr.2.i165.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pMatch.addr.2.i165.i, align 1
  %45 = ptrtoint ptr %pIn.addr.2.i164.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pIn.addr.2.i164.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp24.i168.i = icmp eq i8 %44, %46
  %spec.select.idx.i169.i = zext i1 %cmp24.i168.i to i32
  %spec.select.i170.i = getelementptr i8, ptr %pIn.addr.2.i164.i, i32 %spec.select.idx.i169.i
  br label %LZ4_count.exit176.i

LZ4_count.exit176.i:                              ; preds = %land.lhs.true21.i171.i, %if.end18.i167.i.LZ4_count.exit176.i_crit_edge, %cleanup.thread.i147.i
  %add.ptr7.sink.i172.i = phi ptr [ %add.ptr7.i146.i, %cleanup.thread.i147.i ], [ %pIn.addr.2.i164.i, %if.end18.i167.i.LZ4_count.exit176.i_crit_edge ], [ %spec.select.i170.i, %land.lhs.true21.i171.i ]
  %sub.ptr.lhs.cast.i173.i = ptrtoint ptr %add.ptr7.sink.i172.i to i32
  %sub.ptr.sub.i175.i = sub i32 %sub.ptr.lhs.cast.i173.i, %sub.ptr.rhs.cast.i134.i
  %add48.i = add i32 %sub.ptr.sub.i175.i, 4
  %add.ptr49.i = getelementptr i8, ptr %ip.01211, i32 %add48.i
  %cmp50.i = icmp eq ptr %add.ptr49.i, %spec.select.i
  %cmp53.i = icmp ult ptr %add.ptr40.i, %add.ptr2
  %or.cond125.i = and i1 %cmp53.i, %cmp50.i
  br i1 %or.cond125.i, label %if.then55.i, label %LZ4_count.exit176.i.if.end60.i_crit_edge

LZ4_count.exit176.i.if.end60.i_crit_edge:         ; preds = %LZ4_count.exit176.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

if.then55.i:                                      ; preds = %LZ4_count.exit176.i
  %cmp59.i178.i = icmp ugt ptr %add.ptr.i128.i, %spec.select.i
  br i1 %cmp59.i178.i, label %if.then55.i.while.body.i185.i_crit_edge, label %if.then55.i.while.end.i197.i_crit_edge, !prof !22

if.then55.i.while.end.i197.i_crit_edge:           ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i197.i

if.then55.i.while.body.i185.i_crit_edge:          ; preds = %if.then55.i
  br label %while.body.i185.i

while.body.i185.i:                                ; preds = %cleanup.i192.i.while.body.i185.i_crit_edge, %if.then55.i.while.body.i185.i_crit_edge
  %pMatch.addr.061.i179.i = phi ptr [ %add.ptr5.i190.i, %cleanup.i192.i.while.body.i185.i_crit_edge ], [ %add.ptr57.i, %if.then55.i.while.body.i185.i_crit_edge ]
  %pIn.addr.060.i180.i = phi ptr [ %add.ptr4.i189.i, %cleanup.i192.i.while.body.i185.i_crit_edge ], [ %spec.select.i, %if.then55.i.while.body.i185.i_crit_edge ]
  %47 = ptrtoint ptr %pMatch.addr.061.i179.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %pMatch.addr.0.val.i181.i = load i32, ptr %pMatch.addr.061.i179.i, align 1
  %48 = ptrtoint ptr %pIn.addr.060.i180.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %pIn.addr.0.val.i182.i = load i32, ptr %pIn.addr.060.i180.i, align 1
  %xor.i183.i = xor i32 %pIn.addr.0.val.i182.i, %pMatch.addr.0.val.i181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i183.i)
  %tobool3.not.i184.i = icmp eq i32 %xor.i183.i, 0
  br i1 %tobool3.not.i184.i, label %cleanup.i192.i, label %cleanup.thread.i188.i

cleanup.thread.i188.i:                            ; preds = %while.body.i185.i
  call void @__sanitizer_cov_trace_pc() #6
  %49 = tail call i32 @llvm.ctlz.i32(i32 %xor.i183.i, i1 true) #4, !range !23
  %shr.i.i186.i = lshr i32 %49, 3
  %add.ptr7.i187.i = getelementptr i8, ptr %pIn.addr.060.i180.i, i32 %shr.i.i186.i
  br label %LZ4_count.exit217.i

cleanup.i192.i:                                   ; preds = %while.body.i185.i
  %add.ptr4.i189.i = getelementptr i8, ptr %pIn.addr.060.i180.i, i32 4
  %add.ptr5.i190.i = getelementptr i8, ptr %pMatch.addr.061.i179.i, i32 4
  %cmp.i191.i = icmp ult ptr %add.ptr4.i189.i, %add.ptr.i128.i
  br i1 %cmp.i191.i, label %cleanup.i192.i.while.body.i185.i_crit_edge, label %cleanup.i192.i.while.end.i197.i_crit_edge, !prof !22

cleanup.i192.i.while.end.i197.i_crit_edge:        ; preds = %cleanup.i192.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i197.i

cleanup.i192.i.while.body.i185.i_crit_edge:       ; preds = %cleanup.i192.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i185.i

while.end.i197.i:                                 ; preds = %cleanup.i192.i.while.end.i197.i_crit_edge, %if.then55.i.while.end.i197.i_crit_edge
  %pIn.addr.0.lcssa.i193.i = phi ptr [ %spec.select.i, %if.then55.i.while.end.i197.i_crit_edge ], [ %add.ptr4.i189.i, %cleanup.i192.i.while.end.i197.i_crit_edge ]
  %pMatch.addr.0.lcssa.i194.i = phi ptr [ %add.ptr57.i, %if.then55.i.while.end.i197.i_crit_edge ], [ %add.ptr5.i190.i, %cleanup.i192.i.while.end.i197.i_crit_edge ]
  %cmp9.i196.i = icmp ult ptr %pIn.addr.0.lcssa.i193.i, %add.ptr8.i.i
  br i1 %cmp9.i196.i, label %land.lhs.true.i201.i, label %while.end.i197.i.if.end18.i208.i_crit_edge

while.end.i197.i.if.end18.i208.i_crit_edge:       ; preds = %while.end.i197.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i208.i

land.lhs.true.i201.i:                             ; preds = %while.end.i197.i
  %50 = ptrtoint ptr %pMatch.addr.0.lcssa.i194.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %pMatch.addr.0.val53.i198.i = load i16, ptr %pMatch.addr.0.lcssa.i194.i, align 1
  %51 = ptrtoint ptr %pIn.addr.0.lcssa.i193.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %pIn.addr.0.val52.i199.i = load i16, ptr %pIn.addr.0.lcssa.i193.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i198.i, i16 %pIn.addr.0.val52.i199.i)
  %cmp13.i200.i = icmp eq i16 %pMatch.addr.0.val53.i198.i, %pIn.addr.0.val52.i199.i
  br i1 %cmp13.i200.i, label %if.then15.i204.i, label %land.lhs.true.i201.i.if.end18.i208.i_crit_edge

land.lhs.true.i201.i.if.end18.i208.i_crit_edge:   ; preds = %land.lhs.true.i201.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i208.i

if.then15.i204.i:                                 ; preds = %land.lhs.true.i201.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i202.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i193.i, i32 2
  %add.ptr17.i203.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i194.i, i32 2
  br label %if.end18.i208.i

if.end18.i208.i:                                  ; preds = %if.then15.i204.i, %land.lhs.true.i201.i.if.end18.i208.i_crit_edge, %while.end.i197.i.if.end18.i208.i_crit_edge
  %pIn.addr.2.i205.i = phi ptr [ %add.ptr16.i202.i, %if.then15.i204.i ], [ %pIn.addr.0.lcssa.i193.i, %land.lhs.true.i201.i.if.end18.i208.i_crit_edge ], [ %pIn.addr.0.lcssa.i193.i, %while.end.i197.i.if.end18.i208.i_crit_edge ]
  %pMatch.addr.2.i206.i = phi ptr [ %add.ptr17.i203.i, %if.then15.i204.i ], [ %pMatch.addr.0.lcssa.i194.i, %land.lhs.true.i201.i.if.end18.i208.i_crit_edge ], [ %pMatch.addr.0.lcssa.i194.i, %while.end.i197.i.if.end18.i208.i_crit_edge ]
  %cmp19.i207.i = icmp ult ptr %pIn.addr.2.i205.i, %add.ptr2
  br i1 %cmp19.i207.i, label %land.lhs.true21.i212.i, label %if.end18.i208.i.LZ4_count.exit217.i_crit_edge

if.end18.i208.i.LZ4_count.exit217.i_crit_edge:    ; preds = %if.end18.i208.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit217.i

land.lhs.true21.i212.i:                           ; preds = %if.end18.i208.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %pMatch.addr.2.i206.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pMatch.addr.2.i206.i, align 1
  %54 = ptrtoint ptr %pIn.addr.2.i205.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pIn.addr.2.i205.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp24.i209.i = icmp eq i8 %53, %55
  %spec.select.idx.i210.i = zext i1 %cmp24.i209.i to i32
  %spec.select.i211.i = getelementptr i8, ptr %pIn.addr.2.i205.i, i32 %spec.select.idx.i210.i
  br label %LZ4_count.exit217.i

LZ4_count.exit217.i:                              ; preds = %land.lhs.true21.i212.i, %if.end18.i208.i.LZ4_count.exit217.i_crit_edge, %cleanup.thread.i188.i
  %add.ptr7.sink.i213.i = phi ptr [ %add.ptr7.i187.i, %cleanup.thread.i188.i ], [ %pIn.addr.2.i205.i, %if.end18.i208.i.LZ4_count.exit217.i_crit_edge ], [ %spec.select.i211.i, %land.lhs.true21.i212.i ]
  %sub.ptr.lhs.cast.i214.i = ptrtoint ptr %add.ptr7.sink.i213.i to i32
  %sub.ptr.rhs.cast.i215.i = ptrtoint ptr %spec.select.i to i32
  %sub.ptr.sub.i216.i = sub i32 %add48.i, %sub.ptr.rhs.cast.i215.i
  %add59.i = add i32 %sub.ptr.sub.i216.i, %sub.ptr.lhs.cast.i214.i
  br label %if.end60.i

if.end60.i:                                       ; preds = %LZ4_count.exit217.i, %LZ4_count.exit176.i.if.end60.i_crit_edge
  %mlt38.0.i = phi i32 [ %add59.i, %LZ4_count.exit217.i ], [ %add48.i, %LZ4_count.exit176.i.if.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mlt38.0.i, i32 %ml.0229.i)
  %cmp61.i = icmp ugt i32 %mlt38.0.i, %ml.0229.i
  br i1 %cmp61.i, label %if.then63.i, label %if.end60.i.if.end67.i_crit_edge

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr64.i = getelementptr i8, ptr %4, i32 %matchIndex.0227.i
  br label %if.end67.sink.split.i

if.end67.sink.split.i:                            ; preds = %if.then63.i, %LZ4_count.exit.i.if.end67.sink.split.i_crit_edge
  %add.ptr64.sink.i = phi ptr [ %add.ptr64.i, %if.then63.i ], [ %add.ptr.i, %LZ4_count.exit.i.if.end67.sink.split.i_crit_edge ]
  %ml.5.ph.i = phi i32 [ %mlt38.0.i, %if.then63.i ], [ %add26.i, %LZ4_count.exit.i.if.end67.sink.split.i_crit_edge ]
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end67.sink.split.i, %if.end60.i.if.end67.i_crit_edge, %if.else.i.if.end67.i_crit_edge, %LZ4_count.exit.i.if.end67.i_crit_edge, %land.lhs.true.i.if.end67.i_crit_edge, %if.then.i.if.end67.i_crit_edge
  %ref.2 = phi ptr [ %add.ptr64.sink.i, %if.end67.sink.split.i ], [ %ref.1, %if.end60.i.if.end67.i_crit_edge ], [ %ref.1, %if.else.i.if.end67.i_crit_edge ], [ %ref.1, %LZ4_count.exit.i.if.end67.i_crit_edge ], [ %ref.1, %land.lhs.true.i.if.end67.i_crit_edge ], [ %ref.1, %if.then.i.if.end67.i_crit_edge ]
  %ml.5.i = phi i32 [ %ml.5.ph.i, %if.end67.sink.split.i ], [ %ml.0229.i, %if.end60.i.if.end67.i_crit_edge ], [ %ml.0229.i, %if.else.i.if.end67.i_crit_edge ], [ %ml.0229.i, %LZ4_count.exit.i.if.end67.i_crit_edge ], [ %ml.0229.i, %land.lhs.true.i.if.end67.i_crit_edge ], [ %ml.0229.i, %if.then.i.if.end67.i_crit_edge ]
  %idxprom.i = and i32 %matchIndex.0227.i, 65535
  %arrayidx69.i = getelementptr i16, ptr %chainTable1.i, i32 %idxprom.i
  %56 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx69.i, align 2
  %conv70.i = zext i16 %57 to i32
  %sub71.i = sub i32 %matchIndex.0227.i, %conv70.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub71.i, i32 %cond.i)
  %cmp11.not.i = icmp ult i32 %sub71.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp11.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %LZ4HC_InsertAndFindBestMatch.exit, label %if.end67.i.while.body.i_crit_edge

if.end67.i.while.body.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

LZ4HC_InsertAndFindBestMatch.exit:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ml.5.i)
  %tobool.not = icmp eq i32 %ml.5.i, 0
  br i1 %tobool.not, label %LZ4HC_InsertAndFindBestMatch.exit.if.then9_crit_edge, label %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge

LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge: ; preds = %LZ4HC_InsertAndFindBestMatch.exit
  br label %_Search2.outer

LZ4HC_InsertAndFindBestMatch.exit.if.then9_crit_edge: ; preds = %LZ4HC_InsertAndFindBestMatch.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %LZ4HC_InsertAndFindBestMatch.exit.if.then9_crit_edge, %LZ4HC_Insert.exit.i.if.then9_crit_edge
  %ref.31095 = phi ptr [ %ref.2, %LZ4HC_InsertAndFindBestMatch.exit.if.then9_crit_edge ], [ %ref.01213, %LZ4HC_Insert.exit.i.if.then9_crit_edge ]
  %incdec.ptr10 = getelementptr i8, ptr %ip.01211, i32 1
  %cmp8 = icmp ult ptr %incdec.ptr10, %add.ptr1
  br i1 %cmp8, label %if.then9.while.body_crit_edge, label %if.then9.while.end_crit_edge

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then9.while.body_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

_Search2:                                         ; preds = %_Search2.outer, %if.end26._Search2_crit_edge
  %ip.1 = phi ptr [ %start2.3, %if.end26._Search2_crit_edge ], [ %ip.1.ph, %_Search2.outer ]
  %ref.4 = phi ptr [ %ref2.3, %if.end26._Search2_crit_edge ], [ %ref.4.ph, %_Search2.outer ]
  %start2.1 = phi ptr [ %start2.3, %if.end26._Search2_crit_edge ], [ %start2.1.ph, %_Search2.outer ]
  %ref2.1 = phi ptr [ %ref2.3, %if.end26._Search2_crit_edge ], [ %ref2.1.ph, %_Search2.outer ]
  %ml.0 = phi i32 [ %longest.addr.5.i, %if.end26._Search2_crit_edge ], [ %ml.0.ph, %_Search2.outer ]
  %add.ptr12 = getelementptr i8, ptr %ip.1, i32 %ml.0
  %cmp13 = icmp ult ptr %add.ptr12, %add.ptr1
  br i1 %cmp13, label %if.then14, label %_Search2.if.then21_crit_edge

_Search2.if.then21_crit_edge:                     ; preds = %_Search2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then14:                                        ; preds = %_Search2
  %add.ptr16 = getelementptr i8, ptr %add.ptr12, i32 -2
  %58 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base3.i, align 4
  %60 = ptrtoint ptr %dictLimit5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dictLimit5.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %59, i32 %61
  %62 = ptrtoint ptr %lowLimit6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lowLimit6.i, align 4
  %add.i318 = add i32 %63, 65536
  %sub.ptr.lhs.cast.i319 = ptrtoint ptr %add.ptr16 to i32
  %sub.ptr.rhs.cast.i320 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i321 = sub i32 %sub.ptr.lhs.cast.i319, %sub.ptr.rhs.cast.i320
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i318, i32 %sub.ptr.sub.i321)
  %cmp.i322 = icmp ugt i32 %add.i318, %sub.ptr.sub.i321
  %sub.i323 = add i32 %sub.ptr.sub.i321, -65535
  %cond.i324 = select i1 %cmp.i322, i32 %63, i32 %sub.i323
  %64 = ptrtoint ptr %dictBase4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dictBase4.i, align 4
  %sub.ptr.rhs.cast12.i = ptrtoint ptr %ip.1 to i32
  %sub.ptr.sub13.neg.i = sub i32 %sub.ptr.rhs.cast12.i, %sub.ptr.lhs.cast.i319
  %66 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nextToUpdate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %sub.ptr.sub.i321)
  %cmp24.i.i326 = icmp ult i32 %67, %sub.ptr.sub.i321
  br i1 %cmp24.i.i326, label %if.then14.while.body.i.i339_crit_edge, label %if.then14.LZ4HC_Insert.exit.i343_crit_edge

if.then14.LZ4HC_Insert.exit.i343_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_Insert.exit.i343

if.then14.while.body.i.i339_crit_edge:            ; preds = %if.then14
  br label %while.body.i.i339

while.body.i.i339:                                ; preds = %while.body.i.i339.while.body.i.i339_crit_edge, %if.then14.while.body.i.i339_crit_edge
  %idx.025.i.i327 = phi i32 [ %inc.i.i337, %while.body.i.i339.while.body.i.i339_crit_edge ], [ %67, %if.then14.while.body.i.i339_crit_edge ]
  %add.ptr.i.i328 = getelementptr i8, ptr %59, i32 %idx.025.i.i327
  %68 = ptrtoint ptr %add.ptr.i.i328 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %add.ptr.val.i.i329 = load i32, ptr %add.ptr.i.i328, align 1
  %mul.i.i.i330 = mul i32 %add.ptr.val.i.i329, -1640531535
  %shr.i.i.i331 = lshr i32 %mul.i.i.i330, 17
  %arrayidx.i.i332 = getelementptr i32, ptr %ctx, i32 %shr.i.i.i331
  %69 = ptrtoint ptr %arrayidx.i.i332 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i332, align 4
  %sub.i.i333 = sub i32 %idx.025.i.i327, %70
  %71 = tail call i32 @llvm.umin.i32(i32 %sub.i.i333, i32 65535) #4
  %conv.i.i334 = trunc i32 %71 to i16
  %idxprom.i.i335 = and i32 %idx.025.i.i327, 65535
  %arrayidx7.i.i336 = getelementptr i16, ptr %chainTable1.i, i32 %idxprom.i.i335
  %72 = ptrtoint ptr %arrayidx7.i.i336 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i.i334, ptr %arrayidx7.i.i336, align 2
  %73 = ptrtoint ptr %arrayidx.i.i332 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %idx.025.i.i327, ptr %arrayidx.i.i332, align 4
  %inc.i.i337 = add nuw i32 %idx.025.i.i327, 1
  %cmp.i.i338 = icmp ult i32 %inc.i.i337, %sub.ptr.sub.i321
  br i1 %cmp.i.i338, label %while.body.i.i339.while.body.i.i339_crit_edge, label %while.body.i.i339.LZ4HC_Insert.exit.i343_crit_edge

while.body.i.i339.LZ4HC_Insert.exit.i343_crit_edge: ; preds = %while.body.i.i339
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_Insert.exit.i343

while.body.i.i339.while.body.i.i339_crit_edge:    ; preds = %while.body.i.i339
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i339

LZ4HC_Insert.exit.i343:                           ; preds = %while.body.i.i339.LZ4HC_Insert.exit.i343_crit_edge, %if.then14.LZ4HC_Insert.exit.i343_crit_edge
  %74 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub.ptr.sub.i321, ptr %nextToUpdate.i.i, align 4
  %75 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %ip.val219.i = load i32, ptr %add.ptr16, align 1
  %mul.i.i340 = mul i32 %ip.val219.i, -1640531535
  %shr.i.i341 = lshr i32 %mul.i.i340, 17
  %arrayidx.i342 = getelementptr i32, ptr %ctx, i32 %shr.i.i341
  %76 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i342, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %cond.i324)
  %cmp14.not316.i = icmp ult i32 %77, %cond.i324
  br i1 %cmp14.not316.i, label %LZ4HC_Insert.exit.i343.if.then21_crit_edge, label %while.body.lr.ph.i346

LZ4HC_Insert.exit.i343.if.then21_crit_edge:       ; preds = %LZ4HC_Insert.exit.i343
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

while.body.lr.ph.i346:                            ; preds = %LZ4HC_Insert.exit.i343
  %add.ptr29.i = getelementptr i8, ptr %add.ptr16, i32 4
  %cmp59.i.i344 = icmp ugt ptr %add.ptr.i128.i, %add.ptr29.i
  %sub.ptr.rhs.cast.i226.i = ptrtoint ptr %add.ptr29.i to i32
  br label %while.body.i348

while.body.i348:                                  ; preds = %if.end121.i.while.body.i348_crit_edge, %while.body.lr.ph.i346
  %start2.2 = phi ptr [ %start2.1, %while.body.lr.ph.i346 ], [ %start2.3, %if.end121.i.while.body.i348_crit_edge ]
  %ref2.2 = phi ptr [ %ref2.1, %while.body.lr.ph.i346 ], [ %ref2.3, %if.end121.i.while.body.i348_crit_edge ]
  %nbAttempts.0323.i = phi i32 [ %shl, %while.body.lr.ph.i346 ], [ %dec.i347, %if.end121.i.while.body.i348_crit_edge ]
  %matchIndex.0320.i = phi i32 [ %77, %while.body.lr.ph.i346 ], [ %sub125.i, %if.end121.i.while.body.i348_crit_edge ]
  %longest.addr.0319.i = phi i32 [ %ml.0, %while.body.lr.ph.i346 ], [ %longest.addr.5.i, %if.end121.i.while.body.i348_crit_edge ]
  %dec.i347 = add i32 %nbAttempts.0323.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %matchIndex.0320.i)
  %cmp15.not.i = icmp ugt i32 %61, %matchIndex.0320.i
  br i1 %cmp15.not.i, label %if.else.i384, label %if.then.i349

if.then.i349:                                     ; preds = %while.body.i348
  %add.ptr16.i = getelementptr i8, ptr %59, i32 %matchIndex.0320.i
  %add.ptr17.i = getelementptr i8, ptr %ip.1, i32 %longest.addr.0319.i
  %78 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr17.i, align 1
  %add.ptr18.i = getelementptr i8, ptr %add.ptr16.i, i32 %sub.ptr.sub13.neg.i
  %add.ptr19.i = getelementptr i8, ptr %add.ptr18.i, i32 %longest.addr.0319.i
  %80 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr19.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %81)
  %cmp21.i = icmp eq i8 %79, %81
  br i1 %cmp21.i, label %if.then23.i, label %if.then.i349.if.end121.i_crit_edge

if.then.i349.if.end121.i_crit_edge:               ; preds = %if.then.i349
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i

if.then23.i:                                      ; preds = %if.then.i349
  %82 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %add.ptr16.val.i = load i32, ptr %add.ptr16.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr16.val.i, i32 %ip.val219.i)
  %cmp26.i = icmp eq i32 %add.ptr16.val.i, %ip.val219.i
  br i1 %cmp26.i, label %if.then28.i, label %if.then23.i.if.end121.i_crit_edge

if.then23.i.if.end121.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i

if.then28.i:                                      ; preds = %if.then23.i
  %add.ptr30.i = getelementptr i8, ptr %add.ptr16.i, i32 4
  br i1 %cmp59.i.i344, label %if.then28.i.while.body.i221.i_crit_edge, label %if.then28.i.while.end.i.i364_crit_edge, !prof !22

if.then28.i.while.end.i.i364_crit_edge:           ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i364

if.then28.i.while.body.i221.i_crit_edge:          ; preds = %if.then28.i
  br label %while.body.i221.i

while.body.i221.i:                                ; preds = %cleanup.i.i360.while.body.i221.i_crit_edge, %if.then28.i.while.body.i221.i_crit_edge
  %pMatch.addr.061.i.i350 = phi ptr [ %add.ptr5.i.i359, %cleanup.i.i360.while.body.i221.i_crit_edge ], [ %add.ptr30.i, %if.then28.i.while.body.i221.i_crit_edge ]
  %pIn.addr.060.i.i351 = phi ptr [ %add.ptr4.i.i358, %cleanup.i.i360.while.body.i221.i_crit_edge ], [ %add.ptr29.i, %if.then28.i.while.body.i221.i_crit_edge ]
  %83 = ptrtoint ptr %pMatch.addr.061.i.i350 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %pMatch.addr.0.val.i.i352 = load i32, ptr %pMatch.addr.061.i.i350, align 1
  %84 = ptrtoint ptr %pIn.addr.060.i.i351 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %pIn.addr.0.val.i.i353 = load i32, ptr %pIn.addr.060.i.i351, align 1
  %xor.i.i354 = xor i32 %pIn.addr.0.val.i.i353, %pMatch.addr.0.val.i.i352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i354)
  %tobool3.not.i.i355 = icmp eq i32 %xor.i.i354, 0
  br i1 %tobool3.not.i.i355, label %cleanup.i.i360, label %cleanup.thread.i.i357

cleanup.thread.i.i357:                            ; preds = %while.body.i221.i
  call void @__sanitizer_cov_trace_pc() #6
  %85 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i354, i1 true) #4, !range !23
  %shr.i.i222.i = lshr i32 %85, 3
  %add.ptr7.i.i356 = getelementptr i8, ptr %pIn.addr.060.i.i351, i32 %shr.i.i222.i
  br label %LZ4_count.exit.i380

cleanup.i.i360:                                   ; preds = %while.body.i221.i
  %add.ptr4.i.i358 = getelementptr i8, ptr %pIn.addr.060.i.i351, i32 4
  %add.ptr5.i.i359 = getelementptr i8, ptr %pMatch.addr.061.i.i350, i32 4
  %cmp.i223.i = icmp ult ptr %add.ptr4.i.i358, %add.ptr.i128.i
  br i1 %cmp.i223.i, label %cleanup.i.i360.while.body.i221.i_crit_edge, label %cleanup.i.i360.while.end.i.i364_crit_edge, !prof !22

cleanup.i.i360.while.end.i.i364_crit_edge:        ; preds = %cleanup.i.i360
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i364

cleanup.i.i360.while.body.i221.i_crit_edge:       ; preds = %cleanup.i.i360
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i221.i

while.end.i.i364:                                 ; preds = %cleanup.i.i360.while.end.i.i364_crit_edge, %if.then28.i.while.end.i.i364_crit_edge
  %pIn.addr.0.lcssa.i.i361 = phi ptr [ %add.ptr29.i, %if.then28.i.while.end.i.i364_crit_edge ], [ %add.ptr4.i.i358, %cleanup.i.i360.while.end.i.i364_crit_edge ]
  %pMatch.addr.0.lcssa.i.i362 = phi ptr [ %add.ptr30.i, %if.then28.i.while.end.i.i364_crit_edge ], [ %add.ptr5.i.i359, %cleanup.i.i360.while.end.i.i364_crit_edge ]
  %cmp9.i.i363 = icmp ult ptr %pIn.addr.0.lcssa.i.i361, %add.ptr8.i.i
  br i1 %cmp9.i.i363, label %land.lhs.true.i.i368, label %while.end.i.i364.if.end18.i.i375_crit_edge

while.end.i.i364.if.end18.i.i375_crit_edge:       ; preds = %while.end.i.i364
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i375

land.lhs.true.i.i368:                             ; preds = %while.end.i.i364
  %86 = ptrtoint ptr %pMatch.addr.0.lcssa.i.i362 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %pMatch.addr.0.val53.i.i365 = load i16, ptr %pMatch.addr.0.lcssa.i.i362, align 1
  %87 = ptrtoint ptr %pIn.addr.0.lcssa.i.i361 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %pIn.addr.0.val52.i.i366 = load i16, ptr %pIn.addr.0.lcssa.i.i361, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i.i365, i16 %pIn.addr.0.val52.i.i366)
  %cmp13.i.i367 = icmp eq i16 %pMatch.addr.0.val53.i.i365, %pIn.addr.0.val52.i.i366
  br i1 %cmp13.i.i367, label %if.then15.i.i371, label %land.lhs.true.i.i368.if.end18.i.i375_crit_edge

land.lhs.true.i.i368.if.end18.i.i375_crit_edge:   ; preds = %land.lhs.true.i.i368
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i375

if.then15.i.i371:                                 ; preds = %land.lhs.true.i.i368
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i.i369 = getelementptr i8, ptr %pIn.addr.0.lcssa.i.i361, i32 2
  %add.ptr17.i.i370 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i.i362, i32 2
  br label %if.end18.i.i375

if.end18.i.i375:                                  ; preds = %if.then15.i.i371, %land.lhs.true.i.i368.if.end18.i.i375_crit_edge, %while.end.i.i364.if.end18.i.i375_crit_edge
  %pIn.addr.2.i.i372 = phi ptr [ %add.ptr16.i.i369, %if.then15.i.i371 ], [ %pIn.addr.0.lcssa.i.i361, %land.lhs.true.i.i368.if.end18.i.i375_crit_edge ], [ %pIn.addr.0.lcssa.i.i361, %while.end.i.i364.if.end18.i.i375_crit_edge ]
  %pMatch.addr.2.i.i373 = phi ptr [ %add.ptr17.i.i370, %if.then15.i.i371 ], [ %pMatch.addr.0.lcssa.i.i362, %land.lhs.true.i.i368.if.end18.i.i375_crit_edge ], [ %pMatch.addr.0.lcssa.i.i362, %while.end.i.i364.if.end18.i.i375_crit_edge ]
  %cmp19.i.i374 = icmp ult ptr %pIn.addr.2.i.i372, %add.ptr2
  br i1 %cmp19.i.i374, label %land.lhs.true21.i.i378, label %if.end18.i.i375.LZ4_count.exit.i380_crit_edge

if.end18.i.i375.LZ4_count.exit.i380_crit_edge:    ; preds = %if.end18.i.i375
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit.i380

land.lhs.true21.i.i378:                           ; preds = %if.end18.i.i375
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %pMatch.addr.2.i.i373 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pMatch.addr.2.i.i373, align 1
  %90 = ptrtoint ptr %pIn.addr.2.i.i372 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pIn.addr.2.i.i372, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp24.i224.i = icmp eq i8 %89, %91
  %spec.select.idx.i.i376 = zext i1 %cmp24.i224.i to i32
  %spec.select.i.i377 = getelementptr i8, ptr %pIn.addr.2.i.i372, i32 %spec.select.idx.i.i376
  br label %LZ4_count.exit.i380

LZ4_count.exit.i380:                              ; preds = %land.lhs.true21.i.i378, %if.end18.i.i375.LZ4_count.exit.i380_crit_edge, %cleanup.thread.i.i357
  %add.ptr7.sink.i.i379 = phi ptr [ %add.ptr7.i.i356, %cleanup.thread.i.i357 ], [ %pIn.addr.2.i.i372, %if.end18.i.i375.LZ4_count.exit.i380_crit_edge ], [ %spec.select.i.i377, %land.lhs.true21.i.i378 ]
  %sub.ptr.lhs.cast.i225.i = ptrtoint ptr %add.ptr7.sink.i.i379 to i32
  br label %while.cond33.i

while.cond33.i:                                   ; preds = %land.rhs40.i.while.cond33.i_crit_edge, %LZ4_count.exit.i380
  %back.0.i = phi i32 [ 0, %LZ4_count.exit.i380 ], [ %sub41.i, %land.rhs40.i.while.cond33.i_crit_edge ]
  %add.ptr34.i = getelementptr i8, ptr %add.ptr16, i32 %back.0.i
  %cmp35.i381 = icmp ugt ptr %add.ptr34.i, %ip.1
  %add.ptr37.i = getelementptr i8, ptr %add.ptr16.i, i32 %back.0.i
  %cmp38.i = icmp ugt ptr %add.ptr37.i, %add.ptr.i317
  %or.cond215.i = select i1 %cmp35.i381, i1 %cmp38.i, i1 false
  br i1 %or.cond215.i, label %land.rhs40.i, label %while.cond33.i.while.end.i_crit_edge

while.cond33.i.while.end.i_crit_edge:             ; preds = %while.cond33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

land.rhs40.i:                                     ; preds = %while.cond33.i
  %sub41.i = add i32 %back.0.i, -1
  %arrayidx42.i = getelementptr i8, ptr %add.ptr16, i32 %sub41.i
  %92 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx42.i, align 1
  %arrayidx45.i = getelementptr i8, ptr %add.ptr16.i, i32 %sub41.i
  %94 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx45.i, align 1
  %cmp47.i = icmp eq i8 %93, %95
  br i1 %cmp47.i, label %land.rhs40.i.while.cond33.i_crit_edge, label %land.rhs40.i.while.end.i_crit_edge

land.rhs40.i.while.end.i_crit_edge:               ; preds = %land.rhs40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

land.rhs40.i.while.cond33.i_crit_edge:            ; preds = %land.rhs40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond33.i

while.end.i:                                      ; preds = %land.rhs40.i.while.end.i_crit_edge, %while.cond33.i.while.end.i_crit_edge
  %96 = add i32 %sub.ptr.lhs.cast.i225.i, 4
  %97 = add i32 %back.0.i, %sub.ptr.rhs.cast.i226.i
  %sub52.i = sub i32 %96, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52.i, i32 %longest.addr.0319.i)
  %cmp53.i382 = icmp sgt i32 %sub52.i, %longest.addr.0319.i
  br i1 %cmp53.i382, label %while.end.i.if.end121.sink.split.i_crit_edge, label %while.end.i.if.end121.i_crit_edge

while.end.i.if.end121.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i

while.end.i.if.end121.sink.split.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.sink.split.i

if.else.i384:                                     ; preds = %while.body.i348
  %add.ptr61.i = getelementptr i8, ptr %65, i32 %matchIndex.0320.i
  %98 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %add.ptr61.val.i = load i32, ptr %add.ptr61.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr61.val.i, i32 %ip.val219.i)
  %cmp64.i = icmp eq i32 %add.ptr61.val.i, %ip.val219.i
  br i1 %cmp64.i, label %if.then66.i, label %if.else.i384.if.end121.i_crit_edge

if.else.i384.if.end121.i_crit_edge:               ; preds = %if.else.i384
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i

if.then66.i:                                      ; preds = %if.else.i384
  %sub69.i = sub i32 %61, %matchIndex.0320.i
  %add.ptr70.i = getelementptr i8, ptr %add.ptr16, i32 %sub69.i
  %cmp71.i = icmp ugt ptr %add.ptr70.i, %add.ptr2
  %spec.select.i385 = select i1 %cmp71.i, ptr %add.ptr2, ptr %add.ptr70.i
  %add.ptr76.i = getelementptr i8, ptr %add.ptr61.i, i32 4
  %add.ptr.i228.i = getelementptr i8, ptr %spec.select.i385, i32 -3
  %cmp59.i229.i = icmp ugt ptr %add.ptr.i228.i, %add.ptr29.i
  br i1 %cmp59.i229.i, label %if.then66.i.while.body.i236.i_crit_edge, label %if.then66.i.while.end.i248.i_crit_edge, !prof !22

if.then66.i.while.end.i248.i_crit_edge:           ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i248.i

if.then66.i.while.body.i236.i_crit_edge:          ; preds = %if.then66.i
  br label %while.body.i236.i

while.body.i236.i:                                ; preds = %cleanup.i243.i.while.body.i236.i_crit_edge, %if.then66.i.while.body.i236.i_crit_edge
  %pMatch.addr.061.i230.i = phi ptr [ %add.ptr5.i241.i, %cleanup.i243.i.while.body.i236.i_crit_edge ], [ %add.ptr76.i, %if.then66.i.while.body.i236.i_crit_edge ]
  %pIn.addr.060.i231.i = phi ptr [ %add.ptr4.i240.i, %cleanup.i243.i.while.body.i236.i_crit_edge ], [ %add.ptr29.i, %if.then66.i.while.body.i236.i_crit_edge ]
  %99 = ptrtoint ptr %pMatch.addr.061.i230.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %pMatch.addr.0.val.i232.i = load i32, ptr %pMatch.addr.061.i230.i, align 1
  %100 = ptrtoint ptr %pIn.addr.060.i231.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %pIn.addr.0.val.i233.i = load i32, ptr %pIn.addr.060.i231.i, align 1
  %xor.i234.i = xor i32 %pIn.addr.0.val.i233.i, %pMatch.addr.0.val.i232.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i234.i)
  %tobool3.not.i235.i = icmp eq i32 %xor.i234.i, 0
  br i1 %tobool3.not.i235.i, label %cleanup.i243.i, label %cleanup.thread.i239.i

cleanup.thread.i239.i:                            ; preds = %while.body.i236.i
  call void @__sanitizer_cov_trace_pc() #6
  %101 = tail call i32 @llvm.ctlz.i32(i32 %xor.i234.i, i1 true) #4, !range !23
  %shr.i.i237.i = lshr i32 %101, 3
  %add.ptr7.i238.i = getelementptr i8, ptr %pIn.addr.060.i231.i, i32 %shr.i.i237.i
  br label %LZ4_count.exit268.i

cleanup.i243.i:                                   ; preds = %while.body.i236.i
  %add.ptr4.i240.i = getelementptr i8, ptr %pIn.addr.060.i231.i, i32 4
  %add.ptr5.i241.i = getelementptr i8, ptr %pMatch.addr.061.i230.i, i32 4
  %cmp.i242.i = icmp ult ptr %add.ptr4.i240.i, %add.ptr.i228.i
  br i1 %cmp.i242.i, label %cleanup.i243.i.while.body.i236.i_crit_edge, label %cleanup.i243.i.while.end.i248.i_crit_edge, !prof !22

cleanup.i243.i.while.end.i248.i_crit_edge:        ; preds = %cleanup.i243.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i248.i

cleanup.i243.i.while.body.i236.i_crit_edge:       ; preds = %cleanup.i243.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i236.i

while.end.i248.i:                                 ; preds = %cleanup.i243.i.while.end.i248.i_crit_edge, %if.then66.i.while.end.i248.i_crit_edge
  %pIn.addr.0.lcssa.i244.i = phi ptr [ %add.ptr29.i, %if.then66.i.while.end.i248.i_crit_edge ], [ %add.ptr4.i240.i, %cleanup.i243.i.while.end.i248.i_crit_edge ]
  %pMatch.addr.0.lcssa.i245.i = phi ptr [ %add.ptr76.i, %if.then66.i.while.end.i248.i_crit_edge ], [ %add.ptr5.i241.i, %cleanup.i243.i.while.end.i248.i_crit_edge ]
  %add.ptr8.i246.i = getelementptr i8, ptr %spec.select.i385, i32 -1
  %cmp9.i247.i = icmp ult ptr %pIn.addr.0.lcssa.i244.i, %add.ptr8.i246.i
  br i1 %cmp9.i247.i, label %land.lhs.true.i252.i, label %while.end.i248.i.if.end18.i259.i_crit_edge

while.end.i248.i.if.end18.i259.i_crit_edge:       ; preds = %while.end.i248.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i259.i

land.lhs.true.i252.i:                             ; preds = %while.end.i248.i
  %102 = ptrtoint ptr %pMatch.addr.0.lcssa.i245.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %pMatch.addr.0.val53.i249.i = load i16, ptr %pMatch.addr.0.lcssa.i245.i, align 1
  %103 = ptrtoint ptr %pIn.addr.0.lcssa.i244.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %pIn.addr.0.val52.i250.i = load i16, ptr %pIn.addr.0.lcssa.i244.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i249.i, i16 %pIn.addr.0.val52.i250.i)
  %cmp13.i251.i = icmp eq i16 %pMatch.addr.0.val53.i249.i, %pIn.addr.0.val52.i250.i
  br i1 %cmp13.i251.i, label %if.then15.i255.i, label %land.lhs.true.i252.i.if.end18.i259.i_crit_edge

land.lhs.true.i252.i.if.end18.i259.i_crit_edge:   ; preds = %land.lhs.true.i252.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i259.i

if.then15.i255.i:                                 ; preds = %land.lhs.true.i252.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i253.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i244.i, i32 2
  %add.ptr17.i254.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i245.i, i32 2
  br label %if.end18.i259.i

if.end18.i259.i:                                  ; preds = %if.then15.i255.i, %land.lhs.true.i252.i.if.end18.i259.i_crit_edge, %while.end.i248.i.if.end18.i259.i_crit_edge
  %pIn.addr.2.i256.i = phi ptr [ %add.ptr16.i253.i, %if.then15.i255.i ], [ %pIn.addr.0.lcssa.i244.i, %land.lhs.true.i252.i.if.end18.i259.i_crit_edge ], [ %pIn.addr.0.lcssa.i244.i, %while.end.i248.i.if.end18.i259.i_crit_edge ]
  %pMatch.addr.2.i257.i = phi ptr [ %add.ptr17.i254.i, %if.then15.i255.i ], [ %pMatch.addr.0.lcssa.i245.i, %land.lhs.true.i252.i.if.end18.i259.i_crit_edge ], [ %pMatch.addr.0.lcssa.i245.i, %while.end.i248.i.if.end18.i259.i_crit_edge ]
  %cmp19.i258.i = icmp ult ptr %pIn.addr.2.i256.i, %spec.select.i385
  br i1 %cmp19.i258.i, label %land.lhs.true21.i263.i, label %if.end18.i259.i.LZ4_count.exit268.i_crit_edge

if.end18.i259.i.LZ4_count.exit268.i_crit_edge:    ; preds = %if.end18.i259.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit268.i

land.lhs.true21.i263.i:                           ; preds = %if.end18.i259.i
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %pMatch.addr.2.i257.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pMatch.addr.2.i257.i, align 1
  %106 = ptrtoint ptr %pIn.addr.2.i256.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pIn.addr.2.i256.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp24.i260.i = icmp eq i8 %105, %107
  %spec.select.idx.i261.i = zext i1 %cmp24.i260.i to i32
  %spec.select.i262.i = getelementptr i8, ptr %pIn.addr.2.i256.i, i32 %spec.select.idx.i261.i
  br label %LZ4_count.exit268.i

LZ4_count.exit268.i:                              ; preds = %land.lhs.true21.i263.i, %if.end18.i259.i.LZ4_count.exit268.i_crit_edge, %cleanup.thread.i239.i
  %add.ptr7.sink.i264.i = phi ptr [ %add.ptr7.i238.i, %cleanup.thread.i239.i ], [ %pIn.addr.2.i256.i, %if.end18.i259.i.LZ4_count.exit268.i_crit_edge ], [ %spec.select.i262.i, %land.lhs.true21.i263.i ]
  %sub.ptr.lhs.cast.i265.i = ptrtoint ptr %add.ptr7.sink.i264.i to i32
  %sub.ptr.sub.i267.i = sub i32 %sub.ptr.lhs.cast.i265.i, %sub.ptr.rhs.cast.i226.i
  %add78.i = add i32 %sub.ptr.sub.i267.i, 4
  %add.ptr79.i = getelementptr i8, ptr %add.ptr16, i32 %add78.i
  %cmp80.i = icmp eq ptr %add.ptr79.i, %spec.select.i385
  %cmp83.i = icmp ult ptr %add.ptr70.i, %add.ptr2
  %or.cond216.i = and i1 %cmp83.i, %cmp80.i
  br i1 %or.cond216.i, label %if.then85.i, label %LZ4_count.exit268.i.if.end90.i_crit_edge

LZ4_count.exit268.i.if.end90.i_crit_edge:         ; preds = %LZ4_count.exit268.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then85.i:                                      ; preds = %LZ4_count.exit268.i
  %cmp59.i270.i = icmp ugt ptr %add.ptr.i128.i, %spec.select.i385
  br i1 %cmp59.i270.i, label %if.then85.i.while.body.i277.i_crit_edge, label %if.then85.i.while.end.i289.i_crit_edge, !prof !22

if.then85.i.while.end.i289.i_crit_edge:           ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i289.i

if.then85.i.while.body.i277.i_crit_edge:          ; preds = %if.then85.i
  br label %while.body.i277.i

while.body.i277.i:                                ; preds = %cleanup.i284.i.while.body.i277.i_crit_edge, %if.then85.i.while.body.i277.i_crit_edge
  %pMatch.addr.061.i271.i = phi ptr [ %add.ptr5.i282.i, %cleanup.i284.i.while.body.i277.i_crit_edge ], [ %add.ptr.i317, %if.then85.i.while.body.i277.i_crit_edge ]
  %pIn.addr.060.i272.i = phi ptr [ %add.ptr4.i281.i, %cleanup.i284.i.while.body.i277.i_crit_edge ], [ %spec.select.i385, %if.then85.i.while.body.i277.i_crit_edge ]
  %108 = ptrtoint ptr %pMatch.addr.061.i271.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %pMatch.addr.0.val.i273.i = load i32, ptr %pMatch.addr.061.i271.i, align 1
  %109 = ptrtoint ptr %pIn.addr.060.i272.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %pIn.addr.0.val.i274.i = load i32, ptr %pIn.addr.060.i272.i, align 1
  %xor.i275.i = xor i32 %pIn.addr.0.val.i274.i, %pMatch.addr.0.val.i273.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i275.i)
  %tobool3.not.i276.i = icmp eq i32 %xor.i275.i, 0
  br i1 %tobool3.not.i276.i, label %cleanup.i284.i, label %cleanup.thread.i280.i

cleanup.thread.i280.i:                            ; preds = %while.body.i277.i
  call void @__sanitizer_cov_trace_pc() #6
  %110 = tail call i32 @llvm.ctlz.i32(i32 %xor.i275.i, i1 true) #4, !range !23
  %shr.i.i278.i = lshr i32 %110, 3
  %add.ptr7.i279.i = getelementptr i8, ptr %pIn.addr.060.i272.i, i32 %shr.i.i278.i
  br label %LZ4_count.exit309.i

cleanup.i284.i:                                   ; preds = %while.body.i277.i
  %add.ptr4.i281.i = getelementptr i8, ptr %pIn.addr.060.i272.i, i32 4
  %add.ptr5.i282.i = getelementptr i8, ptr %pMatch.addr.061.i271.i, i32 4
  %cmp.i283.i = icmp ult ptr %add.ptr4.i281.i, %add.ptr.i128.i
  br i1 %cmp.i283.i, label %cleanup.i284.i.while.body.i277.i_crit_edge, label %cleanup.i284.i.while.end.i289.i_crit_edge, !prof !22

cleanup.i284.i.while.end.i289.i_crit_edge:        ; preds = %cleanup.i284.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i289.i

cleanup.i284.i.while.body.i277.i_crit_edge:       ; preds = %cleanup.i284.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i277.i

while.end.i289.i:                                 ; preds = %cleanup.i284.i.while.end.i289.i_crit_edge, %if.then85.i.while.end.i289.i_crit_edge
  %pIn.addr.0.lcssa.i285.i = phi ptr [ %spec.select.i385, %if.then85.i.while.end.i289.i_crit_edge ], [ %add.ptr4.i281.i, %cleanup.i284.i.while.end.i289.i_crit_edge ]
  %pMatch.addr.0.lcssa.i286.i = phi ptr [ %add.ptr.i317, %if.then85.i.while.end.i289.i_crit_edge ], [ %add.ptr5.i282.i, %cleanup.i284.i.while.end.i289.i_crit_edge ]
  %cmp9.i288.i = icmp ult ptr %pIn.addr.0.lcssa.i285.i, %add.ptr8.i.i
  br i1 %cmp9.i288.i, label %land.lhs.true.i293.i, label %while.end.i289.i.if.end18.i300.i_crit_edge

while.end.i289.i.if.end18.i300.i_crit_edge:       ; preds = %while.end.i289.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i300.i

land.lhs.true.i293.i:                             ; preds = %while.end.i289.i
  %111 = ptrtoint ptr %pMatch.addr.0.lcssa.i286.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %pMatch.addr.0.val53.i290.i = load i16, ptr %pMatch.addr.0.lcssa.i286.i, align 1
  %112 = ptrtoint ptr %pIn.addr.0.lcssa.i285.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %pIn.addr.0.val52.i291.i = load i16, ptr %pIn.addr.0.lcssa.i285.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i290.i, i16 %pIn.addr.0.val52.i291.i)
  %cmp13.i292.i = icmp eq i16 %pMatch.addr.0.val53.i290.i, %pIn.addr.0.val52.i291.i
  br i1 %cmp13.i292.i, label %if.then15.i296.i, label %land.lhs.true.i293.i.if.end18.i300.i_crit_edge

land.lhs.true.i293.i.if.end18.i300.i_crit_edge:   ; preds = %land.lhs.true.i293.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i300.i

if.then15.i296.i:                                 ; preds = %land.lhs.true.i293.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i294.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i285.i, i32 2
  %add.ptr17.i295.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i286.i, i32 2
  br label %if.end18.i300.i

if.end18.i300.i:                                  ; preds = %if.then15.i296.i, %land.lhs.true.i293.i.if.end18.i300.i_crit_edge, %while.end.i289.i.if.end18.i300.i_crit_edge
  %pIn.addr.2.i297.i = phi ptr [ %add.ptr16.i294.i, %if.then15.i296.i ], [ %pIn.addr.0.lcssa.i285.i, %land.lhs.true.i293.i.if.end18.i300.i_crit_edge ], [ %pIn.addr.0.lcssa.i285.i, %while.end.i289.i.if.end18.i300.i_crit_edge ]
  %pMatch.addr.2.i298.i = phi ptr [ %add.ptr17.i295.i, %if.then15.i296.i ], [ %pMatch.addr.0.lcssa.i286.i, %land.lhs.true.i293.i.if.end18.i300.i_crit_edge ], [ %pMatch.addr.0.lcssa.i286.i, %while.end.i289.i.if.end18.i300.i_crit_edge ]
  %cmp19.i299.i = icmp ult ptr %pIn.addr.2.i297.i, %add.ptr2
  br i1 %cmp19.i299.i, label %land.lhs.true21.i304.i, label %if.end18.i300.i.LZ4_count.exit309.i_crit_edge

if.end18.i300.i.LZ4_count.exit309.i_crit_edge:    ; preds = %if.end18.i300.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit309.i

land.lhs.true21.i304.i:                           ; preds = %if.end18.i300.i
  call void @__sanitizer_cov_trace_pc() #6
  %113 = ptrtoint ptr %pMatch.addr.2.i298.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %pMatch.addr.2.i298.i, align 1
  %115 = ptrtoint ptr %pIn.addr.2.i297.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %pIn.addr.2.i297.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %116)
  %cmp24.i301.i = icmp eq i8 %114, %116
  %spec.select.idx.i302.i = zext i1 %cmp24.i301.i to i32
  %spec.select.i303.i = getelementptr i8, ptr %pIn.addr.2.i297.i, i32 %spec.select.idx.i302.i
  br label %LZ4_count.exit309.i

LZ4_count.exit309.i:                              ; preds = %land.lhs.true21.i304.i, %if.end18.i300.i.LZ4_count.exit309.i_crit_edge, %cleanup.thread.i280.i
  %add.ptr7.sink.i305.i = phi ptr [ %add.ptr7.i279.i, %cleanup.thread.i280.i ], [ %pIn.addr.2.i297.i, %if.end18.i300.i.LZ4_count.exit309.i_crit_edge ], [ %spec.select.i303.i, %land.lhs.true21.i304.i ]
  %sub.ptr.lhs.cast.i306.i = ptrtoint ptr %add.ptr7.sink.i305.i to i32
  %sub.ptr.rhs.cast.i307.i = ptrtoint ptr %spec.select.i385 to i32
  %sub.ptr.sub.i308.i = sub i32 %add78.i, %sub.ptr.rhs.cast.i307.i
  %add89.i = add i32 %sub.ptr.sub.i308.i, %sub.ptr.lhs.cast.i306.i
  br label %if.end90.i

if.end90.i:                                       ; preds = %LZ4_count.exit309.i, %LZ4_count.exit268.i.if.end90.i_crit_edge
  %mlt67.0.i = phi i32 [ %add89.i, %LZ4_count.exit309.i ], [ %add78.i, %LZ4_count.exit268.i.if.end90.i_crit_edge ]
  br label %while.cond91.i

while.cond91.i:                                   ; preds = %land.rhs99.i.while.cond91.i_crit_edge, %if.end90.i
  %back68.0.i = phi i32 [ 0, %if.end90.i ], [ %sub100.i, %land.rhs99.i.while.cond91.i_crit_edge ]
  %add.ptr92.i = getelementptr i8, ptr %add.ptr16, i32 %back68.0.i
  %cmp93.i = icmp ugt ptr %add.ptr92.i, %ip.1
  %add96.i = add i32 %back68.0.i, %matchIndex.0320.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add96.i, i32 %cond.i324)
  %cmp97.i = icmp ugt i32 %add96.i, %cond.i324
  %or.cond217.i = select i1 %cmp93.i, i1 %cmp97.i, i1 false
  br i1 %or.cond217.i, label %land.rhs99.i, label %while.cond91.i.while.end111.i_crit_edge

while.cond91.i.while.end111.i_crit_edge:          ; preds = %while.cond91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end111.i

land.rhs99.i:                                     ; preds = %while.cond91.i
  %sub100.i = add i32 %back68.0.i, -1
  %arrayidx101.i = getelementptr i8, ptr %add.ptr16, i32 %sub100.i
  %117 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx101.i, align 1
  %arrayidx104.i = getelementptr i8, ptr %add.ptr61.i, i32 %sub100.i
  %119 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx104.i, align 1
  %cmp106.i = icmp eq i8 %118, %120
  br i1 %cmp106.i, label %land.rhs99.i.while.cond91.i_crit_edge, label %land.rhs99.i.while.end111.i_crit_edge

land.rhs99.i.while.end111.i_crit_edge:            ; preds = %land.rhs99.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end111.i

land.rhs99.i.while.cond91.i_crit_edge:            ; preds = %land.rhs99.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond91.i

while.end111.i:                                   ; preds = %land.rhs99.i.while.end111.i_crit_edge, %while.cond91.i.while.end111.i_crit_edge
  %sub112.i = sub i32 %mlt67.0.i, %back68.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub112.i, i32 %longest.addr.0319.i)
  %cmp113.i = icmp sgt i32 %sub112.i, %longest.addr.0319.i
  br i1 %cmp113.i, label %if.then115.i, label %while.end111.i.if.end121.i_crit_edge

while.end111.i.if.end121.i_crit_edge:             ; preds = %while.end111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i

if.then115.i:                                     ; preds = %while.end111.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr116.i = getelementptr i8, ptr %59, i32 %matchIndex.0320.i
  %add.ptr117.i = getelementptr i8, ptr %add.ptr116.i, i32 %back68.0.i
  br label %if.end121.sink.split.i

if.end121.sink.split.i:                           ; preds = %if.then115.i, %while.end.i.if.end121.sink.split.i_crit_edge
  %add.ptr117.sink.i = phi ptr [ %add.ptr117.i, %if.then115.i ], [ %add.ptr37.i, %while.end.i.if.end121.sink.split.i_crit_edge ]
  %add.ptr92.lcssa.sink.i = phi ptr [ %add.ptr92.i, %if.then115.i ], [ %add.ptr34.i, %while.end.i.if.end121.sink.split.i_crit_edge ]
  %longest.addr.5.ph.i = phi i32 [ %sub112.i, %if.then115.i ], [ %sub52.i, %while.end.i.if.end121.sink.split.i_crit_edge ]
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end121.sink.split.i, %while.end111.i.if.end121.i_crit_edge, %if.else.i384.if.end121.i_crit_edge, %while.end.i.if.end121.i_crit_edge, %if.then23.i.if.end121.i_crit_edge, %if.then.i349.if.end121.i_crit_edge
  %start2.3 = phi ptr [ %add.ptr92.lcssa.sink.i, %if.end121.sink.split.i ], [ %start2.2, %while.end111.i.if.end121.i_crit_edge ], [ %start2.2, %if.else.i384.if.end121.i_crit_edge ], [ %start2.2, %while.end.i.if.end121.i_crit_edge ], [ %start2.2, %if.then23.i.if.end121.i_crit_edge ], [ %start2.2, %if.then.i349.if.end121.i_crit_edge ]
  %ref2.3 = phi ptr [ %add.ptr117.sink.i, %if.end121.sink.split.i ], [ %ref2.2, %while.end111.i.if.end121.i_crit_edge ], [ %ref2.2, %if.else.i384.if.end121.i_crit_edge ], [ %ref2.2, %while.end.i.if.end121.i_crit_edge ], [ %ref2.2, %if.then23.i.if.end121.i_crit_edge ], [ %ref2.2, %if.then.i349.if.end121.i_crit_edge ]
  %longest.addr.5.i = phi i32 [ %longest.addr.5.ph.i, %if.end121.sink.split.i ], [ %longest.addr.0319.i, %while.end111.i.if.end121.i_crit_edge ], [ %longest.addr.0319.i, %if.else.i384.if.end121.i_crit_edge ], [ %longest.addr.0319.i, %while.end.i.if.end121.i_crit_edge ], [ %longest.addr.0319.i, %if.then23.i.if.end121.i_crit_edge ], [ %longest.addr.0319.i, %if.then.i349.if.end121.i_crit_edge ]
  %idxprom.i386 = and i32 %matchIndex.0320.i, 65535
  %arrayidx123.i = getelementptr i16, ptr %chainTable1.i, i32 %idxprom.i386
  %121 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx123.i, align 2
  %conv124.i = zext i16 %122 to i32
  %sub125.i = sub i32 %matchIndex.0320.i, %conv124.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub125.i, i32 %cond.i324)
  %cmp14.not.i = icmp ult i32 %sub125.i, %cond.i324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i347)
  %tobool.not.i387 = icmp eq i32 %dec.i347, 0
  %or.cond.i388 = select i1 %cmp14.not.i, i1 true, i1 %tobool.not.i387
  br i1 %or.cond.i388, label %if.end19, label %if.end121.i.while.body.i348_crit_edge

if.end121.i.while.body.i348_crit_edge:            ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i348

if.end19:                                         ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_cmp4(i32 %longest.addr.5.i, i32 %ml.0)
  %cmp20 = icmp eq i32 %longest.addr.5.i, %ml.0
  br i1 %cmp20, label %if.end19.if.then21_crit_edge, label %if.end26

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %LZ4HC_Insert.exit.i343.if.then21_crit_edge, %_Search2.if.then21_crit_edge
  %ref2.51102 = phi ptr [ %ref2.1, %_Search2.if.then21_crit_edge ], [ %ref2.3, %if.end19.if.then21_crit_edge ], [ %ref2.1, %LZ4HC_Insert.exit.i343.if.then21_crit_edge ]
  %start2.51100 = phi ptr [ %start2.1, %_Search2.if.then21_crit_edge ], [ %start2.3, %if.end19.if.then21_crit_edge ], [ %start2.1, %LZ4HC_Insert.exit.i343.if.then21_crit_edge ]
  %sub.ptr.rhs.cast12.i.le = ptrtoint ptr %ip.1 to i32
  %sub.ptr.rhs.cast.i390 = ptrtoint ptr %anchor.1.ph to i32
  %sub.ptr.sub.i391 = sub i32 %sub.ptr.rhs.cast12.i.le, %sub.ptr.rhs.cast.i390
  %incdec.ptr.i = getelementptr i8, ptr %op.1.ph, i32 1
  %shr.i = ashr i32 %sub.ptr.sub.i391, 8
  %add.ptr.i393 = getelementptr i8, ptr %op.1.ph, i32 9
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i393, i32 %shr.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %sub.ptr.sub.i391
  %cmp.i394 = icmp ugt ptr %add.ptr2.i, %add.ptr3
  %or.cond.i395 = select i1 %tobool.not.i892, i1 %cmp.i394, i1 false
  br i1 %or.cond.i395, label %if.then21.cleanup201_crit_edge, label %if.end.i

if.then21.cleanup201_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i391)
  %cmp3.i = icmp sgt i32 %sub.ptr.sub.i391, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i397

if.then4.i:                                       ; preds = %if.end.i
  %123 = ptrtoint ptr %op.1.ph to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -16, ptr %op.1.ph, align 1
  %sub.i396 = add nsw i32 %sub.ptr.sub.i391, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %sub.ptr.sub.i391)
  %cmp5103.i = icmp ugt i32 %sub.ptr.sub.i391, 269
  br i1 %cmp5103.i, label %for.body.i.preheader, label %if.then4.i.for.end.i_crit_edge

if.then4.i.for.end.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  %124 = add i32 %sub.ptr.rhs.cast12.i.le, 239
  %umin1339 = call i32 @llvm.umin.i32(i32 %sub.i396, i32 509)
  %125 = add i32 %umin1339, %sub.ptr.rhs.cast.i390
  %126 = sub i32 %124, %125
  %127 = udiv i32 %126, 255
  %128 = add nuw nsw i32 %127, 1
  %129 = call ptr @memset(ptr %incdec.ptr.i, i32 255, i32 %128)
  %130 = add i32 %sub.ptr.rhs.cast12.i.le, -270
  %.neg1350 = mul i32 %127, -255
  %uglygep1340 = getelementptr i8, ptr %op.1.ph, i32 2
  %uglygep1342 = getelementptr i8, ptr %uglygep1340, i32 %127
  %131 = sub i32 %130, %sub.ptr.rhs.cast.i390
  %132 = add i32 %.neg1350, %131
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.preheader, %if.then4.i.for.end.i_crit_edge
  %op.3 = phi ptr [ %incdec.ptr.i, %if.then4.i.for.end.i_crit_edge ], [ %uglygep1342, %for.body.i.preheader ]
  %len.0.lcssa.i = phi i32 [ %sub.i396, %if.then4.i.for.end.i_crit_edge ], [ %132, %for.body.i.preheader ]
  %conv.i = trunc i32 %len.0.lcssa.i to i8
  %incdec.ptr8.i = getelementptr i8, ptr %op.3, i32 1
  %133 = ptrtoint ptr %op.3 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv.i, ptr %op.3, align 1
  br label %if.end10.i

if.else.i397:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub.tr.i = trunc i32 %sub.ptr.sub.i391 to i8
  %conv9.i = shl i8 %sub.ptr.sub.tr.i, 4
  %134 = ptrtoint ptr %op.1.ph to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv9.i, ptr %op.1.ph, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i397, %for.end.i
  %op.4 = phi ptr [ %incdec.ptr8.i, %for.end.i ], [ %incdec.ptr.i, %if.else.i397 ]
  %add.ptr11.i = getelementptr i8, ptr %op.4, i32 %sub.ptr.sub.i391
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end10.i
  %d.0.i.i = phi ptr [ %op.4, %if.end10.i ], [ %add.ptr.i.i398, %do.body.i.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %anchor.1.ph, %if.end10.i ], [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %135 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %136 = getelementptr i8, ptr %s.0.i.i, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %s.0.val5.i.i = load i32, ptr %136, align 1
  %138 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %139 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i398 = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i399 = icmp ult ptr %add.ptr.i.i398, %add.ptr11.i
  br i1 %cmp.i.i399, label %do.body.i.i.do.body.i.i_crit_edge, label %LZ4_wildCopy.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

LZ4_wildCopy.exit.i:                              ; preds = %do.body.i.i
  %sub.ptr.rhs.cast14.i = ptrtoint ptr %ref.4 to i32
  %sub.ptr.sub15.i = sub i32 %sub.ptr.rhs.cast12.i.le, %sub.ptr.rhs.cast14.i
  %conv16.i = trunc i32 %sub.ptr.sub15.i to i16
  %140 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #4
  %141 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %140, ptr %add.ptr11.i, align 1
  %add.ptr17.i400 = getelementptr i8, ptr %add.ptr11.i, i32 2
  %sub18.i = add i32 %ml.0, -4
  %shr21.i = ashr i32 %sub18.i, 8
  %add.ptr22.i = getelementptr i8, ptr %add.ptr17.i400, i32 6
  %add.ptr23.i401 = getelementptr i8, ptr %add.ptr22.i, i32 %shr21.i
  %cmp24.i = icmp ugt ptr %add.ptr23.i401, %add.ptr3
  %or.cond102.i = select i1 %tobool.not.i892, i1 %cmp24.i, i1 false
  br i1 %or.cond102.i, label %LZ4_wildCopy.exit.i.cleanup201_crit_edge, label %if.end27.i

LZ4_wildCopy.exit.i.cleanup201_crit_edge:         ; preds = %LZ4_wildCopy.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end27.i:                                       ; preds = %LZ4_wildCopy.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub18.i)
  %cmp28.i = icmp sgt i32 %sub18.i, 14
  %142 = ptrtoint ptr %op.1.ph to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %op.1.ph, align 1
  br i1 %cmp28.i, label %if.then30.i, label %if.else51.i

if.then30.i:                                      ; preds = %if.end27.i
  %add.i402 = add i8 %143, 15
  %144 = ptrtoint ptr %op.1.ph to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %add.i402, ptr %op.1.ph, align 1
  %sub33.i = add i32 %ml.0, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %sub33.i)
  %cmp35105.i = icmp ugt i32 %sub33.i, 509
  br i1 %cmp35105.i, label %for.body37.i.preheader, label %if.then30.i.for.end42.i_crit_edge

if.then30.i.for.end42.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42.i

for.body37.i.preheader:                           ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  %145 = add i32 %ml.0, -529
  %146 = udiv i32 %145, 510
  %147 = shl nuw nsw i32 %146, 1
  %148 = add nuw nsw i32 %147, 2
  %149 = call ptr @memset(ptr %add.ptr17.i400, i32 255, i32 %148)
  %uglygep1343 = getelementptr i8, ptr %op.4, i32 4
  %150 = add i32 %147, %sub.ptr.rhs.cast12.i.le
  %151 = sub i32 %150, %sub.ptr.rhs.cast.i390
  %uglygep1344 = getelementptr i8, ptr %uglygep1343, i32 %151
  %.neg1349 = mul nsw i32 %146, -510
  %152 = add nsw i32 %.neg1349, %145
  br label %for.end42.i

for.end42.i:                                      ; preds = %for.body37.i.preheader, %if.then30.i.for.end42.i_crit_edge
  %op.6 = phi ptr [ %add.ptr17.i400, %if.then30.i.for.end42.i_crit_edge ], [ %uglygep1344, %for.body37.i.preheader ]
  %length.0.lcssa.i = phi i32 [ %sub33.i, %if.then30.i.for.end42.i_crit_edge ], [ %152, %for.body37.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %length.0.lcssa.i)
  %cmp43.i = icmp ugt i32 %length.0.lcssa.i, 254
  br i1 %cmp43.i, label %if.then45.i, label %for.end42.i.if.end48.i_crit_edge

for.end42.i.if.end48.i_crit_edge:                 ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i

if.then45.i:                                      ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub46.i = add nsw i32 %length.0.lcssa.i, -255
  %incdec.ptr47.i = getelementptr i8, ptr %op.6, i32 1
  %153 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -1, ptr %op.6, align 1
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %for.end42.i.if.end48.i_crit_edge
  %op.7 = phi ptr [ %incdec.ptr47.i, %if.then45.i ], [ %op.6, %for.end42.i.if.end48.i_crit_edge ]
  %length.1.i = phi i32 [ %sub46.i, %if.then45.i ], [ %length.0.lcssa.i, %for.end42.i.if.end48.i_crit_edge ]
  %conv49.i = trunc i32 %length.1.i to i8
  %incdec.ptr50.i = getelementptr i8, ptr %op.7, i32 1
  %154 = ptrtoint ptr %op.7 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv49.i, ptr %op.7, align 1
  br label %while.cond.outer.backedge

if.else51.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  %155 = trunc i32 %sub18.i to i8
  %conv56.i = add i8 %143, %155
  %156 = ptrtoint ptr %op.1.ph to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv56.i, ptr %op.1.ph, align 1
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.else51.i803, %if.end48.i801, %if.else51.i, %if.end48.i
  %ip.0.ph.be = phi ptr [ %add.ptr12, %if.end48.i ], [ %add.ptr12, %if.else51.i ], [ %add.ptr66, %if.end48.i801 ], [ %add.ptr66, %if.else51.i803 ]
  %op.0.ph.be = phi ptr [ %incdec.ptr50.i, %if.end48.i ], [ %add.ptr17.i400, %if.else51.i ], [ %incdec.ptr50.i800, %if.end48.i801 ], [ %add.ptr17.i772, %if.else51.i803 ]
  %ref.0.ph.be = phi ptr [ %ref.4, %if.end48.i ], [ %ref.4, %if.else51.i ], [ %ref.6.ph, %if.end48.i801 ], [ %ref.6.ph, %if.else51.i803 ]
  %start2.0.ph.be = phi ptr [ %start2.51100, %if.end48.i ], [ %start2.51100, %if.else51.i ], [ %start2.7, %if.end48.i801 ], [ %start2.7, %if.else51.i803 ]
  %ref2.0.ph.be = phi ptr [ %ref2.51102, %if.end48.i ], [ %ref2.51102, %if.else51.i ], [ %ref2.7, %if.end48.i801 ], [ %ref2.7, %if.else51.i803 ]
  %start3.0.ph.be = phi ptr [ %start3.1.ph, %if.end48.i ], [ %start3.1.ph, %if.else51.i ], [ %start3.61112, %if.end48.i801 ], [ %start3.61112, %if.else51.i803 ]
  %ref3.0.ph.be = phi ptr [ %ref3.1.ph, %if.end48.i ], [ %ref3.1.ph, %if.else51.i ], [ %ref3.61114, %if.end48.i801 ], [ %ref3.61114, %if.else51.i803 ]
  %cmp81210 = icmp ult ptr %ip.0.ph.be, %add.ptr1
  br i1 %cmp81210, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge, label %while.cond.outer.backedge.while.end_crit_edge

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph

if.end26:                                         ; preds = %if.end19
  %cmp27 = icmp ult ptr %start0.0.ph, %ip.1
  %add.ptr29 = getelementptr i8, ptr %ip.1, i32 %ml0.0.ph
  %cmp30 = icmp ult ptr %start2.3, %add.ptr29
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  %ip.3 = select i1 %or.cond, ptr %start0.0.ph, ptr %ip.1
  %sub.ptr.lhs.cast = ptrtoint ptr %start2.3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ip.3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp34 = icmp slt i32 %sub.ptr.sub, 3
  br i1 %cmp34, label %if.end26._Search2_crit_edge, label %_Search3.preheader

if.end26._Search2_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %_Search2

_Search3.preheader:                               ; preds = %if.end26
  %ref.5.le = select i1 %or.cond, ptr %ref0.0.ph, ptr %ref.4
  %ml.1.le = select i1 %or.cond, i32 %ml0.0.ph, i32 %ml.0
  br label %_Search3.outer

_Search3.outer:                                   ; preds = %if.end162, %_Search3.preheader
  %ip.4.ph = phi ptr [ %ip.3, %_Search3.preheader ], [ %start2.9, %if.end162 ]
  %anchor.3.ph = phi ptr [ %anchor.1.ph, %_Search3.preheader ], [ %add.ptr58.i964, %if.end162 ]
  %op.10.ph = phi ptr [ %op.1.ph, %_Search3.preheader ], [ %op.41, %if.end162 ]
  %ref.6.ph = phi ptr [ %ref.5.le, %_Search3.preheader ], [ %ref2.9, %if.end162 ]
  %start2.6.ph = phi ptr [ %start2.3, %_Search3.preheader ], [ %start3.4, %if.end162 ]
  %ref2.6.ph = phi ptr [ %ref2.3, %_Search3.preheader ], [ %ref3.4, %if.end162 ]
  %start3.2.ph = phi ptr [ %start3.1.ph, %_Search3.preheader ], [ %start3.4, %if.end162 ]
  %ref3.2.ph = phi ptr [ %ref3.1.ph, %_Search3.preheader ], [ %ref3.4, %if.end162 ]
  %ml.2.ph = phi i32 [ %ml.1.le, %_Search3.preheader ], [ %ml2.7, %if.end162 ]
  %ml2.1.ph = phi i32 [ %longest.addr.5.i, %_Search3.preheader ], [ %longest.addr.5.i637, %if.end162 ]
  %sub.ptr.rhs.cast38 = ptrtoint ptr %ip.4.ph to i32
  %157 = tail call i32 @llvm.smin.i32(i32 %ml.2.ph, i32 18)
  %add.ptr45 = getelementptr i8, ptr %ip.4.ph, i32 %157
  %add.ptr92 = getelementptr i8, ptr %ip.4.ph, i32 %ml.2.ph
  %add.ptr93 = getelementptr i8, ptr %add.ptr92, i32 3
  br label %_Search3

_Search3:                                         ; preds = %if.then95._Search3_crit_edge, %_Search3.outer
  %start2.6 = phi ptr [ %start3.4, %if.then95._Search3_crit_edge ], [ %start2.6.ph, %_Search3.outer ]
  %ref2.6 = phi ptr [ %ref3.4, %if.then95._Search3_crit_edge ], [ %ref2.6.ph, %_Search3.outer ]
  %start3.2 = phi ptr [ %start3.4, %if.then95._Search3_crit_edge ], [ %start3.2.ph, %_Search3.outer ]
  %ref3.2 = phi ptr [ %ref3.4, %if.then95._Search3_crit_edge ], [ %ref3.2.ph, %_Search3.outer ]
  %ml2.1 = phi i32 [ %longest.addr.5.i637, %if.then95._Search3_crit_edge ], [ %ml2.1.ph, %_Search3.outer ]
  %sub.ptr.lhs.cast37 = ptrtoint ptr %start2.6 to i32
  %sub.ptr.sub39 = sub i32 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.ptr.sub39)
  %cmp40 = icmp slt i32 %sub.ptr.sub39, 18
  br i1 %cmp40, label %if.then41, label %_Search3.if.end65_crit_edge

_Search3.if.end65_crit_edge:                      ; preds = %_Search3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then41:                                        ; preds = %_Search3
  %add.ptr46 = getelementptr i8, ptr %start2.6, i32 -4
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 %ml2.1
  %cmp48 = icmp ugt ptr %add.ptr45, %add.ptr47
  %add = add i32 %sub.ptr.sub39, -4
  %sub53 = add i32 %add, %ml2.1
  %new_ml.0 = select i1 %cmp48, i32 %sub53, i32 %157
  %sub.ptr.sub57.neg = sub i32 %sub.ptr.rhs.cast38, %sub.ptr.lhs.cast37
  %sub58 = add i32 %new_ml.0, %sub.ptr.sub57.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub58)
  %cmp59 = icmp sgt i32 %sub58, 0
  br i1 %cmp59, label %if.then60, label %if.then41.if.end65_crit_edge

if.then41.if.end65_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then60:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr61 = getelementptr i8, ptr %start2.6, i32 %sub58
  %add.ptr62 = getelementptr i8, ptr %ref2.6, i32 %sub58
  %sub63 = sub i32 %ml2.1, %sub58
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.then41.if.end65_crit_edge, %_Search3.if.end65_crit_edge
  %start2.7 = phi ptr [ %add.ptr61, %if.then60 ], [ %start2.6, %if.then41.if.end65_crit_edge ], [ %start2.6, %_Search3.if.end65_crit_edge ]
  %ref2.7 = phi ptr [ %add.ptr62, %if.then60 ], [ %ref2.6, %if.then41.if.end65_crit_edge ], [ %ref2.6, %_Search3.if.end65_crit_edge ]
  %ml2.3 = phi i32 [ %sub63, %if.then60 ], [ %ml2.1, %if.then41.if.end65_crit_edge ], [ %ml2.1, %_Search3.if.end65_crit_edge ]
  %add.ptr66 = getelementptr i8, ptr %start2.7, i32 %ml2.3
  %cmp67 = icmp ult ptr %add.ptr66, %add.ptr1
  br i1 %cmp67, label %if.then68, label %if.end65.if.then75_crit_edge

if.end65.if.then75_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.then68:                                        ; preds = %if.end65
  %add.ptr70 = getelementptr i8, ptr %add.ptr66, i32 -3
  %158 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base3.i, align 4
  %160 = ptrtoint ptr %dictLimit5.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dictLimit5.i, align 4
  %add.ptr.i408 = getelementptr i8, ptr %159, i32 %161
  %162 = ptrtoint ptr %lowLimit6.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %lowLimit6.i, align 4
  %add.i410 = add i32 %163, 65536
  %sub.ptr.lhs.cast.i411 = ptrtoint ptr %add.ptr70 to i32
  %sub.ptr.rhs.cast.i412 = ptrtoint ptr %159 to i32
  %sub.ptr.sub.i413 = sub i32 %sub.ptr.lhs.cast.i411, %sub.ptr.rhs.cast.i412
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i410, i32 %sub.ptr.sub.i413)
  %cmp.i414 = icmp ugt i32 %add.i410, %sub.ptr.sub.i413
  %sub.i415 = add i32 %sub.ptr.sub.i413, -65535
  %cond.i416 = select i1 %cmp.i414, i32 %163, i32 %sub.i415
  %164 = ptrtoint ptr %dictBase4.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dictBase4.i, align 4
  %sub.ptr.rhs.cast12.i418 = ptrtoint ptr %start2.7 to i32
  %sub.ptr.sub13.neg.i419 = sub i32 %sub.ptr.rhs.cast12.i418, %sub.ptr.lhs.cast.i411
  %166 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nextToUpdate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %sub.ptr.sub.i413)
  %cmp24.i.i421 = icmp ult i32 %167, %sub.ptr.sub.i413
  br i1 %cmp24.i.i421, label %if.then68.while.body.i.i434_crit_edge, label %if.then68.LZ4HC_Insert.exit.i440_crit_edge

if.then68.LZ4HC_Insert.exit.i440_crit_edge:       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_Insert.exit.i440

if.then68.while.body.i.i434_crit_edge:            ; preds = %if.then68
  br label %while.body.i.i434

while.body.i.i434:                                ; preds = %while.body.i.i434.while.body.i.i434_crit_edge, %if.then68.while.body.i.i434_crit_edge
  %idx.025.i.i422 = phi i32 [ %inc.i.i432, %while.body.i.i434.while.body.i.i434_crit_edge ], [ %167, %if.then68.while.body.i.i434_crit_edge ]
  %add.ptr.i.i423 = getelementptr i8, ptr %159, i32 %idx.025.i.i422
  %168 = ptrtoint ptr %add.ptr.i.i423 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %add.ptr.val.i.i424 = load i32, ptr %add.ptr.i.i423, align 1
  %mul.i.i.i425 = mul i32 %add.ptr.val.i.i424, -1640531535
  %shr.i.i.i426 = lshr i32 %mul.i.i.i425, 17
  %arrayidx.i.i427 = getelementptr i32, ptr %ctx, i32 %shr.i.i.i426
  %169 = ptrtoint ptr %arrayidx.i.i427 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i.i427, align 4
  %sub.i.i428 = sub i32 %idx.025.i.i422, %170
  %171 = tail call i32 @llvm.umin.i32(i32 %sub.i.i428, i32 65535) #4
  %conv.i.i429 = trunc i32 %171 to i16
  %idxprom.i.i430 = and i32 %idx.025.i.i422, 65535
  %arrayidx7.i.i431 = getelementptr i16, ptr %chainTable1.i, i32 %idxprom.i.i430
  %172 = ptrtoint ptr %arrayidx7.i.i431 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i.i429, ptr %arrayidx7.i.i431, align 2
  %173 = ptrtoint ptr %arrayidx.i.i427 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %idx.025.i.i422, ptr %arrayidx.i.i427, align 4
  %inc.i.i432 = add nuw i32 %idx.025.i.i422, 1
  %cmp.i.i433 = icmp ult i32 %inc.i.i432, %sub.ptr.sub.i413
  br i1 %cmp.i.i433, label %while.body.i.i434.while.body.i.i434_crit_edge, label %while.body.i.i434.LZ4HC_Insert.exit.i440_crit_edge

while.body.i.i434.LZ4HC_Insert.exit.i440_crit_edge: ; preds = %while.body.i.i434
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4HC_Insert.exit.i440

while.body.i.i434.while.body.i.i434_crit_edge:    ; preds = %while.body.i.i434
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i434

LZ4HC_Insert.exit.i440:                           ; preds = %while.body.i.i434.LZ4HC_Insert.exit.i440_crit_edge, %if.then68.LZ4HC_Insert.exit.i440_crit_edge
  %174 = ptrtoint ptr %nextToUpdate.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %sub.ptr.sub.i413, ptr %nextToUpdate.i.i, align 4
  %175 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %ip.val219.i435 = load i32, ptr %add.ptr70, align 1
  %mul.i.i436 = mul i32 %ip.val219.i435, -1640531535
  %shr.i.i437 = lshr i32 %mul.i.i436, 17
  %arrayidx.i438 = getelementptr i32, ptr %ctx, i32 %shr.i.i437
  %176 = ptrtoint ptr %arrayidx.i438 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx.i438, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %cond.i416)
  %cmp14.not316.i439 = icmp ult i32 %177, %cond.i416
  br i1 %cmp14.not316.i439, label %LZ4HC_Insert.exit.i440.if.then75_crit_edge, label %while.body.lr.ph.i446

LZ4HC_Insert.exit.i440.if.then75_crit_edge:       ; preds = %LZ4HC_Insert.exit.i440
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

while.body.lr.ph.i446:                            ; preds = %LZ4HC_Insert.exit.i440
  %add.ptr29.i441 = getelementptr i8, ptr %add.ptr70, i32 4
  %cmp59.i.i443 = icmp ugt ptr %add.ptr.i128.i, %add.ptr29.i441
  %sub.ptr.rhs.cast.i226.i445 = ptrtoint ptr %add.ptr29.i441 to i32
  br label %while.body.i452

while.body.i452:                                  ; preds = %if.end121.i645.while.body.i452_crit_edge, %while.body.lr.ph.i446
  %start3.3 = phi ptr [ %start3.2, %while.body.lr.ph.i446 ], [ %start3.4, %if.end121.i645.while.body.i452_crit_edge ]
  %ref3.3 = phi ptr [ %ref3.2, %while.body.lr.ph.i446 ], [ %ref3.4, %if.end121.i645.while.body.i452_crit_edge ]
  %nbAttempts.0323.i447 = phi i32 [ %shl, %while.body.lr.ph.i446 ], [ %dec.i450, %if.end121.i645.while.body.i452_crit_edge ]
  %matchIndex.0320.i448 = phi i32 [ %177, %while.body.lr.ph.i446 ], [ %sub125.i641, %if.end121.i645.while.body.i452_crit_edge ]
  %longest.addr.0319.i449 = phi i32 [ %ml2.3, %while.body.lr.ph.i446 ], [ %longest.addr.5.i637, %if.end121.i645.while.body.i452_crit_edge ]
  %dec.i450 = add i32 %nbAttempts.0323.i447, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %matchIndex.0320.i448)
  %cmp15.not.i451 = icmp ugt i32 %161, %matchIndex.0320.i448
  br i1 %cmp15.not.i451, label %if.else.i520, label %if.then.i458

if.then.i458:                                     ; preds = %while.body.i452
  %add.ptr16.i453 = getelementptr i8, ptr %159, i32 %matchIndex.0320.i448
  %add.ptr17.i454 = getelementptr i8, ptr %start2.7, i32 %longest.addr.0319.i449
  %178 = ptrtoint ptr %add.ptr17.i454 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %add.ptr17.i454, align 1
  %add.ptr18.i455 = getelementptr i8, ptr %add.ptr16.i453, i32 %sub.ptr.sub13.neg.i419
  %add.ptr19.i456 = getelementptr i8, ptr %add.ptr18.i455, i32 %longest.addr.0319.i449
  %180 = ptrtoint ptr %add.ptr19.i456 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr19.i456, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %179, i8 %181)
  %cmp21.i457 = icmp eq i8 %179, %181
  br i1 %cmp21.i457, label %if.then23.i462, label %if.then.i458.if.end121.i645_crit_edge

if.then.i458.if.end121.i645_crit_edge:            ; preds = %if.then.i458
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i645

if.then23.i462:                                   ; preds = %if.then.i458
  %182 = ptrtoint ptr %add.ptr16.i453 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %add.ptr16.val.i459 = load i32, ptr %add.ptr16.i453, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr16.val.i459, i32 %ip.val219.i435)
  %cmp26.i461 = icmp eq i32 %add.ptr16.val.i459, %ip.val219.i435
  br i1 %cmp26.i461, label %if.then28.i464, label %if.then23.i462.if.end121.i645_crit_edge

if.then23.i462.if.end121.i645_crit_edge:          ; preds = %if.then23.i462
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i645

if.then28.i464:                                   ; preds = %if.then23.i462
  %add.ptr30.i463 = getelementptr i8, ptr %add.ptr16.i453, i32 4
  br i1 %cmp59.i.i443, label %if.then28.i464.while.body.i221.i471_crit_edge, label %if.then28.i464.while.end.i.i482_crit_edge, !prof !22

if.then28.i464.while.end.i.i482_crit_edge:        ; preds = %if.then28.i464
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i482

if.then28.i464.while.body.i221.i471_crit_edge:    ; preds = %if.then28.i464
  br label %while.body.i221.i471

while.body.i221.i471:                             ; preds = %cleanup.i.i478.while.body.i221.i471_crit_edge, %if.then28.i464.while.body.i221.i471_crit_edge
  %pMatch.addr.061.i.i465 = phi ptr [ %add.ptr5.i.i476, %cleanup.i.i478.while.body.i221.i471_crit_edge ], [ %add.ptr30.i463, %if.then28.i464.while.body.i221.i471_crit_edge ]
  %pIn.addr.060.i.i466 = phi ptr [ %add.ptr4.i.i475, %cleanup.i.i478.while.body.i221.i471_crit_edge ], [ %add.ptr29.i441, %if.then28.i464.while.body.i221.i471_crit_edge ]
  %183 = ptrtoint ptr %pMatch.addr.061.i.i465 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %pMatch.addr.0.val.i.i467 = load i32, ptr %pMatch.addr.061.i.i465, align 1
  %184 = ptrtoint ptr %pIn.addr.060.i.i466 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %pIn.addr.0.val.i.i468 = load i32, ptr %pIn.addr.060.i.i466, align 1
  %xor.i.i469 = xor i32 %pIn.addr.0.val.i.i468, %pMatch.addr.0.val.i.i467
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i469)
  %tobool3.not.i.i470 = icmp eq i32 %xor.i.i469, 0
  br i1 %tobool3.not.i.i470, label %cleanup.i.i478, label %cleanup.thread.i.i474

cleanup.thread.i.i474:                            ; preds = %while.body.i221.i471
  call void @__sanitizer_cov_trace_pc() #6
  %185 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i469, i1 true) #4, !range !23
  %shr.i.i222.i472 = lshr i32 %185, 3
  %add.ptr7.i.i473 = getelementptr i8, ptr %pIn.addr.060.i.i466, i32 %shr.i.i222.i472
  br label %LZ4_count.exit.i500

cleanup.i.i478:                                   ; preds = %while.body.i221.i471
  %add.ptr4.i.i475 = getelementptr i8, ptr %pIn.addr.060.i.i466, i32 4
  %add.ptr5.i.i476 = getelementptr i8, ptr %pMatch.addr.061.i.i465, i32 4
  %cmp.i223.i477 = icmp ult ptr %add.ptr4.i.i475, %add.ptr.i128.i
  br i1 %cmp.i223.i477, label %cleanup.i.i478.while.body.i221.i471_crit_edge, label %cleanup.i.i478.while.end.i.i482_crit_edge, !prof !22

cleanup.i.i478.while.end.i.i482_crit_edge:        ; preds = %cleanup.i.i478
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i482

cleanup.i.i478.while.body.i221.i471_crit_edge:    ; preds = %cleanup.i.i478
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i221.i471

while.end.i.i482:                                 ; preds = %cleanup.i.i478.while.end.i.i482_crit_edge, %if.then28.i464.while.end.i.i482_crit_edge
  %pIn.addr.0.lcssa.i.i479 = phi ptr [ %add.ptr29.i441, %if.then28.i464.while.end.i.i482_crit_edge ], [ %add.ptr4.i.i475, %cleanup.i.i478.while.end.i.i482_crit_edge ]
  %pMatch.addr.0.lcssa.i.i480 = phi ptr [ %add.ptr30.i463, %if.then28.i464.while.end.i.i482_crit_edge ], [ %add.ptr5.i.i476, %cleanup.i.i478.while.end.i.i482_crit_edge ]
  %cmp9.i.i481 = icmp ult ptr %pIn.addr.0.lcssa.i.i479, %add.ptr8.i.i
  br i1 %cmp9.i.i481, label %land.lhs.true.i.i486, label %while.end.i.i482.if.end18.i.i493_crit_edge

while.end.i.i482.if.end18.i.i493_crit_edge:       ; preds = %while.end.i.i482
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i493

land.lhs.true.i.i486:                             ; preds = %while.end.i.i482
  %186 = ptrtoint ptr %pMatch.addr.0.lcssa.i.i480 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %pMatch.addr.0.val53.i.i483 = load i16, ptr %pMatch.addr.0.lcssa.i.i480, align 1
  %187 = ptrtoint ptr %pIn.addr.0.lcssa.i.i479 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %pIn.addr.0.val52.i.i484 = load i16, ptr %pIn.addr.0.lcssa.i.i479, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i.i483, i16 %pIn.addr.0.val52.i.i484)
  %cmp13.i.i485 = icmp eq i16 %pMatch.addr.0.val53.i.i483, %pIn.addr.0.val52.i.i484
  br i1 %cmp13.i.i485, label %if.then15.i.i489, label %land.lhs.true.i.i486.if.end18.i.i493_crit_edge

land.lhs.true.i.i486.if.end18.i.i493_crit_edge:   ; preds = %land.lhs.true.i.i486
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i493

if.then15.i.i489:                                 ; preds = %land.lhs.true.i.i486
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i.i487 = getelementptr i8, ptr %pIn.addr.0.lcssa.i.i479, i32 2
  %add.ptr17.i.i488 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i.i480, i32 2
  br label %if.end18.i.i493

if.end18.i.i493:                                  ; preds = %if.then15.i.i489, %land.lhs.true.i.i486.if.end18.i.i493_crit_edge, %while.end.i.i482.if.end18.i.i493_crit_edge
  %pIn.addr.2.i.i490 = phi ptr [ %add.ptr16.i.i487, %if.then15.i.i489 ], [ %pIn.addr.0.lcssa.i.i479, %land.lhs.true.i.i486.if.end18.i.i493_crit_edge ], [ %pIn.addr.0.lcssa.i.i479, %while.end.i.i482.if.end18.i.i493_crit_edge ]
  %pMatch.addr.2.i.i491 = phi ptr [ %add.ptr17.i.i488, %if.then15.i.i489 ], [ %pMatch.addr.0.lcssa.i.i480, %land.lhs.true.i.i486.if.end18.i.i493_crit_edge ], [ %pMatch.addr.0.lcssa.i.i480, %while.end.i.i482.if.end18.i.i493_crit_edge ]
  %cmp19.i.i492 = icmp ult ptr %pIn.addr.2.i.i490, %add.ptr2
  br i1 %cmp19.i.i492, label %land.lhs.true21.i.i497, label %if.end18.i.i493.LZ4_count.exit.i500_crit_edge

if.end18.i.i493.LZ4_count.exit.i500_crit_edge:    ; preds = %if.end18.i.i493
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit.i500

land.lhs.true21.i.i497:                           ; preds = %if.end18.i.i493
  call void @__sanitizer_cov_trace_pc() #6
  %188 = ptrtoint ptr %pMatch.addr.2.i.i491 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %pMatch.addr.2.i.i491, align 1
  %190 = ptrtoint ptr %pIn.addr.2.i.i490 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %pIn.addr.2.i.i490, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %189, i8 %191)
  %cmp24.i224.i494 = icmp eq i8 %189, %191
  %spec.select.idx.i.i495 = zext i1 %cmp24.i224.i494 to i32
  %spec.select.i.i496 = getelementptr i8, ptr %pIn.addr.2.i.i490, i32 %spec.select.idx.i.i495
  br label %LZ4_count.exit.i500

LZ4_count.exit.i500:                              ; preds = %land.lhs.true21.i.i497, %if.end18.i.i493.LZ4_count.exit.i500_crit_edge, %cleanup.thread.i.i474
  %add.ptr7.sink.i.i498 = phi ptr [ %add.ptr7.i.i473, %cleanup.thread.i.i474 ], [ %pIn.addr.2.i.i490, %if.end18.i.i493.LZ4_count.exit.i500_crit_edge ], [ %spec.select.i.i496, %land.lhs.true21.i.i497 ]
  %sub.ptr.lhs.cast.i225.i499 = ptrtoint ptr %add.ptr7.sink.i.i498 to i32
  br label %while.cond33.i507

while.cond33.i507:                                ; preds = %land.rhs40.i512.while.cond33.i507_crit_edge, %LZ4_count.exit.i500
  %back.0.i501 = phi i32 [ 0, %LZ4_count.exit.i500 ], [ %sub41.i508, %land.rhs40.i512.while.cond33.i507_crit_edge ]
  %add.ptr34.i502 = getelementptr i8, ptr %add.ptr70, i32 %back.0.i501
  %cmp35.i503 = icmp ugt ptr %add.ptr34.i502, %start2.7
  %add.ptr37.i504 = getelementptr i8, ptr %add.ptr16.i453, i32 %back.0.i501
  %cmp38.i505 = icmp ugt ptr %add.ptr37.i504, %add.ptr.i408
  %or.cond215.i506 = select i1 %cmp35.i503, i1 %cmp38.i505, i1 false
  br i1 %or.cond215.i506, label %land.rhs40.i512, label %while.cond33.i507.while.end.i515_crit_edge

while.cond33.i507.while.end.i515_crit_edge:       ; preds = %while.cond33.i507
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i515

land.rhs40.i512:                                  ; preds = %while.cond33.i507
  %sub41.i508 = add i32 %back.0.i501, -1
  %arrayidx42.i509 = getelementptr i8, ptr %add.ptr70, i32 %sub41.i508
  %192 = ptrtoint ptr %arrayidx42.i509 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx42.i509, align 1
  %arrayidx45.i510 = getelementptr i8, ptr %add.ptr16.i453, i32 %sub41.i508
  %194 = ptrtoint ptr %arrayidx45.i510 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx45.i510, align 1
  %cmp47.i511 = icmp eq i8 %193, %195
  br i1 %cmp47.i511, label %land.rhs40.i512.while.cond33.i507_crit_edge, label %land.rhs40.i512.while.end.i515_crit_edge

land.rhs40.i512.while.end.i515_crit_edge:         ; preds = %land.rhs40.i512
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i515

land.rhs40.i512.while.cond33.i507_crit_edge:      ; preds = %land.rhs40.i512
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond33.i507

while.end.i515:                                   ; preds = %land.rhs40.i512.while.end.i515_crit_edge, %while.cond33.i507.while.end.i515_crit_edge
  %196 = add i32 %sub.ptr.lhs.cast.i225.i499, 4
  %197 = add i32 %back.0.i501, %sub.ptr.rhs.cast.i226.i445
  %sub52.i513 = sub i32 %196, %197
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52.i513, i32 %longest.addr.0319.i449)
  %cmp53.i514 = icmp sgt i32 %sub52.i513, %longest.addr.0319.i449
  br i1 %cmp53.i514, label %while.end.i515.if.end121.sink.split.i636_crit_edge, label %while.end.i515.if.end121.i645_crit_edge

while.end.i515.if.end121.i645_crit_edge:          ; preds = %while.end.i515
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i645

while.end.i515.if.end121.sink.split.i636_crit_edge: ; preds = %while.end.i515
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.sink.split.i636

if.else.i520:                                     ; preds = %while.body.i452
  %add.ptr61.i516 = getelementptr i8, ptr %165, i32 %matchIndex.0320.i448
  %198 = ptrtoint ptr %add.ptr61.i516 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %add.ptr61.val.i517 = load i32, ptr %add.ptr61.i516, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr61.val.i517, i32 %ip.val219.i435)
  %cmp64.i519 = icmp eq i32 %add.ptr61.val.i517, %ip.val219.i435
  br i1 %cmp64.i519, label %if.then66.i528, label %if.else.i520.if.end121.i645_crit_edge

if.else.i520.if.end121.i645_crit_edge:            ; preds = %if.else.i520
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i645

if.then66.i528:                                   ; preds = %if.else.i520
  %sub69.i521 = sub i32 %161, %matchIndex.0320.i448
  %add.ptr70.i522 = getelementptr i8, ptr %add.ptr70, i32 %sub69.i521
  %cmp71.i523 = icmp ugt ptr %add.ptr70.i522, %add.ptr2
  %spec.select.i524 = select i1 %cmp71.i523, ptr %add.ptr2, ptr %add.ptr70.i522
  %add.ptr76.i525 = getelementptr i8, ptr %add.ptr61.i516, i32 4
  %add.ptr.i228.i526 = getelementptr i8, ptr %spec.select.i524, i32 -3
  %cmp59.i229.i527 = icmp ugt ptr %add.ptr.i228.i526, %add.ptr29.i441
  br i1 %cmp59.i229.i527, label %if.then66.i528.while.body.i236.i535_crit_edge, label %if.then66.i528.while.end.i248.i547_crit_edge, !prof !22

if.then66.i528.while.end.i248.i547_crit_edge:     ; preds = %if.then66.i528
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i248.i547

if.then66.i528.while.body.i236.i535_crit_edge:    ; preds = %if.then66.i528
  br label %while.body.i236.i535

while.body.i236.i535:                             ; preds = %cleanup.i243.i542.while.body.i236.i535_crit_edge, %if.then66.i528.while.body.i236.i535_crit_edge
  %pMatch.addr.061.i230.i529 = phi ptr [ %add.ptr5.i241.i540, %cleanup.i243.i542.while.body.i236.i535_crit_edge ], [ %add.ptr76.i525, %if.then66.i528.while.body.i236.i535_crit_edge ]
  %pIn.addr.060.i231.i530 = phi ptr [ %add.ptr4.i240.i539, %cleanup.i243.i542.while.body.i236.i535_crit_edge ], [ %add.ptr29.i441, %if.then66.i528.while.body.i236.i535_crit_edge ]
  %199 = ptrtoint ptr %pMatch.addr.061.i230.i529 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %pMatch.addr.0.val.i232.i531 = load i32, ptr %pMatch.addr.061.i230.i529, align 1
  %200 = ptrtoint ptr %pIn.addr.060.i231.i530 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %pIn.addr.0.val.i233.i532 = load i32, ptr %pIn.addr.060.i231.i530, align 1
  %xor.i234.i533 = xor i32 %pIn.addr.0.val.i233.i532, %pMatch.addr.0.val.i232.i531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i234.i533)
  %tobool3.not.i235.i534 = icmp eq i32 %xor.i234.i533, 0
  br i1 %tobool3.not.i235.i534, label %cleanup.i243.i542, label %cleanup.thread.i239.i538

cleanup.thread.i239.i538:                         ; preds = %while.body.i236.i535
  call void @__sanitizer_cov_trace_pc() #6
  %201 = tail call i32 @llvm.ctlz.i32(i32 %xor.i234.i533, i1 true) #4, !range !23
  %shr.i.i237.i536 = lshr i32 %201, 3
  %add.ptr7.i238.i537 = getelementptr i8, ptr %pIn.addr.060.i231.i530, i32 %shr.i.i237.i536
  br label %LZ4_count.exit268.i571

cleanup.i243.i542:                                ; preds = %while.body.i236.i535
  %add.ptr4.i240.i539 = getelementptr i8, ptr %pIn.addr.060.i231.i530, i32 4
  %add.ptr5.i241.i540 = getelementptr i8, ptr %pMatch.addr.061.i230.i529, i32 4
  %cmp.i242.i541 = icmp ult ptr %add.ptr4.i240.i539, %add.ptr.i228.i526
  br i1 %cmp.i242.i541, label %cleanup.i243.i542.while.body.i236.i535_crit_edge, label %cleanup.i243.i542.while.end.i248.i547_crit_edge, !prof !22

cleanup.i243.i542.while.end.i248.i547_crit_edge:  ; preds = %cleanup.i243.i542
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i248.i547

cleanup.i243.i542.while.body.i236.i535_crit_edge: ; preds = %cleanup.i243.i542
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i236.i535

while.end.i248.i547:                              ; preds = %cleanup.i243.i542.while.end.i248.i547_crit_edge, %if.then66.i528.while.end.i248.i547_crit_edge
  %pIn.addr.0.lcssa.i244.i543 = phi ptr [ %add.ptr29.i441, %if.then66.i528.while.end.i248.i547_crit_edge ], [ %add.ptr4.i240.i539, %cleanup.i243.i542.while.end.i248.i547_crit_edge ]
  %pMatch.addr.0.lcssa.i245.i544 = phi ptr [ %add.ptr76.i525, %if.then66.i528.while.end.i248.i547_crit_edge ], [ %add.ptr5.i241.i540, %cleanup.i243.i542.while.end.i248.i547_crit_edge ]
  %add.ptr8.i246.i545 = getelementptr i8, ptr %spec.select.i524, i32 -1
  %cmp9.i247.i546 = icmp ult ptr %pIn.addr.0.lcssa.i244.i543, %add.ptr8.i246.i545
  br i1 %cmp9.i247.i546, label %land.lhs.true.i252.i551, label %while.end.i248.i547.if.end18.i259.i558_crit_edge

while.end.i248.i547.if.end18.i259.i558_crit_edge: ; preds = %while.end.i248.i547
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i259.i558

land.lhs.true.i252.i551:                          ; preds = %while.end.i248.i547
  %202 = ptrtoint ptr %pMatch.addr.0.lcssa.i245.i544 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 2)
  %pMatch.addr.0.val53.i249.i548 = load i16, ptr %pMatch.addr.0.lcssa.i245.i544, align 1
  %203 = ptrtoint ptr %pIn.addr.0.lcssa.i244.i543 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 2)
  %pIn.addr.0.val52.i250.i549 = load i16, ptr %pIn.addr.0.lcssa.i244.i543, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i249.i548, i16 %pIn.addr.0.val52.i250.i549)
  %cmp13.i251.i550 = icmp eq i16 %pMatch.addr.0.val53.i249.i548, %pIn.addr.0.val52.i250.i549
  br i1 %cmp13.i251.i550, label %if.then15.i255.i554, label %land.lhs.true.i252.i551.if.end18.i259.i558_crit_edge

land.lhs.true.i252.i551.if.end18.i259.i558_crit_edge: ; preds = %land.lhs.true.i252.i551
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i259.i558

if.then15.i255.i554:                              ; preds = %land.lhs.true.i252.i551
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i253.i552 = getelementptr i8, ptr %pIn.addr.0.lcssa.i244.i543, i32 2
  %add.ptr17.i254.i553 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i245.i544, i32 2
  br label %if.end18.i259.i558

if.end18.i259.i558:                               ; preds = %if.then15.i255.i554, %land.lhs.true.i252.i551.if.end18.i259.i558_crit_edge, %while.end.i248.i547.if.end18.i259.i558_crit_edge
  %pIn.addr.2.i256.i555 = phi ptr [ %add.ptr16.i253.i552, %if.then15.i255.i554 ], [ %pIn.addr.0.lcssa.i244.i543, %land.lhs.true.i252.i551.if.end18.i259.i558_crit_edge ], [ %pIn.addr.0.lcssa.i244.i543, %while.end.i248.i547.if.end18.i259.i558_crit_edge ]
  %pMatch.addr.2.i257.i556 = phi ptr [ %add.ptr17.i254.i553, %if.then15.i255.i554 ], [ %pMatch.addr.0.lcssa.i245.i544, %land.lhs.true.i252.i551.if.end18.i259.i558_crit_edge ], [ %pMatch.addr.0.lcssa.i245.i544, %while.end.i248.i547.if.end18.i259.i558_crit_edge ]
  %cmp19.i258.i557 = icmp ult ptr %pIn.addr.2.i256.i555, %spec.select.i524
  br i1 %cmp19.i258.i557, label %land.lhs.true21.i263.i562, label %if.end18.i259.i558.LZ4_count.exit268.i571_crit_edge

if.end18.i259.i558.LZ4_count.exit268.i571_crit_edge: ; preds = %if.end18.i259.i558
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit268.i571

land.lhs.true21.i263.i562:                        ; preds = %if.end18.i259.i558
  call void @__sanitizer_cov_trace_pc() #6
  %204 = ptrtoint ptr %pMatch.addr.2.i257.i556 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %pMatch.addr.2.i257.i556, align 1
  %206 = ptrtoint ptr %pIn.addr.2.i256.i555 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %pIn.addr.2.i256.i555, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %205, i8 %207)
  %cmp24.i260.i559 = icmp eq i8 %205, %207
  %spec.select.idx.i261.i560 = zext i1 %cmp24.i260.i559 to i32
  %spec.select.i262.i561 = getelementptr i8, ptr %pIn.addr.2.i256.i555, i32 %spec.select.idx.i261.i560
  br label %LZ4_count.exit268.i571

LZ4_count.exit268.i571:                           ; preds = %land.lhs.true21.i263.i562, %if.end18.i259.i558.LZ4_count.exit268.i571_crit_edge, %cleanup.thread.i239.i538
  %add.ptr7.sink.i264.i563 = phi ptr [ %add.ptr7.i238.i537, %cleanup.thread.i239.i538 ], [ %pIn.addr.2.i256.i555, %if.end18.i259.i558.LZ4_count.exit268.i571_crit_edge ], [ %spec.select.i262.i561, %land.lhs.true21.i263.i562 ]
  %sub.ptr.lhs.cast.i265.i564 = ptrtoint ptr %add.ptr7.sink.i264.i563 to i32
  %sub.ptr.sub.i267.i565 = sub i32 %sub.ptr.lhs.cast.i265.i564, %sub.ptr.rhs.cast.i226.i445
  %add78.i566 = add i32 %sub.ptr.sub.i267.i565, 4
  %add.ptr79.i567 = getelementptr i8, ptr %add.ptr70, i32 %add78.i566
  %cmp80.i568 = icmp eq ptr %add.ptr79.i567, %spec.select.i524
  %cmp83.i569 = icmp ult ptr %add.ptr70.i522, %add.ptr2
  %or.cond216.i570 = and i1 %cmp83.i569, %cmp80.i568
  br i1 %or.cond216.i570, label %if.then85.i573, label %LZ4_count.exit268.i571.if.end90.i614_crit_edge

LZ4_count.exit268.i571.if.end90.i614_crit_edge:   ; preds = %LZ4_count.exit268.i571
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i614

if.then85.i573:                                   ; preds = %LZ4_count.exit268.i571
  %cmp59.i270.i572 = icmp ugt ptr %add.ptr.i128.i, %spec.select.i524
  br i1 %cmp59.i270.i572, label %if.then85.i573.while.body.i277.i580_crit_edge, label %if.then85.i573.while.end.i289.i591_crit_edge, !prof !22

if.then85.i573.while.end.i289.i591_crit_edge:     ; preds = %if.then85.i573
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i289.i591

if.then85.i573.while.body.i277.i580_crit_edge:    ; preds = %if.then85.i573
  br label %while.body.i277.i580

while.body.i277.i580:                             ; preds = %cleanup.i284.i587.while.body.i277.i580_crit_edge, %if.then85.i573.while.body.i277.i580_crit_edge
  %pMatch.addr.061.i271.i574 = phi ptr [ %add.ptr5.i282.i585, %cleanup.i284.i587.while.body.i277.i580_crit_edge ], [ %add.ptr.i408, %if.then85.i573.while.body.i277.i580_crit_edge ]
  %pIn.addr.060.i272.i575 = phi ptr [ %add.ptr4.i281.i584, %cleanup.i284.i587.while.body.i277.i580_crit_edge ], [ %spec.select.i524, %if.then85.i573.while.body.i277.i580_crit_edge ]
  %208 = ptrtoint ptr %pMatch.addr.061.i271.i574 to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %pMatch.addr.0.val.i273.i576 = load i32, ptr %pMatch.addr.061.i271.i574, align 1
  %209 = ptrtoint ptr %pIn.addr.060.i272.i575 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %pIn.addr.0.val.i274.i577 = load i32, ptr %pIn.addr.060.i272.i575, align 1
  %xor.i275.i578 = xor i32 %pIn.addr.0.val.i274.i577, %pMatch.addr.0.val.i273.i576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i275.i578)
  %tobool3.not.i276.i579 = icmp eq i32 %xor.i275.i578, 0
  br i1 %tobool3.not.i276.i579, label %cleanup.i284.i587, label %cleanup.thread.i280.i583

cleanup.thread.i280.i583:                         ; preds = %while.body.i277.i580
  call void @__sanitizer_cov_trace_pc() #6
  %210 = tail call i32 @llvm.ctlz.i32(i32 %xor.i275.i578, i1 true) #4, !range !23
  %shr.i.i278.i581 = lshr i32 %210, 3
  %add.ptr7.i279.i582 = getelementptr i8, ptr %pIn.addr.060.i272.i575, i32 %shr.i.i278.i581
  br label %LZ4_count.exit309.i612

cleanup.i284.i587:                                ; preds = %while.body.i277.i580
  %add.ptr4.i281.i584 = getelementptr i8, ptr %pIn.addr.060.i272.i575, i32 4
  %add.ptr5.i282.i585 = getelementptr i8, ptr %pMatch.addr.061.i271.i574, i32 4
  %cmp.i283.i586 = icmp ult ptr %add.ptr4.i281.i584, %add.ptr.i128.i
  br i1 %cmp.i283.i586, label %cleanup.i284.i587.while.body.i277.i580_crit_edge, label %cleanup.i284.i587.while.end.i289.i591_crit_edge, !prof !22

cleanup.i284.i587.while.end.i289.i591_crit_edge:  ; preds = %cleanup.i284.i587
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i289.i591

cleanup.i284.i587.while.body.i277.i580_crit_edge: ; preds = %cleanup.i284.i587
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i277.i580

while.end.i289.i591:                              ; preds = %cleanup.i284.i587.while.end.i289.i591_crit_edge, %if.then85.i573.while.end.i289.i591_crit_edge
  %pIn.addr.0.lcssa.i285.i588 = phi ptr [ %spec.select.i524, %if.then85.i573.while.end.i289.i591_crit_edge ], [ %add.ptr4.i281.i584, %cleanup.i284.i587.while.end.i289.i591_crit_edge ]
  %pMatch.addr.0.lcssa.i286.i589 = phi ptr [ %add.ptr.i408, %if.then85.i573.while.end.i289.i591_crit_edge ], [ %add.ptr5.i282.i585, %cleanup.i284.i587.while.end.i289.i591_crit_edge ]
  %cmp9.i288.i590 = icmp ult ptr %pIn.addr.0.lcssa.i285.i588, %add.ptr8.i.i
  br i1 %cmp9.i288.i590, label %land.lhs.true.i293.i595, label %while.end.i289.i591.if.end18.i300.i602_crit_edge

while.end.i289.i591.if.end18.i300.i602_crit_edge: ; preds = %while.end.i289.i591
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i300.i602

land.lhs.true.i293.i595:                          ; preds = %while.end.i289.i591
  %211 = ptrtoint ptr %pMatch.addr.0.lcssa.i286.i589 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %pMatch.addr.0.val53.i290.i592 = load i16, ptr %pMatch.addr.0.lcssa.i286.i589, align 1
  %212 = ptrtoint ptr %pIn.addr.0.lcssa.i285.i588 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %pIn.addr.0.val52.i291.i593 = load i16, ptr %pIn.addr.0.lcssa.i285.i588, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i290.i592, i16 %pIn.addr.0.val52.i291.i593)
  %cmp13.i292.i594 = icmp eq i16 %pMatch.addr.0.val53.i290.i592, %pIn.addr.0.val52.i291.i593
  br i1 %cmp13.i292.i594, label %if.then15.i296.i598, label %land.lhs.true.i293.i595.if.end18.i300.i602_crit_edge

land.lhs.true.i293.i595.if.end18.i300.i602_crit_edge: ; preds = %land.lhs.true.i293.i595
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i300.i602

if.then15.i296.i598:                              ; preds = %land.lhs.true.i293.i595
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i294.i596 = getelementptr i8, ptr %pIn.addr.0.lcssa.i285.i588, i32 2
  %add.ptr17.i295.i597 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i286.i589, i32 2
  br label %if.end18.i300.i602

if.end18.i300.i602:                               ; preds = %if.then15.i296.i598, %land.lhs.true.i293.i595.if.end18.i300.i602_crit_edge, %while.end.i289.i591.if.end18.i300.i602_crit_edge
  %pIn.addr.2.i297.i599 = phi ptr [ %add.ptr16.i294.i596, %if.then15.i296.i598 ], [ %pIn.addr.0.lcssa.i285.i588, %land.lhs.true.i293.i595.if.end18.i300.i602_crit_edge ], [ %pIn.addr.0.lcssa.i285.i588, %while.end.i289.i591.if.end18.i300.i602_crit_edge ]
  %pMatch.addr.2.i298.i600 = phi ptr [ %add.ptr17.i295.i597, %if.then15.i296.i598 ], [ %pMatch.addr.0.lcssa.i286.i589, %land.lhs.true.i293.i595.if.end18.i300.i602_crit_edge ], [ %pMatch.addr.0.lcssa.i286.i589, %while.end.i289.i591.if.end18.i300.i602_crit_edge ]
  %cmp19.i299.i601 = icmp ult ptr %pIn.addr.2.i297.i599, %add.ptr2
  br i1 %cmp19.i299.i601, label %land.lhs.true21.i304.i606, label %if.end18.i300.i602.LZ4_count.exit309.i612_crit_edge

if.end18.i300.i602.LZ4_count.exit309.i612_crit_edge: ; preds = %if.end18.i300.i602
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit309.i612

land.lhs.true21.i304.i606:                        ; preds = %if.end18.i300.i602
  call void @__sanitizer_cov_trace_pc() #6
  %213 = ptrtoint ptr %pMatch.addr.2.i298.i600 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %pMatch.addr.2.i298.i600, align 1
  %215 = ptrtoint ptr %pIn.addr.2.i297.i599 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %pIn.addr.2.i297.i599, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %214, i8 %216)
  %cmp24.i301.i603 = icmp eq i8 %214, %216
  %spec.select.idx.i302.i604 = zext i1 %cmp24.i301.i603 to i32
  %spec.select.i303.i605 = getelementptr i8, ptr %pIn.addr.2.i297.i599, i32 %spec.select.idx.i302.i604
  br label %LZ4_count.exit309.i612

LZ4_count.exit309.i612:                           ; preds = %land.lhs.true21.i304.i606, %if.end18.i300.i602.LZ4_count.exit309.i612_crit_edge, %cleanup.thread.i280.i583
  %add.ptr7.sink.i305.i607 = phi ptr [ %add.ptr7.i279.i582, %cleanup.thread.i280.i583 ], [ %pIn.addr.2.i297.i599, %if.end18.i300.i602.LZ4_count.exit309.i612_crit_edge ], [ %spec.select.i303.i605, %land.lhs.true21.i304.i606 ]
  %sub.ptr.lhs.cast.i306.i608 = ptrtoint ptr %add.ptr7.sink.i305.i607 to i32
  %sub.ptr.rhs.cast.i307.i609 = ptrtoint ptr %spec.select.i524 to i32
  %sub.ptr.sub.i308.i610 = sub i32 %add78.i566, %sub.ptr.rhs.cast.i307.i609
  %add89.i611 = add i32 %sub.ptr.sub.i308.i610, %sub.ptr.lhs.cast.i306.i608
  br label %if.end90.i614

if.end90.i614:                                    ; preds = %LZ4_count.exit309.i612, %LZ4_count.exit268.i571.if.end90.i614_crit_edge
  %mlt67.0.i613 = phi i32 [ %add89.i611, %LZ4_count.exit309.i612 ], [ %add78.i566, %LZ4_count.exit268.i571.if.end90.i614_crit_edge ]
  br label %while.cond91.i621

while.cond91.i621:                                ; preds = %land.rhs99.i626.while.cond91.i621_crit_edge, %if.end90.i614
  %back68.0.i615 = phi i32 [ 0, %if.end90.i614 ], [ %sub100.i622, %land.rhs99.i626.while.cond91.i621_crit_edge ]
  %add.ptr92.i616 = getelementptr i8, ptr %add.ptr70, i32 %back68.0.i615
  %cmp93.i617 = icmp ugt ptr %add.ptr92.i616, %start2.7
  %add96.i618 = add i32 %back68.0.i615, %matchIndex.0320.i448
  call void @__sanitizer_cov_trace_cmp4(i32 %add96.i618, i32 %cond.i416)
  %cmp97.i619 = icmp ugt i32 %add96.i618, %cond.i416
  %or.cond217.i620 = select i1 %cmp93.i617, i1 %cmp97.i619, i1 false
  br i1 %or.cond217.i620, label %land.rhs99.i626, label %while.cond91.i621.while.end111.i629_crit_edge

while.cond91.i621.while.end111.i629_crit_edge:    ; preds = %while.cond91.i621
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end111.i629

land.rhs99.i626:                                  ; preds = %while.cond91.i621
  %sub100.i622 = add i32 %back68.0.i615, -1
  %arrayidx101.i623 = getelementptr i8, ptr %add.ptr70, i32 %sub100.i622
  %217 = ptrtoint ptr %arrayidx101.i623 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx101.i623, align 1
  %arrayidx104.i624 = getelementptr i8, ptr %add.ptr61.i516, i32 %sub100.i622
  %219 = ptrtoint ptr %arrayidx104.i624 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx104.i624, align 1
  %cmp106.i625 = icmp eq i8 %218, %220
  br i1 %cmp106.i625, label %land.rhs99.i626.while.cond91.i621_crit_edge, label %land.rhs99.i626.while.end111.i629_crit_edge

land.rhs99.i626.while.end111.i629_crit_edge:      ; preds = %land.rhs99.i626
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end111.i629

land.rhs99.i626.while.cond91.i621_crit_edge:      ; preds = %land.rhs99.i626
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond91.i621

while.end111.i629:                                ; preds = %land.rhs99.i626.while.end111.i629_crit_edge, %while.cond91.i621.while.end111.i629_crit_edge
  %sub112.i627 = sub i32 %mlt67.0.i613, %back68.0.i615
  call void @__sanitizer_cov_trace_cmp4(i32 %sub112.i627, i32 %longest.addr.0319.i449)
  %cmp113.i628 = icmp sgt i32 %sub112.i627, %longest.addr.0319.i449
  br i1 %cmp113.i628, label %if.then115.i632, label %while.end111.i629.if.end121.i645_crit_edge

while.end111.i629.if.end121.i645_crit_edge:       ; preds = %while.end111.i629
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121.i645

if.then115.i632:                                  ; preds = %while.end111.i629
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr116.i630 = getelementptr i8, ptr %159, i32 %matchIndex.0320.i448
  %add.ptr117.i631 = getelementptr i8, ptr %add.ptr116.i630, i32 %back68.0.i615
  br label %if.end121.sink.split.i636

if.end121.sink.split.i636:                        ; preds = %if.then115.i632, %while.end.i515.if.end121.sink.split.i636_crit_edge
  %add.ptr117.sink.i633 = phi ptr [ %add.ptr117.i631, %if.then115.i632 ], [ %add.ptr37.i504, %while.end.i515.if.end121.sink.split.i636_crit_edge ]
  %add.ptr92.lcssa.sink.i634 = phi ptr [ %add.ptr92.i616, %if.then115.i632 ], [ %add.ptr34.i502, %while.end.i515.if.end121.sink.split.i636_crit_edge ]
  %longest.addr.5.ph.i635 = phi i32 [ %sub112.i627, %if.then115.i632 ], [ %sub52.i513, %while.end.i515.if.end121.sink.split.i636_crit_edge ]
  br label %if.end121.i645

if.end121.i645:                                   ; preds = %if.end121.sink.split.i636, %while.end111.i629.if.end121.i645_crit_edge, %if.else.i520.if.end121.i645_crit_edge, %while.end.i515.if.end121.i645_crit_edge, %if.then23.i462.if.end121.i645_crit_edge, %if.then.i458.if.end121.i645_crit_edge
  %start3.4 = phi ptr [ %add.ptr92.lcssa.sink.i634, %if.end121.sink.split.i636 ], [ %start3.3, %while.end111.i629.if.end121.i645_crit_edge ], [ %start3.3, %if.else.i520.if.end121.i645_crit_edge ], [ %start3.3, %while.end.i515.if.end121.i645_crit_edge ], [ %start3.3, %if.then23.i462.if.end121.i645_crit_edge ], [ %start3.3, %if.then.i458.if.end121.i645_crit_edge ]
  %ref3.4 = phi ptr [ %add.ptr117.sink.i633, %if.end121.sink.split.i636 ], [ %ref3.3, %while.end111.i629.if.end121.i645_crit_edge ], [ %ref3.3, %if.else.i520.if.end121.i645_crit_edge ], [ %ref3.3, %while.end.i515.if.end121.i645_crit_edge ], [ %ref3.3, %if.then23.i462.if.end121.i645_crit_edge ], [ %ref3.3, %if.then.i458.if.end121.i645_crit_edge ]
  %longest.addr.5.i637 = phi i32 [ %longest.addr.5.ph.i635, %if.end121.sink.split.i636 ], [ %longest.addr.0319.i449, %while.end111.i629.if.end121.i645_crit_edge ], [ %longest.addr.0319.i449, %if.else.i520.if.end121.i645_crit_edge ], [ %longest.addr.0319.i449, %while.end.i515.if.end121.i645_crit_edge ], [ %longest.addr.0319.i449, %if.then23.i462.if.end121.i645_crit_edge ], [ %longest.addr.0319.i449, %if.then.i458.if.end121.i645_crit_edge ]
  %idxprom.i638 = and i32 %matchIndex.0320.i448, 65535
  %arrayidx123.i639 = getelementptr i16, ptr %chainTable1.i, i32 %idxprom.i638
  %221 = ptrtoint ptr %arrayidx123.i639 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx123.i639, align 2
  %conv124.i640 = zext i16 %222 to i32
  %sub125.i641 = sub i32 %matchIndex.0320.i448, %conv124.i640
  call void @__sanitizer_cov_trace_cmp4(i32 %sub125.i641, i32 %cond.i416)
  %cmp14.not.i642 = icmp ult i32 %sub125.i641, %cond.i416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i450)
  %tobool.not.i643 = icmp eq i32 %dec.i450, 0
  %or.cond.i644 = select i1 %cmp14.not.i642, i1 true, i1 %tobool.not.i643
  br i1 %or.cond.i644, label %if.end73, label %if.end121.i645.while.body.i452_crit_edge

if.end121.i645.while.body.i452_crit_edge:         ; preds = %if.end121.i645
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i452

if.end73:                                         ; preds = %if.end121.i645
  call void @__sanitizer_cov_trace_cmp4(i32 %longest.addr.5.i637, i32 %ml2.3)
  %cmp74 = icmp eq i32 %longest.addr.5.i637, %ml2.3
  br i1 %cmp74, label %if.end73.if.then75_crit_edge, label %if.end91

if.end73.if.then75_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.then75:                                        ; preds = %if.end73.if.then75_crit_edge, %LZ4HC_Insert.exit.i440.if.then75_crit_edge, %if.end65.if.then75_crit_edge
  %ref3.61114 = phi ptr [ %ref3.2, %if.end65.if.then75_crit_edge ], [ %ref3.4, %if.end73.if.then75_crit_edge ], [ %ref3.2, %LZ4HC_Insert.exit.i440.if.then75_crit_edge ]
  %start3.61112 = phi ptr [ %start3.2, %if.end65.if.then75_crit_edge ], [ %start3.4, %if.end73.if.then75_crit_edge ], [ %start3.2, %LZ4HC_Insert.exit.i440.if.then75_crit_edge ]
  %sub.ptr.rhs.cast38.le1494 = ptrtoint ptr %ip.4.ph to i32
  %sub.ptr.rhs.cast12.i418.le1491 = ptrtoint ptr %start2.7 to i32
  %cmp77 = icmp ult ptr %start2.7, %add.ptr92
  %sub.ptr.sub81 = sub i32 %sub.ptr.rhs.cast12.i418.le1491, %sub.ptr.rhs.cast38.le1494
  %ml.3 = select i1 %cmp77, i32 %sub.ptr.sub81, i32 %ml.2.ph
  %sub.ptr.rhs.cast.i649 = ptrtoint ptr %anchor.3.ph to i32
  %sub.ptr.sub.i650 = sub i32 %sub.ptr.rhs.cast38.le1494, %sub.ptr.rhs.cast.i649
  %incdec.ptr.i651 = getelementptr i8, ptr %op.10.ph, i32 1
  %shr.i653 = ashr i32 %sub.ptr.sub.i650, 8
  %add.ptr.i654 = getelementptr i8, ptr %op.10.ph, i32 9
  %add.ptr1.i655 = getelementptr i8, ptr %add.ptr.i654, i32 %shr.i653
  %add.ptr2.i656 = getelementptr i8, ptr %add.ptr1.i655, i32 %sub.ptr.sub.i650
  %cmp.i657 = icmp ugt ptr %add.ptr2.i656, %add.ptr3
  %or.cond.i658 = select i1 %tobool.not.i892, i1 %cmp.i657, i1 false
  br i1 %or.cond.i658, label %if.then75.cleanup201_crit_edge, label %if.end.i660

if.then75.cleanup201_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end.i660:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i650)
  %cmp3.i659 = icmp sgt i32 %sub.ptr.sub.i650, 14
  br i1 %cmp3.i659, label %if.then4.i663, label %if.else.i675

if.then4.i663:                                    ; preds = %if.end.i660
  %223 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -16, ptr %op.10.ph, align 1
  %sub.i661 = add nsw i32 %sub.ptr.sub.i650, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %sub.ptr.sub.i650)
  %cmp5103.i662 = icmp ugt i32 %sub.ptr.sub.i650, 269
  br i1 %cmp5103.i662, label %for.body.i668.preheader, label %if.then4.i663.for.end.i672_crit_edge

if.then4.i663.for.end.i672_crit_edge:             ; preds = %if.then4.i663
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i672

for.body.i668.preheader:                          ; preds = %if.then4.i663
  call void @__sanitizer_cov_trace_pc() #6
  %224 = add i32 %sub.ptr.rhs.cast38.le1494, 239
  %umin1325 = call i32 @llvm.umin.i32(i32 %sub.i661, i32 509)
  %225 = add i32 %umin1325, %sub.ptr.rhs.cast.i649
  %226 = sub i32 %224, %225
  %227 = udiv i32 %226, 255
  %228 = add nuw nsw i32 %227, 1
  %229 = call ptr @memset(ptr %incdec.ptr.i651, i32 255, i32 %228)
  %230 = add i32 %sub.ptr.rhs.cast38.le1494, -270
  %.neg1354 = mul i32 %227, -255
  %uglygep1326 = getelementptr i8, ptr %op.10.ph, i32 2
  %uglygep1328 = getelementptr i8, ptr %uglygep1326, i32 %227
  %231 = sub i32 %230, %sub.ptr.rhs.cast.i649
  %232 = add i32 %.neg1354, %231
  br label %for.end.i672

for.end.i672:                                     ; preds = %for.body.i668.preheader, %if.then4.i663.for.end.i672_crit_edge
  %op.12 = phi ptr [ %incdec.ptr.i651, %if.then4.i663.for.end.i672_crit_edge ], [ %uglygep1328, %for.body.i668.preheader ]
  %len.0.lcssa.i669 = phi i32 [ %sub.i661, %if.then4.i663.for.end.i672_crit_edge ], [ %232, %for.body.i668.preheader ]
  %conv.i670 = trunc i32 %len.0.lcssa.i669 to i8
  %incdec.ptr8.i671 = getelementptr i8, ptr %op.12, i32 1
  %233 = ptrtoint ptr %op.12 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv.i670, ptr %op.12, align 1
  br label %if.end10.i677

if.else.i675:                                     ; preds = %if.end.i660
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub.tr.i673 = trunc i32 %sub.ptr.sub.i650 to i8
  %conv9.i674 = shl i8 %sub.ptr.sub.tr.i673, 4
  %234 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv9.i674, ptr %op.10.ph, align 1
  br label %if.end10.i677

if.end10.i677:                                    ; preds = %if.else.i675, %for.end.i672
  %op.13 = phi ptr [ %incdec.ptr8.i671, %for.end.i672 ], [ %incdec.ptr.i651, %if.else.i675 ]
  %add.ptr11.i676 = getelementptr i8, ptr %op.13, i32 %sub.ptr.sub.i650
  br label %do.body.i.i686

do.body.i.i686:                                   ; preds = %do.body.i.i686.do.body.i.i686_crit_edge, %if.end10.i677
  %d.0.i.i678 = phi ptr [ %op.13, %if.end10.i677 ], [ %add.ptr.i.i683, %do.body.i.i686.do.body.i.i686_crit_edge ]
  %s.0.i.i679 = phi ptr [ %anchor.3.ph, %if.end10.i677 ], [ %add.ptr1.i.i684, %do.body.i.i686.do.body.i.i686_crit_edge ]
  %235 = ptrtoint ptr %s.0.i.i679 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %s.0.val.i.i680 = load i32, ptr %s.0.i.i679, align 1
  %236 = getelementptr i8, ptr %s.0.i.i679, i32 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %s.0.val5.i.i681 = load i32, ptr %236, align 1
  %238 = ptrtoint ptr %d.0.i.i678 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 %s.0.val.i.i680, ptr %d.0.i.i678, align 1
  %add.ptr8.i.i.i682 = getelementptr i32, ptr %d.0.i.i678, i32 1
  %239 = ptrtoint ptr %add.ptr8.i.i.i682 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 4)
  store i32 %s.0.val5.i.i681, ptr %add.ptr8.i.i.i682, align 1
  %add.ptr.i.i683 = getelementptr i8, ptr %d.0.i.i678, i32 8
  %add.ptr1.i.i684 = getelementptr i8, ptr %s.0.i.i679, i32 8
  %cmp.i.i685 = icmp ult ptr %add.ptr.i.i683, %add.ptr11.i676
  br i1 %cmp.i.i685, label %do.body.i.i686.do.body.i.i686_crit_edge, label %LZ4_wildCopy.exit.i699

do.body.i.i686.do.body.i.i686_crit_edge:          ; preds = %do.body.i.i686
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i686

LZ4_wildCopy.exit.i699:                           ; preds = %do.body.i.i686
  %sub.ptr.rhs.cast14.i689 = ptrtoint ptr %ref.6.ph to i32
  %sub.ptr.sub15.i690 = sub i32 %sub.ptr.rhs.cast38.le1494, %sub.ptr.rhs.cast14.i689
  %conv16.i691 = trunc i32 %sub.ptr.sub15.i690 to i16
  %240 = tail call i16 @llvm.bswap.i16(i16 %conv16.i691) #4
  %241 = ptrtoint ptr %add.ptr11.i676 to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 %240, ptr %add.ptr11.i676, align 1
  %add.ptr17.i692 = getelementptr i8, ptr %add.ptr11.i676, i32 2
  %sub18.i693 = add i32 %ml.3, -4
  %shr21.i694 = ashr i32 %sub18.i693, 8
  %add.ptr22.i695 = getelementptr i8, ptr %add.ptr17.i692, i32 6
  %add.ptr23.i696 = getelementptr i8, ptr %add.ptr22.i695, i32 %shr21.i694
  %cmp24.i697 = icmp ugt ptr %add.ptr23.i696, %add.ptr3
  %or.cond102.i698 = select i1 %tobool.not.i892, i1 %cmp24.i697, i1 false
  br i1 %or.cond102.i698, label %LZ4_wildCopy.exit.i699.cleanup201_crit_edge, label %if.end27.i701

LZ4_wildCopy.exit.i699.cleanup201_crit_edge:      ; preds = %LZ4_wildCopy.exit.i699
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end27.i701:                                    ; preds = %LZ4_wildCopy.exit.i699
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub18.i693)
  %cmp28.i700 = icmp sgt i32 %sub18.i693, 14
  %242 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %op.10.ph, align 1
  br i1 %cmp28.i700, label %if.then30.i705, label %if.else51.i723

if.then30.i705:                                   ; preds = %if.end27.i701
  %add.i702 = add i8 %243, 15
  %244 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %add.i702, ptr %op.10.ph, align 1
  %sub33.i703 = add i32 %ml.3, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %sub33.i703)
  %cmp35105.i704 = icmp ugt i32 %sub33.i703, 509
  br i1 %cmp35105.i704, label %for.body37.i711.preheader, label %if.then30.i705.for.end42.i714_crit_edge

if.then30.i705.for.end42.i714_crit_edge:          ; preds = %if.then30.i705
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42.i714

for.body37.i711.preheader:                        ; preds = %if.then30.i705
  call void @__sanitizer_cov_trace_pc() #6
  %245 = add i32 %ml.2.ph, %sub.ptr.rhs.cast38.le1494
  %umin1329 = call i32 @llvm.umin.i32(i32 %sub.ptr.rhs.cast12.i418.le1491, i32 %245)
  %246 = add i32 %umin1329, -529
  %247 = sub i32 %246, %sub.ptr.rhs.cast38.le1494
  %248 = udiv i32 %247, 510
  %249 = shl nuw nsw i32 %248, 1
  %250 = add nuw nsw i32 %249, 2
  %251 = call ptr @memset(ptr %add.ptr17.i692, i32 255, i32 %250)
  %252 = add i32 %249, %sub.ptr.rhs.cast38.le1494
  %253 = sub i32 %252, %sub.ptr.rhs.cast.i649
  %.neg1353 = mul i32 %248, -510
  %uglygep1330 = getelementptr i8, ptr %op.13, i32 4
  %uglygep1332 = getelementptr i8, ptr %uglygep1330, i32 %253
  %254 = add i32 %.neg1353, %247
  br label %for.end42.i714

for.end42.i714:                                   ; preds = %for.body37.i711.preheader, %if.then30.i705.for.end42.i714_crit_edge
  %op.15 = phi ptr [ %add.ptr17.i692, %if.then30.i705.for.end42.i714_crit_edge ], [ %uglygep1332, %for.body37.i711.preheader ]
  %length.0.lcssa.i712 = phi i32 [ %sub33.i703, %if.then30.i705.for.end42.i714_crit_edge ], [ %254, %for.body37.i711.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %length.0.lcssa.i712)
  %cmp43.i713 = icmp ugt i32 %length.0.lcssa.i712, 254
  br i1 %cmp43.i713, label %if.then45.i717, label %for.end42.i714.if.end48.i721_crit_edge

for.end42.i714.if.end48.i721_crit_edge:           ; preds = %for.end42.i714
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i721

if.then45.i717:                                   ; preds = %for.end42.i714
  call void @__sanitizer_cov_trace_pc() #6
  %sub46.i715 = add nsw i32 %length.0.lcssa.i712, -255
  %incdec.ptr47.i716 = getelementptr i8, ptr %op.15, i32 1
  %255 = ptrtoint ptr %op.15 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 -1, ptr %op.15, align 1
  br label %if.end48.i721

if.end48.i721:                                    ; preds = %if.then45.i717, %for.end42.i714.if.end48.i721_crit_edge
  %op.16 = phi ptr [ %incdec.ptr47.i716, %if.then45.i717 ], [ %op.15, %for.end42.i714.if.end48.i721_crit_edge ]
  %length.1.i718 = phi i32 [ %sub46.i715, %if.then45.i717 ], [ %length.0.lcssa.i712, %for.end42.i714.if.end48.i721_crit_edge ]
  %conv49.i719 = trunc i32 %length.1.i718 to i8
  %incdec.ptr50.i720 = getelementptr i8, ptr %op.16, i32 1
  %256 = ptrtoint ptr %op.16 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv49.i719, ptr %op.16, align 1
  br label %if.end86

if.else51.i723:                                   ; preds = %if.end27.i701
  call void @__sanitizer_cov_trace_pc() #6
  %257 = trunc i32 %sub18.i693 to i8
  %conv56.i722 = add i8 %243, %257
  %258 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv56.i722, ptr %op.10.ph, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.else51.i723, %if.end48.i721
  %op.17 = phi ptr [ %incdec.ptr50.i720, %if.end48.i721 ], [ %add.ptr17.i692, %if.else51.i723 ]
  %add.ptr58.i724 = getelementptr i8, ptr %ip.4.ph, i32 %ml.3
  %sub.ptr.rhs.cast.i729 = ptrtoint ptr %add.ptr58.i724 to i32
  %sub.ptr.sub.i730 = sub i32 %sub.ptr.rhs.cast12.i418.le1491, %sub.ptr.rhs.cast.i729
  %incdec.ptr.i731 = getelementptr i8, ptr %op.17, i32 1
  %shr.i733 = ashr i32 %sub.ptr.sub.i730, 8
  %add.ptr.i734 = getelementptr i8, ptr %op.17, i32 9
  %add.ptr1.i735 = getelementptr i8, ptr %add.ptr.i734, i32 %shr.i733
  %add.ptr2.i736 = getelementptr i8, ptr %add.ptr1.i735, i32 %sub.ptr.sub.i730
  %cmp.i737 = icmp ugt ptr %add.ptr2.i736, %add.ptr3
  %or.cond.i738 = select i1 %tobool.not.i892, i1 %cmp.i737, i1 false
  br i1 %or.cond.i738, label %if.end86.cleanup201_crit_edge, label %if.end.i740

if.end86.cleanup201_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end.i740:                                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i730)
  %cmp3.i739 = icmp sgt i32 %sub.ptr.sub.i730, 14
  br i1 %cmp3.i739, label %if.then4.i743, label %if.else.i755

if.then4.i743:                                    ; preds = %if.end.i740
  %259 = ptrtoint ptr %op.17 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 -16, ptr %op.17, align 1
  %sub.i741 = add nsw i32 %sub.ptr.sub.i730, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %sub.ptr.sub.i730)
  %cmp5103.i742 = icmp ugt i32 %sub.ptr.sub.i730, 269
  br i1 %cmp5103.i742, label %for.body.i748.preheader, label %if.then4.i743.for.end.i752_crit_edge

if.then4.i743.for.end.i752_crit_edge:             ; preds = %if.then4.i743
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i752

for.body.i748.preheader:                          ; preds = %if.then4.i743
  call void @__sanitizer_cov_trace_pc() #6
  %260 = add i32 %sub.ptr.rhs.cast12.i418.le1491, 239
  %umin1333 = call i32 @llvm.umin.i32(i32 %sub.i741, i32 509)
  %261 = add i32 %umin1333, %sub.ptr.rhs.cast.i729
  %262 = sub i32 %260, %261
  %263 = udiv i32 %262, 255
  %264 = add nuw nsw i32 %263, 1
  %265 = call ptr @memset(ptr %incdec.ptr.i731, i32 255, i32 %264)
  %266 = add i32 %sub.ptr.rhs.cast12.i418.le1491, -270
  %.neg1352 = mul i32 %263, -255
  %uglygep1334 = getelementptr i8, ptr %op.17, i32 2
  %uglygep1336 = getelementptr i8, ptr %uglygep1334, i32 %263
  %267 = sub i32 %266, %sub.ptr.rhs.cast.i729
  %268 = add i32 %.neg1352, %267
  br label %for.end.i752

for.end.i752:                                     ; preds = %for.body.i748.preheader, %if.then4.i743.for.end.i752_crit_edge
  %op.20 = phi ptr [ %incdec.ptr.i731, %if.then4.i743.for.end.i752_crit_edge ], [ %uglygep1336, %for.body.i748.preheader ]
  %len.0.lcssa.i749 = phi i32 [ %sub.i741, %if.then4.i743.for.end.i752_crit_edge ], [ %268, %for.body.i748.preheader ]
  %conv.i750 = trunc i32 %len.0.lcssa.i749 to i8
  %incdec.ptr8.i751 = getelementptr i8, ptr %op.20, i32 1
  %269 = ptrtoint ptr %op.20 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %conv.i750, ptr %op.20, align 1
  br label %if.end10.i757

if.else.i755:                                     ; preds = %if.end.i740
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub.tr.i753 = trunc i32 %sub.ptr.sub.i730 to i8
  %conv9.i754 = shl i8 %sub.ptr.sub.tr.i753, 4
  %270 = ptrtoint ptr %op.17 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv9.i754, ptr %op.17, align 1
  br label %if.end10.i757

if.end10.i757:                                    ; preds = %if.else.i755, %for.end.i752
  %op.21 = phi ptr [ %incdec.ptr8.i751, %for.end.i752 ], [ %incdec.ptr.i731, %if.else.i755 ]
  %add.ptr11.i756 = getelementptr i8, ptr %op.21, i32 %sub.ptr.sub.i730
  br label %do.body.i.i766

do.body.i.i766:                                   ; preds = %do.body.i.i766.do.body.i.i766_crit_edge, %if.end10.i757
  %d.0.i.i758 = phi ptr [ %op.21, %if.end10.i757 ], [ %add.ptr.i.i763, %do.body.i.i766.do.body.i.i766_crit_edge ]
  %s.0.i.i759 = phi ptr [ %add.ptr58.i724, %if.end10.i757 ], [ %add.ptr1.i.i764, %do.body.i.i766.do.body.i.i766_crit_edge ]
  %271 = ptrtoint ptr %s.0.i.i759 to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %s.0.val.i.i760 = load i32, ptr %s.0.i.i759, align 1
  %272 = getelementptr i8, ptr %s.0.i.i759, i32 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_loadN_noabort(i32 %273, i32 4)
  %s.0.val5.i.i761 = load i32, ptr %272, align 1
  %274 = ptrtoint ptr %d.0.i.i758 to i32
  call void @__asan_storeN_noabort(i32 %274, i32 4)
  store i32 %s.0.val.i.i760, ptr %d.0.i.i758, align 1
  %add.ptr8.i.i.i762 = getelementptr i32, ptr %d.0.i.i758, i32 1
  %275 = ptrtoint ptr %add.ptr8.i.i.i762 to i32
  call void @__asan_storeN_noabort(i32 %275, i32 4)
  store i32 %s.0.val5.i.i761, ptr %add.ptr8.i.i.i762, align 1
  %add.ptr.i.i763 = getelementptr i8, ptr %d.0.i.i758, i32 8
  %add.ptr1.i.i764 = getelementptr i8, ptr %s.0.i.i759, i32 8
  %cmp.i.i765 = icmp ult ptr %add.ptr.i.i763, %add.ptr11.i756
  br i1 %cmp.i.i765, label %do.body.i.i766.do.body.i.i766_crit_edge, label %LZ4_wildCopy.exit.i779

do.body.i.i766.do.body.i.i766_crit_edge:          ; preds = %do.body.i.i766
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i766

LZ4_wildCopy.exit.i779:                           ; preds = %do.body.i.i766
  %sub.ptr.rhs.cast14.i769 = ptrtoint ptr %ref2.7 to i32
  %sub.ptr.sub15.i770 = sub i32 %sub.ptr.rhs.cast12.i418.le1491, %sub.ptr.rhs.cast14.i769
  %conv16.i771 = trunc i32 %sub.ptr.sub15.i770 to i16
  %276 = tail call i16 @llvm.bswap.i16(i16 %conv16.i771) #4
  %277 = ptrtoint ptr %add.ptr11.i756 to i32
  call void @__asan_storeN_noabort(i32 %277, i32 2)
  store i16 %276, ptr %add.ptr11.i756, align 1
  %add.ptr17.i772 = getelementptr i8, ptr %add.ptr11.i756, i32 2
  %sub18.i773 = add i32 %ml2.3, -4
  %shr21.i774 = ashr i32 %sub18.i773, 8
  %add.ptr22.i775 = getelementptr i8, ptr %add.ptr17.i772, i32 6
  %add.ptr23.i776 = getelementptr i8, ptr %add.ptr22.i775, i32 %shr21.i774
  %cmp24.i777 = icmp ugt ptr %add.ptr23.i776, %add.ptr3
  %or.cond102.i778 = select i1 %tobool.not.i892, i1 %cmp24.i777, i1 false
  br i1 %or.cond102.i778, label %LZ4_wildCopy.exit.i779.cleanup201_crit_edge, label %if.end27.i781

LZ4_wildCopy.exit.i779.cleanup201_crit_edge:      ; preds = %LZ4_wildCopy.exit.i779
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end27.i781:                                    ; preds = %LZ4_wildCopy.exit.i779
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub18.i773)
  %cmp28.i780 = icmp sgt i32 %sub18.i773, 14
  %278 = ptrtoint ptr %op.17 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %op.17, align 1
  br i1 %cmp28.i780, label %if.then30.i785, label %if.else51.i803

if.then30.i785:                                   ; preds = %if.end27.i781
  %add.i782 = add i8 %279, 15
  %280 = ptrtoint ptr %op.17 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %add.i782, ptr %op.17, align 1
  %sub33.i783 = add i32 %ml2.3, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %sub33.i783)
  %cmp35105.i784 = icmp ugt i32 %sub33.i783, 509
  br i1 %cmp35105.i784, label %for.body37.i791.preheader, label %if.then30.i785.for.end42.i794_crit_edge

if.then30.i785.for.end42.i794_crit_edge:          ; preds = %if.then30.i785
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42.i794

for.body37.i791.preheader:                        ; preds = %if.then30.i785
  call void @__sanitizer_cov_trace_pc() #6
  %281 = add i32 %ml2.3, -529
  %282 = udiv i32 %281, 510
  %283 = shl nuw nsw i32 %282, 1
  %284 = add nuw nsw i32 %283, 2
  %285 = call ptr @memset(ptr %add.ptr17.i772, i32 255, i32 %284)
  %uglygep1337 = getelementptr i8, ptr %op.21, i32 4
  %286 = add i32 %283, %sub.ptr.rhs.cast12.i418.le1491
  %287 = sub i32 %286, %sub.ptr.rhs.cast.i729
  %uglygep1338 = getelementptr i8, ptr %uglygep1337, i32 %287
  %.neg1351 = mul nsw i32 %282, -510
  %288 = add nsw i32 %.neg1351, %281
  br label %for.end42.i794

for.end42.i794:                                   ; preds = %for.body37.i791.preheader, %if.then30.i785.for.end42.i794_crit_edge
  %op.23 = phi ptr [ %add.ptr17.i772, %if.then30.i785.for.end42.i794_crit_edge ], [ %uglygep1338, %for.body37.i791.preheader ]
  %length.0.lcssa.i792 = phi i32 [ %sub33.i783, %if.then30.i785.for.end42.i794_crit_edge ], [ %288, %for.body37.i791.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %length.0.lcssa.i792)
  %cmp43.i793 = icmp ugt i32 %length.0.lcssa.i792, 254
  br i1 %cmp43.i793, label %if.then45.i797, label %for.end42.i794.if.end48.i801_crit_edge

for.end42.i794.if.end48.i801_crit_edge:           ; preds = %for.end42.i794
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i801

if.then45.i797:                                   ; preds = %for.end42.i794
  call void @__sanitizer_cov_trace_pc() #6
  %sub46.i795 = add nsw i32 %length.0.lcssa.i792, -255
  %incdec.ptr47.i796 = getelementptr i8, ptr %op.23, i32 1
  %289 = ptrtoint ptr %op.23 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 -1, ptr %op.23, align 1
  br label %if.end48.i801

if.end48.i801:                                    ; preds = %if.then45.i797, %for.end42.i794.if.end48.i801_crit_edge
  %op.24 = phi ptr [ %incdec.ptr47.i796, %if.then45.i797 ], [ %op.23, %for.end42.i794.if.end48.i801_crit_edge ]
  %length.1.i798 = phi i32 [ %sub46.i795, %if.then45.i797 ], [ %length.0.lcssa.i792, %for.end42.i794.if.end48.i801_crit_edge ]
  %conv49.i799 = trunc i32 %length.1.i798 to i8
  %incdec.ptr50.i800 = getelementptr i8, ptr %op.24, i32 1
  %290 = ptrtoint ptr %op.24 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv49.i799, ptr %op.24, align 1
  br label %while.cond.outer.backedge

if.else51.i803:                                   ; preds = %if.end27.i781
  call void @__sanitizer_cov_trace_pc() #6
  %291 = trunc i32 %sub18.i773 to i8
  %conv56.i802 = add i8 %279, %291
  %292 = ptrtoint ptr %op.17 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv56.i802, ptr %op.17, align 1
  br label %while.cond.outer.backedge

if.end91:                                         ; preds = %if.end73
  %cmp94 = icmp ult ptr %start3.4, %add.ptr93
  br i1 %cmp94, label %if.then95, label %if.end119

if.then95:                                        ; preds = %if.end91
  %cmp97.not = icmp ult ptr %start3.4, %add.ptr92
  br i1 %cmp97.not, label %if.then95._Search3_crit_edge, label %if.then98

if.then95._Search3_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #6
  br label %_Search3

if.then98:                                        ; preds = %if.then95
  %sub.ptr.rhs.cast38.le = ptrtoint ptr %ip.4.ph to i32
  %cmp100 = icmp ult ptr %start2.7, %add.ptr92
  br i1 %cmp100, label %if.then101, label %if.then98.if.end113_crit_edge

if.then98.if.end113_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

if.then101:                                       ; preds = %if.then98
  %sub.ptr.rhs.cast12.i418.le = ptrtoint ptr %start2.7 to i32
  %sub.ptr.lhs.cast104 = ptrtoint ptr %add.ptr92 to i32
  %sub.ptr.sub106 = sub i32 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast12.i418.le
  %add.ptr107 = getelementptr i8, ptr %start2.7, i32 %sub.ptr.sub106
  %add.ptr108 = getelementptr i8, ptr %ref2.7, i32 %sub.ptr.sub106
  %sub109 = sub i32 %ml2.3, %sub.ptr.sub106
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub109)
  %cmp110 = icmp slt i32 %sub109, 4
  br i1 %cmp110, label %if.then111, label %if.then101.if.end113_crit_edge

if.then101.if.end113_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

if.then111:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then101.if.end113_crit_edge, %if.then98.if.end113_crit_edge
  %start2.8 = phi ptr [ %start3.4, %if.then111 ], [ %add.ptr107, %if.then101.if.end113_crit_edge ], [ %start2.7, %if.then98.if.end113_crit_edge ]
  %ref2.8 = phi ptr [ %ref3.4, %if.then111 ], [ %add.ptr108, %if.then101.if.end113_crit_edge ], [ %ref2.7, %if.then98.if.end113_crit_edge ]
  %ml2.5 = phi i32 [ %longest.addr.5.i637, %if.then111 ], [ %sub109, %if.then101.if.end113_crit_edge ], [ %ml2.3, %if.then98.if.end113_crit_edge ]
  %sub.ptr.rhs.cast.i809 = ptrtoint ptr %anchor.3.ph to i32
  %sub.ptr.sub.i810 = sub i32 %sub.ptr.rhs.cast38.le, %sub.ptr.rhs.cast.i809
  %incdec.ptr.i811 = getelementptr i8, ptr %op.10.ph, i32 1
  %shr.i813 = ashr i32 %sub.ptr.sub.i810, 8
  %add.ptr.i814 = getelementptr i8, ptr %op.10.ph, i32 9
  %add.ptr1.i815 = getelementptr i8, ptr %add.ptr.i814, i32 %shr.i813
  %add.ptr2.i816 = getelementptr i8, ptr %add.ptr1.i815, i32 %sub.ptr.sub.i810
  %cmp.i817 = icmp ugt ptr %add.ptr2.i816, %add.ptr3
  %or.cond.i818 = select i1 %tobool.not.i892, i1 %cmp.i817, i1 false
  br i1 %or.cond.i818, label %if.end113.cleanup201_crit_edge, label %if.end.i820

if.end113.cleanup201_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end.i820:                                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i810)
  %cmp3.i819 = icmp sgt i32 %sub.ptr.sub.i810, 14
  br i1 %cmp3.i819, label %if.then4.i823, label %if.else.i835

if.then4.i823:                                    ; preds = %if.end.i820
  %293 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -16, ptr %op.10.ph, align 1
  %sub.i821 = add nsw i32 %sub.ptr.sub.i810, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %sub.ptr.sub.i810)
  %cmp5103.i822 = icmp ugt i32 %sub.ptr.sub.i810, 269
  br i1 %cmp5103.i822, label %for.body.i828.preheader, label %if.then4.i823.for.end.i832_crit_edge

if.then4.i823.for.end.i832_crit_edge:             ; preds = %if.then4.i823
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i832

for.body.i828.preheader:                          ; preds = %if.then4.i823
  call void @__sanitizer_cov_trace_pc() #6
  %294 = add i32 %sub.ptr.rhs.cast38.le, 239
  %umin1319 = call i32 @llvm.umin.i32(i32 %sub.i821, i32 509)
  %295 = add i32 %umin1319, %sub.ptr.rhs.cast.i809
  %296 = sub i32 %294, %295
  %297 = udiv i32 %296, 255
  %298 = add nuw nsw i32 %297, 1
  %299 = call ptr @memset(ptr %incdec.ptr.i811, i32 255, i32 %298)
  %300 = add i32 %sub.ptr.rhs.cast38.le, -270
  %.neg1358 = mul i32 %297, -255
  %uglygep1320 = getelementptr i8, ptr %op.10.ph, i32 2
  %uglygep1322 = getelementptr i8, ptr %uglygep1320, i32 %297
  %301 = sub i32 %300, %sub.ptr.rhs.cast.i809
  %302 = add i32 %.neg1358, %301
  br label %for.end.i832

for.end.i832:                                     ; preds = %for.body.i828.preheader, %if.then4.i823.for.end.i832_crit_edge
  %op.28 = phi ptr [ %incdec.ptr.i811, %if.then4.i823.for.end.i832_crit_edge ], [ %uglygep1322, %for.body.i828.preheader ]
  %len.0.lcssa.i829 = phi i32 [ %sub.i821, %if.then4.i823.for.end.i832_crit_edge ], [ %302, %for.body.i828.preheader ]
  %conv.i830 = trunc i32 %len.0.lcssa.i829 to i8
  %incdec.ptr8.i831 = getelementptr i8, ptr %op.28, i32 1
  %303 = ptrtoint ptr %op.28 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv.i830, ptr %op.28, align 1
  br label %if.end10.i837

if.else.i835:                                     ; preds = %if.end.i820
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub.tr.i833 = trunc i32 %sub.ptr.sub.i810 to i8
  %conv9.i834 = shl i8 %sub.ptr.sub.tr.i833, 4
  %304 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv9.i834, ptr %op.10.ph, align 1
  br label %if.end10.i837

if.end10.i837:                                    ; preds = %if.else.i835, %for.end.i832
  %op.29 = phi ptr [ %incdec.ptr8.i831, %for.end.i832 ], [ %incdec.ptr.i811, %if.else.i835 ]
  %add.ptr11.i836 = getelementptr i8, ptr %op.29, i32 %sub.ptr.sub.i810
  br label %do.body.i.i846

do.body.i.i846:                                   ; preds = %do.body.i.i846.do.body.i.i846_crit_edge, %if.end10.i837
  %d.0.i.i838 = phi ptr [ %op.29, %if.end10.i837 ], [ %add.ptr.i.i843, %do.body.i.i846.do.body.i.i846_crit_edge ]
  %s.0.i.i839 = phi ptr [ %anchor.3.ph, %if.end10.i837 ], [ %add.ptr1.i.i844, %do.body.i.i846.do.body.i.i846_crit_edge ]
  %305 = ptrtoint ptr %s.0.i.i839 to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %s.0.val.i.i840 = load i32, ptr %s.0.i.i839, align 1
  %306 = getelementptr i8, ptr %s.0.i.i839, i32 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_loadN_noabort(i32 %307, i32 4)
  %s.0.val5.i.i841 = load i32, ptr %306, align 1
  %308 = ptrtoint ptr %d.0.i.i838 to i32
  call void @__asan_storeN_noabort(i32 %308, i32 4)
  store i32 %s.0.val.i.i840, ptr %d.0.i.i838, align 1
  %add.ptr8.i.i.i842 = getelementptr i32, ptr %d.0.i.i838, i32 1
  %309 = ptrtoint ptr %add.ptr8.i.i.i842 to i32
  call void @__asan_storeN_noabort(i32 %309, i32 4)
  store i32 %s.0.val5.i.i841, ptr %add.ptr8.i.i.i842, align 1
  %add.ptr.i.i843 = getelementptr i8, ptr %d.0.i.i838, i32 8
  %add.ptr1.i.i844 = getelementptr i8, ptr %s.0.i.i839, i32 8
  %cmp.i.i845 = icmp ult ptr %add.ptr.i.i843, %add.ptr11.i836
  br i1 %cmp.i.i845, label %do.body.i.i846.do.body.i.i846_crit_edge, label %LZ4_wildCopy.exit.i859

do.body.i.i846.do.body.i.i846_crit_edge:          ; preds = %do.body.i.i846
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i846

LZ4_wildCopy.exit.i859:                           ; preds = %do.body.i.i846
  %sub.ptr.rhs.cast14.i849 = ptrtoint ptr %ref.6.ph to i32
  %sub.ptr.sub15.i850 = sub i32 %sub.ptr.rhs.cast38.le, %sub.ptr.rhs.cast14.i849
  %conv16.i851 = trunc i32 %sub.ptr.sub15.i850 to i16
  %310 = tail call i16 @llvm.bswap.i16(i16 %conv16.i851) #4
  %311 = ptrtoint ptr %add.ptr11.i836 to i32
  call void @__asan_storeN_noabort(i32 %311, i32 2)
  store i16 %310, ptr %add.ptr11.i836, align 1
  %add.ptr17.i852 = getelementptr i8, ptr %add.ptr11.i836, i32 2
  %sub18.i853 = add i32 %ml.2.ph, -4
  %shr21.i854 = ashr i32 %sub18.i853, 8
  %add.ptr22.i855 = getelementptr i8, ptr %add.ptr17.i852, i32 6
  %add.ptr23.i856 = getelementptr i8, ptr %add.ptr22.i855, i32 %shr21.i854
  %cmp24.i857 = icmp ugt ptr %add.ptr23.i856, %add.ptr3
  %or.cond102.i858 = select i1 %tobool.not.i892, i1 %cmp24.i857, i1 false
  br i1 %or.cond102.i858, label %LZ4_wildCopy.exit.i859.cleanup201_crit_edge, label %if.end27.i861

LZ4_wildCopy.exit.i859.cleanup201_crit_edge:      ; preds = %LZ4_wildCopy.exit.i859
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end27.i861:                                    ; preds = %LZ4_wildCopy.exit.i859
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub18.i853)
  %cmp28.i860 = icmp sgt i32 %sub18.i853, 14
  %312 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %op.10.ph, align 1
  br i1 %cmp28.i860, label %if.then30.i865, label %if.else51.i883

if.then30.i865:                                   ; preds = %if.end27.i861
  %add.i862 = add i8 %313, 15
  %314 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %add.i862, ptr %op.10.ph, align 1
  %sub33.i863 = add i32 %ml.2.ph, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %sub33.i863)
  %cmp35105.i864 = icmp ugt i32 %sub33.i863, 509
  br i1 %cmp35105.i864, label %for.body37.i871.preheader, label %if.then30.i865.for.end42.i874_crit_edge

if.then30.i865.for.end42.i874_crit_edge:          ; preds = %if.then30.i865
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42.i874

for.body37.i871.preheader:                        ; preds = %if.then30.i865
  call void @__sanitizer_cov_trace_pc() #6
  %315 = add i32 %ml.2.ph, -529
  %316 = udiv i32 %315, 510
  %317 = shl nuw nsw i32 %316, 1
  %318 = add nuw nsw i32 %317, 2
  %319 = call ptr @memset(ptr %add.ptr17.i852, i32 255, i32 %318)
  %uglygep1323 = getelementptr i8, ptr %op.29, i32 4
  %320 = add i32 %317, %sub.ptr.rhs.cast38.le
  %321 = sub i32 %320, %sub.ptr.rhs.cast.i809
  %uglygep1324 = getelementptr i8, ptr %uglygep1323, i32 %321
  %.neg1357 = mul nsw i32 %316, -510
  %322 = add nsw i32 %.neg1357, %315
  br label %for.end42.i874

for.end42.i874:                                   ; preds = %for.body37.i871.preheader, %if.then30.i865.for.end42.i874_crit_edge
  %op.31 = phi ptr [ %add.ptr17.i852, %if.then30.i865.for.end42.i874_crit_edge ], [ %uglygep1324, %for.body37.i871.preheader ]
  %length.0.lcssa.i872 = phi i32 [ %sub33.i863, %if.then30.i865.for.end42.i874_crit_edge ], [ %322, %for.body37.i871.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %length.0.lcssa.i872)
  %cmp43.i873 = icmp ugt i32 %length.0.lcssa.i872, 254
  br i1 %cmp43.i873, label %if.then45.i877, label %for.end42.i874.if.end48.i881_crit_edge

for.end42.i874.if.end48.i881_crit_edge:           ; preds = %for.end42.i874
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i881

if.then45.i877:                                   ; preds = %for.end42.i874
  call void @__sanitizer_cov_trace_pc() #6
  %sub46.i875 = add nsw i32 %length.0.lcssa.i872, -255
  %incdec.ptr47.i876 = getelementptr i8, ptr %op.31, i32 1
  %323 = ptrtoint ptr %op.31 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 -1, ptr %op.31, align 1
  br label %if.end48.i881

if.end48.i881:                                    ; preds = %if.then45.i877, %for.end42.i874.if.end48.i881_crit_edge
  %op.32 = phi ptr [ %incdec.ptr47.i876, %if.then45.i877 ], [ %op.31, %for.end42.i874.if.end48.i881_crit_edge ]
  %length.1.i878 = phi i32 [ %sub46.i875, %if.then45.i877 ], [ %length.0.lcssa.i872, %for.end42.i874.if.end48.i881_crit_edge ]
  %conv49.i879 = trunc i32 %length.1.i878 to i8
  %incdec.ptr50.i880 = getelementptr i8, ptr %op.32, i32 1
  %324 = ptrtoint ptr %op.32 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %conv49.i879, ptr %op.32, align 1
  br label %_Search2.outer.backedge

if.else51.i883:                                   ; preds = %if.end27.i861
  call void @__sanitizer_cov_trace_pc() #6
  %325 = trunc i32 %sub18.i853 to i8
  %conv56.i882 = add i8 %313, %325
  %326 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %conv56.i882, ptr %op.10.ph, align 1
  br label %_Search2.outer.backedge

_Search2.outer.backedge:                          ; preds = %if.else51.i883, %if.end48.i881
  %op.1.ph.be = phi ptr [ %add.ptr17.i852, %if.else51.i883 ], [ %incdec.ptr50.i880, %if.end48.i881 ]
  br label %_Search2.outer

_Search2.outer:                                   ; preds = %_Search2.outer.backedge, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge
  %ip.1.ph = phi ptr [ %start3.4, %_Search2.outer.backedge ], [ %ip.01211, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %anchor.1.ph = phi ptr [ %add.ptr92, %_Search2.outer.backedge ], [ %anchor.0.ph1226, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %op.1.ph = phi ptr [ %op.1.ph.be, %_Search2.outer.backedge ], [ %op.0.ph1227, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %ref.4.ph = phi ptr [ %ref3.4, %_Search2.outer.backedge ], [ %ref.2, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %start2.1.ph = phi ptr [ %start2.8, %_Search2.outer.backedge ], [ %start2.0.ph1229, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %ref2.1.ph = phi ptr [ %ref2.8, %_Search2.outer.backedge ], [ %ref2.0.ph1230, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %start3.1.ph = phi ptr [ %start3.4, %_Search2.outer.backedge ], [ %start3.0.ph1231, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %ref3.1.ph = phi ptr [ %ref3.4, %_Search2.outer.backedge ], [ %ref3.0.ph1232, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %ml.0.ph = phi i32 [ %longest.addr.5.i637, %_Search2.outer.backedge ], [ %ml.5.i, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %ml0.0.ph = phi i32 [ %ml2.5, %_Search2.outer.backedge ], [ %ml.5.i, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %start0.0.ph = phi ptr [ %start2.8, %_Search2.outer.backedge ], [ %ip.01211, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  %ref0.0.ph = phi ptr [ %ref2.8, %_Search2.outer.backedge ], [ %ref.2, %LZ4HC_InsertAndFindBestMatch.exit._Search2.outer_crit_edge ]
  br label %_Search2

if.end119:                                        ; preds = %if.end91
  %sub.ptr.rhs.cast12.i418.le1489 = ptrtoint ptr %start2.7 to i32
  %cmp121 = icmp ult ptr %start2.7, %add.ptr92
  br i1 %cmp121, label %if.then122, label %if.end119.if.end158_crit_edge

if.end119.if.end158_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then122:                                       ; preds = %if.end119
  %sub.ptr.sub125 = sub i32 %sub.ptr.rhs.cast12.i418.le1489, %sub.ptr.rhs.cast38
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub125)
  %cmp126 = icmp slt i32 %sub.ptr.sub125, 15
  br i1 %cmp126, label %if.then127, label %if.then122.if.end158_crit_edge

if.then122.if.end158_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then127:                                       ; preds = %if.then122
  %add.ptr134 = getelementptr i8, ptr %add.ptr66, i32 -4
  %cmp135 = icmp ugt ptr %add.ptr45, %add.ptr134
  %add140 = add i32 %ml2.3, -4
  %sub141 = add i32 %add140, %sub.ptr.sub125
  %ml.5 = select i1 %cmp135, i32 %sub141, i32 %157
  %sub.ptr.sub145.neg = sub i32 %sub.ptr.rhs.cast38, %sub.ptr.rhs.cast12.i418.le1489
  %sub146 = add i32 %ml.5, %sub.ptr.sub145.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub146)
  %cmp147 = icmp sgt i32 %sub146, 0
  br i1 %cmp147, label %if.then148, label %if.then127.if.end158_crit_edge

if.then127.if.end158_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then148:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr149 = getelementptr i8, ptr %start2.7, i32 %sub146
  %add.ptr150 = getelementptr i8, ptr %ref2.7, i32 %sub146
  %sub151 = sub i32 %ml2.3, %sub146
  br label %if.end158

if.end158:                                        ; preds = %if.then148, %if.then127.if.end158_crit_edge, %if.then122.if.end158_crit_edge, %if.end119.if.end158_crit_edge
  %start2.9 = phi ptr [ %add.ptr149, %if.then148 ], [ %start2.7, %if.then127.if.end158_crit_edge ], [ %start2.7, %if.then122.if.end158_crit_edge ], [ %start2.7, %if.end119.if.end158_crit_edge ]
  %ref2.9 = phi ptr [ %add.ptr150, %if.then148 ], [ %ref2.7, %if.then127.if.end158_crit_edge ], [ %ref2.7, %if.then122.if.end158_crit_edge ], [ %ref2.7, %if.end119.if.end158_crit_edge ]
  %ml.6 = phi i32 [ %ml.5, %if.then148 ], [ %ml.5, %if.then127.if.end158_crit_edge ], [ %sub.ptr.sub125, %if.then122.if.end158_crit_edge ], [ %ml.2.ph, %if.end119.if.end158_crit_edge ]
  %ml2.7 = phi i32 [ %sub151, %if.then148 ], [ %ml2.3, %if.then127.if.end158_crit_edge ], [ %ml2.3, %if.then122.if.end158_crit_edge ], [ %ml2.3, %if.end119.if.end158_crit_edge ]
  %sub.ptr.rhs.cast.i889 = ptrtoint ptr %anchor.3.ph to i32
  %sub.ptr.sub.i890 = sub i32 %sub.ptr.rhs.cast38, %sub.ptr.rhs.cast.i889
  %incdec.ptr.i891 = getelementptr i8, ptr %op.10.ph, i32 1
  %shr.i893 = ashr i32 %sub.ptr.sub.i890, 8
  %add.ptr.i894 = getelementptr i8, ptr %op.10.ph, i32 9
  %add.ptr1.i895 = getelementptr i8, ptr %add.ptr.i894, i32 %shr.i893
  %add.ptr2.i896 = getelementptr i8, ptr %add.ptr1.i895, i32 %sub.ptr.sub.i890
  %cmp.i897 = icmp ugt ptr %add.ptr2.i896, %add.ptr3
  %or.cond.i898 = select i1 %tobool.not.i892, i1 %cmp.i897, i1 false
  br i1 %or.cond.i898, label %if.end158.cleanup201_crit_edge, label %if.end.i900

if.end158.cleanup201_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end.i900:                                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i890)
  %cmp3.i899 = icmp sgt i32 %sub.ptr.sub.i890, 14
  br i1 %cmp3.i899, label %if.then4.i903, label %if.else.i915

if.then4.i903:                                    ; preds = %if.end.i900
  %327 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 -16, ptr %op.10.ph, align 1
  %sub.i901 = add nsw i32 %sub.ptr.sub.i890, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %sub.ptr.sub.i890)
  %cmp5103.i902 = icmp ugt i32 %sub.ptr.sub.i890, 269
  br i1 %cmp5103.i902, label %for.body.i908.preheader, label %if.then4.i903.for.end.i912_crit_edge

if.then4.i903.for.end.i912_crit_edge:             ; preds = %if.then4.i903
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i912

for.body.i908.preheader:                          ; preds = %if.then4.i903
  call void @__sanitizer_cov_trace_pc() #6
  %328 = add i32 %sub.ptr.rhs.cast38, 239
  %umin = call i32 @llvm.umin.i32(i32 %sub.i901, i32 509)
  %329 = add i32 %umin, %sub.ptr.rhs.cast.i889
  %330 = sub i32 %328, %329
  %331 = udiv i32 %330, 255
  %332 = add nuw nsw i32 %331, 1
  %333 = call ptr @memset(ptr %incdec.ptr.i891, i32 255, i32 %332)
  %334 = add i32 %sub.ptr.rhs.cast38, -270
  %.neg1356 = mul i32 %331, -255
  %uglygep = getelementptr i8, ptr %op.10.ph, i32 2
  %uglygep1316 = getelementptr i8, ptr %uglygep, i32 %331
  %335 = sub i32 %334, %sub.ptr.rhs.cast.i889
  %336 = add i32 %.neg1356, %335
  br label %for.end.i912

for.end.i912:                                     ; preds = %for.body.i908.preheader, %if.then4.i903.for.end.i912_crit_edge
  %op.36 = phi ptr [ %incdec.ptr.i891, %if.then4.i903.for.end.i912_crit_edge ], [ %uglygep1316, %for.body.i908.preheader ]
  %len.0.lcssa.i909 = phi i32 [ %sub.i901, %if.then4.i903.for.end.i912_crit_edge ], [ %336, %for.body.i908.preheader ]
  %conv.i910 = trunc i32 %len.0.lcssa.i909 to i8
  %incdec.ptr8.i911 = getelementptr i8, ptr %op.36, i32 1
  %337 = ptrtoint ptr %op.36 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %conv.i910, ptr %op.36, align 1
  br label %if.end10.i917

if.else.i915:                                     ; preds = %if.end.i900
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub.tr.i913 = trunc i32 %sub.ptr.sub.i890 to i8
  %conv9.i914 = shl i8 %sub.ptr.sub.tr.i913, 4
  %338 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %conv9.i914, ptr %op.10.ph, align 1
  br label %if.end10.i917

if.end10.i917:                                    ; preds = %if.else.i915, %for.end.i912
  %op.37 = phi ptr [ %incdec.ptr8.i911, %for.end.i912 ], [ %incdec.ptr.i891, %if.else.i915 ]
  %add.ptr11.i916 = getelementptr i8, ptr %op.37, i32 %sub.ptr.sub.i890
  br label %do.body.i.i926

do.body.i.i926:                                   ; preds = %do.body.i.i926.do.body.i.i926_crit_edge, %if.end10.i917
  %d.0.i.i918 = phi ptr [ %op.37, %if.end10.i917 ], [ %add.ptr.i.i923, %do.body.i.i926.do.body.i.i926_crit_edge ]
  %s.0.i.i919 = phi ptr [ %anchor.3.ph, %if.end10.i917 ], [ %add.ptr1.i.i924, %do.body.i.i926.do.body.i.i926_crit_edge ]
  %339 = ptrtoint ptr %s.0.i.i919 to i32
  call void @__asan_loadN_noabort(i32 %339, i32 4)
  %s.0.val.i.i920 = load i32, ptr %s.0.i.i919, align 1
  %340 = getelementptr i8, ptr %s.0.i.i919, i32 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_loadN_noabort(i32 %341, i32 4)
  %s.0.val5.i.i921 = load i32, ptr %340, align 1
  %342 = ptrtoint ptr %d.0.i.i918 to i32
  call void @__asan_storeN_noabort(i32 %342, i32 4)
  store i32 %s.0.val.i.i920, ptr %d.0.i.i918, align 1
  %add.ptr8.i.i.i922 = getelementptr i32, ptr %d.0.i.i918, i32 1
  %343 = ptrtoint ptr %add.ptr8.i.i.i922 to i32
  call void @__asan_storeN_noabort(i32 %343, i32 4)
  store i32 %s.0.val5.i.i921, ptr %add.ptr8.i.i.i922, align 1
  %add.ptr.i.i923 = getelementptr i8, ptr %d.0.i.i918, i32 8
  %add.ptr1.i.i924 = getelementptr i8, ptr %s.0.i.i919, i32 8
  %cmp.i.i925 = icmp ult ptr %add.ptr.i.i923, %add.ptr11.i916
  br i1 %cmp.i.i925, label %do.body.i.i926.do.body.i.i926_crit_edge, label %LZ4_wildCopy.exit.i939

do.body.i.i926.do.body.i.i926_crit_edge:          ; preds = %do.body.i.i926
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i926

LZ4_wildCopy.exit.i939:                           ; preds = %do.body.i.i926
  %sub.ptr.rhs.cast14.i929 = ptrtoint ptr %ref.6.ph to i32
  %sub.ptr.sub15.i930 = sub i32 %sub.ptr.rhs.cast38, %sub.ptr.rhs.cast14.i929
  %conv16.i931 = trunc i32 %sub.ptr.sub15.i930 to i16
  %344 = tail call i16 @llvm.bswap.i16(i16 %conv16.i931) #4
  %345 = ptrtoint ptr %add.ptr11.i916 to i32
  call void @__asan_storeN_noabort(i32 %345, i32 2)
  store i16 %344, ptr %add.ptr11.i916, align 1
  %add.ptr17.i932 = getelementptr i8, ptr %add.ptr11.i916, i32 2
  %sub18.i933 = add i32 %ml.6, -4
  %shr21.i934 = ashr i32 %sub18.i933, 8
  %add.ptr22.i935 = getelementptr i8, ptr %add.ptr17.i932, i32 6
  %add.ptr23.i936 = getelementptr i8, ptr %add.ptr22.i935, i32 %shr21.i934
  %cmp24.i937 = icmp ugt ptr %add.ptr23.i936, %add.ptr3
  %or.cond102.i938 = select i1 %tobool.not.i892, i1 %cmp24.i937, i1 false
  br i1 %or.cond102.i938, label %LZ4_wildCopy.exit.i939.cleanup201_crit_edge, label %if.end27.i941

LZ4_wildCopy.exit.i939.cleanup201_crit_edge:      ; preds = %LZ4_wildCopy.exit.i939
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end27.i941:                                    ; preds = %LZ4_wildCopy.exit.i939
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub18.i933)
  %cmp28.i940 = icmp sgt i32 %sub18.i933, 14
  %346 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %op.10.ph, align 1
  br i1 %cmp28.i940, label %if.then30.i945, label %if.else51.i963

if.then30.i945:                                   ; preds = %if.end27.i941
  %add.i942 = add i8 %347, 15
  %348 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %add.i942, ptr %op.10.ph, align 1
  %sub33.i943 = add i32 %ml.6, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %sub33.i943)
  %cmp35105.i944 = icmp ugt i32 %sub33.i943, 509
  br i1 %cmp35105.i944, label %for.body37.i951.preheader, label %if.then30.i945.for.end42.i954_crit_edge

if.then30.i945.for.end42.i954_crit_edge:          ; preds = %if.then30.i945
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42.i954

for.body37.i951.preheader:                        ; preds = %if.then30.i945
  call void @__sanitizer_cov_trace_pc() #6
  %349 = add i32 %ml.6, -529
  %350 = udiv i32 %349, 510
  %351 = shl nuw nsw i32 %350, 1
  %352 = add nuw nsw i32 %351, 2
  %353 = call ptr @memset(ptr %add.ptr17.i932, i32 255, i32 %352)
  %uglygep1317 = getelementptr i8, ptr %op.37, i32 4
  %354 = add i32 %351, %sub.ptr.rhs.cast38
  %355 = sub i32 %354, %sub.ptr.rhs.cast.i889
  %uglygep1318 = getelementptr i8, ptr %uglygep1317, i32 %355
  %.neg1355 = mul nsw i32 %350, -510
  %356 = add nsw i32 %.neg1355, %349
  br label %for.end42.i954

for.end42.i954:                                   ; preds = %for.body37.i951.preheader, %if.then30.i945.for.end42.i954_crit_edge
  %op.39 = phi ptr [ %add.ptr17.i932, %if.then30.i945.for.end42.i954_crit_edge ], [ %uglygep1318, %for.body37.i951.preheader ]
  %length.0.lcssa.i952 = phi i32 [ %sub33.i943, %if.then30.i945.for.end42.i954_crit_edge ], [ %356, %for.body37.i951.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %length.0.lcssa.i952)
  %cmp43.i953 = icmp ugt i32 %length.0.lcssa.i952, 254
  br i1 %cmp43.i953, label %if.then45.i957, label %for.end42.i954.if.end48.i961_crit_edge

for.end42.i954.if.end48.i961_crit_edge:           ; preds = %for.end42.i954
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i961

if.then45.i957:                                   ; preds = %for.end42.i954
  call void @__sanitizer_cov_trace_pc() #6
  %sub46.i955 = add nsw i32 %length.0.lcssa.i952, -255
  %incdec.ptr47.i956 = getelementptr i8, ptr %op.39, i32 1
  %357 = ptrtoint ptr %op.39 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 -1, ptr %op.39, align 1
  br label %if.end48.i961

if.end48.i961:                                    ; preds = %if.then45.i957, %for.end42.i954.if.end48.i961_crit_edge
  %op.40 = phi ptr [ %incdec.ptr47.i956, %if.then45.i957 ], [ %op.39, %for.end42.i954.if.end48.i961_crit_edge ]
  %length.1.i958 = phi i32 [ %sub46.i955, %if.then45.i957 ], [ %length.0.lcssa.i952, %for.end42.i954.if.end48.i961_crit_edge ]
  %conv49.i959 = trunc i32 %length.1.i958 to i8
  %incdec.ptr50.i960 = getelementptr i8, ptr %op.40, i32 1
  %358 = ptrtoint ptr %op.40 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv49.i959, ptr %op.40, align 1
  br label %if.end162

if.else51.i963:                                   ; preds = %if.end27.i941
  call void @__sanitizer_cov_trace_pc() #6
  %359 = trunc i32 %sub18.i933 to i8
  %conv56.i962 = add i8 %347, %359
  %360 = ptrtoint ptr %op.10.ph to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %conv56.i962, ptr %op.10.ph, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.else51.i963, %if.end48.i961
  %op.41 = phi ptr [ %incdec.ptr50.i960, %if.end48.i961 ], [ %add.ptr17.i932, %if.else51.i963 ]
  %add.ptr58.i964 = getelementptr i8, ptr %ip.4.ph, i32 %ml.6
  br label %_Search3.outer

while.end:                                        ; preds = %while.cond.outer.backedge.while.end_crit_edge, %if.then9.while.end_crit_edge, %entry.while.end_crit_edge
  %anchor.0.ph.lcssa1209 = phi ptr [ %source, %entry.while.end_crit_edge ], [ %anchor.0.ph1226, %if.then9.while.end_crit_edge ], [ %ip.0.ph.be, %while.cond.outer.backedge.while.end_crit_edge ]
  %op.0.ph.lcssa1206 = phi ptr [ %dest, %entry.while.end_crit_edge ], [ %op.0.ph1227, %if.then9.while.end_crit_edge ], [ %op.0.ph.be, %while.cond.outer.backedge.while.end_crit_edge ]
  %sub.ptr.lhs.cast163 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast164 = ptrtoint ptr %anchor.0.ph.lcssa1209 to i32
  %sub.ptr.sub165 = sub i32 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %tobool166.not = icmp eq i32 %limit, 0
  br i1 %tobool166.not, label %while.end.if.end177_crit_edge, label %land.lhs.true

while.end.if.end177_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177

land.lhs.true:                                    ; preds = %while.end
  %sub.ptr.lhs.cast167 = ptrtoint ptr %op.0.ph.lcssa1206 to i32
  %sub.ptr.rhs.cast168 = ptrtoint ptr %dest to i32
  %sub173 = add i32 %sub.ptr.sub165, 240
  %div = udiv i32 %sub173, 255
  %sub.ptr.sub169 = sub i32 1, %sub.ptr.rhs.cast168
  %add170 = add i32 %sub.ptr.sub169, %sub.ptr.lhs.cast167
  %add171 = add i32 %add170, %sub.ptr.sub165
  %add174 = add i32 %add171, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %add174, i32 %maxOutputSize)
  %cmp175 = icmp ugt i32 %add174, %maxOutputSize
  br i1 %cmp175, label %land.lhs.true.cleanup201_crit_edge, label %land.lhs.true.if.end177_crit_edge

land.lhs.true.if.end177_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177

land.lhs.true.cleanup201_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup201

if.end177:                                        ; preds = %land.lhs.true.if.end177_crit_edge, %while.end.if.end177_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub165)
  %cmp178 = icmp sgt i32 %sub.ptr.sub165, 14
  br i1 %cmp178, label %if.then179, label %if.else186

if.then179:                                       ; preds = %if.end177
  %361 = ptrtoint ptr %op.0.ph.lcssa1206 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 -16, ptr %op.0.ph.lcssa1206, align 1
  %sub181 = add nsw i32 %sub.ptr.sub165, -15
  %op.431235 = getelementptr i8, ptr %op.0.ph.lcssa1206, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %sub.ptr.sub165)
  %cmp1821236 = icmp ugt i32 %sub.ptr.sub165, 269
  br i1 %cmp1821236, label %for.body.preheader, label %if.then179.for.end_crit_edge

if.then179.for.end_crit_edge:                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #6
  %362 = add i32 %source1345, %inputSize
  %363 = add i32 %362, 239
  %smin = call i32 @llvm.smin.i32(i32 %sub181, i32 509)
  %364 = add i32 %smin, %sub.ptr.rhs.cast164
  %365 = sub i32 %363, %364
  %366 = udiv i32 %365, 255
  %367 = add nuw nsw i32 %366, 1
  %368 = call ptr @memset(ptr %op.431235, i32 255, i32 %367)
  %369 = add i32 %362, -270
  %.neg = mul i32 %366, -255
  %370 = add nuw nsw i32 %366, 2
  %371 = sub i32 %369, %sub.ptr.rhs.cast164
  %372 = add i32 %.neg, %371
  %uglygep1347 = getelementptr i8, ptr %op.0.ph.lcssa1206, i32 %370
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.then179.for.end_crit_edge
  %lastRun.0.lcssa = phi i32 [ %sub181, %if.then179.for.end_crit_edge ], [ %372, %for.body.preheader ]
  %op.43.lcssa = phi ptr [ %op.431235, %if.then179.for.end_crit_edge ], [ %uglygep1347, %for.body.preheader ]
  %conv = trunc i32 %lastRun.0.lcssa to i8
  %373 = ptrtoint ptr %op.43.lcssa to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %conv, ptr %op.43.lcssa, align 1
  br label %if.end190

if.else186:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub165.tr = trunc i32 %sub.ptr.sub165 to i8
  %conv188 = shl i8 %sub.ptr.sub165.tr, 4
  %374 = ptrtoint ptr %op.0.ph.lcssa1206 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %conv188, ptr %op.0.ph.lcssa1206, align 1
  br label %if.end190

if.end190:                                        ; preds = %if.else186, %for.end
  %op.43.pn = phi ptr [ %op.43.lcssa, %for.end ], [ %op.0.ph.lcssa1206, %if.else186 ]
  %op.44 = getelementptr i8, ptr %op.43.pn, i32 1
  %375 = call ptr @memcpy(ptr %op.44, ptr %anchor.0.ph.lcssa1209, i32 %sub.ptr.sub165)
  %add.ptr197 = getelementptr i8, ptr %op.44, i32 %sub.ptr.sub165
  %sub.ptr.lhs.cast198 = ptrtoint ptr %add.ptr197 to i32
  %sub.ptr.rhs.cast199 = ptrtoint ptr %dest to i32
  %sub.ptr.sub200 = sub i32 %sub.ptr.lhs.cast198, %sub.ptr.rhs.cast199
  br label %cleanup201

cleanup201:                                       ; preds = %if.end190, %land.lhs.true.cleanup201_crit_edge, %LZ4_wildCopy.exit.i939.cleanup201_crit_edge, %if.end158.cleanup201_crit_edge, %LZ4_wildCopy.exit.i859.cleanup201_crit_edge, %if.end113.cleanup201_crit_edge, %LZ4_wildCopy.exit.i779.cleanup201_crit_edge, %if.end86.cleanup201_crit_edge, %LZ4_wildCopy.exit.i699.cleanup201_crit_edge, %if.then75.cleanup201_crit_edge, %LZ4_wildCopy.exit.i.cleanup201_crit_edge, %if.then21.cleanup201_crit_edge
  %retval.1 = phi i32 [ %sub.ptr.sub200, %if.end190 ], [ 0, %land.lhs.true.cleanup201_crit_edge ], [ 0, %if.end158.cleanup201_crit_edge ], [ 0, %LZ4_wildCopy.exit.i939.cleanup201_crit_edge ], [ 0, %if.end113.cleanup201_crit_edge ], [ 0, %LZ4_wildCopy.exit.i859.cleanup201_crit_edge ], [ 0, %if.then21.cleanup201_crit_edge ], [ 0, %LZ4_wildCopy.exit.i.cleanup201_crit_edge ], [ 0, %if.then75.cleanup201_crit_edge ], [ 0, %LZ4_wildCopy.exit.i699.cleanup201_crit_edge ], [ 0, %if.end86.cleanup201_crit_edge ], [ 0, %LZ4_wildCopy.exit.i779.cleanup201_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_LZ4_compress_HC, !1, !"__ksymtab_LZ4_compress_HC", i1 false, i1 false}
!1 = !{!"../lib/lz4/lz4hc_compress.c", i32 614, i32 1}
!2 = !{ptr @__ksymtab_LZ4_loadDictHC, !3, !"__ksymtab_LZ4_loadDictHC", i1 false, i1 false}
!3 = !{!"../lib/lz4/lz4hc_compress.c", i32 641, i32 1}
!4 = !{ptr @__ksymtab_LZ4_compress_HC_continue, !5, !"__ksymtab_LZ4_compress_HC_continue", i1 false, i1 false}
!5 = !{!"../lib/lz4/lz4hc_compress.c", i32 730, i32 1}
!6 = !{ptr @__ksymtab_LZ4_saveDictHC, !7, !"__ksymtab_LZ4_saveDictHC", i1 false, i1 false}
!7 = !{!"../lib/lz4/lz4hc_compress.c", i32 765, i32 1}
!8 = !{ptr @__UNIQUE_ID_file106, !9, !"__UNIQUE_ID_file106", i1 false, i1 false}
!9 = !{!"../lib/lz4/lz4hc_compress.c", i32 767, i32 1}
!10 = !{ptr @__UNIQUE_ID_license107, !9, !"__UNIQUE_ID_license107", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description108, !12, !"__UNIQUE_ID_description108", i1 false, i1 false}
!12 = !{!"../lib/lz4/lz4hc_compress.c", i32 768, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i32 0, i32 33}
