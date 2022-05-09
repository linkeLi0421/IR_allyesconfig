; ModuleID = '/llk/IR_all_yes/block/blk-flush.c_pt.bc'
source_filename = "../block/blk-flush.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blkdev_issue_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_issue_flush\09\09\09\09"
module asm "\09.long\09__crc_blkdev_issue_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_flush\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_mq_hctx_set_fq_lock_class\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_hctx_set_fq_lock_class\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_hctx_set_fq_lock_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_hctx_set_fq_lock_class:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_hctx_set_fq_lock_class\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_hctx_set_fq_lock_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.77, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.78, %union.anon.79, %union.anon.80, %union.anon.83, ptr, ptr }
%union.anon.77 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, ptr }
%union.anon.83 = type { i64, [8 x i8] }
%struct.blk_mq_ctx = type { %struct.anon.3, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [88 x i8] }
%struct.anon.3 = type { %struct.spinlock, [3 x %struct.list_head], [60 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_flush_queue = type { i8, i8, i32, [2 x %struct.list_head], %struct.list_head, ptr, %struct.spinlock }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_blkdev_issue_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_flush to i32), ptr @__kstrtab_blkdev_issue_flush, ptr @__kstrtabns_blkdev_issue_flush }, section "___ksymtab+blkdev_issue_flush", align 4
@blk_alloc_flush_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&fq->mq_flush_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_blk_mq_hctx_set_fq_lock_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_hctx_set_fq_lock_class = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_hctx_set_fq_lock_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_hctx_set_fq_lock_class to i32), ptr @__kstrtab_blk_mq_hctx_set_fq_lock_class, ptr @__kstrtabns_blk_mq_hctx_set_fq_lock_class }, section "___ksymtab_gpl+blk_mq_hctx_set_fq_lock_class", align 4
@req_ref_put_and_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block/blk.h\00", [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"block/blk-flush.c\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 480, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 530, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"../block/blk.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 495, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [21 x i8] c"../block/blk-flush.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 366, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_blk_mq_hctx_set_fq_lock_class, ptr @__ksymtab_blkdev_issue_flush, ptr @blk_alloc_flush_queue.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_alloc_flush_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_flush_rq(ptr nocapture noundef readonly %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 32
  %0 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io, align 8
  %cmp = icmp eq ptr %1, @flush_end_io
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_end_io(ptr noundef %flush_rq, i8 noundef zeroext %error) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flush_rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flush_rq, align 8
  %mq_ctx = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 1
  %2 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_ctx, align 4
  %hctxs.i.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hctxs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hctxs.i.i, align 4
  %fq.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fq.i, align 4
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %7, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mq_flush_lock) #9
  %ref.i = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ref.i, align 4
  %add.i = add i32 %9, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %land.rhs.i, label %entry.req_ref_put_and_test.exit_crit_edge

entry.req_ref_put_and_test.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %req_ref_put_and_test.exit

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @req_ref_put_and_test.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.req_ref_put_and_test.exit_crit_edge, label %if.then.i, !prof !26

land.rhs.i.req_ref_put_and_test.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %req_ref_put_and_test.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @req_ref_put_and_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 495, i32 noundef 9, ptr noundef null) #9
  br label %req_ref_put_and_test.exit

req_ref_put_and_test.exit:                        ; preds = %if.then.i, %land.rhs.i.req_ref_put_and_test.exit_crit_edge, %entry.req_ref_put_and_test.exit_crit_edge
  %call.i.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %req_ref_put_and_test.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rq_status = getelementptr inbounds %struct.blk_flush_queue, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %rq_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %error, ptr %rq_status, align 1
  br label %cleanup

if.end:                                           ; preds = %req_ref_put_and_test.exit
  %12 = ptrtoint ptr %flush_rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flush_rq, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0.i, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !16) #9
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %21, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %bd_stats.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %bd_stats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bd_stats.i, align 8
  %arrayidx.i = getelementptr %struct.disk_stats, ptr %23, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx.i to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !16) #9
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx12.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12.i, align 4
  %add.i129 = add i32 %30, %24
  %31 = inttoptr i32 %add.i129 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i = add i32 %33, 1
  store i32 %add13.i, ptr %31, align 4
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 15
  %34 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.end.do.body46.i_crit_edge, label %if.then.i130

if.end.do.body46.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46.i

if.then.i130:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 17
  %36 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bd_disk.i, align 8
  %part030.i = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %part030.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %part030.i, align 4
  %bd_stats31.i = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %bd_stats31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bd_stats31.i, align 8
  %arrayidx33.i = getelementptr %struct.disk_stats, ptr %41, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx33.i to i32
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx37.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx37.i, align 4
  %add38.i = add i32 %46, %42
  %47 = inttoptr i32 %add38.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add39.i = add i32 %49, 1
  store i32 %add39.i, ptr %47, align 4
  br label %do.body46.i

do.body46.i:                                      ; preds = %if.then.i130, %if.end.do.body46.i_crit_edge
  %call.i.i = tail call i64 @ktime_get() #9
  %start_time_ns.i = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 15
  %50 = ptrtoint ptr %start_time_ns.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %start_time_ns.i, align 8
  %sub.i = sub i64 %call.i.i, %51
  %52 = ptrtoint ptr %bd_stats.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bd_stats.i, align 8
  %arrayidx61.i = getelementptr [4 x i64], ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx61.i to i32
  %55 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i, align 4
  %arrayidx65.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx65.i, align 4
  %add66.i = add i32 %58, %54
  %59 = inttoptr i32 %add66.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %add67.i = add i64 %sub.i, %61
  store i64 %add67.i, ptr %59, align 8
  %62 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool73.not.i = icmp eq i8 %63, 0
  br i1 %tobool73.not.i, label %do.body46.i.blk_account_io_flush.exit_crit_edge, label %if.then74.i

do.body46.i.blk_account_io_flush.exit_crit_edge:  ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_account_io_flush.exit

if.then74.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i120.i = tail call i64 @ktime_get() #9
  %64 = ptrtoint ptr %start_time_ns.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %start_time_ns.i, align 8
  %sub83.i = sub i64 %call.i120.i, %65
  %bd_disk90.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 17
  %66 = ptrtoint ptr %bd_disk90.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bd_disk90.i, align 8
  %part091.i = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %part091.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %part091.i, align 4
  %bd_stats92.i = getelementptr inbounds %struct.block_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %bd_stats92.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bd_stats92.i, align 8
  %arrayidx94.i = getelementptr [4 x i64], ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx94.i to i32
  %73 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu.i, align 4
  %arrayidx98.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx98.i, align 4
  %add99.i = add i32 %76, %72
  %77 = inttoptr i32 %add99.i to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %77, align 8
  %add100.i = add i64 %sub83.i, %79
  store i64 %add100.i, ptr %77, align 8
  br label %blk_account_io_flush.exit

blk_account_io_flush.exit:                        ; preds = %if.then74.i, %do.body46.i.blk_account_io_flush.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %80 = tail call i32 @llvm.read_register.i32(metadata !16) #9
  %and.i.i.i118.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i118.i to ptr
  %preempt_count.i.i119.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i119.i, align 4
  %sub.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i119.i, align 4
  %state = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 25
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %state, align 4
  %rq_status18 = getelementptr inbounds %struct.blk_flush_queue, ptr %7, i32 0, i32 1
  %85 = ptrtoint ptr %rq_status18 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rq_status18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp20.not = icmp eq i8 %86, 0
  br i1 %cmp20.not, label %blk_account_io_flush.exit.if.end25_crit_edge, label %if.then22

blk_account_io_flush.exit.if.end25_crit_edge:     ; preds = %blk_account_io_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %blk_account_io_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %rq_status18 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %rq_status18, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %blk_account_io_flush.exit.if.end25_crit_edge
  %error.addr.0 = phi i8 [ %86, %if.then22 ], [ %error, %blk_account_io_flush.exit.if.end25_crit_edge ]
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %89, null
  %tag = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 5
  br i1 %tobool.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %tag, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end25
  %91 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp.i131 = icmp eq i32 %92, -1
  br i1 %cmp.i131, label %if.else.blk_mq_put_driver_tag.exit_crit_edge, label %lor.lhs.false.i

if.else.blk_mq_put_driver_tag.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_mq_put_driver_tag.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %internal_tag.i = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 6
  %93 = ptrtoint ptr %internal_tag.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %internal_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp1.i = icmp eq i32 %94, -1
  br i1 %cmp1.i, label %lor.lhs.false.i.blk_mq_put_driver_tag.exit_crit_edge, label %if.end.i

lor.lhs.false.i.blk_mq_put_driver_tag.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_mq_put_driver_tag.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mq_hctx.i = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 2
  %95 = ptrtoint ptr %mq_hctx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mq_hctx.i, align 8
  %tags.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tags.i.i, align 16
  %99 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mq_ctx, align 4
  tail call void @blk_mq_put_tag(ptr noundef %98, ptr noundef %100, i32 noundef %92) #9
  %101 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %tag, align 4
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 4
  %102 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i132 = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.not.i.i = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.not.i.i, label %if.end.i.blk_mq_put_driver_tag.exit_crit_edge, label %if.then.i.i

if.end.i.blk_mq_put_driver_tag.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_mq_put_driver_tag.exit

if.then.i.i:                                      ; preds = %if.end.i
  %and3.i.i = and i32 %103, -65
  %104 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and3.i.i, ptr %rq_flags.i.i, align 8
  %flags.i.i.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %96, i32 0, i32 5
  %105 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i.i.i.i, align 16
  %and.i.i.i.i.i = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %queue.i.i.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %96, i32 0, i32 7
  %107 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %queue.i.i.i.i, align 8
  %nr_active_requests_shared_tags.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %108, i32 0, i32 31
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_active_requests_shared_tags.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_active_requests_shared_tags.i.i.i.i, i32 1, i32 3, i32 1) #9
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_active_requests_shared_tags.i.i.i.i, ptr %nr_active_requests_shared_tags.i.i.i.i, i32 1, ptr elementtype(i32) %nr_active_requests_shared_tags.i.i.i.i) #9, !srcloc !32
  br label %blk_mq_put_driver_tag.exit

if.else.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nr_active.i.i.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %96, i32 0, i32 25
  %call.i.i1.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_active.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_active.i.i.i.i, i32 1, i32 3, i32 1) #9
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_active.i.i.i.i, ptr %nr_active.i.i.i.i, i32 1, ptr elementtype(i32) %nr_active.i.i.i.i) #9, !srcloc !32
  br label %blk_mq_put_driver_tag.exit

blk_mq_put_driver_tag.exit:                       ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i, %if.end.i.blk_mq_put_driver_tag.exit_crit_edge, %lor.lhs.false.i.blk_mq_put_driver_tag.exit_crit_edge, %if.else.blk_mq_put_driver_tag.exit_crit_edge
  %internal_tag = getelementptr inbounds %struct.request, ptr %flush_rq, i32 0, i32 6
  %111 = ptrtoint ptr %internal_tag to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %internal_tag, align 8
  br label %if.end27

if.end27:                                         ; preds = %blk_mq_put_driver_tag.exit, %if.then26
  %112 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load = load i8, ptr %7, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %arrayidx = getelementptr %struct.blk_flush_queue, ptr %7, i32 0, i32 3, i32 %bf.cast
  %bf.lshr30 = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr30, i8 %bf.clear)
  %cmp36 = icmp eq i8 %bf.lshr30, %bf.clear
  br i1 %cmp36, label %do.body41, label %do.end49, !prof !33

do.body41:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #9, !srcloc !34
  unreachable

do.end49:                                         ; preds = %if.end27
  %xor = shl nuw nsw i8 %bf.clear, 6
  %bf.clear55 = and i8 %bf.load, -65
  %113 = or i8 %xor, %bf.clear55
  %bf.set = xor i8 %113, 64
  %114 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %bf.set, ptr %7, align 4
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx, align 4
  %cmp62.not136 = icmp eq ptr %116, %arrayidx
  br i1 %cmp62.not136, label %do.end49.cleanup_crit_edge, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  br label %for.body

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %do.end87.for.body_crit_edge, %do.end49.for.body_crit_edge
  %.pn.in137 = phi ptr [ %.pn139, %do.end87.for.body_crit_edge ], [ %116, %do.end49.for.body_crit_edge ]
  %117 = getelementptr i8, ptr %.pn.in137, i32 -4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %neg.i = xor i32 %119, -1
  %120 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 false) #9, !range !35
  %121 = and i32 %120, 61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %.not = icmp eq i32 %121, 0
  br i1 %.not, label %do.end87, label %do.body79, !prof !26

do.body79:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 267, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

do.end87:                                         ; preds = %for.body
  %rq.0138 = getelementptr i8, ptr %.pn.in137, i32 -152
  %122 = ptrtoint ptr %.pn.in137 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn139 = load ptr, ptr %.pn.in137, align 4
  %shl.i = shl nuw i32 1, %120
  tail call fastcc void @blk_flush_complete_seq(ptr noundef %rq.0138, ptr noundef %7, i32 noundef %shl.i, i8 noundef zeroext %error.addr.0)
  %cmp62.not = icmp eq ptr %.pn139, %arrayidx
  br i1 %cmp62.not, label %do.end87.cleanup_crit_edge, label %do.end87.for.body_crit_edge

do.end87.for.body_crit_edge:                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end87.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mq_flush_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_insert_flush(ptr noundef %rq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_flags, align 8
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %4 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %tobool.not.i = icmp ult i32 %5, 512
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 2
  %and.i = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %blk_flush_policy.exit, label %if.then2.i

if.then2.i:                                       ; preds = %entry
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags.i, align 4
  %8 = lshr i32 %7, 18
  %9 = and i32 %8, 1
  %10 = or i32 %9, %spec.select.i
  %and8.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %blk_flush_policy.exit.thread, label %blk_flush_policy.exit.thread73

blk_flush_policy.exit.thread73:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %mq_ctx76 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 1
  %11 = ptrtoint ptr %mq_ctx76 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mq_ctx76, align 4
  %hctxs.i.i77 = getelementptr inbounds %struct.blk_mq_ctx, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %hctxs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hctxs.i.i77, align 4
  %fq.i78 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %fq.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fq.i78, align 4
  %cmd_flags79 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %17 = ptrtoint ptr %cmd_flags79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_flags79, align 4
  br label %41

blk_flush_policy.exit.thread:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = lshr i32 %7, 15
  %20 = and i32 %19, 4
  %21 = or i32 %10, %20
  %mq_ctx64 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 1
  %22 = ptrtoint ptr %mq_ctx64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mq_ctx64, align 4
  %hctxs.i.i65 = getelementptr inbounds %struct.blk_mq_ctx, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %hctxs.i.i65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hctxs.i.i65, align 4
  %fq.i66 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %fq.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fq.i66, align 4
  %cmd_flags67 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %28 = ptrtoint ptr %cmd_flags67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd_flags67, align 4
  br label %38

blk_flush_policy.exit:                            ; preds = %entry
  %.pre = and i32 %3, 262144
  %mq_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 1
  %30 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mq_ctx, align 4
  %hctxs.i.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %hctxs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hctxs.i.i, align 4
  %fq.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fq.i, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %36 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool.not = icmp eq i32 %.pre, 0
  br i1 %tobool.not, label %blk_flush_policy.exit._crit_edge, label %blk_flush_policy.exit._crit_edge81

blk_flush_policy.exit._crit_edge81:               ; preds = %blk_flush_policy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %41

blk_flush_policy.exit._crit_edge:                 ; preds = %blk_flush_policy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %38

38:                                               ; preds = %blk_flush_policy.exit._crit_edge, %blk_flush_policy.exit.thread
  %39 = phi i32 [ %29, %blk_flush_policy.exit.thread ], [ %37, %blk_flush_policy.exit._crit_edge ]
  %cmd_flags72 = phi ptr [ %cmd_flags67, %blk_flush_policy.exit.thread ], [ %cmd_flags, %blk_flush_policy.exit._crit_edge ]
  %40 = phi ptr [ %27, %blk_flush_policy.exit.thread ], [ %35, %blk_flush_policy.exit._crit_edge ]
  %policy.2.i70 = phi i32 [ %21, %blk_flush_policy.exit.thread ], [ %spec.select.i, %blk_flush_policy.exit._crit_edge ]
  br label %41

41:                                               ; preds = %38, %blk_flush_policy.exit._crit_edge81, %blk_flush_policy.exit.thread73
  %42 = phi i32 [ %39, %38 ], [ %37, %blk_flush_policy.exit._crit_edge81 ], [ %18, %blk_flush_policy.exit.thread73 ]
  %cmd_flags71 = phi ptr [ %cmd_flags72, %38 ], [ %cmd_flags, %blk_flush_policy.exit._crit_edge81 ], [ %cmd_flags79, %blk_flush_policy.exit.thread73 ]
  %43 = phi ptr [ %40, %38 ], [ %35, %blk_flush_policy.exit._crit_edge81 ], [ %16, %blk_flush_policy.exit.thread73 ]
  %policy.2.i69 = phi i32 [ %policy.2.i70, %38 ], [ %spec.select.i, %blk_flush_policy.exit._crit_edge81 ], [ %10, %blk_flush_policy.exit.thread73 ]
  %44 = phi i32 [ -395265, %38 ], [ -264193, %blk_flush_policy.exit._crit_edge81 ], [ -264193, %blk_flush_policy.exit.thread73 ]
  %spec.select = and i32 %42, %44
  %45 = or i32 %spec.select, 2048
  %46 = ptrtoint ptr %cmd_flags71 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %cmd_flags71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %policy.2.i69)
  %tobool12.not = icmp eq i32 %policy.2.i69, 0
  br i1 %tobool12.not, label %if.then13, label %do.body

if.then13:                                        ; preds = %41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext 0) #9
  br label %cleanup

do.body:                                          ; preds = %41
  %bio = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %47 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bio, align 8
  %biotail = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 11
  %49 = ptrtoint ptr %biotail to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %biotail, align 4
  %cmp.not = icmp eq ptr %48, %50
  br i1 %cmp.not, label %do.end25, label %do.body19, !prof !26

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #9, !srcloc !37
  unreachable

do.end25:                                         ; preds = %do.body
  %51 = and i32 %policy.2.i69, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @blk_mq_request_bypass_insert(ptr noundef %rq, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %cleanup

if.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %53 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %53, align 4
  %list = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %55 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list, ptr %prev.i, align 4
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %57 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rq_flags, align 8
  %or32 = or i32 %58, 16
  store i32 %or32, ptr %rq_flags, align 8
  %end_io = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 32
  %59 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end_io, align 8
  %saved_end_io = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 2
  %61 = ptrtoint ptr %saved_end_io to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %saved_end_io, align 4
  store ptr @mq_flush_data_end_io, ptr %end_io, align 8
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %43, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %mq_flush_lock) #9
  %and34 = xor i32 %51, 7
  tail call fastcc void @blk_flush_complete_seq(ptr noundef %rq, ptr noundef %43, i32 noundef %and34, i8 noundef zeroext 0)
  tail call void @_raw_spin_unlock_irq(ptr noundef %mq_flush_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %if.then13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_request_bypass_insert(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mq_flush_data_end_io(ptr noundef %rq, i8 noundef zeroext %error) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %mq_hctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 2
  %2 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_hctx, align 8
  %mq_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 1
  %4 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mq_ctx, align 4
  %hctxs.i.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hctxs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hctxs.i.i, align 4
  %fq.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fq.i, align 4
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.do.body24_crit_edge, label %if.then

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then:                                          ; preds = %entry
  %tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 5
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.end, label %if.then.lor.lhs.false.i_crit_edge, !prof !33

if.then.lor.lhs.false.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.end:                                           ; preds = %if.then
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 366, i32 noundef 9, ptr noundef null) #9
  %14 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, -1
  br i1 %cmp.i, label %if.end.do.body24_crit_edge, label %if.end.lor.lhs.false.i_crit_edge

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

lor.lhs.false.i:                                  ; preds = %if.end.lor.lhs.false.i_crit_edge, %if.then.lor.lhs.false.i_crit_edge
  %15 = phi i32 [ %.pr, %if.end.lor.lhs.false.i_crit_edge ], [ %13, %if.then.lor.lhs.false.i_crit_edge ]
  %internal_tag.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 6
  %16 = ptrtoint ptr %internal_tag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %internal_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp1.i = icmp eq i32 %17, -1
  br i1 %cmp1.i, label %lor.lhs.false.i.do.body24_crit_edge, label %if.end.i

lor.lhs.false.i.do.body24_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.end.i:                                         ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mq_hctx, align 8
  %tags.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tags.i.i, align 16
  %22 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mq_ctx, align 4
  tail call void @blk_mq_put_tag(ptr noundef %21, ptr noundef %23, i32 noundef %15) #9
  %24 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %tag, align 4
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %25 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.body24_crit_edge, label %if.then.i.i

if.end.i.do.body24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then.i.i:                                      ; preds = %if.end.i
  %and3.i.i = and i32 %26, -65
  %27 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and3.i.i, ptr %rq_flags.i.i, align 8
  %flags.i.i.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %19, i32 0, i32 5
  %28 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i.i.i, align 16
  %and.i.i.i.i.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %queue.i.i.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %19, i32 0, i32 7
  %30 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue.i.i.i.i, align 8
  %nr_active_requests_shared_tags.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 31
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_active_requests_shared_tags.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_active_requests_shared_tags.i.i.i.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_active_requests_shared_tags.i.i.i.i, ptr %nr_active_requests_shared_tags.i.i.i.i, i32 1, ptr elementtype(i32) %nr_active_requests_shared_tags.i.i.i.i) #9, !srcloc !32
  br label %do.body24

if.else.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nr_active.i.i.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %19, i32 0, i32 25
  %call.i.i1.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_active.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_active.i.i.i.i, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_active.i.i.i.i, ptr %nr_active.i.i.i.i, i32 1, ptr elementtype(i32) %nr_active.i.i.i.i) #9, !srcloc !32
  br label %do.body24

do.body24:                                        ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i, %if.end.i.do.body24_crit_edge, %lor.lhs.false.i.do.body24_crit_edge, %if.end.do.body24_crit_edge, %entry.do.body24_crit_edge
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %9, i32 0, i32 6
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mq_flush_lock) #9
  tail call fastcc void @blk_flush_complete_seq(ptr noundef %rq, ptr noundef %9, i32 noundef 2, i8 noundef zeroext %error)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mq_flush_lock, i32 noundef %call28) #9
  %state.i = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %do.body24.blk_mq_sched_restart.exit_crit_edge, label %if.then.i

do.body24.blk_mq_sched_restart.exit_crit_edge:    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_mq_sched_restart.exit

if.then.i:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__blk_mq_sched_restart(ptr noundef %3) #9
  br label %blk_mq_sched_restart.exit

blk_mq_sched_restart.exit:                        ; preds = %if.then.i, %do.body24.blk_mq_sched_restart.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_flush_complete_seq(ptr noundef %rq, ptr noundef %fq, i32 noundef %seq, i8 noundef zeroext %error) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %2 = ptrtoint ptr %fq to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fq, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %arrayidx = getelementptr %struct.blk_flush_queue, ptr %fq, i32 0, i32 3, i32 %bf.cast
  %3 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, %seq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !26

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

do.end10:                                         ; preds = %entry
  %or = or i32 %5, %seq
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %3, align 4
  %cmd_flags12 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_flags12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_flags12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %error)
  %tobool13.not = icmp eq i8 %error, 0
  br i1 %tobool13.not, label %if.end23, label %do.end10.do.body31_crit_edge, !prof !26

do.end10.do.body31_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.end23:                                         ; preds = %do.end10
  %neg.i = xor i32 %or, -1
  %9 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 false) #9, !range !35
  %shl.i = shl nuw i32 1, %9
  %10 = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl.i, label %do.body53 [
    i32 1, label %if.end23.sw.bb_crit_edge
    i32 4, label %if.end23.sw.bb_crit_edge98
    i32 2, label %sw.bb28
    i32 8, label %if.end23.do.body31_crit_edge
  ]

if.end23.do.body31_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.end23.sw.bb_crit_edge98:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge98
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %12, %arrayidx
  br i1 %cmp.i.not, label %if.then26, label %sw.bb.if.end27_crit_edge

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %flush_pending_since = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 2
  %14 = ptrtoint ptr %flush_pending_since to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %flush_pending_since, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %sw.bb.if.end27_crit_edge
  %list = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.__list_del_entry.exit.i_crit_edge

if.end27.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end27.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr %struct.blk_flush_queue, ptr %fq, i32 0, i32 3, i32 %bf.cast, i32 1
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %22, ptr noundef %arrayidx) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.sw.epilog_crit_edge

__list_del_entry.exit.i.sw.epilog_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev.i2.i, align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %22, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23
  %list29 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 4
  %call.i.i78 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list29) #9
  br i1 %call.i.i78, label %if.end.i.i81, label %sw.bb28.__list_del_entry.exit.i84_crit_edge

sw.bb28.__list_del_entry.exit.i84_crit_edge:      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i84

if.end.i.i81:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i79 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i79, align 4
  %29 = ptrtoint ptr %list29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list29, align 4
  %prev1.i.i.i80 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i80, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i84

__list_del_entry.exit.i84:                        ; preds = %if.end.i.i81, %sw.bb28.__list_del_entry.exit.i84_crit_edge
  %prev.i2.i82 = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i2.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i2.i82, align 4
  %call.i.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef %list29, ptr noundef %34, ptr noundef %flush_data_in_flight) #9
  br i1 %call.i.i.i83, label %if.end.i.i.i86, label %__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge

__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge: ; preds = %__list_del_entry.exit.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit87

if.end.i.i.i86:                                   ; preds = %__list_del_entry.exit.i84
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %prev.i2.i82 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list29, ptr %prev.i2.i82, align 4
  %36 = ptrtoint ptr %list29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %flush_data_in_flight, ptr %list29, align 4
  %prev3.i.i.i85 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i85, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list29, ptr %34, align 4
  br label %list_move_tail.exit87

list_move_tail.exit87:                            ; preds = %if.end.i.i.i86, %__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge
  tail call void @blk_mq_add_to_requeue_list(ptr noundef %rq, i1 noundef zeroext true, i1 noundef zeroext true) #9
  br label %sw.epilog

do.body31:                                        ; preds = %if.end23.do.body31_crit_edge, %do.end10.do.body31_crit_edge
  %39 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %39, align 4
  %cmp.i88.not = icmp eq ptr %41, %39
  br i1 %cmp.i88.not, label %do.end51, label %do.body43, !prof !26

do.body43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #9, !srcloc !39
  unreachable

do.end51:                                         ; preds = %do.body31
  %list52 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %call.i.i90 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list52) #9
  br i1 %call.i.i90, label %if.end.i.i93, label %do.end51.list_del_init.exit_crit_edge

do.end51.list_del_init.exit_crit_edge:            ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i93:                                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i91 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i91, align 4
  %44 = ptrtoint ptr %list52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list52, align 4
  %prev1.i.i.i92 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i92, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i93, %do.end51.list_del_init.exit_crit_edge
  %48 = ptrtoint ptr %list52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list52, ptr %list52, align 4
  %prev.i3.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list52, ptr %prev.i3.i, align 4
  %biotail.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 11
  %50 = ptrtoint ptr %biotail.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %biotail.i, align 4
  %bio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %52 = ptrtoint ptr %bio.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %bio.i, align 8
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %53 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %54, -17
  store i32 %and.i, ptr %rq_flags.i, align 8
  %saved_end_io.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 2
  %55 = ptrtoint ptr %saved_end_io.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %saved_end_io.i, align 4
  %end_io.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 32
  %57 = ptrtoint ptr %end_io.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %end_io.i, align 8
  tail call void @blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext %error) #9
  br label %sw.epilog

do.body53:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

sw.epilog:                                        ; preds = %list_del_init.exit, %list_move_tail.exit87, %if.end.i.i.i, %__list_del_entry.exit.i.sw.epilog_crit_edge
  %58 = ptrtoint ptr %fq to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %fq, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.blk_flush_queue, ptr %fq, i32 0, i32 3, i32 %bf.cast.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  %flush_rq1.i = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 5
  %61 = ptrtoint ptr %flush_rq1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %flush_rq1.i, align 4
  %bf.lshr6.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr6.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i, i8 %bf.clear.i)
  %cmp.not.i = icmp eq i8 %bf.lshr.i, %bf.clear.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.epilog.blk_kick_flush.exit_crit_edge

sw.epilog.blk_kick_flush.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_kick_flush.exit

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %64, %arrayidx.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.blk_kick_flush.exit_crit_edge, label %if.end.i

lor.lhs.false.i.blk_kick_flush.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_kick_flush.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flush_data_in_flight.i = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 4
  %65 = ptrtoint ptr %flush_data_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %flush_data_in_flight.i, align 4
  %cmp.i63.not.i = icmp eq ptr %66, %flush_data_in_flight.i
  br i1 %cmp.i63.not.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %flush_pending_since.i = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 2
  %68 = ptrtoint ptr %flush_pending_since.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flush_pending_since.i, align 4
  %add.neg.i = add i32 %67, -500
  %sub.i = sub i32 %add.neg.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp10.i = icmp slt i32 %sub.i, 0
  br i1 %cmp10.i, label %land.lhs.true.i.blk_kick_flush.exit_crit_edge, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i.blk_kick_flush.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_kick_flush.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set.i = xor i8 %bf.load.i, -128
  %70 = ptrtoint ptr %fq to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %bf.set.i, ptr %fq, align 4
  tail call void @blk_rq_init(ptr noundef %1, ptr noundef %62) #9
  %mq_ctx.i = getelementptr i8, ptr %60, i32 -148
  %71 = ptrtoint ptr %mq_ctx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mq_ctx.i, align 4
  %mq_ctx18.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 1
  %73 = ptrtoint ptr %mq_ctx18.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %mq_ctx18.i, align 4
  %mq_hctx.i = getelementptr i8, ptr %60, i32 -144
  %74 = ptrtoint ptr %mq_hctx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mq_hctx.i, align 8
  %mq_hctx19.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 2
  %76 = ptrtoint ptr %mq_hctx19.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %mq_hctx19.i, align 8
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %elevator.i, align 4
  %tobool20.not.i = icmp eq ptr %78, null
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %tag.i = getelementptr i8, ptr %60, i32 -132
  %79 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tag.i, align 4
  %tag22.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 5
  %81 = ptrtoint ptr %tag22.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tag22.i, align 4
  %rq_flags.i95 = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 4
  %82 = ptrtoint ptr %rq_flags.i95 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rq_flags.i95, align 8
  %or.i = or i32 %83, 64
  store i32 %or.i, ptr %rq_flags.i95, align 8
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %internal_tag.i = getelementptr i8, ptr %60, i32 -128
  %84 = ptrtoint ptr %internal_tag.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %internal_tag.i, align 8
  %internal_tag23.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 6
  %86 = ptrtoint ptr %internal_tag23.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %internal_tag23.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then21.i
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 3
  %87 = and i32 %8, 33556224
  %88 = or i32 %87, 262146
  %89 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %cmd_flags.i, align 4
  %rq_flags32.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 4
  %90 = ptrtoint ptr %rq_flags32.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rq_flags32.i, align 8
  %or33.i = or i32 %91, 16
  store i32 %or33.i, ptr %rq_flags32.i, align 8
  %end_io.i96 = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 32
  %92 = ptrtoint ptr %end_io.i96 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @flush_end_io, ptr %end_io.i96, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  %ref.i.i = getelementptr inbounds %struct.request, ptr %62, i32 0, i32 26
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #9
  %93 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 1, ptr %ref.i.i, align 4
  tail call void @blk_mq_add_to_requeue_list(ptr noundef %62, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %blk_kick_flush.exit

blk_kick_flush.exit:                              ; preds = %if.end24.i, %land.lhs.true.i.blk_kick_flush.exit_crit_edge, %lor.lhs.false.i.blk_kick_flush.exit_crit_edge, %sw.epilog.blk_kick_flush.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_flush(ptr noundef %bdev) #1 align 64 {
entry:
  %bio = alloca %struct.bio, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio) #9
  %0 = call ptr @memset(ptr %bio, i32 255, i32 104)
  call void @bio_init(ptr noundef nonnull %bio, ptr noundef null, i16 noundef zeroext 0) #9
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %1 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %2, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %3 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %4, %bdev
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i = and i16 %2, -2177
  %5 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %6 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio) #9
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %7 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262145, ptr %bi_opf, align 8
  %call = call i32 @submit_bio_wait(ptr noundef nonnull %bio) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blk_alloc_flush_queue(i32 noundef %node, i32 noundef %cmd_size, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !26

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 80) #12
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %do.body

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %kzalloc_node.exit
  %mq_flush_lock = getelementptr inbounds %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %mq_flush_lock, ptr noundef nonnull @.str, ptr noundef nonnull @blk_alloc_flush_queue.__key, i16 noundef signext 3) #9
  %sub = add i32 %cmd_size, 191
  %or = or i32 %sub, 127
  %add2 = add i32 %or, 1
  %call.i4.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef %or.i) #13
  %flush_rq = getelementptr inbounds %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %flush_rq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i4.i.i, ptr %flush_rq, align 8
  %tobool5.not = icmp eq ptr %call.i4.i.i, null
  br i1 %tobool5.not, label %fail_rq, label %if.end7

if.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %flush_queue = getelementptr inbounds %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %flush_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %flush_queue, ptr %flush_queue, align 8
  %prev.i = getelementptr inbounds %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %flush_queue, ptr %prev.i, align 4
  %arrayidx9 = getelementptr %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx9, ptr %arrayidx9, align 8
  %prev.i36 = getelementptr %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx9, ptr %prev.i36, align 4
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %flush_data_in_flight to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %flush_data_in_flight, ptr %flush_data_in_flight, align 8
  %prev.i37 = getelementptr inbounds %struct.blk_flush_queue, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %flush_data_in_flight, ptr %prev.i37, align 4
  br label %cleanup

fail_rq:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_rq, %if.end7, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.end7 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ], [ null, %fail_rq ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_free_flush_queue(ptr noundef %fq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fq, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flush_rq = getelementptr inbounds %struct.blk_flush_queue, ptr %fq, i32 0, i32 5
  %0 = ptrtoint ptr %flush_rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flush_rq, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef nonnull %fq) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_hctx_set_fq_lock_class(ptr nocapture noundef readonly %hctx, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fq = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 8
  %0 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fq, align 4
  %dep_map = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.1, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_tag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_sched_restart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_add_to_requeue_list(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_blkdev_issue_flush, !1, !"__ksymtab_blkdev_issue_flush", i1 false, i1 false}
!1 = !{!"../block/blk-flush.c", i32 468, i32 1}
!2 = !{ptr @blk_alloc_flush_queue.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../block/blk-flush.c", i32 480, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../block/blk-flush.c", i32 530, i32 2}
!7 = !{ptr @__ksymtab_blk_mq_hctx_set_fq_lock_class, !8, !"__ksymtab_blk_mq_hctx_set_fq_lock_class", i1 false, i1 false}
!8 = !{!"../block/blk-flush.c", i32 532, i32 1}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../block/blk.h", i32 495, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/blk-flush.c", i32 151, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/blk-flush.c", i32 366, i32 3}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148312097}
!28 = !{i64 2148226830, i64 2148226862, i64 2148226891, i64 2148226925, i64 2148226956, i64 2148226979}
!29 = !{i64 2148312326}
!30 = !{i64 2154509741}
!31 = !{i64 2154540598}
!32 = !{i64 2148226110, i64 2148226136, i64 2148226165, i64 2148226199, i64 2148226230, i64 2148226253}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2154548251, i64 2154548733, i64 2154548288, i64 2154548344, i64 2154548378, i64 2154548402, i64 2154548443, i64 2154548464, i64 2154548492, i64 2154548526}
!35 = !{i32 0, i32 33}
!36 = !{i64 2154554814, i64 2154555296, i64 2154554851, i64 2154554907, i64 2154554941, i64 2154554965, i64 2154555006, i64 2154555027, i64 2154555055, i64 2154555089}
!37 = !{i64 2154563828, i64 2154564310, i64 2154563865, i64 2154563921, i64 2154563955, i64 2154563979, i64 2154564020, i64 2154564041, i64 2154564069, i64 2154564103}
!38 = !{i64 2154540946, i64 2154541428, i64 2154540983, i64 2154541039, i64 2154541073, i64 2154541097, i64 2154541138, i64 2154541159, i64 2154541187, i64 2154541221}
!39 = !{i64 2154542584, i64 2154543066, i64 2154542621, i64 2154542677, i64 2154542711, i64 2154542735, i64 2154542776, i64 2154542797, i64 2154542825, i64 2154542859}
!40 = !{i64 2154544056, i64 2154544538, i64 2154544093, i64 2154544149, i64 2154544183, i64 2154544207, i64 2154544248, i64 2154544269, i64 2154544297, i64 2154544331}
!41 = !{i64 2154562547}
