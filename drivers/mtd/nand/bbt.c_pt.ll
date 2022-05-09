; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/bbt.c_pt.bc'
source_filename = "../drivers/mtd/nand/bbt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nanddev_bbt_init\22, \22a\22\09"
module asm "\09.weak\09__crc_nanddev_bbt_init\09\09\09\09"
module asm "\09.long\09__crc_nanddev_bbt_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_init\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nanddev_bbt_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_nanddev_bbt_cleanup\09\09\09\09"
module asm "\09.long\09__crc_nanddev_bbt_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nanddev_bbt_update\22, \22a\22\09"
module asm "\09.weak\09__crc_nanddev_bbt_update\09\09\09\09"
module asm "\09.long\09__crc_nanddev_bbt_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_update:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_update\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nanddev_bbt_get_block_status\22, \22a\22\09"
module asm "\09.weak\09__crc_nanddev_bbt_get_block_status\09\09\09\09"
module asm "\09.long\09__crc_nanddev_bbt_get_block_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_get_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_get_block_status\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_get_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nanddev_bbt_set_block_status\22, \22a\22\09"
module asm "\09.weak\09__crc_nanddev_bbt_set_block_status\09\09\09\09"
module asm "\09.long\09__crc_nanddev_bbt_set_block_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nanddev_bbt_set_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22nanddev_bbt_set_block_status\22\09\09\09\09\09"
module asm "__kstrtabns_nanddev_bbt_set_block_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }

@__kstrtab_nanddev_bbt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_init to i32), ptr @__kstrtab_nanddev_bbt_init, ptr @__kstrtabns_nanddev_bbt_init }, section "___ksymtab_gpl+nanddev_bbt_init", align 4
@__kstrtab_nanddev_bbt_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_cleanup to i32), ptr @__kstrtab_nanddev_bbt_cleanup, ptr @__kstrtabns_nanddev_bbt_cleanup }, section "___ksymtab_gpl+nanddev_bbt_cleanup", align 4
@__kstrtab_nanddev_bbt_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_update = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_update to i32), ptr @__kstrtab_nanddev_bbt_update, ptr @__kstrtabns_nanddev_bbt_update }, section "___ksymtab_gpl+nanddev_bbt_update", align 4
@__kstrtab_nanddev_bbt_get_block_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_get_block_status = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_get_block_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_get_block_status to i32), ptr @__kstrtab_nanddev_bbt_get_block_status, ptr @__kstrtabns_nanddev_bbt_get_block_status }, section "___ksymtab_gpl+nanddev_bbt_get_block_status", align 4
@__kstrtab_nanddev_bbt_set_block_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_nanddev_bbt_set_block_status = external dso_local constant [0 x i8], align 1
@__ksymtab_nanddev_bbt_set_block_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nanddev_bbt_set_block_status to i32), ptr @__kstrtab_nanddev_bbt_set_block_status, ptr @__kstrtabns_nanddev_bbt_set_block_status }, section "___ksymtab_gpl+nanddev_bbt_set_block_status", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_nanddev_bbt_cleanup, ptr @__ksymtab_nanddev_bbt_get_block_status, ptr @__ksymtab_nanddev_bbt_init, ptr @__ksymtab_nanddev_bbt_set_block_status, ptr @__ksymtab_nanddev_bbt_update], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nanddev_bbt_init(ptr nocapture noundef %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ntargets.i, align 8
  %mul.i = mul i32 %1, 3
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %luns_per_target.i, align 4
  %mul3.i = mul i32 %mul.i, %3
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %mul = mul i32 %mul3.i, %5
  %sub = add i32 %mul, 31
  %6 = lshr i32 %sub, 3
  %7 = and i32 %6, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #9
  %bbt = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 4
  %8 = ptrtoint ptr %bbt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %bbt, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nanddev_bbt_cleanup(ptr nocapture noundef readonly %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 4
  %0 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bbt, align 8
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nanddev_bbt_update(ptr nocapture readnone %nand) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nanddev_bbt_get_block_status(ptr nocapture noundef readonly %nand, i32 noundef %entry1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 4
  %0 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bbt, align 8
  %mul = mul i32 %entry1, 3
  %div26 = lshr i32 %mul, 5
  %add.ptr = getelementptr i32, ptr %1, i32 %div26
  %rem = and i32 %mul, 31
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntargets.i, align 8
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %luns_per_target.i, align 4
  %mul.i = mul i32 %5, %3
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %mul3.i = mul i32 %mul.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %entry1)
  %cmp.not = icmp ugt i32 %mul3.i, %entry1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %9, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %rem)
  %cmp4 = icmp ugt i32 %rem, 29
  br i1 %cmp4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6 = getelementptr i32, ptr %add.ptr, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %sub = sub nuw nsw i32 32, %rem
  %shl = shl i32 %11, %sub
  %or = or i32 %shl, %shr
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %status.0 = phi i32 [ %or, %if.then5 ], [ %shr, %if.end.if.end7_crit_edge ]
  %and12 = and i32 %status.0, 7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and12, %if.end7 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nanddev_bbt_set_block_status(ptr nocapture noundef readonly %nand, i32 noundef %entry1, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bbt = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 4
  %0 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bbt, align 8
  %mul = mul i32 %entry1, 3
  %div56 = lshr i32 %mul, 5
  %add.ptr = getelementptr i32, ptr %1, i32 %div56
  %and4 = and i32 %status, 7
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntargets.i, align 8
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %luns_per_target.i, align 4
  %mul.i = mul i32 %5, %3
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %mul3.i = mul i32 %mul.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %entry1)
  %cmp.not = icmp ugt i32 %mul3.i, %entry1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %mul, 31
  %shl.neg = shl nsw i32 -1, %rem
  %sub10 = sub nsw i32 29, %rem
  %shr11 = lshr i32 -1, %sub10
  %and12 = and i32 %shr11, %shl.neg
  %neg = xor i32 %and12, -1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %and14 = and i32 %9, %neg
  %shl15 = shl i32 %and4, %rem
  %or = or i32 %and14, %shl15
  store i32 %or, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %rem)
  %cmp18 = icmp ugt i32 %rem, 29
  br i1 %cmp18, label %if.then19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub23 = sub nuw nsw i32 61, %rem
  %shr24 = lshr i32 -1, %sub23
  %neg27 = xor i32 %shr24, -1
  %arrayidx28 = getelementptr i32, ptr %add.ptr, i32 1
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx28, align 4
  %and29 = and i32 %11, %neg27
  %sub30 = sub nuw nsw i32 32, %rem
  %shr31 = lshr i32 %and4, %sub30
  %or33 = or i32 %and29, %shr31
  store i32 %or33, ptr %arrayidx28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_nanddev_bbt_init, !1, !"__ksymtab_nanddev_bbt_init", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/bbt.c", i32 37, i32 1}
!2 = !{ptr @__ksymtab_nanddev_bbt_cleanup, !3, !"__ksymtab_nanddev_bbt_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/bbt.c", i32 49, i32 1}
!4 = !{ptr @__ksymtab_nanddev_bbt_update, !5, !"__ksymtab_nanddev_bbt_update", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/bbt.c", i32 64, i32 1}
!6 = !{ptr @__ksymtab_nanddev_bbt_get_block_status, !7, !"__ksymtab_nanddev_bbt_get_block_status", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/bbt.c", i32 92, i32 1}
!8 = !{ptr @__ksymtab_nanddev_bbt_set_block_status, !9, !"__ksymtab_nanddev_bbt_set_block_status", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/bbt.c", i32 131, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
