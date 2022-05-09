; ModuleID = '/llk/IR_all_yes/fs/erofs/pcpubuf.c_pt.bc'
source_filename = "../fs/erofs/pcpubuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.erofs_pcpubuf = type { %struct.raw_spinlock, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%union.anon.53 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }

@erofs_pcb = weak dso_local global %struct.erofs_pcpubuf zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@erofs_pcpubuf_growsize.pcb_resize_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @erofs_pcpubuf_growsize.pcb_resize_mutex, i64 52), ptr getelementptr (i8, ptr @erofs_pcpubuf_growsize.pcb_resize_mutex, i64 52) }, ptr @erofs_pcpubuf_growsize.pcb_resize_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcb_resize_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcb_resize_mutex\00", [47 x i8] zeroinitializer }, align 32
@erofs_pcpubuf_growsize.pcb_nrpages = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@erofs_pcpubuf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pcb->lock\00", [21 x i8] zeroinitializer }, align 32
@__pcpu_unique_erofs_pcb = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"pcb_resize_mutex\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 50, i32 9 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"pcb_nrpages\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 51, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private constant [22 x i8] c"../fs/erofs/pcpubuf.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 124, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @erofs_pcpubuf_growsize.pcb_resize_mutex, ptr @.str, ptr @.str.1, ptr @erofs_pcpubuf_growsize.pcb_nrpages, ptr @erofs_pcpubuf_init.__key, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_pcpubuf_growsize.pcb_resize_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_pcpubuf_growsize.pcb_nrpages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_pcpubuf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_get_pcpubuf(i32 noundef %requiredpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %4 = tail call i32 @llvm.read_register.i32(metadata !14) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @erofs_pcb to i32)
  %10 = inttoptr i32 %add to ptr
  tail call void @_raw_spin_lock(ptr noundef %10) #8
  %nrpages = getelementptr inbounds %struct.erofs_pcpubuf, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %requiredpages)
  %cmp = icmp ult i32 %12, %requiredpages
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %13 = tail call i32 @llvm.read_register.i32(metadata !14) #8
  %and.i.i.i16 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i16 to ptr
  %preempt_count.i.i17 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i17, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i17, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ptr = getelementptr inbounds %struct.erofs_pcpubuf, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %18, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_put_pcpubuf(ptr noundef readnone %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @erofs_pcb to i32)
  %6 = inttoptr i32 %add to ptr
  %ptr3 = getelementptr inbounds %struct.erofs_pcpubuf, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ptr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr3, align 4
  %cmp.not = icmp eq ptr %8, %ptr
  br i1 %cmp.not, label %do.end12, label %do.body5, !prof !26

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/pcpubuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %6) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %9 = tail call i32 @llvm.read_register.i32(metadata !14) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %12, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_pcpubuf_growsize(i32 noundef %nrpages) local_unnamed_addr #0 align 64 {
entry:
  %pagepool = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagepool) #8
  %0 = ptrtoint ptr %pagepool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagepool, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @erofs_pcpubuf_growsize.pcb_resize_mutex, i32 noundef 0) #8
  %1 = load i32, ptr @erofs_pcpubuf_growsize.pcb_nrpages, align 4
  %sub = sub i32 %nrpages, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %entry
  %2 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nrpages, i32 4) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrpages)
  %cmp7100.not = icmp eq i32 %nrpages, 0
  %call115 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call115, i32 %5)
  %cmp1116 = icmp ult i32 %call115, %5
  br i1 %cmp1116, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end55_crit_edge

for.cond.preheader.for.end55_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call117 = phi i32 [ %call, %cleanup.for.body_crit_edge ], [ %call115, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call117
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @erofs_pcb to i32)
  %8 = inttoptr i32 %add to ptr
  br i1 %3, label %for.body.for.end55_crit_edge, label %if.end7.i, !prof !29

for.body.for.end55_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55

if.end7.i:                                        ; preds = %for.body
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.for.end55_crit_edge, label %for.cond6.preheader

if.end7.i.for.end55_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55

for.cond6.preheader:                              ; preds = %if.end7.i
  br i1 %cmp7100.not, label %for.cond6.preheader.for.end_crit_edge, label %for.cond6.preheader.for.body8_crit_edge

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

for.cond6.preheader.for.end_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %i.0101 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 0, %for.cond6.preheader.for.body8_crit_edge ]
  %call9 = call ptr @erofs_allocpage(ptr noundef nonnull %pagepool, i32 noundef 3264) #8
  %arrayidx10 = getelementptr ptr, ptr %call8.i, i32 %i.0101
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %arrayidx10, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %for.body8.free_pagearray_crit_edge, label %for.inc

for.body8.free_pagearray_crit_edge:               ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pagearray

for.inc:                                          ; preds = %for.body8
  %inc = add nuw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %nrpages
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond6.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %10, 512
  %call15 = call ptr @vmap(ptr noundef nonnull %call8.i, i32 noundef %nrpages, i32 noundef 4, i32 noundef %or) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %for.end.free_pagearray_crit_edge, label %if.end18

for.end.free_pagearray_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pagearray

if.end18:                                         ; preds = %for.end
  call void @_raw_spin_lock(ptr noundef %8) #8
  %ptr19 = getelementptr inbounds %struct.erofs_pcpubuf, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %ptr19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr19, align 4
  store ptr %call15, ptr %ptr19, align 4
  %pages21 = getelementptr inbounds %struct.erofs_pcpubuf, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %pages21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages21, align 4
  store ptr %call8.i, ptr %pages21, align 4
  %nrpages23 = getelementptr inbounds %struct.erofs_pcpubuf, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %nrpages23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nrpages23, align 4
  store i32 %nrpages, ptr %nrpages23, align 4
  call void @_raw_spin_unlock(ptr noundef %8) #8
  %tobool26.not = icmp eq ptr %14, null
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool26.not, label %do.body28, label %if.end42

do.body28:                                        ; preds = %if.end18
  br i1 %tobool29.not, label %do.body28.cleanup_crit_edge, label %do.body33, !prof !26

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/pcpubuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

if.end42:                                         ; preds = %if.end18
  br i1 %tobool29.not, label %if.end42.free_pagearray_crit_edge, label %if.then44

if.end42.free_pagearray_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pagearray

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void @vunmap(ptr noundef nonnull %12) #8
  br label %free_pagearray

free_pagearray:                                   ; preds = %if.then44, %if.end42.free_pagearray_crit_edge, %for.end.free_pagearray_crit_edge, %for.body8.free_pagearray_crit_edge
  %i.1 = phi i32 [ %16, %if.then44 ], [ %16, %if.end42.free_pagearray_crit_edge ], [ %nrpages, %for.end.free_pagearray_crit_edge ], [ %i.0101, %for.body8.free_pagearray_crit_edge ]
  %tobool48.not = phi i1 [ true, %if.then44 ], [ true, %if.end42.free_pagearray_crit_edge ], [ false, %for.end.free_pagearray_crit_edge ], [ false, %for.body8.free_pagearray_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.then44 ], [ 0, %if.end42.free_pagearray_crit_edge ], [ -12, %for.end.free_pagearray_crit_edge ], [ -12, %for.body8.free_pagearray_crit_edge ]
  %oldpages.0 = phi ptr [ %14, %if.then44 ], [ %14, %if.end42.free_pagearray_crit_edge ], [ %call8.i, %for.end.free_pagearray_crit_edge ], [ %call8.i, %for.body8.free_pagearray_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool46.not102 = icmp eq i32 %i.1, 0
  br i1 %tobool46.not102, label %free_pagearray.while.end_crit_edge, label %free_pagearray.while.body_crit_edge

free_pagearray.while.body_crit_edge:              ; preds = %free_pagearray
  br label %while.body

free_pagearray.while.end_crit_edge:               ; preds = %free_pagearray
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %free_pagearray.while.body_crit_edge
  %i.2103 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1, %free_pagearray.while.body_crit_edge ]
  %dec = add i32 %i.2103, -1
  %arrayidx47 = getelementptr ptr, ptr %oldpages.0, i32 %dec
  %17 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx47, align 4
  %19 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pagepool, align 4
  %21 = ptrtoint ptr %20 to i32
  %private1.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %private1.i.i, align 4
  store ptr %18, ptr %pagepool, align 4
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %free_pagearray.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %oldpages.0) #8
  br i1 %tobool48.not, label %while.end.cleanup_crit_edge, label %while.end.for.end55_crit_edge

while.end.for.end55_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %do.body28.cleanup_crit_edge
  %call = call i32 @cpumask_next(i32 noundef %call117, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp1 = icmp ult i32 %call, %23
  br i1 %cmp1, label %cleanup.for.body_crit_edge, label %cleanup.for.end55_crit_edge

cleanup.for.end55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end55:                                        ; preds = %cleanup.for.end55_crit_edge, %while.end.for.end55_crit_edge, %if.end7.i.for.end55_crit_edge, %for.body.for.end55_crit_edge, %for.cond.preheader.for.end55_crit_edge
  %ret.3 = phi i32 [ 0, %for.cond.preheader.for.end55_crit_edge ], [ 0, %cleanup.for.end55_crit_edge ], [ -12, %if.end7.i.for.end55_crit_edge ], [ -12, %for.body.for.end55_crit_edge ], [ %ret.1, %while.end.for.end55_crit_edge ]
  store i32 %nrpages, ptr @erofs_pcpubuf_growsize.pcb_nrpages, align 4
  call void @erofs_release_pages(ptr noundef nonnull %pagepool) #8
  br label %out

out:                                              ; preds = %for.end55, %entry.out_crit_edge
  %ret.4 = phi i32 [ 0, %entry.out_crit_edge ], [ %ret.3, %for.end55 ]
  call void @mutex_unlock(ptr noundef nonnull @erofs_pcpubuf_growsize.pcb_resize_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagepool) #8
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_allocpage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_release_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_pcpubuf_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %0)
  %cmp8 = icmp ult i32 %call7, %0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call9 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call7, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @erofs_pcb to i32)
  %3 = inttoptr i32 %add to ptr
  tail call void @__raw_spin_lock_init(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @erofs_pcpubuf_init.__key, i16 noundef signext 2) #8
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_pcpubuf_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %0)
  %cmp37 = icmp ult i32 %call36, %0
  br i1 %cmp37, label %entry.for.body_crit_edge, label %entry.for.end19_crit_edge

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %call38 = phi i32 [ %call, %cleanup.for.body_crit_edge ], [ %call36, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call38
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @erofs_pcb to i32)
  %3 = inttoptr i32 %add to ptr
  %ptr = getelementptr inbounds %struct.erofs_pcpubuf, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vunmap(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %pages = getelementptr inbounds %struct.erofs_pcpubuf, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond7.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond7.preheader:                              ; preds = %if.end
  %nrpages = getelementptr inbounds %struct.erofs_pcpubuf, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp834.not = icmp eq i32 %10, 0
  br i1 %cmp834.not, label %for.cond7.preheader.for.end_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.for.end_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.035 = phi i32 [ %inc, %for.inc.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 4
  %arrayidx11 = getelementptr ptr, ptr %12, i32 %i.035
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %for.body9.for.inc_crit_edge, label %if.then13

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then13:                                        ; preds = %for.body9
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !26

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %14 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@erofs_pcpubuf_exit, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %19) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body9.for.inc_crit_edge
  %inc = add nuw i32 %i.035, 1
  %24 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nrpages, align 4
  %cmp8 = icmp ult i32 %inc, %25
  br i1 %cmp8, label %for.inc.for.body9_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond7.preheader.for.end_crit_edge
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %27) #8
  %28 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pages, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call38, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %29
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end19_crit_edge

cleanup.for.end19_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end19:                                        ; preds = %cleanup.for.end19_crit_edge, %entry.for.end19_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/erofs/pcpubuf.c", i32 50, i32 9}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @erofs_pcpubuf_growsize.pcb_resize_mutex, !1, !"pcb_resize_mutex", i1 false, i1 false}
!4 = !{ptr @erofs_pcpubuf_growsize.pcb_nrpages, !5, !"pcb_nrpages", i1 false, i1 false}
!5 = !{!"../fs/erofs/pcpubuf.c", i32 51, i32 22}
!6 = !{ptr @erofs_pcpubuf_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/erofs/pcpubuf.c", i32 124, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__pcpu_unique_erofs_pcb, !10, !"__pcpu_unique_erofs_pcb", i1 false, i1 false}
!10 = !{!"../fs/erofs/pcpubuf.c", i32 19, i32 8}
!11 = !{ptr @erofs_pcb, !10, !"erofs_pcb", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2154461684}
!25 = !{i64 2154462810}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2154464159, i64 2154464641, i64 2154464196, i64 2154464252, i64 2154464286, i64 2154464310, i64 2154464351, i64 2154464372, i64 2154464400, i64 2154464434}
!28 = !{i64 2154465666}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2154468893, i64 2154469375, i64 2154468930, i64 2154468986, i64 2154469020, i64 2154469044, i64 2154469085, i64 2154469106, i64 2154469134, i64 2154469168}
!31 = !{i64 2153130108, i64 2153130591, i64 2153130145, i64 2153130201, i64 2153130235, i64 2153130259, i64 2153130300, i64 2153130321, i64 2153130349, i64 2153130383}
!32 = !{i64 2148759548}
!33 = !{i64 2148674257, i64 2148674289, i64 2148674318, i64 2148674352, i64 2148674383, i64 2148674406}
!34 = !{i64 2148759777}
!35 = !{i64 2148495670, i64 2148495675, i64 2148495688, i64 2148495732, i64 2148495766, i64 2148495787}
