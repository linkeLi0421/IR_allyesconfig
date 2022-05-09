; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mdio-boardinfo.c_pt.bc'
source_filename = "../drivers/net/phy/mdio-boardinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mdiobus_setup_mdiodev_from_board_info\22, \22a\22\09"
module asm "\09.weak\09__crc_mdiobus_setup_mdiodev_from_board_info\09\09\09\09"
module asm "\09.long\09__crc_mdiobus_setup_mdiodev_from_board_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobus_setup_mdiodev_from_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobus_setup_mdiodev_from_board_info\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobus_setup_mdiodev_from_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mdiobus_register_board_info\22, \22a\22\09"
module asm "\09.weak\09__crc_mdiobus_register_board_info\09\09\09\09"
module asm "\09.long\09__crc_mdiobus_register_board_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobus_register_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobus_register_board_info\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobus_register_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mdio_board_entry = type { %struct.list_head, %struct.mdio_board_info }
%struct.mdio_board_info = type { ptr, [32 x i8], i32, ptr }

@mdio_board_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mdio_board_lock, i64 52), ptr getelementptr (i8, ptr @mdio_board_lock, i64 52) }, ptr @mdio_board_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mdio_board_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mdio_board_list, ptr @mdio_board_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_mdiobus_setup_mdiodev_from_board_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobus_setup_mdiodev_from_board_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobus_setup_mdiodev_from_board_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobus_setup_mdiodev_from_board_info to i32), ptr @__kstrtab_mdiobus_setup_mdiodev_from_board_info, ptr @__kstrtabns_mdiobus_setup_mdiodev_from_board_info }, section "___ksymtab+mdiobus_setup_mdiodev_from_board_info", align 4
@__kstrtab_mdiobus_register_board_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobus_register_board_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobus_register_board_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobus_register_board_info to i32), ptr @__kstrtab_mdiobus_register_board_info, ptr @__kstrtabns_mdiobus_register_board_info }, section "___ksymtab+mdiobus_register_board_info", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mdio_board_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mdio_board_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"mdio_board_lock\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"mdio_board_list\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 14, i32 8 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [36 x i8] c"../drivers/net/phy/mdio-boardinfo.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 15, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_mdiobus_register_board_info, ptr @__ksymtab_mdiobus_setup_mdiodev_from_board_info, ptr @mdio_board_lock, ptr @mdio_board_list, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_board_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_board_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdiobus_setup_mdiodev_from_board_info(ptr noundef %bus, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mdio_board_lock, i32 noundef 0) #5
  %0 = load ptr, ptr @mdio_board_list, align 4
  %cmp.not21 = icmp eq ptr %0, @mdio_board_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %id = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %be.022 = phi ptr [ %0, %for.body.lr.ph ], [ %tmp.023, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %be.022 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.023 = load ptr, ptr %be.022, align 4
  %board_info = getelementptr inbounds %struct.mdio_board_entry, ptr %be.022, i32 0, i32 1
  %2 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_info, align 4
  %call = tail call i32 @strcmp(ptr noundef %id, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @mdio_board_lock) #5
  %call6 = tail call i32 %cb(ptr noundef %bus, ptr noundef %board_info) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @mdio_board_lock, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.023, @mdio_board_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mdio_board_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdiobus_register_board_info(ptr nocapture noundef readonly %info, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 52) #5
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp12.not = icmp eq i32 %n, 0
  br i1 %cmp12.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %be.014 = phi ptr [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ], [ %call8.i.i, %for.cond.preheader.for.body_crit_edge ]
  %info.addr.013 = phi ptr [ %incdec.ptr1, %list_add_tail.exit.for.body_crit_edge ], [ %info, %for.cond.preheader.for.body_crit_edge ]
  %board_info = getelementptr inbounds %struct.mdio_board_entry, ptr %be.014, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %board_info, ptr %info.addr.013, i32 44)
  tail call void @mutex_lock_nested(ptr noundef nonnull @mdio_board_lock, i32 noundef 0) #5
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mdio_board_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %be.014, ptr noundef %4, ptr noundef nonnull @mdio_board_list) #5
  br i1 %call.i.i, label %if.end.i.i9, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i9:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %be.014, ptr getelementptr inbounds (%struct.list_head, ptr @mdio_board_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %be.014 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mdio_board_list, ptr %be.014, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %be.014, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %be.014, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i9, %for.body.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mdio_board_lock) #5
  %inc = add nuw i32 %i.016, 1
  %incdec.ptr = getelementptr %struct.mdio_board_entry, ptr %be.014, i32 1
  %incdec.ptr1 = getelementptr %struct.mdio_board_info, ptr %info.addr.013, i32 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_mdiobus_setup_mdiodev_from_board_info, !1, !"__ksymtab_mdiobus_setup_mdiodev_from_board_info", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mdio-boardinfo.c", i32 50, i32 1}
!2 = !{ptr @__ksymtab_mdiobus_register_board_info, !3, !"__ksymtab_mdiobus_register_board_info", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/mdio-boardinfo.c", i32 80, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/mdio-boardinfo.c", i32 15, i32 8}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mdio_board_lock, !5, !"mdio_board_lock", i1 false, i1 false}
!8 = !{ptr @mdio_board_list, !9, !"mdio_board_list", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/mdio-boardinfo.c", i32 14, i32 8}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
