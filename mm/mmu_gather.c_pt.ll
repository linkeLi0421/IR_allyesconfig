; ModuleID = '/llk/IR_all_yes/mm/mmu_gather.c_pt.bc'
source_filename = "../mm/mmu_gather.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(batch->nr > batch->max)\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../mm/mmu_gather.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 88, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__tlb_remove_page_size(ptr nocapture noundef %tlb, ptr noundef %page, i32 noundef %page_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 2
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !11

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmu_gather.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.end9:                                          ; preds = %entry
  %active = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 5
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 4
  %nr = getelementptr inbounds %struct.mmu_gather_batch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %nr, align 4
  %arrayidx = getelementptr %struct.mmu_gather_batch, ptr %3, i32 0, i32 3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %page, ptr %arrayidx, align 4
  %7 = load i32, ptr %nr, align 4
  %max = getelementptr inbounds %struct.mmu_gather_batch, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then11, label %do.end9.do.body16_crit_edge

do.end9.do.body16_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

if.then11:                                        ; preds = %do.end9
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.if.end13_crit_edge

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end.i:                                         ; preds = %if.then11
  %batch_count.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 4
  %14 = ptrtoint ptr %batch_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %batch_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp.i = icmp eq i32 %15, 9
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 @__get_free_pages(i32 noundef 10240, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = inttoptr i32 %call.i to ptr
  %17 = ptrtoint ptr %batch_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %batch_count.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %batch_count.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %16, align 4
  %nr.i = getelementptr inbounds %struct.mmu_gather_batch, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nr.i, align 4
  %max.i = getelementptr inbounds %struct.mmu_gather_batch, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1021, ptr %max.i, align 4
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %23, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end7.i, %if.then11.if.end13_crit_edge
  %.sink.i = phi ptr [ %16, %if.end7.i ], [ %13, %if.then11.if.end13_crit_edge ]
  %25 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.sink.i, ptr %active, align 4
  br label %do.body16

do.body16:                                        ; preds = %if.end13, %do.end9.do.body16_crit_edge
  %batch.0 = phi ptr [ %.sink.i, %if.end13 ], [ %3, %do.end9.do.body16_crit_edge ]
  %nr17 = getelementptr inbounds %struct.mmu_gather_batch, ptr %batch.0, i32 0, i32 1
  %26 = ptrtoint ptr %nr17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr17, align 4
  %max18 = getelementptr inbounds %struct.mmu_gather_batch, ptr %batch.0, i32 0, i32 2
  %28 = ptrtoint ptr %max18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp19 = icmp ugt i32 %27, %29
  br i1 %cmp19, label %if.then26, label %do.body16.cleanup_crit_edge, !prof !11

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmu_gather.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

cleanup:                                          ; preds = %do.body16.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.body16.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ], [ true, %if.end4.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tlb_flush_mmu(ptr noundef %tlb) local_unnamed_addr #0 align 64 {
entry:
  %vma.i.i = alloca %struct.vm_area_struct, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %freed_tables.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 3
  %0 = ptrtoint ptr %freed_tables.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %freed_tables.i, align 4
  %1 = and i16 %bf.load.i, 15872
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %entry.tlb_flush_mmu_tlbonly.exit_crit_edge, label %if.end.i

entry.tlb_flush_mmu_tlbonly.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlb_flush_mmu_tlbonly.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %3 = icmp ult i16 %bf.load.i, 16384
  br i1 %3, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tlb, align 4
  tail call void @flush_tlb_mm(ptr noundef %5) #4
  br label %tlb_flush.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 2
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool5.not.i.i, label %if.else.i.i.tlb_flush.exit.i_crit_edge, label %if.then6.i.i

if.else.i.i.tlb_flush.exit.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlb_flush.exit.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vma.i.i) #4
  %8 = call ptr @memset(ptr %vma.i.i, i32 0, i32 96)
  %vm_mm.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tlb, align 4
  %11 = ptrtoint ptr %vm_mm.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %vm_mm.i.i, align 4
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i, i32 0, i32 8
  %12 = lshr i16 %bf.load.i, 6
  %13 = and i16 %12, 4
  %14 = zext i16 %13 to i32
  %15 = and i16 %bf.load.i, 128
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 15
  %or.i.i = or i32 %17, %14
  %18 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i, ptr %vm_flags.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 1
  %19 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start.i.i, align 4
  call void @flush_tlb_range(ptr noundef nonnull %vma.i.i, i32 noundef %20, i32 noundef %7) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vma.i.i) #4
  br label %tlb_flush.exit.i

tlb_flush.exit.i:                                 ; preds = %if.then6.i.i, %if.else.i.i.tlb_flush.exit.i_crit_edge, %if.then.i.i
  %21 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tlb, align 4
  %start.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 1
  %end.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 2
  %notifier_subscriptions.i.i.i = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 49
  %23 = ptrtoint ptr %notifier_subscriptions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %notifier_subscriptions.i.i.i, align 8
  %tobool.i.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.i.not.i.i, label %tlb_flush.exit.i.mmu_notifier_invalidate_range.exit.i_crit_edge, label %if.then.i36.i

tlb_flush.exit.i.mmu_notifier_invalidate_range.exit.i_crit_edge: ; preds = %tlb_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmu_notifier_invalidate_range.exit.i

if.then.i36.i:                                    ; preds = %tlb_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i, align 4
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start.i, align 4
  call void @__mmu_notifier_invalidate_range(ptr noundef %22, i32 noundef %28, i32 noundef %26) #4
  br label %mmu_notifier_invalidate_range.exit.i

mmu_notifier_invalidate_range.exit.i:             ; preds = %if.then.i36.i, %tlb_flush.exit.i.mmu_notifier_invalidate_range.exit.i_crit_edge
  %29 = ptrtoint ptr %freed_tables.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i38.i = load i16, ptr %freed_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i38.i, -1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 -1226833920, i32 -1
  %not.tobool.not.i.i = xor i1 %tobool.not.i.i, true
  %spec.select26.i.i = sext i1 %not.tobool.not.i.i to i32
  %30 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i.i, ptr %start.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select26.i.i, ptr %end.i, align 4
  %bf.clear14.i.i = and i16 %bf.load.i38.i, -15873
  %32 = ptrtoint ptr %freed_tables.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %bf.clear14.i.i, ptr %freed_tables.i, align 4
  br label %tlb_flush_mmu_tlbonly.exit

tlb_flush_mmu_tlbonly.exit:                       ; preds = %mmu_notifier_invalidate_range.exit.i, %entry.tlb_flush_mmu_tlbonly.exit_crit_edge
  %local.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %tlb_flush_mmu_tlbonly.exit
  %batch.013.i.i = phi ptr [ %37, %for.body.i.i.land.rhs.i.i_crit_edge ], [ %local.i.i, %tlb_flush_mmu_tlbonly.exit ]
  %nr.i.i = getelementptr inbounds %struct.mmu_gather_batch, ptr %batch.013.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.tlb_flush_mmu_free.exit_crit_edge, label %for.body.i.i

land.rhs.i.i.tlb_flush_mmu_free.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlb_flush_mmu_free.exit

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %pages.i.i = getelementptr inbounds %struct.mmu_gather_batch, ptr %batch.013.i.i, i32 0, i32 3
  call void @free_pages_and_swap_cache(ptr noundef %pages.i.i, i32 noundef %34) #4
  %35 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nr.i.i, align 4
  %36 = ptrtoint ptr %batch.013.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %batch.013.i.i, align 4
  %tobool.not.i.i2 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i2, label %for.body.i.i.tlb_flush_mmu_free.exit_crit_edge, label %for.body.i.i.land.rhs.i.i_crit_edge

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.i

for.body.i.i.tlb_flush_mmu_free.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlb_flush_mmu_free.exit

tlb_flush_mmu_free.exit:                          ; preds = %for.body.i.i.tlb_flush_mmu_free.exit_crit_edge, %land.rhs.i.i.tlb_flush_mmu_free.exit_crit_edge
  %active.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 5
  %38 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %local.i.i, ptr %active.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tlb_gather_mmu(ptr noundef %tlb, ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tlb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mm, ptr %tlb, align 4
  %fullmm2.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 3
  %1 = ptrtoint ptr %fullmm2.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %fullmm2.i, align 4
  %local.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6
  %2 = ptrtoint ptr %local.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %local.i, align 4
  %nr.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nr.i, align 4
  %max.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %max.i, align 4
  %active.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 5
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %local.i, ptr %active.i, align 4
  %batch_count.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 4
  %6 = ptrtoint ptr %batch_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %batch_count.i, align 4
  %7 = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1226833920, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %bf.clear14.i.i = and i16 %bf.load.i, 511
  store i16 %bf.clear14.i.i, ptr %fullmm2.i, align 4
  %tlb_flush_pending.i.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 50
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i.i, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i.i, ptr %tlb_flush_pending.i.i, i32 1, ptr elementtype(i32) %tlb_flush_pending.i.i) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tlb_gather_mmu_fullmm(ptr noundef %tlb, ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tlb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mm, ptr %tlb, align 4
  %fullmm2.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 3
  %1 = ptrtoint ptr %fullmm2.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %fullmm2.i, align 4
  %local.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6
  %2 = ptrtoint ptr %local.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %local.i, align 4
  %nr.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nr.i, align 4
  %max.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %max.i, align 4
  %active.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 5
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %local.i, ptr %active.i, align 4
  %batch_count.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 4
  %6 = ptrtoint ptr %batch_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %batch_count.i, align 4
  %7 = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %bf.set.i = and i16 %bf.load.i, 511
  %bf.clear14.i.i = or i16 %bf.set.i, -32768
  store i16 %bf.clear14.i.i, ptr %fullmm2.i, align 4
  %tlb_flush_pending.i.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 50
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i.i, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i.i, ptr %tlb_flush_pending.i.i, i32 1, ptr elementtype(i32) %tlb_flush_pending.i.i) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tlb_finish_mmu(ptr noundef %tlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlb, align 4
  %tlb_flush_pending.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 50
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tlb_flush_pending.i, i32 noundef 4) #4
  %2 = ptrtoint ptr %tlb_flush_pending.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tlb_flush_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp sgt i32 %3, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fullmm = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 3
  %4 = ptrtoint ptr %fullmm to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %fullmm, align 4
  %5 = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %bf.set = and i16 %bf.load, 16895
  %bf.set3 = or i16 %bf.set, -24576
  store i16 %bf.set3, ptr %fullmm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @tlb_flush_mmu(ptr noundef %tlb)
  %local.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb, i32 0, i32 6
  %9 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local.i, align 4
  %tobool.not8.i = icmp eq ptr %10, null
  br i1 %tobool.not8.i, label %if.end.tlb_batch_list_free.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.tlb_batch_list_free.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlb_batch_list_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %batch.09.i = phi ptr [ %12, %for.body.i.for.body.i_crit_edge ], [ %10, %if.end.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %batch.09.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %batch.09.i, align 4
  %13 = ptrtoint ptr %batch.09.i to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 0) #4
  %tobool.not.i11 = icmp eq ptr %12, null
  br i1 %tobool.not.i11, label %for.body.i.tlb_batch_list_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.tlb_batch_list_free.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tlb_batch_list_free.exit

tlb_batch_list_free.exit:                         ; preds = %for.body.i.tlb_batch_list_free.exit_crit_edge, %if.end.tlb_batch_list_free.exit_crit_edge
  %14 = ptrtoint ptr %local.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %local.i, align 4
  %15 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tlb, align 4
  %tlb_flush_pending.i12 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 50
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i12, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i12, i32 1, i32 3, i32 1) #4
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i12, ptr %tlb_flush_pending.i12, i32 1, ptr elementtype(i32) %tlb_flush_pending.i12) #4, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_and_swap_cache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/mmu_gather.c", i32 88, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154886995, i64 2154887474, i64 2154887032, i64 2154887088, i64 2154887122, i64 2154887146, i64 2154887187, i64 2154887208, i64 2154887236, i64 2154887270}
!13 = !{i64 2154888774, i64 2154889253, i64 2154888811, i64 2154888867, i64 2154888901, i64 2154888925, i64 2154888966, i64 2154888987, i64 2154889015, i64 2154889049}
!14 = !{i64 2148563317, i64 2148563343, i64 2148563372, i64 2148563406, i64 2148563437, i64 2148563460}
!15 = !{i64 2148565782, i64 2148565808, i64 2148565837, i64 2148565871, i64 2148565902, i64 2148565925}
