; ModuleID = '/llk/IR_all_yes/lib/sg_split.c_pt.bc'
source_filename = "../lib/sg_split.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sg_split\22, \22a\22\09"
module asm "\09.weak\09__crc_sg_split\09\09\09\09"
module asm "\09.long\09__crc_sg_split\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_split:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_split\22\09\09\09\09\09"
module asm "__kstrtabns_sg_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sg_splitter = type { ptr, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_sg_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_split = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_split to i32), ptr @__kstrtab_sg_split, ptr @__kstrtabns_sg_split }, section "___ksymtab+sg_split", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_sg_split], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sg_split(ptr noundef %in, i32 noundef %in_mapped_nents, i32 noundef %skip, i32 noundef %nb_splits, ptr nocapture noundef readonly %split_sizes, ptr nocapture noundef writeonly %out, ptr noundef writeonly %out_mapped_nents, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nb_splits, i32 20) #6
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %or.i = or i32 %gfp_mask, 256
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef %or.i) #7
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %call1 = tail call i32 @sg_nents(ptr noundef %in) #6
  %call2 = tail call fastcc i32 @sg_calculate_split(ptr noundef %in, i32 noundef %call1, i32 noundef %nb_splits, i32 noundef %skip, ptr noundef %split_sizes, ptr noundef nonnull %call8.i.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %for.cond.preheader

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_splits)
  %cmp5131.not = icmp eq i32 %nb_splits, 0
  br i1 %cmp5131.not, label %for.cond.preheader.sg_split_phys.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sg_split_phys.exit_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sg_split_phys.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0132 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nents = getelementptr %struct.sg_splitter, ptr %call8.i.i, i32 %i.0132, i32 1
  %3 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 20) #6
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !10

kmalloc_array.exit.thread:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %out_sg123 = getelementptr %struct.sg_splitter, ptr %call8.i.i, i32 %i.0132, i32 4
  %7 = ptrtoint ptr %out_sg123 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %out_sg123, align 4
  br label %err

if.end7.i:                                        ; preds = %for.body
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef %gfp_mask) #7
  %out_sg = getelementptr %struct.sg_splitter, ptr %call8.i.i, i32 %i.0132, i32 4
  %9 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %out_sg, align 4
  %tobool10.not = icmp eq ptr %call8.i, null
  br i1 %tobool10.not, label %if.end7.i.err_crit_edge, label %for.inc

if.end7.i.err_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

for.inc:                                          ; preds = %if.end7.i
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %nb_splits
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp5131.not, label %for.end.sg_split_phys.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.sg_split_phys.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sg_split_phys.exit

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %split.037.i = phi ptr [ %incdec.ptr10.i, %for.end.i.for.body.i_crit_edge ], [ %call8.i.i, %for.end.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ %inc9.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %out_sg1.i = getelementptr inbounds %struct.sg_splitter, ptr %split.037.i, i32 0, i32 4
  %10 = ptrtoint ptr %out_sg1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_sg1.i, align 4
  %nents.i = getelementptr inbounds %struct.sg_splitter, ptr %split.037.i, i32 0, i32 1
  %12 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp330.i = icmp sgt i32 %13, 0
  br i1 %cmp330.i, label %if.end.peel.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.peel.i:                                    ; preds = %for.body.i
  %14 = ptrtoint ptr %split.037.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %split.037.i, align 4
  %16 = call ptr @memcpy(ptr %11, ptr %15, i32 20)
  %skip_sg0.i = getelementptr inbounds %struct.sg_splitter, ptr %split.037.i, i32 0, i32 2
  %17 = ptrtoint ptr %skip_sg0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skip_sg0.i, align 4
  %offset.peel.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %offset.peel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.peel.i, align 4
  %add.peel.i = add i32 %20, %18
  store i32 %add.peel.i, ptr %offset.peel.i, align 4
  %21 = load i32, ptr %skip_sg0.i, align 4
  %length.peel.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %length.peel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.peel.i, align 4
  %sub.peel.i = sub i32 %23, %21
  store i32 %sub.peel.i, ptr %length.peel.i, align 4
  %dma_address.peel.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address.peel.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dma_address.peel.i, align 4
  %dma_length.peel.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length.peel.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dma_length.peel.i, align 4
  %call.peel.i = tail call ptr @sg_next(ptr noundef %15) #6
  %incdec.ptr.peel.i = getelementptr %struct.scatterlist, ptr %11, i32 1
  %26 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp3.peel.i = icmp sgt i32 %27, 1
  br i1 %cmp3.peel.i, label %if.end.peel.i.if.end.i90_crit_edge, label %if.end.peel.i.for.end.i_crit_edge

if.end.peel.i.for.end.i_crit_edge:                ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.peel.i.if.end.i90_crit_edge:               ; preds = %if.end.peel.i
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.end.i90.if.end.i90_crit_edge, %if.end.peel.i.if.end.i90_crit_edge
  %out_sg.033.i = phi ptr [ %incdec.ptr.i, %if.end.i90.if.end.i90_crit_edge ], [ %incdec.ptr.peel.i, %if.end.peel.i.if.end.i90_crit_edge ]
  %in_sg.032.i = phi ptr [ %call.i, %if.end.i90.if.end.i90_crit_edge ], [ %call.peel.i, %if.end.peel.i.if.end.i90_crit_edge ]
  %j.031.i = phi i32 [ %inc.i, %if.end.i90.if.end.i90_crit_edge ], [ 1, %if.end.peel.i.if.end.i90_crit_edge ]
  %28 = call ptr @memcpy(ptr %out_sg.033.i, ptr %in_sg.032.i, i32 12)
  %offset6.i = getelementptr inbounds %struct.scatterlist, ptr %out_sg.033.i, i32 0, i32 1
  %29 = ptrtoint ptr %offset6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %offset6.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %out_sg.033.i, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %out_sg.033.i, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %dma_length.i, align 4
  %call.i = tail call ptr @sg_next(ptr noundef %in_sg.032.i) #6
  %inc.i = add nuw nsw i32 %j.031.i, 1
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %out_sg.033.i, i32 1
  %32 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nents.i, align 4
  %cmp3.i = icmp slt i32 %inc.i, %33
  br i1 %cmp3.i, label %if.end.i90.if.end.i90_crit_edge, label %if.end.i90.for.end.i_crit_edge, !llvm.loop !11

if.end.i90.for.end.i_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i90.if.end.i90_crit_edge:                  ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i90

for.end.i:                                        ; preds = %if.end.i90.for.end.i_crit_edge, %if.end.peel.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %out_sg.0.lcssa.i = phi ptr [ %11, %for.body.i.for.end.i_crit_edge ], [ %incdec.ptr.peel.i, %if.end.peel.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %if.end.i90.for.end.i_crit_edge ]
  %length_last_sg.i = getelementptr inbounds %struct.sg_splitter, ptr %split.037.i, i32 0, i32 3
  %34 = ptrtoint ptr %length_last_sg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length_last_sg.i, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %out_sg.0.lcssa.i, i32 -1
  %length7.i = getelementptr %struct.scatterlist, ptr %out_sg.0.lcssa.i, i32 -1, i32 2
  %36 = ptrtoint ptr %length7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %length7.i, align 4
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %or.i.i = and i32 %38, -4
  %and.i.i = or i32 %or.i.i, 2
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %inc9.i = add nuw nsw i32 %i.036.i, 1
  %incdec.ptr10.i = getelementptr %struct.sg_splitter, ptr %split.037.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc9.i, %nb_splits
  br i1 %exitcond.not.i, label %for.end.i.sg_split_phys.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i.sg_split_phys.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sg_split_phys.exit

sg_split_phys.exit:                               ; preds = %for.end.i.sg_split_phys.exit_crit_edge, %for.end.sg_split_phys.exit_crit_edge, %for.cond.preheader.sg_split_phys.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_mapped_nents)
  %tobool13.not = icmp eq i32 %in_mapped_nents, 0
  br i1 %tobool13.not, label %sg_split_phys.exit.if.end19_crit_edge, label %if.then14

sg_split_phys.exit.if.end19_crit_edge:            ; preds = %sg_split_phys.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then14:                                        ; preds = %sg_split_phys.exit
  %call15 = tail call fastcc i32 @sg_calculate_split(ptr noundef %in, i32 noundef %in_mapped_nents, i32 noundef %nb_splits, i32 noundef %skip, ptr noundef %split_sizes, ptr noundef nonnull %call8.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then14.err_crit_edge, label %if.end18

if.then14.err_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

if.end18:                                         ; preds = %if.then14
  br i1 %cmp5131.not, label %if.end18.cleanup.sink.split_crit_edge, label %if.end18.for.body.i93_crit_edge

if.end18.for.body.i93_crit_edge:                  ; preds = %if.end18
  br label %for.body.i93

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

for.body.i93:                                     ; preds = %for.end.i113.for.body.i93_crit_edge, %if.end18.for.body.i93_crit_edge
  %split.038.i = phi ptr [ %incdec.ptr14.i, %for.end.i113.for.body.i93_crit_edge ], [ %call8.i.i, %if.end18.for.body.i93_crit_edge ]
  %i.037.i = phi i32 [ %inc13.i, %for.end.i113.for.body.i93_crit_edge ], [ 0, %if.end18.for.body.i93_crit_edge ]
  %out_sg1.i91 = getelementptr inbounds %struct.sg_splitter, ptr %split.038.i, i32 0, i32 4
  %39 = ptrtoint ptr %out_sg1.i91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %out_sg1.i91, align 4
  %nents.i92 = getelementptr inbounds %struct.sg_splitter, ptr %split.038.i, i32 0, i32 1
  %41 = ptrtoint ptr %nents.i92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nents.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp332.i = icmp sgt i32 %42, 0
  br i1 %cmp332.i, label %if.end.peel.i102, label %for.body.i93.for.end.i113_crit_edge

for.body.i93.for.end.i113_crit_edge:              ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i113

if.end.peel.i102:                                 ; preds = %for.body.i93
  %43 = ptrtoint ptr %split.038.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %split.038.i, align 4
  %dma_address.peel.i94 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %dma_address.peel.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_address.peel.i94, align 4
  %dma_address5.peel.i = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 3
  %47 = ptrtoint ptr %dma_address5.peel.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %dma_address5.peel.i, align 4
  %dma_length.peel.i95 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 4
  %48 = ptrtoint ptr %dma_length.peel.i95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_length.peel.i95, align 4
  %dma_length6.peel.i = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 4
  %50 = ptrtoint ptr %dma_length6.peel.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dma_length6.peel.i, align 4
  %skip_sg0.i96 = getelementptr inbounds %struct.sg_splitter, ptr %split.038.i, i32 0, i32 2
  %51 = ptrtoint ptr %skip_sg0.i96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %skip_sg0.i96, align 4
  %add.peel.i97 = add i32 %52, %46
  store i32 %add.peel.i97, ptr %dma_address5.peel.i, align 4
  %53 = load i32, ptr %skip_sg0.i96, align 4
  %sub.peel.i98 = sub i32 %49, %53
  store i32 %sub.peel.i98, ptr %dma_length6.peel.i, align 4
  %call.peel.i99 = tail call ptr @sg_next(ptr noundef %44) #6
  %incdec.ptr.peel.i100 = getelementptr %struct.scatterlist, ptr %40, i32 1
  %54 = ptrtoint ptr %nents.i92 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nents.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp3.peel.i101 = icmp sgt i32 %55, 1
  br i1 %cmp3.peel.i101, label %if.end.peel.i102.if.end.i109_crit_edge, label %if.end.peel.i102.for.end.i113_crit_edge

if.end.peel.i102.for.end.i113_crit_edge:          ; preds = %if.end.peel.i102
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i113

if.end.peel.i102.if.end.i109_crit_edge:           ; preds = %if.end.peel.i102
  br label %if.end.i109

if.end.i109:                                      ; preds = %if.end.i109.if.end.i109_crit_edge, %if.end.peel.i102.if.end.i109_crit_edge
  %out_sg.035.i = phi ptr [ %incdec.ptr.i107, %if.end.i109.if.end.i109_crit_edge ], [ %incdec.ptr.peel.i100, %if.end.peel.i102.if.end.i109_crit_edge ]
  %in_sg.034.i = phi ptr [ %call.i105, %if.end.i109.if.end.i109_crit_edge ], [ %call.peel.i99, %if.end.peel.i102.if.end.i109_crit_edge ]
  %j.033.i = phi i32 [ %inc.i106, %if.end.i109.if.end.i109_crit_edge ], [ 1, %if.end.peel.i102.if.end.i109_crit_edge ]
  %dma_address.i103 = getelementptr inbounds %struct.scatterlist, ptr %in_sg.034.i, i32 0, i32 3
  %56 = ptrtoint ptr %dma_address.i103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_address.i103, align 4
  %dma_address5.i = getelementptr inbounds %struct.scatterlist, ptr %out_sg.035.i, i32 0, i32 3
  %58 = ptrtoint ptr %dma_address5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dma_address5.i, align 4
  %dma_length.i104 = getelementptr inbounds %struct.scatterlist, ptr %in_sg.034.i, i32 0, i32 4
  %59 = ptrtoint ptr %dma_length.i104 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_length.i104, align 4
  %dma_length6.i = getelementptr inbounds %struct.scatterlist, ptr %out_sg.035.i, i32 0, i32 4
  %61 = ptrtoint ptr %dma_length6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dma_length6.i, align 4
  %call.i105 = tail call ptr @sg_next(ptr noundef %in_sg.034.i) #6
  %inc.i106 = add nuw nsw i32 %j.033.i, 1
  %incdec.ptr.i107 = getelementptr %struct.scatterlist, ptr %out_sg.035.i, i32 1
  %62 = ptrtoint ptr %nents.i92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nents.i92, align 4
  %cmp3.i108 = icmp slt i32 %inc.i106, %63
  br i1 %cmp3.i108, label %if.end.i109.if.end.i109_crit_edge, label %if.end.i109.for.end.i113_crit_edge, !llvm.loop !13

if.end.i109.for.end.i113_crit_edge:               ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i113

if.end.i109.if.end.i109_crit_edge:                ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i109

for.end.i113:                                     ; preds = %if.end.i109.for.end.i113_crit_edge, %if.end.peel.i102.for.end.i113_crit_edge, %for.body.i93.for.end.i113_crit_edge
  %out_sg.0.lcssa.i110 = phi ptr [ %40, %for.body.i93.for.end.i113_crit_edge ], [ %incdec.ptr.peel.i100, %if.end.peel.i102.for.end.i113_crit_edge ], [ %incdec.ptr.i107, %if.end.i109.for.end.i113_crit_edge ]
  %length_last_sg.i111 = getelementptr inbounds %struct.sg_splitter, ptr %split.038.i, i32 0, i32 3
  %64 = ptrtoint ptr %length_last_sg.i111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length_last_sg.i111, align 4
  %dma_length11.i = getelementptr %struct.scatterlist, ptr %out_sg.0.lcssa.i110, i32 -1, i32 4
  %66 = ptrtoint ptr %dma_length11.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %dma_length11.i, align 4
  %inc13.i = add nuw nsw i32 %i.037.i, 1
  %incdec.ptr14.i = getelementptr %struct.sg_splitter, ptr %split.038.i, i32 1
  %exitcond.not.i112 = icmp eq i32 %inc13.i, %nb_splits
  br i1 %exitcond.not.i112, label %for.end.i113.if.end19_crit_edge, label %for.end.i113.for.body.i93_crit_edge

for.end.i113.for.body.i93_crit_edge:              ; preds = %for.end.i113
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i93

for.end.i113.if.end19_crit_edge:                  ; preds = %for.end.i113
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end19:                                         ; preds = %for.end.i113.if.end19_crit_edge, %sg_split_phys.exit.if.end19_crit_edge
  br i1 %cmp5131.not, label %if.end19.cleanup.sink.split_crit_edge, label %for.body22.lr.ph

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

for.body22.lr.ph:                                 ; preds = %if.end19
  %tobool26.not = icmp eq ptr %out_mapped_nents, null
  br label %for.body22

for.body22:                                       ; preds = %for.inc32.for.body22_crit_edge, %for.body22.lr.ph
  %i.1136 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc33, %for.inc32.for.body22_crit_edge ]
  %out_sg24 = getelementptr %struct.sg_splitter, ptr %call8.i.i, i32 %i.1136, i32 4
  %67 = ptrtoint ptr %out_sg24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_sg24, align 4
  %arrayidx25 = getelementptr ptr, ptr %out, i32 %i.1136
  %69 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %arrayidx25, align 4
  br i1 %tobool26.not, label %for.body22.for.inc32_crit_edge, label %if.then27

for.body22.for.inc32_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc32

if.then27:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #5
  %nents29 = getelementptr %struct.sg_splitter, ptr %call8.i.i, i32 %i.1136, i32 1
  %70 = ptrtoint ptr %nents29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nents29, align 4
  %arrayidx30 = getelementptr i32, ptr %out_mapped_nents, i32 %i.1136
  %72 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx30, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.then27, %for.body22.for.inc32_crit_edge
  %inc33 = add nuw nsw i32 %i.1136, 1
  %exitcond142.not = icmp eq i32 %inc33, %nb_splits
  br i1 %exitcond142.not, label %for.inc32.cleanup.sink.split_crit_edge, label %for.inc32.for.body22_crit_edge

for.inc32.for.body22_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body22

for.inc32.cleanup.sink.split_crit_edge:           ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

err:                                              ; preds = %if.then14.err_crit_edge, %if.end7.i.err_crit_edge, %kmalloc_array.exit.thread, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_crit_edge ], [ %call15, %if.then14.err_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ -12, %if.end7.i.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_splits)
  %cmp36138 = icmp sgt i32 %nb_splits, 0
  br i1 %cmp36138, label %err.for.body37_crit_edge, label %err.cleanup.sink.split_crit_edge

err.cleanup.sink.split_crit_edge:                 ; preds = %err
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

err.for.body37_crit_edge:                         ; preds = %err
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %err.for.body37_crit_edge
  %i.2139 = phi i32 [ %inc41, %for.body37.for.body37_crit_edge ], [ 0, %err.for.body37_crit_edge ]
  %out_sg39 = getelementptr %struct.sg_splitter, ptr %call8.i.i, i32 %i.2139, i32 4
  %73 = ptrtoint ptr %out_sg39 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %out_sg39, align 4
  tail call void @kfree(ptr noundef %74) #6
  %inc41 = add nuw nsw i32 %i.2139, 1
  %exitcond143.not = icmp eq i32 %inc41, %nb_splits
  br i1 %exitcond143.not, label %for.body37.cleanup.sink.split_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body37

for.body37.cleanup.sink.split_crit_edge:          ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body37.cleanup.sink.split_crit_edge, %err.cleanup.sink.split_crit_edge, %for.inc32.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end18.cleanup.sink.split_crit_edge ], [ 0, %if.end19.cleanup.sink.split_crit_edge ], [ %ret.0, %err.cleanup.sink.split_crit_edge ], [ %ret.0, %for.body37.cleanup.sink.split_crit_edge ], [ 0, %for.inc32.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_calculate_split(ptr noundef %in, i32 noundef %nents, i32 noundef %nb_splits, i32 noundef %skip, ptr nocapture noundef readonly %sizes, ptr nocapture noundef %splitters, i1 noundef zeroext %mapped) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_splits)
  %cmp126 = icmp sgt i32 %nb_splits, 0
  br i1 %cmp126, label %entry.for.body_crit_edge, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond4.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp5138 = icmp sgt i32 %nents, 0
  br i1 %cmp5138, label %for.cond4.preheader.for.body6_crit_edge, label %for.cond4.preheader.for.end52_crit_edge

for.cond4.preheader.for.end52_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end52

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0127 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.sg_splitter, ptr %splitters, i32 %i.0127
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx1, align 4
  %nents3 = getelementptr %struct.sg_splitter, ptr %splitters, i32 %i.0127, i32 1
  %3 = ptrtoint ptr %nents3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nents3, align 4
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, %nb_splits
  br i1 %exitcond.not, label %for.body.for.cond4.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond4.preheader

for.body6:                                        ; preds = %for.inc50.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %nb_splits.addr.0150 = phi i32 [ %nb_splits.addr.4, %for.inc50.for.body6_crit_edge ], [ %nb_splits, %for.cond4.preheader.for.body6_crit_edge ]
  %skip.addr.0149 = phi i32 [ %skip.addr.2, %for.inc50.for.body6_crit_edge ], [ %skip, %for.cond4.preheader.for.body6_crit_edge ]
  %sg.0143 = phi ptr [ %call, %for.inc50.for.body6_crit_edge ], [ %in, %for.cond4.preheader.for.body6_crit_edge ]
  %curr.0142 = phi ptr [ %curr.3, %for.inc50.for.body6_crit_edge ], [ %splitters, %for.cond4.preheader.for.body6_crit_edge ]
  %size.0141 = phi i32 [ %size.3, %for.inc50.for.body6_crit_edge ], [ %1, %for.cond4.preheader.for.body6_crit_edge ]
  %i.1140 = phi i32 [ %inc51, %for.inc50.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %sizes.addr.0139 = phi ptr [ %sizes.addr.3, %for.inc50.for.body6_crit_edge ], [ %sizes, %for.cond4.preheader.for.body6_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0143, i32 0, i32 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0143, i32 0, i32 2
  %cond.in = select i1 %mapped, ptr %dma_length, ptr %length
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.addr.0149, i32 %cond)
  %cmp7 = icmp ugt i32 %skip.addr.0149, %cond
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i32 %skip.addr.0149, %cond
  br label %for.inc50

if.end:                                           ; preds = %for.body6
  %sub8 = sub i32 %cond, %skip.addr.0149
  %5 = tail call i32 @llvm.umin.i32(i32 %size.0141, i32 %sub8)
  %6 = ptrtoint ptr %curr.0142 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr.0142, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.then16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %curr.0142 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sg.0143, ptr %curr.0142, align 4
  %skip_sg0 = getelementptr inbounds %struct.sg_splitter, ptr %curr.0142, i32 0, i32 2
  %9 = ptrtoint ptr %skip_sg0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %skip.addr.0149, ptr %skip_sg0, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %sub19 = sub i32 %size.0141, %5
  %nents20 = getelementptr inbounds %struct.sg_splitter, ptr %curr.0142, i32 0, i32 1
  %10 = ptrtoint ptr %nents20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents20, align 4
  %inc21 = add i32 %11, 1
  store i32 %inc21, ptr %nents20, align 4
  %length_last_sg = getelementptr inbounds %struct.sg_splitter, ptr %curr.0142, i32 0, i32 3
  %12 = ptrtoint ptr %length_last_sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %length_last_sg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %tobool22.not128 = icmp eq i32 %sub19, 0
  br i1 %tobool22.not128, label %land.lhs.true.preheader, label %if.end18.if.end46_crit_edge

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

land.lhs.true.preheader:                          ; preds = %if.end18
  %13 = add i32 %nb_splits.addr.0150, -1
  %smin = call i32 @llvm.smin.i32(i32 %13, i32 0)
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %land.lhs.true.preheader
  %nb_splits.addr.1134 = phi i32 [ %dec, %while.body.land.lhs.true_crit_edge ], [ %nb_splits.addr.0150, %land.lhs.true.preheader ]
  %skip.addr.1133 = phi i32 [ %add, %while.body.land.lhs.true_crit_edge ], [ %skip.addr.0149, %land.lhs.true.preheader ]
  %curr.1132 = phi ptr [ %incdec.ptr, %while.body.land.lhs.true_crit_edge ], [ %curr.0142, %land.lhs.true.preheader ]
  %len.0131 = phi i32 [ %16, %while.body.land.lhs.true_crit_edge ], [ %5, %land.lhs.true.preheader ]
  %sizes.addr.1129 = phi ptr [ %incdec.ptr25, %while.body.land.lhs.true_crit_edge ], [ %sizes.addr.0139, %land.lhs.true.preheader ]
  %add = add i32 %skip.addr.1133, %len.0131
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add)
  %cmp23 = icmp ugt i32 %cond, %add
  br i1 %cmp23, label %land.rhs, label %land.lhs.true.land.lhs.true40_crit_edge

land.lhs.true.land.lhs.true40_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true40

land.rhs:                                         ; preds = %land.lhs.true
  %dec = add i32 %nb_splits.addr.1134, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp24 = icmp sgt i32 %dec, 0
  br i1 %cmp24, label %while.body, label %land.rhs.land.lhs.true40_crit_edge

land.rhs.land.lhs.true40_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true40

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr %struct.sg_splitter, ptr %curr.1132, i32 1
  %incdec.ptr25 = getelementptr i32, ptr %sizes.addr.1129, i32 1
  %14 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr25, align 4
  %sub27 = sub i32 %cond, %add
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub27)
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sg.0143, ptr %incdec.ptr, align 4
  %skip_sg035 = getelementptr %struct.sg_splitter, ptr %curr.1132, i32 1, i32 2
  %18 = ptrtoint ptr %skip_sg035 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %skip_sg035, align 4
  %nents36 = getelementptr %struct.sg_splitter, ptr %curr.1132, i32 1, i32 1
  %19 = ptrtoint ptr %nents36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %nents36, align 4
  %length_last_sg37 = getelementptr %struct.sg_splitter, ptr %curr.1132, i32 1, i32 3
  %20 = ptrtoint ptr %length_last_sg37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %length_last_sg37, align 4
  %sub38 = sub i32 %15, %16
  %tobool22.not = icmp eq i32 %sub38, 0
  br i1 %tobool22.not, label %while.body.land.lhs.true_crit_edge, label %while.body.for.inc50_crit_edge

while.body.for.inc50_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc50

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

land.lhs.true40:                                  ; preds = %land.rhs.land.lhs.true40_crit_edge, %land.lhs.true.land.lhs.true40_crit_edge
  %nb_splits.addr.2.ph = phi i32 [ %nb_splits.addr.1134, %land.lhs.true.land.lhs.true40_crit_edge ], [ %smin, %land.rhs.land.lhs.true40_crit_edge ]
  %dec41 = add i32 %nb_splits.addr.2.ph, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec41)
  %cmp42 = icmp sgt i32 %dec41, 0
  br i1 %cmp42, label %if.end46.thread, label %land.lhs.true40.if.end46_crit_edge

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.end46.thread:                                  ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr44 = getelementptr %struct.sg_splitter, ptr %curr.1132, i32 1
  %incdec.ptr45 = getelementptr i32, ptr %sizes.addr.1129, i32 1
  %21 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr45, align 4
  br label %for.inc50

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %if.end18.if.end46_crit_edge
  %sizes.addr.1125 = phi ptr [ %sizes.addr.1129, %land.lhs.true40.if.end46_crit_edge ], [ %sizes.addr.0139, %if.end18.if.end46_crit_edge ]
  %size.1123 = phi i32 [ 0, %land.lhs.true40.if.end46_crit_edge ], [ %sub19, %if.end18.if.end46_crit_edge ]
  %curr.1121 = phi ptr [ %curr.1132, %land.lhs.true40.if.end46_crit_edge ], [ %curr.0142, %if.end18.if.end46_crit_edge ]
  %nb_splits.addr.3 = phi i32 [ %dec41, %land.lhs.true40.if.end46_crit_edge ], [ %nb_splits.addr.0150, %if.end18.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_splits.addr.3)
  %tobool47.not = icmp eq i32 %nb_splits.addr.3, 0
  br i1 %tobool47.not, label %if.end46.for.end52_crit_edge, label %if.end46.for.inc50_crit_edge

if.end46.for.inc50_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc50

if.end46.for.end52_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end52

for.inc50:                                        ; preds = %if.end46.for.inc50_crit_edge, %if.end46.thread, %while.body.for.inc50_crit_edge, %if.then
  %sizes.addr.3 = phi ptr [ %sizes.addr.0139, %if.then ], [ %sizes.addr.1125, %if.end46.for.inc50_crit_edge ], [ %incdec.ptr45, %if.end46.thread ], [ %incdec.ptr25, %while.body.for.inc50_crit_edge ]
  %size.3 = phi i32 [ %size.0141, %if.then ], [ %size.1123, %if.end46.for.inc50_crit_edge ], [ %22, %if.end46.thread ], [ %sub38, %while.body.for.inc50_crit_edge ]
  %curr.3 = phi ptr [ %curr.0142, %if.then ], [ %curr.1121, %if.end46.for.inc50_crit_edge ], [ %incdec.ptr44, %if.end46.thread ], [ %incdec.ptr, %while.body.for.inc50_crit_edge ]
  %skip.addr.2 = phi i32 [ %sub, %if.then ], [ 0, %if.end46.for.inc50_crit_edge ], [ 0, %if.end46.thread ], [ 0, %while.body.for.inc50_crit_edge ]
  %nb_splits.addr.4 = phi i32 [ %nb_splits.addr.0150, %if.then ], [ %nb_splits.addr.3, %if.end46.for.inc50_crit_edge ], [ %dec41, %if.end46.thread ], [ %dec, %while.body.for.inc50_crit_edge ]
  %inc51 = add nuw nsw i32 %i.1140, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.0143) #6
  %exitcond156.not = icmp eq i32 %inc51, %nents
  br i1 %exitcond156.not, label %for.inc50.for.end52_crit_edge, label %for.inc50.for.body6_crit_edge

for.inc50.for.body6_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body6

for.inc50.for.end52_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end52

for.end52:                                        ; preds = %for.inc50.for.end52_crit_edge, %if.end46.for.end52_crit_edge, %for.cond4.preheader.for.end52_crit_edge
  %size.4 = phi i32 [ %1, %for.cond4.preheader.for.end52_crit_edge ], [ %size.1123, %if.end46.for.end52_crit_edge ], [ %size.3, %for.inc50.for.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.4)
  %tobool53.not = icmp eq i32 %size.4, 0
  br i1 %tobool53.not, label %lor.rhs, label %for.end52.lor.end_crit_edge

for.end52.lor.end_crit_edge:                      ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

lor.rhs:                                          ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %splitters to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %splitters, align 4
  %tobool56.not = icmp eq ptr %24, null
  %phi.sel = select i1 %tobool56.not, i32 -22, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end52.lor.end_crit_edge
  %25 = phi i32 [ -22, %for.end52.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab_sg_split, !1, !"__ksymtab_sg_split", i1 false, i1 false}
!1 = !{!"../lib/sg_split.c", i32 202, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = distinct !{!13, !12}
