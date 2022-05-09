; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/intel_th/msu-sink.c_pt.bc'
source_filename = "../drivers/hwtracing/intel_th/msu-sink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msu_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msu_sink_private = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_intel_th_msu_sink__230_114_sink_mbuf_init6 = internal global ptr @sink_mbuf_init, section ".initcall6.init", align 4
@sink_mbuf = internal constant { %struct.msu_buffer, [32 x i8] } { %struct.msu_buffer { ptr @.str, ptr @msu_sink_assign, ptr @msu_sink_unassign, ptr @msu_sink_alloc_window, ptr @msu_sink_free_window, ptr null, ptr null, ptr @msu_sink_ready }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sink_mbuf_exit = internal global ptr @sink_mbuf_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [68 x i8] c"intel_th_msu_sink.file=drivers/hwtracing/intel_th/intel_th_msu_sink\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [33 x i8] c"intel_th_msu_sink.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"sink_mbuf\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 105, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [41 x i8] c"../drivers/hwtracing/intel_th/msu-sink.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 106, i32 11 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_sink_mbuf_exit, ptr @__initcall__kmod_intel_th_msu_sink__230_114_sink_mbuf_init6, ptr @sink_mbuf_exit, ptr @sink_mbuf, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sink_mbuf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sink_mbuf_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @intel_th_msu_buffer_register(ptr noundef nonnull @sink_mbuf, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sink_mbuf_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @intel_th_msu_buffer_unregister(ptr noundef nonnull @sink_mbuf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @intel_th_msu_buffer_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_msu_buffer_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msu_sink_assign(ptr noundef %dev, ptr nocapture noundef writeonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #8
  %sgts = getelementptr inbounds %struct.msu_sink_private, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %sgts to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %sgts, align 4
  %tobool3.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msu_sink_unassign(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sgts = getelementptr inbounds %struct.msu_sink_private, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgts, align 4
  tail call void @kfree(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msu_sink_alloc_window(ptr nocapture noundef %data, ptr nocapture noundef readonly %sgt, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_sgts = getelementptr inbounds %struct.msu_sink_private, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %nr_sgts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_sgts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, 4095
  %div24 = lshr i32 %sub, 12
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %call = tail call i32 @sg_alloc_table(ptr noundef %3, i32 noundef %div24, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt, align 4
  %sgts = getelementptr inbounds %struct.msu_sink_private, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgts, align 4
  %8 = ptrtoint ptr %nr_sgts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_sgts, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nr_sgts, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp426.not = icmp ult i32 %sub, 4096
  br i1 %cmp426.not, label %if.end2.cleanup_crit_edge, label %for.body.preheader

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end2
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div24, i32 1)
  br label %for.body

for.body:                                         ; preds = %sg_set_buf.exit.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc7, %sg_set_buf.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg_ptr.027 = phi ptr [ %call8, %sg_set_buf.exit.for.body_crit_edge ], [ %14, %for.body.preheader ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %parent = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %parent5 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent5, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.027, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef 4096, ptr noundef %dma_address, i32 noundef 3264, i32 noundef 0) #5
  %21 = ptrtoint ptr %call.i to i32
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.do.body5.i_crit_edge, !prof !19

for.body.do.body5.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %22 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %22, %call.i
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !19

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %21, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %23, %shr.i
  %call.i25 = tail call i32 @pfn_valid(i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.i = icmp eq i32 %call.i25, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !20

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %for.body.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i
  %25 = ptrtoint ptr %sg_ptr.027 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_ptr.027, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !19

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !19

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %21, 4095
  %and.i.i.i = and i32 %26, 3
  %or.i.i.i = or i32 %and.i.i.i, %27
  %28 = ptrtoint ptr %sg_ptr.027 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i.i, ptr %sg_ptr.027, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.027, i32 0, i32 1
  %29 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.027, i32 0, i32 2
  %30 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4096, ptr %length.i.i, align 4
  %inc7 = add nuw nsw i32 %i.028, 1
  %call8 = tail call ptr @sg_next(ptr noundef %sg_ptr.027) #5
  %exitcond.not = icmp eq i32 %inc7, %umax
  br i1 %exitcond.not, label %sg_set_buf.exit.cleanup_crit_edge, label %sg_set_buf.exit.for.body_crit_edge

sg_set_buf.exit.for.body_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sg_set_buf.exit.cleanup_crit_edge:                ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %div24, %if.end2.cleanup_crit_edge ], [ %div24, %sg_set_buf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msu_sink_free_window(ptr nocapture noundef %data, ptr noundef %sgt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  br label %for.body

for.body:                                         ; preds = %sg_virt.exit.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc, %sg_virt.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg_ptr.010 = phi ptr [ %call2, %sg_virt.exit.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %4 = ptrtoint ptr %sg_ptr.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_ptr.010, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !19

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

sg_virt.exit:                                     ; preds = %for.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent1, align 8
  %and.i.i = and i32 %5, -4
  %12 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %12) #5
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.010, i32 0, i32 1
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %14
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.010, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 4096, ptr noundef %add.ptr.i, i32 noundef %16, i32 noundef 0) #5
  %inc = add nuw i32 %i.011, 1
  %call2 = tail call ptr @sg_next(ptr noundef %sg_ptr.010) #5
  %17 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %sg_virt.exit.for.body_crit_edge, label %sg_virt.exit.for.end_crit_edge

sg_virt.exit.for.end_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sg_virt.exit.for.body_crit_edge:                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %sg_virt.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sg_free_table(ptr noundef %sgt) #5
  %nr_sgts = getelementptr inbounds %struct.msu_sink_private, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %nr_sgts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_sgts, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %nr_sgts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msu_sink_ready(ptr nocapture noundef readonly %data, ptr noundef %sgt, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @intel_th_msc_window_unlock(ptr noundef %1, ptr noundef %sgt) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @intel_th_msc_window_unlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__initcall__kmod_intel_th_msu_sink__230_114_sink_mbuf_init6, !1, !"__initcall__kmod_intel_th_msu_sink__230_114_sink_mbuf_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/intel_th/msu-sink.c", i32 114, i32 1}
!2 = !{ptr @__exitcall_sink_mbuf_exit, !1, !"__exitcall_sink_mbuf_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file231, !4, !"__UNIQUE_ID_file231", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/intel_th/msu-sink.c", i32 116, i32 1}
!5 = !{ptr @__UNIQUE_ID_license232, !4, !"__UNIQUE_ID_license232", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/intel_th/msu-sink.c", i32 106, i32 11}
!8 = !{ptr @sink_mbuf, !9, !"sink_mbuf", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/intel_th/msu-sink.c", i32 105, i32 32}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153355778, i64 2153356270, i64 2153355815, i64 2153355871, i64 2153355905, i64 2153355929, i64 2153355970, i64 2153355991, i64 2153356019, i64 2153356053}
!22 = !{i64 2153345398, i64 2153345890, i64 2153345435, i64 2153345491, i64 2153345525, i64 2153345549, i64 2153345590, i64 2153345611, i64 2153345639, i64 2153345673}
!23 = !{i64 2153347008, i64 2153347500, i64 2153347045, i64 2153347101, i64 2153347135, i64 2153347159, i64 2153347200, i64 2153347221, i64 2153347249, i64 2153347283}
!24 = !{i64 2153348956, i64 2153349448, i64 2153348993, i64 2153349049, i64 2153349083, i64 2153349107, i64 2153349148, i64 2153349169, i64 2153349197, i64 2153349231}
