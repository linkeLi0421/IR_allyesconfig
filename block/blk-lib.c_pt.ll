; ModuleID = '/llk/IR_all_yes/block/blk-lib.c_pt.bc'
source_filename = "../block/blk-lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_next_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_next_bio\09\09\09\09"
module asm "\09.long\09__crc_blk_next_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_next_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_next_bio\22\09\09\09\09\09"
module asm "__kstrtabns_blk_next_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__blkdev_issue_discard\22, \22a\22\09"
module asm "\09.weak\09__crc___blkdev_issue_discard\09\09\09\09"
module asm "\09.long\09__crc___blkdev_issue_discard\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22__blkdev_issue_discard\22\09\09\09\09\09"
module asm "__kstrtabns___blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blkdev_issue_discard\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_issue_discard\09\09\09\09"
module asm "\09.long\09__crc_blkdev_issue_discard\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_discard\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blkdev_issue_write_same\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_issue_write_same\09\09\09\09"
module asm "\09.long\09__crc_blkdev_issue_write_same\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_write_same:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_write_same\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_write_same:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__blkdev_issue_zeroout\22, \22a\22\09"
module asm "\09.weak\09__crc___blkdev_issue_zeroout\09\09\09\09"
module asm "\09.long\09__crc___blkdev_issue_zeroout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22__blkdev_issue_zeroout\22\09\09\09\09\09"
module asm "__kstrtabns___blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blkdev_issue_zeroout\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_issue_zeroout\09\09\09\09"
module asm "\09.long\09__crc_blkdev_issue_zeroout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_zeroout\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.82, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.82 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }

@__kstrtab_blk_next_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_next_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_next_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_next_bio to i32), ptr @__kstrtab_blk_next_bio, ptr @__kstrtabns_blk_next_bio }, section "___ksymtab_gpl+blk_next_bio", align 4
@__blkdev_issue_discard.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block/blk-lib.c\00", [16 x i8] zeroinitializer }, align 32
@__blkdev_issue_discard._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__blkdev_issue_discard = private unnamed_addr constant [23 x i8] c"__blkdev_issue_discard\00", align 1
@__blkdev_issue_discard._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @__func__.__blkdev_issue_discard, ptr @.str, i32 56, ptr null, ptr null }, align 1
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error: discard_granularity is 0.\0A\00", [56 x i8] zeroinitializer }, align 32
@__blkdev_issue_discard._entry_ptr = internal global ptr @__blkdev_issue_discard._entry, section ".printk_index", align 4
@__blkdev_issue_discard.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns___blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__ksymtab___blkdev_issue_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blkdev_issue_discard to i32), ptr @__kstrtab___blkdev_issue_discard, ptr @__kstrtabns___blkdev_issue_discard }, section "___ksymtab+__blkdev_issue_discard", align 4
@__kstrtab_blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_discard to i32), ptr @__kstrtab_blkdev_issue_discard, ptr @__kstrtabns_blkdev_issue_discard }, section "___ksymtab+blkdev_issue_discard", align 4
@__kstrtab_blkdev_issue_write_same = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_write_same = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_write_same = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_write_same to i32), ptr @__kstrtab_blkdev_issue_write_same, ptr @__kstrtabns_blkdev_issue_write_same }, section "___ksymtab+blkdev_issue_write_same", align 4
@__kstrtab___blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__kstrtabns___blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__ksymtab___blkdev_issue_zeroout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blkdev_issue_zeroout to i32), ptr @__kstrtab___blkdev_issue_zeroout, ptr @__kstrtabns___blkdev_issue_zeroout }, section "___ksymtab+__blkdev_issue_zeroout", align 4
@__kstrtab_blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_zeroout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_zeroout to i32), ptr @__kstrtab_blkdev_issue_zeroout, ptr @__kstrtabns_blkdev_issue_zeroout }, section "___ksymtab+blkdev_issue_zeroout", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 52, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [19 x i8] c"../block/blk-lib.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 56, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__blkdev_issue_discard._entry, ptr @__blkdev_issue_discard._entry_ptr, ptr @__ksymtab___blkdev_issue_discard, ptr @__ksymtab___blkdev_issue_zeroout, ptr @__ksymtab_blk_next_bio, ptr @__ksymtab_blkdev_issue_discard, ptr @__ksymtab_blkdev_issue_write_same, ptr @__ksymtab_blkdev_issue_zeroout, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blk_next_bio(ptr noundef %bio, i32 noundef %nr_pages, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %nr_pages to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef %gfp, i16 noundef zeroext %conv, ptr noundef nonnull @fs_bio_set) #5
  %tobool.not = icmp eq ptr %bio, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bio_chain(ptr noundef nonnull %bio, ptr noundef %call.i) #5
  tail call void @submit_bio(ptr noundef nonnull %bio) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blkdev_issue_discard(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags, ptr nocapture noundef %biop) #0 align 64 {
entry:
  %dev_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %2 = ptrtoint ptr %biop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %biop, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 4
  %4 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bd_read_only.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bd_read_only.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %if.end4, label %bdev_read_only.exit.cleanup_crit_edge

bdev_read_only.exit.cleanup_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %bdev_read_only.exit
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %queue_flags11 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %queue_flags11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %queue_flags11, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %18 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then6.if.end16_crit_edge
  %op.0 = phi i32 [ 5, %if.then6.if.end16_crit_edge ], [ 3, %if.else.if.end16_crit_edge ]
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 18
  %19 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %discard_granularity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %land.rhs, label %bdev_logical_block_size.exit

land.rhs:                                         ; preds = %if.end16
  %.b216 = load i1, ptr @__blkdev_issue_discard.__already_done, align 1
  br i1 %.b216, label %land.rhs.if.then57_crit_edge, label %if.then26, !prof !34

land.rhs.if.then57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__blkdev_issue_discard.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #5
  br label %if.then57

if.then57:                                        ; preds = %if.then26, %land.rhs.if.then57_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dev_name) #5
  %21 = call ptr @memset(ptr %dev_name, i32 255, i32 32)
  %call58 = call ptr @bdevname(ptr noundef %bdev, ptr noundef nonnull %dev_name) #5
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @__blkdev_issue_discard._rs, ptr noundef nonnull @__func__.__blkdev_issue_discard) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then57.if.end68_crit_edge, label %do.end64

if.then57.if.end68_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %dev_name) #8
  br label %if.end68

if.end68:                                         ; preds = %do.end64, %if.then57.if.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dev_name) #5
  br label %cleanup

bdev_logical_block_size.exit:                     ; preds = %if.end16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 9
  %22 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i.i = icmp eq i32 %23, 0
  %.op = lshr i32 %23, 9
  %.op.op = add nsw i32 %.op, -1
  %sub = select i1 %tobool2.not.i.i, i32 0, i32 %.op.op
  %conv = zext i32 %sub to i64
  %or = or i64 %nr_sects, %sector
  %and71 = and i64 %or, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and71)
  %tobool72.not = icmp ne i64 %and71, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_sects)
  %tobool75.not = icmp eq i64 %nr_sects, 0
  %or.cond = or i1 %tobool75.not, %tobool72.not
  br i1 %or.cond, label %bdev_logical_block_size.exit.cleanup_crit_edge, label %if.end77

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end77:                                         ; preds = %bdev_logical_block_size.exit
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 15
  %24 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.i.not = icmp eq i8 %25, 0
  br i1 %tobool.i.not, label %if.end77.while.body.preheader_crit_edge, label %if.then79

if.end77.while.body.preheader_crit_edge:          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %bdev to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bdev, align 8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then79, %if.end77.while.body.preheader_crit_edge
  %part_offset.0 = phi i64 [ %27, %if.then79 ], [ 0, %if.end77.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %bio_set_dev.exit.while.body_crit_edge, %while.body.preheader
  %sector.addr.0229 = phi i64 [ %add167, %bio_set_dev.exit.while.body_crit_edge ], [ %sector, %while.body.preheader ]
  %nr_sects.addr.0227 = phi i64 [ %sub168, %bio_set_dev.exit.while.body_crit_edge ], [ %nr_sects, %while.body.preheader ]
  %bio.0226 = phi ptr [ %call.i.i, %bio_set_dev.exit.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %add = add i64 %sector.addr.0229, %part_offset.0
  %sub82 = add i64 %add, -1
  %28 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %discard_granularity, align 4
  %shr85 = lshr i32 %29, 9
  %sub86 = add nsw i32 %shr85, -1
  %conv87 = zext i32 %sub86 to i64
  %or88 = or i64 %sub82, %conv87
  %add89 = add i64 %or88, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add89, i64 %add)
  %cmp = icmp eq i64 %add89, %add
  br i1 %cmp, label %if.then91, label %if.else97

if.then91:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = sub i32 0, %29
  %shr.i221 = lshr i32 %neg.i, 9
  %conv93 = zext i32 %shr.i221 to i64
  br label %if.end106

if.else97:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub98 = sub i64 %add89, %add
  br label %if.end106

if.end106:                                        ; preds = %if.else97, %if.then91
  %sub98.sink = phi i64 [ %sub98, %if.else97 ], [ %conv93, %if.then91 ]
  %30 = tail call i64 @llvm.umin.i64(i64 %nr_sects.addr.0227, i64 %sub98.sink)
  %shl = shl i64 %30, 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shl)
  %cmp108 = icmp ugt i64 %shl, 4294967295
  br i1 %cmp108, label %land.rhs117, label %if.end106.if.end155_crit_edge

if.end106.if.end155_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

land.rhs117:                                      ; preds = %if.end106
  %.b214215 = load i1, ptr @__blkdev_issue_discard.__already_done.3, align 1
  br i1 %.b214215, label %land.rhs117.if.end155_crit_edge, label %if.then128, !prof !34

land.rhs117.if.end155_crit_edge:                  ; preds = %land.rhs117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

if.then128:                                       ; preds = %land.rhs117
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__blkdev_issue_discard.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #5
  br label %if.end155

if.end155:                                        ; preds = %if.then128, %land.rhs117.if.end155_crit_edge, %if.end106.if.end155_crit_edge
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef zeroext 0, ptr noundef nonnull @fs_bio_set) #5
  %tobool.not.i222 = icmp eq ptr %bio.0226, null
  br i1 %tobool.not.i222, label %if.end155.blk_next_bio.exit_crit_edge, label %if.then.i

if.end155.blk_next_bio.exit_crit_edge:            ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_next_bio.exit

if.then.i:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bio_chain(ptr noundef nonnull %bio.0226, ptr noundef %call.i.i) #5
  tail call void @submit_bio(ptr noundef nonnull %bio.0226) #5
  br label %blk_next_bio.exit

blk_next_bio.exit:                                ; preds = %if.then.i, %if.end155.blk_next_bio.exit_crit_edge
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sector.addr.0229, ptr %bi_iter, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %33, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %35, %bdev
  br i1 %cmp.not.i, label %blk_next_bio.exit.bio_set_dev.exit_crit_edge, label %if.then.i223

blk_next_bio.exit.bio_set_dev.exit_crit_edge:     ; preds = %blk_next_bio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit

if.then.i223:                                     ; preds = %blk_next_bio.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i = and i16 %33, -2177
  %36 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i223, %blk_next_bio.exit.bio_set_dev.exit_crit_edge
  %37 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #5
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %op.0, ptr %bi_opf.i, align 8
  %conv165 = trunc i64 %shl to i32
  %bi_size = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv165, ptr %bi_size, align 8
  %add167 = add i64 %30, %sector.addr.0229
  %sub168 = sub i64 %nr_sects.addr.0227, %30
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %tobool81.not = icmp eq i64 %sub168, 0
  br i1 %tobool81.not, label %while.end, label %bio_set_dev.exit.while.body_crit_edge

bio_set_dev.exit.while.body_crit_edge:            ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %biop, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %bdev_logical_block_size.exit.cleanup_crit_edge, %if.end68, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %bdev_read_only.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.end68 ], [ 0, %while.end ], [ -6, %entry.cleanup_crit_edge ], [ -1, %bdev_read_only.exit.cleanup_crit_edge ], [ -95, %if.then6.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_discard(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags) #0 align 64 {
entry:
  %bio = alloca ptr, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio) #5
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bio, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #5
  %1 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #5
  %call = call i32 @__blkdev_issue_discard(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags, ptr noundef nonnull %bio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call i32 @submit_bio_wait(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call2)
  %cmp = icmp eq i32 %call2, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call2
  call void @bio_put(ptr noundef nonnull %3) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ %spec.store.select, %if.then ], [ 0, %land.lhs.true.if.end4_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_write_same(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %page) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #5
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #5
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %1 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 4
  %3 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bd_read_only.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.rhs.i.i:                                      ; preds = %if.end.i
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %5 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i, label %bdev_read_only.exit.i, label %lor.rhs.i.i.if.end_crit_edge

lor.rhs.i.i.if.end_crit_edge:                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

bdev_read_only.exit.i:                            ; preds = %lor.rhs.i.i
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 12
  %11 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i, label %bdev_logical_block_size.exit.i, label %bdev_read_only.exit.i.if.end_crit_edge

bdev_read_only.exit.i.if.end_crit_edge:           ; preds = %bdev_read_only.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

bdev_logical_block_size.exit.i:                   ; preds = %bdev_read_only.exit.i
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 37, i32 9
  %14 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i.i = icmp eq i32 %15, 0
  %.op.i = lshr i32 %15, 9
  %.op.op.i = add nsw i32 %.op.i, -1
  %sub.i = select i1 %tobool2.not.i.i.i, i32 0, i32 %.op.op.i
  %conv.i = zext i32 %sub.i to i64
  %or.i = or i64 %nr_sects, %sector
  %and.i = and i64 %or.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool6.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool6.not.i, label %bdev_write_same.exit.i, label %bdev_logical_block_size.exit.i.if.end_crit_edge

bdev_logical_block_size.exit.i.if.end_crit_edge:  ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

bdev_write_same.exit.i:                           ; preds = %bdev_logical_block_size.exit.i
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 37, i32 15
  %16 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_write_same_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not.i = icmp eq i32 %17, 0
  br i1 %tobool10.not.i, label %bdev_write_same.exit.i.if.end_crit_edge, label %bio_allowed_max_sectors.exit.i

bdev_write_same.exit.i.if.end_crit_edge:          ; preds = %bdev_write_same.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

bio_allowed_max_sectors.exit.i:                   ; preds = %bdev_write_same.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_sects)
  %tobool14.not82.i = icmp eq i64 %nr_sects, 0
  br i1 %tobool14.not82.i, label %bio_allowed_max_sectors.exit.i.if.end_crit_edge, label %while.body.lr.ph.i

bio_allowed_max_sectors.exit.i.if.end_crit_edge:  ; preds = %bio_allowed_max_sectors.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.lr.ph.i:                               ; preds = %bio_allowed_max_sectors.exit.i
  %spec.select.i.i67.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %15
  %neg.i.i = sub i32 0, %spec.select.i.i67.i
  %shr.i.i = lshr i32 %neg.i.i, 9
  %conv19.i = zext i32 %shr.i.i to i64
  %shl.i = and i32 %neg.i.i, -512
  br label %while.body.i

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %bio.085.i = phi ptr [ null, %while.body.lr.ph.i ], [ %call.i.i.i, %if.end30.i.while.body.i_crit_edge ]
  %sector.addr.084.i = phi i64 [ %sector, %while.body.lr.ph.i ], [ %sector.addr.1.i, %if.end30.i.while.body.i_crit_edge ]
  %nr_sects.addr.083.i = phi i64 [ %nr_sects, %while.body.lr.ph.i ], [ %nr_sects.addr.1.i, %if.end30.i.while.body.i_crit_edge ]
  %call.i.i.i = call ptr @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #5
  %tobool.not.i70.i = icmp eq ptr %bio.085.i, null
  br i1 %tobool.not.i70.i, label %while.body.i.blk_next_bio.exit.i_crit_edge, label %if.then.i71.i

while.body.i.blk_next_bio.exit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_next_bio.exit.i

if.then.i71.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @bio_chain(ptr noundef nonnull %bio.085.i, ptr noundef %call.i.i.i) #5
  call void @submit_bio(ptr noundef nonnull %bio.085.i) #5
  br label %blk_next_bio.exit.i

blk_next_bio.exit.i:                              ; preds = %if.then.i71.i, %while.body.i.blk_next_bio.exit.i_crit_edge
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sector.addr.084.i, ptr %bi_iter.i, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %20, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %22, %bdev
  br i1 %cmp.not.i.i, label %blk_next_bio.exit.i.bio_set_dev.exit.i_crit_edge, label %if.then.i72.i

blk_next_bio.exit.i.bio_set_dev.exit.i_crit_edge: ; preds = %blk_next_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit.i

if.then.i72.i:                                    ; preds = %blk_next_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i.i = and i16 %20, -2177
  %23 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i72.i, %blk_next_bio.exit.i.bio_set_dev.exit.i_crit_edge
  %24 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bdev, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i.i.i) #5
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 17
  %25 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %bi_vcnt.i, align 8
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 20
  %26 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bi_io_vec.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %page, ptr %27, align 4
  %29 = load ptr, ptr %bi_io_vec.i, align 8
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bv_offset.i, align 4
  %31 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i74.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i74.i, label %bio_set_dev.exit.i.bdev_logical_block_size.exit80.i_crit_edge, label %land.lhs.true.i.i78.i

bio_set_dev.exit.i.bdev_logical_block_size.exit80.i_crit_edge: ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_logical_block_size.exit80.i

land.lhs.true.i.i78.i:                            ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i75.i = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 37, i32 9
  %33 = ptrtoint ptr %logical_block_size.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logical_block_size.i.i75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool2.not.i.i76.i = icmp eq i32 %34, 0
  %spec.select.i.i77.i = select i1 %tobool2.not.i.i76.i, i32 512, i32 %34
  br label %bdev_logical_block_size.exit80.i

bdev_logical_block_size.exit80.i:                 ; preds = %land.lhs.true.i.i78.i, %bio_set_dev.exit.i.bdev_logical_block_size.exit80.i_crit_edge
  %retval1.0.i.i79.i = phi i32 [ 512, %bio_set_dev.exit.i.bdev_logical_block_size.exit80.i_crit_edge ], [ %spec.select.i.i77.i, %land.lhs.true.i.i78.i ]
  %35 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bi_io_vec.i, align 8
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval1.0.i.i79.i, ptr %bv_len.i, align 4
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %bi_opf.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_sects.addr.083.i, i64 %conv19.i)
  %cmp.i = icmp ugt i64 %nr_sects.addr.083.i, %conv19.i
  br i1 %cmp.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %bdev_logical_block_size.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub24.i = sub i64 %nr_sects.addr.083.i, %conv19.i
  %add.i = add i64 %sector.addr.084.i, %conv19.i
  br label %if.end30.i

if.else.i:                                        ; preds = %bdev_logical_block_size.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr_sects.addr.0.tr.i = trunc i64 %nr_sects.addr.083.i to i32
  %conv27.i = shl i32 %nr_sects.addr.0.tr.i, 9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then21.i
  %conv27.sink.i = phi i32 [ %shl.i, %if.then21.i ], [ %conv27.i, %if.else.i ]
  %nr_sects.addr.1.i = phi i64 [ %sub24.i, %if.then21.i ], [ 0, %if.else.i ]
  %sector.addr.1.i = phi i64 [ %add.i, %if.then21.i ], [ %sector.addr.084.i, %if.else.i ]
  %39 = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv27.sink.i, ptr %39, align 8
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 0) #5
  %call.i.i = call i32 @__cond_resched() #5
  %tobool14.not.i = icmp eq i64 %nr_sects.addr.1.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

land.lhs.true:                                    ; preds = %if.end30.i
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call i32 @submit_bio_wait(ptr noundef nonnull %call.i.i.i) #5
  call void @bio_put(ptr noundef nonnull %call.i.i.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %bio_allowed_max_sectors.exit.i.if.end_crit_edge, %bdev_write_same.exit.i.if.end_crit_edge, %bdev_logical_block_size.exit.i.if.end_crit_edge, %bdev_read_only.exit.i.if.end_crit_edge, %lor.rhs.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %bio_allowed_max_sectors.exit.i.if.end_crit_edge ], [ -1, %lor.rhs.i.i.if.end_crit_edge ], [ -1, %if.end.i.if.end_crit_edge ], [ -95, %bdev_write_same.exit.i.if.end_crit_edge ], [ -22, %bdev_logical_block_size.exit.i.if.end_crit_edge ], [ -1, %bdev_read_only.exit.i.if.end_crit_edge ], [ -6, %entry.if.end_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blkdev_issue_zeroout(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr nocapture noundef %biop, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 9
  %2 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i.i = icmp eq i32 %3, 0
  %.op = lshr i32 %3, 9
  %.op.op = add nsw i32 %.op, -1
  %phi.bo19 = select i1 %tobool2.not.i.i, i32 0, i32 %.op.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 0, %entry.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo19, %land.lhs.true.i.i ]
  %conv = zext i32 %retval1.0.i.i to i64
  %or = or i64 %nr_sects, %sector
  %and = and i64 %or, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %bdev_logical_block_size.exit.cleanup_crit_edge

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %bdev_logical_block_size.exit
  %call1 = tail call fastcc i32 @__blkdev_issue_write_zeroes(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %biop, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call1)
  %cmp.not = icmp eq i32 %call1, -95
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool4.not, %cmp.not
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call fastcc i32 @__blkdev_issue_zero_pages(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef %biop)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %bdev_logical_block_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_issue_write_zeroes(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr nocapture noundef %biop, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %biop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %biop, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 4
  %4 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bd_read_only.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bd_read_only.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %bdev_write_zeroes_sectors.exit, label %bdev_read_only.exit.cleanup_crit_edge

bdev_read_only.exit.cleanup_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bdev_write_zeroes_sectors.exit:                   ; preds = %bdev_read_only.exit
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 16
  %15 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %bdev_write_zeroes_sectors.exit.cleanup_crit_edge, label %while.cond.preheader

bdev_write_zeroes_sectors.exit.cleanup_crit_edge: ; preds = %bdev_write_zeroes_sectors.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %bdev_write_zeroes_sectors.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_sects)
  %tobool8.not54 = icmp eq i64 %nr_sects, 0
  br i1 %tobool8.not54, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool10.not, i32 9, i32 8388617
  %conv15 = zext i32 %16 to i64
  br label %while.body

while.body:                                       ; preds = %bio_set_dev.exit.while.body_crit_edge, %while.body.lr.ph
  %sector.addr.057 = phi i64 [ %sector, %while.body.lr.ph ], [ %sector.addr.1, %bio_set_dev.exit.while.body_crit_edge ]
  %bio.056 = phi ptr [ %1, %while.body.lr.ph ], [ %call.i.i, %bio_set_dev.exit.while.body_crit_edge ]
  %nr_sects.addr.055 = phi i64 [ %nr_sects, %while.body.lr.ph ], [ %25, %bio_set_dev.exit.while.body_crit_edge ]
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef zeroext 0, ptr noundef nonnull @fs_bio_set) #5
  %tobool.not.i50 = icmp eq ptr %bio.056, null
  br i1 %tobool.not.i50, label %while.body.blk_next_bio.exit_crit_edge, label %if.then.i51

while.body.blk_next_bio.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_next_bio.exit

if.then.i51:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bio_chain(ptr noundef nonnull %bio.056, ptr noundef %call.i.i) #5
  tail call void @submit_bio(ptr noundef nonnull %bio.056) #5
  br label %blk_next_bio.exit

blk_next_bio.exit:                                ; preds = %if.then.i51, %while.body.blk_next_bio.exit_crit_edge
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sector.addr.057, ptr %bi_iter, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %19, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %21, %bdev
  br i1 %cmp.not.i, label %blk_next_bio.exit.bio_set_dev.exit_crit_edge, label %if.then.i52

blk_next_bio.exit.bio_set_dev.exit_crit_edge:     ; preds = %blk_next_bio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit

if.then.i52:                                      ; preds = %blk_next_bio.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i = and i16 %19, -2177
  %22 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i52, %blk_next_bio.exit.bio_set_dev.exit_crit_edge
  %23 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #5
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %bi_opf, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_sects.addr.055, i64 %conv15)
  %cmp16 = icmp ugt i64 %nr_sects.addr.055, %conv15
  %nr_sects.addr.0.tr = trunc i64 %nr_sects.addr.055 to i32
  %conv23.sink.in = select i1 %cmp16, i32 %16, i32 %nr_sects.addr.0.tr
  %25 = call i64 @llvm.usub.sat.i64(i64 %nr_sects.addr.055, i64 %conv15)
  %add = select i1 %cmp16, i64 %conv15, i64 0
  %sector.addr.1 = add i64 %sector.addr.057, %add
  %conv23.sink = shl i32 %conv23.sink.in, 9
  %26 = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv23.sink, ptr %26, align 8
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 283, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %tobool8.not.not = icmp ugt i64 %nr_sects.addr.055, %conv15
  br i1 %tobool8.not.not, label %bio_set_dev.exit.while.body_crit_edge, label %bio_set_dev.exit.while.end_crit_edge

bio_set_dev.exit.while.end_crit_edge:             ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

bio_set_dev.exit.while.body_crit_edge:            ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %bio_set_dev.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bio.0.lcssa = phi ptr [ %1, %while.cond.preheader.while.end_crit_edge ], [ %call.i.i, %bio_set_dev.exit.while.end_crit_edge ]
  %28 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bio.0.lcssa, ptr %biop, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %bdev_write_zeroes_sectors.exit.cleanup_crit_edge, %bdev_read_only.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -6, %entry.cleanup_crit_edge ], [ -1, %bdev_read_only.exit.cleanup_crit_edge ], [ -95, %bdev_write_zeroes_sectors.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_issue_zero_pages(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr nocapture noundef %biop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %biop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %biop, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 4
  %4 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bd_read_only.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bd_read_only.i.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %bdev_read_only.exit.cleanup_crit_edge

bdev_read_only.exit.cleanup_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_sects)
  %cmp.not47 = icmp eq i64 %nr_sects, 0
  br i1 %cmp.not47, label %while.cond.preheader.while.end21_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end21_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end21

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %sector.addr.050 = phi i64 [ %sector.addr.2, %while.end.while.body_crit_edge ], [ %sector, %while.cond.preheader.while.body_crit_edge ]
  %bio.049 = phi ptr [ %call.i.i, %while.end.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %nr_sects.addr.048 = phi i64 [ %nr_sects.addr.2, %while.end.while.body_crit_edge ], [ %nr_sects, %while.cond.preheader.while.body_crit_edge ]
  %sub.i = add i64 %nr_sects.addr.048, 7
  %shr.i = lshr i64 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %sub.i)
  %cmp184.i = icmp ult i64 %sub.i, 2048
  %15 = trunc i64 %shr.i to i16
  %conv.i = select i1 %cmp184.i, i16 %15, i16 256
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #5
  %tobool.not.i43 = icmp eq ptr %bio.049, null
  br i1 %tobool.not.i43, label %while.body.blk_next_bio.exit_crit_edge, label %if.then.i

while.body.blk_next_bio.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_next_bio.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bio_chain(ptr noundef nonnull %bio.049, ptr noundef %call.i.i) #5
  tail call void @submit_bio(ptr noundef nonnull %bio.049) #5
  br label %blk_next_bio.exit

blk_next_bio.exit:                                ; preds = %if.then.i, %while.body.blk_next_bio.exit_crit_edge
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sector.addr.050, ptr %bi_iter, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %18, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %20, %bdev
  br i1 %cmp.not.i, label %blk_next_bio.exit.bio_set_dev.exit_crit_edge, label %if.then.i44

blk_next_bio.exit.bio_set_dev.exit_crit_edge:     ; preds = %blk_next_bio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit

if.then.i44:                                      ; preds = %blk_next_bio.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i = and i16 %18, -2177
  %21 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i44, %blk_next_bio.exit.bio_set_dev.exit_crit_edge
  %22 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #5
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %bi_opf.i, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9.while.cond7_crit_edge, %bio_set_dev.exit
  %nr_sects.addr.1 = phi i64 [ %nr_sects.addr.048, %bio_set_dev.exit ], [ %sub, %while.body9.while.cond7_crit_edge ]
  %sector.addr.1 = phi i64 [ %sector.addr.050, %bio_set_dev.exit ], [ %add, %while.body9.while.cond7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_sects.addr.1)
  %cmp8.not = icmp eq i64 %nr_sects.addr.1, 0
  br i1 %cmp8.not, label %while.cond7.while.end_crit_edge, label %while.body9

while.cond7.while.end_crit_edge:                  ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body9:                                      ; preds = %while.cond7
  %shl = shl i64 %nr_sects.addr.1, 9
  %24 = tail call i64 @llvm.umin.i64(i64 %shl, i64 4096)
  %25 = trunc i64 %24 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %26 = load ptr, ptr @empty_zero_page, align 4
  %call11 = tail call i32 @bio_add_page(ptr noundef %call.i.i, ptr noundef %26, i32 noundef %25, i32 noundef 0) #5
  %shr = ashr i32 %call11, 9
  %conv12 = sext i32 %shr to i64
  %sub = sub i64 %nr_sects.addr.1, %conv12
  %add = add i64 %sector.addr.1, %conv12
  %cmp15 = icmp ult i32 %call11, %25
  br i1 %cmp15, label %while.body9.while.end_crit_edge, label %while.body9.while.cond7_crit_edge

while.body9.while.cond7_crit_edge:                ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond7

while.body9.while.end_crit_edge:                  ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body9.while.end_crit_edge, %while.cond7.while.end_crit_edge
  %nr_sects.addr.2 = phi i64 [ %sub, %while.body9.while.end_crit_edge ], [ 0, %while.cond7.while.end_crit_edge ]
  %sector.addr.2 = phi i64 [ %add, %while.body9.while.end_crit_edge ], [ %sector.addr.1, %while.cond7.while.end_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 333, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %cmp.not = icmp eq i64 %nr_sects.addr.2, 0
  br i1 %cmp.not, label %while.end.while.end21_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end.while.end21_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end21

while.end21:                                      ; preds = %while.end.while.end21_crit_edge, %while.cond.preheader.while.end21_crit_edge
  %bio.0.lcssa = phi ptr [ %3, %while.cond.preheader.while.end21_crit_edge ], [ %call.i.i, %while.end.while.end21_crit_edge ]
  %27 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bio.0.lcssa, ptr %biop, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end21, %bdev_read_only.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end21 ], [ -6, %entry.cleanup_crit_edge ], [ -1, %bdev_read_only.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_zeroout(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags) #0 align 64 {
entry:
  %bio = alloca ptr, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #5
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %1 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 37, i32 16
  %3 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 37, i32 9
  %5 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i.i = icmp eq i32 %6, 0
  %.op = lshr i32 %6, 9
  %.op.op = add nsw i32 %.op, -1
  %phi.bo65 = select i1 %tobool2.not.i.i, i32 0, i32 %.op.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %tobool60 = phi i1 [ %tobool, %land.lhs.true.i.i ], [ false, %entry.bdev_logical_block_size.exit_crit_edge ]
  %retval1.0.i.i = phi i32 [ %phi.bo65, %land.lhs.true.i.i ], [ 0, %entry.bdev_logical_block_size.exit_crit_edge ]
  %conv = zext i32 %retval1.0.i.i to i64
  %or = or i64 %nr_sects, %sector
  %and = and i64 %or, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %retry.preheader, label %bdev_logical_block_size.exit.cleanup_crit_edge

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

retry.preheader:                                  ; preds = %bdev_logical_block_size.exit
  %and7 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br label %retry

retry:                                            ; preds = %if.then23.retry_crit_edge, %retry.preheader
  %try_write_zeroes.0.off0 = phi i1 [ false, %if.then23.retry_crit_edge ], [ %tobool60, %retry.preheader ]
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bio, align 4
  call void @blk_start_plug(ptr noundef nonnull %plug) #5
  br i1 %try_write_zeroes.0.off0, label %if.then5, label %if.else

if.then5:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call fastcc i32 @__blkdev_issue_write_zeroes(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef nonnull %bio, i32 noundef %flags)
  br label %if.end13

if.else:                                          ; preds = %retry
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call fastcc i32 @__blkdev_issue_zero_pages(ptr noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, ptr noundef nonnull %bio)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call10, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %8 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bio, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 @submit_bio_wait(ptr noundef nonnull %9) #5
  call void @bio_put(ptr noundef nonnull %9) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %if.end13.if.end18_crit_edge, %if.else.if.end18_crit_edge
  %ret.1 = phi i32 [ %call17, %if.then16 ], [ 0, %land.lhs.true.if.end18_crit_edge ], [ %ret.0, %if.end13.if.end18_crit_edge ], [ -95, %if.else.if.end18_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool19.not = icmp eq i32 %ret.1, 0
  %try_write_zeroes.0.off0.not = xor i1 %try_write_zeroes.0.off0, true
  %brmerge = select i1 %tobool19.not, i1 true, i1 %try_write_zeroes.0.off0.not
  br i1 %brmerge, label %if.end18.cleanup_crit_edge, label %if.then23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  br i1 %tobool8.not, label %if.then23.retry_crit_edge, label %if.end27

if.then23.retry_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry

if.end27:                                         ; preds = %if.then23
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i53 = icmp eq ptr %11, null
  br i1 %tobool.not.i53, label %if.end27.bdev_write_zeroes_sectors.exit57.thread_crit_edge, label %bdev_write_zeroes_sectors.exit57

if.end27.bdev_write_zeroes_sectors.exit57.thread_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_write_zeroes_sectors.exit57.thread

bdev_write_zeroes_sectors.exit57:                 ; preds = %if.end27
  %max_write_zeroes_sectors.i54 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 16
  %12 = ptrtoint ptr %max_write_zeroes_sectors.i54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_write_zeroes_sectors.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool29.not = icmp eq i32 %13, 0
  br i1 %tobool29.not, label %bdev_write_zeroes_sectors.exit57.bdev_write_zeroes_sectors.exit57.thread_crit_edge, label %bdev_write_zeroes_sectors.exit57.cleanup_crit_edge

bdev_write_zeroes_sectors.exit57.cleanup_crit_edge: ; preds = %bdev_write_zeroes_sectors.exit57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bdev_write_zeroes_sectors.exit57.bdev_write_zeroes_sectors.exit57.thread_crit_edge: ; preds = %bdev_write_zeroes_sectors.exit57
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_write_zeroes_sectors.exit57.thread

bdev_write_zeroes_sectors.exit57.thread:          ; preds = %bdev_write_zeroes_sectors.exit57.bdev_write_zeroes_sectors.exit57.thread_crit_edge, %if.end27.bdev_write_zeroes_sectors.exit57.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %bdev_write_zeroes_sectors.exit57.thread, %bdev_write_zeroes_sectors.exit57.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %bdev_logical_block_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ], [ -95, %bdev_write_zeroes_sectors.exit57.thread ], [ %ret.1, %bdev_write_zeroes_sectors.exit57.cleanup_crit_edge ], [ %ret.1, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_blk_next_bio, !1, !"__ksymtab_blk_next_bio", i1 false, i1 false}
!1 = !{!"../block/blk-lib.c", i32 24, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../block/blk-lib.c", i32 52, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../block/blk-lib.c", i32 56, i32 3}
!7 = !{ptr @__blkdev_issue_discard._rs, !6, !"_rs", i1 false, i1 false}
!8 = !{ptr @__func__.__blkdev_issue_discard, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__blkdev_issue_discard._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @__blkdev_issue_discard._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../block/blk-lib.c", i32 96, i32 3}
!14 = !{ptr @__ksymtab___blkdev_issue_discard, !15, !"__ksymtab___blkdev_issue_discard", i1 false, i1 false}
!15 = !{!"../block/blk-lib.c", i32 119, i32 1}
!16 = !{ptr @__ksymtab_blkdev_issue_discard, !17, !"__ksymtab_blkdev_issue_discard", i1 false, i1 false}
!17 = !{!"../block/blk-lib.c", i32 152, i32 1}
!18 = !{ptr @__ksymtab_blkdev_issue_write_same, !19, !"__ksymtab_blkdev_issue_write_same", i1 false, i1 false}
!19 = !{!"../block/blk-lib.c", i32 245, i32 1}
!20 = !{ptr @__ksymtab___blkdev_issue_zeroout, !21, !"__ksymtab___blkdev_issue_zeroout", i1 false, i1 false}
!21 = !{!"../block/blk-lib.c", i32 378, i32 1}
!22 = !{ptr @__ksymtab_blkdev_issue_zeroout, !23, !"__ksymtab_blkdev_issue_zeroout", i1 false, i1 false}
!23 = !{!"../block/blk-lib.c", i32 442, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{!"branch_weights", i32 2000, i32 1}
