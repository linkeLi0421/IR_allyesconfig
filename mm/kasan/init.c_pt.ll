; ModuleID = '/llk/IR_all_yes/mm/kasan/init.c_pt.bc'
source_filename = "../mm/kasan/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@init_mm = external dso_local global %struct.mm_struct, align 8
@kasan_early_shadow_pte = dso_local global [1024 x i32] zeroinitializer, section ".bss..page_aligned", align 4096
@.str = private unnamed_addr constant [16 x i8] c"mm/kasan/init.c\00", align 1
@kasan_early_shadow_page = dso_local global [4096 x i8] zeroinitializer, section ".bss..page_aligned", align 4096
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@arm_dma_zone_size = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"%s: Failed to allocate %zu bytes align=%zx nid=%d from=%llx\0A\00", align 1
@__func__.early_alloc = private unnamed_addr constant [12 x i8] c"early_alloc\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid uwtable(sync)
define dso_local i32 @kasan_populate_early_shadow(ptr noundef %shadow_start, ptr noundef %shadow_end) local_unnamed_addr #0 section ".ref.text" align 64 {
entry:
  %0 = ptrtoint ptr %shadow_start to i32
  %1 = ptrtoint ptr %shadow_end to i32
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i = lshr i32 %0, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %2, i32 %shr.i
  %sub1 = add i32 %1, -1
  br label %do.body

do.body:                                          ; preds = %do.cond34, %entry
  %pgd.0 = phi ptr [ %add.ptr.i, %entry ], [ %incdec.ptr, %do.cond34 ]
  %addr.0 = phi i32 [ %0, %entry ], [ %cond, %do.cond34 ]
  %add = add i32 %addr.0, 2097152
  %and = and i32 %add, -2097152
  %sub = add i32 %and, -1
  %cmp = icmp ult i32 %sub, %sub1
  %cond = select i1 %cmp, i32 %and, i32 %1
  %and2 = and i32 %addr.0, 2097151
  %cmp3 = icmp eq i32 %and2, 0
  %sub4 = sub i32 %1, %addr.0
  %cmp5 = icmp ugt i32 %sub4, 2097151
  %or.cond = and i1 %cmp3, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call18 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_pte to i32)) #6
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call18, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %3) #6
  %add.i.i = add i32 %call.i, 2048
  %or.i.i = or i32 %add.i.i, 17
  store i32 %or.i.i, ptr %pgd.0, align 4
  %add1.i.i = add i32 %or.i.i, 1024
  %arrayidx2.i.i = getelementptr i32, ptr %pgd.0, i32 1
  store i32 %add1.i.i, ptr %arrayidx2.i.i, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pgd.0, i32 %4, i32 1073741824) #8, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !10
  br label %do.cond34

if.end:                                           ; preds = %do.body
  tail call fastcc void @zero_p4d_populate(ptr noundef %pgd.0, i32 noundef %addr.0, i32 noundef %cond) #9
  br label %do.cond34

do.cond34:                                        ; preds = %if.end, %if.then
  %incdec.ptr = getelementptr [2 x i32], ptr %pgd.0, i32 1
  %cmp35.not = icmp eq i32 %cond, %1
  br i1 %cmp35.not, label %cleanup37, label %do.body

cleanup37:                                        ; preds = %do.cond34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @zero_p4d_populate(ptr noundef %pgd, i32 noundef %addr, i32 noundef %end) unnamed_addr #0 section ".ref.text" align 64 {
entry:
  %and = and i32 %addr, 2097151
  %cmp = icmp eq i32 %and, 0
  %sub = sub i32 %end, %addr
  %cmp1 = icmp ugt i32 %sub, 2097151
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_pte to i32)) #6
  %0 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call8, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %0) #6
  %add.i.i = add i32 %call.i, 2048
  %or.i.i = or i32 %add.i.i, 17
  store i32 %or.i.i, ptr %pgd, align 4
  %add1.i.i = add i32 %or.i.i, 1024
  %arrayidx2.i.i = getelementptr i32, ptr %pgd, i32 1
  store i32 %add1.i.i, ptr %arrayidx2.i.i, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pgd, i32 %1, i32 1073741824) #8, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !10
  br label %cleanup27

if.end:                                           ; preds = %entry
  tail call fastcc void @zero_pud_populate(ptr noundef %pgd, i32 noundef %addr, i32 noundef %end) #9
  br label %cleanup27

cleanup27:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_remove_zero_shadow(ptr noundef %start, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %0 = ptrtoint ptr %start to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %2 = ptrtoint ptr %add.ptr.i to i32
  %shr = lshr i32 %size, 3
  %add = add nuw nsw i32 %shr, %2
  %rem = and i32 %0, 32767
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false.critedge, label %cleanup77.sink.split, !prof !11

lor.lhs.false.critedge:                           ; preds = %entry
  %rem22 = and i32 %size, 32767
  %tobool23.not = icmp eq i32 %rem22, 0
  br i1 %tobool23.not, label %for.cond.preheader, label %cleanup77.sink.split, !prof !11

for.cond.preheader:                               ; preds = %lor.lhs.false.critedge
  %cmp106.not = icmp ult i32 %size, 8
  br i1 %cmp106.not, label %cleanup77, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub58 = add i32 %add, -1
  br label %for.body

for.body:                                         ; preds = %kasan_remove_p4d_table.exit, %for.body.lr.ph
  %addr.0107 = phi i32 [ %2, %for.body.lr.ph ], [ %cond, %kasan_remove_p4d_table.exit ]
  %add56 = add i32 %addr.0107, 2097152
  %and = and i32 %add56, -2097152
  %sub = add i32 %and, -1
  %cmp59 = icmp ult i32 %sub, %sub58
  %cond = select i1 %cmp59, i32 %and, i32 %add
  %3 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i104 = lshr i32 %addr.0107, 21
  %add.ptr.i105 = getelementptr [2 x i32], ptr %3, i32 %shr.i104
  %cmp24.i = icmp ult i32 %addr.0107, %cond
  br i1 %cmp24.i, label %for.body.lr.ph.i.lr.ph.i.lr.ph.i, label %kasan_remove_p4d_table.exit

for.body.lr.ph.i.lr.ph.i.lr.ph.i:                 ; preds = %for.body
  %4 = load i32, ptr %add.ptr.i105, align 4
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %kasan_remove_p4d_table.exit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.lr.ph.i.lr.ph.i.lr.ph.i
  %5 = load ptr, ptr @mem_map, align 4
  %shr.i.i.i.i = lshr i32 %4, 12
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i.i = sub i32 %shr.i.i.i.i, %6
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %5, i32 %sub.i.i.i.i
  %call.i.i.i.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_pte to i32)) #6
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %sub2.i.i.i.i = add i32 %7, 1073741824
  %shr3.i.i.i.i = lshr i32 %sub2.i.i.i.i, 12
  %add.ptr6.i.i.i.i = getelementptr %struct.page, ptr %5, i32 %shr3.i.i.i.i
  %cmp.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, %add.ptr6.i.i.i.i
  %8 = or i32 %cond, %addr.0107
  %9 = and i32 %8, 2097151
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %10, %cmp.i.i.i.i
  br i1 %11, label %do.body.i.i.i, label %if.end8.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  store i32 0, ptr %add.ptr.i105, align 4
  %arrayidx6.i.i.i = getelementptr i32, ptr %add.ptr.i105, i32 1
  store i32 0, ptr %arrayidx6.i.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i105, i32 %12, i32 1073741824) #8, !srcloc !12
  br label %kasan_remove_p4d_table.exit

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %13 = load i32, ptr %add.ptr.i105, align 4
  %and1.i.i.i.i.i = and i32 %13, -4096
  %14 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %15 = inttoptr i32 %14 to ptr
  %shr.i.i.i.i.i = lshr i32 %addr.0107, 12
  %and.i.i.i.i.i = and i32 %shr.i.i.i.i.i, 511
  %add.ptr.i26.i.i.i = getelementptr i32, ptr %15, i32 %and.i.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i, %if.end8.i.i.i
  %pte.addr.044.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i ], [ %add.ptr.i26.i.i.i, %if.end8.i.i.i ]
  %addr.addr.043.i.i.i.i = phi i32 [ %16, %for.inc.i.i.i.i ], [ %addr.0107, %if.end8.i.i.i ]
  %add.i.i.i.i = add i32 %addr.addr.043.i.i.i.i, 4096
  %and.i.i.i.i = and i32 %add.i.i.i.i, -4096
  %16 = tail call i32 @llvm.umin.i32(i32 %and.i.i.i.i, i32 %cond) #8
  %17 = load i32, ptr %pte.addr.044.i.i.i.i, align 4
  %and2.i.i.i.i = and i32 %17, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %18 = load ptr, ptr @mem_map, align 4
  %shr.i.i27.i.i.i = lshr i32 %17, 12
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i.i.i = sub i32 %shr.i.i27.i.i.i, %19
  %add.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %18, i32 %sub.i.i.i.i.i
  %call.i.i.i.i.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_page to i32)) #6
  %20 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call.i.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %sub2.i.i.i.i.i = add i32 %20, 1073741824
  %shr3.i.i.i.i.i = lshr i32 %sub2.i.i.i.i.i, 12
  %add.ptr6.i.i.i.i.i = getelementptr %struct.page, ptr %18, i32 %shr3.i.i.i.i.i
  %cmp.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, %add.ptr6.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %if.end33.critedge.i.i.i.i, label %do.end.i.i.i.i, !prof !11

do.end.i.i.i.i:                                   ; preds = %if.end7.i.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 355, i32 noundef 9, ptr noundef null) #6
  br label %for.inc.i.i.i.i

if.end33.critedge.i.i.i.i:                        ; preds = %if.end7.i.i.i.i
  %21 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i.i.i = getelementptr inbounds %struct.processor, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %set_pte_ext.i.i.i.i, align 4
  tail call void %22(ptr noundef %pte.addr.044.i.i.i.i, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end33.critedge.i.i.i.i, %do.end.i.i.i.i, %for.body.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %pte.addr.044.i.i.i.i, i32 1
  %cmp.i28.i.i.i = icmp ult i32 %and.i.i.i.i, %cond
  br i1 %cmp.i28.i.i.i, label %for.body.i.i.i.i, label %kasan_remove_pte_table.exit.i.i.i

kasan_remove_pte_table.exit.i.i.i:                ; preds = %for.inc.i.i.i.i
  %23 = load i32, ptr %add.ptr.i105, align 4
  %and1.i.i29.i.i.i = and i32 %23, -4096
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i29.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %25 = inttoptr i32 %24 to ptr
  br label %for.body.i32.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i32.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.09.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 512
  br i1 %exitcond.not.i.i.i.i, label %for.end.i.i.i.i, label %for.body.i32.i.i.i

for.body.i32.i.i.i:                               ; preds = %for.cond.i.i.i.i, %kasan_remove_pte_table.exit.i.i.i
  %i.09.i.i.i.i = phi i32 [ 0, %kasan_remove_pte_table.exit.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i ]
  %add.ptr.i30.i.i.i = getelementptr i32, ptr %25, i32 %i.09.i.i.i.i
  %26 = load i32, ptr %add.ptr.i30.i.i.i, align 4
  %tobool.not.i31.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i31.i.i.i, label %for.cond.i.i.i.i, label %kasan_remove_p4d_table.exit

for.end.i.i.i.i:                                  ; preds = %for.cond.i.i.i.i
  %shr.i33.i.i.i = lshr i32 %23, 12
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i34.i.i.i = sub i32 %shr.i33.i.i.i, %27
  %add.ptr1.idx.i.i.i.i = mul i32 %sub.i34.i.i.i, 36
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %add.ptr1.idx.i.i.i.i, 36
  %add.i35.i.i.i = add i32 %sub.ptr.div.i.i.i.i, %27
  %shl.i.i.i.i = shl i32 %add.i35.i.i.i, 12
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !8
  tail call void @free_pages(i32 noundef %28, i32 noundef 0) #6
  store i32 0, ptr %add.ptr.i105, align 4
  %arrayidx2.i.i.i.i = getelementptr i32, ptr %add.ptr.i105, i32 1
  store i32 0, ptr %arrayidx2.i.i.i.i, align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i105, i32 %29, i32 1073741824) #8, !srcloc !12
  br label %kasan_remove_p4d_table.exit

kasan_remove_p4d_table.exit:                      ; preds = %for.end.i.i.i.i, %for.body.i32.i.i.i, %do.body.i.i.i, %for.body.lr.ph.i.lr.ph.i.lr.ph.i, %for.body
  %cmp = icmp ult i32 %cond, %add
  br i1 %cmp, label %for.body, label %cleanup77

cleanup77.sink.split:                             ; preds = %lor.lhs.false.critedge, %entry
  %.sink = phi i32 [ 448, %entry ], [ 449, %lor.lhs.false.critedge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  br label %cleanup77

cleanup77:                                        ; preds = %cleanup77.sink.split, %kasan_remove_p4d_table.exit, %for.cond.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local i32 @kasan_add_zero_shadow(ptr noundef %start, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %0 = ptrtoint ptr %start to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %shr = lshr i32 %size, 3
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %shr
  %rem = and i32 %0, 32767
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false.critedge, label %do.end, !prof !11

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 483, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %rem22 = and i32 %size, 32767
  %tobool23.not = icmp eq i32 %rem22, 0
  br i1 %tobool23.not, label %if.end55, label %do.end39, !prof !11

do.end39:                                         ; preds = %lor.lhs.false.critedge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 484, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false.critedge
  %call56 = tail call i32 @kasan_populate_early_shadow(ptr noundef %add.ptr.i, ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end39, %do.end
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -22, %do.end39 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @zero_pud_populate(ptr noundef %p4d, i32 noundef %addr, i32 noundef %end) unnamed_addr #0 section ".ref.text" align 64 {
entry:
  %and = and i32 %addr, 2097151
  %cmp = icmp eq i32 %and, 0
  %sub = sub i32 %end, %addr
  %cmp1 = icmp ugt i32 %sub, 2097151
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_pte to i32)) #6
  %0 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call4, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %0) #6
  %add.i.i = add i32 %call.i, 2048
  %or.i.i = or i32 %add.i.i, 17
  store i32 %or.i.i, ptr %p4d, align 4
  %add1.i.i = add i32 %or.i.i, 1024
  %arrayidx2.i.i = getelementptr i32, ptr %p4d, i32 1
  store i32 %add1.i.i, ptr %arrayidx2.i.i, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %p4d, i32 %1, i32 1073741824) #8, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !10
  br label %cleanup24

if.end:                                           ; preds = %entry
  tail call fastcc void @zero_pmd_populate(ptr noundef %p4d, i32 noundef %addr, i32 noundef %end) #9
  br label %cleanup24

cleanup24:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @zero_pmd_populate(ptr noundef %pud, i32 noundef %addr, i32 noundef %end) unnamed_addr #0 section ".ref.text" align 64 {
entry:
  %and = and i32 %addr, 2097151
  %cmp = icmp eq i32 %and, 0
  %sub = sub i32 %end, %addr
  %cmp1 = icmp ugt i32 %sub, 2097151
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_pte to i32)) #6
  %0 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call2, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %0) #6
  %add.i.i = add i32 %call.i, 2048
  %or.i.i = or i32 %add.i.i, 17
  store i32 %or.i.i, ptr %pud, align 4
  %add1.i.i = add i32 %or.i.i, 1024
  %arrayidx2.i.i = getelementptr i32, ptr %pud, i32 1
  store i32 %add1.i.i, ptr %arrayidx2.i.i, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pud, i32 %1, i32 1073741824) #8, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !10
  br label %cleanup15

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %pud, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.end
  %call5 = tail call zeroext i1 @slab_is_available() #6
  br i1 %call5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %call.i.i = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 0) #6
  %3 = inttoptr i32 %call.i.i to ptr
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end9, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  %4 = load ptr, ptr @cpu_vtable, align 4
  %dcache_clean_area.i.i = getelementptr inbounds %struct.processor, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %dcache_clean_area.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 512
  tail call void %5(ptr noundef %add.ptr.i.i, i32 noundef 2048) #6
  br label %if.end9

if.else:                                          ; preds = %if.then4
  %call8 = tail call fastcc ptr @early_alloc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then.i, %if.then6
  %p.0 = phi ptr [ %call8, %if.else ], [ %3, %if.then6 ], [ %3, %if.then.i ]
  %tobool10.not = icmp eq ptr %p.0, null
  br i1 %tobool10.not, label %cleanup15, label %if.end12

if.end12:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %p.0 to i32
  %call.i1 = tail call i32 @__virt_to_phys(i32 noundef %6) #6
  %add.i.i2 = add i32 %call.i1, 2048
  %or.i.i3 = or i32 %add.i.i2, 17
  store i32 %or.i.i3, ptr %pud, align 4
  %add1.i.i4 = add i32 %or.i.i3, 1024
  %arrayidx2.i.i5 = getelementptr i32, ptr %pud, i32 1
  store i32 %add1.i.i4, ptr %arrayidx2.i.i5, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pud, i32 %7, i32 1073741824) #8, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  tail call fastcc void @zero_pte_populate(ptr noundef %pud, i32 noundef %addr, i32 noundef %end) #9
  br label %cleanup15

cleanup15:                                        ; preds = %if.end13, %if.end9, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc ptr @early_alloc() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %0 = load i32, ptr @arm_dma_zone_size, align 4
  %1 = add i32 %0, -1
  %2 = icmp ult i32 %1, 1342177279
  %add = add i32 %0, -1073741824
  %cond = select i1 %2, i32 %add, i32 -1
  %call = tail call i32 @__virt_to_phys(i32 noundef %cond) #6
  %call1 = tail call ptr @memblock_alloc_try_nid(i32 noundef 4096, i32 noundef 4096, i32 noundef %call, i32 noundef 0, i32 noundef -1) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @arm_dma_zone_size, align 4
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 1342177279
  %add8 = add i32 %3, -1073741824
  %cond11 = select i1 %5, i32 %add8, i32 -1
  %call12 = tail call i32 @__virt_to_phys(i32 noundef %cond11) #6
  %conv = zext i32 %call12 to i64
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.early_alloc, i32 noundef 4096, i32 noundef 4096, i32 noundef -1, i64 noundef %conv) #11
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @zero_pte_populate(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %end) unnamed_addr #0 section ".ref.text" align 64 {
entry:
  %0 = load i32, ptr %pmd, align 4
  %and1.i.i = and i32 %0, -4096
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %call1 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @kasan_early_shadow_page to i32)) #6
  %shr = and i32 %call1, -4096
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or2 = or i32 %2, %shr
  %or.i.i = or i32 %or2, 640
  %add417 = add i32 %addr, 4096
  %cmp.not18 = icmp ugt i32 %add417, %end
  br i1 %cmp.not18, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %3 = inttoptr i32 %1 to ptr
  %shr.i.i = lshr i32 %addr, 12
  %and.i.i = and i32 %shr.i.i, 511
  %add.ptr.i = getelementptr i32, ptr %3, i32 %and.i.i
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %add421 = phi i32 [ %add4, %while.body ], [ %add417, %while.body.preheader ]
  %addr.addr.020 = phi i32 [ %add421, %while.body ], [ %addr, %while.body.preheader ]
  %pte.019 = phi ptr [ %add.ptr.i16, %while.body ], [ %add.ptr.i, %while.body.preheader ]
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %addr.addr.020, ptr noundef %pte.019, i32 noundef %or.i.i) #6
  %4 = load i32, ptr %pmd, align 4
  %and1.i.i13 = and i32 %4, -4096
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i13, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %6 = inttoptr i32 %5 to ptr
  %shr.i.i14 = lshr i32 %add421, 12
  %and.i.i15 = and i32 %shr.i.i14, 511
  %add.ptr.i16 = getelementptr i32, ptr %6, i32 %and.i.i15
  %add4 = add i32 %add421, 4096
  %cmp.not = icmp ugt i32 %add4, %end
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { noinline nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { cold nobuiltin "no-builtins" }
attributes #11 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!8 = !{i64 2149102855, i64 2149102878, i64 2149102910, i64 2149102942, i64 2149102980, i64 2149103010}
!9 = !{i64 2152124063, i64 2152124076}
!10 = !{i64 2152130229}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152130724, i64 2152130737}
