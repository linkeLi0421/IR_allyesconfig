; ModuleID = '/llk/IR_all_yes/drivers/input/sparse-keymap.c_pt.bc'
source_filename = "../drivers/input/sparse-keymap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sparse_keymap_entry_from_scancode\22, \22a\22\09"
module asm "\09.weak\09__crc_sparse_keymap_entry_from_scancode\09\09\09\09"
module asm "\09.long\09__crc_sparse_keymap_entry_from_scancode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sparse_keymap_entry_from_scancode:\09\09\09\09\09"
module asm "\09.asciz \09\22sparse_keymap_entry_from_scancode\22\09\09\09\09\09"
module asm "__kstrtabns_sparse_keymap_entry_from_scancode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sparse_keymap_entry_from_keycode\22, \22a\22\09"
module asm "\09.weak\09__crc_sparse_keymap_entry_from_keycode\09\09\09\09"
module asm "\09.long\09__crc_sparse_keymap_entry_from_keycode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sparse_keymap_entry_from_keycode:\09\09\09\09\09"
module asm "\09.asciz \09\22sparse_keymap_entry_from_keycode\22\09\09\09\09\09"
module asm "__kstrtabns_sparse_keymap_entry_from_keycode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sparse_keymap_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_sparse_keymap_setup\09\09\09\09"
module asm "\09.long\09__crc_sparse_keymap_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sparse_keymap_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22sparse_keymap_setup\22\09\09\09\09\09"
module asm "__kstrtabns_sparse_keymap_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sparse_keymap_report_entry\22, \22a\22\09"
module asm "\09.weak\09__crc_sparse_keymap_report_entry\09\09\09\09"
module asm "\09.long\09__crc_sparse_keymap_report_entry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sparse_keymap_report_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22sparse_keymap_report_entry\22\09\09\09\09\09"
module asm "__kstrtabns_sparse_keymap_report_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sparse_keymap_report_event\22, \22a\22\09"
module asm "\09.weak\09__crc_sparse_keymap_report_event\09\09\09\09"
module asm "\09.long\09__crc_sparse_keymap_report_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sparse_keymap_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22sparse_keymap_report_event\22\09\09\09\09\09"
module asm "__kstrtabns_sparse_keymap_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.key_entry = type { i32, i32, %union.anon }
%union.anon = type { i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.anon = type { i8, i8 }

@__UNIQUE_ID_author223 = internal constant [52 x i8] c"sparse_keymap.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [61 x i8] c"sparse_keymap.description=Generic support for sparse keymaps\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [47 x i8] c"sparse_keymap.file=drivers/input/sparse-keymap\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [29 x i8] c"sparse_keymap.license=GPL v2\00", section ".modinfo", align 1
@__kstrtab_sparse_keymap_entry_from_scancode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sparse_keymap_entry_from_scancode = external dso_local constant [0 x i8], align 1
@__ksymtab_sparse_keymap_entry_from_scancode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sparse_keymap_entry_from_scancode to i32), ptr @__kstrtab_sparse_keymap_entry_from_scancode, ptr @__kstrtabns_sparse_keymap_entry_from_scancode }, section "___ksymtab+sparse_keymap_entry_from_scancode", align 4
@__kstrtab_sparse_keymap_entry_from_keycode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sparse_keymap_entry_from_keycode = external dso_local constant [0 x i8], align 1
@__ksymtab_sparse_keymap_entry_from_keycode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sparse_keymap_entry_from_keycode to i32), ptr @__kstrtab_sparse_keymap_entry_from_keycode, ptr @__kstrtabns_sparse_keymap_entry_from_keycode }, section "___ksymtab+sparse_keymap_entry_from_keycode", align 4
@__kstrtab_sparse_keymap_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_sparse_keymap_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_sparse_keymap_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sparse_keymap_setup to i32), ptr @__kstrtab_sparse_keymap_setup, ptr @__kstrtabns_sparse_keymap_setup }, section "___ksymtab+sparse_keymap_setup", align 4
@__kstrtab_sparse_keymap_report_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_sparse_keymap_report_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_sparse_keymap_report_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sparse_keymap_report_entry to i32), ptr @__kstrtab_sparse_keymap_report_entry, ptr @__kstrtabns_sparse_keymap_report_entry }, section "___ksymtab+sparse_keymap_report_entry", align 4
@__kstrtab_sparse_keymap_report_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_sparse_keymap_report_event = external dso_local constant [0 x i8], align 1
@__ksymtab_sparse_keymap_report_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sparse_keymap_report_event to i32), ptr @__kstrtab_sparse_keymap_report_event, ptr @__kstrtabns_sparse_keymap_report_event }, section "___ksymtab+sparse_keymap_report_event", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__ksymtab_sparse_keymap_entry_from_keycode, ptr @__ksymtab_sparse_keymap_entry_from_scancode, ptr @__ksymtab_sparse_keymap_report_entry, ptr @__ksymtab_sparse_keymap_report_event, ptr @__ksymtab_sparse_keymap_setup], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sparse_keymap_entry_from_scancode(ptr nocapture noundef readonly %dev, i32 noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %keycode = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keycode, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not6 = icmp eq i32 %3, 0
  br i1 %cmp.not6, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %key.07 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %code1 = getelementptr inbounds %struct.key_entry, ptr %key.07, i32 0, i32 1
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %code)
  %cmp2 = icmp eq i32 %5, %code
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.key_entry, ptr %key.07, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %key.07, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sparse_keymap_entry_from_keycode(ptr nocapture noundef readonly %dev, i32 noundef %keycode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %keycode1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %keycode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keycode1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %key.0 = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.inc ]
  %2 = ptrtoint ptr %key.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key.0, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.cond.for.inc_crit_edge [
    i32 0, label %for.cond.cleanup_crit_edge
    i32 1, label %land.lhs.true
  ]

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond
  %5 = getelementptr inbounds %struct.key_entry, ptr %key.0, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %keycode)
  %cmp4 = icmp eq i32 %conv, %keycode
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.key_entry, ptr %key.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %key.0, %land.lhs.true.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparse_keymap_setup(ptr noundef %dev, ptr noundef %keymap, ptr noundef readonly %setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %keymap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not77 = icmp eq i32 %1, 0
  br i1 %cmp.not77, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %e.079 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %keymap, %entry.for.body_crit_edge ]
  %map_size.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %inc = add i32 %map_size.078, 1
  %incdec.ptr = getelementptr %struct.key_entry, ptr %e.079, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %map_size.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %mul = mul i32 %map_size.0.lcssa, 12
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev2, ptr noundef %keymap, i32 noundef %mul, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.cond3.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %map_size.0.lcssa)
  %cmp480.not = icmp eq i32 %map_size.0.lcssa, 0
  br i1 %cmp480.not, label %for.cond3.preheader.for.end22_crit_edge, label %for.body5.lr.ph

for.cond3.preheader.for.end22_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end22

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %tobool6.not = icmp eq ptr %setup, null
  %evbit16 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %swbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 13
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  br label %for.body5

for.body5:                                        ; preds = %for.inc20.for.body5_crit_edge, %for.body5.lr.ph
  %i.081 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc21, %for.inc20.for.body5_crit_edge ]
  %arrayidx = getelementptr %struct.key_entry, ptr %call, i32 %i.081
  br i1 %tobool6.not, label %for.body5.if.end12_crit_edge, label %if.then7

for.body5.if.end12_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then7:                                         ; preds = %for.body5
  %call8 = tail call i32 %setup(ptr noundef %dev, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %for.body5.if.end12_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %if.end12.for.inc20_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end12.sw.bb15_crit_edge
    i32 3, label %if.end12.sw.bb15_crit_edge85
  ]

if.end12.sw.bb15_crit_edge85:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.end12.sw.bb15_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.end12.for.inc20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc20

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %evbit16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %evbit16, align 4
  %or.i = or i32 %8, 2
  store i32 %or.i, ptr %evbit16, align 4
  %9 = getelementptr %struct.key_entry, ptr %call, i32 %i.081, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %conv = zext i16 %11 to i32
  br label %for.inc20.sink.split

sw.bb15:                                          ; preds = %if.end12.sw.bb15_crit_edge, %if.end12.sw.bb15_crit_edge85
  %12 = ptrtoint ptr %evbit16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %evbit16, align 4
  %or.i67 = or i32 %13, 32
  store i32 %or.i67, ptr %evbit16, align 4
  %14 = getelementptr %struct.key_entry, ptr %call, i32 %i.081, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv18 = zext i8 %16 to i32
  br label %for.inc20.sink.split

for.inc20.sink.split:                             ; preds = %sw.bb15, %sw.bb
  %conv18.sink84 = phi i32 [ %conv18, %sw.bb15 ], [ %conv, %sw.bb ]
  %swbit.sink = phi ptr [ %swbit, %sw.bb15 ], [ %keybit, %sw.bb ]
  %rem.i68 = and i32 %conv18.sink84, 31
  %shl.i69 = shl nuw i32 1, %rem.i68
  %div2.i70 = lshr i32 %conv18.sink84, 5
  %add.ptr.i71 = getelementptr i32, ptr %swbit.sink, i32 %div2.i70
  %17 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i71, align 4
  %or.i66 = or i32 %shl.i69, %18
  store i32 %or.i66, ptr %add.ptr.i71, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.inc20.sink.split, %if.end12.for.inc20_crit_edge
  %inc21 = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc21, %map_size.0.lcssa
  br i1 %exitcond.not, label %for.inc20.for.end22_crit_edge, label %for.inc20.for.body5_crit_edge

for.inc20.for.body5_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body5

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end22

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %for.cond3.preheader.for.end22_crit_edge
  %evbit23 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %19 = ptrtoint ptr %evbit23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %evbit23, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %for.end22.if.end33_crit_edge, label %if.then27

for.end22.if.end33_crit_edge:                     ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then27:                                        ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i73 = getelementptr %struct.input_dev, ptr %dev, i32 0, i32 6, i32 7
  %22 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i73, align 4
  %or.i74 = or i32 %23, 65536
  store i32 %or.i74, ptr %add.ptr.i73, align 4
  %or.i75 = or i32 %20, 16
  %24 = ptrtoint ptr %evbit23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i75, ptr %evbit23, align 4
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 9
  %25 = ptrtoint ptr %mscbit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mscbit, align 4
  %or.i76 = or i32 %26, 16
  store i32 %or.i76, ptr %mscbit, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %for.end22.if.end33_crit_edge
  %keycode = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 17
  %27 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %keycode, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 15
  %28 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %map_size.0.lcssa, ptr %keycodemax, align 4
  %getkeycode = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %getkeycode to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sparse_keymap_getkeycode, ptr %getkeycode, align 4
  %setkeycode = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 18
  %30 = ptrtoint ptr %setkeycode to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sparse_keymap_setkeycode, ptr %setkeycode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then7.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -12, %for.end.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparse_keymap_getkeycode(ptr nocapture noundef readonly %dev, ptr noundef %ke) #2 align 64 {
entry:
  %scancode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %keycode = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keycode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode.i) #4
  %2 = ptrtoint ptr %scancode.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %scancode.i, align 4, !annotation !26
  %3 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ke, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %index.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index.i, align 2
  %conv1.i = zext i16 %7 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %if.then.i
  %key.0.i.i = phi ptr [ %1, %if.then.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %key_cnt.0.i.i = phi i32 [ 0, %if.then.i ], [ %key_cnt.1.i.i, %for.inc.i.i ]
  %8 = ptrtoint ptr %key.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key.0.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %9, label %for.cond.i.i.for.inc.i.i_crit_edge [
    i32 0, label %for.cond.i.i.sparse_keymap_locate.exit.thread_crit_edge
    i32 1, label %if.then.i.i
  ]

for.cond.i.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  %inc.i.i = add i32 %key_cnt.0.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %key_cnt.0.i.i, i32 %conv1.i)
  %cmp3.i.i = icmp eq i32 %key_cnt.0.i.i, %conv1.i
  br i1 %cmp3.i.i, label %if.then.i.i.sparse_keymap_locate.exit_crit_edge, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i.sparse_keymap_locate.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit

for.inc.i.i:                                      ; preds = %if.then.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %key_cnt.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i.for.inc.i.i_crit_edge ], [ %key_cnt.0.i.i, %for.cond.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.key_entry, ptr %key.0.i.i, i32 1
  br label %for.cond.i.i

if.else.i:                                        ; preds = %if.then
  %call2.i = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.else.i.sparse_keymap_locate.exit.thread_crit_edge

if.else.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

if.then4.i:                                       ; preds = %if.else.i
  %11 = ptrtoint ptr %scancode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scancode.i, align 4
  %13 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %keycode, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not6.i.i = icmp eq i32 %16, 0
  br i1 %cmp.not6.i.i, label %if.then4.i.sparse_keymap_locate.exit.thread_crit_edge, label %if.then4.i.for.body.i.i_crit_edge

if.then4.i.for.body.i.i_crit_edge:                ; preds = %if.then4.i
  br label %for.body.i.i

if.then4.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i13.i.for.body.i.i_crit_edge, %if.then4.i.for.body.i.i_crit_edge
  %key.07.i.i = phi ptr [ %incdec.ptr.i12.i, %for.inc.i13.i.for.body.i.i_crit_edge ], [ %14, %if.then4.i.for.body.i.i_crit_edge ]
  %code1.i.i = getelementptr inbounds %struct.key_entry, ptr %key.07.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %code1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp2.i.i = icmp eq i32 %18, %12
  br i1 %cmp2.i.i, label %for.body.i.i.sparse_keymap_locate.exit_crit_edge, label %for.inc.i13.i

for.body.i.i.sparse_keymap_locate.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit

for.inc.i13.i:                                    ; preds = %for.body.i.i
  %incdec.ptr.i12.i = getelementptr %struct.key_entry, ptr %key.07.i.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.i12.i, align 4
  %cmp.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i.i, label %for.inc.i13.i.sparse_keymap_locate.exit.thread_crit_edge, label %for.inc.i13.i.for.body.i.i_crit_edge

for.inc.i13.i.for.body.i.i_crit_edge:             ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i13.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

sparse_keymap_locate.exit.thread:                 ; preds = %for.inc.i13.i.sparse_keymap_locate.exit.thread_crit_edge, %if.then4.i.sparse_keymap_locate.exit.thread_crit_edge, %if.else.i.sparse_keymap_locate.exit.thread_crit_edge, %for.cond.i.i.sparse_keymap_locate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #4
  br label %cleanup

sparse_keymap_locate.exit:                        ; preds = %for.body.i.i.sparse_keymap_locate.exit_crit_edge, %if.then.i.i.sparse_keymap_locate.exit_crit_edge
  %key.0.i = phi ptr [ %key.07.i.i, %for.body.i.i.sparse_keymap_locate.exit_crit_edge ], [ %key.0.i.i, %if.then.i.i.sparse_keymap_locate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #4
  %tobool1.not = icmp eq ptr %key.0.i, null
  br i1 %tobool1.not, label %sparse_keymap_locate.exit.cleanup_crit_edge, label %land.lhs.true

sparse_keymap_locate.exit.cleanup_crit_edge:      ; preds = %sparse_keymap_locate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %sparse_keymap_locate.exit
  %21 = ptrtoint ptr %key.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  %23 = getelementptr inbounds %struct.key_entry, ptr %key.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  %conv = zext i16 %25 to i32
  %keycode3 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %26 = ptrtoint ptr %keycode3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %keycode3, align 4
  %27 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ke, align 4
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not = icmp eq i8 %29, 0
  br i1 %tobool5.not, label %if.then6, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then6:                                         ; preds = %if.then2
  %30 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %keycode, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.then6
  %key.0.i22 = phi ptr [ %31, %if.then6 ], [ %incdec.ptr.i, %for.inc.i ]
  %idx.0.i = phi i32 [ 0, %if.then6 ], [ %idx.1.i, %for.inc.i ]
  %32 = ptrtoint ptr %key.0.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key.0.i22, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %33, label %for.cond.i.for.inc.i_crit_edge [
    i32 0, label %for.cond.i.sparse_keymap_get_key_index.exit_crit_edge
    i32 1, label %if.then.i23
  ]

for.cond.i.sparse_keymap_get_key_index.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_get_key_index.exit

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i23:                                      ; preds = %for.cond.i
  %cmp3.i = icmp eq ptr %key.0.i22, %key.0.i
  br i1 %cmp3.i, label %if.then.i23.sparse_keymap_get_key_index.exit_crit_edge, label %if.end.i

if.then.i23.sparse_keymap_get_key_index.exit_crit_edge: ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_get_key_index.exit

if.end.i:                                         ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #6
  %inc.i = add i32 %idx.0.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.cond.i.for.inc.i_crit_edge
  %idx.1.i = phi i32 [ %inc.i, %if.end.i ], [ %idx.0.i, %for.cond.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.key_entry, ptr %key.0.i22, i32 1
  br label %for.cond.i

sparse_keymap_get_key_index.exit:                 ; preds = %if.then.i23.sparse_keymap_get_key_index.exit_crit_edge, %for.cond.i.sparse_keymap_get_key_index.exit_crit_edge
  %conv8 = trunc i32 %idx.0.i to i16
  %index = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %35 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv8, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %sparse_keymap_get_key_index.exit, %if.then2.if.end_crit_edge
  %len = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 1
  %36 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %len, align 1
  %scancode = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 4
  %code = getelementptr inbounds %struct.key_entry, ptr %key.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code, align 4
  %39 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %scancode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %sparse_keymap_locate.exit.cleanup_crit_edge, %sparse_keymap_locate.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %sparse_keymap_locate.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sparse_keymap_locate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparse_keymap_setkeycode(ptr noundef %dev, ptr noundef %ke, ptr nocapture noundef %old_keycode) #2 align 64 {
entry:
  %scancode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %keycode = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keycode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode.i) #4
  %2 = ptrtoint ptr %scancode.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %scancode.i, align 4, !annotation !26
  %3 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ke, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %index.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index.i, align 2
  %conv1.i = zext i16 %7 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %if.then.i
  %key.0.i.i = phi ptr [ %1, %if.then.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %key_cnt.0.i.i = phi i32 [ 0, %if.then.i ], [ %key_cnt.1.i.i, %for.inc.i.i ]
  %8 = ptrtoint ptr %key.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key.0.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %9, label %for.cond.i.i.for.inc.i.i_crit_edge [
    i32 0, label %for.cond.i.i.sparse_keymap_locate.exit.thread_crit_edge
    i32 1, label %if.then.i.i
  ]

for.cond.i.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  %inc.i.i = add i32 %key_cnt.0.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %key_cnt.0.i.i, i32 %conv1.i)
  %cmp3.i.i = icmp eq i32 %key_cnt.0.i.i, %conv1.i
  br i1 %cmp3.i.i, label %if.then.i.i.sparse_keymap_locate.exit_crit_edge, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i.sparse_keymap_locate.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit

for.inc.i.i:                                      ; preds = %if.then.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %key_cnt.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i.for.inc.i.i_crit_edge ], [ %key_cnt.0.i.i, %for.cond.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.key_entry, ptr %key.0.i.i, i32 1
  br label %for.cond.i.i

if.else.i:                                        ; preds = %if.then
  %call2.i = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.else.i.sparse_keymap_locate.exit.thread_crit_edge

if.else.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

if.then4.i:                                       ; preds = %if.else.i
  %11 = ptrtoint ptr %scancode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scancode.i, align 4
  %13 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %keycode, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not6.i.i = icmp eq i32 %16, 0
  br i1 %cmp.not6.i.i, label %if.then4.i.sparse_keymap_locate.exit.thread_crit_edge, label %if.then4.i.for.body.i.i_crit_edge

if.then4.i.for.body.i.i_crit_edge:                ; preds = %if.then4.i
  br label %for.body.i.i

if.then4.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i13.i.for.body.i.i_crit_edge, %if.then4.i.for.body.i.i_crit_edge
  %key.07.i.i = phi ptr [ %incdec.ptr.i12.i, %for.inc.i13.i.for.body.i.i_crit_edge ], [ %14, %if.then4.i.for.body.i.i_crit_edge ]
  %code1.i.i = getelementptr inbounds %struct.key_entry, ptr %key.07.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %code1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp2.i.i = icmp eq i32 %18, %12
  br i1 %cmp2.i.i, label %for.body.i.i.sparse_keymap_locate.exit_crit_edge, label %for.inc.i13.i

for.body.i.i.sparse_keymap_locate.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit

for.inc.i13.i:                                    ; preds = %for.body.i.i
  %incdec.ptr.i12.i = getelementptr %struct.key_entry, ptr %key.07.i.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.i12.i, align 4
  %cmp.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i.i, label %for.inc.i13.i.sparse_keymap_locate.exit.thread_crit_edge, label %for.inc.i13.i.for.body.i.i_crit_edge

for.inc.i13.i.for.body.i.i_crit_edge:             ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i13.i.sparse_keymap_locate.exit.thread_crit_edge: ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_locate.exit.thread

sparse_keymap_locate.exit.thread:                 ; preds = %for.inc.i13.i.sparse_keymap_locate.exit.thread_crit_edge, %if.then4.i.sparse_keymap_locate.exit.thread_crit_edge, %if.else.i.sparse_keymap_locate.exit.thread_crit_edge, %for.cond.i.i.sparse_keymap_locate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #4
  br label %cleanup

sparse_keymap_locate.exit:                        ; preds = %for.body.i.i.sparse_keymap_locate.exit_crit_edge, %if.then.i.i.sparse_keymap_locate.exit_crit_edge
  %key.0.i = phi ptr [ %key.07.i.i, %for.body.i.i.sparse_keymap_locate.exit_crit_edge ], [ %key.0.i.i, %if.then.i.i.sparse_keymap_locate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #4
  %tobool1.not = icmp eq ptr %key.0.i, null
  br i1 %tobool1.not, label %sparse_keymap_locate.exit.cleanup_crit_edge, label %land.lhs.true

sparse_keymap_locate.exit.cleanup_crit_edge:      ; preds = %sparse_keymap_locate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %sparse_keymap_locate.exit
  %21 = ptrtoint ptr %key.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  %23 = getelementptr inbounds %struct.key_entry, ptr %key.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  %conv = zext i16 %25 to i32
  %26 = ptrtoint ptr %old_keycode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %old_keycode, align 4
  %keycode3 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %27 = ptrtoint ptr %keycode3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keycode3, align 4
  %conv4 = trunc i32 %28 to i16
  store i16 %conv4, ptr %23, align 4
  %29 = load i32, ptr %keycode3, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  call void @_set_bit(i32 noundef %29, ptr noundef %keybit) #4
  %30 = ptrtoint ptr %old_keycode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old_keycode, align 4
  %32 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %keycode, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.then2
  %key.0.i24 = phi ptr [ %33, %if.then2 ], [ %incdec.ptr.i, %for.inc.i ]
  %34 = ptrtoint ptr %key.0.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key.0.i24, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %35, label %for.cond.i.for.inc.i_crit_edge [
    i32 0, label %for.cond.i.if.then8_crit_edge
    i32 1, label %land.lhs.true.i
  ]

for.cond.i.if.then8_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %37 = getelementptr inbounds %struct.key_entry, ptr %key.0.i24, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 4
  %conv.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp4.i = icmp eq i32 %31, %conv.i
  br i1 %cmp4.i, label %sparse_keymap_entry_from_keycode.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.key_entry, ptr %key.0.i24, i32 1
  br label %for.cond.i

sparse_keymap_entry_from_keycode.exit:            ; preds = %land.lhs.true.i
  %tobool7.not = icmp eq ptr %key.0.i24, null
  br i1 %tobool7.not, label %sparse_keymap_entry_from_keycode.exit.if.then8_crit_edge, label %sparse_keymap_entry_from_keycode.exit.cleanup_crit_edge

sparse_keymap_entry_from_keycode.exit.cleanup_crit_edge: ; preds = %sparse_keymap_entry_from_keycode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sparse_keymap_entry_from_keycode.exit.if.then8_crit_edge: ; preds = %sparse_keymap_entry_from_keycode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %sparse_keymap_entry_from_keycode.exit.if.then8_crit_edge, %for.cond.i.if.then8_crit_edge
  call void @_clear_bit(i32 noundef %31, ptr noundef %keybit) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %sparse_keymap_entry_from_keycode.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sparse_keymap_locate.exit.cleanup_crit_edge, %sparse_keymap_locate.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %sparse_keymap_entry_from_keycode.exit.cleanup_crit_edge ], [ -22, %sparse_keymap_locate.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sparse_keymap_locate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparse_keymap_report_entry(ptr noundef %dev, ptr nocapture noundef readonly %ke, i32 noundef %value, i1 noundef zeroext %autorelease) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ke to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ke, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %entry.sw.bb7_crit_edge
  ]

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %code = getelementptr inbounds %struct.key_entry, ptr %ke, i32 0, i32 1
  %3 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code, align 4
  tail call void @input_event(ptr noundef %dev, i32 noundef 4, i32 noundef 4, i32 noundef %4) #4
  %5 = getelementptr inbounds %struct.key_entry, ptr %ke, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef %conv, i32 noundef %lnot.ext.i) #4
  tail call void @input_event(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %8 = and i1 %tobool.i, %autorelease
  br i1 %8, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %5, align 4
  %conv3 = zext i16 %10 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef %conv3, i32 noundef 0) #4
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = getelementptr inbounds %struct.key_entry, ptr %ke, i32 0, i32 2
  %value5 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %value5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value5, align 1
  %conv6 = zext i8 %13 to i32
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb4, %entry.sw.bb7_crit_edge
  %value.addr.0 = phi i32 [ %value, %entry.sw.bb7_crit_edge ], [ %conv6, %sw.bb4 ]
  %14 = getelementptr inbounds %struct.key_entry, ptr %ke, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv9 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %tobool.i23 = icmp ne i32 %value.addr.0, 0
  %lnot.ext.i24 = zext i1 %tobool.i23 to i32
  tail call void @input_event(ptr noundef %dev, i32 noundef 5, i32 noundef %conv9, i32 noundef %lnot.ext.i24) #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %if.then
  tail call void @input_event(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sparse_keymap_report_event(ptr noundef %dev, i32 noundef %code, i32 noundef %value, i1 noundef zeroext %autorelease) #2 align 64 {
entry:
  %unknown_ke = alloca %struct.key_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %keycode.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keycode.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not6.i = icmp eq i32 %3, 0
  br i1 %cmp.not6.i, label %entry.sparse_keymap_entry_from_scancode.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sparse_keymap_entry_from_scancode.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_entry_from_scancode.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %key.07.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %code1.i = getelementptr inbounds %struct.key_entry, ptr %key.07.i, i32 0, i32 1
  %4 = ptrtoint ptr %code1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %code)
  %cmp2.i = icmp eq i32 %5, %code
  br i1 %cmp2.i, label %sparse_keymap_entry_from_scancode.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.key_entry, ptr %key.07.i, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %for.inc.i.sparse_keymap_entry_from_scancode.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.sparse_keymap_entry_from_scancode.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sparse_keymap_entry_from_scancode.exit.thread

sparse_keymap_entry_from_scancode.exit.thread:    ; preds = %for.inc.i.sparse_keymap_entry_from_scancode.exit.thread_crit_edge, %entry.sparse_keymap_entry_from_scancode.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %unknown_ke) #4
  %8 = getelementptr inbounds i8, ptr %unknown_ke, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  br label %if.end

sparse_keymap_entry_from_scancode.exit:           ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %unknown_ke) #4
  %10 = getelementptr inbounds i8, ptr %unknown_ke, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %tobool.not = icmp eq ptr %key.07.i, null
  br i1 %tobool.not, label %sparse_keymap_entry_from_scancode.exit.if.end_crit_edge, label %if.then

sparse_keymap_entry_from_scancode.exit.if.end_crit_edge: ; preds = %sparse_keymap_entry_from_scancode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sparse_keymap_entry_from_scancode.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sparse_keymap_report_entry(ptr noundef %dev, ptr noundef nonnull %key.07.i, i32 noundef %value, i1 noundef zeroext %autorelease)
  br label %cleanup

if.end:                                           ; preds = %sparse_keymap_entry_from_scancode.exit.if.end_crit_edge, %sparse_keymap_entry_from_scancode.exit.thread
  %12 = ptrtoint ptr %unknown_ke to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %unknown_ke, align 4
  %code2 = getelementptr inbounds %struct.key_entry, ptr %unknown_ke, i32 0, i32 1
  %13 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %code, ptr %code2, align 4
  %14 = getelementptr inbounds %struct.key_entry, ptr %unknown_ke, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 240, ptr %14, align 4
  call void @sparse_keymap_report_entry(ptr noundef %dev, ptr noundef nonnull %unknown_ke, i32 noundef %value, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %tobool.not11 = phi i1 [ false, %if.end ], [ true, %if.then ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %unknown_ke) #4
  ret i1 %tobool.not11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/sparse-keymap.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/sparse-keymap.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/sparse-keymap.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__ksymtab_sparse_keymap_entry_from_scancode, !8, !"__ksymtab_sparse_keymap_entry_from_scancode", i1 false, i1 false}
!8 = !{!"../drivers/input/sparse-keymap.c", i32 72, i32 1}
!9 = !{ptr @__ksymtab_sparse_keymap_entry_from_keycode, !10, !"__ksymtab_sparse_keymap_entry_from_keycode", i1 false, i1 false}
!10 = !{!"../drivers/input/sparse-keymap.c", i32 93, i32 1}
!11 = !{ptr @__ksymtab_sparse_keymap_setup, !12, !"__ksymtab_sparse_keymap_setup", i1 false, i1 false}
!12 = !{!"../drivers/input/sparse-keymap.c", i32 220, i32 1}
!13 = !{ptr @__ksymtab_sparse_keymap_report_entry, !14, !"__ksymtab_sparse_keymap_report_entry", i1 false, i1 false}
!14 = !{!"../drivers/input/sparse-keymap.c", i32 258, i32 1}
!15 = !{ptr @__ksymtab_sparse_keymap_report_event, !16, !"__ksymtab_sparse_keymap_report_event", i1 false, i1 false}
!16 = !{!"../drivers/input/sparse-keymap.c", i32 293, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
