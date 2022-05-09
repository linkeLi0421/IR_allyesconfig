; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-partition-percpu.c_pt.bc'
source_filename = "../drivers/irqchip/irq-partition-percpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.partition_desc = type { i32, ptr, ptr, ptr, ptr, %struct.irq_domain_ops }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.partition_affinity = type { %struct.cpumask, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/irqchip/irq-partition-percpu.c\00", [57 x i8] zeroinitializer }, align 32
@partition_translate_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Failed to find partition\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"partition_translate_id\00", [41 x i8] zeroinitializer }, align 32
@partition_translate_id._entry_ptr = internal global ptr @partition_translate_id._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@partition_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @partition_irq_mask, ptr null, ptr @partition_irq_unmask, ptr null, ptr null, ptr null, ptr @partition_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @partition_irq_print_chip, ptr null, ptr null, ptr null, ptr null, ptr @partition_irq_get_irqchip_state, ptr @partition_irq_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %5s-%lu\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 186, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 187, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"partition_irq_chip\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 104, i32 24 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 108, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [42 x i8] c"../drivers/irqchip/irq-partition-percpu.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 101, i32 16 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @partition_translate_id._entry, ptr @partition_translate_id._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @partition_irq_chip, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partition_translate_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partition_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @partition_translate_id(ptr nocapture noundef readonly %desc, ptr noundef readnone %partition_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp43 = icmp sgt i32 %1, 0
  br i1 %cmp43, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %parts = getelementptr inbounds %struct.partition_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parts, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %partition_id1 = getelementptr %struct.partition_affinity, ptr %3, i32 %i.044, i32 1
  %4 = ptrtoint ptr %partition_id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %partition_id1, align 4
  %cmp2 = icmp eq ptr %5, %partition_id
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.partition_affinity, ptr %3, i32 %i.044
  %phi.cmp = icmp eq ptr %arrayidx, null
  br i1 %phi.cmp, label %if.then.do.end_crit_edge, label %if.then.cleanup_crit_edge, !prof !24

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %i.044, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @partition_create_desc(ptr noundef %fwnode, ptr noundef %parts, i32 noundef %nr_parts, i32 noundef %chained_irq, ptr nocapture noundef readonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %select = getelementptr inbounds %struct.irq_domain_ops, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %select, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !24

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %translate = getelementptr inbounds %struct.irq_domain_ops, ptr %ops, i32 0, i32 9
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !24

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-partition-percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #7, !srcloc !25
  unreachable

do.end10:                                         ; preds = %lor.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #11
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %ops14 = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %ops14, ptr %ops, i32 44)
  %free = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @partition_domain_free, ptr %free, align 4
  %alloc = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @partition_domain_alloc, ptr %alloc, align 8
  %call.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode, i32 noundef %nr_parts, i32 noundef %nr_parts, i32 noundef 0, ptr noundef %ops14, ptr noundef nonnull %call7.i.i) #7
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end13.if.end63_crit_edge, label %if.end21

if.end13.if.end63_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end21:                                         ; preds = %if.end13
  %domain = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %domain, align 8
  %call22 = tail call ptr @bitmap_zalloc(i32 noundef %nr_parts, i32 noundef 3264) #7
  %bitmap = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %bitmap, align 8
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %do.end42, label %if.end57.critedge, !prof !24

do.end42:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef null) #7
  tail call void @irq_domain_remove(ptr noundef nonnull %call.i) #7
  br label %if.end63

if.end57.critedge:                                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = tail call ptr @irq_to_desc(i32 noundef %chained_irq) #7
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %chained_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call58, ptr %chained_desc, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nr_parts, ptr %call7.i.i, align 8
  %parts60 = getelementptr inbounds %struct.partition_desc, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %parts60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parts, ptr %parts60, align 4
  br label %cleanup

if.end63:                                         ; preds = %do.end42, %if.end13.if.end63_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end57.critedge, %do.end10.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end63 ], [ %call7.i.i, %if.end57.critedge ], [ null, %do.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @partition_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-partition-percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #7
  tail call void @__irq_set_handler(i32 noundef %virq, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  tail call void @irq_domain_reset_irq_data(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %arg) #0 align 64 {
entry:
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #7
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hwirq, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %type, align 4, !annotation !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-partition-percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

do.end7:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %translate = getelementptr inbounds %struct.irq_domain_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %translate, align 4
  %call = call i32 %5(ptr noundef %domain, ptr noundef %arg, ptr noundef nonnull %hwirq, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %6 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_data, align 4
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %bitmap = getelementptr inbounds %struct.partition_desc, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 4
  call void @_set_bit(i32 noundef %9, ptr noundef %11) #7
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chained_desc, align 4
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %15, ptr noundef nonnull @partition_handle_irq, ptr noundef %7) #7
  %parts = getelementptr inbounds %struct.partition_desc, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parts, align 4
  %18 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.partition_affinity, ptr %17, i32 %19
  %call12 = call i32 @irq_set_percpu_devid_partition(i32 noundef %virq, ptr noundef %arrayidx) #7
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %21, ptr noundef nonnull @partition_irq_chip, ptr noundef %7, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #7
  call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 4096) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @partition_get_domain(ptr noundef readonly %dsc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dsc, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %domain = getelementptr inbounds %struct.partition_desc, ptr %dsc, i32 0, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @partition_handle_irq(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu3 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu3, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %13(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %bitmap = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %17, i32 noundef %19, i32 noundef 0) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %21)
  %cmp36 = icmp slt i32 %call4, %21
  br i1 %cmp36, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %parts.i = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 1
  %div3.i.i.i = lshr i32 %7, 5
  %and.i.i.i = and i32 %7, 31
  %22 = shl nuw i32 1, %and.i.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hwirq.037 = phi i32 [ %call4, %for.body.lr.ph ], [ %call9, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %7)
  %cmp.not.i.i.i.i = icmp ugt i32 %25, %7
  br i1 %cmp.not.i.i.i.i, label %for.body.partition_check_cpu.exit_crit_edge, label %land.rhs.i.i.i.i

for.body.partition_check_cpu.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

land.rhs.i.i.i.i:                                 ; preds = %for.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %partition_check_cpu.exit

partition_check_cpu.exit:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, %for.body.partition_check_cpu.exit_crit_edge
  %arrayidx.i = getelementptr %struct.partition_affinity, ptr %24, i32 %hwirq.037
  %arrayidx.i.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div3.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %28 = and i32 %27, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %for.inc, label %partition_check_cpu.exit.for.end_crit_edge

partition_check_cpu.exit.for.end_crit_edge:       ; preds = %partition_check_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %partition_check_cpu.exit
  %29 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bitmap, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %add = add nsw i32 %hwirq.037, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %30, i32 noundef %32, i32 noundef %add) #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %call9, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %partition_check_cpu.exit.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %hwirq.0.lcssa = phi i32 [ %call4, %chained_irq_enter.exit.for.end_crit_edge ], [ %hwirq.037, %partition_check_cpu.exit.for.end_crit_edge ], [ %call9, %for.inc.for.end_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %hwirq.0.lcssa, i32 %36)
  %cmp11 = icmp eq i32 %hwirq.0.lcssa, %36
  br i1 %cmp11, label %if.then13, label %if.else, !prof !24

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @handle_bad_irq(ptr noundef %desc) #7
  br label %if.end15

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %domain = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domain, align 4
  %call14 = tail call i32 @generic_handle_domain_irq(ptr noundef %38, i32 noundef %hwirq.0.lcssa) #7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %39 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i33 = icmp eq ptr %40, null
  br i1 %tobool.not.i33, label %if.else.i34, label %if.end15.chained_irq_exit.exit_crit_edge

if.end15.chained_irq_exit.exit_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i34:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %41 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i34, %if.end15.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %42, %if.else.i34 ], [ %40, %if.end15.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid_partition(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @partition_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chained_desc, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %parts.i = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %9
  br i1 %cmp.not.i.i.i.i, label %entry.partition_check_cpu.exit_crit_edge, label %land.rhs.i.i.i.i

entry.partition_check_cpu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %partition_check_cpu.exit

partition_check_cpu.exit:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, %entry.partition_check_cpu.exit_crit_edge
  %arrayidx.i = getelementptr %struct.partition_affinity, ptr %13, i32 %11
  %div3.i.i.i = lshr i32 %9, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %9, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %partition_check_cpu.exit.if.end_crit_edge, label %land.lhs.true

partition_check_cpu.exit.if.end_crit_edge:        ; preds = %partition_check_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %partition_check_cpu.exit
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_mask, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %20(ptr noundef %irq_data.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %partition_check_cpu.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @partition_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chained_desc, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %parts.i = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %9
  br i1 %cmp.not.i.i.i.i, label %entry.partition_check_cpu.exit_crit_edge, label %land.rhs.i.i.i.i

entry.partition_check_cpu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %partition_check_cpu.exit

partition_check_cpu.exit:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, %entry.partition_check_cpu.exit_crit_edge
  %arrayidx.i = getelementptr %struct.partition_affinity, ptr %13, i32 %11
  %div3.i.i.i = lshr i32 %9, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %9, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %partition_check_cpu.exit.if.end_crit_edge, label %land.lhs.true

partition_check_cpu.exit.if.end_crit_edge:        ; preds = %partition_check_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %partition_check_cpu.exit
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_unmask, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %20(ptr noundef %irq_data.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %partition_check_cpu.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chained_desc, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_set_type, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %call5 = tail call i32 %7(ptr noundef %irq_data.i, i32 noundef %type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @partition_irq_print_chip(ptr nocapture noundef readonly %d, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chained_desc, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %name = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %hwirq = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.4, ptr noundef %7, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_irq_get_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chained_desc, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %parts.i = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %9
  br i1 %cmp.not.i.i.i.i, label %entry.partition_check_cpu.exit_crit_edge, label %land.rhs.i.i.i.i

entry.partition_check_cpu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %partition_check_cpu.exit

partition_check_cpu.exit:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, %entry.partition_check_cpu.exit_crit_edge
  %arrayidx.i = getelementptr %struct.partition_affinity, ptr %13, i32 %11
  %div3.i.i.i = lshr i32 %9, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %9, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %partition_check_cpu.exit.cleanup_crit_edge, label %land.lhs.true

partition_check_cpu.exit.cleanup_crit_edge:       ; preds = %partition_check_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %partition_check_cpu.exit
  %irq_get_irqchip_state = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 26
  %19 = ptrtoint ptr %irq_get_irqchip_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_get_irqchip_state, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %20(ptr noundef %irq_data.i, i32 noundef %which, ptr noundef %val) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %partition_check_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %partition_check_cpu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_irq_set_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, i1 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chained_desc = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chained_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chained_desc, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %parts.i = getelementptr inbounds %struct.partition_desc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parts.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %9
  br i1 %cmp.not.i.i.i.i, label %entry.partition_check_cpu.exit_crit_edge, label %land.rhs.i.i.i.i

entry.partition_check_cpu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_check_cpu.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %partition_check_cpu.exit

partition_check_cpu.exit:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.partition_check_cpu.exit_crit_edge, %entry.partition_check_cpu.exit_crit_edge
  %arrayidx.i = getelementptr %struct.partition_affinity, ptr %13, i32 %11
  %div3.i.i.i = lshr i32 %9, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %9, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %partition_check_cpu.exit.cleanup_crit_edge, label %land.lhs.true

partition_check_cpu.exit.cleanup_crit_edge:       ; preds = %partition_check_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %partition_check_cpu.exit
  %irq_set_irqchip_state = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 27
  %19 = ptrtoint ptr %irq_set_irqchip_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_set_irqchip_state, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %20(ptr noundef %irq_data.i, i32 noundef %which, i1 noundef zeroext %val) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %partition_check_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %partition_check_cpu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-partition-percpu.c", i32 186, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-partition-percpu.c", i32 187, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @partition_translate_id._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @partition_translate_id._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @partition_irq_chip, !11, !"partition_irq_chip", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-partition-percpu.c", i32 104, i32 24}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-partition-percpu.c", i32 101, i32 16}
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
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2154349906, i64 2154350409, i64 2154349943, i64 2154349999, i64 2154350033, i64 2154350057, i64 2154350098, i64 2154350119, i64 2154350147, i64 2154350181}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2154346156, i64 2154346659, i64 2154346193, i64 2154346249, i64 2154346283, i64 2154346307, i64 2154346348, i64 2154346369, i64 2154346397, i64 2154346431}
!28 = !{!"auto-init"}
!29 = !{i64 2154344399, i64 2154344902, i64 2154344436, i64 2154344492, i64 2154344526, i64 2154344550, i64 2154344591, i64 2154344612, i64 2154344640, i64 2154344674}
