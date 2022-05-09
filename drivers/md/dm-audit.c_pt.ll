; ModuleID = '/llk/IR_all_yes/drivers/md/dm-audit.c_pt.bc'
source_filename = "../drivers/md/dm-audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_audit_log_ti\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_audit_log_ti\09\09\09\09"
module asm "\09.long\09__crc_dm_audit_log_ti\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_audit_log_ti:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_audit_log_ti\22\09\09\09\09\09"
module asm "__kstrtabns_dm_audit_log_ti:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_audit_log_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_audit_log_bio\09\09\09\09"
module asm "\09.long\09__crc_dm_audit_log_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_audit_log_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_audit_log_bio\22\09\09\09\09\09"
module asm "__kstrtabns_dm_audit_log_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" dev=%d:%d error_msg='%s'\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" dev=%d:%d sector=?\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" res=%d\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_dm_audit_log_ti = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_audit_log_ti = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_audit_log_ti = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_audit_log_ti to i32), ptr @__kstrtab_dm_audit_log_ti, ptr @__kstrtabns_dm_audit_log_ti }, section "___ksymtab_gpl+dm_audit_log_ti", align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c" dev=%d:%d sector=%llu res=%d\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_dm_audit_log_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_audit_log_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_audit_log_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_audit_log_bio to i32), ptr @__kstrtab_dm_audit_log_bio, ptr @__kstrtabns_dm_audit_log_bio }, section "___ksymtab_gpl+dm_audit_log_bio", align 4
@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"module=%s op=%s\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1338, i64 1339]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 50, i32 24 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 51, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 57, i32 24 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 64, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 80, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [25 x i8] c"../drivers/md/dm-audit.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 32, i32 23 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_dm_audit_log_bio, ptr @__ksymtab_dm_audit_log_ti, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_audit_log_ti(i32 noundef %audit_type, ptr noundef %dm_msg_prefix, ptr noundef %op, ptr nocapture noundef readonly %ti, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %call = tail call ptr @dm_table_get_md(ptr noundef %1) #2
  %call1 = tail call ptr @dm_disk(ptr noundef %call) #2
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 8
  %call2 = tail call ptr @dm_disk(ptr noundef %call) #2
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_minor, align 4
  %6 = zext i32 %audit_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %audit_type, label %entry.cleanup_crit_edge [
    i32 1338, label %sw.bb
    i32 1339, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %7 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1338) #2
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end, !prof !25

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.5, ptr noundef %dm_msg_prefix, ptr noundef %op) #2
  tail call void @audit_log_task_info(ptr noundef nonnull %call1.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %tobool7.not = icmp eq i32 %result, 0
  br i1 %tobool7.not, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %error, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ @.str.1, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5, ptr noundef %cond) #2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %10 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i39 = icmp eq i32 %10, 0
  br i1 %cmp.i39, label %sw.bb8.cleanup_crit_edge, label %if.end.i42

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i42:                                       ; preds = %sw.bb8
  %call1.i40 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1339) #2
  %tobool.not.i41 = icmp eq ptr %call1.i40, null
  br i1 %tobool.not.i41, label %if.end.i42.cleanup_crit_edge, label %if.end20, !prof !25

if.end.i42.cleanup_crit_edge:                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end20:                                         ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i40, ptr noundef nonnull @.str.5, ptr noundef %dm_msg_prefix, ptr noundef %op) #2
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i40, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %5) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %cond.end
  %ab.0 = phi ptr [ %call1.i40, %if.end20 ], [ %call1.i, %cond.end ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %ab.0, ptr noundef nonnull @.str.3, i32 noundef %result) #2
  tail call void @audit_log_end(ptr noundef nonnull %ab.0) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.i42.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_task_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_audit_log_bio(ptr noundef %dm_msg_prefix, ptr noundef %op, ptr nocapture noundef readonly %bio, i64 noundef %sector, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bd_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %4 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1339) #2
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end, !prof !25

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.5, ptr noundef %dm_msg_prefix, ptr noundef %op) #2
  %and = and i32 %3, 1048575
  %shr = lshr i32 %3, 20
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %and, i64 noundef %sector, i32 noundef %result) #2
  tail call void @audit_log_end(ptr noundef nonnull %call1.i) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-audit.c", i32 50, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-audit.c", i32 51, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-audit.c", i32 57, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-audit.c", i32 64, i32 23}
!8 = !{ptr @__ksymtab_dm_audit_log_ti, !9, !"__ksymtab_dm_audit_log_ti", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-audit.c", i32 67, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-audit.c", i32 80, i32 23}
!12 = !{ptr @__ksymtab_dm_audit_log_bio, !13, !"__ksymtab_dm_audit_log_bio", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-audit.c", i32 84, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-audit.c", i32 32, i32 23}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
