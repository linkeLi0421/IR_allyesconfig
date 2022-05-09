; ModuleID = '/llk/IR_all_yes/drivers/crypto/qce/dma.c_pt.bc'
source_filename = "../drivers/crypto/qce/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qce_dma_data = type { ptr, ptr, ptr, ptr }
%struct.qce_result_dump = type { [16 x i32], [4 x i32], [4 x i32], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 15, i32 38 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [28 x i8] c"../drivers/crypto/qce/dma.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 19, i32 38 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qce_dma_request(ptr noundef %dev, ptr nocapture noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str) #4
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dma, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %rxchan = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 1
  %2 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %rxchan, align 4
  %cmp.i31 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call5 to i32
  br label %error_rx

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 256) #7
  %result_buf = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 2
  %5 = ptrtoint ptr %result_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %result_buf, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxchan, align 4
  tail call void @dma_release_channel(ptr noundef %7) #4
  br label %error_rx

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr %struct.qce_result_dump, ptr %call7.i, i32 128
  %ignore_buf = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 3
  %8 = ptrtoint ptr %ignore_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %ignore_buf, align 4
  br label %cleanup

error_rx:                                         ; preds = %if.then14, %if.then8
  %ret.0 = phi i32 [ %3, %if.then8 ], [ -12, %if.then14 ]
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma, align 4
  tail call void @dma_release_channel(ptr noundef %10) #4
  br label %cleanup

cleanup:                                          ; preds = %error_rx, %if.end15, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %ret.0, %error_rx ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qce_dma_release(ptr nocapture noundef readonly %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  tail call void @dma_release_channel(ptr noundef %1) #4
  %rxchan = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 1
  %2 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxchan, align 4
  tail call void @dma_release_channel(ptr noundef %3) #4
  %result_buf = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 2
  %4 = ptrtoint ptr %result_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %result_buf, align 4
  tail call void @kfree(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qce_sgtable_add(ptr nocapture noundef readonly %sgt, ptr noundef %new_sgl, i32 noundef %max_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt, align 4
  %tobool.not48 = icmp eq ptr %1, null
  br i1 %tobool.not48, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %sg.049 = phi ptr [ %call2, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %sg.049 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg.049, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !13

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

sg_page.exit:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %tobool1.not = icmp ult i32 %3, 4
  br i1 %tobool1.not, label %while.cond7.preheader, label %if.end

while.cond7.preheader:                            ; preds = %sg_page.exit
  %tobool8.not50 = icmp eq ptr %new_sgl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_len)
  %tobool10.not53 = icmp eq i32 %max_len, 0
  %or.cond3654 = or i1 %tobool8.not50, %tobool10.not53
  br i1 %or.cond3654, label %while.cond7.preheader.cleanup_crit_edge, label %while.cond7.preheader.while.body11_crit_edge

while.cond7.preheader.while.body11_crit_edge:     ; preds = %while.cond7.preheader
  br label %while.body11

while.cond7.preheader.cleanup_crit_edge:          ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sg_page.exit
  %call2 = tail call ptr @sg_next(ptr noundef nonnull %sg.049) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body11:                                     ; preds = %sg_set_page.exit.while.body11_crit_edge, %while.cond7.preheader.while.body11_crit_edge
  %sg.157 = phi ptr [ %call14, %sg_set_page.exit.while.body11_crit_edge ], [ %sg.049, %while.cond7.preheader.while.body11_crit_edge ]
  %max_len.addr.056 = phi i32 [ %sub, %sg_set_page.exit.while.body11_crit_edge ], [ %max_len, %while.cond7.preheader.while.body11_crit_edge ]
  %new_sgl.addr.055 = phi ptr [ %call15, %sg_set_page.exit.while.body11_crit_edge ], [ %new_sgl, %while.cond7.preheader.while.body11_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %new_sgl.addr.055, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %max_len.addr.056)
  %7 = ptrtoint ptr %new_sgl.addr.055 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_sgl.addr.055, align 4
  %and.i.i37 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.i.not.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.i.not.i38, label %sg_page.exit41, label %do.body2.i39, !prof !13

do.body2.i39:                                     ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

sg_page.exit41:                                   ; preds = %while.body11
  %9 = ptrtoint ptr %sg.157 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg.157, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !13

do.body19.i.i:                                    ; preds = %sg_page.exit41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit41
  %offset = getelementptr inbounds %struct.scatterlist, ptr %new_sgl.addr.055, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %and.i40 = and i32 %8, -4
  %and.i.i42 = and i32 %10, 3
  %or.i.i = or i32 %and.i.i42, %and.i40
  %13 = ptrtoint ptr %sg.157 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i, ptr %sg.157, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.157, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.157, i32 0, i32 2
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %6, ptr %length.i, align 4
  %call14 = tail call ptr @sg_next(ptr noundef nonnull %sg.157) #4
  %call15 = tail call ptr @sg_next(ptr noundef nonnull %new_sgl.addr.055) #4
  %sub = sub i32 %max_len.addr.056, %6
  %tobool8.not = icmp eq ptr %call15, null
  %tobool9.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not = icmp eq i32 %sub, 0
  %or.cond36 = select i1 %or.cond, i1 true, i1 %tobool10.not
  br i1 %or.cond36, label %sg_set_page.exit.cleanup_crit_edge, label %sg_set_page.exit.while.body11_crit_edge

sg_set_page.exit.while.body11_crit_edge:          ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body11

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sg_set_page.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.cond7.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.cond7.preheader.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %sg.157, %sg_set_page.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qce_dma_prep_sgs(ptr nocapture noundef readonly %dma, ptr noundef %rx_sg, i32 noundef %rx_nents, ptr noundef %tx_sg, i32 noundef %tx_nents, ptr noundef %cb, ptr noundef %cb_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchan1 = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 1
  %0 = ptrtoint ptr %rxchan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxchan1, align 4
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not.i = icmp eq ptr %rx_sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_nents)
  %tobool1.not.i = icmp eq i32 %rx_nents, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  %tobool.not.i.i = icmp eq ptr %1, null
  %or.cond4.i = or i1 %or.cond.i, %tobool.not.i.i
  br i1 %or.cond4.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %7(ptr noundef nonnull %1, ptr noundef nonnull %rx_sg, i32 noundef %rx_nents, i32 noundef 1, i32 noundef 3, ptr noundef null) #4
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %dmaengine_prep_slave_sg.exit.i.cleanup_crit_edge, label %qce_dma_prep_sg.exit

dmaengine_prep_slave_sg.exit.i.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

qce_dma_prep_sg.exit:                             ; preds = %dmaengine_prep_slave_sg.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i1.i = tail call i32 %11(ptr noundef nonnull %call.i.i) #4
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i1.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1.i)
  %tobool.not = icmp sgt i32 %call.i1.i, -1
  br i1 %tobool.not, label %if.end, label %qce_dma_prep_sg.exit.cleanup_crit_edge

qce_dma_prep_sg.exit.cleanup_crit_edge:           ; preds = %qce_dma_prep_sg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %qce_dma_prep_sg.exit
  %tobool.not.i10 = icmp eq ptr %tx_sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_nents)
  %tobool1.not.i11 = icmp eq i32 %tx_nents, 0
  %or.cond.i12 = or i1 %tobool.not.i10, %tobool1.not.i11
  %tobool.not.i.i13 = icmp eq ptr %3, null
  %or.cond4.i14 = or i1 %or.cond.i12, %tobool.not.i.i13
  br i1 %or.cond4.i14, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i.i16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i16:                              ; preds = %if.end
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool1.not.i.i15 = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i15, label %lor.lhs.false.i.i16.cleanup_crit_edge, label %lor.lhs.false2.i.i19

lor.lhs.false.i.i16.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2.i.i19:                             ; preds = %lor.lhs.false.i.i16
  %device_prep_slave_sg.i.i17 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %device_prep_slave_sg.i.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_prep_slave_sg.i.i17, align 4
  %tobool4.not.i.i18 = icmp eq ptr %16, null
  br i1 %tobool4.not.i.i18, label %lor.lhs.false2.i.i19.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit.i22

lor.lhs.false2.i.i19.cleanup_crit_edge:           ; preds = %lor.lhs.false2.i.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

dmaengine_prep_slave_sg.exit.i22:                 ; preds = %lor.lhs.false2.i.i19
  %call.i.i20 = tail call ptr %16(ptr noundef nonnull %3, ptr noundef nonnull %tx_sg, i32 noundef %tx_nents, i32 noundef 2, i32 noundef 3, ptr noundef null) #4
  %tobool2.not.i21 = icmp eq ptr %call.i.i20, null
  br i1 %tobool2.not.i21, label %dmaengine_prep_slave_sg.exit.i22.cleanup_crit_edge, label %if.end4.i27

dmaengine_prep_slave_sg.exit.i22.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i27:                                      ; preds = %dmaengine_prep_slave_sg.exit.i22
  call void @__sanitizer_cov_trace_pc() #6
  %callback.i23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i20, i32 0, i32 6
  %17 = ptrtoint ptr %callback.i23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cb, ptr %callback.i23, align 4
  %callback_param.i24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i20, i32 0, i32 8
  %18 = ptrtoint ptr %callback_param.i24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cb_param, ptr %callback_param.i24, align 4
  %tx_submit.i.i25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i20, i32 0, i32 4
  %19 = ptrtoint ptr %tx_submit.i.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_submit.i.i25, align 4
  %call.i1.i26 = tail call i32 %20(ptr noundef nonnull %call.i.i20) #4
  %21 = tail call i32 @llvm.smin.i32(i32 %call.i1.i26, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i27, %dmaengine_prep_slave_sg.exit.i22.cleanup_crit_edge, %lor.lhs.false2.i.i19.cleanup_crit_edge, %lor.lhs.false.i.i16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %qce_dma_prep_sg.exit.cleanup_crit_edge, %dmaengine_prep_slave_sg.exit.i.cleanup_crit_edge, %lor.lhs.false2.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %qce_dma_prep_sg.exit.cleanup_crit_edge ], [ %21, %if.end4.i27 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %dmaengine_prep_slave_sg.exit.i22.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.i19.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %dmaengine_prep_slave_sg.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qce_dma_issue_pending(ptr nocapture noundef readonly %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchan = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 1
  %0 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxchan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %5(ptr noundef %1) #4
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_issue_pending.i2 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %device_issue_pending.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_issue_pending.i2, align 4
  tail call void %11(ptr noundef %7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qce_dma_terminate_all(ptr nocapture noundef readonly %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rxchan = getelementptr inbounds %struct.qce_dma_data, ptr %dma, i32 0, i32 1
  %0 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxchan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %dmaengine_terminate_all.exit

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

dmaengine_terminate_all.exit:                     ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %dmaengine_terminate_all.exit.cond.end_crit_edge

dmaengine_terminate_all.exit.cond.end_crit_edge:  ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %dmaengine_terminate_all.exit
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i3 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i3, align 4
  %tobool.not.i4 = icmp eq ptr %11, null
  br i1 %tobool.not.i4, label %cond.false.cond.end_crit_edge, label %if.then.i6

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.then.i6:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5 = tail call i32 %11(ptr noundef %7) #4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i6, %cond.false.cond.end_crit_edge, %dmaengine_terminate_all.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %dmaengine_terminate_all.exit.cond.end_crit_edge ], [ %call.i5, %if.then.i6 ], [ -38, %cond.false.cond.end_crit_edge ], [ -38, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/qce/dma.c", i32 15, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/qce/dma.c", i32 19, i32 38}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153829825, i64 2153830317, i64 2153829862, i64 2153829918, i64 2153829952, i64 2153829976, i64 2153830017, i64 2153830038, i64 2153830066, i64 2153830100}
!15 = !{i64 2153827877, i64 2153828369, i64 2153827914, i64 2153827970, i64 2153828004, i64 2153828028, i64 2153828069, i64 2153828090, i64 2153828118, i64 2153828152}
