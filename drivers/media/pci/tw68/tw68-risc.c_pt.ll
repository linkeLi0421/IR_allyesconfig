; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw68/tw68-risc.c_pt.bc'
source_filename = "../drivers/media/pci/tw68/tw68-risc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tw68_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.87, i32 }
%union.anon.87 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw68_risc_buffer(ptr noundef %pci, ptr noundef %buf, ptr noundef %sglist, i32 noundef %top_offset, i32 noundef %bottom_offset, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %top_offset)
  %cmp.not = icmp eq i32 %top_offset, -1
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select = zext i1 %not.cmp.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bottom_offset)
  %cmp1.not = icmp eq i32 %bottom_offset, -1
  %inc3 = select i1 %cmp.not, i32 1, i32 2
  %fields.1 = select i1 %cmp1.not, i32 %spec.select, i32 %inc3
  %add = add i32 %padding, %bpl
  %mul = mul i32 %add, %lines
  %div73 = lshr i32 %mul, 12
  %add5 = add i32 %lines, 1
  %add6 = add i32 %add5, %div73
  %mul7 = shl nuw nsw i32 %fields.1, 3
  %add8 = mul i32 %mul7, %add6
  %mul9 = add i32 %add8, 32
  %size = getelementptr inbounds %struct.tw68_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul9, ptr %size, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %dma = getelementptr inbounds %struct.tw68_buf, ptr %buf, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul9, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #3
  %cpu = getelementptr inbounds %struct.tw68_buf, ptr %buf, i32 0, i32 3
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %cpu, align 4
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %entry
  br i1 %cmp.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call fastcc ptr @tw68_risc_field(ptr noundef nonnull %call.i, ptr noundef %sglist, i32 noundef %top_offset, i32 noundef 1, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i1 noundef zeroext true)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %rp.0 = phi ptr [ %call18, %if.then17 ], [ %call.i, %if.end14.if.end19_crit_edge ]
  br i1 %cmp1.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %call23 = tail call fastcc ptr @tw68_risc_field(ptr noundef %rp.0, ptr noundef %sglist, i32 noundef %bottom_offset, i32 noundef 2, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i1 noundef zeroext %cmp.not)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %rp.1 = phi ptr [ %call23, %if.then21 ], [ %rp.0, %if.end19.if.end24_crit_edge ]
  %jmp = getelementptr inbounds %struct.tw68_buf, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rp.1, ptr %jmp, align 8
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma, align 4
  %add26 = add i32 %4, 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %add26)
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jmp, align 8
  %11 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul31 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul31, i32 %13)
  %cmp33 = icmp ugt i32 %mul31, %13
  br i1 %cmp33, label %do.body36, label %if.end24.cleanup_crit_edge, !prof !9

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/tw68/tw68-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tw68_risc_field(ptr noundef writeonly %rp, ptr noundef %sglist, i32 noundef %offset, i32 noundef %sync_line, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i1 noundef zeroext %jump) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %jump, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr = getelementptr i32, ptr %rp, i32 1
  %0 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 176, ptr %rp, align 4
  %incdec.ptr1 = getelementptr i32, ptr %rp, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %incdec.ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rp.addr.0 = phi ptr [ %incdec.ptr1, %if.then ], [ %rp, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sync_line)
  %cmp = icmp eq i32 %sync_line, 1
  %. = select i1 %cmp, i32 192, i32 208
  %rp.addr.1 = getelementptr i32, ptr %rp.addr.0, i32 1
  %2 = ptrtoint ptr %rp.addr.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %rp.addr.0, align 4
  %incdec.ptr6 = getelementptr i32, ptr %rp.addr.0, i32 2
  %3 = ptrtoint ptr %rp.addr.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rp.addr.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines)
  %cmp7124.not = icmp eq i32 %lines, 0
  br i1 %cmp7124.not, label %if.end.for.end_crit_edge, label %while.cond.preheader.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %or = or i32 %bpl, -1879048192
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end53.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %line.0128 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %if.end53.while.cond.preheader_crit_edge ]
  %sg.0127 = phi ptr [ %sglist, %while.cond.preheader.lr.ph ], [ %sg.3, %if.end53.while.cond.preheader_crit_edge ]
  %rp.addr.2126 = phi ptr [ %incdec.ptr6, %while.cond.preheader.lr.ph ], [ %rp.addr.5, %if.end53.while.cond.preheader_crit_edge ]
  %offset.addr.0125 = phi i32 [ %offset, %while.cond.preheader.lr.ph ], [ %add54, %if.end53.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.addr.0125)
  %tobool8.not104 = icmp eq i32 %offset.addr.0125, 0
  br i1 %tobool8.not104, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %sg.1106 = phi ptr [ %call, %while.body.land.rhs_crit_edge ], [ %sg.0127, %while.cond.preheader.land.rhs_crit_edge ]
  %offset.addr.1105 = phi i32 [ %sub, %while.body.land.rhs_crit_edge ], [ %offset.addr.0125, %while.cond.preheader.land.rhs_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1106, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.1105, i32 %6)
  %cmp9.not = icmp ult i32 %offset.addr.1105, %6
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub = sub i32 %offset.addr.1105, %6
  %call = tail call ptr @sg_next(ptr noundef %sg.1106) #3
  %tobool8.not = icmp eq i32 %sub, 0
  br i1 %tobool8.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %offset.addr.1.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %offset.addr.1105, %land.rhs.while.end_crit_edge ]
  %sg.1.lcssa = phi ptr [ %sg.0127, %while.cond.preheader.while.end_crit_edge ], [ %call, %while.body.while.end_crit_edge ], [ %sg.1106, %land.rhs.while.end_crit_edge ]
  %dma_length11 = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length11, align 4
  %sub12 = sub i32 %8, %offset.addr.1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %bpl)
  %cmp13.not = icmp ult i32 %sub12, %bpl
  br i1 %cmp13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr15 = getelementptr i32, ptr %rp.addr.2126, i32 1
  %9 = ptrtoint ptr %rp.addr.2126 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %rp.addr.2126, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address, align 4
  %add = add i32 %11, %offset.addr.1.lcssa
  %12 = tail call i32 @llvm.bswap.i32(i32 %add)
  %incdec.ptr16 = getelementptr i32, ptr %rp.addr.2126, i32 2
  %13 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr15, align 4
  %add17 = add i32 %offset.addr.1.lcssa, %bpl
  br label %if.end53

if.else18:                                        ; preds = %while.end
  %or21 = or i32 %sub12, -1761607680
  %14 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %incdec.ptr22 = getelementptr i32, ptr %rp.addr.2126, i32 1
  %15 = ptrtoint ptr %rp.addr.2126 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rp.addr.2126, align 4
  %dma_address23 = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address23, align 4
  %add24 = add i32 %17, %offset.addr.1.lcssa
  %18 = tail call i32 @llvm.bswap.i32(i32 %add24)
  %19 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr22, align 4
  %sub26 = sub i32 %bpl, %sub12
  %call27 = tail call ptr @sg_next(ptr noundef %sg.1.lcssa) #3
  %rp.addr.3110 = getelementptr i32, ptr %rp.addr.2126, i32 2
  %dma_length29111 = getelementptr inbounds %struct.scatterlist, ptr %call27, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length29111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length29111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub26, i32 %21)
  %cmp30112 = icmp ugt i32 %sub26, %21
  br i1 %cmp30112, label %if.else18.while.body31_crit_edge, label %if.else18.while.end43_crit_edge

if.else18.while.end43_crit_edge:                  ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end43

if.else18.while.body31_crit_edge:                 ; preds = %if.else18
  br label %while.body31

while.body31:                                     ; preds = %while.body31.while.body31_crit_edge, %if.else18.while.body31_crit_edge
  %22 = phi i32 [ %32, %while.body31.while.body31_crit_edge ], [ %21, %if.else18.while.body31_crit_edge ]
  %dma_length29118 = phi ptr [ %dma_length41, %while.body31.while.body31_crit_edge ], [ %dma_length29111, %if.else18.while.body31_crit_edge ]
  %rp.addr.3117 = phi ptr [ %rp.addr.3, %while.body31.while.body31_crit_edge ], [ %rp.addr.3110, %if.else18.while.body31_crit_edge ]
  %done.0116 = phi i32 [ %add42, %while.body31.while.body31_crit_edge ], [ %sub12, %if.else18.while.body31_crit_edge ]
  %todo.0115 = phi i32 [ %sub39, %while.body31.while.body31_crit_edge ], [ %sub26, %if.else18.while.body31_crit_edge ]
  %sg.2114 = phi ptr [ %call40, %while.body31.while.body31_crit_edge ], [ %call27, %if.else18.while.body31_crit_edge ]
  %rp.addr.2.pn113 = phi ptr [ %rp.addr.3117, %while.body31.while.body31_crit_edge ], [ %rp.addr.2126, %if.else18.while.body31_crit_edge ]
  %shl = shl i32 %done.0116, 12
  %or32 = or i32 %22, %shl
  %or34 = or i32 %or32, -1610612736
  %23 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %incdec.ptr35 = getelementptr i32, ptr %rp.addr.2.pn113, i32 3
  %24 = ptrtoint ptr %rp.addr.3117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rp.addr.3117, align 4
  %dma_address36 = getelementptr inbounds %struct.scatterlist, ptr %sg.2114, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address36, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr35, align 4
  %29 = ptrtoint ptr %dma_length29118 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_length29118, align 4
  %sub39 = sub i32 %todo.0115, %30
  %call40 = tail call ptr @sg_next(ptr noundef %sg.2114) #3
  %dma_length41 = getelementptr inbounds %struct.scatterlist, ptr %call40, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length41, align 4
  %add42 = add i32 %32, %done.0116
  %rp.addr.3 = getelementptr i32, ptr %rp.addr.3117, i32 2
  %cmp30 = icmp ugt i32 %sub39, %32
  br i1 %cmp30, label %while.body31.while.body31_crit_edge, label %while.body31.while.end43_crit_edge

while.body31.while.end43_crit_edge:               ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end43

while.body31.while.body31_crit_edge:              ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body31

while.end43:                                      ; preds = %while.body31.while.end43_crit_edge, %if.else18.while.end43_crit_edge
  %rp.addr.2.pn.lcssa = phi ptr [ %rp.addr.2126, %if.else18.while.end43_crit_edge ], [ %rp.addr.3117, %while.body31.while.end43_crit_edge ]
  %sg.2.lcssa = phi ptr [ %call27, %if.else18.while.end43_crit_edge ], [ %call40, %while.body31.while.end43_crit_edge ]
  %todo.0.lcssa = phi i32 [ %sub26, %if.else18.while.end43_crit_edge ], [ %sub39, %while.body31.while.end43_crit_edge ]
  %done.0.lcssa = phi i32 [ %sub12, %if.else18.while.end43_crit_edge ], [ %add42, %while.body31.while.end43_crit_edge ]
  %rp.addr.3.lcssa = phi ptr [ %rp.addr.3110, %if.else18.while.end43_crit_edge ], [ %rp.addr.3, %while.body31.while.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %todo.0.lcssa)
  %tobool44.not = icmp eq i32 %todo.0.lcssa, 0
  br i1 %tobool44.not, label %while.end43.if.end53_crit_edge, label %if.then45

while.end43.if.end53_crit_edge:                   ; preds = %while.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then45:                                        ; preds = %while.end43
  call void @__sanitizer_cov_trace_pc() #5
  %shl46 = shl i32 %done.0.lcssa, 12
  %or47 = or i32 %todo.0.lcssa, %shl46
  %or48 = or i32 %or47, -1610612736
  %33 = tail call i32 @llvm.bswap.i32(i32 %or48)
  %incdec.ptr49 = getelementptr i32, ptr %rp.addr.2.pn.lcssa, i32 3
  %34 = ptrtoint ptr %rp.addr.3.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rp.addr.3.lcssa, align 4
  %dma_address50 = getelementptr inbounds %struct.scatterlist, ptr %sg.2.lcssa, i32 0, i32 3
  %35 = ptrtoint ptr %dma_address50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_address50, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %incdec.ptr51 = getelementptr i32, ptr %rp.addr.2.pn.lcssa, i32 4
  %38 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %incdec.ptr49, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %while.end43.if.end53_crit_edge, %if.then14
  %offset.addr.2 = phi i32 [ %add17, %if.then14 ], [ %todo.0.lcssa, %if.then45 ], [ 0, %while.end43.if.end53_crit_edge ]
  %rp.addr.5 = phi ptr [ %incdec.ptr16, %if.then14 ], [ %incdec.ptr51, %if.then45 ], [ %rp.addr.3.lcssa, %while.end43.if.end53_crit_edge ]
  %sg.3 = phi ptr [ %sg.1.lcssa, %if.then14 ], [ %sg.2.lcssa, %if.then45 ], [ %sg.2.lcssa, %while.end43.if.end53_crit_edge ]
  %add54 = add i32 %offset.addr.2, %padding
  %inc = add nuw i32 %line.0128, 1
  %exitcond.not = icmp eq i32 %inc, %lines
  br i1 %exitcond.not, label %if.end53.for.end_crit_edge, label %if.end53.while.cond.preheader_crit_edge

if.end53.while.cond.preheader_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %if.end.for.end_crit_edge
  %rp.addr.2.lcssa = phi ptr [ %incdec.ptr6, %if.end.for.end_crit_edge ], [ %rp.addr.5, %if.end53.for.end_crit_edge ]
  ret ptr %rp.addr.2.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156707991, i64 2156708490, i64 2156708028, i64 2156708084, i64 2156708118, i64 2156708142, i64 2156708183, i64 2156708204, i64 2156708232, i64 2156708266}
