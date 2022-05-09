; ModuleID = '/llk/IR_all_yes/drivers/firewire/core-iso.c_pt.bc'
source_filename = "../drivers/firewire/core-iso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fw_iso_buffer_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_buffer_init\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_buffer_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_buffer_init\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_buffer_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_buffer_destroy\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_buffer_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_buffer_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_buffer_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_buffer_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_create\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_create\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_create:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_create\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_destroy\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_start\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_start\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_start:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_start\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_queue\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_queue\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_queue_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_queue_flush\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_queue_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_queue_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_queue_flush\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_queue_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_flush_completions\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_flush_completions\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_flush_completions\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_flush_completions:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_flush_completions\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_flush_completions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_context_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_context_stop\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_context_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_context_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_context_stop\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_context_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_resource_manage\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_resource_manage\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_resource_manage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_resource_manage:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_resource_manage\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_resource_manage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.66, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_card_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_iso_context = type { ptr, i32, i32, i32, i8, i32, %union.fw_iso_callback, ptr }
%union.fw_iso_callback = type { ptr }

@__kstrtab_fw_iso_buffer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_buffer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_buffer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_buffer_init to i32), ptr @__kstrtab_fw_iso_buffer_init, ptr @__kstrtabns_fw_iso_buffer_init }, section "___ksymtab+fw_iso_buffer_init", align 4
@__kstrtab_fw_iso_buffer_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_buffer_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_buffer_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_buffer_destroy to i32), ptr @__kstrtab_fw_iso_buffer_destroy, ptr @__kstrtabns_fw_iso_buffer_destroy }, section "___ksymtab+fw_iso_buffer_destroy", align 4
@__kstrtab_fw_iso_context_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_create = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_create to i32), ptr @__kstrtab_fw_iso_context_create, ptr @__kstrtabns_fw_iso_context_create }, section "___ksymtab+fw_iso_context_create", align 4
@__kstrtab_fw_iso_context_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_destroy to i32), ptr @__kstrtab_fw_iso_context_destroy, ptr @__kstrtabns_fw_iso_context_destroy }, section "___ksymtab+fw_iso_context_destroy", align 4
@__kstrtab_fw_iso_context_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_start = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_start to i32), ptr @__kstrtab_fw_iso_context_start, ptr @__kstrtabns_fw_iso_context_start }, section "___ksymtab+fw_iso_context_start", align 4
@__kstrtab_fw_iso_context_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_queue to i32), ptr @__kstrtab_fw_iso_context_queue, ptr @__kstrtabns_fw_iso_context_queue }, section "___ksymtab+fw_iso_context_queue", align 4
@__kstrtab_fw_iso_context_queue_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_queue_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_queue_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_queue_flush to i32), ptr @__kstrtab_fw_iso_context_queue_flush, ptr @__kstrtabns_fw_iso_context_queue_flush }, section "___ksymtab+fw_iso_context_queue_flush", align 4
@__kstrtab_fw_iso_context_flush_completions = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_flush_completions = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_flush_completions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_flush_completions to i32), ptr @__kstrtab_fw_iso_context_flush_completions, ptr @__kstrtabns_fw_iso_context_flush_completions }, section "___ksymtab+fw_iso_context_flush_completions", align 4
@__kstrtab_fw_iso_context_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_context_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_context_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_context_stop to i32), ptr @__kstrtab_fw_iso_context_stop, ptr @__kstrtabns_fw_iso_context_stop }, section "___ksymtab+fw_iso_context_stop", align 4
@__kstrtab_fw_iso_resource_manage = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_resource_manage = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_resource_manage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_resource_manage to i32), ptr @__kstrtab_fw_iso_resource_manage, ptr @__kstrtabns_fw_iso_resource_manage }, section "___ksymtab+fw_iso_resource_manage", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_fw_iso_buffer_destroy, ptr @__ksymtab_fw_iso_buffer_init, ptr @__ksymtab_fw_iso_context_create, ptr @__ksymtab_fw_iso_context_destroy, ptr @__ksymtab_fw_iso_context_flush_completions, ptr @__ksymtab_fw_iso_context_queue, ptr @__ksymtab_fw_iso_context_queue_flush, ptr @__ksymtab_fw_iso_context_start, ptr @__ksymtab_fw_iso_context_stop, ptr @__ksymtab_fw_iso_resource_manage], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_buffer_alloc(ptr nocapture noundef %buffer, i32 noundef %page_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page_count1 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %page_count1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %page_count1, align 4
  %page_count_mapped = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 3
  %1 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %page_count_mapped, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %page_count, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !32

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pages30 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %4 = ptrtoint ptr %pages30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pages30, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #9
  %pages = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %pages, align 4
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_count)
  %cmp335.not = icmp eq i32 %page_count, 0
  br i1 %cmp335.not, label %for.cond.preheader.if.end14.critedge_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14.critedge_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3524, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.036
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %10 = load ptr, ptr %pages, align 4
  %arrayidx7 = getelementptr ptr, ptr %10, i32 %i.036
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %cmp8 = icmp eq ptr %12, null
  br i1 %cmp8, label %if.then13.critedge, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %page_count
  br i1 %exitcond.not, label %for.inc.if.end14.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end14.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.critedge

if.then13.critedge:                               ; preds = %for.body
  %13 = ptrtoint ptr %page_count1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.036, ptr %page_count1, align 4
  %14 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_count_mapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26.i = icmp sgt i32 %15, 0
  br i1 %cmp26.i, label %if.then13.critedge.for.body.i_crit_edge, label %if.then13.critedge.for.cond1.preheader.i_crit_edge

if.then13.critedge.for.cond1.preheader.i_crit_edge: ; preds = %if.then13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

if.then13.critedge.for.body.i_crit_edge:          ; preds = %if.then13.critedge
  br label %for.body.i

for.cond1.preheader.ithread-pre-split:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %page_count1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %page_count1, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.ithread-pre-split, %if.then13.critedge.for.cond1.preheader.i_crit_edge
  %17 = phi i32 [ %.pr, %for.cond1.preheader.ithread-pre-split ], [ %i.036, %if.then13.critedge.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp228.i = icmp sgt i32 %17, 0
  br i1 %cmp228.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge

for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_iso_buffer_destroy.exit

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then13.critedge.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then13.critedge.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.027.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 4)
  %24 = load ptr, ptr inttoptr (i32 4 to ptr), align 4
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %23, i32 noundef 4096, i32 noundef %26, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %27 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_count_mapped, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.cond1.preheader.ithread-pre-split

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.129.i = phi i32 [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %29 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages, align 4
  %arrayidx5.i = getelementptr ptr, ptr %30, i32 %i.129.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx5.i, align 4
  tail call void @__free_pages(ptr noundef %32, i32 noundef 0) #6
  %inc7.i = add nuw nsw i32 %i.129.i, 1
  %33 = ptrtoint ptr %page_count1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_count1, align 4
  %cmp2.i = icmp slt i32 %inc7.i, %34
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.fw_iso_buffer_destroy.exit_crit_edge

for.body3.i.fw_iso_buffer_destroy.exit_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_iso_buffer_destroy.exit

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

fw_iso_buffer_destroy.exit:                       ; preds = %for.body3.i.fw_iso_buffer_destroy.exit_crit_edge, %for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge
  %35 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %36) #6
  %37 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pages, align 4
  %38 = ptrtoint ptr %page_count1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %page_count1, align 4
  %39 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %page_count_mapped, align 4
  br label %cleanup

if.end14.critedge:                                ; preds = %for.inc.if.end14.critedge_crit_edge, %for.cond.preheader.if.end14.critedge_crit_edge
  %40 = ptrtoint ptr %page_count1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %page_count, ptr %page_count1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14.critedge, %fw_iso_buffer_destroy.exit, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ -12, %fw_iso_buffer_destroy.exit ], [ 0, %if.end14.critedge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_iso_buffer_destroy(ptr nocapture noundef %buffer, ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page_count_mapped = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 3
  %0 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_count_mapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp sgt i32 %1, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %page_count = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp228 = icmp sgt i32 %3, 0
  br i1 %cmp228, label %for.body3.lr.ph, label %for.cond1.preheader.for.end8_crit_edge

for.cond1.preheader.for.end8_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end8

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %pages4 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.027
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %private = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %9, i32 noundef 4096, i32 noundef %13, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.027, 1
  %14 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_count_mapped, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %i.129 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc7, %for.body3.for.body3_crit_edge ]
  %16 = ptrtoint ptr %pages4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages4, align 4
  %arrayidx5 = getelementptr ptr, ptr %17, i32 %i.129
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #6
  %inc7 = add nuw nsw i32 %i.129, 1
  %20 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_count, align 4
  %cmp2 = icmp slt i32 %inc7, %21
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end8_crit_edge

for.body3.for.end8_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end8

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.end8:                                         ; preds = %for.body3.for.end8_crit_edge, %for.cond1.preheader.for.end8_crit_edge
  %pages9 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %22 = ptrtoint ptr %pages9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages9, align 4
  tail call void @kfree(ptr noundef %23) #6
  %24 = ptrtoint ptr %pages9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pages9, align 4
  %25 = ptrtoint ptr %page_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %page_count, align 4
  %26 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %page_count_mapped, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_buffer_map_dma(ptr nocapture noundef %buffer, ptr nocapture noundef readonly %card, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %direction, ptr %buffer, align 4
  %device = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %page_count = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 2
  %1 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24 = icmp sgt i32 %2, 0
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.025
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %8, i32 noundef 0, i32 noundef 4096, i32 noundef %direction, i32 noundef 0) #6
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %10, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i.not = icmp eq i32 %call, -1
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 4
  %arrayidx5 = getelementptr ptr, ptr %12, i32 %i.025
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 4
  %private1.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call, ptr %private1.i, align 4
  %inc = add nuw nsw i32 %i.025, 1
  %16 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_count, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.025, %for.body.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  %page_count_mapped = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 3
  %18 = ptrtoint ptr %page_count_mapped to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0.lcssa, ptr %page_count_mapped, align 4
  %19 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %20)
  %cmp7 = icmp slt i32 %i.0.lcssa, %20
  %. = select i1 %cmp7, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_buffer_init(ptr nocapture noundef %buffer, ptr nocapture noundef readonly %card, i32 noundef %page_count, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_iso_buffer_alloc(ptr noundef %buffer, i32 noundef %page_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %direction, ptr %buffer, align 4
  %device.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 1
  %page_count.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 2
  %1 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24.i = icmp sgt i32 %2, 0
  br i1 %cmp24.i, label %for.body.lr.ph.i, label %fw_iso_buffer_map_dma.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %pages.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 4
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.025.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %8, i32 noundef 0, i32 noundef 4096, i32 noundef %direction, i32 noundef 0) #6
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %10, i32 noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not.i, label %for.body.i.fw_iso_buffer_map_dma.exit_crit_edge, label %if.end.i

for.body.i.fw_iso_buffer_map_dma.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_iso_buffer_map_dma.exit

if.end.i:                                         ; preds = %for.body.i
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %12, i32 %i.025.i
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5.i, align 4
  %private1.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %private1.i.i, align 4
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %16 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.fw_iso_buffer_map_dma.exit_crit_edge

if.end.i.fw_iso_buffer_map_dma.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_iso_buffer_map_dma.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

fw_iso_buffer_map_dma.exit:                       ; preds = %if.end.i.fw_iso_buffer_map_dma.exit_crit_edge, %for.body.i.fw_iso_buffer_map_dma.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.025.i, %for.body.i.fw_iso_buffer_map_dma.exit_crit_edge ], [ %inc.i, %if.end.i.fw_iso_buffer_map_dma.exit_crit_edge ]
  %page_count_mapped.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 3
  %18 = ptrtoint ptr %page_count_mapped.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0.lcssa.i, ptr %page_count_mapped.i, align 4
  %19 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %20)
  %cmp7.i = icmp slt i32 %i.0.lcssa.i, %20
  br i1 %cmp7.i, label %if.then3, label %fw_iso_buffer_map_dma.exit.cleanup_crit_edge

fw_iso_buffer_map_dma.exit.cleanup_crit_edge:     ; preds = %fw_iso_buffer_map_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fw_iso_buffer_map_dma.exit.thread:                ; preds = %if.end
  %page_count_mapped.i22 = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 3
  %21 = ptrtoint ptr %page_count_mapped.i22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %page_count_mapped.i22, align 4
  %22 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7.i23 = icmp sgt i32 %23, 0
  br i1 %cmp7.i23, label %fw_iso_buffer_map_dma.exit.thread.for.body3.lr.ph.i_crit_edge, label %fw_iso_buffer_map_dma.exit.thread.cleanup_crit_edge

fw_iso_buffer_map_dma.exit.thread.cleanup_crit_edge: ; preds = %fw_iso_buffer_map_dma.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fw_iso_buffer_map_dma.exit.thread.for.body3.lr.ph.i_crit_edge: ; preds = %fw_iso_buffer_map_dma.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.lr.ph.i

if.then3:                                         ; preds = %fw_iso_buffer_map_dma.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp26.i = icmp sgt i32 %i.0.lcssa.i, 0
  br i1 %cmp26.i, label %if.then3.for.body.i19_crit_edge, label %if.then3.for.cond1.preheader.i_crit_edge

if.then3.for.cond1.preheader.i_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

if.then3.for.body.i19_crit_edge:                  ; preds = %if.then3
  br label %for.body.i19

for.cond1.preheader.ithread-pre-split:            ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.pr = load i32, ptr %page_count.i, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.ithread-pre-split, %if.then3.for.cond1.preheader.i_crit_edge
  %.pr = phi i32 [ %.pr.pr, %for.cond1.preheader.ithread-pre-split ], [ %20, %if.then3.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp228.i = icmp sgt i32 %.pr, 0
  br i1 %cmp228.i, label %for.cond1.preheader.i.for.body3.lr.ph.i_crit_edge, label %for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge

for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_iso_buffer_destroy.exit

for.cond1.preheader.i.for.body3.lr.ph.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.lr.ph.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i.for.body3.lr.ph.i_crit_edge, %fw_iso_buffer_map_dma.exit.thread.for.body3.lr.ph.i_crit_edge
  %page_count_mapped.i2740 = phi ptr [ %page_count_mapped.i, %for.cond1.preheader.i.for.body3.lr.ph.i_crit_edge ], [ %page_count_mapped.i22, %fw_iso_buffer_map_dma.exit.thread.for.body3.lr.ph.i_crit_edge ]
  %pages4.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  br label %for.body3.i

for.body.i19:                                     ; preds = %for.body.i19.for.body.i19_crit_edge, %if.then3.for.body.i19_crit_edge
  %i.027.i = phi i32 [ %inc.i17, %for.body.i19.for.body.i19_crit_edge ], [ 0, %if.then3.for.body.i19_crit_edge ]
  %25 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages.i, align 4
  %arrayidx.i16 = getelementptr ptr, ptr %26, i32 %i.027.i
  %27 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i16, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %private.i, align 4
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i, align 4
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %30, i32 noundef 4096, i32 noundef %34, i32 noundef 0) #6
  %inc.i17 = add nuw nsw i32 %i.027.i, 1
  %35 = ptrtoint ptr %page_count_mapped.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_count_mapped.i, align 4
  %cmp.i18 = icmp slt i32 %inc.i17, %36
  br i1 %cmp.i18, label %for.body.i19.for.body.i19_crit_edge, label %for.cond1.preheader.ithread-pre-split

for.body.i19.for.body.i19_crit_edge:              ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.129.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ]
  %37 = ptrtoint ptr %pages4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages4.i, align 4
  %arrayidx5.i20 = getelementptr ptr, ptr %38, i32 %i.129.i
  %39 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx5.i20, align 4
  tail call void @__free_pages(ptr noundef %40, i32 noundef 0) #6
  %inc7.i = add nuw nsw i32 %i.129.i, 1
  %41 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_count.i, align 4
  %cmp2.i = icmp slt i32 %inc7.i, %42
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.fw_iso_buffer_destroy.exit_crit_edge

for.body3.i.fw_iso_buffer_destroy.exit_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_iso_buffer_destroy.exit

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

fw_iso_buffer_destroy.exit:                       ; preds = %for.body3.i.fw_iso_buffer_destroy.exit_crit_edge, %for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge
  %page_count_mapped.i2739 = phi ptr [ %page_count_mapped.i, %for.cond1.preheader.i.fw_iso_buffer_destroy.exit_crit_edge ], [ %page_count_mapped.i2740, %for.body3.i.fw_iso_buffer_destroy.exit_crit_edge ]
  %pages9.i = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %43 = ptrtoint ptr %pages9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages9.i, align 4
  tail call void @kfree(ptr noundef %44) #6
  %45 = ptrtoint ptr %pages9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %pages9.i, align 4
  %46 = ptrtoint ptr %page_count.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %page_count.i, align 4
  %47 = ptrtoint ptr %page_count_mapped.i2739 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %page_count_mapped.i2739, align 4
  br label %cleanup

cleanup:                                          ; preds = %fw_iso_buffer_destroy.exit, %fw_iso_buffer_map_dma.exit.thread.cleanup_crit_edge, %fw_iso_buffer_map_dma.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %fw_iso_buffer_destroy.exit ], [ 0, %fw_iso_buffer_map_dma.exit.cleanup_crit_edge ], [ 0, %fw_iso_buffer_map_dma.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_buffer_lookup(ptr nocapture noundef readonly %buffer, i32 noundef %completed) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page_count = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.fw_iso_buffer, ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %private = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private, align 4
  %sub = sub i32 %completed, %7
  %8 = add i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %8)
  %9 = icmp ult i32 %8, 4096
  br i1 %9, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %i.013, 12
  %add = add i32 %sub, %shl
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fw_iso_context_create(ptr noundef %card, i32 noundef %type, i32 noundef %channel, i32 noundef %speed, i32 noundef %header_size, ptr noundef %callback, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %allocate_iso_context = getelementptr inbounds %struct.fw_card_driver, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %allocate_iso_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %allocate_iso_context, align 4
  %call = tail call ptr %3(ptr noundef %card, i32 noundef %type, i32 noundef %channel, i32 noundef %header_size) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %card, ptr %call, align 4
  %type3 = getelementptr inbounds %struct.fw_iso_context, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %type3, align 4
  %channel4 = getelementptr inbounds %struct.fw_iso_context, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %channel4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %channel, ptr %channel4, align 4
  %speed5 = getelementptr inbounds %struct.fw_iso_context, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %speed5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %speed, ptr %speed5, align 4
  %header_size6 = getelementptr inbounds %struct.fw_iso_context, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %header_size6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %header_size, ptr %header_size6, align 4
  %callback7 = getelementptr inbounds %struct.fw_iso_context, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %callback7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %callback, ptr %callback7, align 4
  %callback_data8 = getelementptr inbounds %struct.fw_iso_context, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %callback_data8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %callback_data, ptr %callback_data8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_iso_context_destroy(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %free_iso_context = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %free_iso_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_iso_context, align 4
  tail call void %5(ptr noundef %ctx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_context_start(ptr noundef %ctx, i32 noundef %cycle, i32 noundef %sync, i32 noundef %tags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %start_iso = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %start_iso to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_iso, align 4
  %call = tail call i32 %5(ptr noundef %ctx, i32 noundef %cycle, i32 noundef %sync, i32 noundef %tags) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_context_set_channels(ptr noundef %ctx, ptr noundef %channels) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %set_iso_channels = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %set_iso_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_iso_channels, align 4
  %call = tail call i32 %5(ptr noundef %ctx, ptr noundef %channels) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_context_queue(ptr noundef %ctx, ptr noundef %packet, ptr noundef %buffer, i32 noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %queue_iso = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %queue_iso to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue_iso, align 4
  %call = tail call i32 %5(ptr noundef %ctx, ptr noundef %packet, ptr noundef %buffer, i32 noundef %payload) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_iso_context_queue_flush(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flush_queue_iso = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flush_queue_iso to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_queue_iso, align 4
  tail call void %5(ptr noundef %ctx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_context_flush_completions(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flush_iso_completions = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %flush_iso_completions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_iso_completions, align 4
  %call = tail call i32 %5(ptr noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_context_stop(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %stop_iso = getelementptr inbounds %struct.fw_card_driver, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %stop_iso to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_iso, align 4
  %call = tail call i32 %5(ptr noundef %ctx) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_iso_resource_manage(ptr noundef %card, i32 noundef %generation, i64 noundef %channels_mask, ptr nocapture noundef writeonly %channel, ptr nocapture noundef %bandwidth, i1 noundef zeroext %allocate) #0 align 64 {
entry:
  %data.i.i = alloca [2 x i32], align 4
  %data.i122 = alloca [2 x i32], align 4
  %data.i85 = alloca [2 x i32], align 4
  %data.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %channels_mask to i32
  %shr = lshr i64 %channels_mask, 32
  %conv1 = trunc i64 %shr to i32
  %lock = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %irm_node = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 21
  %0 = ptrtoint ptr %irm_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irm_node, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv2 = zext i16 %3 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #6
  %4 = getelementptr inbounds [2 x i32], ptr %data.i, i32 0, i32 1
  %cond.i = sext i1 %allocate to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %retry.054.i = phi i32 [ 5, %if.then ], [ %retry.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.053.i = phi i32 [ -5, %if.then ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %channel.051.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %old.050.i = phi i32 [ %cond.i, %if.then ], [ %old.2.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %channel.051.i
  %and.i = and i32 %shl.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %shl2.i = lshr i32 -2147483648, %channel.051.i
  %5 = xor i32 %old.050.i, %cond.i
  %6 = and i32 %5, %shl2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 0
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %old.050.i, ptr %data.i, align 4
  %xor.i = xor i32 %shl2.i, %old.050.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor.i, ptr %4, align 4
  %call.i = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275748, ptr noundef nonnull %data.i, i32 noundef 8) #6
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end7.i.sw.default.i_crit_edge [
    i32 19, label %sw.bb.i
    i32 0, label %sw.bb11.i
  ]

if.end7.i.sw.default.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i = select i1 %allocate, i32 -11, i32 %channel.051.i
  br label %manage_channel.exit

sw.bb11.i:                                        ; preds = %if.end7.i
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %old.050.i)
  %cmp13.i = icmp eq i32 %11, %old.050.i
  br i1 %cmp13.i, label %sw.bb11.i.manage_channel.exit_crit_edge, label %if.end15.i

sw.bb11.i.manage_channel.exit_crit_edge:          ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_channel.exit

if.end15.i:                                       ; preds = %sw.bb11.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = xor i32 %13, %11
  %15 = and i32 %14, %shl2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21.i = icmp eq i32 %15, 0
  br i1 %cmp21.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end15.i.sw.default.i_crit_edge

if.end15.i.sw.default.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end15.i.sw.default.i_crit_edge, %if.end7.i.sw.default.i_crit_edge
  %old.1.i = phi i32 [ %old.050.i, %if.end7.i.sw.default.i_crit_edge ], [ %11, %if.end15.i.sw.default.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.054.i)
  %tobool24.not.i = icmp eq i32 %retry.054.i, 0
  br i1 %tobool24.not.i, label %sw.default.i.for.inc.i_crit_edge, label %if.then25.i

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then25.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %retry.054.i, -1
  %dec26.i = add i32 %channel.051.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then25.i, %sw.default.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %old.2.i = phi i32 [ %old.050.i, %if.end.i.for.inc.i_crit_edge ], [ %old.1.i, %if.then25.i ], [ %11, %if.end15.i.for.inc.i_crit_edge ], [ %old.050.i, %for.body.i.for.inc.i_crit_edge ], [ %old.1.i, %sw.default.i.for.inc.i_crit_edge ]
  %channel.1.i = phi i32 [ %channel.051.i, %if.end.i.for.inc.i_crit_edge ], [ %dec26.i, %if.then25.i ], [ %channel.051.i, %if.end15.i.for.inc.i_crit_edge ], [ %channel.051.i, %for.body.i.for.inc.i_crit_edge ], [ %channel.051.i, %sw.default.i.for.inc.i_crit_edge ]
  %ret.1.i = phi i32 [ -16, %if.end.i.for.inc.i_crit_edge ], [ -16, %if.then25.i ], [ -16, %if.end15.i.for.inc.i_crit_edge ], [ %ret.053.i, %for.body.i.for.inc.i_crit_edge ], [ -5, %sw.default.i.for.inc.i_crit_edge ]
  %retry.1.i = phi i32 [ %retry.054.i, %if.end.i.for.inc.i_crit_edge ], [ %dec.i, %if.then25.i ], [ %retry.054.i, %if.end15.i.for.inc.i_crit_edge ], [ %retry.054.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %sw.default.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %channel.1.i, 1
  %cmp.i = icmp slt i32 %inc.i, 32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.manage_channel.exit_crit_edge

for.inc.i.manage_channel.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_channel.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

manage_channel.exit:                              ; preds = %for.inc.i.manage_channel.exit_crit_edge, %sw.bb11.i.manage_channel.exit_crit_edge, %sw.bb.i
  %retval.0.i = phi i32 [ %spec.select.i, %sw.bb.i ], [ %channel.051.i, %sw.bb11.i.manage_channel.exit_crit_edge ], [ %ret.1.i, %for.inc.i.manage_channel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #6
  br label %if.end

if.end:                                           ; preds = %manage_channel.exit, %entry.if.end_crit_edge
  %c.0 = phi i32 [ %retval.0.i, %manage_channel.exit ], [ -22, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool5.not = icmp ne i32 %conv1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0)
  %cmp = icmp slt i32 %c.0, 0
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i85) #6
  %16 = getelementptr inbounds [2 x i32], ptr %data.i85, i32 0, i32 1
  %cond.i86 = sext i1 %allocate to i32
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.inc.i119.for.body.i94_crit_edge, %if.then7
  %retry.054.i87 = phi i32 [ 5, %if.then7 ], [ %retry.1.i116, %for.inc.i119.for.body.i94_crit_edge ]
  %ret.053.i88 = phi i32 [ -5, %if.then7 ], [ %ret.1.i115, %for.inc.i119.for.body.i94_crit_edge ]
  %channel.051.i89 = phi i32 [ 0, %if.then7 ], [ %inc.i117, %for.inc.i119.for.body.i94_crit_edge ]
  %old.050.i90 = phi i32 [ %cond.i86, %if.then7 ], [ %old.2.i113, %for.inc.i119.for.body.i94_crit_edge ]
  %shl.i91 = shl nuw i32 1, %channel.051.i89
  %and.i92 = and i32 %shl.i91, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool1.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool1.not.i93, label %for.body.i94.for.inc.i119_crit_edge, label %if.end.i97

for.body.i94.for.inc.i119_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i119

if.end.i97:                                       ; preds = %for.body.i94
  %shl2.i95 = lshr i32 -2147483648, %channel.051.i89
  %17 = xor i32 %old.050.i90, %cond.i86
  %18 = and i32 %17, %shl2.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.not.i96 = icmp eq i32 %18, 0
  br i1 %cmp5.not.i96, label %if.end7.i100, label %if.end.i97.for.inc.i119_crit_edge

if.end.i97.for.inc.i119_crit_edge:                ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i119

if.end7.i100:                                     ; preds = %if.end.i97
  %19 = ptrtoint ptr %data.i85 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %old.050.i90, ptr %data.i85, align 4
  %xor.i98 = xor i32 %shl2.i95, %old.050.i90
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor.i98, ptr %16, align 4
  %call.i99 = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275752, ptr noundef nonnull %data.i85, i32 noundef 8) #6
  %21 = zext i32 %call.i99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call.i99, label %if.end7.i100.sw.default.i109_crit_edge [
    i32 19, label %sw.bb.i102
    i32 0, label %sw.bb11.i104
  ]

if.end7.i100.sw.default.i109_crit_edge:           ; preds = %if.end7.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i109

sw.bb.i102:                                       ; preds = %if.end7.i100
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i101 = select i1 %allocate, i32 -11, i32 %channel.051.i89
  br label %manage_channel.exit121

sw.bb11.i104:                                     ; preds = %if.end7.i100
  %22 = ptrtoint ptr %data.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.i85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %old.050.i90)
  %cmp13.i103 = icmp eq i32 %23, %old.050.i90
  br i1 %cmp13.i103, label %sw.bb11.i104.manage_channel.exit121_crit_edge, label %if.end15.i106

sw.bb11.i104.manage_channel.exit121_crit_edge:    ; preds = %sw.bb11.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_channel.exit121

if.end15.i106:                                    ; preds = %sw.bb11.i104
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %16, align 4
  %26 = xor i32 %25, %23
  %27 = and i32 %26, %shl2.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp21.i105 = icmp eq i32 %27, 0
  br i1 %cmp21.i105, label %if.end15.i106.for.inc.i119_crit_edge, label %if.end15.i106.sw.default.i109_crit_edge

if.end15.i106.sw.default.i109_crit_edge:          ; preds = %if.end15.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i109

if.end15.i106.for.inc.i119_crit_edge:             ; preds = %if.end15.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i119

sw.default.i109:                                  ; preds = %if.end15.i106.sw.default.i109_crit_edge, %if.end7.i100.sw.default.i109_crit_edge
  %old.1.i107 = phi i32 [ %old.050.i90, %if.end7.i100.sw.default.i109_crit_edge ], [ %23, %if.end15.i106.sw.default.i109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.054.i87)
  %tobool24.not.i108 = icmp eq i32 %retry.054.i87, 0
  br i1 %tobool24.not.i108, label %sw.default.i109.for.inc.i119_crit_edge, label %if.then25.i112

sw.default.i109.for.inc.i119_crit_edge:           ; preds = %sw.default.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i119

if.then25.i112:                                   ; preds = %sw.default.i109
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i110 = add i32 %retry.054.i87, -1
  %dec26.i111 = add i32 %channel.051.i89, -1
  br label %for.inc.i119

for.inc.i119:                                     ; preds = %if.then25.i112, %sw.default.i109.for.inc.i119_crit_edge, %if.end15.i106.for.inc.i119_crit_edge, %if.end.i97.for.inc.i119_crit_edge, %for.body.i94.for.inc.i119_crit_edge
  %old.2.i113 = phi i32 [ %old.050.i90, %if.end.i97.for.inc.i119_crit_edge ], [ %old.1.i107, %if.then25.i112 ], [ %23, %if.end15.i106.for.inc.i119_crit_edge ], [ %old.050.i90, %for.body.i94.for.inc.i119_crit_edge ], [ %old.1.i107, %sw.default.i109.for.inc.i119_crit_edge ]
  %channel.1.i114 = phi i32 [ %channel.051.i89, %if.end.i97.for.inc.i119_crit_edge ], [ %dec26.i111, %if.then25.i112 ], [ %channel.051.i89, %if.end15.i106.for.inc.i119_crit_edge ], [ %channel.051.i89, %for.body.i94.for.inc.i119_crit_edge ], [ %channel.051.i89, %sw.default.i109.for.inc.i119_crit_edge ]
  %ret.1.i115 = phi i32 [ -16, %if.end.i97.for.inc.i119_crit_edge ], [ -16, %if.then25.i112 ], [ -16, %if.end15.i106.for.inc.i119_crit_edge ], [ %ret.053.i88, %for.body.i94.for.inc.i119_crit_edge ], [ -5, %sw.default.i109.for.inc.i119_crit_edge ]
  %retry.1.i116 = phi i32 [ %retry.054.i87, %if.end.i97.for.inc.i119_crit_edge ], [ %dec.i110, %if.then25.i112 ], [ %retry.054.i87, %if.end15.i106.for.inc.i119_crit_edge ], [ %retry.054.i87, %for.body.i94.for.inc.i119_crit_edge ], [ 0, %sw.default.i109.for.inc.i119_crit_edge ]
  %inc.i117 = add i32 %channel.1.i114, 1
  %cmp.i118 = icmp slt i32 %inc.i117, 32
  br i1 %cmp.i118, label %for.inc.i119.for.body.i94_crit_edge, label %for.inc.i119.manage_channel.exit121_crit_edge

for.inc.i119.manage_channel.exit121_crit_edge:    ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_channel.exit121

for.inc.i119.for.body.i94_crit_edge:              ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i94

manage_channel.exit121:                           ; preds = %for.inc.i119.manage_channel.exit121_crit_edge, %sw.bb11.i104.manage_channel.exit121_crit_edge, %sw.bb.i102
  %retval.0.i120 = phi i32 [ %spec.select.i101, %sw.bb.i102 ], [ %channel.051.i89, %sw.bb11.i104.manage_channel.exit121_crit_edge ], [ %ret.1.i115, %for.inc.i119.manage_channel.exit121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i85) #6
  %add = add i32 %retval.0.i120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i120)
  %cmp10145 = icmp slt i32 %retval.0.i120, 0
  %spec.select = select i1 %cmp10145, i32 %retval.0.i120, i32 %add
  br label %if.end14

if.end14:                                         ; preds = %manage_channel.exit121, %if.end.if.end14_crit_edge
  %c.1 = phi i32 [ %c.0, %if.end.if.end14_crit_edge ], [ %spec.select, %manage_channel.exit121 ]
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %c.1, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %channels_mask)
  %cmp18.not = icmp ne i64 %channels_mask, 0
  %29 = and i1 %cmp18.not, %allocate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1)
  %cmp21 = icmp slt i32 %c.1, 0
  %or.cond83 = select i1 %29, i1 %cmp21, i1 false
  br i1 %or.cond83, label %if.end24.thread, label %if.end24

if.end24.thread:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bandwidth, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %31 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp25 = icmp eq i32 %.pr, 0
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %cond.i123 = select i1 %allocate, i32 4915, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i122) #6
  %32 = getelementptr inbounds [2 x i32], ptr %data.i122, i32 0, i32 1
  %33 = sub i32 0, %.pr
  %cond2.p.i = select i1 %allocate, i32 %33, i32 %.pr
  %cond2.i = add i32 %cond2.p.i, %cond.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %cond2.i)
  %34 = icmp ugt i32 %cond2.i, 4915
  br i1 %34, label %if.end28.manage_bandwidth.exit.thread_crit_edge, label %if.end.i125

if.end28.manage_bandwidth.exit.thread_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

if.end.i125:                                      ; preds = %if.end28
  %35 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.i123, ptr %data.i122, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond2.i, ptr %32, align 4
  %call.i124 = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275744, ptr noundef nonnull %data.i122, i32 noundef 8) #6
  %37 = zext i32 %call.i124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call.i124, label %if.end.i125.if.end.1.i_crit_edge [
    i32 19, label %if.end.i125.sw.bb.i127_crit_edge
    i32 0, label %sw.bb11.i128
  ]

if.end.i125.sw.bb.i127_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i127

if.end.i125.if.end.1.i_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

sw.bb.i127:                                       ; preds = %if.end.4.i.sw.bb.i127_crit_edge, %if.end.3.i.sw.bb.i127_crit_edge, %if.end.2.i.sw.bb.i127_crit_edge, %if.end.1.i.sw.bb.i127_crit_edge, %if.end.i125.sw.bb.i127_crit_edge
  br i1 %allocate, label %sw.bb.i127.manage_bandwidth.exit.thread_crit_edge, label %sw.bb.i127.manage_bandwidth.exit_crit_edge

sw.bb.i127.manage_bandwidth.exit_crit_edge:       ; preds = %sw.bb.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit

sw.bb.i127.manage_bandwidth.exit.thread_crit_edge: ; preds = %sw.bb.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

sw.bb11.i128:                                     ; preds = %if.end.i125
  %38 = ptrtoint ptr %data.i122 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %cond.i123)
  %cmp14.i = icmp eq i32 %39, %cond.i123
  br i1 %cmp14.i, label %sw.bb11.i128.manage_bandwidth.exit_crit_edge, label %for.inc.i129

sw.bb11.i128.manage_bandwidth.exit_crit_edge:     ; preds = %sw.bb11.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit

for.inc.i129:                                     ; preds = %sw.bb11.i128
  %.pre.i = add i32 %39, %cond2.p.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %.pre.i)
  %40 = icmp ugt i32 %.pre.i, 4915
  br i1 %40, label %for.inc.i129.manage_bandwidth.exit.thread_crit_edge, label %for.inc.i129.if.end.1.i_crit_edge

for.inc.i129.if.end.1.i_crit_edge:                ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

for.inc.i129.manage_bandwidth.exit.thread_crit_edge: ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

if.end.1.i:                                       ; preds = %for.inc.i129.if.end.1.i_crit_edge, %if.end.i125.if.end.1.i_crit_edge
  %old.141.i = phi i32 [ %39, %for.inc.i129.if.end.1.i_crit_edge ], [ %cond.i123, %if.end.i125.if.end.1.i_crit_edge ]
  %cond2.1.pre-phi40.i = phi i32 [ %.pre.i, %for.inc.i129.if.end.1.i_crit_edge ], [ %cond2.i, %if.end.i125.if.end.1.i_crit_edge ]
  %41 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %old.141.i, ptr %data.i122, align 4
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond2.1.pre-phi40.i, ptr %32, align 4
  %call.1.i = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275744, ptr noundef nonnull %data.i122, i32 noundef 8) #6
  %43 = zext i32 %call.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call.1.i, label %if.end.1.i.if.end.2.i_crit_edge [
    i32 19, label %if.end.1.i.sw.bb.i127_crit_edge
    i32 0, label %sw.bb11.1.i
  ]

if.end.1.i.sw.bb.i127_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i127

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2.i

sw.bb11.1.i:                                      ; preds = %if.end.1.i
  %44 = ptrtoint ptr %data.i122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %old.141.i)
  %cmp14.1.i = icmp eq i32 %45, %old.141.i
  br i1 %cmp14.1.i, label %sw.bb11.1.i.manage_bandwidth.exit_crit_edge, label %for.inc.1.i

sw.bb11.1.i.manage_bandwidth.exit_crit_edge:      ; preds = %sw.bb11.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit

for.inc.1.i:                                      ; preds = %sw.bb11.1.i
  %.pre35.i = add i32 %45, %cond2.p.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %.pre35.i)
  %46 = icmp ugt i32 %.pre35.i, 4915
  br i1 %46, label %for.inc.1.i.manage_bandwidth.exit.thread_crit_edge, label %for.inc.1.i.if.end.2.i_crit_edge

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2.i

for.inc.1.i.manage_bandwidth.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

if.end.2.i:                                       ; preds = %for.inc.1.i.if.end.2.i_crit_edge, %if.end.1.i.if.end.2.i_crit_edge
  %old.1.145.i = phi i32 [ %45, %for.inc.1.i.if.end.2.i_crit_edge ], [ %old.141.i, %if.end.1.i.if.end.2.i_crit_edge ]
  %cond2.2.pre-phi44.i = phi i32 [ %.pre35.i, %for.inc.1.i.if.end.2.i_crit_edge ], [ %cond2.1.pre-phi40.i, %if.end.1.i.if.end.2.i_crit_edge ]
  %47 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %old.1.145.i, ptr %data.i122, align 4
  %48 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond2.2.pre-phi44.i, ptr %32, align 4
  %call.2.i = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275744, ptr noundef nonnull %data.i122, i32 noundef 8) #6
  %49 = zext i32 %call.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call.2.i, label %if.end.2.i.if.end.3.i_crit_edge [
    i32 19, label %if.end.2.i.sw.bb.i127_crit_edge
    i32 0, label %sw.bb11.2.i
  ]

if.end.2.i.sw.bb.i127_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i127

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3.i

sw.bb11.2.i:                                      ; preds = %if.end.2.i
  %50 = ptrtoint ptr %data.i122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %old.1.145.i)
  %cmp14.2.i = icmp eq i32 %51, %old.1.145.i
  br i1 %cmp14.2.i, label %sw.bb11.2.i.manage_bandwidth.exit_crit_edge, label %for.inc.2.i

sw.bb11.2.i.manage_bandwidth.exit_crit_edge:      ; preds = %sw.bb11.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit

for.inc.2.i:                                      ; preds = %sw.bb11.2.i
  %.pre36.i = add i32 %51, %cond2.p.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %.pre36.i)
  %52 = icmp ugt i32 %.pre36.i, 4915
  br i1 %52, label %for.inc.2.i.manage_bandwidth.exit.thread_crit_edge, label %for.inc.2.i.if.end.3.i_crit_edge

for.inc.2.i.if.end.3.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3.i

for.inc.2.i.manage_bandwidth.exit.thread_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

if.end.3.i:                                       ; preds = %for.inc.2.i.if.end.3.i_crit_edge, %if.end.2.i.if.end.3.i_crit_edge
  %old.1.249.i = phi i32 [ %51, %for.inc.2.i.if.end.3.i_crit_edge ], [ %old.1.145.i, %if.end.2.i.if.end.3.i_crit_edge ]
  %cond2.3.pre-phi48.i = phi i32 [ %.pre36.i, %for.inc.2.i.if.end.3.i_crit_edge ], [ %cond2.2.pre-phi44.i, %if.end.2.i.if.end.3.i_crit_edge ]
  %53 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %old.1.249.i, ptr %data.i122, align 4
  %54 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond2.3.pre-phi48.i, ptr %32, align 4
  %call.3.i = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275744, ptr noundef nonnull %data.i122, i32 noundef 8) #6
  %55 = zext i32 %call.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call.3.i, label %if.end.3.i.if.end.4.i_crit_edge [
    i32 19, label %if.end.3.i.sw.bb.i127_crit_edge
    i32 0, label %sw.bb11.3.i
  ]

if.end.3.i.sw.bb.i127_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i127

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.4.i

sw.bb11.3.i:                                      ; preds = %if.end.3.i
  %56 = ptrtoint ptr %data.i122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %old.1.249.i)
  %cmp14.3.i = icmp eq i32 %57, %old.1.249.i
  br i1 %cmp14.3.i, label %sw.bb11.3.i.manage_bandwidth.exit_crit_edge, label %for.inc.3.i

sw.bb11.3.i.manage_bandwidth.exit_crit_edge:      ; preds = %sw.bb11.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit

for.inc.3.i:                                      ; preds = %sw.bb11.3.i
  %.pre37.i = add i32 %57, %cond2.p.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %.pre37.i)
  %58 = icmp ugt i32 %.pre37.i, 4915
  br i1 %58, label %for.inc.3.i.manage_bandwidth.exit.thread_crit_edge, label %for.inc.3.i.if.end.4.i_crit_edge

for.inc.3.i.if.end.4.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.4.i

for.inc.3.i.manage_bandwidth.exit.thread_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

if.end.4.i:                                       ; preds = %for.inc.3.i.if.end.4.i_crit_edge, %if.end.3.i.if.end.4.i_crit_edge
  %old.1.353.i = phi i32 [ %57, %for.inc.3.i.if.end.4.i_crit_edge ], [ %old.1.249.i, %if.end.3.i.if.end.4.i_crit_edge ]
  %cond2.4.pre-phi52.i = phi i32 [ %.pre37.i, %for.inc.3.i.if.end.4.i_crit_edge ], [ %cond2.3.pre-phi48.i, %if.end.3.i.if.end.4.i_crit_edge ]
  %59 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %old.1.353.i, ptr %data.i122, align 4
  %60 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond2.4.pre-phi52.i, ptr %32, align 4
  %call.4.i = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef 281474708275744, ptr noundef nonnull %data.i122, i32 noundef 8) #6
  %61 = zext i32 %call.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call.4.i, label %if.end.4.i.manage_bandwidth.exit.thread_crit_edge [
    i32 19, label %if.end.4.i.sw.bb.i127_crit_edge
    i32 0, label %sw.bb11.4.i
  ]

if.end.4.i.sw.bb.i127_crit_edge:                  ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i127

if.end.4.i.manage_bandwidth.exit.thread_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

sw.bb11.4.i:                                      ; preds = %if.end.4.i
  %62 = ptrtoint ptr %data.i122 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %old.1.353.i)
  %cmp14.4.i = icmp eq i32 %63, %old.1.353.i
  br i1 %cmp14.4.i, label %sw.bb11.4.i.manage_bandwidth.exit_crit_edge, label %sw.bb11.4.i.manage_bandwidth.exit.thread_crit_edge

sw.bb11.4.i.manage_bandwidth.exit.thread_crit_edge: ; preds = %sw.bb11.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit.thread

sw.bb11.4.i.manage_bandwidth.exit_crit_edge:      ; preds = %sw.bb11.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_bandwidth.exit

manage_bandwidth.exit.thread:                     ; preds = %sw.bb11.4.i.manage_bandwidth.exit.thread_crit_edge, %if.end.4.i.manage_bandwidth.exit.thread_crit_edge, %for.inc.3.i.manage_bandwidth.exit.thread_crit_edge, %for.inc.2.i.manage_bandwidth.exit.thread_crit_edge, %for.inc.1.i.manage_bandwidth.exit.thread_crit_edge, %for.inc.i129.manage_bandwidth.exit.thread_crit_edge, %sw.bb.i127.manage_bandwidth.exit.thread_crit_edge, %if.end28.manage_bandwidth.exit.thread_crit_edge
  %retval.0.i130.ph = phi i32 [ -16, %for.inc.3.i.manage_bandwidth.exit.thread_crit_edge ], [ -16, %for.inc.2.i.manage_bandwidth.exit.thread_crit_edge ], [ -16, %for.inc.1.i.manage_bandwidth.exit.thread_crit_edge ], [ -16, %for.inc.i129.manage_bandwidth.exit.thread_crit_edge ], [ -16, %if.end28.manage_bandwidth.exit.thread_crit_edge ], [ -5, %sw.bb11.4.i.manage_bandwidth.exit.thread_crit_edge ], [ -5, %if.end.4.i.manage_bandwidth.exit.thread_crit_edge ], [ -11, %sw.bb.i127.manage_bandwidth.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i122) #6
  br label %if.end34

manage_bandwidth.exit:                            ; preds = %sw.bb11.4.i.manage_bandwidth.exit_crit_edge, %sw.bb11.3.i.manage_bandwidth.exit_crit_edge, %sw.bb11.2.i.manage_bandwidth.exit_crit_edge, %sw.bb11.1.i.manage_bandwidth.exit_crit_edge, %sw.bb11.i128.manage_bandwidth.exit_crit_edge, %sw.bb.i127.manage_bandwidth.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i122) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp31 = icmp slt i32 %.pr, 0
  br i1 %cmp31, label %manage_bandwidth.exit.if.end34_crit_edge, label %manage_bandwidth.exit.cleanup_crit_edge

manage_bandwidth.exit.cleanup_crit_edge:          ; preds = %manage_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

manage_bandwidth.exit.if.end34_crit_edge:         ; preds = %manage_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %manage_bandwidth.exit.if.end34_crit_edge, %manage_bandwidth.exit.thread
  %retval.0.i130137 = phi i32 [ %retval.0.i130.ph, %manage_bandwidth.exit.thread ], [ %.pr, %manage_bandwidth.exit.if.end34_crit_edge ]
  %64 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %bandwidth, align 4
  br i1 %allocate, label %if.then40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %c.1)
  %cmp41 = icmp sgt i32 %c.1, -1
  br i1 %cmp41, label %if.then43, label %if.then40.if.end44_crit_edge

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %c.1)
  %cmp.i131 = icmp ult i32 %c.1, 32
  %sub.i = add nsw i32 %c.1, -32
  %cond3.i = select i1 %cmp.i131, i64 281474708275748, i64 281474708275752
  %channel.pn.i = select i1 %cmp.i131, i32 %c.1, i32 %sub.i
  %cond.i132 = shl nuw i32 1, %channel.pn.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i.i) #6
  %65 = getelementptr inbounds [2 x i32], ptr %data.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then43
  %retry.054.i.i = phi i32 [ 5, %if.then43 ], [ %retry.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %channel.051.i.i = phi i32 [ 0, %if.then43 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %old.050.i.i = phi i32 [ 0, %if.then43 ], [ %old.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %channel.051.i.i
  %and.i.i = and i32 %shl.i.i, %cond.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %shl2.i.i = lshr i32 -2147483648, %channel.051.i.i
  %66 = and i32 %shl2.i.i, %old.050.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp5.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %old.050.i.i, ptr %data.i.i, align 4
  %xor.i.i = xor i32 %shl2.i.i, %old.050.i.i
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %xor.i.i, ptr %65, align 4
  %call.i.i = call i32 @fw_run_transaction(ptr noundef %card, i32 noundef 18, i32 noundef %conv2, i32 noundef %generation, i32 noundef 0, i64 noundef %cond3.i, ptr noundef nonnull %data.i.i, i32 noundef 8) #6
  %69 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call.i.i, label %if.end7.i.i.sw.default.i.i_crit_edge [
    i32 19, label %if.end7.i.i.deallocate_channel.exit_crit_edge
    i32 0, label %sw.bb11.i.i
  ]

if.end7.i.i.deallocate_channel.exit_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %deallocate_channel.exit

if.end7.i.i.sw.default.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i.i

sw.bb11.i.i:                                      ; preds = %if.end7.i.i
  %70 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %old.050.i.i)
  %cmp13.i.i = icmp eq i32 %71, %old.050.i.i
  br i1 %cmp13.i.i, label %sw.bb11.i.i.deallocate_channel.exit_crit_edge, label %if.end15.i.i

sw.bb11.i.i.deallocate_channel.exit_crit_edge:    ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %deallocate_channel.exit

if.end15.i.i:                                     ; preds = %sw.bb11.i.i
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %65, align 4
  %74 = xor i32 %73, %71
  %75 = and i32 %74, %shl2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp21.i.i = icmp eq i32 %75, 0
  br i1 %cmp21.i.i, label %if.end15.i.i.for.inc.i.i_crit_edge, label %if.end15.i.i.sw.default.i.i_crit_edge

if.end15.i.i.sw.default.i.i_crit_edge:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i.i

if.end15.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

sw.default.i.i:                                   ; preds = %if.end15.i.i.sw.default.i.i_crit_edge, %if.end7.i.i.sw.default.i.i_crit_edge
  %old.1.i.i = phi i32 [ %old.050.i.i, %if.end7.i.i.sw.default.i.i_crit_edge ], [ %71, %if.end15.i.i.sw.default.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.054.i.i)
  %tobool24.not.i.i = icmp eq i32 %retry.054.i.i, 0
  br i1 %tobool24.not.i.i, label %sw.default.i.i.for.inc.i.i_crit_edge, label %if.then25.i.i

sw.default.i.i.for.inc.i.i_crit_edge:             ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then25.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i.i = add i32 %retry.054.i.i, -1
  %dec26.i.i = add i32 %channel.051.i.i, -1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then25.i.i, %sw.default.i.i.for.inc.i.i_crit_edge, %if.end15.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %old.2.i.i = phi i32 [ %old.050.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %old.1.i.i, %if.then25.i.i ], [ %71, %if.end15.i.i.for.inc.i.i_crit_edge ], [ %old.050.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %old.1.i.i, %sw.default.i.i.for.inc.i.i_crit_edge ]
  %channel.1.i.i = phi i32 [ %channel.051.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %dec26.i.i, %if.then25.i.i ], [ %channel.051.i.i, %if.end15.i.i.for.inc.i.i_crit_edge ], [ %channel.051.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %channel.051.i.i, %sw.default.i.i.for.inc.i.i_crit_edge ]
  %retry.1.i.i = phi i32 [ %retry.054.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %dec.i.i, %if.then25.i.i ], [ %retry.054.i.i, %if.end15.i.i.for.inc.i.i_crit_edge ], [ %retry.054.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ 0, %sw.default.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add i32 %channel.1.i.i, 1
  %cmp.i.i = icmp slt i32 %inc.i.i, 32
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.deallocate_channel.exit_crit_edge

for.inc.i.i.deallocate_channel.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %deallocate_channel.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

deallocate_channel.exit:                          ; preds = %for.inc.i.i.deallocate_channel.exit_crit_edge, %sw.bb11.i.i.deallocate_channel.exit_crit_edge, %if.end7.i.i.deallocate_channel.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i.i) #6
  br label %if.end44

if.end44:                                         ; preds = %deallocate_channel.exit, %if.then40.if.end44_crit_edge
  %76 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i130137, ptr %channel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end34.cleanup_crit_edge, %manage_bandwidth.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end24.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__ksymtab_fw_iso_buffer_init, !1, !"__ksymtab_fw_iso_buffer_init", i1 false, i1 false}
!1 = !{!"../drivers/firewire/core-iso.c", i32 92, i32 1}
!2 = !{ptr @__ksymtab_fw_iso_buffer_destroy, !3, !"__ksymtab_fw_iso_buffer_destroy", i1 false, i1 false}
!3 = !{!"../drivers/firewire/core-iso.c", i32 113, i32 1}
!4 = !{ptr @__ksymtab_fw_iso_context_create, !5, !"__ksymtab_fw_iso_context_create", i1 false, i1 false}
!5 = !{!"../drivers/firewire/core-iso.c", i32 153, i32 1}
!6 = !{ptr @__ksymtab_fw_iso_context_destroy, !7, !"__ksymtab_fw_iso_context_destroy", i1 false, i1 false}
!7 = !{!"../drivers/firewire/core-iso.c", i32 159, i32 1}
!8 = !{ptr @__ksymtab_fw_iso_context_start, !9, !"__ksymtab_fw_iso_context_start", i1 false, i1 false}
!9 = !{!"../drivers/firewire/core-iso.c", i32 166, i32 1}
!10 = !{ptr @__ksymtab_fw_iso_context_queue, !11, !"__ksymtab_fw_iso_context_queue", i1 false, i1 false}
!11 = !{!"../drivers/firewire/core-iso.c", i32 180, i32 1}
!12 = !{ptr @__ksymtab_fw_iso_context_queue_flush, !13, !"__ksymtab_fw_iso_context_queue_flush", i1 false, i1 false}
!13 = !{!"../drivers/firewire/core-iso.c", i32 186, i32 1}
!14 = !{ptr @__ksymtab_fw_iso_context_flush_completions, !15, !"__ksymtab_fw_iso_context_flush_completions", i1 false, i1 false}
!15 = !{!"../drivers/firewire/core-iso.c", i32 192, i32 1}
!16 = !{ptr @__ksymtab_fw_iso_context_stop, !17, !"__ksymtab_fw_iso_context_stop", i1 false, i1 false}
!17 = !{!"../drivers/firewire/core-iso.c", i32 198, i32 1}
!18 = !{ptr @__ksymtab_fw_iso_resource_manage, !19, !"__ksymtab_fw_iso_resource_manage", i1 false, i1 false}
!19 = !{!"../drivers/firewire/core-iso.c", i32 379, i32 1}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
